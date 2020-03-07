#!/bin/bash
echo "当前的进程号=$$"
#后台的方式运行 myShell.sh
./myShell.sh &
echo "最后的进程的号=$!"
echo "执行的值=$?"

