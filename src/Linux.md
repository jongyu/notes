## Linux

### CentOS

#### JDK
```
tar -zxvf jdk-8u101-linux-x64.tar.gz -C /home/Java
```

```
vi /etc/profile
```

```
export JAVA_HOME=/home/Java/jdk1.8.0_101
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}
export PATH=${JAVA_HOME}/bin:$PATH
```

```
Ecs  --->  Shift + :  --->  wq
```

```
source /etc/profile
```

```
java -version
```

#### MySQL

```
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
```

```
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
```

```
sudo yum install mysql-server
```

```
mysql -u root
```

```
sudo chown -R openscanner:openscanner /var/lib/mysql
```

```
service mysqld restart
```

```
mysql -u root
```

```
set password for 'root'@'localhost' = password('123456');
```

```
grant all privileges on *.* to 'root'@'%' identified by '123456';
```

```
flush privileges;
```

#### iptatble
```
systemctl stop firewalld.service
```

```
systemctl disable firewalld.service
```

```
yum install iptables-services
```

```
vi /etc/sysconfig/iptables
```

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
-A INPUT -j REJECT --reject-with icmp-host-prohibited
-A FORWARD -j REJECT --reject-with icmp-host-prohibited
COMMIT
```

```
systemctl restart iptables.service
```

```
systemctl enable iptables.service
```