#bin/sh
./restore.sh

rm *.txt

nvgen ~/gadget/sha1.c -L=0 --
nvgen ~/gadget/sha1.c -L=1 --
nvgen ~/gadget/sha1.c -L=2 --
nvgen ~/gadget/sec.c -L=2 --
nvgen ~/gadget/utils.c -L=2 --
nvgen ~/gadget/nvobridge.c -L=9 --

ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk 
