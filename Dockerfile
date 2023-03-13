FROM arm32v7/alpine:3.17.2
RUN apk add --no-cache \
    mysql-client \
    mariadb-connector-c \
    bash \
    curl \
    bind-tools \
    busybox-extras
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"