Docker-compose
==============

If you are NOT going to use custom image `php` in docker-compose you should first build it with tag `greg0-php`, because other images extends it.

```
docker build -t greg0-php images/php
```

Put your PHP application into `/src` directory. 

Then build and start containers

```
docker-composer build
docker-compose up
```

Composer
========

To run composer with right file permissions inside container exec

```
docker exec -u $(id -u):$(id -g) project_dir_php_1 composer install
```

or use official composer image https://store.docker.com/images/composer
