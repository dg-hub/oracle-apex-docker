# oracle-apex-docker
Oracle Apex Docker Container

## Docker Base Image
This project requires the base docker image to be created first
 - `DOCKER_USERNAME=<username>`
 - `git clone https://github.com/oracle/docker-images/tree/main/OracleDatabase`
 - `./docker-images/OracleDatabase/SingleInstance/dockerfiles/buildContainerImage.sh -x -v 18.4.0`
 - `docker tag oracle/database ${DOCKER_USERNAME}/oracle-database`
 - `docker tag oracle/database ${DOCKER_USERNAME}/oracle-database`

## Instructions
 - Pull Oracle Base Image
   - `docker pull <username>/oracle-database:18.4.0-xe`
 - Run the installer 
   - `git clone https://github.com/dg-hub/oracle-apex-docker.git`
   - `./oracle-apex-docker/run.sh`
