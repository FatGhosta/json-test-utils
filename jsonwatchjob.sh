#!/bin/sh

#config json url list
jsonUrlList=(
'http://example.com/example.do'
)
countUrl=${#jsonUrlList[@]}

#config mail list
watchEmail=(
'zackzhang.g@gmail.com'
)
countEmail=${#watchEmail[@]}

i=0
while [ "$i" -lt "$countUrl" ]
do
	  result=`curl ${jsonUrlList[$i]} | ./JSON.sh 2>&1 | grep "EXPECTED"`
    if [ -n "$result" ]
	  then
		    j=0
		    while [ "$j" -lt "$countEmail" ]
		    do
            echo ${jsonUrlList[$i]}"格式错误，不可用" | mail -s "json错误报告" ${watchEmail[$j]}
			      let "j = $j + 1"
		    done
	  fi
    let "i = $i + 1"
done
