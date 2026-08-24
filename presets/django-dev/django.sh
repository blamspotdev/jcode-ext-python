#!/bin/sh
# Django
clear
set -e
cd "$JCODE_DIR"
[ -f requirements.txt ] && pip3 install -r requirements.txt
python3 manage.py runserver 0.0.0.0:8000
