#include "sec.h"
#include "sha1.h"
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <unistd.h>
#include "android/jni.h"
#include "android/android/log.h"
#include <assert.h>

static int socketid;

JNIEXPORT jint JNICALL native_socketconnect(
                       JNIEnv *env, jobject thiz,
                       jstring hostname, 
		       jint port){
    struct sockaddr_in pin;
    struct hostent *nlp_host;

    const char *str_hostname = (*env)->GetStringUTFChars(env,hostname,0);
    res_init();
    if ((nlp_host=gethostbyname(str_hostname))==NULL){
	__android_log_print(ANDROID_LOG_INFO, "NVO", "Resolve Error:%s", str_hostname);
	return -1;
    }
 
 
    bzero(&pin,sizeof(pin));
    pin.sin_family=AF_INET;                 
    pin.sin_addr.s_addr=htonl(INADDR_ANY);  
    pin.sin_addr.s_addr=((struct in_addr *)(nlp_host->h_addr))->s_addr;
    pin.sin_port=htons(port);
 
    socketid=socket(AF_INET,SOCK_STREAM,0);
 
    if (connect(socketid,(struct sockaddr*)&pin,sizeof(pin))==-1){
        __android_log_print(ANDROID_LOG_INFO, "NVO", "Connect Error!");
	return -1;
    }
    return socketid;
    
}


JNIEXPORT jint JNICALL native_secrequest(
                        JNIEnv *env, jobject thiz,
                        jstring msg){

    uint8_t digest[SHA1HashSize];
    uint8_t memchk[MSG_SIZE][128];
    int i;

    const char *str = (*env)->GetStringUTFChars(env,msg,0);
    SHA1(str, digest);

    int numof_vialib = check_proc(memchk);
    
    uint8_t msg_to_server[SHA1HashSize + numof_vialib * 128];
    uint8_t* tmp_ptr = msg_to_server;

    uint8_t* hash_ptr = digest;

    for(i=0; i<SHA1HashSize; i++){
    	sprintf(msg_to_server+i*2, "%02x", hash_ptr[i]);
    }

    sprintf(msg_to_server+ SHA1HashSize*2, ";");
    tmp_ptr = tmp_ptr + SHA1HashSize*2 + 1;

	if(numof_vialib == 0)
		__android_log_print(ANDROID_LOG_INFO, "NVO", "Integrity verified");
    		
	for (i=0; i<numof_vialib; i++ ){
		snprintf(tmp_ptr, strlen(memchk[i])+1, "%s", memchk[i]);
                tmp_ptr = tmp_ptr + strlen(memchk[i])+1;
		//change the char '\0' to ';'
		*(tmp_ptr - 1) = ';';
	}

    int msgsize = tmp_ptr - msg_to_server;

    __android_log_print(ANDROID_LOG_INFO, "NVO", "msg_to_server: %s", msg_to_server);
    send(socketid, msg_to_server, msgsize , 0);

    return 0;
}