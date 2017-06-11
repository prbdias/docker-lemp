#!/usr/bin/env bash
sed -i 's@${ROOT_PATH}@'"$ROOT_PATH"'@g' /etc/nginx/sites-available/site.conf
nginx