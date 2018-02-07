## 开发环境配置

#### Java for Windows
`CLASSPATH`=`.;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar`

`JAVA_HOME`=`C:\Program Files\Java\jdk1.8.0_111`

`Path`=`%JAVA_HOME%\bin`&`%JAVA_HOME%\jre\bin`

#### Maven for Windows
`MAVEN_HOME`=`G:\DevelopmentTools\apache-maven-3.3.9`

`MAVEN_OPTS`=`-Xms128m  -Xmx512m`

`Path`=`%MAVEN_HOME%\bin`

#### Java for Mac
```
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home"
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
JRE_HOME=$JAVA_HOME/jre
PATH=$PATH:$JAVA_HOME/bin
export JAVA_HOME JRE_HOME CLASS_PATH PATH
```

#### Maven for Mac
```
MAVEN_HOME="/Users/zhongyu/Applications/apache-maven-3.5.2"
PATH=$PATH:$MAVEN_HOME/bin
MAVEN_OPTS="-Xms128m  -Xmx512m"
export MAVEN_HOME MAVEN_OPTS PATH
````

#### WebDriver for Mac
```
PATH="/Users/zhongyu/Applications/driver:${PATH}"
export PATH
```