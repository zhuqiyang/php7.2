#/bin/bash
/usr/bin/supervisord -c /etc/supervisord.conf &
/usr/sbin/php-fpm --nodaemonize --fpm-config /etc/php-fpm.conf &
/usr/sbin/nginx "-g" "daemon off;"
