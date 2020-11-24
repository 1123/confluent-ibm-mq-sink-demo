#!/bin/bash

set -e -u 

curl https://repo1.maven.org/maven2/com/ibm/mq/com.ibm.mq.allclient/9.0.4.0/com.ibm.mq.allclient-9.0.4.0.jar -o com.ibm.mq.allclient-9.0.4.0.jar

mv com.ibm.mq.allclient-9.0.4.0.jar $CONFLUENT_HOME/share/confluent-hub-components/confluentinc-kafka-connect-ibmmq-sink

confluent local services connect stop
confluent local services connect start
