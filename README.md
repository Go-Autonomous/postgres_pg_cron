# Containerized PostgreSQL 14 with pg_cron

## Build
```
$ podman build . -t db
```

## Run
```
$ podman run --network host  -e POSTGRES_PASSWORD=postgres db
```
