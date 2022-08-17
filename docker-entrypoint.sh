#!/bin/bash
service cron start
cd juejin-helper/workflows
git pull

tail -f >/dev/null