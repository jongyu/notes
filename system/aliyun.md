# 阿里云

## 设置ECS为中文
1. 安装kde-l10n-Chinese中文语言包
```bash
yum install kde-l10n-Chinese
```

2. 安装glibc-common
```bash
yum install glibc-common
```

-  注意必须安装glibc-common,如果在安装kde-l10n-Chinese之前已经安装了glibc-common,就重新安装一下 yum reinstall glibc-common. 安装完后需要重新启动，否则还是不能将语言地区设置成zh_CN.utf8 （此时先不重启，设置完语言地区后再重启）

3. 修改语言`vi /etc/locale.conf`
```properties
LANG="zh_CN.UTF-8"
```

4. 查看是否设置
```bash
cat /etc/locale.conf
```

5. 重启系统
```bash
reboot
```