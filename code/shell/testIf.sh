#!/bin/bash

#案例：请编写一个shell程序，如果输入的参数，大于等于60，则输出 "及格了"，如果小于60,则输出 "不及格"

if [ $1 -ge 60 ]
then
	echo "及格了"
elif [ $1 -lt 60 ]
then
	echo "不及格"
fi


