#!/bin/bash

#案例1："ok"是否等于"ok"

if [ "ok100" = "ok" ]
then
	echo "equal"
fi

#案例2：23是否大于等于22

if [ 23 -gt 22 ]
then
	echo "大于"
fi 

#案例3：/root/shell/aaa.txt 目录中的文件是否存在
if [ -e /root/shell/aaa.txt ]
then
	echo "存在 "
fi
