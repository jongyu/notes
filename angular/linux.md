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

## 打包
- 安装依赖
```
npm i --unsafe-perm
```
