FROM ubuntu:14.04

RUN echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E56151BF && \
    apt-get update && \
    apt-get install -y \
    default-jdk \
    mesos \
    curl && \
    apt-get clean all

ADD ./target /chronos
ADD dataman_chronos.sh /
RUN chmod 777 /dataman_chronos.sh
WORKDIR /chronos

ENTRYPOINT ["/dataman_chronos.sh"]


