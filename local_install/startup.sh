bin/zookeeper-server-start.sh config/zookeeper.properties > zookeeper.output.log &
sleep 5
bin/kafka-server-start.sh config/server.properties > kafka-broker.output.log &
sleep 20
bin/connect-distributed.sh config/connect-distributed.properties > kafka-connect.output.log &
sleep 30
curl -X POST -H "Content-Type:application/json" --data @config/sf-kafka-config.json http://localhost:8083/connectors