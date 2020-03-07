# 尚硅谷 韩顺平 Linux(升级版)
[在线视频](https://www.bilibili.com/video/av80936373?from=search&seid=6845162039405466324) &emsp; [详细课堂笔记](note/README.md) &emsp; [课件ppt](课件/尚硅谷_韩顺平_Linux(大数据_javaEE_Python_开发通用版)课件.pdf) &emsp; [课件图解.xlsx](课件/图解1.xlsx) &emsp; [笔记](课件/尚硅谷_韩顺平_Linux课程(兼顾_大数据_JavaEE_Python程序员).pdf) <br>[尚硅谷Python安装Ubuntu.docx](课件/尚硅谷Python安装Ubuntu.docx) &emsp; [尚硅谷centos6.8下安装mysql.docx](课件/尚硅谷centos6.8下安装mysql.docx)

## 一、关机&重启命令
基本介绍:
```bash
$> sync            # 把内存的数据同步到磁盘.    
#关机之间建议执行一次
$> shutdown –h now # 立该进行关机
$> shudown -h 1    # 1 分钟后会关机了
$> shutdown –r now #现在重新启动计算机

$> halt            # 关机，作用和上面一样.
$> reboot          
$> logout          # 注销，在图形运行级别无效，在运行级别 3 下有效
```

## 二、用户管理
### 1.添加用户
基本语法
```bash
$> useradd 用户名

# 会自动的创建和用户同名的家目录
# -d 指定目录 新的用户名，给新创建的用户指定家目录
$> useradd 用户名 -d /home/test    # /home/test之前不能存在
```

### 2.指定/修改密码
基本语法
```bash
$> passwd 用户名
```

### 3.删除用户
基本语法
```bash
$> userdel 用户名
```

### 4.删除用户
基本语法
```bash
$> userdel 用户名

1) 删除用户xiaoming，但是要保留家目录
$> userdel tony
2) 删除用户以及用户家目录
$> userdel -r tony
```

### 5.查询用户信息指令
基本语法
```bash
$> id 用户名

[tony@tony-pc ~]$ id tony
uid=1000(tony) gid=1000(tony) groups=1000(tony),998(wheel),991(lp),3(sys),90(network),98(power),56(bumblebee)
```

### 6.查看当前用户/登录用户
基本语法
```bash
$> whoami/ who am I
```

### 7.新增组
基本语法
```bash
$> groupadd 组名
```

### 8.删除组
基本语法
```bash
$> groupdel 组名
```
### 9.增加用户时直接加上组
基本语法
```bash
$> useradd –g 用户组 用户名
```

### 10.修改用户的组
基本语法
```bash
$> usermod –g 用户组 用户名
```

### 11.用户和组的相关文件
```bash
/etc/passwd 文件
    用户（user）的配置文件，记录用户的各种信息
    每行的含义：用户名:口令:用户标识号:组标识号:注释性描述:主目录:登录Shell
/etc/shadow 文件
    口令的配置文件
    每行的含义：登录名:加密口令:最后一次修改时间:最小时间间隔:最大时间间隔:警
    告时间:不活动时间:失效时间:标志
/etc/group 文件
    组(group)的配置文件，记录Linux包含的组的信息
    每行含义：组名:口令:组标识号:组内用户列表
```

### 12.[如何找回root密码 15:55](https://www.bilibili.com/video/av80936373?p=22)
单用户模式不需要输入密码就是root

## 三、权限
### -R
-R 如果是目录 则使其下所有子文件或目录递归生效

## 四、crond 任务调度
常用选项|概述
:-:|:-:
-e| 编辑crontab定时任务
-l| 查询crontab任务
-r| 删除当前用户所有的crontab









