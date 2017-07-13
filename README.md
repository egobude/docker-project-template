# Docker based development setup

Template for a docker based development setup.

## Requirements/Links

 * docker (https://docs.docker.com/engine/installation)
 * docker-compose (https://docs.docker.com/compose)
 * composer (https://getcomposer.org)

## Development stack

|Image|Version|OS|
|---|---|---|
|[Nginx](https://hub.docker.com/r/zeroboh/nginx/)|1.11|Alpine|
|[PHP-FPM](https://hub.docker.com/r/zeroboh/php/)|7.1|Alpine|
|[Redis](https://hub.docker.com/r/zeroboh/redis/)|3.2|Alpine|
|[MariaDB](https://hub.docker.com/r/zeroboh/mariadb/)|10.1|Debian Jessie |

## Usage

### Clone the repository

    $ git clone https://github.com/egobude/docker-neos-template.git
    $ cd docker-neos-template

### Create a .env file

Create a .env file from .env.dist and edit it with your own config

    $ cp .env.dist .env

### Build the containers
    
    $ docker-compose build

### Install your project

#### Install a Neos base distribution

    $ composer create-project neos/neos-base-distribution Data 

#### Install a Flow base distribution

    $ composer create-project neos/flow-base-distribution Data

### Start your development stack

    $ docker-compose up -d   
    
You can reach your project under http://<YOUR_IP_ADRESS:1234

### Stop and remove the containers

    $ docker-compose down

### If changes have been made to the setup, rebuild the containers

    $ docker-compose up -d --build --force-recreate

## Tips

> Whenever you make changes to the files located under `/Docker` you have to rebuild the images. Otherwise the changes have no effect!

### How to execute a custom shell script on start up? 

To execute a custom shell script on start up place one or more *.sh files into the /docker-entrypoints folder. This feature is available for the php-fpm and nginx image. The files are loaded alphabetically.

### How to change the port?

If you want a different port than 1234 you can edit the environment variable `NGINX_PORT` in the [.env](https://github.com/egobude/docker-neos-template/blob/master/.env) file.

### How to change the document root? 

To change the document root just edit the environment variable `NGINX_DOCUMENT_ROOT` in the [.env](https://github.com/egobude/docker-neos-template/blob/master/.env) file.