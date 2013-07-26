#!/bin/sh
json=$1
logdate=`date +%Y年%m月%d日%H:%M:%S`

#config email list
watchEmail=(
'zaokzhang@sohu-inc.com'
)
countEmail=${#watchEmail[@]}

echo "========== start ==========" >> jsontest.log
echo "==========" $logdate "==========" >> jsontest.log
echo "start to test :" $json >> jsontest.log
result=`echo ${json} | ./JSON.sh 2>&1 | grep "EXPECTED"`
echo $result >> jsontest.log
if [ -n "$result" ]
then
        echo ${json}" is invalid"

        j=0
        while [ "$j" -lt "$countEmail" ]
        do
                echo ${json}" is invalid" | mail -s "json错误报告" ${watchEmail[$j]} >/dev/null
                let "j = $j + 1"
        done
fi
echo "========== end ==========" >> jsontest.log
