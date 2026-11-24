@REM "P:\usr\lib\qt4\bin\lrelease.exe"
@REM add to path
call envqt.cmd
@set V=1

@REM make --debug or -d for debug output
@REM m config <-- better not doing that

@REM SET LIB=P:/usr/lib;U:/extras/lib/ <--- not necessary for .rpm system

@REM set LANG=en  <-- for understandable gcc messages
@set LANG=en

@REM Use set V=1 for verbose output
@REM set V=1

make %1 %2 %3 %4 %5 2>&1 | tee out.log


@REM building wpa_qui is not in standard makefile
@REM
make -C wpa_gui-qt4  %1 %2 %3 %4 %5 2>&1 | tee out2.log

@REM
@REM Next copy all necessary files to \xwlan directory for easy testing. Not needed for build. 
@REM
@REM 20220227 AB, update for exceptq (.xqs) files, 
@REM          now use copy from 4os2 as standard replace is to dumb
@REM
@copy /U wpa_supplicant.exe e:\_work\xwlan\trunk\release\. /u
@copy /U wpa_supplicant.xqs e:\_work\xwlan\trunk\release\. /u
@copy /U wpa_supplicant.exe e:\_work\xwlan\trunk\debug\. /u
@copy /U wpa_supplicant.xqs e:\_work\xwlan\trunk\debug\. /u

