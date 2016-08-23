#!/bin/sh
sudo docker run -d --name dovecot_imapd_archive -p 143:143 -v /tmp/config:/config -i -t pigsty/dovecot_imapd_archive
