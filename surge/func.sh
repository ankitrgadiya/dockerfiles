#! /bin/bash

# Helper Function for Surge Docker Image.
# Place this file in appropriate location and then
# source it in .bashrc to enable surge command.

surge ()
{
	docker run \
		--name surge \
		--rm \
		-it \
		-v `pwd`:/www \
		-v $HOME/.netrc:/root/.netrc:ro \
		surge:latest \
		"$@"
}
