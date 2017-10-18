## Nginx

### Install

* 下载
```wget
wget http://nginx.org/download/nginx-1.12.2.tar.gz
```

* 安装依赖包
```yum
yum install -y gcc gcc-c++ pcre pcre-devel zlib zlib-devel openssl openssl-devel
```

* 预设几个文件夹，方便等下安装的时候有些文件可以进行存放
```bash
mkdir -p /usr/local/nginx /var/log/nginx /var/temp/nginx /var/lock/nginx
```

* 解压Nginx
```bash
tar -zxvf nginx-1.12.2.tar.gz
```

* 进入解压后的目录
```bash
cd nginx-1.12.2/
```

* 编译配置
```
./configure \
--prefix=/usr/local/nginx \
--pid-path=/var/local/nginx/nginx.pid \
--lock-path=/var/lock/nginx/nginx.lock \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-http_gzip_static_module \
--http-client-body-temp-path=/var/temp/nginx/client \
--http-proxy-temp-path=/var/temp/nginx/proxy \
--http-fastcgi-temp-path=/var/temp/nginx/fastcgi \
--http-uwsgi-temp-path=/var/temp/nginx/uwsgi \
--with-http_ssl_module \
--http-scgi-temp-path=/var/temp/nginx/scgi
```

* 编译
```
make
```

* 安装
```
make install
```

- 启动 Nginx
    - 先检查是否在 /usr/local 目录下生成了 Nginx 等相关文件：`cd /usr/local/nginx;ll`，正常的效果应该是显示这样的：
    
    ``` nginx
    drwxr-xr-x. 2 root root 4096 3月  22 16:21 conf
    drwxr-xr-x. 2 root root 4096 3月  22 16:21 html
    drwxr-xr-x. 2 root root 4096 3月  22 16:21 sbin
    ```

    - 停止防火墙：`service iptables stop`
        - 或是把 80 端口加入到的排除列表：
        - `sudo iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT`
        - `sudo service iptables save`
        - `sudo service iptables restart`
    - 启动：`/usr/local/nginx/sbin/nginx`，启动完成 shell 是不会有输出的
    - 检查 时候有 Nginx 进程：`ps aux | grep nginx`，正常是显示 3 个结果出来 
    - 检查 Nginx 是否启动并监听了 80 端口：`netstat -ntulp | grep 80` 
    - 访问：`192.168.1.114`，如果能看到：`Welcome to nginx!`，即可表示安装成功
    - 检查 Nginx 启用的配置文件是哪个：`/usr/local/nginx/sbin/nginx -t`
    - 刷新 Nginx 配置后重启：`/usr/local/nginx/sbin/nginx -s reload`
    - 停止 Nginx：`/usr/local/nginx/sbin/nginx -s stop`
    - 如果访问不了，或是出现其他信息看下错误立即：`vim /var/log/nginx/error.log`

## 把 Nginx 添加到系统服务中

- 新建文件：`vim /etc/init.d/nginx`
- 添加如下内容：

``` nginx
#!/bin/bash


#nginx执行程序路径需要修改
nginxd=/usr/local/nginx/sbin/nginx

# nginx配置文件路径需要修改
nginx_config=/usr/local/nginx/conf/nginx.conf

# pid 地址需要修改
nginx_pid=/var/local/nginx/nginx.pid


RETVAL=0
prog="nginx"

# Source function library.
. /etc/rc.d/init.d/functions
# Source networking configuration.
. /etc/sysconfig/network
# Check that networking is up.
[ ${NETWORKING} = "no" ] && exit 0
[ -x $nginxd ] || exit 0

# Start nginx daemons functions.
start() {
if [ -e $nginx_pid ];then
   echo "nginx already running...."
   exit 1
fi

echo -n $"Starting $prog: "
daemon $nginxd -c ${nginx_config}
RETVAL=$?
echo
[ $RETVAL = 0 ] && touch /var/lock/subsys/nginx
return $RETVAL
}

# Stop nginx daemons functions.
# pid 地址需要修改
stop() {
	echo -n $"Stopping $prog: "
	killproc $nginxd
	RETVAL=$?
	echo
	[ $RETVAL = 0 ] && rm -f /var/lock/subsys/nginx /var/local/nginx/nginx.pid
}

# reload nginx service functions.
reload() {
	echo -n $"Reloading $prog: "
	#kill -HUP `cat ${nginx_pid}`
	killproc $nginxd -HUP
	RETVAL=$?
	echo
}

# See how we were called.
case "$1" in
	start)
		start
		;;
	stop)
		stop
		;;
	reload)
		reload
		;;
	restart)
		stop
		start
		;;
	status)
		status $prog
		RETVAL=$?
		;;
	*)

	echo $"Usage: $prog {start|stop|restart|reload|status|help}"
	exit 1

esac
exit $RETVAL
```

- 修改权限：`chmod 755 /etc/init.d/nginx`
- 启动服务：`service nginx start`
- 停止服务：`service nginx stop`
- 重启服务：`service nginx restart`

## Nginx 配置

- Nginx 默认配置文件：`vim /usr/local/nginx/conf/nginx.conf`