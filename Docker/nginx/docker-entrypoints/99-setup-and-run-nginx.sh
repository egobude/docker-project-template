#!/bin/sh
set -e

echo "Replace env variables in nginx configuration"
envsubst '${FLOW_CONTEXT} ${NGINX_PORT} ${NGINX_DOCUMENT_ROOT}' < /default.conf.template > /etc/nginx/conf.d/default.conf

echo "Start nginx"
nginx -g "daemon off;"