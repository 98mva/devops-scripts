#!/bin/bash

LOGFILE="/tmp/loop-log.txt"
TARGET_FILE="./.env"  # change this to test different paths

echo "🔄 Starting loop..." > "$LOGFILE"

for i in {1..5}; do
  echo "$(date): Loop iteration $i" >> "$LOGFILE"
  
  if [ -f "$TARGET_FILE" ]; then
    echo "$(date): ✅ File $TARGET_FILE exists." >> "$LOGFILE"
  else
    echo "$(date): ❌ File $TARGET_FILE not found!" >> "$LOGFILE"
  fi

  sleep 1
done

echo "$(date): 🚀 Loop finished." >> "$LOGFILE"
