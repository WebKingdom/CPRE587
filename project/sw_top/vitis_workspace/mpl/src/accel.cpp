
/*
#include "accel.h"
#include "hwdesc.h"
#include "Config.h"
#include "Model.h"
#include "Types.h"
#include "Utils.h"

*/
#include "accel.h"
#include "Types.h"
#include "xtime_l.h"
namespace ML{



void setReset(int x){

	if(x){
		*(ACCEL_PARAMS+3) |= 0b00100000;
	} else {
		*(ACCEL_PARAMS+3) &= 0b11011111;
	}

}
void setValid(int x){

	if(x){
		*(ACCEL_PARAMS+3) |= 0b10000000;
	} else {
		*(ACCEL_PARAMS+3) &= 0b01111111;
	}

}
void setStart(int x){

	if(x){
		*(ACCEL_PARAMS+3) |= 0b01000000;
	} else {
		*(ACCEL_PARAMS+3) &= 0b10111111;
	}

}


void setFilterSize(int rs){
	ui8 nval;

	if(rs == 3){
		nval = 0b00110011;
	} else if(rs ==5 ){
		nval = 0b01010101;
	}
	*(ACCEL_PARAMS) = nval;
}


void setTileSize(int rs){
	ui8 nval;

	if(rs == 9){
		nval = 0b10010001;
	} else if(rs == 5 ){
		nval = 0b01010001;
	}
	*(ACCEL_PARAMS+1) &= 0b00000000;
	*(ACCEL_PARAMS+1) |= nval;
}

void setBAs(){
	ui32 ** BAreg = (ui32**) ACCEL_PARAMS;
	*(BAreg+1) = WEIGHT_BRAM_BA;
	*(BAreg+2) = INPUT_BRAM_BA;
	*(BAreg+3) = OUTPUT_BRAM_BA;

}

void setBufferWeights(int x){
	volatile ui8 * MEMCTL = (ui8*)(ACCEL_PARAMS+16);
	if(x){
		*(MEMCTL) |=  0b00000001;
	} else {
		*(MEMCTL) &= 0b11111110;
	}


}
void setLoadWeights(int x){
	volatile ui8 * MEMCTL = (ui8*)(ACCEL_PARAMS+16);
	if(x){
		*(MEMCTL) |= 0b00000100;
	} else {
		*(MEMCTL) &= 0b11111011;
	}


}


void clearBuffers(){
	volatile ui8 * MEMCTL = (ui8*)(ACCEL_PARAMS+16);
	*(MEMCTL) &= 0b01001101;
	*(MEMCTL) |= 0b10110010;
	*(MEMCTL) &= 0b01001101;

}


void setBufferInputs(int x){
	volatile ui8 * MEMCTL = (ui8*)(ACCEL_PARAMS+16);
	if(x){
		*(MEMCTL) |= 0b00001000;
	} else {
		*(MEMCTL) &= 0b11110111;
	}


}

void setBufferPsum(int x){
	volatile ui8 * MEMCTL = (ui8*)(ACCEL_PARAMS+16);
	if(x){
		*(MEMCTL) |= 0b01000000;
	} else {
		*(MEMCTL) &= 0b10111111;
	}
}

int checkOutputWritten(){
	volatile ui8 * STATUS = (ui8*)(ACCEL_PARAMS+ 4*31);
	return (*(STATUS) & 0b10000);
}

int checkWeightBuffered(){
	volatile ui8 * STATUS = (ui8*)(ACCEL_PARAMS+ 4*31);
	return (*(STATUS) & 0b01);
}

int checkWeightLoaded(){
	volatile ui8 * STATUS = (ui8*)(ACCEL_PARAMS+ 4*31);
	return (*(STATUS) & 0b010);
}
int checkInputBuffered(){
	volatile ui8 * STATUS = (ui8*)(ACCEL_PARAMS+ 4*31);
	return (*(STATUS) & 0b0100);
}

void printBAs(){
	volatile ui32 * weightBAreg = (ui32*)(ACCEL_PARAMS + 4*1);
	volatile ui32 * inputBAreg = (ui32*)(ACCEL_PARAMS + 4*2);
	volatile ui32 * outputBAreg = (ui32*)(ACCEL_PARAMS + 4*3);
	printf("Weight BA: %x\r\n", *weightBAreg);
	printf("Input BA: %x\r\n", *inputBAreg);
	printf("Output BA: %x\r\n", *outputBAreg);


}


void printStatusRegister(){
	volatile ui8 * STATUS = (ui8*)(ACCEL_PARAMS+ 4*31);
	printf("Printing Status--------------------\r\n");

	printf("Weights buffered: %d\r\n", *(STATUS) & 0b1);
	printf("Weight loaded: %d\r\n", (*(STATUS) >>1) & 0b01);
	printf("Input buffered: %d\r\n",(*(STATUS)>>2) & 0b01);
	printf("Output buffering: %d\r\n", (*(STATUS) >>3) & 0b01);
	printf("Output Written: %d\r\n", (*(STATUS) >>4) & 0b01);
	printf("Psum buffered: %d\r\n", (*(STATUS) >>5) & 0b01);

}

void printErrors(){
	volatile ui8 * STATUS = (ui8*)(ACCEL_PARAMS+ 4*31 + 2);
	printf("Printing errors--------------------\r\n");
	printf("Weight buffer error: %d\r\n", *(STATUS) & 0b1);
	printf("Weight load error: %d\r\n", (*(STATUS) >>1) & 0b01);
	printf("Input buffer error: %d\r\n",(*(STATUS)>>2) & 0b01);
	printf("Zero: %d\r\n", (*(STATUS) >>3) & 0b01);
	printf("Output Write error: %d\r\n", (*(STATUS) >>4) & 0b01);
	printf("Psum buffer error: %d\r\n", (*(STATUS) >>5) & 0b01);

}

void printMem(volatile void* addrv, int num){

	volatile ui32* addr = (volatile ui32*)addrv;
	printf("Printing %d 32-bit vals at addr %08x-------------\r\n", num, addr);
	for(int i = 0; i < num; i++){
		printf("%08x\n", *(addr+i));
	}
	printf("-------------------------------------------------\r\n");
}

void printRegister(ui32* addr){
	ui32 m = *addr;
    printf("Reg: --------------------\n"
           PRINTF_BINARY_PATTERN_INT32 "\n",
           PRINTF_BYTE_TO_BINARY_INT32(m));
    printf("-------------------------\n");
}
};
