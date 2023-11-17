#!bin/sh

sed -i "s|bind 127.0.0.1|bind 0.0.0.0 -::1|g"  /etc/redis.conf && \
    sed -i "s|# maxmemory <bytes>|maxmemory 20mb|g"  /etc/redis.conf && \
    echo "maxmemory-policy allkeys-lru" >> /etc/redis.conf
    