#!/bin/sh

username=`cat /config/useradd.conf|grep username=|sed 's/^username=\(.*\)/\1/'`
password=`cat /config/useradd.conf|grep password=|sed 's/^password=\(.*\)/\1/'`

useradd -mp $password $username
