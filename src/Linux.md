## Linux

### CentOS

#### JDK
* 解压JDK
```
tar -zxvf jdk-8u101-linux-x64.tar.gz -C /home/Java
```
* 编辑环境变量
```
vi /etc/profile
```
* 添加以下环境
```
export JAVA_HOME=/home/Java/jdk1.8.0_101
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}
export PATH=${JAVA_HOME}/bin:$PATH
```
* 保存本退出键盘操作
```
Ecs  --->  Shift + :  --->  wq
```
* 刷新环境
```
source /etc/profile
```
* 显示Java版本
```
java -version
```

#### MySQL ContOS 7

* 下载源
```
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
```
* 安装rpm包

```
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
```

* 安装MySQL
```
sudo yum install mysql-server
```

* 登录MySQL
```
mysql -u root
```

* 上面命令可能会执行失败 so 执行下面这个完成
```
sudo chown -R openscanner:openscanner /var/lib/mysql
```
* 重启MySQL服务
```
service mysqld restart
```
* 登录MySQL
```
mysql -u root
```
* 设置密码
```
set password for 'root'@'localhost' = password('123456');
```
* 设置远程登录用户和密码
```
grant all privileges on *.* to 'root'@'%' identified by '123456';
```
* 刷新
```
flush privileges;
```

#### iptatble
* 关闭firewall防火墙并停止服务
```
systemctl stop firewalld.service
```
* 禁止firewall开启启动
```
systemctl disable firewalld.service
```
* 安装iptable防火墙
```
yum install iptables-services
```
* 编辑iptable防火墙配置
```
vi /etc/sysconfig/iptables
```
* 添加以下内容
```
# Firewall configuration written by system-config-firewall
# Manual customization of this file is not recommended.
*filter
:INPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
-A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
-A INPUT -p icmp -j ACCEPT
-A INPUT -i lo -j ACCEPT
-A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
-A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
-A INPUT -m state --state NEW -m tcp -p tcp --dport 8080 -j ACCEPT
-A INPUT -m state --state NEW -m tcp -p tcp --dport 3306 -j ACCEPT
-A INPUT -m state --state NEW -m tcp -p tcp --dport 6379 -j ACCEPT
-A INPUT -j REJECT --reject-with icmp-host-prohibited
-A FORWARD -j REJECT --reject-with icmp-host-prohibited
COMMIT
```
* 重启防火墙使配置生效
```
systemctl restart iptables.service
```
* 设置防火墙开机自启
```
systemctl enable iptables.service
```