set "JAVA_HOME=%JAVA_HOME%"

set vmoptsFile=%cd%\.vmoptions
if exist "%vmoptsFile%" (
    set "vmoptions="
    for /f "tokens=* delims=" %%a in (%vmoptsFile%) do (
        set "vmopt=%%a"
        set "vmoptions=!vmoptions! !vmopt!"
    )
    set "vmoptions=!vmoptions:~1!"

    set "JAVA_OPTS=%JAVA_OPTS% !vmoptions!"
)

set catoptsFile=%cd%\.catalinaoptions
if exist "%catoptsFile%" (
    set "catoptions="
    for /f "tokens=* delims=" %%a in (%catoptsFile%) do (
        set "caopt=%%a"
        set "catoptions=!catoptions! !caopt!"
    )
    set "catoptions=!catoptions:~1!"

    set "CATALINA_OPTS=%CATALINA_OPTS% !catoptions!"
)
