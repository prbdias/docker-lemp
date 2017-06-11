#!/usr/bin/env bash
sed -i 's/${APP_NAME}/'"$APP_NAME"'/g' /etc/nginx/sites-available/site.conf
nginx