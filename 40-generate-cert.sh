#!/bin/sh

set -e

openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/local.key -out /etc/nginx/local.pem -days 30 -nodes -subj '/CN=localhost'
