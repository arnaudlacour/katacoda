Without further ado, let's start a Ping Directory docker container!

## Run Ping Directory in Docker

Here is how:

`docker run -d -p 1389:389       \
    --name ping-directory        \
    --env-file PingDirectory.lic \
    --env KATACODA=TRUE          \
    pingidentity/ping-directory:katacoda`{{execute}}

Docker will download the Ping Directory image and run it.
This may take a few moments. Meanwhile...

## Look at live logs
You can look at the container starting up with this command:

`docker logs -f ping-directory`{{execute}}

Once the server is up and running, Ctrl-C out of the log tail.
You now have a running Ping Directory container, ready for the next steps...
