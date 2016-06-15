#!/bin/bash
set -e

if [ $NODE_ENV = 'development' ]; then
	npm install
fi

exec npm start
