# Nginx

## 反向代理
- 默认配置
```conf
server {
    # 监听的端口
    listen       80;
    # 监听的域名
    server_name  localhost;
    # 路径
    location / {
        # 真实地址
        proxy_pass http://127.0.0.1:8080;
        index  index.html index.htm;
    }
}
```

- 根据域名进行反向代理
```
server {
    listen       80;
    server_name  admin.example.com;
    location / {
        proxy_pass http://127.0.0.1:8081;
        index  index.html index.htm;
    }
}
```

## 负载均衡
```conf
upstream app {
    server 127.0.0.1:8080;
    server 127.0.0.1:8081;
}

server {
    listen       80;
    server_name  localhost;

    location / {
        proxy_pass http://app;
    }
}
```