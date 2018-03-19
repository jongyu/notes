# Macaca环境

- 修复Xcode

>sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

- 设置当前用户

>sudo chown -R $(whoami) /usr/local/lib/node_modules

- 运行测试

>platform=android macaca run -d ./macaca-test/mobile-app-sample.test.js