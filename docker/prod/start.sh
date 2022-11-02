#!/usr/bin/env bash
# exit on error
set -o errexit

python manage.py collectstatic --no-input
python manage.py migrate
#python manage.py createsuperuser --no-input --username admin

uvicorn mysite.asgi:application --host 0.0.0.0
