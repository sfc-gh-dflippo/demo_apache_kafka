#!/bin/bash

docker compose down -v
rm -r ./storage/*
mkdir -p {storage/zoo/data,storage/zoo/datalog,storage/kafka-1,storage/kafka-2,storage/kafka-3}

sed -e "s/EXTERNAL_HOSTNAME/${HOSTNAME}/g" connect-distributed-template.properties > connect-distributed.properties

docker compose up -d --force-recreate

sleep 30

curl -X POST -H "Content-Type:application/json" --data @sf-kafka-config.json http://${HOSTNAME}:8083/connectors

