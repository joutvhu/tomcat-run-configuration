@echo off
setlocal
:: Prompt the user for the tomcat path
set /p tomcatPath="Enter the tomcat path: "

:: Check if the tomcat exists
if not exist "%tomcatPath%" (
    echo The tomcat path does not exist.
    pause
    exit /b 1
)
if not exist "%tomcatPath%\conf" (
    echo The conf folder does not exist in tomcat folder.
    pause
    exit /b 1
)
if not exist "%tomcatPath%\bin\catalina.bat" (
    echo The bin\catalina.bat does not exist in tomcat folder.
    pause
    exit /b 1
)

set startupFile=%cd%\config.bat
set "startCatalinaHome=set ""CATALINA_HOME="
set "replaceCatalinaHome=set """"CATALINA_HOME=%tomcatPath%"""""
:: Use PowerShell to replace the tomcat path in the startup file
powershell -Command "(Get-Content -path '%startupFile%') -replace '^(%startCatalinaHome%.*)', '%replaceCatalinaHome%' | Set-Content -path '%startupFile%'"

echo The tomcat path replacement is complete.

set confFolder=%cd%\conf
:: Recreate the conf folder
if exist "%confFolder%" (
    rd /s /q "%confFolder%"
)
mkdir "%confFolder%"
:: Copy all files from the source folder to the destination folder
xcopy "%tomcatPath%\conf\*" "%confFolder%" /E /I /H /Y

echo All conf files have been copied.
endlocal

pause