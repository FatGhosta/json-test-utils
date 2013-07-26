json-test
=========

检验json格式是否正确的脚本。  
This software is a shell program which test if the pattern of json is right.

##Thanks##
本脚本基于[JSON.sh](https://github.com/dominictarr/JSON.sh)项目，该项目是一个管道化的JSON解析器脚本。  
This software is based on [JSON.sh](https://github.com/dominictarr/JSON.sh), a pipeable JSON parser written in Bash.  

##Quick Start##  

###Notice###
在使用之前，请确保JSON.sh已经与本脚本所在文件目录相同。  
并且本机装有mailx，mail，sendmail等发送邮件软件。

###Example###
sh jsontest.sh '{"aaa":1,"bbb":2}'  
json格式是否正确，可以查看与脚本相同目录下的jsontest.log。
