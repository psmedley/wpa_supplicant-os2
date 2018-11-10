@REM "P:\usr\lib\qt4\bin\lrelease.exe"
@REM add to path
call envqt.cmd

@REM make --debug or -d for debug output
@REM m config <-- better not doing that

@REM SET LIB=P:/usr/lib;U:/extras/lib/ <--- not necessary for .rpm system

@REM set LANG=en  <-- for understandable gcc messages
@set LANG=en

make %1 %2 %3 %4 %5 2>&1 | tee out.log


@REM building wpa_qui is not in standard makefile
@REM
make -C wpa_gui-qt4  %1 %2 %3 %4 %5 2>&1 | tee out2.log

@REM temporary for test
copy wpa_supplicant.exe e:\_work\xwlan\trunk\release\.
copy wpa_supplicant.exe e:\_work\xwlan\trunk\debug\.
