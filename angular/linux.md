# Linux 部署Angular

## 安装Node
1.下载Node
```
wget https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.xz
```

2.将`.xz`文件解压成为`.tar`文件
```
xz -d node-v10.15.3-linux-x64.tar.xz
```

3.将安装包解压
```
tar xvf node-v10.15.3-linux-x64.tar -C /usr/local
```

4.在环境变量中添加Node目录
```
export NODE_HOME=/usr/local/node-v10.15.3-linux-x64
export PATH=$NODE_HOME/bin:$PATH
```

5.安装命令行工具
```
npm install -g @angular/cli
```

## 打包
- 安装依赖
```
npm i --unsafe-perm
```

- 打包部署
```
ng build --prod --aot
```

## Nginx
- 安装Nginx
```
apt install nginx
```

- 查看Nginx状态
```
systemctl status nginx
```

- 关闭Nginx
```
systemctl stop nginx
```

- 启动Nginx
```
systemctl start nginx
```

- 重启Nginx
```
systemctl restart nginx
```

- 重新加载Nginx配置
```
systemctl reload nginx
```

- 禁用Nginx服务
```
systemctl disable nginx
```

- 启用Nginx服务
```
systemctl enable nginx
```

### Nginx目录
- 配置目录
```
/etc/nginx/nginx.conf
```

- 错误日志
```
tail -f /var/log/nginx/error.log
```
