## Installation

clone it without repo 

    git clone https://github.com/Kasparsu/laravel-docker-install.git && rm -rf laravel-docker-install/.git

To download laravel

    sh download.sh

to create .env from .env.example

    cp .env.example .env

to run docker-compose

    docker-compose up -d
to generate application key

    docker-compose exec app php artisan key:generate

to view logs

    docker-compose logs app
