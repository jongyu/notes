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