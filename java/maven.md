# Maven

## 安装

- 修改Maven本地仓库

```xml
<localRepository>D:/LocalRepository/.maven</localRepository>
```

- 修改Maven远程仓库

```xml
<mirror>
    <id>aliyun</id>
    <name>aliyun nexus</name>
    <url>http://maven.aliyun.com/nexus/content/groups/public</url>
    <mirrorOf>central</mirrorOf>
</mirror>
```

- 指定项目中使用的远程仓库
```xml
<repositories>
    <repository>
        <id>aliyun</id>
        <name>aliyun nexus</name>
        <url>http://maven.aliyun.com/nexus/content/groups/public</url>
    </repository>
</repositories>
<pluginRepositories>
    <pluginRepository>
        <id>aliyun</id>
        <name>aliyun nexus</name>
        <url>http://maven.aliyun.com/nexus/content/groups/public/</url>
    </pluginRepository>
</pluginRepositories>
```

- 安装本地jar包

```mvn
mvn install:install-file -Dfile=guava-23.0.jar -DgroupId=storm -DartifactId=guava -Dversion=com.google.guava -Dpackaging=jar
```

- Spring引用

```xml
<dependencyManagement>
    <dependencies>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-framework-bom</artifactId>
            <version>4.3.14.RELEASE</version>
            <type>pom</type>
            <scope>import</scope>
        </dependency>
    </dependencies>
</dependencyManagement>
```

- build

```xml
<testResources>
    <testResource>
        <directory>src/test/java</directory>
        <excludes>
            <exclude>**/*.java</exclude>
        </excludes>
    </testResource>
</testResources>
```

### 插件

- 指定JDK版本

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <version>3.7.0</version>
    <configuration>
        <source>1.8</source>
        <target>1.8</target>
    </configuration>
</plugin>
```

- 将依赖打包

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-assembly-plugin</artifactId>
    <version>3.1.0</version>
    <configuration>
        <descriptorRefs>
            <descriptorRef>jar-with-dependencies</descriptorRef>
        </descriptorRefs>
    </configuration>
    <executions>
        <execution>
            <id>make-assembly</id>
            <phase>package</phase>
            <goals>
                <goal>single</goal>
            </goals>
        </execution>
    </executions>
</plugin>
```

- 单元测试

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-surefire-plugin</artifactId>
    <version>2.20.1</version>
    <inherited>true</inherited>
    <configuration>
        <skip>true</skip>
        <argLine>-Dfile.encoding=UTF-8</argLine>
    </configuration>
</plugin>
```

-JettyWeb容器

```xml
<plugin>
    <groupId>org.eclipse.jetty</groupId>
    <artifactId>jetty-maven-plugin</artifactId>
    <version>9.4.8.v20171121</version>
    <configuration>
        <scanIntervalSeconds>1</scanIntervalSeconds>
        <httpConnector>
            <port>80</port>
        </httpConnector>
        <webApp>
            <contextPath>/</contextPath>
        </webApp>
    </configuration>
</plugin>
```