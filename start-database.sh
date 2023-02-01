#!/bin/sh

docker run \
 --detach \
 --name some-mariadb \
 --env MARIADB_USER=example-user \
 --env MARIADB_PASSWORD=my_cool_secret \
 --env MARIADB_ROOT_PASSWORD=my-secret-pw \
 --env MARIADB_DATABASE=wordpress \
 -p 3306:3306 \
 -v `pwd`/mariadb-data:/var/lib/mysql \
  mariadb:latest
