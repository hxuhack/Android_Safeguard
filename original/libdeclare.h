#ifndef _LIBDECLARE_H_
#define _LIBDECLARE_H_

struct st_memlib{
    char* libname;
    int size;
};

typedef struct st_memlib t_memlib;

static  t_memlib libdict[] = {
	{"/system/framework/arm/boot.oat", 0}, 
	{"/data/dalvik-cache/arm/system@framework@boot.art", 0},
	{"anon_inode:dmabuf", 0},
	{"/data/dalvik-cache/arm/data@app@com.trap-2@base.apk@classes.dex", 0},
	{"/data/app/com.trap-1/base.apk", 0},
	{"/data/app/com.trap-2/base.apk", 0},
	{"[sigpage]", 0},
	{"[vectors]", 0},
	{"[stack]", 0}
};

int dictlength=9;

#endif
