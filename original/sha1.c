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

/* Local Function Prototyptes */
void SHA1PadMessage(SHA1Context *);
void SHA1ProcessMessageBlock(SHA1Context *);

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

int SHA1Result( SHA1Context *context,
                uint8_t Message_Digest[SHA1HashSize])
{
    int i;

    if (!context || !Message_Digest)
    {
        return shaNull;
    }

    if (context->Corrupted)
    {
        return context->Corrupted;
    }

    if (!context->Computed)
    {
        SHA1PadMessage(context);
        for(i=0; i<64; ++i)
        {
            /* message may be sensitive, clear it out */
            context->Message_Block[i] = 0;
        }
        context->Length_Low = 0;    /* and clear length */
        context->Length_High = 0;
        context->Computed = 1;
    }

    for(i = 0; i < SHA1HashSize; ++i)
    {
        Message_Digest[i] = context->Intermediate_Hash[i>>2]
                            >> 8 * ( 3 - ( i & 0x03 ) );
    }

    return shaSuccess;
}

int SHA1Input(    SHA1Context    *context,
                  const uint8_t  *message_array,
                  unsigned       length)
{
    if (!length)
    {
        return shaSuccess;
    }

    if (!context || !message_array)
    {
        return shaNull;
    }

    if (context->Computed)
    {
        context->Corrupted = shaStateError;
        return shaStateError;
    }

    if (context->Corrupted)
    {
         return context->Corrupted;
    }
    while(length-- && !context->Corrupted)
    {
    context->Message_Block[context->Message_Block_Index++] =
                    (*message_array & 0xFF);

    context->Length_Low += 8;
    if (context->Length_Low == 0)
    {
        context->Length_High++;
        if (context->Length_High == 0)
        {
            /* Message is too long */
            context->Corrupted = 1;
        }
    }

    if (context->Message_Block_Index == 64)
    {
        SHA1ProcessMessageBlock(context);
    }

    message_array++;
    }

    return shaSuccess;
}

int           t = 0;             /* Loop counter                */
uint32_t      temp;              /* Temporary word value        */
uint32_t      W[80];             /* Word sequence               */
uint32_t      A, B, C, D, E, F, K;     /* Word buffers                */


//
void nv_lo0(){ 
	F = B ^ C ^ D;
}
void nv_lo1(){
	F = B ^ C ^ D;
}
void nv_lo2(){
	F = (B & C) | ((~B) & D);
}
void nv_lo3(){
	F = (B & C) | (B & D) | (C & D);
}

void nv_sw(){
	    temp =  SHA1CircularShift(5,A) + F + E + W[t] + K; 
	    E = D;
        D = C;
        C = SHA1CircularShift(30,B);
        B = A;
        A = temp;
}

// the 'NVO' part
void NVO_MODULE(){
    //TO BE REWRITEN
uint8_t fgenes_raw[20] = {74,185,136,244,126,90,189,14,248,242,208,118,16,30,184,140,165,111,155,21};
uint8_t kgenes_raw[20] = {147,126,20,1,119,191,165,58,78,91,44,152,20,181,140,147,15,74,161,7};
genes80_t fgenes = BitstoGenes(fgenes_raw);
genes80_t kgenes = BitstoGenes(kgenes_raw);

    int t = 0;
    int tmpTime = time();
    while (t < 80) {
       switch (fgenes.genes[t]){
           case 0:
               nv_lo0();
               break;
           case 1:
               nv_lo1();
               break;
           case 2:
               nv_lo2();
               break;
           case 3:
               nv_lo3();
               break;
           default:
               break;
       }
       switch (kgenes.genes[t]){
           case 0:
               K = 0x5A827999;
               break;
           case 1:
               K = 0x6ED9EBA1;
               break;
           case 2:
               K = 0x8F1BBCDC;
               break;
           case 3:
               K = 0xCA62C1D6;
               break;
           default:
               break;
       }
       nv_sw();
       t++;
    }
}


void SHA1ProcessMessageBlock(SHA1Context *context)
{

    for(t = 0; t < 16; t++)
    {
        W[t] = context->Message_Block[t * 4] << 24;
        W[t] |= context->Message_Block[t * 4 + 1] << 16;
        W[t] |= context->Message_Block[t * 4 + 2] << 8;
        W[t] |= context->Message_Block[t * 4 + 3];
    }

    for(t = 16; t < 80; t++)
    {
       W[t] = SHA1CircularShift(1,W[t-3] ^ W[t-8] ^ W[t-14] ^ W[t-16]);
    }

    A = context->Intermediate_Hash[0];
    B = context->Intermediate_Hash[1];
    C = context->Intermediate_Hash[2];
    D = context->Intermediate_Hash[3];
    E = context->Intermediate_Hash[4];
	
    NVO_MODULE();

    context->Intermediate_Hash[0] += A;
    context->Intermediate_Hash[1] += B;
    context->Intermediate_Hash[2] += C;
    context->Intermediate_Hash[3] += D;
    context->Intermediate_Hash[4] += E;

    context->Message_Block_Index = 0;
}


void SHA1PadMessage(SHA1Context *context)
{
    if (context->Message_Block_Index > 55)
    {
        context->Message_Block[context->Message_Block_Index++] = 0x80;
        while(context->Message_Block_Index < 64)
        {
            context->Message_Block[context->Message_Block_Index++] = 0;
        }

        SHA1ProcessMessageBlock(context);

        while(context->Message_Block_Index < 56)
        {
            context->Message_Block[context->Message_Block_Index++] = 0;
        }
    }
    else
    {
        context->Message_Block[context->Message_Block_Index++] = 0x80;
        while(context->Message_Block_Index < 56)
        {
            context->Message_Block[context->Message_Block_Index++] = 0;
        }
    }

    context->Message_Block[56] = context->Length_High >> 24;
    context->Message_Block[57] = context->Length_High >> 16;
    context->Message_Block[58] = context->Length_High >> 8;
    context->Message_Block[59] = context->Length_High;
    context->Message_Block[60] = context->Length_Low >> 24;
    context->Message_Block[61] = context->Length_Low >> 16;
    context->Message_Block[62] = context->Length_Low >> 8;
    context->Message_Block[63] = context->Length_Low;

    SHA1ProcessMessageBlock(context);
}


int SHA1(char* testcase, uint8_t Message_Digest[SHA1HashSize])
{
    SHA1Context sha;
    int i, err;
    err = SHA1Reset(&sha);
    err = SHA1Input(&sha, (const unsigned char *) testcase, strlen(testcase));
    if (err)
    {
        fprintf(stderr, "SHA1Input Error %d.\n", err );
    }
    err = SHA1Result(&sha, Message_Digest);

    if (err)
    {
        fprintf(stderr, "SHA1Result Error %d, could not compute message digest.\n", err );
	return -1;
    }

    else
    {
	return 1;
    }     
}

void PrintRest(uint8_t data[], int size){
    int i;
    printf("\t");
    for (i=0; i<size; i++){
        printf("%02x", data[i]);
    }
    printf("\n");
}
