FROM alpine:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

# Install packages
RUN apk update \
		\
		&& apk add --update --no-cache \
		ruby \
		git \
		ruby-rdoc \
		icu-libs \
		\
		&& apk add --update --no-cache --virtual build-deps \
		ruby-dev \
		build-base \
		zlib-dev \
		icu-dev 

# Install gollum
RUN gem install --no-document gollum

# Cleaning up
RUN apk del build-deps && rm -rf /var/cache/apk/*

COPY init.sh /opt/init.sh

WORKDIR /wiki

# Server
EXPOSE 4567
CMD ["sh", "/opt/init.sh"]
