FROM alpine:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

# Install packages
RUN apk add \
		--update \
		--no-cache \
		ruby \
		ruby-dev \
		ruby-json \
		build-base \
		libffi-dev

# Install gems
RUN gem install --no-document \
		jekyll \
		bundler \
		jekyll-paginate

WORKDIR /source

COPY init.sh /opt/init.sh
COPY gemrc /root/.gemrc

# Environment
ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_PATH="$GEM_HOME" \
	BUNDLE_BIN="$GEM_HOME/bin" \
	BUNDLE_SILENCE_ROOT_WARNING=1 \
	BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH $BUNDLE_BIN:$PATH
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" \
	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"

# Server
EXPOSE 4000
CMD ["sh", "/opt/init.sh"]
