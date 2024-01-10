project_name = $(notdir $(CURDIR))
ifndef php
override php = 8.1 # default latest image PHP version
endif

start:
	PHP_VERSION=$(php) \
	docker-compose \
	-p ${project_name} \
	-f compose/docker-compose.yml \
	up \
	-d

debug:
	PHP_VERSION=$(php) \
	docker-compose \
	-p ${project_name} \
	-f compose/docker-compose.yml \
	-f compose/docker-compose-xdebug.yml \
	up \
	-d

stop:
	docker-compose \
	-p ${project_name} \
	-f compose/docker-compose.yml \
	stop

build:
	docker build -t greg0/php-runtime-env:$(image) images/$(image)

push: build
	docker push greg0/php-runtime-env:$(image)

build-all:
	make build image=nginx
	make build image=php5.6
	make build image=php5.6-dev
	make build image=php7.2
	make build image=php7.2-dev
	make build image=php7.3
	make build image=php7.3-dev
	make build image=php7.4
	make build image=php7.4-dev
	make build image=php8.0
	make build image=php8.0-dev
	make build image=php8.1
	make build image=php8.1-dev
	make build image=php8.2
	make build image=php8.2-dev

push-all:
	make push image=nginx
	make push image=php5.6
	make push image=php5.6-dev
	make push image=php7.2
	make push image=php7.2-dev
	make push image=php7.3
	make push image=php7.3-dev
	make push image=php7.4
	make push image=php7.4-dev
	make push image=php8.0
	make push image=php8.0-dev
	make push image=php8.2
	make push image=php8.2-dev
