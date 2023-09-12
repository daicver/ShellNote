# printf 命令模仿 C 程序库（library）里的 printf() 程序
# 默认的 printf 不会像 echo 自动添加换行符，我们可以手动添加 \n
echo "Hello, Shell"
printf "Hello, Shell\n"

# printf 命令的语法：
printf  format-string  [arguments...]

# 举例
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876

%s %c %d %f 都是格式替代符，
    ％s 输出一个字符串，
    ％d 整型输出，
    ％c 输出一个字符，
    ％f 输出实数，以小数形式输出。
%-10s  指一个宽度为 10 个字符（- 表示左对齐，没有则表示右对齐），任何字符都会被显示在 10 个字符宽的字符内，如果不足则自动以空格填充，超过也会将内容全部显示出来。
%-4.2f 指格式化为小数，其中 .2 指保留2位小数

