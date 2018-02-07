1、下载node安装包
```
wget https://nodejs.org/dist/v8.9.4/node-v8.9.4-linux-x64.tar.xz
```

2、将安装包解压成.tar文件
```
xz -d node-v8.9.4-linux-x64.tar.xz
```

3、将tar文件解压
```
tar -xvf node-v8.9.4-linux-x64.tar -C /soft
```

4、添加环境变量
```
export NODE_HOME=/soft/node-v8.9.4-linux-x64
export PATH=$NODE_HOME/bin:$PATH
```

5、设置淘宝镜像
```
npm config set registry https://registry.npm.taobao.org
```

6、查看淘宝镜像是否设置成功
```
npm config get registry
```

7、安装淘宝的cnpm
```
npm install -g cnpm --registry=https://registry.npm.taobao.org
```