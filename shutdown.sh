#!/bin/sh

# Author: Giao Ho

. "$(pwd)/config.sh"

exec "$EXECUTABLE" stop "$@"
