FROM ilegra/java:8

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /src
CMD [ "gradle", "tasks" ]

RUN mkdir -p /app /src

ENV GRADLE_VERSION 2.9

RUN apt-get update && apt-get install -y unzip

ADD https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip /tmp/gradle.zip
RUN cd /tmp \
	&& unzip gradle.zip \
	&& rm -vf gradle.zip \
	&& mv gradle-${GRADLE_VERSION}/ /gradle \
	&& ln -s /gradle/bin/gradle /bin/gradle
