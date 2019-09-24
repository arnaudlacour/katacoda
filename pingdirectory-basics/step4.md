## Loading the server with synthetic traffic

PingDirectory comes with several tools to help in sizing excercises, like searchrate:

`docker exec -it pingdirectory searchrate \
	-b dc=example,dc=com \
	--scope sub \
	--filter "(uid=user.[0-4])" \
	--attribute mail \
	--numThreads 2 \
	--numIntervals 4 \
	--ratePerSecond 10`{{execute}}

This is primarily aimed at getting a sense of the read performance when testing a new platform for example.


## Making bulk changes

PingDirectory also has a tool to load the server with write traffic, called modrate:

`docker exec -it pingdirectory modrate \
	--entryDN "uid=user.[0:4],ou=people,dc=example,dc=com" \
	--attribute description \
	--valueLength 8 \
	--numThreads 2	\
	--numIntervals 4 \
	--ratePerSecond 10`{{execute}}

Look at response time, throughput, consistency and get familiar with this output


### Take a look at the changes

Issuing this command, you can verify that the description attribute was modified 

`docker exec -it root_pingdirectory_1 ldapsearch -b dc=example,dc=com "(uid=user.0)" description`{{execute}}


## Measuring authentication performance
Another tool, to get a feel authentication latency and throughput
`docker exec -it root_pingdirectory_1 authrate \
	--baseDN dc=example,dc=com --scope sub \
	--filter "(uid=user.[0-4])"\
	--credentials 2FederateM0re \
	--numThreads 2 \
	--numIntervals 4 \
	--ratePerSecond 4`{{execute}}