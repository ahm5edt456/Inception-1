FROM alpine:3.23

RUN apk update && \
    apk add --on-cache mariadb mariadb-client

COPY conf/50-server.cnf /etc/my.cnf.d/

COPY tools/mariadb-init.sh /usr/local/bin/mariadb-init.sh

RUN chmod +x /usr/local/bin/mariadb-init.sh

EXPOSE 3306

ENTRYPOINT["/usr/local/bin/mariadb-init.sh"]
