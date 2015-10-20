#include "sec_utils.h"

int check_root(){
    //if(check_sufile()||check_suexec()){
    if(check_sufile()){
        //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "check_root: positive");
        return 1;
    }
    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "check_emulator: negtive");
    return 0;
}

/*
Return 0 if real device
Return 1 if emulator
*/
int check_emulator(){
    if (check_generic()){
        //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "check_emulator: positive");
        return 1;
    } 
    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "check_emulator: negtive");
    return 0;
}

int check_proc(string output[])
{
    pid_t pid = getpid();
    int size = read_map(pid, output);
    return size;
}
