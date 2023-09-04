# Containerized PostgreSQL 15 with pg_cron
Containerized PostgreSQL 15 with pg_cron extension pre-installed.


## Build
```
$ podman build . -t db
```

## Run
```
$ podman run --network host  -e POSTGRES_PASSWORD=postgres db
```

## Activate `pg_cron`
Connect to the database and run:
```
# CREATE EXTENSION pg_cron;
```
