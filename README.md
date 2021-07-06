# php7.2

### php7.2+swoole+ssh2+yaml+php-fpm+nginx

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这是一个运行php的dockerfile及相关文件，使用centos7作为基础进行，并安装了swoole、ssh2、yaml三个php组件，官方的php镜像中没有安装这些插件，但是很多时候需要这些组件。其中nginx的配置依照运行ThinkPHP3.2来配置的，需要修改直接将自己的配置挂到对应的nginx配置目录即可，部署代码只要将项目目录挂载到 /var/www/html目录即可。

#### 构建镜像：
```console
docker build -t php7.2:0.1 .
```
#### 运行：
```console
docker run --name php7.2 -d -p 80:80 -p 443:443 -v /var/www/html:/var/www/html php7.2:0.1
```
#### 使用已经构建好的镜像：
```console
docker run --name php7.2 -d -p 80:80 -p 443:443 -v /var/www/html:/var/www/html zhuqiyang/php7.2:0.2
```
输入日志到标准输出。
