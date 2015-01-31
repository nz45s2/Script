@echo off
title Updating %PROJECT_NAME% cscope database
:loop
cmd /c vim --servername %1 --remote-expr "KillCscope()"
@echo off
call GenCscope.bat
@echo off
cmd /c vim --servername %1 --remote-expr "AddCscope()"
echo sleep 140s
ping -n 140 127.0.0.1 >nul
goto loop
@echo on
