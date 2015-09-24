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
void AIBQPPFKUCCNKOPORSWLGUSXASWEQUF(SHA1Context *);
void SEJITYNESRIHCWWSQPODVJWULQTRINZ(SHA1Context *);

int EBWNVIAKWCTRHVBJAHSIGAECHNRINGS(SHA1Context *context)
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

int WYEFCFQVFEHWBRSJCUIWFKUUUFALGPZ( SHA1Context *context,
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
        AIBQPPFKUCCNKOPORSWLGUSXASWEQUF(context);
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

int TJQJEBJRXOMRVJUGJCYSKAWNHLGRAMM(    SHA1Context    *context,
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
        SEJITYNESRIHCWWSQPODVJWULQTRINZ(context);
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
void CTILNIATBUDIYCHQSWGVTRTOEJHWRWX(){
	F = B ^ C ^ D;
}
void UPFHENJZQDDBBFITXGAUZROPYZYUTUT(){ 
	F = B ^ C ^ D;
}
void NMYWSNHSGLVJOCTIBZIVABLSZLQVENO(){
	F = (B & C) | ((~B) & D);
}
void TZORTEYLKJIVYKOINPSLRTWJVJASNNH(){
	F = (B & C) | (B & D) | (C & D);
}

void IOXZHBYVNJDKJQARDPJQJFPUCYUUOJD(){
	    temp =  SHA1CircularShift(5,A) + F + E + W[t] + K; 
	    E = D;
        D = C;
        C = SHA1CircularShift(30,B);
        B = A;
        A = temp;
}

// the 'NVO' part
void WZBWJEWEUFJEPZFIFWSVFZMABLWVZIB(){
    //TO BE REWRITEN
uint8_t fgenes_raw[20] = {15,111,155,44,16,83,66,92,142,118,172,179,81,93,141,64,218,111,225,97};;
uint8_t kgenes_raw[20] = {197,239,109,143,132,46,220,75,38,236,78,54,92,233,98,108,60,164,200,203};;
genes80_t fgenes = CLANEMPTCXSTIJADDDGUMWFQFXXCYVZ(fgenes_raw);
genes80_t kgenes = CLANEMPTCXSTIJADDDGUMWFQFXXCYVZ(kgenes_raw);

    int t = 0;
    int tmpTime = time();
    while (t < 80) {
       switch (fgenes.genes[t]){
           case 0:
               CTILNIATBUDIYCHQSWGVTRTOEJHWRWX();
               break;
           case 1:
               UPFHENJZQDDBBFITXGAUZROPYZYUTUT();
               break;
           case 2:
               NMYWSNHSGLVJOCTIBZIVABLSZLQVENO();
               break;
           case 3:
               TZORTEYLKJIVYKOINPSLRTWJVJASNNH();
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
       IOXZHBYVNJDKJQARDPJQJFPUCYUUOJD();
       t++;
    }
}


void SEJITYNESRIHCWWSQPODVJWULQTRINZ(SHA1Context *context)
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
	
    WZBWJEWEUFJEPZFIFWSVFZMABLWVZIB();

    context->Intermediate_Hash[0] += A;
    context->Intermediate_Hash[1] += B;
    context->Intermediate_Hash[2] += C;
    context->Intermediate_Hash[3] += D;
    context->Intermediate_Hash[4] += E;

    context->Message_Block_Index = 0;
}


void AIBQPPFKUCCNKOPORSWLGUSXASWEQUF(SHA1Context *context)
{
    if (context->Message_Block_Index > 55)
    {
        context->Message_Block[context->Message_Block_Index++] = 0x80;
        while(context->Message_Block_Index < 64)
        {
            context->Message_Block[context->Message_Block_Index++] = 0;
        }

        SEJITYNESRIHCWWSQPODVJWULQTRINZ(context);

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

    SEJITYNESRIHCWWSQPODVJWULQTRINZ(context);
}


int ENEJRLBPQIWOJPHVUBDQINLEJQHVYWW(char* testcase, uint8_t Message_Digest[SHA1HashSize])
{
    SHA1Context sha;
    int i, err;
    err = EBWNVIAKWCTRHVBJAHSIGAECHNRINGS(&sha);
    err = TJQJEBJRXOMRVJUGJCYSKAWNHLGRAMM(&sha, (const unsigned char *) testcase, strlen(testcase));
    if (err)
    {
        fprintf(stderr, "SHA1Input Error %d.\n", err );
    }
    err = WYEFCFQVFEHWBRSJCUIWFKUUUFALGPZ(&sha, Message_Digest);

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

void VJCTSIPWCVGHMHMUMIOKQPWQQJOOIYP(uint8_t data[], int size){
    int i;
    printf("\t");
    for (i=0; i<size; i++){
        printf("%02x", data[i]);
    }
    printf("\n");
}
