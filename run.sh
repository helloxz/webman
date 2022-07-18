#!/bin/sh
##########		name:Onenav容器运行入口			##########
##########		update:2021/03/22				##########
##########		author:xiaoz<xiaoz93@outlook.com>	######

WEBMAN_DIR=/data/wwwroot/webman
#判定启动文件是否存在，不存在，说明是一个新的容器
if [ !-f ${WEBMAN_DIR}/start.php ]
then
	cp -ar /data/wwwroot/default ${WEBMAN_DIR}
fi

#启动
cd ${WEBMAN_DIR}
php start.php start