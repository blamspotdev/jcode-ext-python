#!/bin/sh
# Flask
clear
set -e
cd "$JCODE_DIR"
[ -f requirements.txt ] && pip3 install -r requirements.txt
python3 -m flask --app app.py run --host 0.0.0.0 --port 5000
