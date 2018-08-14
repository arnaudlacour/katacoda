This is your first step.

## Run Ping Directory in Docker

Here is how to start Ping Directory in a container

`docker run -d -p 1389:389 \
    --name ping-directory \
    --env-file PingDirectory.lic \
    pingidentity/ping-directory:latest`{{execute}}

Docker will download the Ping Directory image and run it.

## Look at live logs
You can look at the container starting up with this command:

`docker logs -f ping-directory`{{execute}}

Once the server is up and running, Ctrl-C out of the log tail.
You now have a running Ping Directory container, ready for the next steps...