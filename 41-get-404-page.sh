#!/bin/sh

# This script will fetch the latest 404 custom error page

set -e

curl -s "https://raw.githubusercontent.com/asmithdt/docker-nginx-problem/main/404.html" -o /var/www/nginx/errors/404.html
