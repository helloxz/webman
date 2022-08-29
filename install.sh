#!/bin/sh

#更新软件
apk update
#安装timezone
apk add -U tzdata
#查看时区列表
ls /usr/share/zoneinfo
#拷贝需要的时区文件到localtime
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#查看当前时间
date
#为了精简镜像，可以将tzdata删除了
apk del tzdata
#安装PHP
apk add php7 php7-pdo_mysql php7-xml php7-xmlrpc php7-openssl php7-posix php7-pcntl php7-sqlite3 php7-pdo_sqlite php7-curl php7-json php7-session php7-phar php7-iconv php7-mbstring php7-fileinfo php7-exif php7-redis php7-gd php7-pecl-imagick-dev php7-pecl-imagick php7-mysqlnd php7-mysqli php7-ctype composer

#更名PHP配置文件
mv /etc/php7/php.ini /etc/php7/php.ini.bak


#复制配置文件
cp /root/run.sh /usr/sbin/
#cp /root/php.ini /etc/php7/
#启动脚本赋予权限
chmod +x /usr/sbin/run.sh

#创建目录
mkdir -p /data/wwwroot/default
#创建用户和用户组
#addgroup -S www && adduser -S www -G www
#chown -R www:www /data/wwwroot/default/
#拉取代码
cd /data/wwwroot/default

#初始化webman
composer create-project workerman/webman .

echo '----------------------------------------------'
echo 'Install Success.'
echo '----------------------------------------------'