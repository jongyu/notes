## Git常用命令以及操作

### 常用命令

* 从远程克隆代码到本地，`directory`用于自定义新的目录名
```
git clone url directory
```
* 检查本地状态，可以查看当前所在分支、新增或被修改的文件
```
git status
```
* 还原某文件所以作的修改，也可以`git checkout .`还原所有修改
```
git checkout FileName
```
* 添加文件到缓存，并追踪新的文件。也可以`git add .`添加所有文件到缓存
```
git add FileName
```
* 提交代码到本地代码库，非常推荐做完一个小功能就 commit 一次，多次 commit 替代一次大 commit ，也便于后续代码合并和 review 。
```
git commit - m "提交说明"
```
* 同步本地库代码到远程库
```
git push
```
* 列出可用分支，`git branch -a` 列出本地和远程库所有分支
```
git branch
```
* 切换分支
```
git checkout branchName
```
* 查看本地 commit 记录，number 可用限制 log 显示条数
```
git log -number
```
* 比较当前文件和暂存区文件差异
```
git diff FileName
```
* 从远程库提取更新代码到本地
```
git pull
```

### 代码撤销

* 撤销本地未add的代码
```
git clean -df
git reset --hard
```

* 撤销本地未`add`未`commit`的代码，`FileName`为单个文件`.`为所有文件
```
git checkout FileName or .
```
* 撤销本地已经`add`但未`commit`的代码-单个文件
```
git reset FileName
```
* 撤销本地已经`add`但未`commit`的代码-所有文件
```
git reset
```
* 撤销本地已经`commit`但未`push`的代码 撤销最后一次`commit`并回退到上一次`commit`的代码-注意代码丢弃
```
git reset --hard HEAD~1
```
* 撤销本地已经`commit`但未`push`的代码 撤销最后一次`commit`并回退到上一次`commit`的代码-不回退代码
```
git reset HEAD~1
```
* 撤销已经`commit`并且已经`push`的代码
```
git revert commitID
```
* 修改已经commit的注释内容，一般会用`vim`打开，修改完`:wq`退出即可。
```
git commit --amend
```

### 同分支代码合并
#### 适用场景：`git pull`失败或者已知远程库有更新的情况下，注意本地先`commit`，然后再`rebase`操作。

* 从远程库提取更新代码到本地，并尝试合并代码。与`merge`不同，不会产生新的`commit`记录，合并代码的时候需要非常小心，不要把别的小伙伴的代码弄丢了！
```
git pull --rebase
```
* 遇到冲突解决冲突，解决完成以后`git add`
```
git add .
```
* 所有冲突都解决完并`add`完以后继续`rebase`，不要`commit`，可能需要多次`continue`和`add`操作，直至全部合并完。
```
git rebase --continue
```
* 将本地代码库代码同步到远程库
```
git push
```

### 不同分支代码合并
#### 适用场景：把代码从 `develop`分支（开发）合并到 `master`分支（生产）

* 把另一个分支的`commit`修改应用到当前分支。`commit id`支持跨分支、短 commit id（前 8 位，例如 247d27c6），当然也支持用于同一分支。
```
git cherry-pick commitID
```
* 遇到冲突解决冲突，解决完成以后`git add`
```
git add .
```
* 所有冲突都解决完并`add`完以后继续`rebase`，不要`commit`，可能需要多次`continue`和`add`操作，直至全部合并完。
```
git rebase --continue
```
* 将本地代码库代码同步到远程库
```
git push
```

### 代码暂存
#### 适用场景：把功能未完成又不想 c`commit`，但是又急需还原代码到上次 `commit`（例如紧急bug修复）

* 暂存未`commit`的代码并还原所有修改
```
git stash
```
* 还原最后一次`stash`的代码
```
git stash pop
```
