; ModuleID = 'sec_basis.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%"class.std::basic_fstream" = type { %"class.std::basic_iostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%union.pthread_mutex_t = type { %"struct.(anonymous union)::__pthread_mutex_s" }
%"struct.(anonymous union)::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

$__clang_call_terminate = comdat any

$_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_ = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_ = comdat any

@.str = private unnamed_addr constant [9 x i8] c"/sbin/su\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/system/bin/su\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/system/xbin/su\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"/data/local/xbin/su\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"popen %s error\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"getprop | grep brand\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"getprop\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"/system/framework/arm/boot.oat\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"/data/dalvik-cache/arm/system@framework@boot.art\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"anon_inode:dmabuf\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"/data/dalvik-cache/arm/data@app@com.trap-2@base.apk@classes.dex\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"/data/app/com.trap-1/base.apk\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"/data/app/com.trap-2/base.apk\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"[sigpage]\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"[vectors]\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"[stack]\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"(d\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"[stack:\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"/system/\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"/data/dalvik-cache/\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"libnvo.so\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"/proc/%d/maps\00", align 1

; Function Attrs: uwtable
define i32 @_Z12check_sufilev() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %paths = alloca [4 x %"class.std::basic_string"], align 16
  %arrayinit.endOfInit = alloca %"class.std::basic_string"*
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  %ref.tmp5 = alloca %"class.std::allocator", align 1
  %ref.tmp9 = alloca %"class.std::allocator", align 1
  %cleanup.isactive = alloca i1
  %__range = alloca [4 x %"class.std::basic_string"]*, align 8
  %__begin = alloca %"class.std::basic_string"*, align 8
  %__end = alloca %"class.std::basic_string"*, align 8
  %path = alloca %"class.std::basic_string", align 8
  %tmp_file = alloca %"class.std::basic_fstream", align 8
  %cleanup.dest.slot = alloca i32
  %arrayinit.begin = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %paths, i64 0, i64 0
  store i1 true, i1* %cleanup.isactive
  store %"class.std::basic_string"* %arrayinit.begin, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.begin, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %arrayinit.element = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.begin, i64 1
  store %"class.std::basic_string"* %arrayinit.element, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp1) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp1)
          to label %invoke.cont.3 unwind label %lpad.2

invoke.cont.3:                                    ; preds = %invoke.cont
  %arrayinit.element4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element, i64 1
  store %"class.std::basic_string"* %arrayinit.element4, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp5) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp5)
          to label %invoke.cont.7 unwind label %lpad.6

invoke.cont.7:                                    ; preds = %invoke.cont.3
  %arrayinit.element8 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element4, i64 1
  store %"class.std::basic_string"* %arrayinit.element8, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp9) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp9)
          to label %invoke.cont.11 unwind label %lpad.10

invoke.cont.11:                                   ; preds = %invoke.cont.7
  store i1 false, i1* %cleanup.isactive
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp9) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp5) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp1) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #4
  store [4 x %"class.std::basic_string"]* %paths, [4 x %"class.std::basic_string"]** %__range, align 8
  %0 = load [4 x %"class.std::basic_string"]*, [4 x %"class.std::basic_string"]** %__range, align 8
  %arraydecay = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %0, i32 0, i32 0
  store %"class.std::basic_string"* %arraydecay, %"class.std::basic_string"** %__begin, align 8
  %1 = load [4 x %"class.std::basic_string"]*, [4 x %"class.std::basic_string"]** %__range, align 8
  %arraydecay17 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %1, i32 0, i32 0
  %add.ptr = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydecay17, i64 4
  store %"class.std::basic_string"* %add.ptr, %"class.std::basic_string"** %__end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont.11
  %2 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__begin, align 8
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__end, align 8
  %cmp = icmp ne %"class.std::basic_string"* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__begin, align 8
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %path, %"class.std::basic_string"* dereferenceable(8) %4)
          to label %invoke.cont.19 unwind label %lpad.18

invoke.cont.19:                                   ; preds = %for.body
  invoke void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_fstream"* %tmp_file)
          to label %invoke.cont.21 unwind label %lpad.20

invoke.cont.21:                                   ; preds = %invoke.cont.19
  %call = invoke i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* %path)
          to label %invoke.cont.23 unwind label %lpad.22

invoke.cont.23:                                   ; preds = %invoke.cont.21
  invoke void @_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_fstream"* %tmp_file, i8* %call, i32 8)
          to label %invoke.cont.24 unwind label %lpad.22

invoke.cont.24:                                   ; preds = %invoke.cont.23
  %5 = bitcast %"class.std::basic_fstream"* %tmp_file to i8**
  %vtable = load i8*, i8** %5
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %6 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %6
  %7 = bitcast %"class.std::basic_fstream"* %tmp_file to i8*
  %add.ptr25 = getelementptr inbounds i8, i8* %7, i64 %vbase.offset
  %8 = bitcast i8* %add.ptr25 to %"class.std::basic_ios"*
  %call27 = invoke i8* @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv(%"class.std::basic_ios"* %8)
          to label %invoke.cont.26 unwind label %lpad.22

invoke.cont.26:                                   ; preds = %invoke.cont.24
  %tobool = icmp ne i8* %call27, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont.26
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

lpad:                                             ; preds = %entry
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot
  br label %ehcleanup.13

lpad.2:                                           ; preds = %invoke.cont
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot
  br label %ehcleanup.12

lpad.6:                                           ; preds = %invoke.cont.3
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot
  br label %ehcleanup

lpad.10:                                          ; preds = %invoke.cont.7
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %exn.slot
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp9) #4
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad.10, %lpad.6
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp5) #4
  br label %ehcleanup.12

ehcleanup.12:                                     ; preds = %ehcleanup, %lpad.2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp1) #4
  br label %ehcleanup.13

ehcleanup.13:                                     ; preds = %ehcleanup.12, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #4
  %cleanup.is_active = load i1, i1* %cleanup.isactive
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %ehcleanup.13
  %21 = load %"class.std::basic_string"*, %"class.std::basic_string"** %arrayinit.endOfInit
  %arraydestroy.isempty = icmp eq %"class.std::basic_string"* %arrayinit.begin, %21
  br i1 %arraydestroy.isempty, label %arraydestroy.done.16, label %arraydestroy.body

arraydestroy.body:                                ; preds = %invoke.cont.15, %cleanup.action
  %arraydestroy.elementPast = phi %"class.std::basic_string"* [ %21, %cleanup.action ], [ %arraydestroy.element, %invoke.cont.15 ]
  %arraydestroy.element = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydestroy.elementPast, i64 -1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %arraydestroy.element)
          to label %invoke.cont.15 unwind label %terminate.lpad

invoke.cont.15:                                   ; preds = %arraydestroy.body
  %arraydestroy.done = icmp eq %"class.std::basic_string"* %arraydestroy.element, %arrayinit.begin
  br i1 %arraydestroy.done, label %arraydestroy.done.16, label %arraydestroy.body

arraydestroy.done.16:                             ; preds = %invoke.cont.15, %cleanup.action
  br label %cleanup.done

cleanup.done:                                     ; preds = %arraydestroy.done.16, %ehcleanup.13
  br label %eh.resume

lpad.18:                                          ; preds = %cleanup.31, %for.body
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot
  br label %ehcleanup.53

lpad.20:                                          ; preds = %cleanup, %invoke.cont.19
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %exn.slot
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %ehselector.slot
  br label %ehcleanup.35

lpad.22:                                          ; preds = %invoke.cont.24, %invoke.cont.23, %invoke.cont.21
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %exn.slot
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %ehselector.slot
  invoke void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_fstream"* %tmp_file)
          to label %invoke.cont.30 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont.26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  invoke void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_fstream"* %tmp_file)
          to label %invoke.cont.28 unwind label %lpad.20

invoke.cont.28:                                   ; preds = %cleanup
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %invoke.cont.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.31

cleanup.31:                                       ; preds = %cleanup.cont, %invoke.cont.28
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %path)
          to label %invoke.cont.32 unwind label %lpad.18

invoke.cont.32:                                   ; preds = %cleanup.31
  %cleanup.dest.33 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.33, label %cleanup.37 [
    i32 0, label %cleanup.cont.34
  ]

cleanup.cont.34:                                  ; preds = %invoke.cont.32
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.34
  %31 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__begin, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %31, i32 1
  store %"class.std::basic_string"* %incdec.ptr, %"class.std::basic_string"** %__begin, align 8
  br label %for.cond

invoke.cont.30:                                   ; preds = %lpad.22
  br label %ehcleanup.35

ehcleanup.35:                                     ; preds = %invoke.cont.30, %lpad.20
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %path)
          to label %invoke.cont.36 unwind label %terminate.lpad

invoke.cont.36:                                   ; preds = %ehcleanup.35
  br label %ehcleanup.53

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %for.end, %invoke.cont.32
  %array.begin = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %paths, i32 0, i32 0
  %32 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %array.begin, i64 4
  br label %arraydestroy.body.38

arraydestroy.body.38:                             ; preds = %invoke.cont.42, %cleanup.37
  %arraydestroy.elementPast39 = phi %"class.std::basic_string"* [ %32, %cleanup.37 ], [ %arraydestroy.element40, %invoke.cont.42 ]
  %arraydestroy.element40 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydestroy.elementPast39, i64 -1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %arraydestroy.element40)
          to label %invoke.cont.42 unwind label %lpad.41

invoke.cont.42:                                   ; preds = %arraydestroy.body.38
  %arraydestroy.done51 = icmp eq %"class.std::basic_string"* %arraydestroy.element40, %array.begin
  br i1 %arraydestroy.done51, label %arraydestroy.done.52, label %arraydestroy.body.38

arraydestroy.done.52:                             ; preds = %invoke.cont.42
  %33 = load i32, i32* %retval
  ret i32 %33

lpad.41:                                          ; preds = %arraydestroy.body.38
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %exn.slot
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %ehselector.slot
  %arraydestroy.isempty44 = icmp eq %"class.std::basic_string"* %array.begin, %arraydestroy.element40
  br i1 %arraydestroy.isempty44, label %arraydestroy.done.50, label %arraydestroy.body.45

arraydestroy.body.45:                             ; preds = %invoke.cont.48, %lpad.41
  %arraydestroy.elementPast46 = phi %"class.std::basic_string"* [ %arraydestroy.element40, %lpad.41 ], [ %arraydestroy.element47, %invoke.cont.48 ]
  %arraydestroy.element47 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydestroy.elementPast46, i64 -1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %arraydestroy.element47)
          to label %invoke.cont.48 unwind label %terminate.lpad

invoke.cont.48:                                   ; preds = %arraydestroy.body.45
  %arraydestroy.done49 = icmp eq %"class.std::basic_string"* %arraydestroy.element47, %array.begin
  br i1 %arraydestroy.done49, label %arraydestroy.done.50, label %arraydestroy.body.45

arraydestroy.done.50:                             ; preds = %invoke.cont.48, %lpad.41
  br label %eh.resume

ehcleanup.53:                                     ; preds = %invoke.cont.36, %lpad.18
  %array.begin54 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %paths, i32 0, i32 0
  %37 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %array.begin54, i64 4
  br label %arraydestroy.body.55

arraydestroy.body.55:                             ; preds = %invoke.cont.58, %ehcleanup.53
  %arraydestroy.elementPast56 = phi %"class.std::basic_string"* [ %37, %ehcleanup.53 ], [ %arraydestroy.element57, %invoke.cont.58 ]
  %arraydestroy.element57 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydestroy.elementPast56, i64 -1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %arraydestroy.element57)
          to label %invoke.cont.58 unwind label %terminate.lpad

invoke.cont.58:                                   ; preds = %arraydestroy.body.55
  %arraydestroy.done59 = icmp eq %"class.std::basic_string"* %arraydestroy.element57, %array.begin54
  br i1 %arraydestroy.done59, label %arraydestroy.done.60, label %arraydestroy.body.55

arraydestroy.done.60:                             ; preds = %invoke.cont.58
  br label %eh.resume

eh.resume:                                        ; preds = %arraydestroy.done.60, %arraydestroy.done.50, %cleanup.done
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val.61 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val.61

terminate.lpad:                                   ; preds = %arraydestroy.body.55, %arraydestroy.body.45, %ehcleanup.35, %lpad.22, %arraydestroy.body
  %38 = landingpad { i8*, i32 }
          catch i8* null
  %39 = extractvalue { i8*, i32 } %38, 0
  call void @__clang_call_terminate(i8* %39) #8
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) #1

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator"* dereferenceable(1)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) #1

declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #2

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #3 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #4
  call void @_ZSt9terminatev() #8
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"* dereferenceable(8)) #2

declare void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_fstream"*) #2

declare void @_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_fstream"*, i8*, i32) #2

declare i8* @_ZNKSs5c_strEv(%"class.std::basic_string"*) #2

declare i8* @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv(%"class.std::basic_ios"*) #2

declare void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_fstream"*) #2

; Function Attrs: uwtable
define i32 @_Z12check_suexecv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %cmd = alloca %"class.std::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %buf_ps = alloca [1024 x i8], align 16
  %ps = alloca [1024 x i8], align 16
  %out = alloca %"class.std::basic_string", align 8
  %ptr = alloca %struct._IO_FILE*, align 8
  %ref.tmp10 = alloca %"class.std::basic_string", align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %cmd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #4
  %0 = bitcast [1024 x i8]* %ps to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1024, i32 16, i1 false)
  invoke void @_ZNSsC1Ev(%"class.std::basic_string"* %out)
          to label %invoke.cont.2 unwind label %lpad.1

invoke.cont.2:                                    ; preds = %invoke.cont
  %call = invoke i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* %cmd)
          to label %invoke.cont.4 unwind label %lpad.3

invoke.cont.4:                                    ; preds = %invoke.cont.2
  %call6 = invoke %struct._IO_FILE* @popen(i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
          to label %invoke.cont.5 unwind label %lpad.3

invoke.cont.5:                                    ; preds = %invoke.cont.4
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %ptr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ptr, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont.5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_ps, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %ptr, align 8
  %call8 = invoke i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %2)
          to label %invoke.cont.7 unwind label %lpad.3

invoke.cont.7:                                    ; preds = %while.cond
  %cmp9 = icmp ne i8* %call8, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont.7
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_ps, i32 0, i32 0
  invoke void @_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_(%"class.std::basic_string"* sret %ref.tmp10, %"class.std::basic_string"* dereferenceable(8) %out, i8* %arraydecay11)
          to label %invoke.cont.12 unwind label %lpad.3

invoke.cont.12:                                   ; preds = %while.body
  %call15 = invoke dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* %out, %"class.std::basic_string"* dereferenceable(8) %ref.tmp10)
          to label %invoke.cont.14 unwind label %lpad.13

invoke.cont.14:                                   ; preds = %invoke.cont.12
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %ref.tmp10)
          to label %invoke.cont.16 unwind label %lpad.3

invoke.cont.16:                                   ; preds = %invoke.cont.14
  %call19 = invoke i64 @_ZNKSs6lengthEv(%"class.std::basic_string"* %out)
          to label %invoke.cont.18 unwind label %lpad.3

invoke.cont.18:                                   ; preds = %invoke.cont.16
  %cmp20 = icmp ugt i64 %call19, 1024
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %invoke.cont.18
  br label %while.end

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #4
  br label %eh.resume

lpad.1:                                           ; preds = %if.end.27, %invoke.cont
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  br label %ehcleanup.30

lpad.3:                                           ; preds = %if.else, %while.end, %invoke.cont.16, %invoke.cont.14, %while.body, %while.cond, %invoke.cont.4, %invoke.cont.2
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot
  br label %ehcleanup

lpad.13:                                          ; preds = %invoke.cont.12
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %ref.tmp10)
          to label %invoke.cont.17 unwind label %terminate.lpad

invoke.cont.17:                                   ; preds = %lpad.13
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont.18
  br label %while.cond

while.end:                                        ; preds = %if.then.21, %invoke.cont.7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %ptr, align 8
  %call23 = invoke i32 @pclose(%struct._IO_FILE* %15)
          to label %invoke.cont.22 unwind label %lpad.3

invoke.cont.22:                                   ; preds = %while.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %ptr, align 8
  br label %if.end.27

if.else:                                          ; preds = %invoke.cont.5
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ps, i32 0, i32 0
  %call26 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay24)
          to label %invoke.cont.25 unwind label %lpad.3

invoke.cont.25:                                   ; preds = %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %invoke.cont.25, %invoke.cont.22
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %out)
          to label %invoke.cont.28 unwind label %lpad.1

invoke.cont.28:                                   ; preds = %if.end.27
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %cmd)
  ret i32 0

ehcleanup:                                        ; preds = %invoke.cont.17, %lpad.3
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %out)
          to label %invoke.cont.29 unwind label %terminate.lpad

invoke.cont.29:                                   ; preds = %ehcleanup
  br label %ehcleanup.30

ehcleanup.30:                                     ; preds = %invoke.cont.29, %lpad.1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %cmd)
          to label %invoke.cont.31 unwind label %terminate.lpad

invoke.cont.31:                                   ; preds = %ehcleanup.30
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont.31, %lpad
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val.32 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val.32

terminate.lpad:                                   ; preds = %ehcleanup.30, %ehcleanup, %lpad.13
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @__clang_call_terminate(i8* %17) #8
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @_ZNSsC1Ev(%"class.std::basic_string"*) #2

declare %struct._IO_FILE* @popen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"*, %"class.std::basic_string"* dereferenceable(8)) #2

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_(%"class.std::basic_string"* noalias sret %agg.result, %"class.std::basic_string"* dereferenceable(8) %__lhs, i8* %__rhs) #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__lhs.addr = alloca %"class.std::basic_string"*, align 8
  %__rhs.addr = alloca i8*, align 8
  %nrvo = alloca i1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::basic_string"* %__lhs, %"class.std::basic_string"** %__lhs.addr, align 8
  store i8* %__rhs, i8** %__rhs.addr, align 8
  store i1 false, i1* %nrvo
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__lhs.addr, align 8
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %agg.result, %"class.std::basic_string"* dereferenceable(8) %0)
  %1 = load i8*, i8** %__rhs.addr, align 8
  %call = invoke dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKc(%"class.std::basic_string"* %agg.result, i8* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i1 true, i1* %nrvo
  %nrvo.val = load i1, i1* %nrvo
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %agg.result)
          to label %invoke.cont.1 unwind label %terminate.lpad

nrvo.unused:                                      ; preds = %invoke.cont
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %invoke.cont
  ret void

invoke.cont.1:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont.1
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val.2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val.2

terminate.lpad:                                   ; preds = %lpad
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  call void @__clang_call_terminate(i8* %6) #8
  unreachable
}

declare i64 @_ZNKSs6lengthEv(%"class.std::basic_string"*) #2

declare i32 @pclose(%struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: uwtable
define void @_Z11get_devpropi(%"class.std::basic_string"* noalias sret %agg.result, i32 %index) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %index.addr = alloca i32, align 4
  %cmd = alloca %"class.std::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %buf_ps = alloca [1024 x i8], align 16
  %ps = alloca [1024 x i8], align 16
  %out = alloca %"class.std::basic_string", align 8
  %ptr = alloca %struct._IO_FILE*, align 8
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %nrvo = alloca i1
  store i32 %index, i32* %index.addr, align 4
  call void @_ZNSsC1Ev(%"class.std::basic_string"* %cmd)
  %0 = load i32, i32* %index.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %call = invoke dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* %cmd, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %sw.bb
  br label %sw.epilog

lpad:                                             ; preds = %nrvo.skipdtor, %sw.epilog, %sw.default, %sw.bb
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  br label %ehcleanup.37

sw.default:                                       ; preds = %entry
  %call2 = invoke dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* %cmd, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
          to label %invoke.cont.1 unwind label %lpad

invoke.cont.1:                                    ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %invoke.cont.1, %invoke.cont
  %4 = bitcast [1024 x i8]* %ps to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 1024, i32 16, i1 false)
  invoke void @_ZNSsC1Ev(%"class.std::basic_string"* %out)
          to label %invoke.cont.3 unwind label %lpad

invoke.cont.3:                                    ; preds = %sw.epilog
  %call6 = invoke i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* %cmd)
          to label %invoke.cont.5 unwind label %lpad.4

invoke.cont.5:                                    ; preds = %invoke.cont.3
  %call8 = invoke %struct._IO_FILE* @popen(i8* %call6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
          to label %invoke.cont.7 unwind label %lpad.4

invoke.cont.7:                                    ; preds = %invoke.cont.5
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %ptr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ptr, align 8
  %cmp = icmp ne %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont.7
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_ps, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ptr, align 8
  %call10 = invoke i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %6)
          to label %invoke.cont.9 unwind label %lpad.4

invoke.cont.9:                                    ; preds = %while.cond
  %cmp11 = icmp ne i8* %call10, null
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont.9
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf_ps, i32 0, i32 0
  invoke void @_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_(%"class.std::basic_string"* sret %ref.tmp, %"class.std::basic_string"* dereferenceable(8) %out, i8* %arraydecay12)
          to label %invoke.cont.13 unwind label %lpad.4

invoke.cont.13:                                   ; preds = %while.body
  %call16 = invoke dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* %out, %"class.std::basic_string"* dereferenceable(8) %ref.tmp)
          to label %invoke.cont.15 unwind label %lpad.14

invoke.cont.15:                                   ; preds = %invoke.cont.13
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %ref.tmp)
          to label %invoke.cont.17 unwind label %lpad.4

invoke.cont.17:                                   ; preds = %invoke.cont.15
  %call20 = invoke i64 @_ZNKSs6lengthEv(%"class.std::basic_string"* %out)
          to label %invoke.cont.19 unwind label %lpad.4

invoke.cont.19:                                   ; preds = %invoke.cont.17
  %cmp21 = icmp ugt i64 %call20, 1024
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %invoke.cont.19
  br label %while.end

lpad.4:                                           ; preds = %nrvo.unused, %invoke.cont.31, %invoke.cont.29, %if.end.28, %if.else, %while.end, %invoke.cont.17, %invoke.cont.15, %while.body, %while.cond, %invoke.cont.5, %invoke.cont.3
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot
  br label %ehcleanup

lpad.14:                                          ; preds = %invoke.cont.13
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %ref.tmp)
          to label %invoke.cont.18 unwind label %terminate.lpad

invoke.cont.18:                                   ; preds = %lpad.14
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont.19
  br label %while.cond

while.end:                                        ; preds = %if.then.22, %invoke.cont.9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %ptr, align 8
  %call24 = invoke i32 @pclose(%struct._IO_FILE* %13)
          to label %invoke.cont.23 unwind label %lpad.4

invoke.cont.23:                                   ; preds = %while.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %ptr, align 8
  br label %if.end.28

if.else:                                          ; preds = %invoke.cont.7
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ps, i32 0, i32 0
  %call27 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay25)
          to label %invoke.cont.26 unwind label %lpad.4

invoke.cont.26:                                   ; preds = %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %invoke.cont.26, %invoke.cont.23
  store i1 false, i1* %nrvo
  %call30 = invoke i64 @_ZNKSs5rfindEPKcm(%"class.std::basic_string"* %out, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 -1)
          to label %invoke.cont.29 unwind label %lpad.4

invoke.cont.29:                                   ; preds = %if.end.28
  %call32 = invoke i64 @_ZNKSs5rfindEPKcm(%"class.std::basic_string"* %out, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i64 -1)
          to label %invoke.cont.31 unwind label %lpad.4

invoke.cont.31:                                   ; preds = %invoke.cont.29
  invoke void @_ZNKSs6substrEmm(%"class.std::basic_string"* sret %agg.result, %"class.std::basic_string"* %out, i64 %call30, i64 %call32)
          to label %invoke.cont.33 unwind label %lpad.4

invoke.cont.33:                                   ; preds = %invoke.cont.31
  store i1 true, i1* %nrvo
  %nrvo.val = load i1, i1* %nrvo
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %invoke.cont.33
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %agg.result)
          to label %invoke.cont.34 unwind label %lpad.4

invoke.cont.34:                                   ; preds = %nrvo.unused
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %invoke.cont.34, %invoke.cont.33
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %out)
          to label %invoke.cont.35 unwind label %lpad

invoke.cont.35:                                   ; preds = %nrvo.skipdtor
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %cmd)
  ret void

ehcleanup:                                        ; preds = %invoke.cont.18, %lpad.4
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %out)
          to label %invoke.cont.36 unwind label %terminate.lpad

invoke.cont.36:                                   ; preds = %ehcleanup
  br label %ehcleanup.37

ehcleanup.37:                                     ; preds = %invoke.cont.36, %lpad
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %cmd)
          to label %invoke.cont.38 unwind label %terminate.lpad

invoke.cont.38:                                   ; preds = %ehcleanup.37
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont.38
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val.39 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val.39

terminate.lpad:                                   ; preds = %ehcleanup.37, %ehcleanup, %lpad.14
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #8
  unreachable
}

declare dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"*, i8*) #2

declare void @_ZNKSs6substrEmm(%"class.std::basic_string"* sret, %"class.std::basic_string"*, i64, i64) #2

declare i64 @_ZNKSs5rfindEPKcm(%"class.std::basic_string"*, i8*, i64) #2

; Function Attrs: uwtable
define i32 @_Z13check_genericv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %dev_brand = alloca %"class.std::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %cleanup.dest.slot = alloca i32
  call void @_Z11get_devpropi(%"class.std::basic_string"* sret %dev_brand, i32 1)
  %call = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_(%"class.std::basic_string"* dereferenceable(8) %dev_brand, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %dev_brand)
          to label %invoke.cont.1 unwind label %terminate.lpad

if.else:                                          ; preds = %invoke.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %dev_brand)
  %3 = load i32, i32* %retval
  ret i32 %3

invoke.cont.1:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont.1
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val.2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val.2

terminate.lpad:                                   ; preds = %lpad
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #8
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_(%"class.std::basic_string"* dereferenceable(8) %__lhs, i8* %__rhs) #5 comdat {
entry:
  %__lhs.addr = alloca %"class.std::basic_string"*, align 8
  %__rhs.addr = alloca i8*, align 8
  store %"class.std::basic_string"* %__lhs, %"class.std::basic_string"** %__lhs.addr, align 8
  store i8* %__rhs, i8** %__rhs.addr, align 8
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__lhs.addr, align 8
  %1 = load i8*, i8** %__rhs.addr, align 8
  %call = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %0, i8* %1)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define i32 @_Z11get_libinfoPcS_(i8* %line, i8* %libname) #6 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %libname.addr = alloca i8*, align 8
  %save_ptr = alloca i8*, align 8
  %item = alloca i8*, align 8
  %counter = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  store i8* %libname, i8** %libname.addr, align 8
  store i32 0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i8* @strtok_r(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8** %save_ptr) #4
  store i8* %call, i8** %item, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %item, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load i8*, i8** %libname.addr, align 8
  %4 = load i8*, i8** %item, align 8
  %call1 = call i64 @strlen(i8* %4) #9
  %add = add i64 %call1, 1
  %5 = load i8*, i8** %item, align 8
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %3, i64 %add, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %5) #4
  %6 = load i8*, i8** %save_ptr, align 8
  store i8* %6, i8** %line.addr, align 8
  %7 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %counter, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %8 = load i8*, i8** %libname.addr, align 8
  %call3 = call i64 @strlen(i8* %8) #9
  %sub = sub i64 %call3, 1
  %9 = load i8*, i8** %libname.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %sub
  %10 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 10
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %while.end
  %11 = load i8*, i8** %libname.addr, align 8
  %call8 = call i64 @strlen(i8* %11) #9
  %sub9 = sub i64 %call8, 1
  %12 = load i8*, i8** %libname.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %sub9
  store i8 0, i8* %arrayidx10, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %while.end
  %13 = load i32, i32* %counter, align 4
  %cmp12 = icmp slt i32 %13, 6
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.13
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare i8* @strtok_r(i8*, i8*, i8**) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: uwtable
define zeroext i1 @_Z7chkdictPc(i8* %libname) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i1, align 1
  %libname.addr = alloca i8*, align 8
  %libnames = alloca [9 x %"class.std::basic_string"], align 16
  %arrayinit.endOfInit = alloca %"class.std::basic_string"*
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  %ref.tmp5 = alloca %"class.std::allocator", align 1
  %ref.tmp9 = alloca %"class.std::allocator", align 1
  %ref.tmp13 = alloca %"class.std::allocator", align 1
  %ref.tmp17 = alloca %"class.std::allocator", align 1
  %ref.tmp21 = alloca %"class.std::allocator", align 1
  %ref.tmp25 = alloca %"class.std::allocator", align 1
  %ref.tmp29 = alloca %"class.std::allocator", align 1
  %cleanup.isactive = alloca i1
  %__range = alloca [9 x %"class.std::basic_string"]*, align 8
  %__begin = alloca %"class.std::basic_string"*, align 8
  %__end = alloca %"class.std::basic_string"*, align 8
  %item = alloca %"class.std::basic_string", align 8
  %cleanup.dest.slot = alloca i32
  store i8* %libname, i8** %libname.addr, align 8
  %arrayinit.begin = getelementptr inbounds [9 x %"class.std::basic_string"], [9 x %"class.std::basic_string"]* %libnames, i64 0, i64 0
  store i1 true, i1* %cleanup.isactive
  store %"class.std::basic_string"* %arrayinit.begin, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.begin, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %arrayinit.element = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.begin, i64 1
  store %"class.std::basic_string"* %arrayinit.element, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp1) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp1)
          to label %invoke.cont.3 unwind label %lpad.2

invoke.cont.3:                                    ; preds = %invoke.cont
  %arrayinit.element4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element, i64 1
  store %"class.std::basic_string"* %arrayinit.element4, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp5) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp5)
          to label %invoke.cont.7 unwind label %lpad.6

invoke.cont.7:                                    ; preds = %invoke.cont.3
  %arrayinit.element8 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element4, i64 1
  store %"class.std::basic_string"* %arrayinit.element8, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp9) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.17, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp9)
          to label %invoke.cont.11 unwind label %lpad.10

invoke.cont.11:                                   ; preds = %invoke.cont.7
  %arrayinit.element12 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element8, i64 1
  store %"class.std::basic_string"* %arrayinit.element12, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp13) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp13)
          to label %invoke.cont.15 unwind label %lpad.14

invoke.cont.15:                                   ; preds = %invoke.cont.11
  %arrayinit.element16 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element12, i64 1
  store %"class.std::basic_string"* %arrayinit.element16, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp17) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp17)
          to label %invoke.cont.19 unwind label %lpad.18

invoke.cont.19:                                   ; preds = %invoke.cont.15
  %arrayinit.element20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element16, i64 1
  store %"class.std::basic_string"* %arrayinit.element20, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp21) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp21)
          to label %invoke.cont.23 unwind label %lpad.22

invoke.cont.23:                                   ; preds = %invoke.cont.19
  %arrayinit.element24 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element20, i64 1
  store %"class.std::basic_string"* %arrayinit.element24, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp25) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp25)
          to label %invoke.cont.27 unwind label %lpad.26

invoke.cont.27:                                   ; preds = %invoke.cont.23
  %arrayinit.element28 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arrayinit.element24, i64 1
  store %"class.std::basic_string"* %arrayinit.element28, %"class.std::basic_string"** %arrayinit.endOfInit
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp29) #4
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %arrayinit.element28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp29)
          to label %invoke.cont.31 unwind label %lpad.30

invoke.cont.31:                                   ; preds = %invoke.cont.27
  store i1 false, i1* %cleanup.isactive
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp29) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp25) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp21) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp17) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp13) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp9) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp5) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp1) #4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #4
  store [9 x %"class.std::basic_string"]* %libnames, [9 x %"class.std::basic_string"]** %__range, align 8
  %0 = load [9 x %"class.std::basic_string"]*, [9 x %"class.std::basic_string"]** %__range, align 8
  %arraydecay = getelementptr inbounds [9 x %"class.std::basic_string"], [9 x %"class.std::basic_string"]* %0, i32 0, i32 0
  store %"class.std::basic_string"* %arraydecay, %"class.std::basic_string"** %__begin, align 8
  %1 = load [9 x %"class.std::basic_string"]*, [9 x %"class.std::basic_string"]** %__range, align 8
  %arraydecay42 = getelementptr inbounds [9 x %"class.std::basic_string"], [9 x %"class.std::basic_string"]* %1, i32 0, i32 0
  %add.ptr = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydecay42, i64 9
  store %"class.std::basic_string"* %add.ptr, %"class.std::basic_string"** %__end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont.31
  %2 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__begin, align 8
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__end, align 8
  %cmp = icmp ne %"class.std::basic_string"* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__begin, align 8
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %item, %"class.std::basic_string"* dereferenceable(8) %4)
          to label %invoke.cont.44 unwind label %lpad.43

invoke.cont.44:                                   ; preds = %for.body
  %5 = load i8*, i8** %libname.addr, align 8
  %call = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_(%"class.std::basic_string"* dereferenceable(8) %item, i8* %5)
          to label %invoke.cont.46 unwind label %lpad.45

invoke.cont.46:                                   ; preds = %invoke.cont.44
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont.46
  store i1 true, i1* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  br label %ehcleanup.38

lpad.2:                                           ; preds = %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot
  br label %ehcleanup.37

lpad.6:                                           ; preds = %invoke.cont.3
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot
  br label %ehcleanup.36

lpad.10:                                          ; preds = %invoke.cont.7
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot
  br label %ehcleanup.35

lpad.14:                                          ; preds = %invoke.cont.11
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %exn.slot
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %ehselector.slot
  br label %ehcleanup.34

lpad.18:                                          ; preds = %invoke.cont.15
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot
  br label %ehcleanup.33

lpad.22:                                          ; preds = %invoke.cont.19
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %exn.slot
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %ehselector.slot
  br label %ehcleanup.32

lpad.26:                                          ; preds = %invoke.cont.23
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot
  br label %ehcleanup

lpad.30:                                          ; preds = %invoke.cont.27
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %exn.slot
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp29) #4
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad.30, %lpad.26
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp25) #4
  br label %ehcleanup.32

ehcleanup.32:                                     ; preds = %ehcleanup, %lpad.22
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp21) #4
  br label %ehcleanup.33

ehcleanup.33:                                     ; preds = %ehcleanup.32, %lpad.18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp17) #4
  br label %ehcleanup.34

ehcleanup.34:                                     ; preds = %ehcleanup.33, %lpad.14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp13) #4
  br label %ehcleanup.35

ehcleanup.35:                                     ; preds = %ehcleanup.34, %lpad.10
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp9) #4
  br label %ehcleanup.36

ehcleanup.36:                                     ; preds = %ehcleanup.35, %lpad.6
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp5) #4
  br label %ehcleanup.37

ehcleanup.37:                                     ; preds = %ehcleanup.36, %lpad.2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp1) #4
  br label %ehcleanup.38

ehcleanup.38:                                     ; preds = %ehcleanup.37, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #4
  %cleanup.is_active = load i1, i1* %cleanup.isactive
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %ehcleanup.38
  %33 = load %"class.std::basic_string"*, %"class.std::basic_string"** %arrayinit.endOfInit
  %arraydestroy.isempty = icmp eq %"class.std::basic_string"* %arrayinit.begin, %33
  br i1 %arraydestroy.isempty, label %arraydestroy.done.41, label %arraydestroy.body

arraydestroy.body:                                ; preds = %invoke.cont.40, %cleanup.action
  %arraydestroy.elementPast = phi %"class.std::basic_string"* [ %33, %cleanup.action ], [ %arraydestroy.element, %invoke.cont.40 ]
  %arraydestroy.element = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydestroy.elementPast, i64 -1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %arraydestroy.element)
          to label %invoke.cont.40 unwind label %terminate.lpad

invoke.cont.40:                                   ; preds = %arraydestroy.body
  %arraydestroy.done = icmp eq %"class.std::basic_string"* %arraydestroy.element, %arrayinit.begin
  br i1 %arraydestroy.done, label %arraydestroy.done.41, label %arraydestroy.body

arraydestroy.done.41:                             ; preds = %invoke.cont.40, %cleanup.action
  br label %cleanup.done

cleanup.done:                                     ; preds = %arraydestroy.done.41, %ehcleanup.38
  br label %eh.resume

lpad.43:                                          ; preds = %cleanup, %for.body
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %exn.slot
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %ehselector.slot
  br label %ehcleanup.66

lpad.45:                                          ; preds = %invoke.cont.44
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %exn.slot
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %ehselector.slot
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %item)
          to label %invoke.cont.49 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %item)
          to label %invoke.cont.47 unwind label %lpad.43

invoke.cont.47:                                   ; preds = %cleanup
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %invoke.cont.47
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %40 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__begin, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %40, i32 1
  store %"class.std::basic_string"* %incdec.ptr, %"class.std::basic_string"** %__begin, align 8
  br label %for.cond

invoke.cont.49:                                   ; preds = %lpad.45
  br label %ehcleanup.66

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %for.end, %invoke.cont.47
  %array.begin = getelementptr inbounds [9 x %"class.std::basic_string"], [9 x %"class.std::basic_string"]* %libnames, i32 0, i32 0
  %41 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %array.begin, i64 9
  br label %arraydestroy.body.51

arraydestroy.body.51:                             ; preds = %invoke.cont.55, %cleanup.50
  %arraydestroy.elementPast52 = phi %"class.std::basic_string"* [ %41, %cleanup.50 ], [ %arraydestroy.element53, %invoke.cont.55 ]
  %arraydestroy.element53 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydestroy.elementPast52, i64 -1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %arraydestroy.element53)
          to label %invoke.cont.55 unwind label %lpad.54

invoke.cont.55:                                   ; preds = %arraydestroy.body.51
  %arraydestroy.done64 = icmp eq %"class.std::basic_string"* %arraydestroy.element53, %array.begin
  br i1 %arraydestroy.done64, label %arraydestroy.done.65, label %arraydestroy.body.51

arraydestroy.done.65:                             ; preds = %invoke.cont.55
  %42 = load i1, i1* %retval
  ret i1 %42

lpad.54:                                          ; preds = %arraydestroy.body.51
  %43 = landingpad { i8*, i32 }
          cleanup
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %exn.slot
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %ehselector.slot
  %arraydestroy.isempty57 = icmp eq %"class.std::basic_string"* %array.begin, %arraydestroy.element53
  br i1 %arraydestroy.isempty57, label %arraydestroy.done.63, label %arraydestroy.body.58

arraydestroy.body.58:                             ; preds = %invoke.cont.61, %lpad.54
  %arraydestroy.elementPast59 = phi %"class.std::basic_string"* [ %arraydestroy.element53, %lpad.54 ], [ %arraydestroy.element60, %invoke.cont.61 ]
  %arraydestroy.element60 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydestroy.elementPast59, i64 -1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %arraydestroy.element60)
          to label %invoke.cont.61 unwind label %terminate.lpad

invoke.cont.61:                                   ; preds = %arraydestroy.body.58
  %arraydestroy.done62 = icmp eq %"class.std::basic_string"* %arraydestroy.element60, %array.begin
  br i1 %arraydestroy.done62, label %arraydestroy.done.63, label %arraydestroy.body.58

arraydestroy.done.63:                             ; preds = %invoke.cont.61, %lpad.54
  br label %eh.resume

ehcleanup.66:                                     ; preds = %invoke.cont.49, %lpad.43
  %array.begin67 = getelementptr inbounds [9 x %"class.std::basic_string"], [9 x %"class.std::basic_string"]* %libnames, i32 0, i32 0
  %46 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %array.begin67, i64 9
  br label %arraydestroy.body.68

arraydestroy.body.68:                             ; preds = %invoke.cont.71, %ehcleanup.66
  %arraydestroy.elementPast69 = phi %"class.std::basic_string"* [ %46, %ehcleanup.66 ], [ %arraydestroy.element70, %invoke.cont.71 ]
  %arraydestroy.element70 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arraydestroy.elementPast69, i64 -1
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %arraydestroy.element70)
          to label %invoke.cont.71 unwind label %terminate.lpad

invoke.cont.71:                                   ; preds = %arraydestroy.body.68
  %arraydestroy.done72 = icmp eq %"class.std::basic_string"* %arraydestroy.element70, %array.begin67
  br i1 %arraydestroy.done72, label %arraydestroy.done.73, label %arraydestroy.body.68

arraydestroy.done.73:                             ; preds = %invoke.cont.71
  br label %eh.resume

eh.resume:                                        ; preds = %arraydestroy.done.73, %arraydestroy.done.63, %cleanup.done
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val.74 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val.74

terminate.lpad:                                   ; preds = %arraydestroy.body.68, %arraydestroy.body.58, %lpad.45, %arraydestroy.body
  %47 = landingpad { i8*, i32 }
          catch i8* null
  %48 = extractvalue { i8*, i32 } %47, 0
  call void @__clang_call_terminate(i8* %48) #8
  unreachable
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_Z10chkdeletedPc(i8* %libname) #6 {
entry:
  %retval = alloca i1, align 1
  %libname.addr = alloca i8*, align 8
  store i8* %libname, i8** %libname.addr, align 8
  %0 = load i8*, i8** %libname.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #9
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval
  ret i1 %1
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define zeroext i1 @_Z8chkstackPc(i8* %libname) #6 {
entry:
  %retval = alloca i1, align 1
  %libname.addr = alloca i8*, align 8
  store i8* %libname, i8** %libname.addr, align 8
  %0 = load i8*, i8** %libname.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #9
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval
  ret i1 %1
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_Z6chkdevPc(i8* %libname) #6 {
entry:
  %retval = alloca i1, align 1
  %libname.addr = alloca i8*, align 8
  store i8* %libname, i8** %libname.addr, align 8
  %0 = load i8*, i8** %libname.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #9
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval
  ret i1 %1
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_Z9chksystemPc(i8* %libname) #6 {
entry:
  %retval = alloca i1, align 1
  %libname.addr = alloca i8*, align 8
  store i8* %libname, i8** %libname.addr, align 8
  %0 = load i8*, i8** %libname.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #9
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval
  ret i1 %1
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_Z11chkdvmcachePc(i8* %libname) #6 {
entry:
  %retval = alloca i1, align 1
  %libname.addr = alloca i8*, align 8
  store i8* %libname, i8** %libname.addr, align 8
  %0 = load i8*, i8** %libname.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #9
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval
  ret i1 %1
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_Z7chkselfPc(i8* %libname) #6 {
entry:
  %retval = alloca i1, align 1
  %libname.addr = alloca i8*, align 8
  store i8* %libname, i8** %libname.addr, align 8
  %0 = load i8*, i8** %libname.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0)) #9
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval
  ret i1 %1
}

; Function Attrs: uwtable
define i32 @_Z8read_mapiPSs(i32 %pid, %"class.std::basic_string"* %message) #0 {
entry:
  %retval = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %message.addr = alloca %"class.std::basic_string"*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca [32 x i8], align 16
  %line = alloca [128 x i8], align 16
  %libname = alloca [64 x i8], align 16
  %counter = alloca i32, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store %"class.std::basic_string"* %message, %"class.std::basic_string"** %message.addr, align 8
  store i32 0, i32* %counter, align 4
  %0 = load i32, i32* %pid.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.44

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %filename, i32 0, i32 0
  %1 = load i32, i32* %pid.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 %1) #4
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %if.then.30, %if.then.11, %if.end
  %arraydecay4 = getelementptr inbounds [128 x i8], [128 x i8]* %line, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i8* @fgets(i8* %arraydecay4, i32 127, %struct._IO_FILE* %3)
  %cmp6 = icmp ne i8* %call5, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay7 = getelementptr inbounds [128 x i8], [128 x i8]* %line, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call9 = call i32 @_Z11get_libinfoPcS_(i8* %arraydecay7, i8* %arraydecay8)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body
  br label %while.cond

if.end.12:                                        ; preds = %while.body
  %arraydecay13 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call14 = call zeroext i1 @_Z10chkdeletedPc(i8* %arraydecay13)
  br i1 %call14, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %arraydecay15 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call16 = call zeroext i1 @_Z7chkselfPc(i8* %arraydecay15)
  br i1 %call16, label %if.then.30, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %arraydecay18 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call19 = call zeroext i1 @_Z8chkstackPc(i8* %arraydecay18)
  br i1 %call19, label %if.then.30, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %arraydecay21 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call22 = call zeroext i1 @_Z6chkdevPc(i8* %arraydecay21)
  br i1 %call22, label %if.then.30, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.20
  %arraydecay24 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call25 = call zeroext i1 @_Z9chksystemPc(i8* %arraydecay24)
  br i1 %call25, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.23
  %arraydecay27 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call28 = call zeroext i1 @_Z11chkdvmcachePc(i8* %arraydecay27)
  %conv = zext i1 %call28 to i32
  %cmp29 = icmp eq i32 %conv, 1
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false.23, %lor.lhs.false.20, %lor.lhs.false.17, %lor.lhs.false, %if.end.12
  br label %while.cond

if.end.31:                                        ; preds = %lor.lhs.false.26
  %arraydecay32 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call33 = call zeroext i1 @_Z7chkdictPc(i8* %arraydecay32)
  %conv34 = zext i1 %call33 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.31
  %4 = load i32, i32* %counter, align 4
  %cmp37 = icmp sgt i32 %4, 7
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.36
  br label %while.end

if.end.39:                                        ; preds = %if.then.36
  %5 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %"class.std::basic_string"*, %"class.std::basic_string"** %message.addr, align 8
  %arrayidx = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 %idxprom
  %arraydecay40 = getelementptr inbounds [64 x i8], [64 x i8]* %libname, i32 0, i32 0
  %call41 = call dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* %arrayidx, i8* %arraydecay40)
  %7 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.39, %if.end.31
  br label %while.cond

while.end:                                        ; preds = %if.then.38, %while.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call43 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %if.end.44

if.end.44:                                        ; preds = %while.end, %entry
  %9 = load i32, i32* %counter, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.3
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKc(%"class.std::basic_string"*, i8*) #2

declare i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"*, i8*) #2

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { nounwind }
attributes #5 = { inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 241673)"}
