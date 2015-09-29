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
