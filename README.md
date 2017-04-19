# Docker based development setup

Template for a docker based Neos CMS development setup.

## Links

 * [Neos CMS - Open Source Content Application Platform](https://www.neos.io/)
 * [Flow Framework - PHP web application framework](https://flow.neos.io/)

## Requirements

* docker (https://docs.docker.com/engine/installation)
* docker-compose (https://docs.docker.com/compose)
* composer (https://getcomposer.org)

## How to start

### Install

    composer create-project egobude/docker-neos-template docker-neos
   
### Start your development stack

    docker-compose up -d
    
### Stop your development stack

	docker-compose down -v

### Restart your development stack

	docker-compose restart

### Execute a command in a container (for example clear the flow cache in the php container)

	docker-compose exec php ./flow flow:cache:flush --force

You can reach your project under http://<YOUR_IP_ADRESS:1234

## General tips

### How to change the port?

If you want a different port than 1234 you can edit the environment variable `NGINX_PORT` in the [.env](https://github.com/egobude/docker-neos-template/blob/master/.env) file. 
