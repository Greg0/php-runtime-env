build:
	docker build -t greg0/php-runtime-env:$(image) images/$(image)

push: build
	docker push greg0/php-runtime-env:$(image)
