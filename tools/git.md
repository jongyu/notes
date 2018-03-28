# Git

## SSH Key

- 生成SSH Key

```
ssh-keygen -t rsa -C "你的Email"
```

- 查看生产的公钥

```
cat ~/.ssh/id_rsa.pub
```

## Git使用

- Git的全局设置

```
git config --global user.name "name"
git config --global user.email "email"
```

- 创建一个新的存储库

```
git clone git@git.com:username/repo.git
cd repo
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master
```

- 现有的文件夹

```
cd existing_folder
git init
git remote add origin git@git.com:username/repo.git
git add .
git commit -m "Initial commit"
git push -u origin master
```

- 现有的Git仓库

```
cd existing_repo
git remote rename origin old-origin
git remote add origin git@git.com:username/repo.git
git push -u origin --all
git push -u origin --tags
```

## 分支

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

## Git克隆某个单独目录或文件

* 创建文件夹
```
mkdir project_folder
```

* 进入目录
```
cd project_folder
```

* 初始化Git仓库
```
git init
```

* 添加远程仓库地址
```
git remote add -f origin git@github.com:zhongyua/Documents.git
```

* 开启稀疏模式
```
git config core.sparsecheckout true
```

* 设置需要的默认或文件
```
echo "back-end/tools" >> .git/info/sparse-checkout
echo "back-end/Flink.md" >> .git/info/sparse-checkout
```

* 拉取远程仓库
```
git pull origin master
```