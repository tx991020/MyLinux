#!/usr/bin/env bash

#awk '{a =a$1;b=$2;print a"\n"}' d.txt
awk '{a=a$1" ";b=b$2" "}END{print a"\n"b}' d.txt

