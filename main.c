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
    const char *str = (*env)->GetStringUTFChars(env,msg,0);
    BridgeCall(str);
    return 0;
}