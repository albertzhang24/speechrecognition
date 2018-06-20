#!/bin/sh

TOKEN=`curl -k -s "https://aip.baidubce.com/oauth/2.0/token?grant_type=client_credentials&client_id=$1&client_secret=$2" | cut -f4 -d'"'`
curl -X POST --data-binary "@$3" -H "Content-Type: audio/$4;rate=$5" -s "http://vop.baidu.com/server_api?dev_pid=1537&token=$TOKEN&cuid=1234567"
 
