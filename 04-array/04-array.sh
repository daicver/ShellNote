# 定义数组
array_name=(value1 value2 ... valuen)

# 读取数组元素
${array_name[index]}

# 关联数组，类似字典
# 直接定义并赋值
declare -A site=(["google"]="www.google.com" ["runoob"]="www.runoob.com" ["taobao"]="www.taobao.com")
# 或者
declare -A site
site["google"]="www.google.com"
site["runoob"]="www.runoob.com"
site["taobao"]="www.taobao.com"

# 读取关联数组的某个值
echo ${site["runoob"]}

# 读取关联数组所有的值
echo "数组的元素为: ${site[*]}"
echo "数组的元素为: ${site[@]}"

# 读取关联数组所有的键值
echo "数组的键为: ${!site[*]}"
echo "数组的键为: ${!site[@]}"

# 获取数组的长度
echo "数组元素个数为: ${#my_array[*]}"
echo "数组元素个数为: ${#my_array[@]}"
