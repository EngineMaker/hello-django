#!/usr/bin/env bash
# exit on error
set -o errexit

python manage.py collectstatic --no-input
python manage.py migrate

uvicorn mysite.asgi:application --host 0.0.0.0
