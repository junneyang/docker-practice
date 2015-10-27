#!/bin/bash

cat >> ./mysite/settings.py <<EOF
DATABASES = {
    "default": {
        "ENGINE":   "django.db.backends.mysql",
        "NAME":     "${MYSQL_DATABASE}",
        "USER":     "${MYSQL_USER}",
        "PASSWORD": "${MYSQL_PASSWORD}",
        "HOST":     "${MYSQL_HOST}",
        "PORT":     ${MYSQL_PORT},
    }
}
EOF

uwsgi uwsgi/uwsgi.ini
cp ./nginx/default /etc/nginx/sites-available/default
service nginx restart
tail -f ./logs/uwsgi.log

