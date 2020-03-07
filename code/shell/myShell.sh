#!/bin/bash
#echo "hello,world!"

#echo "PATH=$PATH"
#echo "user=$USER"


#A=100
#echo "A=$A"
#unset A
#echo "A=$A"


#readonly A=99
#echo "A=$A"
#unset A
#echo "A=$A"

#A=19
#MYNUM=89
#echo "$A $MYNUM"

#多行注释
:<<!
RESULT=`ls -l /home`
echo $RESULT
echo ""
MY_DATE=$(date)
echo "date=$MY_DATE"
!

#使用我们自定的环境变量
echo "tomcathome=$TOMCAT_HOME"
