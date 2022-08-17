from andrewmackrodt/nodejs
ADD . /var/dev/
WORKDIR /var/dev/
USER root
ENV TZ=Asia/Shanghai
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && chmod 777 ./docker-entrypoint.sh \
    && git clone https://github.com/iDerekLi/juejin-helper.git \
    && cd juejin-helper/workflows \
    && yarn \
    && apt-get update && apt-get install cron \
    && echo "5 7 * * * cd /var/dev/juejin-helper/workflows && /home/ubuntu/.local/bin/yarn checkin" >> /var/spool/cron/crontabs/root \
    && echo "15 7 * * * cd /var/dev/juejin-helper/workflows && /home/ubuntu/.local/bin/yarn seagold" >> /var/spool/cron/crontabs/root

ENTRYPOINT ["./docker-entrypoint.sh"]