#!/usr/bin/env bash
# the scripts detached from the terminal and running in the background

my_path="/tmp/my_process"
my_pid="/var/run/my_process.pid"
start() {
	if pgrep -f "$my_path" > /dev/null;
	then
		echo "my process is runnning"
	else
		nohup "$my_path" > /dev/null 2>&1 &
		echo $! > "my_pid"
		echo "manage_my_process started"
	fi
}

stop() {
	if pgrepo -f "$my_path" > /dev/null;
	then
		pkill -f "$my_path"
		rm -f "my_pid"
		echo "manage_my_process stopped"
	fi
}

restart() {
	stop
	sleep 2
	start
	echo "manage_my_process restarted"
}

case "$1" in
	start)
		start
	;;
	stop)
		stop
	;;
	restart)
		restart
	;;
	*)
		echo "Usage: manage_my_process {start|stop|restart}"
	;;
esac
		
