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

## 使用

- 初始化一个本地仓库

```shell
git init
```

- 克隆一个远程仓库到本地,`自定义本地名称`是可选的

```shell
git clone 仓库地址 自定义本地名称
```

- 添加文件

```bash
git add file_name
或者 添加所有文件
git add .
git add --all
```

- 提交代码

```bash
git commit -m '修改原因，相关说明信息'
```

- 添加远程仓库地址

```bash
git remote add origin git@github.com:username/repo.git
```

- 推送到远程

```bash
git push -u origin master
```

## 分支

- 查看本地分支

```bash
git branch
```

- 查看所有分支(包括远程)

```bash
git branch -a
```

- 创建分支

```bash
git branch 分支名称
```

- 切换分支

```bash
git checkout 分支名称
```

- 创建并切换分支

```bash
git checkout -b 分支名称
```

- 合并某分支到当前分支

```bash
git merge 分支名称
```

- 删除分支

```bash
git branch -d
```