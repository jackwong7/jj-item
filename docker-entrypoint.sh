#!/bin/bash
printenv | grep -v "no_proxy" >> /etc/environment
service cron start
cd juejin-helper/workflows
git pull
tail -f > /dev/null