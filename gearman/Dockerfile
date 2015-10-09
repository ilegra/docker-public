FROM ubuntu:trusty

RUN apt-get update \
    && apt-get -y install gearman-tools gearman-job-server wget \
    && apt-get clean

RUN mkdir -p /opt/gearman/script && chown gearman /opt/gearman

WORKDIR /opt/gearman
COPY run.sh /opt/gearman/script/
RUN chmod +x /opt/gearman/script/run.sh

ENTRYPOINT [ "/opt/gearman/script/run.sh" ]
