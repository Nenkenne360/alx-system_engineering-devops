#!/usr/bin/env bash
# 404 Not Found Page

apt-get update
apt-get install -y nginx

touch /var/www/html/index.html /var/www/html/404.html
echo "Hello World!" > /var/www/html/index.html
echo "Ceci n'est pas une page" > /var/www/html/404.html

printf %s "server {
    listen 80;
    listen [::]:80 default_server;
    add_header X-Served-By $HOSTNAME;
    root   /var/www/html/;
    index  index.html index.htm;

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=TfgBHC5gvTI;
    }

    error_page 404 /404.html;
    location /404 {
        root /var/www/html/;
        internal;
    }
}" > /etc/nginx/sites-available/default

service nginx restart
