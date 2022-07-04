@ECHO OFF
cd C:\Users\ctoffoletto\Desktop
mkdir test
mkdir prova
echo hackerato > hack.log
move hack.log test
calc.exe
notepad.exe
(goto) 2>nul & del "%~f0"