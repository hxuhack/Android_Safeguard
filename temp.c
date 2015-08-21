/*
 *  sha1.c
 *
 *  Description:
 *      This file implements the Secure Hashing Algorithm 1 as
 *      defined in FIPS PUB 180-1 published April 17, 1995.
 *
 */


#include "sha1.h"
#include "utils.h"

/*
 *  Define the SHA1 circular left shift macro
 */
#define SHA1CircularShift(bits,word) \
                (((word) << (bits)) | ((word) >> (32-(bits))))

int SHA1Reset(SHA1Context *context)
{
    if (!context)
    {
        return shaNull;
    }

    context->Length_Low             = 0;
    context->Length_High            = 0;
    context->Message_Block_Index    = 0;

    context->Intermediate_Hash[0]   = 0x67452301;
    context->Intermediate_Hash[1]   = 0xEFCDAB89;
    context->Intermediate_Hash[2]   = 0x98BADCFE;
    context->Intermediate_Hash[3]   = 0x10325476;
    context->Intermediate_Hash[4]   = 0xC3D2E1F0;

    context->Computed   = 0;
    context->Corrupted  = 0;

    return shaSuccess;
}

int           t = 0;             /* Loop counter                */
uint32_t      temp;              /* Temporary word value        */
uint32_t      W[80];             /* Word sequence               */
uint32_t      A, B, C, D, E, F, K;     /* Word buffers                */

void PrintRest(uint8_t data[], int size){
    int i;
    printf("\t");
    for (i=0; i<size; i++){
        printf("%02x", data[i]);
    }
    printf("\n");
}
 
