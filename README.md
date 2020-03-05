# Docker
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

## Remove sudo permission from docker
```bash
sudo usermod -aG docker $USER
```

## DockerFile Syntex
```bash
  FROM - Pull Base image file

  RUN  - Run any valid ubuntu command inside the container
  #Note - You can run multiple RUN commands in a single DockerFile.
  #Example - RUN apt-get -y install apache2

  ADD  - Add any external file to docker container
  #Syntex - ADD <source file> <destination location inside the container>
  #Example - ADD . /var/www/html

  CMD  - Run any command at the time of container running
  #NOTE - If you want to run any installed services in a container from the dockerfile then mention those CMD inside the dockerfile. 
  #Example - CMD apachectl -D FOREGROUND (it will start the apache2 inside the container)

  ENV  - Set environments variable inside the container
  #Example - ENV MY_PHONE_NUMBER 8871832456
```

## Docker Images
```bash
# Pull the docker image
docker pull <image_name:tag>

# list down all docker images
docker images

# Run docker image
docker run <image_name:tag>
        or
docker run <image_id>

# Exit from docker
^pq
```

### Docker Containers
```bash
# List down all running containers
docker ps

# List down all running containers even they are not running
docker ps -a

#To stop a docker container
docker stop <container_id>

#To stop all containers
docker stop $(docker ps -a -q)

#To run a docker container
docker run <container_id>

#Remove all stopped containers
docker system prune

# To map container port to localhost port and also to run node file
docker run -p localhost_port:container_port -it <image_id> node <file.js>
```

## Docker Volume
```bash
#create a volume
docker volume create <name of volume>

#List all volumes
docker volume ls

#Inspect a volume
docker volume inspect <volume-name>

# Attaching a volume to container
docker run -it --mount source = <name of volume>,target = <path to directory> -d <image-name>
```

### How to open container bash termminal
```bash
docker exec -u 0 -it <container_name> bash
```

### Copy file
```bash
#From host machine to a container
docker cp <file.txt> <container_name>:/<file.txt>

# From a container to a host machine
docker cp <container_name>:/<file.txt> <file.txt>
```

## Builds
```bash
# Build the image
docker build .

   OR
...........

# Build the image with custom repo and tag name
docker build . -t <custom_repo_name:custom_tag_name>
```

## Reference
```bash
https://gist.github.com/bradtraversy/89fad226dc058a41b596d586022a9bd3
```

### Push Docker Image to Github
```bash
# Tag the image
  docker tag IMAGE_ID docker.pkg.github.com/OWNER/REPOSITORY/IMAGE_NAME:VERSION
#Example
  docker tag 7f9cf7d38af5 docker.pkg.github.com/rranjan306/moviesdetails/angular8:0.0.1

#Push the image
  docker push docker.pkg.github.com/rranjan306/moviesdetails/angular8:0.0.1
```
