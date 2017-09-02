### 环境变量
* 修改Maven本地仓库
```
<localRepository>D:/LocalRepository/.maven</localRepository>
```

* 修改Maven远程仓库
```
<mirror>
    <id>alimaven</id>
    <name>aliyun maven</name>
    <url>http://maven.aliyun.com/nexus/content/groups/public</url>
    <mirrorOf>central</mirrorOf>
</mirror>
```

### pom.xml
```xml
<build>
    <finalName>${artifactId}</finalName>
    <plugins>
        <plugin>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.6.2</version>
            <configuration>
                <source>1.8</source>
                <target>1.8</target>
                <encoding>UTF-8</encoding>
            </configuration>
        </plugin>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-surefire-plugin</artifactId>
            <version>2.20</version>
            <configuration>
                <skip>true</skip>
            </configuration>
        </plugin>
        <plugin>
            <groupId>org.eclipse.jetty</groupId>
            <artifactId>jetty-maven-plugin</artifactId>
            <version>9.4.6.v20170531</version>
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
Spring引用
```xml
<dependencyManagement>
    <dependencies>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-framework-bom</artifactId>
            <version>4.3.10.RELEASE</version>
            <type>pom</type>
            <scope>import</scope>
        </dependency>
    </dependencies>
</dependencyManagement>
```