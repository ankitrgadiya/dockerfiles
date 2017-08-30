#! /bin/bash

# Check dependencies
bundle check || bundle install

# Server
bundle exec jekyll serve --destination /www --host 0.0.0.0 --port 4000
