#!/bin/bash
to=$1
msg=$2
tgpath=/usr/src/tg
cd ${tgpath}
(echo "safe_quit") | ${tgpath}/bin/telegram-cli -k ${topath}/tg-server.pub -U root -W -e "msg $to $msg"
