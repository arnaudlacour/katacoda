## Get server status

A handy way to check on the server status summery

`docker exec -it ping-directory /opt/server/bin/status --summary`{{execute}}


## Search data

### Externally from the container

Search one of the sample users present in Ping Directory 

`docker exec -it ping-directory /opt/server/bin/ldapsearch -b dc=example,dc=com "(uid=user.0)"`{{execute}}


### Internally

The same command as above can be done in 3 easy steps

1. Grab an interactive shell

`docker exec -it ping-directory sh`{{execute}}

2. Issue the same command as before (without the docker call)

`/opt/server/bin/ldapsearch -b dc=example,dc=com "(uid=user.0)"`{{execute}}

3. Bonus points

close the interactive shell

`exit`{{execute}}

At the end of the day, how you use the tool is a matter of taste.

Whatever gets the job done.
