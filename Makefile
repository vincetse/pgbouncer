image = pgb

build:
	docker build --rm -t $(image) .

shell:
	docker run --rm -it $(image) /bin/sh

clean:
	docker rm -f $(docker ps -qa)

pool:
	PGHOST=127.0.0.1 \
	PGPORT=15432 \
	PGUSER=postgres \
	PGPASSWORD=p0stgres \
	PGDATABASE=db \
	psql

direct:
	PGHOST=127.0.0.1 \
	PGPORT=25432 \
	PGUSER=postgres \
	PGPASSWORD=p0stgres \
	PGDATABASE=db \
	psql
