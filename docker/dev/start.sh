#!/usr/bin/env bash
# exit on error
set -o errexit

python manage.py migrate
python manage.py shell < docker/dev/create-admin-user.py

python manage.py runserver 0.0.0.0:8000