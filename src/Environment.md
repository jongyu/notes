## 开发环境配置

#### Java for Windows
`CLASSPATH`
```
.;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar
```

`JAVA_HOME`
```
C:\Program Files\Java\jdk1.8.0_111
```

`Path`
```
%JAVA_HOME%\bin
```
```
%JAVA_HOME%\jre\bin
```

#### Java for Linux
```
JAVA_HOME=/jdk1.8.0_111
JRE_HOME=$JAVA_HOME/jre
PATH=$PATH:$JAVA_HOME/bin
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JAVA_HOME
export JRE_HOME
export PATH
export CLASSPATH
```
* 刷新该配置
```
source /etc/profile
```

#### Maven for Windows
`MAVEN_HOME`
```
G:\DevelopmentTools\apache-maven-3.3.9
```

`MAVEN_OPTS`
```
-Xms128m  -Xmx512m
```

#### Maven for Linux
```
MAVEN_HOME=/usr/program/maven3.3.9
PATH=$PATH:$MAVEN_HOME/bin
MAVEN_OPTS="-Xms256m -Xmx356m"
export MAVEN_HOME
export PATH
export MAVEN_OPTS
```
* 刷新该配置
```
source /etc/profile
```
* 全局阿里云远程仓库
```
<mirror>xml
    <id>alimaven</id>
    <name>aliyun maven</name>
    <url>http://maven.aliyun.com/nexus/content/groups/public</url>
    <mirrorOf>central</mirrorOf>
</mirror>
```