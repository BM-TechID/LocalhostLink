#!/usr/bin/env bash
# Bot telegram
host=$(cat logremote.txt|grep tunneled|awk '{print $1}')

TOKEN_BOT="2105823821:AAFczmXdo52u94usWbMVqWCAq9A-oCzPHHM"
CHAT_ID="1178201791"

PESAN="Id server: <b>$(hostname)</b>%0ALink: $host"
curl -s -X POST "https://api.telegram.org/bot$TOKEN_BOT/sendmessage" -d "chat_id=$CHAT_ID" -d "parse_mode=html" -d "text=$PESAN"
echo "Sukses dikirim ke telegram anda..."
