#!/bin/sh
set -eu

child_pid=""

die() {
    echo "...exiting"
    if [ -n "$child_pid" ]; then
        kill "$child_pid" 2>/dev/null || true
        wait "$child_pid" 2>/dev/null || true
    fi
    exit 0
}

trap die TERM INT

echo "sleeping..."

sleep infinity &
child_pid="$!"
wait "$child_pid"
