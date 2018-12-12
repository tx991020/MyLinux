#!/usr/bin/env bash


Uri='http://www.cnblogs.com/clsn/default.html?page='

clsn_Html=/tmp/html/clsn.html
mkdir -p /tmp/html/ > $clsn_Html

for i in {1..6}
  do
     curl -s  $Uri$i |grep -A 5  'ImageLink' |sed  's#<.*div.*># #g'|sed 's#--#<br>#g' >> $clsn_Html
     echo '<br>' >>$clsn_Html
  done