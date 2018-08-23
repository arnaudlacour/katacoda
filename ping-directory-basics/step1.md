## Docker
You can verify that Docker is installed with 
`docker version`{{execute}}
and
`docker info`{{execute}}

Check that the Ping Directory image is present:
`docker images`{{execute}}

Without further ado, let's start a Ping Directory docker container!

## Run Ping Directory in Docker

Here is how:

`docker run -d -p 1389:1389       \
    --name ping-directory        \
    pingidentity/ping-directory:katacoda`{{execute}}

Docker will run the image that was pulled ahead of time.
This may take a few moments. Meanwhile...

## Look at live logs
You can look at the container starting up with this command:

`docker logs -f ping-directory`{{execute}}

Once the server is up and running, Ctrl-C out of the log tail.
You now have a running Ping Directory container, ready for the next steps...
