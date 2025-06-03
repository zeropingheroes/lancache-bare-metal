#!/bin/bash

set -e

systemctl stop nginx

rm -rf /srv/lancache/data/*
rm -rf /srv/lancache/logs/*.log /srv/lancache/logs/http/*.log /srv/lancache/logs/stream/*.log

systemctl start nginx
