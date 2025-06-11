#!/bin/bash
echo "System Uptime at $(date):" >> /tmp/uptime-log.txt
uptime >> /tmp/uptime-log.txt
echo "---" >> /tmp/uptime-log.txt
