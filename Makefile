start:
	docker-compose up -d
	docker-compose logs -f
build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose down --remove-orphans
composer-install:
	docker exec php composer install
