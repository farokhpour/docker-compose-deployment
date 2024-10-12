#! /bin/bash
if [[ "$(docker images -q alpine:3.19.1  2> /dev/null)" == "" ]]; then
    docker load < /root/images/alpine-3.19.1.tar &&
    echo "alpine:3.19.1 imported"
fi
if [[ "$(docker images -q nginx:1.25.4-alpine3.18 2> /dev/null)" == "" ]]; then
    docker load < /root/images/nginx-1.25.4-alpine3.18.tar &&
    echo "nginx:1.25.4-alpine3.18 imported"
fi
if [[ "$(docker images -q mariadb:11.1.4 2> /dev/null)" == "" ]]; then
    docker load < /root/images/mariadb-11.1.4.tar &&
    echo "mariadb:11.1.4 imported"
fi
if [[ "$(docker images -q redis-alpine:3.19.tar 2> /dev/null)" == "" ]]; then
    docker load < /root/images/redis-alpine-3.19.tar &&
    echo "redis:alpine3.19 imported"
fi
if [[ "$(docker images -q rabbitmq:management-alpine 2> /dev/null)" == "" ]]; then
    docker load < /root/images/rabbitmq-management-alpine.tar &&
    echo "rabbitmq:management-alpine imported"
fi
if [[ "$(docker images -q php:8.3-custom  2> /dev/null)" == "" ]]; then
    docker load < /root/images/php-8.3-custom.tar &&
    echo "php:8.3-custom"
fi
