#!/usr/bin/env bash

for file in /docker-entrypoint.d/*.sh; do bash "$file"; done

/etc/init.d/ssh start
apachectl -D FOREGROUND
