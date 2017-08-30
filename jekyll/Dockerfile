FROM debian:latest
MAINTAINER Ankit R Gadiya <me@argp.in>


# Install required packages
RUN apt-get update && apt-get install -y \
		ruby \
		ruby-dev \
		build-essential 


# Install gems
RUN gem install \
		jekyll \
		bundle

WORKDIR /source

# Add script
COPY init.sh /opt/init.sh

# Server
EXPOSE 4000
CMD ["sh", "/opt/init.sh"]
