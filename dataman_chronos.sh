#!/bin/bash
java -Djava.library.path=/usr/local/lib:/usr/lib:/usr/lib64 \
    -Djava.util.logging.SimpleFormatter.format=%2$s%5$s%6$s%n $JAVA_OPTS \
    -cp /chronos/chronos*.jar org.apache.mesos.chronos.scheduler.Main \
    --master $CHRONOS_MASTER \
    --zk_hosts $CHRONOS_ZK_HOSTS \
    --hostname $CHRONOS_HOSTNAME \
    --http_port $CHRONOS_HTTP_PORT 

