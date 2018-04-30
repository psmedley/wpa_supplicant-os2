@REM
@REM This script copies all necessary files to ..\..\wpa_supplicant_ship directory and zip it all
@REM together for distribution
@REM
@REM
@REM
@REM This script may use 4os2 extensions. Not tested with plain cmd.exe.
@REM
@REM 20180423 AB, initial
@REM
@REM

@IF %1 == clean del /SQYX ..\..\wpa_supplicant_ship\*

@if NOT DIREXIST ..\..\wpa_supplicant_ship                          ( md ..\..\wpa_supplicant_ship )

@copy /U .\*.exe                         ..\..\wpa_supplicant_ship\.
@copy /U .\wpa_supplicant_template.conf  ..\..\wpa_supplicant_ship\.
@copy /U .\wpa_supplicant_template.conf  ..\..\wpa_supplicant_ship\wpa_supplicant.conf

@copy /U .\*.hlp                         ..\..\wpa_supplicant_ship\.
@copy /U .\*.inf                         ..\..\wpa_supplicant_ship\.

@copy /U .\README                        ..\..\wpa_supplicant_ship\.
@copy /U .\README.OS2                    ..\..\wpa_supplicant_ship\.

@copy /U .\wp.cmd                        ..\..\wpa_supplicant_ship\.

@copy /U .\wpa_gui-qt4\*.exe             ..\..\wpa_supplicant_ship\.

set zipname=%_YEAR%%_MONTH%%_DAY%_wpa_supplicant.zip
IF %_MONTH% LT 10 set zipname=%@INSERT[4,0,%zipname%]
IF %_DAY% LT 10 set zipname=%@INSERT[6,0,%zipname%]

zip -j ..\..\wpa_supplicant_ship\%zipname% ..\..\wpa_supplicant_ship\*



