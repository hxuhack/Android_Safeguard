#ifndef _UTILS_H_
#define _UTILS_H_

#include <stdio.h>
#ifndef __uint8_t_
typedef unsigned char uint8_t;
#define __uint8_t_
#endif

struct genes4_st{
    uint8_t genes[4];
};

struct genes80_st{
    uint8_t genes[80];
};

#define genes4_t struct genes4_st 
#define genes80_t struct genes80_st 

genes80_t BitstoGenes(uint8_t[20]);

#endif
