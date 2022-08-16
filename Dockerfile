from andrewmackrodt/nodejs
ADD . /var/dev/
WORKDIR /var/dev/
USER root
RUN chmod 777 ./docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]