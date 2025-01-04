#!/bin/bash

# 查找并杀死 Server.dll 的进程
server_pid=$(ps aux | grep 'dotnet Server.dll' | grep -v grep | awk '{print $2}')
if [ -n "$server_pid" ]; then
    kill $server_pid
    echo "Server.dll 进程已停止。"
else
    echo "没有找到 Server.dll 进程。"
fi

# 查找并杀死 FileServer.dll 的进程
fileserver_pid=$(ps aux | grep 'dotnet FileServer.dll' | grep -v grep | awk '{print $2}')
if [ -n "$fileserver_pid" ]; then
    kill $fileserver_pid
    echo "FileServer.dll 进程已停止。"
else
    echo "没有找到 FileServer.dll 进程。"
fi