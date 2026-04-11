#!/bin/sh

for file in /usr/share/nginx/html/*.html; do
    sed -i "s|__WEBHOOK_URL__|${WEBHOOK_URL}|g" "$file"
done

nginx -g "daemon off;"