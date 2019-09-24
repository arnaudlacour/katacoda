### Obtain certificates
`./obtain-certs.sh [[HOST_SUBDOMAIN]] [[KATACODA_HOST]]`{{execute}}

### Start PingDirectory
`export PF_PUBLIC_HOSTNAME=[[HOST_SUBDOMAIN]]-9031-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}
`docker-compose up -d`{{execute}}

### Check it's starting
`docker ps`{{execute}}

### Look at live logs
You can look at the pingdirectory container starting up with this command:
`docker logs -f root_pingdirectory_1`{{execute}}

Once the server is up and running, Ctrl-C out of the log tail.
You now have a running PingDirectory service with one container, you are ready for the next step...