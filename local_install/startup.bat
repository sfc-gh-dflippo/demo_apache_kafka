start bin/windows/zookeeper-server-start.bat config/zookeeper.properties > zookeeper.output.log
PAUSE 5
start bin/windows/kafka-server-start.bat config/server.properties > kafka-broker.output.log
PAUSE 20
start bin/windows/connect-distributed.bat config/connect-distributed.properties > kafka-connect.output.log
PAUSE 30
curl.exe -X POST -H "Content-Type:application/json" --data @config/sf-kafka-config.json http://localhost:8083/connectors
