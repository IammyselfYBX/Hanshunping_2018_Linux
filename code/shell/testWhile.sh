#!/bin/bash

#案例1 ：从命令行输入一个数n，统计从 1+..+ n 的值是多少

SUM=0
i=0
while [ $i -le $1 ]
do
	SUM=$[$SUM+$i]
	i=$[$i+1]
done
echo "sum= $SUM"
