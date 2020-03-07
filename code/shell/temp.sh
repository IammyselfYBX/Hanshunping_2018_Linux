#!/bin/bash

#read -p "请输入一个数num=" NUM
#echo "你输入的是 $NUM"

function sum(){
	
	S=0
	S=$[$n1+$n2]
	echo "s=$S"
} 

read -p "请输入第一个数n1=" n1
read -p "请输入第一个数n2=" n2

sum $n1 $n2

