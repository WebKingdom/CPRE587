#pragma once

#include "Config.h"
#include "Types.h"
#include <iostream>


#define ACCEL_PARAMS ((ui8*)0x43C00000)
#define WEIGHT_BRAM_BA ((ui32*)0x44000000)
#define INPUT_BRAM_BA ((ui32*)0x42000000)



#define OUTPUT_BRAM_BA ((ui32*)0x40000000)

#define WEIGHT_BRAM ((i8*)0x44000000)
#define INPUT_BRAM ((ui8*)0x42000000)
#define OUTPUT_BRAM ((volatile i32*)0x40000000)
#define PRINTF_BINARY_PATTERN_INT8 "%c%c%c%c%c%c%c%c\n"
#define PRINTF_BYTE_TO_BINARY_INT8(i)    \
    (((i) & 0x80ll) ? '1' : '0'), \
    (((i) & 0x40ll) ? '1' : '0'), \
    (((i) & 0x20ll) ? '1' : '0'), \
    (((i) & 0x10ll) ? '1' : '0'), \
    (((i) & 0x08ll) ? '1' : '0'), \
    (((i) & 0x04ll) ? '1' : '0'), \
    (((i) & 0x02ll) ? '1' : '0'), \
    (((i) & 0x01ll) ? '1' : '0')

#define PRINTF_BINARY_PATTERN_INT16 \
    PRINTF_BINARY_PATTERN_INT8              PRINTF_BINARY_PATTERN_INT8
#define PRINTF_BYTE_TO_BINARY_INT16(i) \
    PRINTF_BYTE_TO_BINARY_INT8((i) >> 8),   PRINTF_BYTE_TO_BINARY_INT8(i)
#define PRINTF_BINARY_PATTERN_INT32 \
    PRINTF_BINARY_PATTERN_INT16             PRINTF_BINARY_PATTERN_INT16
#define PRINTF_BYTE_TO_BINARY_INT32(i) \
    PRINTF_BYTE_TO_BINARY_INT16((i) >> 16), PRINTF_BYTE_TO_BINARY_INT16(i)
#define PRINTF_BINARY_PATTERN_INT64    \
    PRINTF_BINARY_PATTERN_INT32             PRINTF_BINARY_PATTERN_INT32
#define PRINTF_BYTE_TO_BINARY_INT64(i) \
    PRINTF_BYTE_TO_BINARY_INT32((i) >> 32), PRINTF_BYTE_TO_BINARY_INT32(i)


namespace ML{




void setReset(int x);
void setValid(int x);
void setStart(int x);

void setFilterSize(int rs);


void setTileSize(int rs);
void setBAs();
void setBufferWeights(int x);
void setLoadWeights(int x);
void setBufferInputs(int x);

void setBufferPsum(int x);

int checkOutputWritten();

int checkWeightBuffered();

int checkWeightLoaded();
int checkInputBuffered();

void printBAs();


void printStatusRegister();

void printErrors();
void clearBuffers();
void printMem(volatile void* addrv, int num);

void printRegister(ui32* addr);
}
