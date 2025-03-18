#!/bin/sh

die() {
    echo "...exiting"
    exit 1
}
trap die TERM

echo "sleeping..."

sleep 3653d &
wait