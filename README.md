# thing-tracker-postgres
Postgres DB in docker container for https://github.com/Antilamer1709/thing-tracker


# To run DB:
docker run --name my_postgres -p 5432:5432 -e POSTGRES_USER=antilamer -e POSTGRES_PASSWORD=antilamer -e POSTGRES_DB=thing_tracker antilamer/postgres:11

# To save data just add:
-v my_dbdata:/var/lib/postgresql/data

like: docker run --name my_postgres -d -p 5432:5432 -e POSTGRES_USER=antilamer -e POSTGRES_PASSWORD=antilamer -e POSTGRES_DB=thing_tracker -v my_dbdata:/var/lib/postgresql/data antilamer/postgres:11

# To restore backup:
docker exec my_postgres pg_restore -U antilamer -d thing_tracker tracker_backup
