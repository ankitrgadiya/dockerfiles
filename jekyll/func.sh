#! /bin/bash

# Helper Function for Jekyll Docker Image.
# Place this file in appropriate location and then
# source it in .bashrc to enable surge command.

jekyll ()
{
	docker run \
		--name jekyll \
		--rm \
		-it \
		-v `pwd`:/source \
		-p 4000:4000 \
		jekyll:latest \
		"$@"
}
