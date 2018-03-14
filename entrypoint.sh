#!/bin/sh
if [ -f apk_requirements.txt ]; then
	apk add --no-cache $(grep -v "^#" apk_requirements.txt)
fi
if [ -f requirements.txt ]; then
	pip3 install --no-cache-dir --no-index -f wheels -r requirements.txt
fi

exec uwsgi --die-on-term --socket 0.0.0.0:8000 --ini uwsgi.ini
