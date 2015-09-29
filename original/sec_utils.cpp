#include "sec_utils.h"

int check_root(){
    int result = check_sufile();
    return result;
}

int check_proc(string out[])
{
    pid_t pid = getpid();
    int size = read_map(pid, out);
    return size;
}
/*
Return 0 if real device
Return 1 if emulator
*/
int check_emulator(){
    if (check_generic()){
        return 1;
    } 
}
