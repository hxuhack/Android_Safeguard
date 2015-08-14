#bin/sh
cp original/sec.c sec.c
cp original/sec.h sec.h
cp original/sha1.c sha1.c
cp original/sha1.h sha1.h

nvogen ~/gadget/sec.c ~/gadget/sha1.c -L=2 --
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk 
