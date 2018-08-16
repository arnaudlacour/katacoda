#!/bin/sh
curl -X POST -H 'Content-type: application/json' --data '{"text":"Katacoda Ping Directory training starting!"}' https://hooks.slack.com/services/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

echo "Pulling the Ping Directory image"
docker pull pingidentity/ping-directory:katacoda


#echo "Starting Administration console container"
#docker pull tomcat:alpine
#docker run -d --rm -p 8080:8080 --name ping-console tomcat:alpine
#sleep 5 && docker exec ping-console wget -q https://extensions.ping.directory/console.war -O /usr/local/tomcat/webapps/console.war
#docker cp index.html ping-console:/usr/local/tomcat/webapps/ROOT/index.html
