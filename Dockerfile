FROM arm32v7/alpine:3.17.2
RUN apk add --no-cache mysql-client mariadb-connector-c
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"