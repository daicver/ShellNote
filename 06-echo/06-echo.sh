# 显示字符串
echo "It is a test"
# 这里的双引号完全可以省略

# 显示转义字符串
echo "\"It is a test\""
# 结果：
"It is a test"

# 读取和显示变量
# read 命令从标准输入中读取一行,并把输入行的每个字段的值指定给 shell 变量
# 显示
chmod +x 06-01.sh
sh ./06-01.sh

# 显示换行
echo -e "OK! \n" # -e 开启转义
echo "It is a test"

# 显示不换行
echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"

# 显示结果定向至文件
echo "It is a test" > myfile

# 原样输出字符串，不进行转义或取变量(用单引号)
echo '$name\"'

# 显示命令执行结果
echo `date`
Tue Sep 12 14:47:00 CST 2023
