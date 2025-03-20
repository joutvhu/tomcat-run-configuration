@echo off
rem Change to the appropriate JDK
set "JAVA_HOME=%JAVA_HOME%"

rem Read MV Options
setlocal enabledelayedexpansion
set vmoptsFile=%cd%\.vmoptions
set "vmoptions="
if exist "%vmoptsFile%" (
    for /f "tokens=* delims=" %%a in (%vmoptsFile%) do (
        set "vmopt=%%a"
        set "vmoptions=!vmoptions! !vmopt!"
    )
    set "vmoptions=!vmoptions:~1!"
)
endlocal && set vmoptions=%vmoptions%
set "JAVA_OPTS=%JAVA_OPTS%%vmoptions%"

rem Read Catalina Options
setlocal enabledelayedexpansion
set catoptsFile=%cd%\.catalinaoptions
set "catoptions="
if exist "%catoptsFile%" (
    for /f "tokens=* delims=" %%a in (%catoptsFile%) do (
        set "caopt=%%a"
        set "catoptions=!catoptions! !caopt!"
    )
    set "catoptions=!catoptions:~1!"
)
endlocal && set catoptions=%catoptions%
set "CATALINA_OPTS=%CATALINA_OPTS%%catoptions%"
