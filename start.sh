#!/bin/bash

# 启动第一个程序
nohup sh -c 'cd /ETPub/Server/publish && dotnet Server.dll --Process=1 --StartConfig=../Config/StartConfig/Release --Console=1' > /ETPub/Server/publish/output.log 2>&1 &

# 启动第二个程序
nohup sh -c 'cd /ETPub/FileServer/publish && dotnet FileServer.dll ../publish' > /ETPub/FileServer/publish/outputFS.log 2>&1 &

echo "两个程序已经启动。"
