docker run --name docker_postgres -e POSTGRES_PASSWORD=123456 -d -v /tmp/postgres:/var/lib/postgresql/data postgres
docker cp './init.sql' docker_postgres:/tmp/init.sql
docker exec -it docker_postgres psql -U postgres -a -f '/tmp/init.sql' 

