docker run --rm --name docker_postgres -e POSTGRES_PASSWORD=123456 -d -v /tmp/postgres:/var/lib/postgresql/data postgres
docker cp './init.sql' docker_postgres:/tmp/init.sql
docker exec docker_postgres psql -U postgres -a -f '/tmp/init.sql' 
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' docker_postgres

