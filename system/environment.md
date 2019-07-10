## 开发环境配置

#### Java for Windows
`CLASSPATH`=`.;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar`

`JAVA_HOME`=`C:\Program Files\Java\jdk1.8.0_211`

`Path`=`%JAVA_HOME%\bin`&`%JAVA_HOME%\jre\bin`

#### Maven for Windows
`MAVEN_HOME`=`C:\Applications\apache-maven-3.6.1`

`MAVEN_OPTS`=`-Xms128m  -Xmx512m`

`Path`=`%MAVEN_HOME%\bin`

#### Android for Windows
`ANDROID_HOME`=`G:\DevelopmentTools\android-sdk`
`Path`=`%ANDROID_HOME%\tools`&`%ANDROID_HOME%\tools\bin`&`%ANDROID_HOME%\platform-tools`

### macOS And Linux ###

- Java & Maven
```bash
export JAVA_HOME="/usr/local/jdk1.8.0_211"
export MAVEN_HOME="/usr/local/apache-maven-3.6.1"
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$MAVEN_HOME/bin:$JAVA_HOME/bin:$PATH
```

- Andorid
```bash
export ANDROID_HOME="/Users/zhongyu/Applications/android-sdk"
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH
```

- Node.js
```bash
export NODE_HOME=/usr/local/node-v10.16.0-linux-x64
export PATH=$NODE_HOME/bin:$PATH
```

## 最新
```bash
export JAVA_HOME="/usr/local/jdk1.8.0_201/"
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$JAVA_HOME/bin:$PATH

export MAVEN_HOME="/usr/local/apache-maven-3.6.1"
export MAVEN_OPTS="-Xms128m  -Xmx512m"
export PATH=$MAVEN_HOME/bin:$MAVEN_OPTS:$PATH

export NODE_HOME=/usr/local/node-v10.15.3-linux-x64
export PATH=$NODE_HOME/bin:$PATH
```
