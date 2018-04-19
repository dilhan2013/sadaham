# Sadaham web site

## Deployment

### All in one command
Pull latest from https://github.com/dilhan2013/sadaham.git and then Run following command to build docker image -> and then do the docker stack deploy all in one command
`bash ./deploy.sh`

Or, use following steps

### Docker Build
`docker build https://github.com/dilhan2013/sadaham.git#master  -t dilhan2013/sadahamweb:latest`

### Docker Stack Deploy

`docker stack deploy -c docker-compose.yml <stack-name>`

### Open ports

`docker service update --publish-add published=80,target=80 <service-name>`

## Tips

### Run bash as root

`sudo -s`
