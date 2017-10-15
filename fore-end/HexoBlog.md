## 安装Hexo

```
npm config set registry https://registry.npm.taobao.org
```

```
npm config get registry
```

```
npm install hexo-cli -g
```


```
hexo init blog
```

```
cd blog
```

```
npm install
```

```
npm install hexo-deployer-git --save
```

```
npm install hexo-generator-feed --save
```

```
npm install hexo-generator-sitemap --save
```

```
npm install hexo-generator-baidu-sitemap --save
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
date: 2016-12-30 12:00:00
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
date: 2016-12-30 12:00:00
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
date: 2016-12-30 12:00:00
type: "about"
comments: false
---
```

```
themes/next/layout/_partials/footer.swig
```

```
<div class="theme-info">
  <p>Hosted by <a href="https://pages.coding.me" style="font-weight: bold">Coding Pages</a></p>
</div>
```