#!/bin/bash

PIDS=$(pgrep spotify)

for PID in $PIDS
do
    kill -SIGTERM $PID
done 

echo -e 'power on\nconnect 04:52:C7:30:F8:96 \nquit' | bluetoothctl

exec spotify &

echo "Done"
