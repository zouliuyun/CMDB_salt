#!/bin/bash
> nohup.out 
ps x|grep manage.py|grep -v grep|awk '{print $1}'|xargs kill -9
nohup ./manage.py runserver 0.0.0.0:80 &
sleep 2
netstat -tpln|grep 80|grep python
