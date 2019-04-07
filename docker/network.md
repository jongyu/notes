# 网络使用

- 使用宿主机IP
```
docker run --net=host
```

- 创建网络
```
docker network create --subnet=192.168.0.0/16 networkName
```

- 删除未使用的网络
```
docker network prune
```

- 查看所有容器的IP
```
docker inspect --format='{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
```
