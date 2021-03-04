@echo off
chcp 65001 >nul
mode con lines=20 cols=80
title destro's ip pinger
color 9

echo.
echo Type An IP To Start Pinging
echo. 

set /p IP=Pinger@unbreaking 
:top
PING -n 1 %IP% | FIND "TTL=" >nul
IF ERRORLEVEL 1 goto failed
ping -t 3 0 10 127.0.0.1 >nul
goto pass
:failed
title destro's ip pinger │ IP OFFLINE │ %IP%
color 5
cls
echo.
echo  ██████  ███████ ███████ ██      ██ ███    ██ ███████ 
echo ██    ██ ██      ██      ██      ██ ████   ██ ██      
echo ██    ██ █████   █████   ██      ██ ██ ██  ██ █████   
echo ██    ██ ██      ██      ██      ██ ██  ██ ██ ██      
echo  ██████  ██      ██      ███████ ██ ██   ████ ███████                                                 
echo.
goto top
:pass
title unbreakable destro's ip pinger │ IP ONLINE │ %IP%
color 8
cls
echo.
echo  ██████  ███    ██ ██      ██ ███    ██ ███████ 
echo ██    ██ ████   ██ ██      ██ ████   ██ ██      
echo ██    ██ ██ ██  ██ ██      ██ ██ ██  ██ █████   
echo ██    ██ ██  ██ ██ ██      ██ ██  ██ ██ ██      
echo  ██████  ██   ████ ███████ ██ ██   ████ ███████ 
echo.              
IF ERRORLEVEL 1 goto failed                                 
goto top