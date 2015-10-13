#include "utils.h"

uint8_t* U8to2bits(uint8_t input){
    uint8_t* rest;
    uint8_t genes[4];
    genes[0] = input >> 6;
    genes[1] = (input >> 4)%4;
    genes[2] = (input >> 2)%4;
    genes[3] = input % 16;
    rest = genes;
    return rest;
}


uint8_t* BitstoGenes(uint8_t input[20]){
    uint8_t *rest, *tmp;
    uint8_t genes[80];
    int i,j;

    for (i=0; i<20; i++){
        tmp = U8to2bits(input[i]);
        for(j=0; j<4; j++)
        genes[i*4+j] = tmp[0+j];
    }
    rest = genes;
    return rest;
}
