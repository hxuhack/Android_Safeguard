#ifndef _SEC_BASIS_H_
#define _SEC_BASIS_H_

#include <stdio.h>
#include <stdint.h> 
#include <unistd.h>
#include <pthread.h>
#include <string>
#include <string.h>
#include <fstream>
#include "/opt/android-ndk-r10e/platforms/android-21/arch-arm/usr/include/android/log.h"

#define false 0  
#define true  1  
#define MSG_SIZE 8

using namespace std;

int check_sufile();
int check_suexec();
int check_generic();
int read_map(pid_t, string[]);

#endif
