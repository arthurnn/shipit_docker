# Ship.it docker
This project is intented to faciliate the deploy process of the Shipit app

## Instructions
* Install docker-compose. https://docs.docker.com/compose/install/
* Clone this repo to the server: `git clone https://github.com/arthurnn/shipit_docker.git; cd shipit_docker`
* Setup the .env file: `cp .env.sample .env; nano .env`
* Run migrations: `docker-compose run web bin/rake db:migrate`
* Run the app `docker-compose up -d`
