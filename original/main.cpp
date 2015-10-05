#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <netdb.h>
#include <unistd.h>
#include "/opt/android-ndk-r10e/platforms/android-21/arch-arm/usr/include/jni.h"
#include "/opt/android-ndk-r10e/platforms/android-21/arch-arm/usr/include/android/log.h"
#include <assert.h>
#include <sys/ptrace.h>
#include <resolv.h>
#include "sec_utils.h"
#include "sha1.h"

extern "C" {
static int socketid;

JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_traceme( JNIEnv *env, jobject thiz){
    int result = ptrace(PTRACE_TRACEME,0 ,0 ,0);
    if(result != 0){
        exit(0);
    }
    return result;
}

JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_chkroot( JNIEnv *env, jobject thiz){
    int result = check_root();
    return result;
}

JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_chkemulator( JNIEnv *env, jobject thiz){
    int result = check_emulator();
    return result;
}

JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_socketconnect(
                       JNIEnv *env, jobject thiz,
                       jstring hostname, 
		       jint port){
    struct sockaddr_in pin;
    struct hostent *nlp_host;

    const char *str_hostname = env->GetStringUTFChars(hostname, 0);
    //res_init();

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


JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_secrequest(
                        JNIEnv *env, jobject thiz,
                        jstring msg){

    const char *msg = env->GetStringUTFChars(msg, 0);

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

int main(int argc, char *argv[]){
    int opt;
    while((opt=getopt(argc,argv,"reti"))!=-1){
        switch(opt){
	    case 'r':
	        //check root
                check_root();
	        break;
            case 'e':
                //detect emulator
                check_emulator();
	        break;
            case 't':
                //traceme
	        break;

            case 'i':
                //check integrity
	        break;
            default:
                break;
        }
    }
}
//end of extern 'c'
}
