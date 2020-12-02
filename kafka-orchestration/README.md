# Kafka Orchestration

Kafka is orchestrated in this project. Currently only docker-compose mode is supported.

### Orchestrated Components


*   Zookeeper
*   Kafka
* 	Kafka Schema Registry
*	Kafka REST Proxy
*   Landoop Topic UI

Now up the containers.

    docker-compose -f kafka-orchestration/docker-compose.yml
    
Landoop ui will be available at [http://localhost:8000](http://localhost:8000)

