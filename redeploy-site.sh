#!/bin/sh
cd ~/projects/homelab-portfolio
git fetch && git reset origin/main --hard
chmod +x redeploy-site.sh
docker compose -f docker-compose.prod.yml down
docker image prune -f
docker compose -f docker-compose.prod.yml up -d --build
