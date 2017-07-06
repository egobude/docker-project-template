#!/bin/sh

set -e
set -u

envsubst '${FLOW_CONTEXT} ${NGINX_PORT} ${NGINX_DOCUMENT_ROOT}' < /default.conf.template > /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"