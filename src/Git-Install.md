## Git

### 安装及配置

* [下载地址](https://git-scm.com/download/)

* 安装`反正我是一路next的,没什么好说的`

### 配置用户及生成SSH key
* 第一步，你需要告诉git你的名字，这个名字会出现在你的提交记录中。
```
git config --global user.name "你的名字"
```
* 然后是你的Email，同样，这个Email也会出现在你的提交记录中，请尽量保持此Email和您的Git@OSC的注册Email一致。
```
git config --global user.email "你的Email"
```

SSH key 可以让你在你的电脑和服务器之间建立安全的加密连接。
* 你可以按如下命令来生成sshkey
```
ssh-keygen -t rsa -C "你的Email"
```

* 查看你的public key，并把他添加到[码云](http://git.oschina.net/keys)和[GitHub](https://github.com/settings/keys)
```
cat ~/.ssh/id_rsa.pub
```

* 测试与码云的连接
```
ssh -T git@git.oschina.net
```

返回

```
Welcome to Git@OSC, yourname!
```
则证明添加成功。

* 测试与GitHub的连接
```
ssh git@github.com
```
返回
```
PTY allocation request failed on channel 0
Hi yourname! You've successfully authenticated, but GitHub does not provide                     shell access.
Connection to github.com closed.
```
```
则证明添加成功。
```