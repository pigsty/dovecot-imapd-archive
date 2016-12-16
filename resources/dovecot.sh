#!/bin/sh

useradd -mp $PASSWORD $USERNAME

/usr/sbin/dovecot -F
