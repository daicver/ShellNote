#!/bin/bash
# 字符串
# 字符串是 shell 编程中最常用最有用的数据类型，字符串可以用单引号，也可以用双引号，也可以不用引号。
# 单引号，单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的，单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行）
str='this is a string'
echo $str
# 双引号，双引号里可以有变量，双引号里可以出现转义字符
variant_name="runoob"
str="Hello, I know you are \"$variant_name\"! \n"
echo -e $str