FROM alpine:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

# Install packages
RUN apk add --update --no-cache \
		ruby \
		git \
		ruby-rdoc \
		icu-libs \
	&& apk add --update --no-cache --virtual build-deps \
		ruby-dev \
		build-base \
		zlib-dev \
		icu-dev  \
	&& gem install --no-document gollum \
	&& apk del build-deps && rm -rf /var/cache/apk/*

COPY init.sh /opt/init.sh

WORKDIR /wiki

# Server
EXPOSE 4567
CMD ["sh", "/opt/init.sh"]
