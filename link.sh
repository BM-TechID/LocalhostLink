#!/bin/bash
clear
sh install.sh
echo "Enteni dela cuk agi di setting...."; sleep 1; echo ""
killall -q screen
rm -rf logremote.txt 
rm -rf /.ssh/known_hosts
screen -dmS remote -L -Logfile logremote.txt ssh -R 80:localhost:8$
clear
echo "Tunggu dela ya..."; sleep 2
echo "Tek ngirim link meng telegram..."; sleep 10
sh bot.sh
host=$(cat logremote.txt|grep tunneled|awk '{print $1}')
echo ""
echo "Your Link: $host"
echo ""
