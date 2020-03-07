#!/bin/bash

#案例1 ：当命令行参数是 1 时，输出 "周一", 是2 时，就输出"周二"， 其它情况输出  "other"
case $1 in
"1")
echo "周一"
;;
"2")
echo "周二"
;;
*)
echo "other"
;;
esac
