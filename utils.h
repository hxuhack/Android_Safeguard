#include <stdio.h>

#ifndef __uint8_t_defined
typedef unsigned char uint8_t;
#define __uint8_t_defined
#endif

typedef struct genes4_st{
    uint8_t genes[4];
};

typedef struct genes80_st{
    uint8_t genes[80];
};

#define genes4_t struct genes4_st 
#define genes80_t struct genes80_st 

genes80_t CLANEMPTCXSTIJADDDGUMWFQFXXCYVZ(uint8_t input[20]);
