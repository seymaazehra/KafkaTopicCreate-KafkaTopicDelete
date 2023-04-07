#!/bin/bash
kafkaIP=""
yenicount=0
SECONDS=0



#read -p "Enter kafkaIP " kafkaIP	
#read -p "Enter yenicount " yenicount





let yenicount++   
echo "Deleting" $yenicount"-TopicName Topic..." 
./kafka-topics.sh  --bootstrap-server  $kafkaIP:9092 --delete --topic TopicName