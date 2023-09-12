# 运行shell时，会同时存在三种变量：
# 1) 局部变量 局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
# 2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
# 3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行

# 只读变量 readonly
myUrl="https://www.google.com"
readonly myUrl
myUrl = 'changed'

# 删除变量 unset
myUrl="https://www.runoob.com"
unset myUrl
echo $myUrl

# 获取字符串长度
string="abcd"
echo ${#string}   # 输出 4

# 提取子字符串
string="runoob is a great site"
echo ${string:1:4} # 输出 unoo

# 查找子字符串
# 查找字符 i 或 o 的位置(哪个字母先出现就计算哪个)
string="runoob is a great site"
echo `expr index "$string" io` # 输出 4

# Shell 数组
array_name=(value0 value1 value2 value3)
value_n=${array_name[n]}
echo ${array_name[@]}

# 获取数组的长度
# 取得数组元素的个数
length=${#array_name[@]}
# 或者
length=${#array_name[*]}
# 取得数组单个元素的长度
length=${#array_name[n]}

