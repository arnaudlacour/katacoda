## Using the Administration Console
## Start the admin console container
`docker run -d --rm         \
    -p 8080:8080            \
    --network pingnet       \
    --name pingdataconsole  \
    pingidentity/pingdataconsole`{{execute}}

## Accessing the console
There are 3 fields on the login page of the administration console:

server: `pingdirectory`{{copy}}

user: `administrator`{{copy}}

password: `2FederateM0re`{{copy}}


You may go to the [administration console](https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/admin-console) and use it to explore the many features of PingDirectory.