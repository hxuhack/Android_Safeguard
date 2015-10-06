#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <netdb.h>
#include <unistd.h>
#include <assert.h>
#include <sys/ptrace.h>
#include <resolv.h>
#include "/opt/android-ndk-r10e/platforms/android-21/arch-arm/usr/include/android/log.h"
#include "sec_utils.h"

int jni_traceme();
int jni_check_root();
int jni_check_emulator();
int jni_socket_connect(const char*, int ); 
int jni_socket_msg(int, const char* );
