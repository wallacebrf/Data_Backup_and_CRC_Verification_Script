@ECHO off
SET server_IP=192.168.1.13
SET server_NVR_IP=192.168.1.178
SET server_truenas_IP=192.168.1.101
set start_date=%date:~4,2%-%date:~7,2%-%date:~10,4%
REM https://www.exactfile.com/downloads/
set tmp_file="C:\Users\%USERNAME%\Desktop\tmp.txt"
set results_file="C:\Users\%USERNAME%\Desktop\results_%start_date%.txt"


cls																																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo Performing sync of Server2 from IP %server_IP% and ServerNVR from IP %server_NVR_IP% to TrueNAS at IP %server_truenas_IP% >																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
title Performing sync of Server2 from IP %server_IP% and ServerNVR from IP %server_NVR_IP% to TrueNAS at IP %server_truenas_IP% >																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Syncing Server2 'Main Drive' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=maindrive_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\Main Drive" /to="\\%server_truenas_IP%\Main_Drive" >							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 'music' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=music_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\music" /to="\\%server_truenas_IP%\music" >											%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 'photo' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=photo_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\photo" /to="\\%server_truenas_IP%\photo" >											%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 'Software' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=software_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\Software" /to="\\%server_truenas_IP%\Software" >									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 'video\4k Movies' Directory >																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=video_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\video\4k Movies" /to="\\%server_truenas_IP%\video\4k_Movies" >						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 'video\movies' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=video_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\video\movies" /to="\\%server_truenas_IP%\video\movies" >							%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 'video\TV shows' Directory >																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=video_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\video\TV Shows" /to="\\%server_truenas_IP%\video\TV_Shows" >						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 '4k Movies' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=backups_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\4k Movies" /to="\\%server_truenas_IP%\4k_Movies" >								%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 'TV Shows 2' Directory >																																																		%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=homes_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\TV Shows 2" /to="\\%server_truenas_IP%\TV_Shows_2" >								%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server2 'Movies 2' Directory >																																																			%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=music_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_IP%\Movies 2" /to="\\%server_truenas_IP%\Movies_2" >									%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server_NVR 'video\4k Movies' Directory >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=homes_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_NVR_IP%\video\4k Movies" /to="\\%server_truenas_IP%\ServerNVR\4k_Movies" >				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server_NVR 'video\movies' Directory >																																																	%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=homes_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_NVR_IP%\video\movies" /to="\\%server_truenas_IP%\ServerNVR\movies" >					%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo %date% %time% . Syncing Server_NVR 'video\TV Shows' Directory >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
C:\Users\%USERNAME%\FastCopy\FastCopy.exe /cmd=sync /auto_close /estimate /bufsize=256 /log /logfile=homes_dir /filelog /disk_mode=diff /speed=full /force_close "\\%server_NVR_IP%\video\TV Shows" /to="\\%server_truenas_IP%\ServerNVR\TV_Shows" >				%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%

echo. >																																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo %date% %time% . Sync Process Complete.  >																																																						%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%
echo................................................................. >																																																%tmp_file% && type %tmp_file% && type %tmp_file% >> %results_file%


:pause_exit
exit
