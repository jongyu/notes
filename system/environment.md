## 开发环境配置

#### Java for Windows
`CLASSPATH`=`.;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar`

`JAVA_HOME`=`C:\Program Files\Java\jdk1.8.0_111`

`Path`=`%JAVA_HOME%\bin`&`%JAVA_HOME%\jre\bin`

#### Maven for Windows
`MAVEN_HOME`=`G:\DevelopmentTools\apache-maven-3.3.9`

`MAVEN_OPTS`=`-Xms128m  -Xmx512m`

`Path`=`%MAVEN_HOME%\bin`

#### Android for Windows
`ANDROID_HOME`=`G:\DevelopmentTools\android-sdk`
`Path`=`%ANDROID_HOME%\tools`&`%ANDROID_HOME%\tools\bin`&`%ANDROID_HOME%\platform-tools`

### macOS And Linux ###

- Java & Maven
```bash
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home"
export MAVEN_HOME="/Users/zhongyu/Applications/apache-maven-3.5.3"
export MAVEN_OPTS="-Xms128m  -Xmx512m"
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$MAVEN_HOME/bin:$JAVA_HOME/bin:$MAVEN_OPTS:$PATH
```

- Andorid
```bash
export ANDROID_HOME="/Users/zhongyu/Applications/android-sdk"
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH
```
