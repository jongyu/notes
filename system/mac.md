### MacOS

* 启用三指拖动
```
系统偏好设置    ->    辅助功能    ->    鼠标与触摸板    ->    触摸板选项    ->    启用拖移    ->    三指拖移
```

* zsh和bash之间切换
-> 使用zsh为root默认shell
```
chsh -s /bin/zsh root
```

-> 修改当前用户使用的shell
```
chsh -s /bin/zsh
```

->恢复系统默认shell
```
chsh -s /bin/bash
```

#### 软件
* [Chrome](http://www.google.cn/chrome/browser/desktop/index.html)    `最好用的浏览器`
* [iTerm](http://www.iterm2.com/)    `命令工具`
* [ZSH](http://ohmyz.sh/)    `命令行提示工具`
* [Homebrew](https://brew.sh/)    `Mac软件包管理工具`
* [PostMan](https://www.getpostman.com/)    `HTTP请求工具`
* [JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html)    `JDK`
* [IDEA](https://www.jetbrains.com/idea/)    `Java开发工具`
* [ Sublime](http://www.sublimetext.com/)    `文本编辑器`
* [Maven](http://maven.apache.org/download.cgi)    `Java项目构建工具`
* [Git](https://git-scm.com/download/)    `版本控制工具`
* [MongoDB](https://www.mongodb.com/download-center#atlas)    `MongoDB数据库`
* [Redis](https://redis.io/download)    `Redis`
* [Nginx](http://nginx.org/en/download.html)    `Nginx`
* [Sequel Pro](http://www.sequelpro.com/)    `MySQL工具`
* [Robo 3T](https://robomongo.org/)    `MongoDB工具`
* [Redis Desktop Manager](https://redisdesktop.com/download)    `Redis工具`

```bash
### Hexo ###
alias hexos='hexo clean && hexo generate && hexo server'
alias hexod='hexo clean && hexo generate && hexo deploy && hexo backup'

### Java环境 ###
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
JRE_HOME=$JAVA_HOME/jre
PATH=$PATH:$JAVA_HOME/bin
export JAVA_HOME JRE_HOME CLASS_PATH PATH

### Maven环境 ###
MAVEN_HOME="/Users/zhongyu/Applications/apache-maven-3.5.2"
PATH=$PATH:$MAVEN_HOME/bin
MAVEN_OPTS="-Xms128m  -Xmx512m"
export MAVEN_HOME MAVEN_OPTS PATH

### Android环境 ###
ANDROID_HOME="/Users/zhongyu/Applications/android-sdk"
PATH=$ANDROID_HOME/platform-tools:$PATH
PATH=$ANDROID_HOME/tools:$PATH
PATH=$ANDROID_HOME/tools/bin:$PATH
export ANDROID_HOME PATH

### WebDriver环境 ###
export PATH="/Users/zhongyu/Applications/webdriver:${PATH}"

### JMeter环境  ###
export PATH="/Users/zhongyu/Applications/apache-jmeter-4.0/bin:${PATH}"
```