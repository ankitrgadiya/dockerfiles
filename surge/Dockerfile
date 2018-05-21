FROM alpine:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

WORKDIR /www

RUN apk --update --no-cache add \
		nodejs \
		nodejs-npm \
	&& npm install --global surge

COPY init.sh /opt/init.sh
ENTRYPOINT ["/opt/init.sh"]
