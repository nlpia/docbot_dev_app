#!/bin/sh

while ! nc -z db 5432; do echo "Waiting for db:5432"; sleep 5; done
while ! echo 'SELECT 1' | PGPASSWORD=$POSTGRES_PASSWORD psql --host $POSTGRES_HOST --user $POSTGRES_USER $POSTGRES_DB; do echo "Waiting for DB"; sleep 5; done

while ! nc -z redis 6379; do echo "Waiting for redis:6379"; sleep 5; done
while ! nc -z app 8000; do echo "Waiting for app:8000"; sleep 5; done

python manage.py runcelery
