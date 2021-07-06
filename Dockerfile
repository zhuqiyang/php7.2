FROM centos:centos7

RUN yum install epel-release -y && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm \
&& yum -y remove php* \
&& yum -y install php72w php72w-cli php72w-fpm php72w-common php72w-devel php72w-embedded php72w-gd php72w-mbstring php72w-mysqlnd php72w-opcache php72w-pdo php72w-xml php72w-devel php72w-pear \
&& yum install gcc make autoconf libc-dev pkg-config openssl openssl-devl glibc-headers gcc-c++ gcc-g77 libyaml-devel libssh2 libssh2-devel -y 

RUN sh -c '/bin/echo -e "\n" | sh pecl install ssh2-1.0' && sh -c '/bin/echo "extension=ssh2.so" > /etc/php.d/ssh2.ini' \
&& sh -c '/bin/echo -e "\n" | sh pecl install yaml' && sh -c '/bin/echo "extension=yaml.so" > /etc/php.d/yaml.ini' \
&& sh -c '/bin/echo -e "\nyes\nyes\nyes\nyes" | sh pecl install swoole' && sh -c '/bin/echo "extension=swoole.so" > /etc/php.d/swoole.ini'

RUN yum install nginx -y && yum install supervisor -y && yum install net-tools -y

COPY run.sh /root/
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80 443

CMD ["sh","/root/run.sh"]
