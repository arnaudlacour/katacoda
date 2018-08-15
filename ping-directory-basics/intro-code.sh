#!/bin/sh -x
docker run -d -p 8080:8080 --name ping-console tomcat:alpine
docker cp console.war ping-console:/usr/local/tomcat/webapps/console.war