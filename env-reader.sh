#!/bin/bash

# Automatically export variables from .env
set -a
source .env
set +a

echo "👋 Hello, $USER_NAME!"
echo "📧 Your registered email is: $EMAIL"
