#bin/sh
cp original_sec.c sec.c
cp original_sha1.c sha1.c
nvogen sec.c sha1.c -L=2 --
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk 
