#!/bin/bash

THRESHOLD=80
USAGE=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "WARNING: Disk usage is above ${THRESHOLD}%! Current: ${USAGE}%"
else
  echo "Disk usage is OK: ${USAGE}%"
fi
