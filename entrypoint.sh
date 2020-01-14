#! /bin/bash
set -e
set -u

echo "Writing EXTRA_CONF to /etc/nginx/conf.d/extra.conf"
echo "$EXTRA_CONF" > /etc/nginx/conf.d/extra.conf
cat /etc/nginx/conf.d/extra.conf

echo "Sourcing /app/docker-entrypoint.sh"

echo "Forwarding commands $@"
bash /app/docker-entrypoint.sh "$@"
