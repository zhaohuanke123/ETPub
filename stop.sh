#!/bin/bash

# 停止第一个服务
if [ -f server_pid.txt ]; then
  SERVER_PID=$(cat server_pid.txt)
  kill $SERVER_PID
  echo "Server service stopped."
else
  echo "Server service is not running."
fi

# 停止第二个服务
if [ -f fileserver_pid.txt ]; then
  FILESERVER_PID=$(cat fileserver_pid.txt)
  kill $FILESERVER_PID
  echo "FileServer service stopped."
else
  echo "FileServer service is not running."
fi
