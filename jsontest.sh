#!/bin/sh
json=$1
logdate=`date +%Y年%m月%d日%H:%M:%S`

#config email list
watchEmail=(
'zackzhang.g@gmail.com'
)
countEmail=${#watchEmail[@]}

echo "========== start ==========" >> jsontest.log
echo "==========" $logdate "==========" >> jsontest.log
echo "start to test :" $json >> jsontest.log
result=`echo ${json} | ./JSON.sh 2>&1 | grep "EXPECTED"`
echo $result >> jsontest.log
echo "========== end ==========" >> jsontest.log
