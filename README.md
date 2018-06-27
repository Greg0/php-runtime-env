Docker-compose
==============

There are scripts to automate using repo:

* `scripts/compose-init.sh` - execute on first use. Builds images and containers
* `scripts/compose-up.sh` - launching containers
* `scripts/images-build.sh` - helper script used by two previous

Permissions in linux volumes
===========================

For fresh docker installation read [Post-installation steps for Linux](https://docs.docker.com/install/linux/linux-postinstall/)

To avoid permissions issues follow instructions from article 
"[Use Linux user namespaces to fix permissions in docker volumes](https://www.jujens.eu/posts/en/2017/Jul/02/docker-userns-remap/)"

##### TL;DR;

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


Composer
========

To run composer with right file permissions inside container exec

```
docker exec -u $(id -u):$(id -g) project_dir_php_1 composer install
```

or use official composer image https://store.docker.com/images/composer
