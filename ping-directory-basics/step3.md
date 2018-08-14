## Reading en-masse
Ping Directory comes with several tools to help in sizing excercises, like searchrate:
`docker exec -it ping-directory /opt/server/bin/searchrate \
	-b dc=example,dc=com \
	--scope sub \
	--filter "(uid=user.[0-9999])" \
	--attribute mail \
	--numThreads 2 \
	--ratePerSecond 50`{{execute}}

## Updating en-masse
