#!/bin/bash
# 用于上游的flume启停
case $1 in
"start"){
	for i in hadoop102 hadoop103
	do
		echo "---------------启动 $i 上游日志文件采集flume-----------"
		ssh $i "nohup /opt/module/flume-1.9.0/bin/flume-ng agent -n a1 -c /opt/module/flume/conf/ -f /opt/module/flume-1.9.0/job/file_to_kafka.conf >/dev/null 2>&1 &"
	done
};;
"stop"){
	for i in hadoop102 hadoop103
	do
		echo "---------------停止 $i 上游采集flume-----------"
		ssh $i "ps -ef | grep file_to_kafka | grep -v grep | awk '{print \$2}' | xargs -n1 kill -9"
	done
}

esac
