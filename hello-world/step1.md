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

Once the server is up and running, Ctrl-C out of the log tail and you may excercize it with this command:

`docker exec -it ping-directory \
        /opt/server/bin/searchrate \
                -b dc=example,dc=com \
                --scope sub \
                --filter "(uid=user.[1-9999])" \
                --attribute mail \
                --numThreads 10 \
                --ratePerSecond 1000`{{execute}}