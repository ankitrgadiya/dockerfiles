#! /bin/sh

if [ ! -d "/run/nginx" ]
then
	mkdir /run/nginx
fi

nginx -g "daemon off;"
