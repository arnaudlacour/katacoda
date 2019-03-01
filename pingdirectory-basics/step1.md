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
    -e SERVER_PROFILE_URL=https://github.com/pingidentity/server-profile-pingidentity-getting-started.git \
    -e SERVER_PROFILE_PATH=pingdirectory \
    pingidentity/pingdirectory`{{execute}}

### Start the admin console
While the server is starting up in the background, issue this command:
`docker run -d              \
    -p 8080:8080            \
    --network pingnet       \
    --name pingdataconsole  \
    pingidentity/pingdataconsole`{{execute}}
This will start a separate container on the same docker network with the administration console.

### Look at live logs
You can look at the pingdirectory container starting up with this command:
`docker logs -f pingdirectory`{{execute}}
Once the server is up and running, Ctrl-C out of the log tail.
You now have a running Ping Directory container, you are ready for the next step...


