#ifndef _NVO_BRIDGE_H_
#define _NVO_BRIDGE_H_

#include <sys/socket.h>
#include <unistd.h>
#include <stdio.h>
#include <stdint.h> 
#include <string> 
#include "sec_utils.h"
#include "sha1.h"

using namespace std;

int BridgeCall(const char* ,int);

#endif
