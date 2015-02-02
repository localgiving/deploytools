#!/usr/bin/expect -f
# Simple expect script that allows for unmanned installation of fiddly redis scripts
# This is ran from the redis 'utils' folder after running a make install on redis v2.8.9

spawn ./install_server.sh
expect "Please select the redis port for this instance"
send "6379\r"
expect "Please select the redis config file name"
send "/etc/redis/6379.conf\r"
expect "Please select the redis log file name"
send "/var/log/redis_6379.log\r"
expect "Please select the data directory for this instance"
send "/var/lib/redis/6379\r"
expect "Please select the redis executable path"
send "/usr/local/bin/redis-server\r"
expect "Is this ok? Then press ENTER to go on or Ctrl-C to abort."
send "\r\r"
