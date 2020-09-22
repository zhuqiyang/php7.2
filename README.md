# php7.2

### php7.2+swoole+ssh2+yaml+php-fpm+nginx

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;就是一个普通的运行php的镜像，安装了swoole、ssh2、yaml三个插件，官方镜像中没有安装这些插件，nginx的配置依照运行ThinkPHP3.2来配置的，只要将代码目录挂载到镜像中的 /var/www/html 中即可。

#### 构建镜像：
```console
docker build -t php7.2:0.1 .
```
#### 运行：
```console
docker run --name php7.2 -d -p 80:80 -p 443:443 -v /var/www/html:/var/www/html php7.2:0.1
```
