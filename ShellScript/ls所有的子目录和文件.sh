ls
# 列出目标目录中所有的子目录和文件

# 列出目录下的所有文件，包括以 . 开头的隐含文件
ls -a
ls –all
# 打印出每个文件的 inode 号
ls -i
# 文件的权限、所有者、文件大小等信息详细列出来
ls -l
# 同时列出所有子目录层
ls -R
# 以文件修改时间排序
ls -t
# 以容易理解的格式列出文件大小 (例如 1K 234M 2G)
ls -h

# 例一：列出当前目录中所有以“t”开头的目录的详细内容，可以使用如下命令：
ls -l t*

# 例二：递归列出当前目录下的所有文件（包括隐藏文件）的绝对路径
find $PWD | xargs ls -ld

# https://blog.csdn.net/KingBoyWorld/article/details/78260183

# 列所有文件和文件夹绝对路径一行一个并存到文件
find $PWD | xargs ls -ad >x.txt

# 显示完整时间
find $PWD | xargs ls -adl --full-time

# 文件详情
stat x.txt
stat x.txt -t # 只有数值