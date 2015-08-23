#include "utils.h"

genes4_t CUVICDRWUQILZTZGWCONSYHLBAKGUOK(uint8_t input){
    genes4_t result;
    result.genes[0] = input >> 6;
    result.genes[1] = (input >> 4)%16;
    result.genes[2] = (input >> 2)%16;
    result.genes[3] = input % 16;
    return result;
}


genes80_t OEMXSJVVDHENFDTAHAPAMBARGRLDUCN(uint8_t input[20]){
    genes80_t result;
    genes4_t tmp;
    int i,j;

    for (i=0; i<20; i++){
        tmp = CUVICDRWUQILZTZGWCONSYHLBAKGUOK(input[i]);
        for(j=0; j<4; j++)
        result.genes[i*4+j] = tmp.genes[0+j];
    }
    return result;
}
