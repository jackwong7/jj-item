from andrewmackrodt/nodejs
ADD . /var/dev/
WORKDIR /var/dev/
USER root
ENV TZ=Asia/Shanghai
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime
RUN chmod 777 ./docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]