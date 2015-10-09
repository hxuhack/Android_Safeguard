#include "obf_bridge.h"
#include "sha1.h"

int jni_traceme(){
    int result = ptrace(PTRACE_TRACEME,0 ,0 ,0);
    if(result != 0){
        exit(0);
    }
    return result;
}

int jni_check_root(){
    return check_root();
}

int jni_check_emulator(){
    return check_emulator();
}

int jni_socket_connect(const char* hostname, int port){

    struct sockaddr_in pin;
    struct hostent *nlp_host;

    if ((nlp_host=gethostbyname(hostname))==NULL){
	//__android_log_print(ANDROID_LOG_INFO, "NVO", "Resolve Error:%s", hostname);
	return -1;
    }
 
    bzero(&pin,sizeof(pin));
    pin.sin_family=AF_INET;                 
    pin.sin_addr.s_addr=htonl(INADDR_ANY);  
    pin.sin_addr.s_addr=((struct in_addr *)(nlp_host->h_addr))->s_addr;
    pin.sin_port=htons(port);
 
    int socketid=socket(AF_INET,SOCK_STREAM,0);
 
    if (connect(socketid,(struct sockaddr*)&pin,sizeof(pin))==-1){
        //__android_log_print(ANDROID_LOG_INFO, "NVO", "Connect Error!");
	return -1;
    }
    return socketid;
}


int jni_socket_msg(int socketid, const char* msg){

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
