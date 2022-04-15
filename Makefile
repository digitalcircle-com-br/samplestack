up:
	docker-compose -p sample up
down:
	docker-compose -p sample down -t 3

daemon:
	docker-compose -p sample up -d 

alld:
	docker-compose up --force-recreate --build -d
	docker image prune -f

all:
	docker-compose up --force-recreate --build
	docker image prune -f

load:
	redis-cli -x set compass < compass.yaml