# 引导

## 命令行
- 安装Angular CLI命令行
```
npm i -g @angular/cli
```

- 创建一个应用
```
ng new appName -D=true --style=scss --routing=true
ng new appName -D=true --style=scss --routing=false
```

- 启动服务
```
ng serve
ng serve --port 80 #指定端口
ng serve --open #打开浏览器
```

- 生成组件
```
ng g c components/componentName
ng g s service/serviceName
```


- 打包
```
ng build --prod --aot
```
