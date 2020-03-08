#!/bin/sh
function getSum(){	#不需要形参
	SUM=$[$n1+$n2]
	echo "SUM=$SUM"
}

read -p "Please input first num: " n1
read -p "Please input second num: " n2

getSum $n1 $n2
