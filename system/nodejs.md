# Node.js

1、下载node安装包

```shell
wget https://nodejs.org/dist/v8.9.4/node-v8.9.4-linux-x64.tar.xz
```

2、将安装包解压成.tar文件

```shell
xz -d node-v8.9.4-linux-x64.tar.xz
```

3、将tar文件解压

```shell
tar -xvf node-v8.9.4-linux-x64.tar -C /soft
```

4、添加环境变量

```shell
export NODE_HOME=/soft/node-v8.9.4-linux-x64
export PATH=$NODE_HOME/bin:$PATH
```

5、设置淘宝镜像

```shell
npm config set registry https://registry.npm.taobao.org
```

6、查看淘宝镜像是否设置成功

```shell
npm config get registry
```

7、安装淘宝的cnpm

```shell
npm install -g cnpm --registry=https://registry.npm.taobao.org
```