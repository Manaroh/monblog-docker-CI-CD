#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

git pull
docker compose down || true
docker compose up -d --build
docker compose ps
echo "App: http://localhost:8080"
