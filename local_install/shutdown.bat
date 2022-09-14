curl -X PUT http://localhost:8083/connectors/snowflake_cas2_connector/pause
PAUSE 5
bin/windows/kafka-server-stop.bat
PAUSE 30
bin/windows/zookeeper-server-stop.bat
