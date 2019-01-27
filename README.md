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
# Build the image
docker build .

# Build the image with custom repo and tag name
docker build . -t <custom_repo_name>:<custom_tag_name>

# See docker images
docker images

# Run docker image
docker run -it <image_id> /bin/sh
```
