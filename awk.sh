#!/usr/bin/env bash

#awk '{sum=0;for(i=2;i<=NF;i++)sum+=$i;print $1,sum}' chengji.txt

#awk '{sum=0;for(i=2;i<=NF;i++)sum+=$i;avg=sum/(NF-1);print $1,sum,avg}' chengji.txt

# NF 列数 $NF 最后一列 $0 输出当前行所有内容
#awk '{print $1,NF,$NF}' a.txt


awk '$2~/Xiaoyu/{print $1,$3}' reg.txt

#显示所有ID号码最后一位数字是1或5的人的全名
#awk '$3~/[15]$/{print $1,$2}' reg.txt




#gsub(r, s [, t])
#
#       r  /找谁/
#
#       s  "替换成什么"
#
#       [] 替换那个部分的
#
#表示为： gsub(/找谁/,"替换成什么",替换那个部分的)


#awk '{gsub(/:/,"$",$NF);print $0}' reg.txt

#输出的结果更美观整齐--column命令
#awk 'BEGIN{print "姓","名"}{print $1,$2}' reg.txt |column -t



#awk 'BEGIN{hotel[110]="lidao" ;hotel[119]="tanjiaoshou";hotel[121]="taojin";
#for(pol in hotel)
#print pol,hotel[pol]
#}'

#awk -F " " '{for (i=2;i<=NF;i++)printf("%s ", $i);print ""}' a.txt

#awk '{ $1=""; print $0 }' a.txt


echo 'Sample123string54with908numbers' | awk -F '[0-9]+' '{for (i=1;i<=NF;i++)printf("%s ", $i);print ""}'

# 去除某列
echo "1 2 3 4 5" | awk '{$1="";print $0}'


awk '!/^$/' c.txt
