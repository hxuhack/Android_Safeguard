#bin/sh

./restore.sh

#rm *.txt

#nvgen ~/gadget/sha1.cpp -L=9 --
#nvgen ~/gadget/sha1.cpp -L=1 --
#nvgen ~/gadget/sec.cpp -L=1 --
#nvgen ~/gadget/utils.cpp -L=1 --
#nvgen ~/gadget/nvobridge.cpp -L=0 --

ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android_exec.mk NDK_APPLICATION_MK=./Application.mk 
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android_so.mk NDK_APPLICATION_MK=./Application.mk 

rm -rf obj
rm *.h
rm *.cpp
