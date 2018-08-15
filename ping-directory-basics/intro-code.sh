#!/bin/sh -x
docker pull pingidentity/ping-directory:katacoda &
docker run -d -p 8080:8080 --name ping-console tomcat:alpine
docker exec -it ping-console "cd /user/local/tomcat/webapps/ ; curl -k https://extensions.ping.directory/console.war -o console.war"
