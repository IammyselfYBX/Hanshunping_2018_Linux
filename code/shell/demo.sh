#!/bin/bash

#第一方式$()

RESULT1=$(((2+3)*4))
echo "result1=$RESULT1"

#第二种方式[]
RESULT2=$[(2+3)*4]
echo "result2=$RESULT2"

#使用expr

TEMP=`expr 2 + 3`
RESULT3=`expr $TEMP \* 4`
echo "result3=$RESULT3"

#求出两个参数的和

SUM=$[$1+$2]
echo "SUM=$SUM" 
