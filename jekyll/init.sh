#! /bin/sh

# Check dependencies
bundle check || bundle install

# Server
bundle exec jekyll serve \
	--destination /www \
	--port 4000 \
	--host 0.0.0.0
