#!/usr/bin/env bash
# Bot telegram

TOKEN_BOT=""
CHAT_ID=""

clear
echo "Cek Token Bot kamu..."; sleep 1
echo "$TOKEN_BOT"
echo "Cek juga id telegramu...."; sleep 1
echo "$CHAT_ID"
sleep 1; echo "Oke siap"; clear

host=$(cat logremote.txt|grep tunneled|awk '{print $1}')
PESAN="Id server: <b>$(hostname)</b>%0ALink: $host"
curl -s -X POST "https://api.telegram.org/bot$TOKEN_BOT/sendmessage" -d "chat_id=$CHAT_ID" -d "parse_mode=html" -d "text=$PESAN"
clear; sleep 2
echo "Sukses dikirim ke telegram anda..."
