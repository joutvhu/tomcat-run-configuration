@echo off

rem Author: Giao Ho

call "%cd%\config.bat"

rem Get remaining unshifted command line arguments and save them in the
set CMD_LINE_ARGS=
:setArgs
if ""%1""=="""" goto doneSetArgs
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
shift
goto setArgs
:doneSetArgs

if exist "%cd%\setenv.bat" call "%cd%\setenv.bat"

call "%EXECUTABLE%" start %CMD_LINE_ARGS%
