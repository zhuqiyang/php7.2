# php7.2

### php7.2+swoole+ssh2+yaml+php-fpm+nginx
```console
docker build -t php7.2:0.1 .
docker run --name php7.2 -d -p 80:80 -p 443:443 -v /var/www/html:/var/www/html php7.2:0.1
```
