#!/bin/bash
until [ -f /data/av/queue/scan.now ]
do
     sleep 5
done
echo "Trigger file found executing antivirus scan now!"
/usr/local/bin/scanner.sh
echo "Last scan completed, starting new lauch daeomn!"
/bin/bash /usr/local/bin/launcher.sh &
exit 1