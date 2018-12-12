#!/usr/bin/env bash


# date：2018年2月5日
d=`date +%F`
logname="$d.log"
df -h > /tmp/$logname