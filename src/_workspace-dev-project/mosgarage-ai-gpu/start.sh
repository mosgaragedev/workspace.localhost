#!/bin/bash

set -e

echo "🚀 Starting Mosgarage AI GPU Stack..."

docker compose up --build -d

echo "✅ Container running"
echo "➡️ Enter: docker exec -it mosgarage-ai-gpu bash"