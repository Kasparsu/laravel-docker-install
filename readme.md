## Installation

clone it without repo 

    git clone https://github.com/Kasparsu/laravel-docker-install.git && rm -rf laravel-docker-install/.git

change .env file to have project name. if there already exists folder with that name then laravel won't be installed. You can copy preexisting laravel into the folder as well and run.

to run docker-compose

    docker-compose up -d

to view logs

    docker-compose logs app
