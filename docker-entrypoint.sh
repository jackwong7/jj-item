#!/bin/bash

git clone https://github.com/iDerekLi/juejin-helper && cd juejin-helper/workflows && yarn
apt-get update
apt-get install cron
echo "5 18 * * * cd /var/dev/juejin-helper/workflows && yarn checkin" >> /var/spool/cron/crontabs/root
echo "15 18 * * * cd /var/dev/juejin-helper/workflows && yarn seagold" >> /var/spool/cron/crontabs/root
service cron start

tail -f >/dev/null