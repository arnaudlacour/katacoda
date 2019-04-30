### Start PingFederate
`docker run -d              \
    -p 9031:9031             \
    -p 9999:9999             \
    --name pingfederate     \
    --env SERVER_PROFILE_URL=https://github.com/pingidentity/pingidentity-server-profiles.git \
    --env SERVER_PROFILE_PATH=getting-started/pingfederate \
    --env SERVER_PROFILE_PARENT=LICENSE \
    --env SERVER_PROFILE_LICENSE_URL=https://github.com/pingidentity/pingidentity-server-profiles.git \
    --env SERVER_PROFILE_LICENSE_PATH=licenses/pingfederate \
    pingidentity/pingfederate`{{execute}}

### Look at live logs
You can look at the pingfederate container starting up with this command:
`docker logs -f pingfederate`{{execute}}
Once the server is up and running, Ctrl-C out of the log tail.
You now have a running PingFederate container, you are ready for the next step...
