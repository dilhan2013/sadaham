#!/bin/bash  
echo "Git pull"
git pull

echo "Build docker image"  

docker build https://github.com/dilhan2013/sadaham.git#master -t dilhan2013/sadahamweb:latest

echo "Docker stack deploy"

docker stack deploy -c docker-compose.yml web

echo "Expose port 80"

docker service update --publish-add published=80,target=80 web_webapp
