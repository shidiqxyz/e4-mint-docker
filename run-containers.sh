#!/bin/bash
INDEX=1
while read -r PRIVATE_KEY || [[ -n "$PRIVATE_KEY" ]]; do
  ENV_FILE=".env$INDEX"
  sed "s|{{PRIVATE_KEY}}|$PRIVATE_KEY|g" .env.template > "$ENV_FILE"
  docker run -d --env-file="$ENV_FILE" --name="bot$INDEX" claim-bot
  echo "🚀 Started bot$INDEX with key: ${PRIVATE_KEY:0:10}..."
  ((INDEX++))
done < pk.txt
