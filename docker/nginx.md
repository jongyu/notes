# Nginx

- 指定Web目录文件和Nginx配置文件
```
docker run --name nginx -d -p 80:80 \
-v /root/nginx.conf:/etc/nginx/nginx.conf:ro \
-v /root/site:/usr/share/nginx/html:ro nginx
```
