# Nginx代理Angular服务
```
location / {
    root   /roo/dist;
    index  index.html index.htm;
    try_files $uri $uri/ /index.html;
}
```
