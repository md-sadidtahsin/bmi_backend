#!/bin/bash
set -e
cd /var/www/express-app
# Stop existing process if running
pm2 stop express-app 2>/dev/null || true
# Start with PM2 for process management & auto-restart
pm2 start server.js --name "express-app" --env production
pm2 save