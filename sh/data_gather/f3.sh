#!/bin/bash

case $1 in
"start")
        echo " --------启动 hadoop104 业务数据flume-------"
        ssh hadoop104 "nohup /opt/module/flume-1.9.0/bin/flume-ng agent -n a1 -c /opt/module/flume-1.9.0/conf -f /opt/module/flume-1.9.0/job/kafka_to_hdfs_db.conf >/dev/null 2>&1 &"
;;
"stop")

        echo " --------停止 hadoop104 业务数据flume-------"
        ssh hadoop104 "ps -ef | grep kafka_to_hdfs_db | grep -v grep |awk '{print \$2}' | xargs -n1 kill"
;;
esac

