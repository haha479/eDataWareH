#!/bin/bash

case $1 in
"start"){
	echo "================集群启动======================="
	# zk 启动
	zk.sh start
	# hadoop启动
	start-all.sh
	# kafka启动
	kf.sh start
	# f1 启动
	f1.sh start
	# f2 启动
	f2.sh start
	# f3 启动
	f3.sh start
	# maxwell 启动
	mxw.sh start
};;

"stop"){
	echo "================集群关闭======================="
	# maxwell 停止
	mxw.sh stop
	# f3 停止
	f3.sh stop
	# f2 停止
	f2.sh stop
	# f1 停止
	f1.sh stop
	# 确保kafka完全停止后再停止zookeeper, 因此将hadoop放在此之后停止
	# kafka停止
	kf.sh stop
	# hadoop停止
	stop-all.sh
	# zk 停止
	zk.sh stop
};;
esac
