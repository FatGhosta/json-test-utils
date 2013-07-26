#!/bin/sh
json=$1

#config mobile list
watchEmail=(
'zackzhang.g@gmail.com'
)
countEmail=${#watchEmail[@]}

result=`echo ${json} |sh /opt/bin/JSON.sh 2>&1 | grep "EXPECTED"`
echo $result
if [ -n "$result" ]
then
        j=0
        while [ "$j" -lt "$countEmail" ]
        do
                echo ${json}"格式错误，不可用。" | mail -s "json错误报告" ${watchEmail[$j]}
                let "j = $j + 1"
        done
fi
