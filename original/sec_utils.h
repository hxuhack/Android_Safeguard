#ifndef _SEC_UTILS_H_
#define _SEC_UTILS_H_

#pragma once

#include <stdio.h>
#include <stdint.h> 
#include <unistd.h>
#include <pthread.h>
#include <string>
#include <fstream>
#include "sec_basis.h"
#include "libdeclare.h"

#define false 0  
#define true  1  
#define MSG_SIZE 8

using namespace std;

int check_proc(string[]);
int check_root();

#endif
