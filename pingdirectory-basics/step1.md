## Check Docker
You can verify that Docker is installed with 
`docker version`{{execute}}
and
`docker info`{{execute}}

Check that the PingDirectory image is present:
`docker images`{{execute}}

## Create a network
This ensures that the different containers can communicate with each other
`docker network create pingnet`{{execute}}
