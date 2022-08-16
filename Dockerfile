from andrewmackrodt/nodejs
ADD . /var/dev/
WORKDIR /var/dev/
USER root
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN chmod 777 ./docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]