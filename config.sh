#!/bin/sh

# Author: Giao Ho

# Set CATALINA_HOME and CATALINA_BASE
export CATALINA_HOME="${CATALINA_HOME}"
export CATALINA_BASE="$(pwd)"
EXECUTABLE="${CATALINA_HOME}/bin/catalina.sh"

# Check if CATALINA_HOME is defined correctly
if [ ! -f "$EXECUTABLE" ]; then
    echo "The CATALINA_HOME environment variable is not defined correctly"
    echo "This environment variable is needed to run this program"
    exit 1
fi

# Check that target executable exists
if [ ! -f "$EXECUTABLE" ]; then
    echo "Cannot find $EXECUTABLE"
    echo "This file is needed to run this program"
    exit 1
fi
