#!/usr/bin/expect
set timeout 2
set msg [lindex $argv 1]
set dest [lindex $argv 0]
spawn /usr/src/tg/bin/telegram-cli -k /usr/src/tg/tg-server.pub  -W
expect "> "
sleep 10
send "\rsend_file $dest $msg\r"
expect "> "
expect eof
