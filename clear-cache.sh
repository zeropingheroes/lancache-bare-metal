#!/bin/bash

set -e

systemctl stop nginx
systemctl stop filebeat

rm -rf /srv/lancache/data/*
rm -rf /srv/lancache/logs/*.log /srv/lancache/logs/http/*.log /srv/lancache/logs/stream/*.log

systemctl start nginx
systemctl start filebeat
