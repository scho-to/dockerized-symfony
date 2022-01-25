# dockerized-symfony

My first docker experiment.

# Usage
1. You need to have [docker](https://docs.docker.com/get-docker/) (and [docker-compose](https://docs.docker.com/compose/install/)) installed.
2. clone this repo
3. use the composer container as a utility to [generate a symfony project](https://symfony.com/doc/5.4/setup.html) as in the official symfony docs. Omit the version if you want the latest symfony version:
```bash
docker-compose run --rm composer create-project symfony/skeleton:"^5.4" .
```
This will create the minified symfony project in the "symfony" folder without any extensions or expansions from the flex network
4. run the php-enabled abache server:
```bash
docker-compose up -d --build server
```
5. go to [localhost:8000](http://localhost:8000/) to open your browser. You should see the symfony startpage. Done :)

# Configuration
You can configure the dockerfiles in the "dockerfiles" folder. There you can also change the standard-port of 8000 to something else.

# License
MIT
