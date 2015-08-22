#bin/sh

nvgen ~/gadget/sec.c ~/gadget/sha1.c -L=2 --
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk 
