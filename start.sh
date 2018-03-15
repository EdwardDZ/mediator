#!/bin/sh

rm -f tpid

nohup java -Xms16m -Xmx64m -jar /data/developer/project/lcfex-mediator/lcfex-mediator-0.0.1-SNAPSHOT.jar > /data/developer/project/lcfex-mediator/log/lcfex-mediator.log 2>&1 &

echo $! > tpid

echo Start Success!
