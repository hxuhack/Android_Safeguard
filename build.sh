#bin/sh

./restore.sh

#rm *.txt

cp original/sec_utils.h sec_utils.h
cp original/sec_utils.cpp sec_utils.cpp
cp original/sec_basis.h sec_basis.h
cp original/sec_basis.cpp sec_basis.cpp
cp original/sha1.cpp sha1.cpp
cp original/sha1.h sha1.h
cp original/utils.cpp utils.cpp
cp original/utils.h utils.h
cp original/obf_bridge.cpp obf_bridge.cpp
cp original/obf_bridge.h obf_bridge.h
cp original/main.cpp main.cpp

if [ -n "$1" ];
then
#    obot ~/gadget/sha1.cpp -O=9 --
    obot ~/gadget/sha1.cpp ~/gadget/sec_basis.cpp ~/gadget/sec_utils.cpp ~/gadget/utils.cpp ~/gadget/obf_bridge.cpp -O=1 --
fi

ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android_exec.mk NDK_APPLICATION_MK=./Application.mk 
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android_so.mk NDK_APPLICATION_MK=./Application.mk 

rm -rf obj
rm *.h
rm *.cpp
