FROM ruby:slim

ENTRYPOINT ["/usr/local/bin/fakes3"]
CMD ["-r",  "/data", "-p",  "80", "-h", "0.0.0.0"]
EXPOSE 80

RUN mkdir -p /data \
	&& gem install fakes3 -v 0.1.5.2 --no-rdoc --no-ri --verbose
