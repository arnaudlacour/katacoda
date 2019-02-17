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

### Create a network
This ensures that the different containers can communicate with each other
`docker network create pingnet`{{execute}}

### Start PingDirectory
`docker run -d              \
    -p 1389:389             \
    -p 1443:443             \
    --network pingnet       \
    --name pingdirectory    \
    -e SERVER_PROFILE_URL=git@github.com:pingidentity/server-profile-pingdirectory-basic.git \
    pingidentity/ping-directory`{{execute}}

### Start the admin console
`docker run -d              \
    -p 8080:8080            \
    --network pingnet       \
    --name pingdataconsole  \
    pingidentity/pingdataconsole`{{execute}}

## Look at live logs
You can look at the container starting up with this command:

`docker logs -f pingdirectory`{{execute}}

Once the server is up and running, Ctrl-C out of the log tail.
You now have a running Ping Directory container, ready for the next steps...
