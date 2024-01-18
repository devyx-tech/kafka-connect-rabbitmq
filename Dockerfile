FROM confluentinc/cp-server-connect:7.5.1
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:10.7.1
RUN confluent-hub install --no-prompt debezium/debezium-connector-postgresql:2.1.4

COPY ./target/components/packages/themeetgroup-kafka-connect-rabbitmq-0.1.0/themeetgroup-kafka-connect-rabbitmq-0.1.0 /usr/share/kafka-connectors/themeetgroup-kafka-connect-rabbitmq-0.1.0

CMD [ "/etc/confluent/docker/run" ]
