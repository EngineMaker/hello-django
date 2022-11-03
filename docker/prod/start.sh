#!/usr/bin/env bash
# exit on error
set -o errexit

python manage.py tailwind build
python manage.py collectstatic --no-input
python manage.py migrate
python manage.py shell < docker/dev/create-admin-user.py

uvicorn mysite.asgi:application --host 0.0.0.0
