# oracle-apex-docker
Oracle Application Express (Apex) Docker Container for Azure Container Instances

To deploy the following steps are required:
 - Clone the official Oracle Repo to build Oracle Database XE
 - Run buildContainerImage script to build the image
 - Tag the image with your dockerhub.io username
 - Push the image to DockerHub
 - Run `az container create` (in `deploy.sh` file) - it does the following
   - Download/Unzip/Install Apex
   - Download/Unzip/Install ORDS


## Docker Base Image
This project requires the base docker image to be created first
 - `DOCKER_USERNAME=<username>`
 - `git clone https://github.com/oracle/docker-images/tree/main/OracleDatabase`
 - `./docker-images/OracleDatabase/SingleInstance/dockerfiles/buildContainerImage.sh -x -v 18.4.0`
 - `docker tag oracle/database ${DOCKER_USERNAME}/oracle-database`
 - `docker push ${DOCKER_USERNAME}/oracle-database`

## Instructions
 - Pull Oracle Base Image
   - `docker pull <username>/oracle-database:18.4.0-xe`
 - Run the deployment script 
   - `git clone https://github.com/dg-hub/oracle-apex-docker.git`
   - `./oracle-apex-docker/deploy.sh`
