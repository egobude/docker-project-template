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

    composer stack-up
    
### Stop your development stack

	composer stack-down

### Restart your development stack

	composer stack-restart

You can reach your project under http://<YOUR_IP_ADRESS:1234

## General tips

### How to change the port?

If you want a different port than 1234 you can edit the environment variable `NGINX_PORT` in the [.env](https://github.com/egobude/docker-neos-template/blob/master/.env) file. 
