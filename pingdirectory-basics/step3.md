## Get server status

A handy way to check on the server status summery

`docker exec -it root_pingdirectory_1 status --summary`{{execute}}


## Search data

Search one of the sample users present in PingDirectory 

`docker exec -it root_pingdirectory_1 ldapsearch -b dc=example,dc=com "(uid=user.0)"`{{execute}}
