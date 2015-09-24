#bin/sh
./restore.sh

#rm *.txt

#nvgen ~/gadget/sha1.cpp -L=0 --
#nvgen ~/gadget/sha1.cpp -L=1 --
#nvgen ~/gadget/sha1.cpp -L=2 --
#nvgen ~/gadget/sec.cpp -L=2 --
#nvgen ~/gadget/utils.cpp -L=2 --
#nvgen ~/gadget/nvobridge.cpp -L=9 --

ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk 
