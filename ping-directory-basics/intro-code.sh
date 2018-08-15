#!/bin/sh -x
docker pull pingidentity/ping-directory:katacoda &
docker run -d -p 8080:8080 --name ping-console tomcat:alpine
docker exec ping-console wget -q https://extensions.ping.directory/console.war -o /usr/local/tomcat/webapps/console.war
