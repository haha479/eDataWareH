#!/bin/bash

#用于运行生成datax的json任务文件的python脚本
#运行一次python文件生成一个json任务文件, 15个json文件对应15张ads层的表
python ~/bin/gen_export_config.py -d gmall_report -t ads_activity_stats
python ~/bin/gen_export_config.py -d gmall_report -t ads_coupon_stats
python ~/bin/gen_export_config.py -d gmall_report -t ads_new_buyer_stats
python ~/bin/gen_export_config.py -d gmall_report -t ads_order_by_province
python ~/bin/gen_export_config.py -d gmall_report -t ads_page_path
python ~/bin/gen_export_config.py -d gmall_report -t ads_repeat_purchase_by_tm
python ~/bin/gen_export_config.py -d gmall_report -t ads_sku_cart_num_top3_by_cate
python ~/bin/gen_export_config.py -d gmall_report -t ads_trade_stats
python ~/bin/gen_export_config.py -d gmall_report -t ads_trade_stats_by_cate
python ~/bin/gen_export_config.py -d gmall_report -t ads_trade_stats_by_tm
python ~/bin/gen_export_config.py -d gmall_report -t ads_traffic_stats_by_channel
python ~/bin/gen_export_config.py -d gmall_report -t ads_user_action
python ~/bin/gen_export_config.py -d gmall_report -t ads_user_change
python ~/bin/gen_export_config.py -d gmall_report -t ads_user_retention
python ~/bin/gen_export_config.py -d gmall_report -t ads_user_stats

