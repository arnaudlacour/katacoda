### Start the admin console
While the server is starting up in the background, issue this command:

`docker run -d --rm         \
    -p 8080:8080            \
    --network pingnet       \
    --name pingdataconsole  \
    pingidentity/pingdataconsole`{{execute}}

This will start a separate container on the same docker network with the administration console.
We'll get to this in a few steps.

### Start PingDirectory
`docker run -d --rm         \
    -p 1389:389             \
    -p 1443:443             \
    --network pingnet       \
    --name pingdirectory    \
    --env SERVER_PROFILE_URL=https://github.com/pingidentity/pingidentity-server-profiles.git \
    --env SERVER_PROFILE_PATH=getting-started/pingdirectory \
    --env SERVER_PROFILE_PARENT=LICENSE \
    --env SERVER_PROFILE_LICENSE_URL=https://github.com/arnaudlacour/katacoda.git \
    --env SERVER_PROFILE_LICENSE_PATH=licenses/pingdirectory \
    pingidentity/pingdirectory`{{execute}}

### Check it's starting
`docker ps`{{execute}}

### Look at live logs
You can look at the pingdirectory container starting up with this command:
`docker logs -f pingdirectory`{{execute}}

Once the server is up and running, Ctrl-C out of the log tail.
You now have a running PingDirectorycontainer, you are ready for the next step...