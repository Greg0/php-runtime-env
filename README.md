Image build
===========

```shell
make build image=8.0
```

Docker-compose
==============

Put your PHP application into `src/` and public files (e.g. `index.php`) into `src/public/`

There are scripts to automate using repo:

* `scripts/compose-up.sh` - launching containers

Files organization
==================

Nginx listening for files in `src/public/` on port `8080`.

Composer
========

To run composer inside container exec

```
docker exec -it project_dir_php_1 composer install
```

or use official composer image https://store.docker.com/images/composer

> Note: Official composer image is used unside `php` container.

Permissions in linux volumes
===========================

For fresh docker installation read [Post-installation steps for Linux](https://docs.docker.com/install/linux/linux-postinstall/)

To avoid permissions issues follow instructions from article 
"[Use Linux user namespaces to fix permissions in docker volumes](https://www.jujens.eu/posts/en/2017/Jul/02/docker-userns-remap/)"

#### TL;DR;

Word `USER` in listings should be replaced by your system user name: `id -u -n`


1. Create or add to existing file `/etc/docker/daemon.json`

```javascript
{
    "userns-remap": "USER"
}
```

2. Edit file `/etc/subuid`

```
USER:1000:1
USER:100000:65536
```


3. Edit file `/etc/subgid`

```
USER:996:1
USER:100000:65536
```

Replace `996` with value returned by command `getent group docker`

---

Instead of above you can also often run

```shell
chown $(id -un) -R .
```
