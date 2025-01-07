#!/bin/bash
nohup sh -c 'cd /usr/mongodb && bin/mongod -f /etc/mongodb/conf/mongodb.conf' > /etc/mongodb/log/mongodb.log  &
echo "MongoDB 服务已启动。"

# 启动第一个程序
nohup sh -c 'cd /ETPub/Server/publish && dotnet Server.dll --Process=1 --StartConfig=../Config/StartConfig/Release --Console=1' > /ETPub/Server/publish/output.log  &

echo "Server.dll 进程已启动。"

# 启动第二个程序
nohup sh -c 'cd /ETPub/FileServer/publish && dotnet FileServer.dll ../publish' > /ETPub/FileServer/publish/outputFS.log &

echo "FileServer.dll 进程已启动。"