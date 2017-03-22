# Template for a docker based Neos CMS development setup

## Requirements

* docker (https://docs.docker.com/engine/installation)
* docker-compose (https://docs.docker.com/compose)
* composer (https://getcomposer.org)

## How to start

### Clone the repository

    https://github.com/egobude/docker-neos-template.git
    
### Install the project

    cd docker-neos-template
    composer update
    
### Start up your docker-compose file

    docker-compose up -d
    
After that your project should be up and running. You can reach your project under http://<YOUR_IP_ADRESS:32831

## General tips

### How to change the port

If you want to change the port you have to do this in the [docker-compose.yml](https://github.com/egobude/docker-neos-template/blob/master/docker-compose.yml) file and in the Nginx configuration under [Configuration/Docker/default.conf](https://github.com/egobude/docker-neos-template/blob/master/Configuration/Docker/default.conf)