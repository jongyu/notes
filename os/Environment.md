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
export JAVA_HOME JRE_HOME CLASSPATH PATH
```
* 刷新该配置
```
source /etc/profile
```

#### Java of Mac
```
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home"
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
PATH=$PATH:$JAVA_HOME/bin
export JAVA_HOME CLASS_PATH PATH
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

`Path`
```
%MAVEN_HOME%\bin
```

#### Maven for Mac
```
MAVEN_HOME="/Users/zhongyu/Applications/apache-maven-3.5.2"
PATH=$PATH:$MAVEN_HOME/bin
MAVEN_OPTS="-Xms128m  -Xmx512m"
export MAVEN_HOME MAVEN_OPTS PATH
```
