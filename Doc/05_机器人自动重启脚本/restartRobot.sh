#!/bin/sh
export HOME=/root/robot/
export APP_Robot=er_robot_normal.jar
export PORT_Robot=20000

P_ID=`ps -ef | grep -w $APP_Robot | grep -v "grep" | awk '{print $2}'`
if [ "$P_ID" == "" ]; then
     echo "===robot 已处于停止中==="
else
     kill -9 $P_ID
     echo "===robot 停止成功==="
fi
sleep 10
nohup java -jar $HOME$APP_Robot > /dev/null 2>&1
echo "===robot 重启成功==="
