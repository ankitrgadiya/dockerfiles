FROM alpine:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

RUN apk --update --no-cache add \
		make \
		py-pip \
	&& pip install sphinx

WORKDIR /sphinx
