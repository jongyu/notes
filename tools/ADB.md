#### ADB

## 安装

https://developer.android.com/studio/index.html

https://developer.android.com/studio/command-line/sdkmanager.html#options

##### ADB连接夜神模拟器
- 进入夜神安装目录
```
cd C:\Program Files (x86)\Nox\bin
```
- 连接
```
nox_adb.exe connect 127.0.0.1:62001
```

##### 常用命令
- 查看是否连接
```
adb devices
```

- 上传文件(文件夹)
```
adb push E:/files /mnt/sdcard/Download/
```
- 安装软件
```
adb install D:\Users\Appliaction\App.apk
```

- 卸载软件
```
adb uninstall com.xxx.xxx
```

- 启动服务
```
adb start-server
```

- 停止服务
```
adb kill-server
```

- shell
```
adb shell
```

- 查看已经安装的软件(需要进入shell)
```
pm list packages
```

- 搜索已安装的软件如：计数器
```
pm list packages | grep calculator2
```

- 转发
```
adb forward tcp:1080 tcp:1080
```
