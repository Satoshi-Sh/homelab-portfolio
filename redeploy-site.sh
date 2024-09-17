#!/bin/sh
cd ~/projects/homelab-portfolio
chmod u+x redeploy-site.sh
git fetch && git reset origin/main --hard
docker compose -f docker-compose.prod.yml down
docker compose -f docker-compose.prod.yml up -d --build
