FROM alpine:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

# Install Packages
RUN apk add --update --no-cache nginx

ADD init.sh /opt/init.sh
ADD server.conf /etc/nginx/conf.d/server.conf

RUN rm /etc/nginx/conf.d/default.conf

# Server
EXPOSE 80
CMD ["sh", "/opt/init.sh"]
