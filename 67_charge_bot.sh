#!/bin/bash

TOKEN="yourBotAPI"
CHAT_ID="YourTelegramID"

while true; do
  LEVEL=$(pmset -g batt | grep -Eo "[0-9]+%" | tr -d '%')

  if [ "$LEVEL" -eq 67 ]; then
    curl -s "https://api.telegram.org/bot$TOKEN/sendMessage" \
      -d chat_id=$CHAT_ID \
      -d text="67 ALERT HEADS UP!"
    exit
  fi

  sleep 60
done
