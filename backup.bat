@ECHO off
SET server_IP=192.168.1.13
SET server_NVR_IP=192.168.1.178
SET server_plex_IP=192.168.1.200
set start_date=%date:~4,2%-%date:~7,2%-%date:~10,4%
REM https://www.exactfile.com/downloads/
set tmp_file="C:\Users\%USERNAME%\Desktop\tmp.txt"
set results_file="C:\Users\%USERNAME%\Desktop\results_%start_date%.txt"

echo 1.) Run synology hyper backup >																								%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo 2.) Create backup of FWF-61E >																									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo -------------------------Server Backup Program------------------------ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo This program will backup the following shared directory(s) on server %server_IP% >												%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo -Backups          -Homes          -Main Drive >																				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo -Music            -Photo          -Software >																					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo -Video            -Web            -TV Shows 2 >																				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo -Movies 2         -4k Movies >																									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo.  >																															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo The Following shared directory(s) on server %server_NVR_IP% >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo -Main Drive       -Video            -Web >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo.  >																															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo The following shared directory(s) on server %server_plex_IP% >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo -Web >																															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
:choice1

ECHO What is the drive letter for Server2 IP %server_IP% Volume 1 and Volume 2 backup destination drive? >							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
set /P drive_letter=Drive letter [A-Z]=
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%	

if /I "%drive_letter%" EQU "a" set DRIVE=A:
if /I "%drive_letter%" EQU "b" set DRIVE=B:
if /I "%drive_letter%" EQU "c" set DRIVE=C:
if /I "%drive_letter%" EQU "d" set DRIVE=D:
if /I "%drive_letter%" EQU "e" set DRIVE=E:
if /I "%drive_letter%" EQU "f" set DRIVE=F:
if /I "%drive_letter%" EQU "g" set DRIVE=G:
if /I "%drive_letter%" EQU "h" set DRIVE=H:
if /I "%drive_letter%" EQU "i" set DRIVE=I:
if /I "%drive_letter%" EQU "j" set DRIVE=J:
if /I "%drive_letter%" EQU "k" set DRIVE=K:
if /I "%drive_letter%" EQU "l" set DRIVE=L:
if /I "%drive_letter%" EQU "m" set DRIVE=M:
if /I "%drive_letter%" EQU "n" set DRIVE=N:
if /I "%drive_letter%" EQU "o" set DRIVE=O:
if /I "%drive_letter%" EQU "p" set DRIVE=P:
if /I "%drive_letter%" EQU "q" set DRIVE=Q:
if /I "%drive_letter%" EQU "r" set DRIVE=R:
if /I "%drive_letter%" EQU "s" set DRIVE=S:
if /I "%drive_letter%" EQU "t" set DRIVE=T:
if /I "%drive_letter%" EQU "u" set DRIVE=U:
if /I "%drive_letter%" EQU "v" set DRIVE=V:
if /I "%drive_letter%" EQU "w" set DRIVE=W:
if /I "%drive_letter%" EQU "x" set DRIVE=X:
if /I "%drive_letter%" EQU "y" set DRIVE=Y:
if /I "%drive_letter%" EQU "z" set DRIVE=Z:

ECHO What is the drive letter for Server_NVR IP %server_NVR_IP% and Server-PLEX IP %server_plex_IP% backup destination drive? >		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
set /P drive_letter=Drive letter [A-Z]=
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

if /I "%drive_letter%" EQU "a" set DRIVE3=A:
if /I "%drive_letter%" EQU "b" set DRIVE3=B:
if /I "%drive_letter%" EQU "c" set DRIVE3=C:
if /I "%drive_letter%" EQU "d" set DRIVE3=D:
if /I "%drive_letter%" EQU "e" set DRIVE3=E:
if /I "%drive_letter%" EQU "f" set DRIVE3=F:
if /I "%drive_letter%" EQU "g" set DRIVE3=G:
if /I "%drive_letter%" EQU "h" set DRIVE3=H:
if /I "%drive_letter%" EQU "i" set DRIVE3=I:
if /I "%drive_letter%" EQU "j" set DRIVE3=J:
if /I "%drive_letter%" EQU "k" set DRIVE3=K:
if /I "%drive_letter%" EQU "l" set DRIVE3=L:
if /I "%drive_letter%" EQU "m" set DRIVE3=M:
if /I "%drive_letter%" EQU "n" set DRIVE3=N:
if /I "%drive_letter%" EQU "o" set DRIVE3=O:
if /I "%drive_letter%" EQU "p" set DRIVE3=P:
if /I "%drive_letter%" EQU "q" set DRIVE3=Q:
if /I "%drive_letter%" EQU "r" set DRIVE3=R:
if /I "%drive_letter%" EQU "s" set DRIVE3=S:
if /I "%drive_letter%" EQU "t" set DRIVE3=T:
if /I "%drive_letter%" EQU "u" set DRIVE3=U:
if /I "%drive_letter%" EQU "v" set DRIVE3=V:
if /I "%drive_letter%" EQU "w" set DRIVE3=W:
if /I "%drive_letter%" EQU "x" set DRIVE3=X:
if /I "%drive_letter%" EQU "y" set DRIVE3=Y:
if /I "%drive_letter%" EQU "z" set DRIVE3=Z:



:choice2

cls
echo The destination drive for Server2 Volume 1 and Volume 2 has been set to %DRIVE% >												%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo The destination drive for Server_NVR and Server-Plex has been set to %DRIVE3% >												%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo.>																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo What task(s) would you like to perform >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo 1.) Perform File Verification With ExactFile >																					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo 2.) Perform Backup >																											%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo 3.) Correct Drive Letter(s) >																									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo 4.) Exit >																														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
set /P c=Choose an option [1-4]?


if /I "%c%" EQU "1" goto :option_1
if /I "%c%" EQU "2" goto :option_2
if /I "%c%" EQU "3" goto :choice1
if /I "%c%" EQU "4" goto :pause_exit


:option_1

cls
title Performing file verification with ExactFile >																					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo You selected: Perform file verification with ExactFile >																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\md5" mkdir "%DRIVE%\md5" >																					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE3%\md5" mkdir "%DRIVE3%\md5" >																					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Generating CRC32 values for \\%server_IP%\Backups to file %DRIVE%\md5\Backups_%start_date%.md5 >				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\Backups_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\Backups" *.* >								%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\Backups >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\Backups_%start_date%.md5" -mt 32 -d "%DRIVE%\Backups" >															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\homes to file %DRIVE%\md5\homes_%start_date%.md5 >					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\homes_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\homes" *.* >									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\homes >																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\homes_%start_date%.md5" -mt 32 -d "%DRIVE%\homes" >																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\Main Drive to file %DRIVE%\md5\Main Drive_%start_date%.md5 >		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\Main Drive_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\Main Drive" *.* >						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\Main Drive >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\Main Drive_%start_date%.md5" -mt 32 -d "%DRIVE%\Main Drive" >													%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\music to file %DRIVE%\md5\music_%start_date%.md5 >					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\music_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\music" *.* >									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\music >																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\music_%start_date%.md5" -mt 32 -d "%DRIVE%\music" >																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\photo to file %DRIVE%\md5\photo_%start_date%.md5 >					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\photo_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\photo" *.* >									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\photo >																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\photo_%start_date%.md5" -mt 32 -d "%DRIVE%\photo" >																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\Software to file %DRIVE%\md5\Software_%start_date%.md5 >			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\Software_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\Software" *.* >							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\Software >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\Software_%start_date%.md5" -mt 32 -d "%DRIVE%\Software" >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\video to file %DRIVE%\md5\video_%start_date%.md5 >					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\video_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\video" *.* >									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\video >																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\video_%start_date%.md5" -mt 32 -d "%DRIVE%\video" >																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\web to file %DRIVE%\md5\web_%start_date%.md5 >						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\web_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\web" *.* >										%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\web >																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\web_%start_date%.md5" -mt 32 -d "%DRIVE%\web" >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\4k Movies to file %DRIVE%\md5\4k Movies_%start_date%.md5 >			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\4k Movies_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\4k Movies" *.* >							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\4k Movies >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\4k Movies_%start_date%.md5" -mt 32 -d "%DRIVE%\4k Movies" >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\TV Shows 2 to file %DRIVE%\md5\TV Shows 2_%start_date%.md5 >		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\TV Shows 2_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\TV Shows 2" *.* >						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\TV Shows 2 >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\TV Shows 2_%start_date%.md5" -mt 32 -d "%DRIVE%\TV Shows 2" >													%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_IP%\Movies 2 to file %DRIVE%\md5\Movies 2_%start_date%.md5 >			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE%\md5\Movies 2_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_IP%\Movies 2" *.* >							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE%\Movies 2 >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE%\md5\Movies 2_%start_date%.md5" -mt 32 -d "%DRIVE%\Movies 2" >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_NVR_IP%\video to file %DRIVE3%\md5\server_NVR_video_%start_date%.md5 >	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE3%\md5\server_NVR_video_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_NVR_IP%\video" *.* >					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE3%\server_nvr\video >															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE3%\md5\server_NVR_video_%start_date%.md5" -mt 32 -d "%DRIVE3%\server_nvr\video" >										%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_NVR_IP%\Main Drive to file %DRIVE3%\md5\server_NVR_main_drive_%start_date%.md5 >	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE3%\md5\server_NVR_main_drive_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_NVR_IP%\Main Drive" *.* >		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE3%\server_nvr\Main Drive >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE3%\md5\server_NVR_main_drive_%start_date%.md5" -mt 32 -d "%DRIVE3%\server_nvr\Main Drive" >							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_NVR_IP%\web to file %DRIVE3%\md5\server_NVR_web_%start_date%.md5 >		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE3%\md5\server_NVR_web_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_NVR_IP%\web" *.* >						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE3%\server_nvr\web >															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE3%\md5\server_NVR_web_%start_date%.md5" -mt 32 -d "%DRIVE3%\server_nvr\web" >											%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Generating CRC32 values for \\%server_plex_IP%\web to file %DRIVE3%\md5\server_plex_web_%start_date%.md5 >	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -r -otf "%DRIVE3%\md5\server_plex_web_%start_date%.md5" -omd5 -crc32 -mt 32 -d "\\%server_plex_IP%\web" *.* >					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo ........................................ >																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% .  Verifying files saved to %DRIVE3%\server_plex\web >															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
exf -c "%DRIVE3%\md5\server_plex_web_%start_date%.md5" -mt 32 -d "%DRIVE3%\server_plex\web" >										%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo _____________________________________________________________________ >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo.  >																															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Backup Verification Process Complete...... >																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
pause
goto :choice2


:option_2
cls
echo You selected: Perform a Backup to drives %DRIVE% and %DRIVE3% >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo Performing backup of Server2 Volume 1 to drive %DRIVE% >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
title Performing backup of Server2 Volume 1 to drive %DRIVE% >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Backing up Server2 'Backups' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\Backups" mkdir "%DRIVE%\Backups" >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=backups_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\Backups" /to="%DRIVE%\Backups" >													%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'homes' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\homes" mkdir "%DRIVE%\homes" >																																																				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=homes_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\homes" /to="%DRIVE%\homes" >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'Main Drive' Directory >																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\Main Drive" mkdir "%DRIVE%\Main Drive" >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=maindrive_dir /filelog /disk_mode=diff /speed=full /force_close /exclude="\video\" "\\%server_IP%\Main Drive" /to="%DRIVE%\Main Drive" >						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'music' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\music" mkdir "%DRIVE%\music" >																																																				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=music_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\music" /to="%DRIVE%\music" >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'photo' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\photo" mkdir "%DRIVE%\photo" >																																																				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=photo_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\photo" /to="%DRIVE%\photo" >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'Software' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\Software" mkdir "%DRIVE%\Software" >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=software_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\Software" /to="%DRIVE%\Software" >												%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'video' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\video" mkdir "%DRIVE%\video" >																																																				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=video_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\video" /to="%DRIVE%\video" >														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'web' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\web" mkdir "%DRIVE%\web" >																																																					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=web_dir /filelog /disk_mode=diff /speed=full /force_close /exclude="server_nvr_synoreport;server_plex_synoreport" "\\%server_IP%\web" /to="%DRIVE%\web" >		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time%  . Server2 Volume 1 backup complete.  >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%


echo Performing backup of Server2 Volume 2 to drive %DRIVE% >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
title Performing backup of Server2 Volume 2 to drive %DRIVE% >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Backing up Server2 '4k Movies' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\4k Movies" mkdir "%DRIVE%\4k Movies" >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=backups_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\4k Movies" /to="%DRIVE%\4k Movies" >												%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'TV Shows 2' Directory >																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\TV Shows 2" mkdir "%DRIVE%\TV Shows 2" >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=homes_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\TV Shows 2" /to="%DRIVE%\TV Shows 2" >												%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server2 'Movies 2' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE%\Movies 2" mkdir "%DRIVE%\Movies 2" >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=music_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\Movies 2" /to="%DRIVE%\Movies 2" >													%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Server2 Volume 2 backup complete.  >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%


echo Performing backup of Server_NVR to drive %DRIVE3% >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
title Performing backup of Server_NVR to drive %DRIVE3% >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE3%\server_nvr" mkdir "%DRIVE3%\server_nvr" >																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Backing up Server_NVR 'Main Drive' Directory >																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE3%\server_nvr\Main Drive" mkdir "%DRIVE3%\server_nvr\Main Drive" >																																												%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=backups_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_NVR_IP%\Main Drive" /to="%DRIVE3%\server_nvr\Main Drive" >							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server_NVR 'video' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE3%\server_nvr\video" mkdir "%DRIVE3%\server_nvr\video" >																																														%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=homes_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_NVR_IP%\video" /to="%DRIVE3%\server_nvr\video" >										%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Backing up Server_NVR 'web' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE3%\server_nvr\web" mkdir "%DRIVE3%\server_nvr\web" >																																															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=music_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_NVR_IP%\web" /to="%DRIVE3%\server_nvr\web" >											%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Server_NVR backup complete.  >																																																					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%




echo Performing backup of Server_plex to drive %DRIVE3% >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
title Performing backup of Server_plex to drive %DRIVE3% >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE3%\server_plex" mkdir "%DRIVE3%\server_plex" >																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Backing up Server_plex 'web' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "%DRIVE3%\server_plex\web" mkdir "%DRIVE3%\server_plex\web" >																																															%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=backups_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_plex_IP%\web" /to="%DRIVE3%\server_plex\web" >										%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Server_plex backup complete.  >																																																				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
if not exist "\\%server_IP%\Backups\Backup Scripts\logs\%start_date%" mkdir "\\%server_IP%\Backups\Backup Scripts\logs\%start_date%" >																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

move "C:\Users\%USERNAME%\FastCopy\Log\*.*" "\\%server_IP%\Backups\Backup Scripts\logs\%start_date%" >																																								%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
move "%results_file%" "\\%server_IP%\Backups\Backup Scripts\logs\%start_date%\results_%start_date%.txt" >																																							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
%SystemRoot%\explorer.exe "\\%server_IP%\Backups\Backup Scripts\logs\%start_date%" >																																												%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Complete Backup Process Complete.  >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
pause
goto :choice2


:pause_exit
exit
