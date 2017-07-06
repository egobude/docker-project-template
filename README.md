# Docker based development setup

Template for a docker based Neos/Flow development.

## Links

 * [Neos CMS - Open Source Content Application Platform](https://www.neos.io/)
 * [Flow Framework - PHP web application framework](https://flow.neos.io/)

## Requirements

 * docker (https://docs.docker.com/engine/installation)
 * docker-compose (https://docs.docker.com/compose)
 * composer (https://getcomposer.org)

## Development Stack

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
    
### Build the containers    
    
    $ docker-compose build

### Install your project (Neos or Flow) 

    $ composer create-project neos/neos-base-distribution Data 
    $ composer create-project neos/flow-base-distribution Data

### Start up your docker-compose file    

    $ docker-compose up -d   
    
You can reach your project under http://<YOUR_IP_ADRESS:1234

## Tips

> Whenever you make changes to the container, you have to rebuild it!

### How to change the port?

If you want a different port than 1234 you can edit the environment variable `NGINX_PORT` in the [.env](https://github.com/egobude/docker-neos-template/blob/master/.env) file. 

### How to change the document root? 

To change the document root just edit the configuration file located under `Docker/nginx/default.conf.template`