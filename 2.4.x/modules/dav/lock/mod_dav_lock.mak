# Microsoft Developer Studio Generated NMAKE File, Based on mod_dav_lock.dsp
!IF "$(CFG)" == ""
CFG=mod_dav_lock - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_dav_lock - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_dav_lock - Win32 Release" && "$(CFG)" != "mod_dav_lock - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_dav_lock.mak" CFG="mod_dav_lock - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_dav_lock - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_dav_lock - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_dav_lock - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_dav_lock.so"

!ELSE 

ALL : "mod_dav - Win32 Release" "libhttpd - Win32 Release" "libaprutil - Win32 Release" "libapr - Win32 Release" "$(OUTDIR)\mod_dav_lock.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libapr - Win32 ReleaseCLEAN" "libaprutil - Win32 ReleaseCLEAN" "libhttpd - Win32 ReleaseCLEAN" "mod_dav - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\locks.obj"
	-@erase "$(INTDIR)\mod_dav_lock.obj"
	-@erase "$(INTDIR)\mod_dav_lock.res"
	-@erase "$(INTDIR)\mod_dav_lock_src.idb"
	-@erase "$(INTDIR)\mod_dav_lock_src.pdb"
	-@erase "$(OUTDIR)\mod_dav_lock.exp"
	-@erase "$(OUTDIR)\mod_dav_lock.lib"
	-@erase "$(OUTDIR)\mod_dav_lock.pdb"
	-@erase "$(OUTDIR)\mod_dav_lock.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../../../include" /I "../../../srclib/apr/include" /I "../../../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_dav_lock_src" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_dav_lock.res" /i "../../../include" /i "../../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_dav_lock.so" /d LONG_NAME="dav_lock_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_dav_lock.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib mswsock.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_dav_lock.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_dav_lock.so" /implib:"$(OUTDIR)\mod_dav_lock.lib" /base:@..\..\..\os\win32\BaseAddr.ref,mod_dav_lock.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\locks.obj" \
	"$(INTDIR)\mod_dav_lock.obj" \
	"$(INTDIR)\mod_dav_lock.res" \
	"..\..\..\srclib\apr\Release\libapr-1.lib" \
	"..\..\..\srclib\apr-util\Release\libaprutil-1.lib" \
	"..\..\..\Release\libhttpd.lib" \
	"..\main\Release\mod_dav.lib"

"$(OUTDIR)\mod_dav_lock.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_dav_lock.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "mod_dav - Win32 Release" "libhttpd - Win32 Release" "libaprutil - Win32 Release" "libapr - Win32 Release" "$(OUTDIR)\mod_dav_lock.so"
   if exist .\Release\mod_dav_lock.so.manifest mt.exe -manifest .\Release\mod_dav_lock.so.manifest -outputresource:.\Release\mod_dav_lock.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_dav_lock - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_dav_lock.so"

!ELSE 

ALL : "mod_dav - Win32 Debug" "libhttpd - Win32 Debug" "libaprutil - Win32 Debug" "libapr - Win32 Debug" "$(OUTDIR)\mod_dav_lock.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libapr - Win32 DebugCLEAN" "libaprutil - Win32 DebugCLEAN" "libhttpd - Win32 DebugCLEAN" "mod_dav - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\locks.obj"
	-@erase "$(INTDIR)\mod_dav_lock.obj"
	-@erase "$(INTDIR)\mod_dav_lock.res"
	-@erase "$(INTDIR)\mod_dav_lock_src.idb"
	-@erase "$(INTDIR)\mod_dav_lock_src.pdb"
	-@erase "$(OUTDIR)\mod_dav_lock.exp"
	-@erase "$(OUTDIR)\mod_dav_lock.lib"
	-@erase "$(OUTDIR)\mod_dav_lock.pdb"
	-@erase "$(OUTDIR)\mod_dav_lock.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../../../include" /I "../../../srclib/apr/include" /I "../../../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_dav_lock_src" /FD /EHsc /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_dav_lock.res" /i "../../../include" /i "../../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_dav_lock.so" /d LONG_NAME="dav_lock_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_dav_lock.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib mswsock.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_dav_lock.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_dav_lock.so" /implib:"$(OUTDIR)\mod_dav_lock.lib" /base:@..\..\..\os\win32\BaseAddr.ref,mod_dav_lock.so 
LINK32_OBJS= \
	"$(INTDIR)\locks.obj" \
	"$(INTDIR)\mod_dav_lock.obj" \
	"$(INTDIR)\mod_dav_lock.res" \
	"..\..\..\srclib\apr\Debug\libapr-1.lib" \
	"..\..\..\srclib\apr-util\Debug\libaprutil-1.lib" \
	"..\..\..\Release\libhttpd.lib" \
	"..\main\Debug\mod_dav.lib"

"$(OUTDIR)\mod_dav_lock.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_dav_lock.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "mod_dav - Win32 Debug" "libhttpd - Win32 Debug" "libaprutil - Win32 Debug" "libapr - Win32 Debug" "$(OUTDIR)\mod_dav_lock.so"
   if exist .\Debug\mod_dav_lock.so.manifest mt.exe -manifest .\Debug\mod_dav_lock.so.manifest -outputresource:.\Debug\mod_dav_lock.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_dav_lock.dep")
!INCLUDE "mod_dav_lock.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_dav_lock.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_dav_lock - Win32 Release" || "$(CFG)" == "mod_dav_lock - Win32 Debug"
SOURCE=.\locks.c

"$(INTDIR)\locks.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\mod_dav_lock.c

"$(INTDIR)\mod_dav_lock.obj" : $(SOURCE) "$(INTDIR)"


!IF  "$(CFG)" == "mod_dav_lock - Win32 Release"

"libapr - Win32 Release" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Release" 
   cd "..\..\modules\dav\lock"

"libapr - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Release" RECURSE=1 CLEAN 
   cd "..\..\modules\dav\lock"

!ELSEIF  "$(CFG)" == "mod_dav_lock - Win32 Debug"

"libapr - Win32 Debug" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Debug" 
   cd "..\..\modules\dav\lock"

"libapr - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\..\modules\dav\lock"

!ENDIF 

!IF  "$(CFG)" == "mod_dav_lock - Win32 Release"

"libaprutil - Win32 Release" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Release" 
   cd "..\..\modules\dav\lock"

"libaprutil - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Release" RECURSE=1 CLEAN 
   cd "..\..\modules\dav\lock"

!ELSEIF  "$(CFG)" == "mod_dav_lock - Win32 Debug"

"libaprutil - Win32 Debug" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Debug" 
   cd "..\..\modules\dav\lock"

"libaprutil - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\..\modules\dav\lock"

!ENDIF 

!IF  "$(CFG)" == "mod_dav_lock - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Release" 
   cd ".\modules\dav\lock"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\dav\lock"

!ELSEIF  "$(CFG)" == "mod_dav_lock - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Debug" 
   cd ".\modules\dav\lock"

"libhttpd - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\dav\lock"

!ENDIF 

!IF  "$(CFG)" == "mod_dav_lock - Win32 Release"

"mod_dav - Win32 Release" : 
   cd "$(SRCROOT)\modules\dav\main"
   $(MAKE) /$(MAKEFLAGS) /F ".\mod_dav.mak" CFG="mod_dav - Win32 Release" 
   cd "..\lock"

"mod_dav - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)\modules\dav\main"
   $(MAKE) /$(MAKEFLAGS) /F ".\mod_dav.mak" CFG="mod_dav - Win32 Release" RECURSE=1 CLEAN 
   cd "..\lock"

!ELSEIF  "$(CFG)" == "mod_dav_lock - Win32 Debug"

"mod_dav - Win32 Debug" : 
   cd "$(SRCROOT)\modules\dav\main"
   $(MAKE) /$(MAKEFLAGS) /F ".\mod_dav.mak" CFG="mod_dav - Win32 Debug" 
   cd "..\lock"

"mod_dav - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)\modules\dav\main"
   $(MAKE) /$(MAKEFLAGS) /F ".\mod_dav.mak" CFG="mod_dav - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\lock"

!ENDIF 

SOURCE=..\..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_dav_lock - Win32 Release"


"$(INTDIR)\mod_dav_lock.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_dav_lock.res" /i "../../../include" /i "../../../srclib/apr/include" /i "$(SRCROOT)\build\win32" /d "NDEBUG" /d BIN_NAME="mod_dav_lock.so" /d LONG_NAME="dav_lock_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_dav_lock - Win32 Debug"


"$(INTDIR)\mod_dav_lock.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_dav_lock.res" /i "../../../include" /i "../../../srclib/apr/include" /i "$(SRCROOT)\build\win32" /d "_DEBUG" /d BIN_NAME="mod_dav_lock.so" /d LONG_NAME="dav_lock_module for Apache" $(SOURCE)


!ENDIF 


!ENDIF 

