LOCAL_PATH := $(call my-dir)
LOCAL_CPP_EXTENSION := .cpp

#include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := nvo 
LOCAL_LDLIBS	:= -L$(SYSROOT)/usr/lib -llog
LOCAL_C_INCLUDES += "/opt/android-ndk-r10e/sources/cxx-stl/llvm-libc++/libcxx/"
#LOCAL_C_INCLUDES +="/opt/lollipop/system/core/include/cutils/"
LOCAL_CFLAGS := -mllvm -sub -mllvm -fla -mllvm -bcf

LOCAL_SRC_FILES := utils.cpp sec_utils.cpp sec_basis.cpp sha1.cpp obf_bridge.cpp main.cpp
include $(BUILD_SHARED_LIBRARY)
