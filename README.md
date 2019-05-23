# Jenkins as Code as fast as possible

##### A minimal description of what is required to create, install and configure jenkins in a single command inside a docker container.

## How to run

The simplest way to run is by use of docker-compose where you simply call `docker-compose up -d` in the directory for a detached container.

Alternatively, docker can be directly utilised like so:

```
docker build -t jenkinsCasC .
docker run -p 8080:8080 jenkinsCasC
```