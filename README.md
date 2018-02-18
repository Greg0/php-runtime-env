If you are NOT going to use custom image `php` in docker-compose you should first build it with tag `greg0-php`, because other images extends it.

```
docker build -t greg0-php images/php
```

