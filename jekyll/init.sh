#! /bin/sh

# Bundle check
bundle check || bundle install

bundle exec jekyll "$@"
