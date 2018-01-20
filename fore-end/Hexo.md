## 安装Hexo

```
npm config set registry https://registry.npm.taobao.org
```

```
npm config get registry
```

```
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

```
cnpm install hexo-cli -g
```


```
hexo init blog
```

```
cd blog
```

```
cnpm install
```

```
cnpm install hexo-deployer-git --save
```

```
cnpm install hexo-generator-feed --save
```

```
cnpm install hexo-generator-sitemap --save
```

```
cnpm install hexo-generator-baidu-sitemap --save
```

- or
```
cnpm install hexo-deployer-git hexo-generator-feed hexo-generator-sitemap hexo-generator-baidu-sitemap --save
```

- 备份插件
```
npm install hexo-git-backup --save
```

```
sitemap:
  path: sitemap.xml
baidusitemap:
  path: baidusitemap.xml
```

服务器
```
hexo server
```

生成
```
hexo generate
```

部署
```
hexo deploy
```

分类
```
hexo new page 'categories'
```
```
title: 分类
date: 2016-01-01 12:00:00
type: "categories"
comments: false
---
```

标签
```
hexo new page 'tags'
```
```
title: 标签
date: 2016-01-01 12:00:00
type: "tags"
comments: false
---
```

关于
```
hexo new page 'about'
```
```
title: 关于
date: 2016-01-01 12:00:00
type: "about"
comments: false
---
```

#### Next
- 进入`Blog`目录
```
cd Blog
```

- 克隆主题
```
git clone https://github.com/iissnan/hexo-theme-next themes/next
```

* 部署在Coding上不被拦截
```
open themes/next/layout/_partials/footer.swig -a /Applications/Sublime\ Text.app
```

```
<div class="theme-info">
  <p>Hosted by <a href="https://pages.coding.me" style="font-weight: bold">Coding Pages</a></p>
</div>
```

* 修改文章内链接文本样式
```
open themes/next/source/css/_common/components/post/post.styl -a /Applications/Sublime\ Text.app
```

```
.post-body p a{
  color: #0593d3;
  border-bottom: none;
  border-bottom: 1px solid #0593d3;
  &:hover {
    color: #fc6423;
    border-bottom: none;
    border-bottom: 1px solid #fc6423;
  }
}
```

* 修改文章底部的那个带#号的标签
``` 
open themes/next/layout/_macro/post.swig -a /Applications/Sublime\ Text.app
```


搜索`rel="tag">#`将`#`替换成`<i class="fa fa-tag"></i>`

#### 插件
```
cnpm install --save shelljs
```

##### 在创建博客文件后自动打开
- 首先在Hexo目录下的scripts目录中创建一个JavaScript脚本文件。
- scripts目录新建的JavaScript脚本文件可以任意取名。
- 如果使用的是Windows，则将下列内容写入脚本中：
```javascript
var spawn = require('child_process').exec;

hexo.on('new', function(data){
  spawn('start  "markdown编辑器绝对路径.exe" ' + data.path);
});
```

- 如果使用的是Mac，则将下列内容写入脚本中：
```javascript
var exec = require('child_process').exec;

hexo.on('new', function(data){
    exec('open -a "markdown编辑器绝对路径.app" ' + data.path);
});
```

##### Hexo 自动备份
```
git init
git add .
git commit -m "first commit"
git remote add origin git@github.com:yourname/hexo-source.git
git push -u origin master
```
- 首先在Hexo目录下的scripts目录中创建一个JavaScript脚本文件。
- scripts目录新建的JavaScript脚本文件可以任意取名。
- 添加以下脚本内容 需要修改186行
```
require('shelljs/global');
try {
	hexo.on('deployAfter', function() {//当deploy完成后执行备份
		run();
	});
} catch (e) {
	console.log("产生了一个错误<(￣3￣)> !，错误详情为：" + e.toString());
}
function run() {
	if (!which('git')) {
		echo('Sorry, this script requires git');
		exit(1);
	} else {
		echo("======================Auto Backup Begin===========================");
		cd('D:/Blog');//Hexo Blog位置
		if (exec('git add --all').code !== 0) {
			echo('Error: Git add failed');
			exit(1);
		}
		if (exec('git commit -am "Form auto backup script\'s commit"').code !== 0) {
			echo('Error: Git commit failed');
			exit(1);
		}
		if (exec('git push origin master').code !== 0) {
			echo('Error: Git push failed');
			exit(1);
		}
		echo("==================Auto Backup Complete============================")
	}
}
```
