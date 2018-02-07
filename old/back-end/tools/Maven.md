### 环境变量
* 修改Maven本地仓库
```xml
<localRepository>D:/LocalRepository/.maven</localRepository>
```

* 修改Maven远程仓库
```xml
<mirror>
    <id>aliyun</id>
    <name>aliyun nexus</name>
    <url>http://maven.aliyun.com/nexus/content/groups/public</url>
    <mirrorOf>central</mirrorOf>
</mirror>
```

* 安装本地jar包
```mvn
mvn install:install-file -Dfile=guava-23.0.jar -DgroupId=storm -DartifactId=guava -Dversion=com.google.guava -Dpackaging=jar
```

### pom.xml
```xml
<build>
    <finalName>${artifactId}</finalName>
    <plugins>
        <plugin>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.7.0</version>
            <configuration>
                <source>1.8</source>
                <target>1.8</target>
                <encoding>UTF-8</encoding>
            </configuration>
        </plugin>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-resources-plugin</artifactId>
            <version>3.0.2</version>
            <configuration>
                <encoding>UTF-8</encoding>
            </configuration>
        </plugin>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-surefire-plugin</artifactId>
            <version>2.20.1</version>
            <configuration>
                <skip>true</skip>
            </configuration>
        </plugin>
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
    </plugins>
</build>
```

* pom中使用阿里云Maven中央仓库
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

* Spring引用
```xml
<dependencyManagement>
    <dependencies>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-framework-bom</artifactId>
            <version>4.3.12.RELEASE</version>
            <type>pom</type>
            <scope>import</scope>
        </dependency>
    </dependencies>
</dependencyManagement>
```