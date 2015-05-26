# Ship.it docker
This project is intented to faciliate the deploy process of the Shipit app

![screenshot 2015-05-26 17 03 24](https://cloud.githubusercontent.com/assets/833383/7815547/5c6989fc-03c9-11e5-86b9-fecc88f78efa.png)

## Instructions
* Install docker-compose. https://docs.docker.com/compose/install/
* Clone this repo to the server: `git clone https://github.com/arthurnn/shipit_docker.git; cd shipit_docker`
* Setup the .env file: `cp .env.sample .env; nano .env`
* Run migrations: `docker-compose run web bin/rake db:migrate`
* Run the app `docker-compose up -d`
