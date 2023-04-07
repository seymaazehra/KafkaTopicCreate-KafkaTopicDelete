kafka_topics_path=./kafka-topics.sh
kafka_topics_path2=./kafka-configs.sh
yenicount=0

let yenicount++
echo "Creating "$yenicount"-TopicName Topic..."
$kafka_topics_path --bootstrap-server $kafkaIP:9092 \
	  --create \
	    --topic TopicName\
	      --partitions 1 \
	        --replication-factor 1
$kafka_topics_path2  --bootstrap-server $kafkaIP:9092 --entity-type topics --entity-name TopicName --alter --add-config segment.ms=3600000,retention.ms=3600000
