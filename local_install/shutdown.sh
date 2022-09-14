curl -X PUT http://localhost:8083/connectors/snowflake_cas2_connector/pause
sleep 5
bin/kafka-server-stop.sh
sleep 30
bin/zookeeper-server-stop.sh
