#include <stdio.h>

typedef struct genes4_st{
    uint8_t genes[4];
};

typedef struct genes80_st{
    uint8_t genes[80];
};

#define genes4_t struct genes4_st 
#define genes80_t struct genes80_st 

genes80_t BitstoGenes(uint8_t input[20]);