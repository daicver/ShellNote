#!/bin/bash
# 拼接字符串
str_name="runoob"
# 使用双引号拼接
greeting_0="hello, "$str_name" !"
greeting_1="hello, ${str_name} !"
echo $greeting_0  $greeting_1

# 使用单引号拼接
greeting_2='hello, '$str_name' !'
greeting_3='hello, ${str_name} !'
echo $greeting_2  $greeting_3