# 大多数 UNIX 系统命令从你的终端接受输入并将所产生的输出发送回​​到您的终端。
# 一个命令通常从一个叫标准输入的地方读取输入，默认情况下，这恰好是你的终端。
# 同样，一个命令通常将其输出写入到标准输出，默认情况下，这也是你的终端

command > file	    将输出重定向到 file。
command < file	    将输入重定向到 file。
command >> file	    将输出以追加的方式重定向到 file。
n > file	        将文件描述符为 n 的文件重定向到 file。
n >> file	        将文件描述符为 n 的文件以追加的方式重定向到 file。
n >& m	            将输出文件 m 和 n 合并。
n <& m	            将输入文件 m 和 n 合并。
<< tag	            将开始标记 tag 和结束标记 tag 之间的内容作为输入

输出重定向
# 这个命令执行command1然后将输出的内容存入file1
# 注意任何file1内的已经存在的内容将被新内容替代。
# 如果要将新内容添加在文件末尾，请使用>>操作符
command1 > file1

输入重定向
和输出重定向一样，Unix 命令也可以从文件获取输入，语法为
command1 < file1
举例：统计users文件行数
wc -l < users

一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：
    标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
    标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
    标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息

如果希望 stderr 重定向到 file，可以这样写
command 2>file
如果希望 stderr 追加到 file 文件末尾，可以这样写
command 2>>file

如果希望将 stdout 和 stderr 合并后重定向到 file，可以这样写
command > file 2>&1
command >> file 2>&1


command 命令将 stdin 重定向到 file1，将 stdout 重定向到 file2
command < file1 >file2

如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null
/dev/null 是一个特殊的文件，写入到它的内容都会被丢弃
command > /dev/null