### Start the admin console
While the server is starting up in the background, issue this command:

`docker-compose up -d pingdataconsole`{{execute}}

This will start a separate container on the same docker network with the administration console.
We'll get to this in a few steps.

### Start PingDirectory
`docker-compose up -d pingdirectory`{{execute}}

### Check it's starting
`docker ps`{{execute}}

### Look at live logs
You can look at the pingdirectory container starting up with this command:
`docker logs -f root_pingdirectory_1`{{execute}}

Once the server is up and running, Ctrl-C out of the log tail.
You now have a running PingDirectory service with one container, you are ready for the next step...