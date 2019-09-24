#!/usr/bin/env bash 
domain="environments.katacoda.com"
id=${1}
name=${name}

PWD_FILE=.pwd

certifiedHostname="${id}-80-${name}.${domain}"
docker run \
    -v /tmp/certs:/acme.sh \
    --net host \
    -t \
    --rm neilpang/acme.sh \
    --issue \
    --standalone \
    -d ${certifiedHostname}

cd /tmp/certs/${certifiedHostname}
echo "${2:-2FederateM0re}" > ${PWD_FILE}
chmod 600 ${PWD_FILE}

openssl pkcs12 \
    -export \
    -in fullchain.cer \
    -inkey ${certifiedHostname}.key \
    -out keystore.p12 \
    -passout file:${PWD_FILE} \
    -name server-cert

keytool -importkeystore \
	-destkeystore keystore \
	-deststoretype JKS \
	-deststorepass $( cat ${PWD_FILE} ) \
	-srckeystore keystore.p12 \
	-srcstoretype PKCS12 \
	-srcstorepass $( cat ${PWD_FILE} ) \
	-noprompt

keytool -import \
	-keystore keystore \
	-storepass $( cat ${PWD_FILE} ) \
	-file fullchain.cer \
	-alias letsencrypt-CA \
	-trustcacerts \
	-noprompt

keytool -import \
	-keystore truststore \
	-storepass $( cat ${PWD_FILE} ) \
	-file fullchain.cer \
	-alias letsencrypt-CA \
	-trustcacerts \
	-noprompt

mkdir -p /tmp/pingdirectory/in/instance/config/
cp keystore truststore /tmp/pingdirectory/in/instance/config/
cp .pwd /tmp/pingdirectory/in/instance/config/keystore.pin
cp .pwd /tmp/pingdirectory/in/instance/config/truststore.pin
chmod 400 cp .pwd /tmp/pingdirectory/in/instance/config/*.pin

mkdir -p /tmp/pingdataconsole/in
cp keystore /tmp/pingdataconsole/in/keystore
