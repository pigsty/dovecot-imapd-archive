#!/bin/sh
docker run -d --name dovecot-imapd-archive -p 143:143 --env USERNAME="archive" --env PASSWORD="changeme!" -i -t pigsty/dovecot-imapd-archive
