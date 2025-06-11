#!/bin/bash

FILE="./does-not-exist.txt"

echo "📂 Checking file: $FILE"

if [ ! -f "$FILE" ]; then
  echo "❌ Error: File not found: $FILE"
  exit 1
fi

echo "✅ File exists. Reading content:"
cat "$FILE"
