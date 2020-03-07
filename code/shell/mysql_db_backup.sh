#!/bin/bash

#完成数据库的定时备份。
#备份的路径
BACKUP=/data/backup/db
#当前的时间作为文件名
DATETIME=$(date +%Y_%m_%d_%H%M%S)
#可以输出变量调试
#echo ${DATETIME}

echo "=======开始备份========"
echo "=======备份的路径是 $BACKUP/$DATETIME.tar.gz"

#主机
HOST=localhost
#用户名
DB_USER=root
#密码
DB_PWD=root
#备份数据库名
DATABASE=atguiguDB
#创建备份的路径
#如果备份的路径文件夹存在，就使用，否则就创建
[ ! -d "$BACKUP/$DATETIME" ] && mkdir -p "$BACKUP/$DATETIME"
#执行mysql的备份数据库的指令
mysqldump -u${DB_USER} -p${DB_PWD} --host=$HOST  $DATABASE | gzip > $BACKUP/$DATETIME/$DATETIME.sql.gz
#打包备份文件
cd $BACKUP
tar -zcvf $DATETIME.tar.gz $DATETIME
#删除临时目录
rm -rf $BACKUP/$DATETIME

#删除10天前的备份文件
find $BACKUP -mtime +10 -name "*.tar.gz" -exec rm -rf {} \;
echo "=====备份文件成功==========="

