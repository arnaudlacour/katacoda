docker pull pingidentity/ping-directory:katacoda
docker pull tomcat:alpine
docker run -d -p 8080:8080 --name ping-console tomcat:alpine
docker cp console.war ping-console:/usr/local/tomcat/webapps/console.war