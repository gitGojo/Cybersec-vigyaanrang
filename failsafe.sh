#!/bin/bash

# Load environment variables
if [ -f "$(dirname "$0")/.env" ]; then
    source "$(dirname "$0")/.env"
else
    echo "Error: .env file not found. Please create one from .env.example"
    exit 1
fi

DISCORD_URL="$DISCORD_WEBHOOK_URL"
WATCH_DIR="$HOME/players/user_123"

echo "FAILSAFE ACTIVE: Monitoring important files..."
while true; do
    if [ ! -f "$WATCH_DIR/1.txt" ] || [ ! -f "$WATCH_DIR/2.txt" ]; then
        MESSAGE="🚨 SECURITY ALERT: gojo has deleted an important file in $WATCH_DIR!"
        curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"$MESSAGE\"}" "$DISCORD_URL"
        # Restore files to prevent spam
        touch "$WATCH_DIR/1.txt" "$WATCH_DIR/2.txt"
    fi
    sleep 2
done