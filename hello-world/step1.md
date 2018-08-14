This is your first step.

## Task

Here is how to start Ping Directory in a container

`docker run --name ping-directory \
           --publish 10389:389 \
           --publish 10443:443 \
           --detach \
           --env-file PingDirectory.lic \
           pingidentity/ping-directory:latest`{{execute}}

You can look at the container starting up with this command

`docker logs -f ping-directory`{{execute}}         

