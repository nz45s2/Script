@echo off
set path=%path%

set /p PRJ_NAME=input a project name:
if %PRJ_NAME%== set PRJ_NAME=DEFAULT

call GenTags.bat
@echo off
call GenFileTag.bat
@echo off
call GenCscope.bat


echo set PROJECT_NAME=%PRJ_NAME% >project.bat
echo set path=%path%>>project.bat
echo set HOME=c:\Users\nz45s2>>project.bat

echo start C:\"Program Files"\Vim\vim74\gvim.exe >>project.bat
echo exit >>project.bat
@echo on
