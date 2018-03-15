#!/bin/sh

APP_NAME=lcfex-mediator-

tpid=`ps -ef | grep $APP_NAME | grep -v grep | awk '{print $2}'`
echo 'process pid :'$tpid

if [ $tpid ]; then
    echo 'Kill Process :'$tpid
    kill -9 $tpid
fi

echo 'App starting ......'

rm -f tpid

. /etc/profile

nohup java -Xms16m -Xmx64m -jar /data/developer/project/lcfex-mediator/lcfex-mediator-0.0.1-SNAPSHOT.jar > /data/developer/project/lcfex-mediator/log/mediator.log 2>&1 &

echo $! > tpid

echo Start Success!
