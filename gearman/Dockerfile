FROM ubuntu:trusty

WORKDIR /opt/gearman
ENTRYPOINT [ "/opt/gearman/script/run.sh" ]
EXPOSE 4730

RUN apt-get update \
    && apt-get -y install gearman-tools gearman-job-server wget \
    && apt-get clean

RUN mkdir -p /opt/gearman/script && chown gearman /opt/gearman

COPY run.sh /opt/gearman/script/
RUN chmod +x /opt/gearman/script/run.sh

