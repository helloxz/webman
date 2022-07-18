FROM alpine:3.13

WORKDIR /root
#复制启动文件
COPY *.sh /root/
RUN sh install.sh
# 复制php.ini
COPY ./php.ini /etc/php7/
VOLUME /data/wwwroot/webman
EXPOSE 8787
CMD ["/usr/sbin/run.sh"]