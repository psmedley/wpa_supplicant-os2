@set LANG=en
@REM not necessary anymore cause default SET LIB=P:/usr/lib;U:/extras/lib/crypto.lib
@call envQT.cmd -NOANSI
@
@REM set shell after envQT - in envQT necessary to clear???
@SET MAKESHELL=P:/usr/bin/sh.exe
@REM make %2 %3 %4 %5 --debug
@make %1 %2 %3 %4 %5
@
@REM temporary for test
@replace wpa_supplicant.exe e:\_work\xwlan\trunk\release\. /u
@
@REM @call make -C %1/wpa_gui-qt4  %1 %2 %3 %4 %5 2>&1 | tee out2.log
