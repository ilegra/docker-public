FROM ilegra/java:8

WORKDIR /var/lib

RUN wget -c http://mirror.nbtelecom.com.br/apache/activemq/activemq-apollo/1.7.1/apache-apollo-1.7.1-unix-distro.tar.gz && \
    tar -zxvf apache-apollo-1.7.1-unix-distro.tar.gz && \
    rm apache-apollo-1.7.1-unix-distro.tar.gz

RUN apache-apollo-1.7.1/bin/apollo create mybroker

WORKDIR /var/lib/mybroker

CMD bin/apollo-broker run

EXPOSE 61613 61614 61623 61624 61680 61681