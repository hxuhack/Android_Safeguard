#include "obf_bridge.h"
#include "/opt/android-ndk-r10e/platforms/android-21/arch-arm/usr/include/jni.h"

extern "C" {

JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_traceme( JNIEnv *env, jobject thiz){
    return jni_traceme();
}

JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_chkroot( JNIEnv *env, jobject thiz){
    return jni_check_root();
}

JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_chkemulator( JNIEnv *env, jobject thiz){
    return check_emulator();
}

JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_socketconnect(
                       JNIEnv *env, jobject thiz,
                       jstring hostname, 
		       jint port){

    const char *str_hostname = env->GetStringUTFChars(hostname, 0);
    return jni_socket_connect(str_hostname, port);
}


JNIEXPORT jint JNICALL Java_edu_nvo_lib_jni_secrequest(
                        JNIEnv *env, jobject thiz,
                        jstring jmsg,
			jint socketid){

    const char *msg = env->GetStringUTFChars(jmsg, 0);
    jni_socket_msg(socketid, msg);
}

int main(int argc, char *argv[]){
    int opt;
    while((opt=getopt(argc,argv,"reti"))!=-1){
        switch(opt){
	    case 'r':
	        //check root
                jni_check_root();
	        break;
            case 'e':
                //detect emulator
                jni_check_emulator();
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
