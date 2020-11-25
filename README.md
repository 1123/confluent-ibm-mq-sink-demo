# Confluent IBM MQ Sink Connector Demo

Demo Project for IBM MQ Sink Connector from Confluent Based on the Official Docs: https://docs.confluent.io/kafka-connect-ibmmq-sink/current/index.html

Running the demo: 

* Start the IBM MQ docker container: `./start-ibm-mq-in-docker.sh`
* Download and unzip Confluent Platform
* export CONFLUENT_HOME environment variable to point to your CP installation
* Download the IBM MQ client jar: `./get-client-jar.sh`. 
  This will copy the jar to the Confluent IBM MQ Sink Connector directory, and start zookeeper, kafka and the connect worker. 
* visit `https://localhost:9443/ibmmq/console/` and get the IBM Queue Manager Name of your IBM MQ docker container. 
* Adjust the queue manager name in the `ibmmq-sink.json` connector configuration. 
* Start the connector: `post-connector.sh` .
* Check the connector status: `get-connector-status.sh`
* Check the connect logs
* Produce some sample messages: `produce-messages.sh`
* Check that data arrives within the `DEV.QUEUE.1` queue.

