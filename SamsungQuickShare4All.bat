cd /d %~dp0
reg add "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v SystemProductName /t REG_SZ /d "NP950QDB-KA1US" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_1002&DEV_6798&SUBSYS_30001002&REV_00\4&f1d09f1&0&0010" /v HardwareID /t REG_MULTI_SZ /d "PCI\VEN_1002&DEV_6798&SUBSYS_30001002&REV_00\0PCI\VEN_1002&DEV_6798&SUBSYS_30001002\0PCI\VEN_1002&DEV_6798&CC_030000\0PCI\VEN_1002&DEV_6798&CC_0300" /f
if exist "DriverCheckBypass.reg" regedit /s "DriverCheckBypass.reg"
if not exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\SamsungQuickShare4All.bat" copy "SamsungQuickShare4All.bat" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
