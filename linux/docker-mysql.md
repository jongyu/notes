# Docker安装MySQL


1. 拉取MySQL的Docker镜像
```
docker pull mysql
```

2. 启动MySQL,`MYSQL_ROOT_PASSWORD=`密码
```
docker run -it --rm --name mysql -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 -d mysql
```

3. 查看MySQL是否运行
```
docker ps -a
```

4. 进入MySQL容器
```
docker exec -it mysql bash
```

5. 登录MySQL
```
mysql -uroot -p123456
```

6. 查看信息,host为`%`表示不限制IP
```
select host,user,plugin,authentication_string from mysql.user;
```

7. 设置远程登录的密码
```
ALTER user 'root'@'%' IDENTIFIED WITH mysql_native_password BY '123456';
```

8. 刷新数据库
```
FLUSH PRIVILEGES;
```