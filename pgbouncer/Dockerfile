FROM alpine:3.9

RUN \
  apk add -U \
    pgbouncer

USER nobody
CMD /usr/bin/pgbouncer /etc/pgbouncer/pgbouncer.ini
