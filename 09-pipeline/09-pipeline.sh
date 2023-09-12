# 条件控制语句

# if 语句
if condition
then
    command1 
    command2
    ...
    commandN 
fi
# 写成一行
if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi

# if-else语句
if condition
then
    command1 
    command2
    ...
    commandN
else
    command
fi

# if else-if else 语句
if condition1
then
    command1
elif condition2 
then 
    command2
else
    commandN
fi

# if else 的 [...] 判断语句中大于使用 -gt，小于使用 -lt
if [ "$a" -gt "$b" ]; then
    ...
fi
# 如果使用 ((...)) 作为判断语句，大于和小于可以直接使用 > 和 <
if (( a > b )); then
    ...
fi

# for 循环
for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done
# 或写成一行
for var in item1 item2 ... itemN; do command1; command2… done;
# 举例
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

# 顺序输出字符串中的字符
#!/bin/bash
for str in This is a string
do
    echo $str
done

# while 语句
while condition
do
    command
done
# 举例
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done

# until 循环
until condition
do
    command
done
a=0
# 举例
until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done

# case语句
case 值 in
模式1)
    command1
    command2
    ...
    commandN
    ;;
模式2)
    command1
    command2
    ...
    commandN
    ;;
esac
# 举例
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac

# 跳出循环
# break 命令
# continue 命令

