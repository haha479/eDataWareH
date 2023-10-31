#!/bin/bash

# 每日装载脚本, 用于将每天采集到的用户行为日志数据装载到ODS层的hive表中, 按'天'分区
# 定义变量方便修改

# 此脚本可接收一个参数, 为待同步日志数据的日期.
APP=gmall

# 如果是输入的日期按照输入日期; 如果没输入日期取当前日期的前一天
if [ -n "$1" ] ;then
   do_date=$1
else
   do_date=`date -d "-1 day" +%F`
fi

echo ================== 日志日期为 $do_date ==================
sql="
load data inpath '/origin_data/$APP/log/topic_log/$do_date' into table ${APP}.ods_log_inc partition(dt='$do_date');
"
hive -e "$sql"

