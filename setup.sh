#!/bin/sh

# Prompt the user for the tomcat path
read -p "Enter the tomcat path: " tomcatPath

# Check if the tomcat path exists
if [ ! -d "$tomcatPath" ]; then
    echo "The tomcat path does not exist."
    exit 1
fi
if [ ! -d "$tomcatPath/conf" ]; then
    echo "The conf folder does not exist in tomcat folder."
    exit 1
fi
if [ ! -f "$tomcatPath/bin/catalina.sh" ]; then
    echo "The bin/catalina.sh does not exist in tomcat folder."
    exit 1
fi

startupFile="$(pwd)/config.sh"
startCatalinaHome='export CATALINA_HOME="'
replaceCatalinaHome="export CATALINA_HOME=\"$tomcatPath\""
# Use sed to replace the tomcat path in the startup file
sed -i "s|^$startCatalinaHome.*|$replaceCatalinaHome|" "$startupFile"

echo "The tomcat path replacement is complete."

confFolder="$(pwd)/conf"
# Recreate the conf folder
if [ -d "$confFolder" ]; then
    rm -rf "$confFolder"
fi
mkdir "$confFolder"
# Copy all files from the source folder to the destination folder
cp -r "$tomcatPath/conf/." "$confFolder/"

echo "All conf files have been copied."

echo "Press any key to continue..."
read -n 1 -s
