#include "nvobridge.h"

int BridgeCall(const char* msg, int socketid){

    uint8_t digest[SHA1HashSize];
    string memchk[MSG_SIZE];
    string msg_to_server;
    int i;

    SHA1(msg, digest);

    int numof_vialib = check_proc(memchk);
    
    msg_to_server = (char *) digest;
    for (i=0; i<numof_vialib; i++ ){
        msg_to_server = msg_to_server + memchk[i];
    }

    //__android_log_print(ANDROID_LOG_INFO, "NVO", "msg_to_server: %s", msg_to_server);
    send(socketid, msg_to_server.c_str(), msg_to_server.length(), 0);

    return 0;
}
