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

- 创建网络2
```
docker network create --driver=bridge --subnet=172.28.0.0/16  --ip-range=172.28.5.0/24 --gateway=172.28.5.254 networkName
```

- 指定容器的IP地址
```
docker run --name nginx -d -p 80:80 \
-v /root/nginx.conf:/etc/nginx/nginx.conf:ro \
-v /root/site:/usr/share/nginx/html:ro \
--net=networkName --ip 172.28.0.3 nginx
```

- 查看所有容器的IP
```
docker inspect --format='{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
```
