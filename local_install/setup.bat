RMDIR /s /q kafka_2.13-3.2.1

curl.exe https://downloads.apache.org/kafka/3.2.1/kafka_2.13-3.2.1.tgz | tar.exe xzv
MKDIR kafka_2.13-3.2.1/connectors

curl.exe https://repo1.maven.org/maven2/org/apache/avro/avro/1.11.1/avro-1.11.1.jar --output kafka_2.13-3.2.1/libs/avro-1.11.1.jar
curl.exe https://repo1.maven.org/maven2/org/bouncycastle/bc-fips/1.0.2.3/bc-fips-1.0.2.3.jar --output kafka_2.13-3.2.1/libs/bc-fips-1.0.2.3.jar
curl.exe https://repo1.maven.org/maven2/org/bouncycastle/bcpkix-fips/1.0.6/bcpkix-fips-1.0.6.jar --output kafka_2.13-3.2.1/libs/bcpkix-fips-1.0.6.jar
curl.exe https://repo1.maven.org/maven2/net/snowflake/snowflake-jdbc/3.13.22/snowflake-jdbc-3.13.22.jar --output kafka_2.13-3.2.1/libs/snowflake-jdbc-3.13.22.jar

curl.exe https://repo1.maven.org/maven2/com/snowflake/snowflake-kafka-connector/1.8.1/snowflake-kafka-connector-1.8.1.jar --output kafka_2.13-3.2.1/connectors/snowflake-kafka-connector-1.8.1.jar

COPY connect-distributed.properties kafka_2.13-3.2.1/config
COPY startup.bat kafka_2.13-3.2.1
COPY shutdown.bat kafka_2.13-3.2.1
 