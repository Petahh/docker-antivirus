#!/bin/bash
# Deamon which trigger scan
until [ -f /data/av/queue/scan.now ]
do
     sleep 5
done
echo "Trigger file found executing antivirus scan now!"
rm -rf /data/av/queue/scan.now
/usr/local/bin/scanner.sh
exit