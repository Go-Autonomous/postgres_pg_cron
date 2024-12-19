FROM docker.io/postgres:16
LABEL MAINTAINER Jan Meznik <jan.meznik@goautonomous.io>

RUN apt update
RUN apt -y install postgresql-16-cron

RUN echo "shared_preload_libraries = 'pg_cron'" >> /usr/share/postgresql/postgresql.conf.sample
RUN echo "cron.database_name = '${PG_CRON_DB:-postgres}'" >> /usr/share/postgresql/postgresql.conf.sample


