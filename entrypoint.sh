#!/bin/sh
if [ ! -d $PROJECT_NAME ]; then composer create-project --prefer-dist laravel/laravel $PROJECT_NAME; fi

set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi

exec "php-fpm"