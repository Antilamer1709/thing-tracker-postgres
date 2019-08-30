# thing-tracker-postgres
Postgres DB in docker container for https://github.com/Antilamer1709/thing-tracker


# To run DB:
docker run --name my_postgres -p 5432:5432 -e POSTGRES_USER=antilamer -e POSTGRES_PASSWORD=antilamer -e POSTGRES_DB=thing_tracker antilamer/postgres:tracker1.1

# To save data just add a volume:
-v my_dbdata:/var/lib/postgresql/data

docker run --name my_postgres -d -v /my_dbdata:/var/lib/postgresql/data -p 5432:5432 -e POSTGRES_USER=antilamer -e POSTGRES_PASSWORD=antilamer -e POSTGRES_DB=thing_tracker antilamer/postgres:tracker1.1

# To restore backup (deprecated):
since adding flyway it won't work anymore
docker exec my_postgres pg_restore -U antilamer -d thing_tracker tracker_backup
