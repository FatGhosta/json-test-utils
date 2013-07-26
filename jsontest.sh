#!/bin/sh
json=$1

#config mobile list
watchEmail=(
'zackzhang.g@gmail.com'
)
countEmail=${#watchEmail[@]}

echo "start to test :" $json
result=`echo ${json} | ./JSON.sh 2>&1 | grep "EXPECTED"`
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
