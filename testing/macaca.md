# Macaca环境

### 安装
- 客户端
```bash
npm i -g macaca-cli
npm i -g macaca-ios
npm i -g macaca-android
```

- 检查环境
```bash
macaca doctor
```

- 启动服务
```
macaca run --verbose
```

### Mac问题
- 修复Xcode

>sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

- 设置当前用户

>sudo chown -R $(whoami) /usr/local/lib/node_modules