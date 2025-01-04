#!/bin/bash

# 启动第一个服务
cd /etc/ETPub/Server/publish || exit 1
dotnet Server.dll --Process=1 --StartConfig=../Config/StartConfig/Release --Console=1 &
SERVER_PID=$!
echo $SERVER_PID > server_pid.txt  # 保存第一个服务的 PID
