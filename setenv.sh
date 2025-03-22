#!/bin/sh
# Change to the appropriate JDK
export JAVA_HOME="$JAVA_HOME"

# Function to trim leading and trailing whitespace
trim() {
    echo "$1" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//'
}

# Read MV Options
vmoptsFile="$(pwd)/.vmoptions"
vmoptions=$(tr '\n' ' ' < "$vmoptsFile" | tr '\r' ' ' | tr -s ' ')
export JAVA_OPTS=$(trim "$JAVA_OPTS $vmoptions")

# Read Catalina Options
catoptsFile="$(pwd)/.catalinaoptions"
catoptions=$(tr '\n' ' ' < "$catoptsFile" | tr '\r' ' ' | tr -s ' ')
export CATALINA_OPTS=$(trim "$CATALINA_OPTS $catoptions")
