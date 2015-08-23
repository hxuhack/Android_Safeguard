#include "nvobridge.h"

int BridgeCall(char* msg, int socketid){

    uint8_t digest[SHA1HashSize];
    uint8_t memchk[MSG_SIZE][128];
    int i;

    SHA1(msg, digest);

    int numof_vialib = check_proc(memchk);
    
    uint8_t msg_to_server[SHA1HashSize + numof_vialib * 128];
    uint8_t* tmp_ptr = msg_to_server;

    uint8_t* hash_ptr = digest;

    for(i=0; i<SHA1HashSize; i++){
    	sprintf(msg_to_server+i*2, "%02x", hash_ptr[i]);
    }

    sprintf(msg_to_server+ SHA1HashSize*2, ";");
    tmp_ptr = tmp_ptr + SHA1HashSize*2 + 1;

	if(numof_vialib == 0){
		//__android_log_print(ANDROID_LOG_INFO, "NVO", "Integrity verified");
            char* msg = "int_ok";
	    snprintf(tmp_ptr, strlen(msg)+1, "%s", msg);
            tmp_ptr = tmp_ptr + strlen(msg)+1;
    	}	
	for (i=0; i<numof_vialib; i++ ){
    	    snprintf(tmp_ptr, strlen(memchk[i])+1, "%s", memchk[i]);
            tmp_ptr = tmp_ptr + strlen(memchk[i])+1;
		//change the char '\0' to ';'
	    *(tmp_ptr - 1) = ';';
	}

    int msgsize = tmp_ptr - msg_to_server;

    //__android_log_print(ANDROID_LOG_INFO, "NVO", "msg_to_server: %s", msg_to_server);
    send(socketid, msg_to_server, msgsize , 0);

    return 0;
}
