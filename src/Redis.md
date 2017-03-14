## Redis

### 安装
* 编译依赖需要gcc-++
```
yum -y install gcc-c++
```

* 解压Redis
```
tar -zxvf redis-3.2.8.tar.gz
```

* 进入Redis目录执行安装
```
make
```
* Linux安装的目录在/usr/local/bin/ 相当于Windows的C:\Program Files
* 进入`cd /usr/local/bin/`查看下面是否有下面的Redis文件
```
-rwxr-xr-x 1 root root 2431936 Mar 11 09:56 redis-benchmark
-rwxr-xr-x 1 root root   25221 Mar 11 09:56 redis-check-aof
-rwxr-xr-x 1 root root 5181830 Mar 11 09:56 redis-check-rdb
-rwxr-xr-x 1 root root 2584803 Mar 11 09:56 redis-cli
lrwxrwxrwx 1 root root      12 Mar 11 09:56 redis-sentinel -> redis-server
-rwxr-xr-x 1 root root 5181830 Mar 11 09:56 redis-server
```

* 查看Redis经常是否启动
```
ps -ef|grep redis
```

* 启动Redis
Redis放在了`/usr/local/software/`目录下
```
redis-server /usr/local/software/redis-3.2.8/redis.conf
```
* 进入Redis
```
redis-cli -p 6379
```
输入`ping`会响应`PONG`
* 退出
```
SHUTDOWN
```
```
exit
```

### Redis命令
* 切换数据库
```
select
```
* 查看当前数据库的key的数量
```
dbsize
```

```
keys *
```
相当于关系型数据库的

```
select *
```