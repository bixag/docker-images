ARG BASE_IMAGE=redis:7.2.8
FROM ${BASE_IMAGE}

LABEL org.opencontainers.image.authors="Gabriel Felvinczi <gabriel@bixag.com>"

COPY redis.conf /usr/local/etc/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis.conf" ]