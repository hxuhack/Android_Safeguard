LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := nvo 
LOCAL_LDLIBS	:= -L$(SYSROOT)/usr/lib -llog
#LOCAL_C_INCLUDES+="/opt/lollipop/system/core/include/cutils/"
LOCAL_CFLAGS	:= -DDEBUG -O0
LOCAL_CFLAGS += -DHAVE_SYS_UIO_H
LOCAL_SRC_FILES := sec.c sha1.c main.c 
include $(BUILD_SHARED_LIBRARY)
