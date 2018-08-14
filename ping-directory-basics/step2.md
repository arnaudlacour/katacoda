## Search data
Search one of the sample users present in Ping Directory 
`docker exec -it ping-directory /opt/server/bin/ldapsearch -b dc=example,dc=com (uid=user.0)`{{execute}}

## Modify data
Alter one of the attributes of a user
`docker exec -it ping-directory /opt/server/bin/ldapmodify <<END
dn: uid=user.0,ou=people,dc=example,dc=com
changetype: modify
replace: description
description: this is a new description from katacoda

END`{{execute}}


## Observer the change
issue the same search as in the first phase 