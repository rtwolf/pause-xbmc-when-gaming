REM Batch file that pauses XBMC so it doesn't use CPU like mad & launches the emulator with arguments.
REM Instructions:
REM 1. Download PsTools and extract into your Windows directory: http://technet.microsoft.com/en-us/sysinternals/bb896649
REM 2. Copy this batch file into the folder where the emulator is (e.g. in the Program Files folder)
REM 3. Change the file name to be the same as the application or executible (.exe file) you're trying to launch.
REM 4. ???
REM 5. Profit!

REM Created by RT Wolf out of frustration on Dec 18, 2013. github.com/rtwolf has more useful XBMC scripts
REM Based on this script by Angelscry: http://www.gwenael.org/forum/viewtopic.php?id=5

pssuspend "XBMC.exe"
cd "%~dp0"
%~n0.exe %*
pssuspend -r "XBMC.exe"