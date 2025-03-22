@echo off

rem Author: Giao Ho

set "CATALINA_HOME=%CATALINA_HOME%"
set "CATALINA_BASE=%cd%"
set "EXECUTABLE=%CATALINA_HOME%\bin\catalina.bat"

if exist "%EXECUTABLE%" goto okHome
echo The CATALINA_HOME environment variable is not defined correctly ss
echo This environment variable is needed to run this program
exit /b 1
:okHome

rem Check that target executable exists
if exist "%EXECUTABLE%" goto okExec
echo Cannot find "%EXECUTABLE%"
echo This file is needed to run this program
exit /b 1
:okExec
