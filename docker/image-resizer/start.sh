#!/bin/bash
set -e

if [ $NODE_ENV = 'development' ]; then
	npm install
	npm link /srv/image-resizer
fi

exec npm start
