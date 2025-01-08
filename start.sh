#!/bin/bash
nohup sh -c 'cd /usr/mongodb && bin/mongod -f /etc/mongodb/conf/mongodb.conf' >/dev/null 2>&1  &
echo "MongoDB 服务已启动。"

# 启动第一个程序
nohup sh -c 'cd /ETPub/Server/publish && dotnet Server.dll --Process=1 --StartConfig=../Config/StartConfig/Release --Console=1' >/dev/null 2>&1  &

echo "Server.dll 进程已启动。"

# 启动第二个程序
nohup sh -c 'cd /ETPub/FileServer/publish && dotnet FileServer.dll ../publish' >/dev/null 2>&1  &

echo "FileServer.dll 进程已启动。"