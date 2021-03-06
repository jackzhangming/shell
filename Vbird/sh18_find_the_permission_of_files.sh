#!/bin/bash 
# Description:  this program is to find the permission of files.
# Editor:       zhangshijie 
# Email:		406358964@qq.com 
# Version:      1.0 
# History:      2013-12-09 creat zsj

# 1.先看看这个目录是否存在啊？
read -p "please input a directory:" dir 
if [ "$dir" == "" -o ! -d "$dir" ]; then 
	echo "The $dir is NOT exist in your system." 
	exit 1
fi

# 2.开始测试档案啰
filelist=$(ls $dir)     #列出所有在该目录下的文件名
for filename in $filelist
	do 
		perm=""
		test -r "$dir/$filename" && perm="$perm readable"
		test -w "$dir/$filename" && perm="$perm writable"
		test -x "$dir/$filename" && perm="$perm executable"
		echo "The file $dir/$filename's permission is $perm" 
	done

	


