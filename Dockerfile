from andrewmackrodt/nodejs
ADD . /var/dev/
WORKDIR /var/dev/
USER root

ENTRYPOINT ["./docker-entrypoint.sh"]