# docker
This repo will contain the basics of docker and docker engine.

## Installation
```bash
# For Linux
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo systemctl status docker
```

## Workflow
```bash
# Pull the docker image
docker pull <image_name:tag>

# list down all docker images
docker images

# Run docker image
docker run <image_name:tag>
        or
docker run <image_id>

# Build the image
docker build .

# Build the image with custom repo and tag name
docker build . -t <custom_repo_name:custom_tag_name>

# List down all running containers
docker ps

# List down all running containers even they are not running
docker ps -a

# To map container port to localhost port and also to run node file
docker run -p container_port:localhost_port -it <image_id> node <file.js>

# Stop docker container
docker stop <container_id>

# Exit from docker
^pq
```
