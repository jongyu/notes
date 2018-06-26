# Docker常用操作


## Docker命令分类
- 生命周期
```bash
docker [run | start | stop | restart | kill | rm | pause | unpause]
```

- 操作运维
```bash
docker [ps | inspect | top | attach | events | logs | wait | export | port]
```

- rootfs命令
```bash
docker [commit | cp | diff]
```

- 镜像仓库
```bash
docker [login | pull | push | search]
```

- 镜像管理
```bash
docker [images | rmi | tag | build | history | save | import]
```

- 其他命令
```bash
docker [info | version]
```

## Docker常用命令
- 搜索镜像
```
docker search java
```

- 下载镜像 `:后面是版本号`
```
docker pull java:8
```

- 查看本地镜像
```
docker images
```

- 删除本地镜像`-f 强制删除`
```
docker rmi java:8
docker rmi 镜像ID
docker rmi -f java
```

- 构建镜像`-f 指定DockerFile` `zhongyu`是用户,`spring`是镜像名称,`0.1`是版本号
```
docker build -t zhongyu/spring:0.1 -f Dockerfile .
```

- 推送镜像
```
docker push zhongyu/spring:0.1
```

- tag
```
docker tag zhongyu/spring:0.1 zhongyu/spring:latest
```

- 运行容器`-d 后台运行`,`-p 指定端口`,`--name 指定名称`
```
docker run -d -p 80:8080 --name tomcat_abc tomcat
```

- 查看运行容器`-a 是查看所有的`
```
docker ps -a
```

- 停止容器,`容器ID可以通过docker ps`获取
```
docker stop 容器ID
```

- 删除容器
```
docker rm 容器ID
``

-- 产看容器所在目录
```
docker inspect mongo | grep "Source"
```