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
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home"
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

#### Maven for Linux
```
MAVEN_HOME=/usr/program/maven3.3.9
PATH=$PATH:$MAVEN_HOME/bin
MAVEN_OPTS="-Xms256m -Xmx356m"
export MAVEN_HOME MAVEN_OPTS PATH
```

* 刷新该配置
```
source /etc/profile
```

#### Maven for Mac
```
export MAVEN_HOME=/Users/zhongyu/Develop/apache-maven-3.5.0
export PATH=$PATH:$MAVEN_HOME/bin
```