#!/bin/sh
while [ $# -gt 0 ]
do
	wg-quick up "$1"
	shift
done
exec tail -f /dev/null
