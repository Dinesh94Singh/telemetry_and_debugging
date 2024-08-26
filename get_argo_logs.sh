#!/bin/sh

if [ -z "$1" ]
  then
    echo "No argo workflow name supplied"
else
    cnt=$(eval "ls -l ~/Documents/argo_logs/ | wc -l | xargs")
    filePath="~/Documents/argo_logs/temp_argo_log_$cnt.txt"
    argo logs $1 > ~/Documents/argo_logs/temp_argo_log_"$cnt".txt
    echo "Dumped log for $1 at $filePath"
fi
