FROM mysql:8.2
COPY ./init.sql /docker-entrypoint-initdb.d/

COPY ./my.cnf /etc/mysql/conf.d/custom.cnf

EXPOSE 3307

HEALTHCHECK --interval=5s --timeout=5s --retries=20 CMD mysqladmin ping -h localhost -uroot -p$MYSQL_ROOT_PASSWORD

VOLUME /var/lib/mysql
CMD ["mysqld"]