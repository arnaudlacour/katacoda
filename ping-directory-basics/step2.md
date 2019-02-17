## Get server status

A handy way to check on the server status summery

`docker exec -it pingdirectory /opt/out/instance/bin/status --summary`{{execute}}


## Search data

### Externally from the container

Search one of the sample users present in Ping Directory 

`docker exec -it pingdirectory /opt/out/instance/bin/ldapsearch -b dc=example,dc=com "(uid=user.0)"`{{execute}}


### Internally

The same command as above can be done in 3 easy steps

1. Grab an interactive shell

`docker exec -it pingdirectory sh`{{execute}}

2. Issue the same command as before (without the docker call)

`/opt/out/instance/bin/ldapsearch -b dc=example,dc=com "(uid=user.0)"`{{execute}}

3. Return to the host shell

close the docker interactive shell

`exit`{{execute}}

At the end of the day, how you use the tool is a matter of taste.

Whatever gets the job done.
