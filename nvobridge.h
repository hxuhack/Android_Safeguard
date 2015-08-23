#ifndef _NVO_BRIDGE_H_
#define _NVO_BRIDGE_H_

#include "sec.h"
#include "sha1.h"
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <unistd.h>
#include <assert.h>
#include <stdio.h>
#include <stdint.h> 

int BridgeCall(char* ,int);

#endif
