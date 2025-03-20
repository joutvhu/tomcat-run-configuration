@echo off

rem Author: Giao Ho

setlocal

set "CURRENT_DIR=%cd%"
set "CATALINA_HOME=F:\Kit\Server\Tomcat\apache-tomcat-10.1.19"
set "CATALINA_BASE=%CURRENT_DIR%"
set "EXECUTABLE=%CATALINA_HOME%\bin\catalina.bat"

if exist "%EXECUTABLE%" goto okHome
echo The CATALINA_HOME environment variable is not defined correctly ss
echo This environment variable is needed to run this program
goto end
:okHome

rem Check that target executable exists
if exist "%EXECUTABLE%" goto okExec
echo Cannot find "%EXECUTABLE%"
echo This file is needed to run this program
goto end
:okExec

rem Get remaining unshifted command line arguments and save them in the
set CMD_LINE_ARGS=
:setArgs
if ""%1""=="""" goto doneSetArgs
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
shift
goto setArgs
:doneSetArgs

if exist "%CURRENT_DIR%\setenv.bat" call "%CURRENT_DIR%\setenv.bat"

call "%EXECUTABLE%" start %CMD_LINE_ARGS%

:end
