# Git

## 安装

- 下载地址

[淘宝下载](https://npm.taobao.org/mirrors/git-for-windows/) *推荐*

[官网下载](https://git-scm.com/download/) *速度慢*

- 安装

Windows直接点击`next`就可以了

Mac 推荐使用Homenrew安装`brew install git`、或者下载Xcode

- 设置

1、告诉Git你的名字

```bash
git config --global user.name "你的名字"
```

2、告诉Git你的邮箱

```bash
git config --global user.email "你的Email"
```

3、生存SSH Key用于验证,输入后回车完成即可

```bash
ssh-keygen -t rsa -C "你的Email"
```

4、查看生成的SSH Key

```bash
cat ~/.ssh/id_rsa.pub
```

5、将SSH Key复制到服务器 SSH公钥中

[GitHub](https://github.com/settings/keys)

[Coding](https://coding.net/user/account/setting/keys)

6、验证是否成功

```shell
ssh git@github.com
```

```shell
ssh git@git.coding.net
```