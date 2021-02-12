#!/usr/bin/env sh
set -eu

envsubst '${APP_CLIENT_DOMAIN}' < /etc/nginx/sites/client.conf > /etc/nginx/sites-available/client.conf
envsubst '${APP_SERVER_DOMAIN}' < /etc/nginx/sites/server.conf > /etc/nginx/sites-available/server.conf

exec "$@"
