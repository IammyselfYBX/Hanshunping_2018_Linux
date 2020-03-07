#!/bin/bash

#案例1：读取控制台输入一个num值

read -p "请输入一个数num1=" NUM1
echo "你输入的值是num1=$NUM1"

#案例2：读取控制台输入一个num值，在10秒内输入

read -t 10 -p "请输入一个数num2=" NUM2
echo "你输入的值是num2=$NUM2"

