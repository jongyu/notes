# 安装SDK工具

1、查看所有的包

```shell
sdkmanager --list
```

2、安装软件包,并添加选项

```shell
sdkmanager "platform-tools" "platforms;android-25"
```

3、安装软件

```shell
sdkmanager "build-tools;25.0.0"
```

4、卸载软件

```shell
sdkmanager --uninstall "build-tools;27.0.3"
```

## ADB命令

https://developer.android.com/studio/index.html

https://developer.android.com/studio/command-line/sdkmanager.html#options

- 查看连接的设备

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