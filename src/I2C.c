#include "I2C.h"
XIic  iic;
u8 SendBuffer[2];
u8 RecvBuffer[2];
u8 config[3];

u8 SendBufferFirst[2];
u8 SendBufferLow[2];
u8 SendBufferHigh[2];

int Lux;
int16_t val;
int temp;

int init_IIC() {

		XIic_Config *iic_conf;

	    init_platform();

	    iic_conf = XIic_LookupConfig(IIC_dev);
	    XIic_CfgInitialize(&iic, iic_conf, iic_conf->BaseAddress);
	    XIic_Start(&iic);


		SendBuffer[0] = 0xfe;
		XIic_Send(iic.BaseAddress,TMP_ADDR,(u8 *)&SendBuffer, 1,XIIC_REPEATED_START);
		XIic_Recv(iic.BaseAddress,TMP_ADDR,(u8 *)&RecvBuffer, 2,XIIC_STOP);


		SendBuffer[0] = 0x02;
		XIic_Send(iic.BaseAddress,TMP_ADDR,(u8 *)&SendBuffer, 1,XIIC_STOP);

		SendBuffer[0] = 0x80;
		XIic_Send(iic.BaseAddress,TMP_ADDR,(u8 *)&SendBuffer, 1,XIIC_REPEATED_START);
		SendBuffer[0] = 0x82;
		XIic_Send(iic.BaseAddress,TMP_ADDR,(u8 *)&SendBuffer, 1,XIIC_REPEATED_START);



    return XST_SUCCESS;
}

int read_tmp(){
	SendBuffer[0] = 0x01; // envia para leer temp
	XIic_Send(iic.BaseAddress, TMP_ADDR, (u8 *)&SendBuffer, 1, XIIC_REPEATED_START);
	XIic_Recv(iic.BaseAddress, TMP_ADDR, (u8 *)&RecvBuffer, 2, XIIC_STOP);
	val = (RecvBuffer[0] << 8) | (RecvBuffer[1]);
	temp = val / 128;
	return temp;
}
int read_opt(){
	// Temperature Measurement Interruption:
	// Setting OPT3001
	// Configure high threshold value (customize based on your requirements)
	u8 config[3] = {0x01, 0xC4, 0x08};//{0x01, 0xC6, 0x18}; //C4
	// 			(0001) (1100 0100 0000 1000)
	XIic_Send(iic.BaseAddress,OPT_ADDR,(u8 *)&config, 3, XIIC_STOP);
	// lux = 0.01 * 2^E[15:12] * T[11:0]
	u8 configLow[3] = {0x02, 0x5A, 0x9A};	// Low Limit == 0x02 ==> lux = 868.48
	u8 configHigh[3] = {0x03, 0xBF, 0xBB};	// High Limit == 0x03 ==> lux = 68157.44
	XIic_Send(iic.BaseAddress,OPT_ADDR,(u8 *)&configLow, 3, XIIC_STOP);
	XIic_Send(iic.BaseAddress,OPT_ADDR,(u8 *)&configHigh, 3, XIIC_STOP);

	SendBuffer[0] = 0x01;
	XIic_Send(iic.BaseAddress,OPT_ADDR,(u8 *)&SendBuffer, 1, XIIC_REPEATED_START);
	XIic_Recv(iic.BaseAddress,OPT_ADDR,(u8 *)&RecvBuffer, 2, XIIC_STOP);
	Lux = (int)((RecvBuffer[0])*256 + (RecvBuffer[1]));

	return Lux;
}
