#include <stdio.h>
#include <sleep.h>
#include <time.h>
#include <unistd.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xtmrctr.h"
#include "xscugic.h"
#include "Delay.h"
#include "LCD_SPI.h"
#include "LCD_Driver.h"
#include "LCD_GUI.h"
#include "ADC.h"
#include "I2C.h"
#include "sdCard.h"

extern XGpio gpio0;
extern XSpi  SpiInstance;	 /* The instance of the SPI device */
extern XSpi  SpiInstance1;
extern const unsigned char font[] ;

/******************* Vivado Peripherals *******************************/
// Register assigned by CPU to the AXI driver module.
// We can add +4, +8, +12 to access to the other 3 registers.
#define ENABLE_SPWM_BUFFER_ID		XPAR_AXI_SPWM_DRIVER_0_S00_AXI_BASEADDR
/******************* Vivado Peripherals *******************************/

/********************** Timer & Interrupts Parameters ***************************/
#define INT_DEVICE_ID				XPAR_PS7_SCUGIC_0_DEVICE_ID
#define TMR_DEVICE_ID_0  			XPAR_TMRCTR_0_DEVICE_ID
#define TMR_DEVICE_ID_1				XPAR_TMRCTR_1_DEVICE_ID
#define INTC_TMR_INTERRUPT_ID0		XPS_FPGA0_INT_ID//XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR//
#define INTC_TMR_INTERRUPT_ID1		XPS_FPGA1_INT_ID//XPAR_FABRIC_AXI_TIMER_1_INTERRUPT_INTR//
// New Interruption: Temperature Interrupt
#define INTC_LIGHT_ID				XPS_FPGA2_INT_ID
// 10 second timers
#define TMR_LOAD0	0xBBAACA00
#define TMR_LOAD1	0xBBAACA00
/********************** Timer & Interrupts Parameters ***************************/

/********************** Timer & Interrupts Instances ***************************/
// Timer Instances:
XTmrCtr Timer0;
XTmrCtr Timer1;
// Interrupt Instance:
XScuGic INTCInst;
/********************** Timer & Interrupts Instances ***************************/

/**************** Writing in SD Memory Parameters & Instances ****************/
#define MAX_SAMPLES_TEMP			30
#define MAX_SAMPLES_TO_STORE		10
#define regLength					10
FIL* fptr;
char dataBuffer[1024];
char dataBufferTemp[1024];
char *dataPntr = dataBuffer;
/**************** Writing in SD Memory Parameters & Instances ****************/

/********************** Gaming Parameters & Variables *************************/
#define BACKGROUND  				WHITE
#define FOREGROUND 					BLUE
#define DELAY 						1000
#define INIT_X 						24
#define INIT_Y 						100
#define G 							5.4
#define TOTAL_LEVELS				16
// Macros: Jack's dynamics
#define VEL(A,V,Ts) 				(A*Ts)+V;
#define POS(A,V,X,Ts) 				((0.5*A*Ts*Ts) +(V*Ts)+X)/1;
// Levels variables:
int level = 0;				// Indicates the game's level
int gui_level_intr = 0; 	// Boolean to interrupt LCD: (1) to increase level. (Timer0 intr.)
int gui_quak_intr = 0; 		// Boolean to interrupt LCD: (2) to show Quack!. (Light intr.)
int gui_quak_state = 0; 	// 0: OFF; 1: ON ==> SM
int leds_level = 0;			// Counter for 4 LEDs
int flag_level = 0;			// Once the game has started lift this flag
/********************** Gaming Parameters & Variables *************************/

/************* Temperature & Microphone Thresholds ************/
#define TEMP_THRESHOLD				33
#define MIC_THRESHOLD				800
/************* Temperature & Microphone Thresholds ************/

/************************************* *************************
 *------------------- PROTOTYPE FUNCTIONS --------------------*
 **************************************************************/
static void DeviceHandlerTimer0(void *CallbackRef);
static void DeviceHandlerTimer1(void *CallbackRef);
static void DeviceHandlerLight(void *CallbackRef);
static int InterruptSystemSetUp(XScuGic *XScuGicInstancePtr);
static int IntcInitfunction(u16 DeviceId,
							XTmrCtr *TmrInstancePtr0,
							XTmrCtr *TmrInstancePtr1);

// Interrupts Handling Functions ------------------------------
void DeviceHandlerTimer0(void *CallbackRef){
	if (XTmrCtr_IsExpired(&Timer0, 0)){
		if (flag_level == 1){ gui_level_intr = 1; }
		XTmrCtr_Stop(&Timer0, 0);
		// UnComment if you desired to see the interruption in the terminal:
		//xil_printf("Timer_0 Interruption.\n\r");
		XTmrCtr_Reset(&Timer0,0);
		XTmrCtr_Start(&Timer0,0);
	}
}

void DeviceHandlerTimer1(void *CallbackRef){
	if (XTmrCtr_IsExpired(&Timer1, 0)){
		if (flag_level == 1){
			if (leds_level <= 15){ leds_level ++; }
			else { leds_level = 0; }
		}
		else { leds_level = 0; }
		Xil_Out32(ENABLE_SPWM_BUFFER_ID+4, leds_level);
		XTmrCtr_Stop(&Timer1, 0);
		// UnComment if you desired to see the interruption in the terminal:
		//xil_printf("Timer_1 Interruption.\n\r");
		XTmrCtr_Reset(&Timer1,0);
		XTmrCtr_Start(&Timer1,0);
	}
}

void DeviceHandlerLight(void *CallbackRef){
	int opt = read_opt();
	xil_printf(" --------- Light Interruption ---------\n\r");
	xil_printf("OPT value: %d\n\r", opt);
	if (flag_level == 1){ gui_quak_intr = 1; }
}
/**************************************************************
 *------------------- PROTOTYPE FUNCTIONS --------------------*
 **************************************************************/

/********* Structure to define player's attributes *********/
struct Player {
    char name[50];
    int playerScore;
};
/********* Structure to define player's attributes *********/


int main(){
	/***************** Initializations & Configurations *****************/
	int Status;
    // Initialize the UART
    init_platform();
	// Initialize the GPIO 0 driver
	Status = XGpio_Initialize(&gpio0, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (Status != XST_SUCCESS) { xil_printf("Gpio 0 Initialization Failed\r\n"); }
	// Set up the AXI SPI Controller 0 (Screen)
	Status = XSpi_Init(&SpiInstance,SPI_DEVICE_ID);
	if (Status != XST_SUCCESS) { xil_printf("SPI Mode Failed\r\n"); }
	// Set up the AXI SPI Controller 0 (Joystick(x,y), accelerometer, potentiometer, mic)
	Status = init_adc(&SpiInstance1, SPI_DEVICE_ID_1);
	if (Status != XST_SUCCESS) { xil_printf("SPI-ADC Mode Failed\r\n"); }
	// Set up the AXI IIC Controller 0 (temperature sensor, light sensor)
	Status = init_IIC();
	if (Status != XST_SUCCESS) { xil_printf("IIC Mode Failed\r\n"); }
	// Initialize screen
	LCD_SCAN_DIR LCD_ScanDir = SCAN_DIR_DFT;
	LCD_Init(LCD_ScanDir );
	GUI_INTRO();
	delay_ms(500);
	LCD_Clear(GUI_BACKGROUND);

	/******************************************************
	 *---------------- Timers configuration: -------------*
	 *****************************************************/
	// Timer 0: -------------------------------------------
	Status = XTmrCtr_Initialize(&Timer0, TMR_DEVICE_ID_0);
	if (Status != XST_SUCCESS){ xil_printf("Timer0 Initialization Failed\r\n"); };
	XTmrCtr_SetHandler(&Timer0, (XTmrCtr_Handler)DeviceHandlerTimer0, &Timer0);
	XTmrCtr_SetResetValue(&Timer0, 0, TMR_LOAD0);
	XTmrCtr_SetOptions(&Timer0, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
	// Timer 1: -------------------------------------------
	Status = XTmrCtr_Initialize(&Timer1, TMR_DEVICE_ID_1);
	if (Status != XST_SUCCESS){ xil_printf("Timer1 Initialization Failed\r\n"); }
	XTmrCtr_SetHandler(&Timer1, (XTmrCtr_Handler)DeviceHandlerTimer1, &Timer1);
	XTmrCtr_SetResetValue(&Timer1, 0, TMR_LOAD1);
	XTmrCtr_SetOptions(&Timer1, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
	// Start: ---------------------------------------------
	XTmrCtr_Start(&Timer0, 0);
	XTmrCtr_Start(&Timer1, 0);

	/**********************************************************************
	 * ----------------- Initialize Interrupt Controller -----------------*
	 **********************************************************************/
	Status = IntcInitfunction(INT_DEVICE_ID, &Timer0, &Timer1);
	if (Status != XST_SUCCESS){ xil_printf("GIC Initialization Failed\r\n"); }

	/**********************************************************************
	 * ----------------------- Initialize SD Memory ----------------------*
	 **********************************************************************/
	Status = SD_Init();
	if (Status != XST_SUCCESS) { xil_printf("SD Card Initialization Failed\r\n"); }

	/*************************** Variables ***************************/
	// States
	int impulse = 0; 				// for no jumping when player is in the air
	int onGND = 1;   				// denotes if player is found in the ground
	int playing = 0; 				// denotes if the game is active
	int difficulty = 0; 			// game's difficulty
	int ending = 0; 				// ending selector
	int collision = 0;
	// Variables: w/no classification
	float g = G; 					// gravitational constant
	float t = 0.2;					// sampling frame rate
	int counter_1 = 0; 				// aux variable for and efficient printing stuff in the LCD
	// Game variables: INIT
	int score = 0;
	int yJackInit = INIT_Y;
	int xJack = INIT_X;
	// Game variables: storing and tagging
	int scoreRegister[regLength] = {0,0,0,0,0,0,0,0,0,0};
	int numPlayer = 0;
	// Game variables: thresholds ==> considers accelerometer sensibility
	int threshold_jump = 780; 		// Threshold of the peripheral in use such that the Jack jumps
	int threshold_crouch = 380; 	// Threshold of the peripheral in use such that the Jack crouches
	int read_y;						// To read a "y" position where: y in [0, 1023]
	// Game variables: menu selector
	int ac_x; 						// To select
	int radius = 3;
	int xInitSelector = 40;
	int yInitSelector = 54;
	// Game variables: log variables
	int xLog = 128;
	int logLength = 20;
	float dLog = 0.05;
	float dLogAux = dLog; 			// Just graph small portions of log giving the sense that the log is moving
	float totalLog = 0.0;   		// Accumulative log value: when the log has advanced an integer amount,
									// we have a register of the decimal part
	// Game variables: jumping & crouching variables
	float vel = 0.0;
	float yPosJack = yJackInit;
	int crouched;
	// Auxiliary variables through pointers: constantly used pointers to not create new variables
	int *aux_int;					// pointing to an int
	float *aux_float;   			// pointing to a float
	int auxiliar_int = 0;
	float auxiliar_float = 0.0;
	aux_int=&auxiliar_int;
	aux_float=&auxiliar_float;
	// Player definition:
	struct Player player1;

	/******************************* LCD Drawings: *******************************/
	// Background drawing:
	void initial_drawing_game(){
		GUI_DrawRectangle(0,0,128,108,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(0,108,128,131,GREEN,DRAW_FULL,DOT_PIXEL_1X1);
		// Score Drawing fixed:
		GUI_DrawRectangle(0,0,128,22,RED,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(0,0,128,20,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		// Score & level:
		GUI_DisString_EN(5,8,"Level:",&Font8,FONT_BACKGROUND,CYAN);
		GUI_DisNum(42,8,level,&Font8,FONT_BACKGROUND,CYAN);
		GUI_DisString_EN(70,8,"Score:",&Font8,FONT_BACKGROUND,CYAN);
		GUI_DisNum(107,8,score,&Font8,FONT_BACKGROUND,CYAN);
		// Jack the duck's drawing
		GUI_DrawRectangle(xJack+2,yPosJack-15,xJack+8,yPosJack-10,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yPosJack-12,xJack+10,yPosJack-11,RED,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+4,yPosJack-10,xJack+6,yPosJack-5,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack-2,yPosJack-5,xJack+9,yPosJack+4,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+2,yPosJack+4,xJack+3,yPosJack+8,RED,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yPosJack+4,xJack+7,yPosJack+8,RED,DRAW_FULL,DOT_PIXEL_1X1);
	}
	// Main menu drawing:
	void initial_drawing_menu(){
		LCD_Clear(BLACK);
		GUI_DisString_EN(13,30,"Jack the Duck",&Font12,BLACK,RED);
		GUI_DisString_EN(50,50,"Easy",&Font12,BLACK,WHITE);
		GUI_DisString_EN(50,70,"Medium",&Font12,BLACK,WHITE);
		GUI_DisString_EN(50,90,"Hard",&Font12,BLACK,WHITE);
		GUI_DrawCircle(xInitSelector,yInitSelector,radius,GREEN,DRAW_FULL,DOT_PIXEL_1X1);
	}
	// End game drawing:
	 void end_game_drawing(){
		LCD_Clear(BLACK);
		GUI_DisString_EN(13,30,"GAME OVER",&Font12,BLACK,RED);
		GUI_DisString_EN(50,50,"Restart",&Font12,BLACK,WHITE);
		GUI_DisString_EN(50,70,"Save",&Font12,BLACK,WHITE);
		GUI_DisString_EN(50,90,"Exit",&Font12,BLACK,WHITE);
		GUI_DrawCircle(xInitSelector,yInitSelector,radius,GREEN,DRAW_FULL,DOT_PIXEL_1X1);
	}
	// Saving drawing:
	void saving_drawing(){
		LCD_Clear(BLACK);
		GUI_DisString_EN(10,60,"Saving scores!",&Font12,BLACK,BLUE);
	}
	// End drawing:
	void end_drawing(){
		LCD_Clear(BLACK);
		GUI_DisString_EN(10,50,"Player: ",&Font12,BLACK,CYAN);
		GUI_DisString_EN(80,50,player1.name,&Font12,BLACK,CYAN);
		GUI_DisString_EN(10,70,"Score: ",&Font12,BLACK,CYAN);
		GUI_DisNum(80,70,player1.playerScore,&Font8,GUI_BACKGROUND,CYAN);
	}
	// Jack-Duck Re-drawing:
	void redraw_jack(int yOldJack, int yNewJack){
		GUI_DrawRectangle(xJack+2,yOldJack-15,xJack+8,yOldJack-10,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yOldJack-12,xJack+10,yOldJack-11,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+4,yOldJack-10,xJack+6,yOldJack-5,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack-2,yOldJack-5,xJack+9,yOldJack+4,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+2,yOldJack+4,xJack+3,yOldJack+8,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yOldJack+4,xJack+7,yOldJack+8,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+2,yNewJack-15,xJack+8,yNewJack-10,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yNewJack-12,xJack+10,yNewJack-11,RED,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+4,yNewJack-10,xJack+6,yNewJack-5,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack-2,yNewJack-5,xJack+9,yNewJack+4,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+2,yNewJack+4,xJack+3,yNewJack+8,RED,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yNewJack+4,xJack+7,yNewJack+8,RED,DRAW_FULL,DOT_PIXEL_1X1);
	}
	void redraw_jack_crouch(){
		GUI_DrawRectangle(xJack+2,yJackInit-15,xJack+8,yJackInit-10,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yJackInit-12,xJack+10,yJackInit-11,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+4,yJackInit-10,xJack+6,yJackInit-5,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack-2,yJackInit-5,xJack+9,yJackInit+4,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+2,yJackInit+4,xJack+3,yJackInit+8,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yJackInit+4,xJack+7,yJackInit+8,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+2,yJackInit-12,xJack+8,yJackInit-8,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yJackInit-10,xJack+10,yJackInit-9,RED,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack-2,yJackInit-8,xJack+9,yJackInit,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
	}
	void redraw_jack_stand(){
		GUI_DrawRectangle(xJack+2,yJackInit-12,xJack+8,yJackInit-8,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yJackInit-10,xJack+10,yJackInit-9,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack-2,yJackInit-8,xJack+9,yJackInit,GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+2,yJackInit-15,xJack+8,yJackInit-10,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yJackInit-12,xJack+10,yJackInit-11,RED,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+4,yJackInit-10,xJack+6,yJackInit-5,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack-2,yJackInit-5,xJack+9,yJackInit+4,WHITE,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+2,yJackInit+4,xJack+3,yJackInit+8,RED,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xJack+6,yJackInit+4,xJack+7,yJackInit+8,RED,DRAW_FULL,DOT_PIXEL_1X1);
	}
	// Log Re-drawing:
	void redraw_log(int xOldLog, int xNewLog, int displacement){
		GUI_DrawRectangle(xOldLog + logLength - displacement, 98, xOldLog + logLength,
						  108, GUI_BACKGROUND,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawRectangle(xNewLog, 98, xOldLog, 108, YELLOW, DRAW_FULL,DOT_PIXEL_1X1);
	}
	// Menu selector Re-drawing:
	void redraw_selector(){
		for (int i = 0; i < 3; i++) {
				GUI_DrawCircle(xInitSelector,yInitSelector + (i*20),radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
				GUI_DrawCircle(xInitSelector,yInitSelector + (i*20),radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
				GUI_DrawCircle(xInitSelector,yInitSelector + (i*20),radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
			}
		GUI_DrawCircle(xInitSelector,yInitSelector,radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawCircle(xInitSelector,yInitSelector+20,radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawCircle(xInitSelector,yInitSelector+40,radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
		if (difficulty == 0){
			GUI_DrawCircle(xInitSelector,yInitSelector,radius,GREEN,DRAW_FULL,DOT_PIXEL_1X1);
		} else if (difficulty == 1){
			GUI_DrawCircle(xInitSelector,yInitSelector+20,radius,GBLUE,DRAW_FULL,DOT_PIXEL_1X1);
		} else {
			GUI_DrawCircle(xInitSelector,yInitSelector+40,radius,RED,DRAW_FULL,DOT_PIXEL_1X1);
		}
	}
	// Ending selector Re-drawing:
	void redraw_selector_end(){
		for (int j = 0; j < 3; j++) {
				GUI_DrawCircle(xInitSelector,yInitSelector + (j*20),radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
				GUI_DrawCircle(xInitSelector,yInitSelector + (j*20),radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
				GUI_DrawCircle(xInitSelector,yInitSelector + (j*20),radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
			}
		GUI_DrawCircle(xInitSelector,yInitSelector,radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawCircle(xInitSelector,yInitSelector+20,radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
		GUI_DrawCircle(xInitSelector,yInitSelector+40,radius,BLACK,DRAW_FULL,DOT_PIXEL_1X1);
		if (ending == 0){
			GUI_DrawCircle(xInitSelector,yInitSelector,radius,GREEN,DRAW_FULL,DOT_PIXEL_1X1);
		} else if (ending == 1){
			GUI_DrawCircle(xInitSelector,yInitSelector+20,radius,GBLUE,DRAW_FULL,DOT_PIXEL_1X1);
		} else {
			GUI_DrawCircle(xInitSelector,yInitSelector+40,radius,RED,DRAW_FULL,DOT_PIXEL_1X1);
		}
	}
	// Function that computes and prints out the score each time the log/plane reaches the end
	void scorer(){
		GUI_DisNum(107,8,score,&Font8,GUI_BACKGROUND,FONT_BACKGROUND);
		score += 1;
		GUI_DisNum(107,8,score,&Font8,GUI_BACKGROUND,CYAN);
	}
	// Function that updates the level and prints it
	void leveler(){
		GUI_DisNum(42,8,level,&Font8,GUI_BACKGROUND,FONT_BACKGROUND);
		level += 1;
		GUI_DisNum(42,8,level,&Font8,GUI_BACKGROUND,CYAN);
	}
	void quak_writing(){
		if (gui_quak_state == 0){
			GUI_DisString_EN(88,38,"Quack!",&Font12,FONT_BACKGROUND,FONT_BACKGROUND);
			GUI_DisString_EN(88,38,"Quack!",&Font12,FONT_BACKGROUND,WHITE);
		} else {
			GUI_DisString_EN(88,38,"Quack!",&Font12,FONT_BACKGROUND,WHITE);
			GUI_DisString_EN(88,38,"Quack!",&Font12,FONT_BACKGROUND,FONT_BACKGROUND);
		}
	}

	/*************************** Dynamics Drawing **************************/
	// Function that computes position and velocity: macros VEL and POS
	void jack_pos_vel(){
		if (impulse == 1){
			*aux_float = -25.0, impulse = 0, *aux_int = yJackInit;
		} else if (impulse == 0 && onGND == 0){
			*aux_float = VEL(g,vel,t)
		}
		vel = *aux_float;
		if (onGND == 0){
			*aux_int = POS(g,vel,yPosJack,t);
		}
		if (*aux_int > yJackInit){
			onGND = 1, g = G;
			vel = 0.0, *aux_int = yJackInit, dLog = dLogAux;
		}
	}
	// Function jump and crouch: state machine style
	int jump_crouch(int read_y, int threshold_jump, int threshold_crouch){
		*aux_int = yJackInit;
		if (onGND == 1){
			if (read_y >= threshold_jump){
				onGND = 0, impulse = 1, dLog = dLog * 3;
			} else if (read_y <= threshold_crouch && crouched == 0){
				redraw_jack_crouch();
				crouched = 1;
				*aux_int = yJackInit;
			} else if (crouched == 1 && read_y >= threshold_crouch && read_y <= threshold_jump){
				redraw_jack_stand();
				crouched = 0;
				*aux_int = yJackInit;
			} else{
				*aux_int = yJackInit;
			}
		// If Jack crouches in the air it speeds up the falling
		} else {
			if (read_y <= threshold_crouch){
				g = 7 * G;
			}
			jack_pos_vel();
		}
		// Wait 3 pixels changes before re-drawing jack
		if ((yPosJack != *aux_int && ((yPosJack - *aux_int)/1 >= 3)) ||
				(yPosJack != *aux_int && ((yPosJack - *aux_int)/1 <= -3))){
			redraw_jack(yPosJack, *aux_int);
		}
		return *aux_int;
	}

	/*************** Check collisions ***************/
	int check_collision(){
		if (onGND == 1 && (xLog >= xJack-2 && xLog <= xJack+9)){ return 1; }
		else if (onGND == 0 && (xJack >= xLog && xJack <= xLog + logLength)
				&& yPosJack >= yJackInit - 9){ return 1; }
		else { return 0; }
	}

	/************ Writing in SD Memory ************/
	fptr = openFile("Data.csv", 'a');
	/************ Writing in SD Memory ************/

	/************ Player configuration ************/
	xil_printf("Enter player's name: \n");
	scanf("%49s", player1.name);
	/************ Player configuration ************/

	/************ RGB_PWM/Music configuration: UART ************/
	// When booting: COMMENT -----------------------------------
	delay_ms(5000);						// 5 seconds to reach the terminal.
	int colorRGB_PWM;
	int enableMusic;
	int sendEnable = 0;
	xil_printf("Please enter %d", 1); xil_printf(" to configure the Programmable Logic.\n");
	scanf("%d", &sendEnable);
	xil_printf("Please enter a color for the RGB LED:\n");
	scanf("%x", &colorRGB_PWM);
	xil_printf("Please enter %d", 1); xil_printf(" to enable music.\n");
	scanf("%x", &enableMusic);
	if (sendEnable == 1){
		Xil_Out32(ENABLE_SPWM_BUFFER_ID+8, colorRGB_PWM);
		xil_printf("Color sent: %x\n\r", colorRGB_PWM);
		if (enableMusic == 1){
			Xil_Out32(ENABLE_SPWM_BUFFER_ID+12, 0xFFFFFFFF);
			xil_printf("Music Enable.\n");
		}
	}
	// ----------------------------------------------------------
	/************ RGB_PWM/Music configuration: UART ************/

	/************ Booting Option (UnComment) ************/
	/*
	int colorRGB_PWM = 6;
	Xil_Out32(ENABLE_SPWM_BUFFER_ID+8, colorRGB_PWM);
	Xil_Out32(ENABLE_SPWM_BUFFER_ID+12, 0xFFFFFFFF);
	*/
	/************ Booting Option (UnComment) ************/

	/******************************* Main Loop: START  ********************************/
	while(1){
		initial_drawing_menu();

		/*********** State machine for menu selections: **********/
		while(playing == 0){

			/**************** Testing OPT3001 ****************/
			//int opt = read_opt();
			//xil_printf("OPT: %d\n\r", opt);

			/******************* Turn on/off music *******************/
			int temp = read_tmp(); 			// Temperature TH to turn it OFF
			if (temp > TEMP_THRESHOLD){		// Variable & adaptive threshold
				Xil_Out32(ENABLE_SPWM_BUFFER_ID+12, 0x00000000);
				xil_printf("Music disable.\n");
			}
			int mic = read_MIC();			// Mic TH to turn it ON
			if (mic > MIC_THRESHOLD){		// Variable & adaptive threshold
				Xil_Out32(ENABLE_SPWM_BUFFER_ID+12, 0xFFFFFFFF);
				xil_printf("Music enable.\n");
			}

			/**************** Menu difficulty selection ****************/
			read_y = read_joyy();			// Joystick to move selector
			ac_x = read_acx();				// Accelerometer for choosing difficulty

			if (read_y < threshold_crouch && *aux_int == 0){
				difficulty +=1; *aux_int = 1;
			} else if (read_y > threshold_jump && *aux_int == 0){
				difficulty -= 1; *aux_int = 1;
			}

			// Selector boundaries:
			if (difficulty < 0){ difficulty = 2; }
			else if (difficulty > 2){ difficulty = 0; }

			// Selector re-drawing when choosing difficulty
			if (*aux_int == 1){ redraw_selector(); }

			// Returning point for the selector
			if ((read_y <= 520) && (read_y >= 504)){ *aux_int = 0; }

			// To jump to the next loop by passing accelerometer x position threshold
			if (ac_x >= 680){ playing = 1; }
		}

		/************ Game loop drawing: ************/
		initial_drawing_game();
		flag_level = 1;

		// Game loop: collisions stop it by changing playing to 0
		while(playing == 1){

			/************ Timer Interruption to show level in GUI ************/
			if (gui_level_intr == 1){
				leveler();
				gui_level_intr = 0;
			}
			/************ Light Interruption to show level Quak! in GUI ************/
			if (gui_quak_intr == 1){
				quak_writing();
				gui_quak_intr = 0;
				if (gui_quak_state == 0){ gui_quak_state = 1;}
				else {gui_quak_state = 0;}
			}

			/************ Choice of peripheral based on difficulty ************/
			if (difficulty == 0){
				read_y = read_joyy();
				threshold_jump = 780, threshold_crouch = 380;
			} else if (difficulty == 1){
				read_y = read_POT1();
				threshold_jump = 780, threshold_crouch = 380;
			} else {
				read_y = read_acy();
				threshold_jump = 532, threshold_crouch = 432;
			}

			/************ To turn on RGB LED ************/
			if (read_y >= threshold_jump){ Xil_Out32(ENABLE_SPWM_BUFFER_ID, 0xFFFFFFFF); }
			else { Xil_Out32(ENABLE_SPWM_BUFFER_ID, 0x00000000); }

			/************ Collisions Logic ************/
			// Aux counter for to not compute
			if (counter_1 == 4){
				yPosJack = jump_crouch(read_y, threshold_jump, threshold_crouch);
				counter_1 = 0;
			}
			counter_1 += 1;
			// Check log/plane positions
			totalLog += dLog;
			if (totalLog >= 1.0){
				*aux_int = xLog;
				xLog -= totalLog/1;
				redraw_log(*aux_int, xLog, totalLog/1);
				totalLog -= totalLog/1;
			}
			// Checking if collision:

			collision = check_collision();
			if (collision == 1){ playing = 2; }
			else { playing = 1; }

			// Increase score when log/plane reach the end:
			if (xLog + logLength <= 0){
				xLog = 128; scorer();
			}

			// Check if the game has finished:
			if (level == TOTAL_LEVELS){ playing = 2; }
		}

		/******** Turn off Quak! message if is ON ********/
		GUI_DisString_EN(88,38,"Quack!",&Font12,FONT_BACKGROUND,FONT_BACKGROUND);
		/******** Storing Player's Score ********/
		scoreRegister[numPlayer] = score;
		numPlayer += 1;
		/************ Turn off/ music/RGB LEDS: ************/
		Xil_Out32(ENABLE_SPWM_BUFFER_ID, 0x00000000);
		Xil_Out32(ENABLE_SPWM_BUFFER_ID+12, 0x00000000);
		xil_printf("End of the game.\n");
		xil_printf("Music disable.\n");
		/************ End Game drawing: ************/
		end_game_drawing();
		/************ End Game Variables: ************/
		flag_level = 0; level = 0; *aux_int = 0;

		while (playing == 2){
			/************ Ending selection ************/
			read_y = read_joyy();			// Joystick to move selector
			ac_x = read_acx();				// Accelerometer for choosing difficulty

			if (read_y < threshold_crouch && *aux_int == 0){
				ending +=1;
				*aux_int = 1;
			} else if (read_y > threshold_jump && *aux_int == 0){
				ending -= 1;
				*aux_int = 1;
			}

			// Selector boundaries:
			if (ending < 0){ ending = 2; }
			else if (ending > 2){ ending = 0; }

			// Selector re-drawing when choosing difficulty
			if (*aux_int == 1){ redraw_selector_end(); }

			// Returning point for the selector
			if ((read_y <= 520) && (read_y >= 504)){ *aux_int = 0; }

			// To jump to the next loop by passing accelerometer x position threshold
			if (ac_x >= 680){
				if (ending == 0){ playing = 0; }
				else if (ending == 1){ playing = 3; }
				else { playing = 4; }
			}
		}

		if (playing == 0){
			Xil_Out32(ENABLE_SPWM_BUFFER_ID+12, 0xFFFFFFFF);
			xil_printf("Music enable.\n");
			// Reseting gaming variables:
			player1.playerScore = score;
			difficulty = 0; ending = 0;
			score = 0; collision = 0; xLog = 128;
		}
		else if (playing == 3){ saving_drawing(); }
		else if (playing == 4){ end_drawing(); }

		/***************** Storing Section *****************/
		while (playing == 3){
			for (int s = 0; s < MAX_SAMPLES_TO_STORE; s++){
				int dataScore = scoreRegister[s];
				xil_printf("Updating SD card: adding player's score \n\r");
				sprintf(dataPntr, "%d\n", dataScore);
				writeFile(fptr, 100, (u32)dataBuffer);
				dataPntr = (char *)dataBuffer;
				delay_ms(500);
			}
			for (int t = 0; t < MAX_SAMPLES_TEMP; t++){
				int tmp = read_tmp();
				xil_printf("Updating SD card: Temperature \n\r");
				sprintf(dataPntr, "%d\n", tmp);
				writeFile(fptr, 100, (u32)dataBufferTemp);
				dataPntr = (char *)dataBufferTemp;
				delay_ms(50);
			}
			closeFile(fptr);
			SD_Eject();
			xil_printf("Safe to remove SD Card... \n\r");
			/********** Returning to main menu **********/
			// Reseting gaming variables:
			difficulty = 0; ending = 0;
			score = 0; collision = 0; xLog = 128;
			playing = 2;
		}

		Xil_Out32(ENABLE_SPWM_BUFFER_ID+12, 0xFFFFFFFF);
		xil_printf("Music enable.\n");

		while (playing == 4){
			Xil_Out32(ENABLE_SPWM_BUFFER_ID+12, 0x00000000);
			xil_printf("Music disable.\n");
			return 0;
		}
	}
	/******************************* Main Loop: END  ********************************/
    return 0;
}


/***************************************************************************************
 *------------------- PROTOTYPE FUNCTIONS: GIC & CPU Configuration --------------------*
 ***************************************************************************************/
int InterruptSystemSetUp(XScuGic *XScuGicInstancePtr){
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
								(Xil_ExceptionHandler)XScuGic_InterruptHandler,
								XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

int IntcInitfunction(u16 DeviceId,
					XTmrCtr *TmrInstancePtr0,
					XTmrCtr *TmrInstancePtr1){
	XScuGic_Config *IntcConfig;
	int status;
	// Interrupt Controller Initialization
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if (status != XST_SUCCESS){ xil_printf("GIC Initialization Failed\r\n"); };
	/*********************** GIC Connections ***********************/
	// Timer0:
	status = XScuGic_Connect(&INTCInst,INTC_TMR_INTERRUPT_ID0,
							(Xil_ExceptionHandler)DeviceHandlerTimer0,(void *)TmrInstancePtr0);
	if (status != XST_SUCCESS){ xil_printf("Connection to Timer0 Failed\r\n"); };
	//Timer1:
	status = XScuGic_Connect(&INTCInst,INTC_TMR_INTERRUPT_ID1,
							(Xil_ExceptionHandler)DeviceHandlerTimer1,(void *)TmrInstancePtr1);
	if (status != XST_SUCCESS){ xil_printf("Connection to Timer1 Failed\r\n"); };
	//Light:
	status = XScuGic_Connect(&INTCInst,INTC_LIGHT_ID,
							(Xil_ExceptionHandler)DeviceHandlerLight,(void *)&INTCInst);

	XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID0);
	XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID1);
	XScuGic_Enable(&INTCInst, INTC_LIGHT_ID);
	// Call the interrupt set-up:
	status = InterruptSystemSetUp(&INTCInst);
	if (status != XST_SUCCESS){ xil_printf("Interrupt Set-Up Failed\r\n"); };
	return XST_SUCCESS;
}
