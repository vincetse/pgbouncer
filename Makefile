image = pgb

build:
	docker build --rm -t $(image) .

shell:
	docker run --rm -it $(image) /bin/sh

clean:
	docker rm -f $(docker ps -qa)
