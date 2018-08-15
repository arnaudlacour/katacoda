#!/bin/sh
echo "Pulling the Ping Directory image"
docker pull pingidentity/ping-directory:katacoda &

echo "Starting Administration console container"
docker run -d -p 8080:8080 --name ping-console tomcat:alpine
sleep 30 && docker exec ping-console wget -q https://extensions.ping.directory/console.war -o /usr/local/tomcat/webapps/console.war
