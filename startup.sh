#!/bin/sh

# Author: Giao Ho

. "$(pwd)/config.sh"

# Call setenv.sh if it exists
if [ -f "$(pwd)/setenv.sh" ]; then
    . "$(pwd)/setenv.sh"
fi

exec "$EXECUTABLE" start "$@"
