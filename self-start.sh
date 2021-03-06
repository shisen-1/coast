#!/bin/sh
### BEGIN INIT INFO
# Provides:          self-start.sh
# Required-start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: starts the svnd.sh daemon
# Description:       starts svnd.sh using start-stop-daemon
### END INIT INFO
export JAVA_HOME=/home/ksroot/jdk8
export PATH=${JAVA_HOME}/bin:$PATH
cd /home/ksroot
nohup java -jar server.jar &