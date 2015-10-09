#include "sec_basis.h"

int check_sufile(){
    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "entring function: check_sufile");
   // string paths[] = { "/system/app/Superuser.apk", "/sbin/su", "/system/bin/su",                
                              //"/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", 
                              //"/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su" };
    string paths[] = {"/sbin/su", "/system/bin/su","/system/xbin/su", "/data/local/xbin/su"};

    for (string path : paths) {
        fstream tmp_file;
        tmp_file.open(path,ios::in);
        if (tmp_file) 
            //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "check_sufile: true");
            return 1;
    }

    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "check_sufile: flase");
    return 0;
}

int check_suexec(){
    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "entring function: check_suexec");
    string cmd = "su";
    char buf_ps[1024];
    char ps[1024]={0};
    string out;

    FILE *ptr = popen(cmd.c_str(),"r");
    if(ptr!=NULL)
    {
        while(fgets(buf_ps, 1024, ptr)!=NULL)
        {
            out = out + buf_ps;
            if(out.length()>1024)
                break;
        }
        pclose(ptr);
        ptr = NULL;
    }
    else
    {
        printf("popen %s error\n", ps);
    }
    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "out:%s",out.c_str());
    return 0;
}

/*
[gsm.version.baseband]: [G900VVRU2BOE1]
[gsm.version.ril-impl]: [Samsung RIL v3.0]
[net.knoxscep.version]: [2.0.1]
[net.knoxsso.version]: [2.1.1]
[net.knoxvpn.version]: [2.2.0]
[persist.service.bdroid.version]: [4.1]
[ro.board.platform]: [msm8974]
[ro.boot.hardware]: [qcom]
[ro.boot.serialno]: [xxxxxx]
[ro.build.version.all_codenames]: [REL]
[ro.build.version.codename]: [REL]
[ro.build.version.incremental]: [G900VVRU2BOE1]
[ro.build.version.release]: [5.0]
[ro.build.version.sdk]: [21]
[ro.build.version.sdl]: [2101]
[ro.com.google.gmsversion]: [5.0_r2]
[ro.config.timaversion]: [3.0]
[ro.hardware]: [qcom]
[ro.opengles.version]: [196108]
[ro.product.brand]: [Verizon]
[ro.product.manufacturer]: [samsung]
[ro.product.model]: [SM-G900V]
*/
string get_devprop(int index){

    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "entring function: get_devprop");
    string cmd;
    switch (index){
        case 1:
	    cmd = "getprop | grep brand";
	    break;
        default:    
	    cmd = "getprop";
            //grep model|version.sdk|manufacturer|hardware|platform|revision|serialno|product.name|brand";
	    break;
    }

    //Exec in a new thread
    char buf_ps[1024];
    char ps[1024]={0};
    string out;

    FILE *ptr = popen(cmd.c_str(),"r");
    if(ptr!=NULL)
    {
        while(fgets(buf_ps, 1024, ptr)!=NULL)
        {
            out = out + buf_ps;
            if(out.length()>1024)
                break;
        }
        pclose(ptr);
        ptr = NULL;
    }
    else
    {
        printf("popen %s error\n", ps);
    }
    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "our: %s", out.c_str());
    string rest = out.substr(out.rfind("["),out.rfind("]"));
    return rest;
}

int check_generic(){
    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "entring function: check_generic");
    string dev_brand = get_devprop(1);//brand
    //__android_log_print(ANDROID_LOG_INFO, "NVO_DEBUG", "dev_brand: %s", dev_brand.c_str());

    if (dev_brand == "generic") {
          return 1;//"YES, I am an emulator"
    } else {
          return 0;
          //"NO, I am NOT an emulator"
    }
}

int get_libinfo(char* line, char* libname)
{
    //__android_log_print(ANDROID_LOG_INFO, "NVO", "get_libinfo: line: %s", line);
    char* save_ptr;
    char* item;
    //pthread_mutex_t counter_lock = PTHREAD_MUTEX_INITIALIZER;  
    int counter = 0;

    while (item = strtok_r(line, " ", &save_ptr)){
        //__android_log_print(ANDROID_LOG_INFO, "NVO", "item: %s", item);
        //__android_log_print(ANDROID_LOG_INFO, "NVO", "save_ptr: %s", save_ptr);
        if((int) item[0] == 10)
               break;
	snprintf(libname, strlen(item)+1, "%s", item);
	line = save_ptr;
	//__syn_fetch_and_add(&counter, 1);
        counter++;
    } 
	if (libname[strlen(libname)-1] == '\n')
		libname[strlen(libname)-1] = '\0';
	if(counter < 6){	
		//__android_log_print(ANDROID_LOG_INFO, "NVO", "get_libinfo: return -1");
    		return -1;
	} 
	else {
		//__android_log_print(ANDROID_LOG_INFO, "NVO", "get_libinfo: return 0");
		return 0;
	}
    
}

bool chkdict(char* libname){

    string libnames[] = {"/system/framework/arm/boot.oat", 
	"/data/dalvik-cache/arm/system@framework@boot.art",
	"anon_inode:dmabuf",
	"/data/dalvik-cache/arm/data@app@com.trap-2@base.apk@classes.dex",
	"/data/app/com.trap-1/base.apk",
	"/data/app/com.trap-2/base.apk",
	"[sigpage]",
	"[vectors]",
	"[stack]"};

    for (string item : libnames) {

	if(item == libname) {
	    return true;
        }
    }
    return false;
}

bool chkdeleted(char* libname){
	//should be (deleted), the word maybe breaked into two lines;
    if(strstr(libname, "(d"))
    	return true;
    return false;
}

bool chkstack(char* libname){
    if(strstr(libname, "[stack:"))
    	return true;
    return false;
}

bool chkdev(char* libname){
    if(strstr(libname, "/dev/"))
    	return true;
    return false;
}
bool chksystem(char* libname){
    if(strstr(libname, "/system/"))
    	return true;
    return false;
}

bool chkdvmcache(char* libname){
    if(strstr(libname, "/data/dalvik-cache/"))
    	return true;
    return false;
}
bool chkself(char* libname){
    if(strstr(libname, "libnvo.so"))
    	return true;
    return false;
}

int read_map(pid_t pid, string message[])
{
    FILE *fp;
    char filename[32];
    char line[128];
    char libname[64];
    int counter=0;

    if (pid > 0) {
	sprintf(filename, "/proc/%d/maps", pid);
	fp = fopen(filename, "r");
	if (!fp) 
            return -1;

        while(fgets(line, 127, fp) != NULL){
   	    //__android_log_print(ANDROID_LOG_INFO, "NVO", "line: %s", line);
            if(get_libinfo(line, libname) == -1)
		continue;
            if(chkdeleted(libname) 
		|| chkself(libname)
		|| chkstack(libname) 
		|| chkdev(libname) 
		|| chksystem(libname) 
		|| chkdvmcache(libname) == true)
		continue;

	    if(chkdict(libname) == false){
		 //snprintf packs the string with '\0', hence the size should be strlen + 1
		//__android_log_print(ANDROID_LOG_INFO, "NVO", "libname: %s", libname);
           	 if(counter > MSG_SIZE - 1)
	         	break;
            	message[counter]= libname;
		//__android_log_print(ANDROID_LOG_INFO, "NVO", "message[%d]: %s", counter,message[counter]);
		counter++;
	    }
        }

	fclose(fp);
    }
	//__android_log_print(ANDROID_LOG_INFO, "NVO", "EXIT read_map");
    return counter;
}
