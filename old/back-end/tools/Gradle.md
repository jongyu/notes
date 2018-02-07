## Gradle

* 下载
* https://gradle.org/post-download-gradle/
* 配置环境变量(前提需Java环境变量)
```
GRADLE_HOME=Gradle根目录
%GRADLE_HOME%/bin=添加到Path环境变量中($GRADLE_HOME/bin --Linux或Mac下的环境变量) Linux可以在 ~./bashrc文件中配置
```

* 配置完检查版本
```
gradle -v
```

* jar包存放目录 修改完需重启电脑生效
```
GRADLE_USER_HOME=E:\Library\Gradle\.gradle
```
* 在.gradle目录下创建init.gradle文件

* 设置Gradle远程仓库
```gradle
allprojects{
    repositories {
        def REPOSITORY_URL = 'http://maven.aliyun.com/nexus/content/groups/public/'
        all { ArtifactRepository repo ->
            if(repo instanceof MavenArtifactRepository){
                def url = repo.url.toString()
                if (url.startsWith('https://repo1.maven.org/maven2') || url.startsWith('https://jcenter.bintray.com/')) {
                    project.logger.lifecycle "Repository ${repo.url} replaced by $REPOSITORY_URL."
                    remove repo
                }
            }
        }
        maven {
            url REPOSITORY_URL
        }
    }
}
```

* 在.gradle目录下创建gradle.properties文件

* 设置创建项目的速度
```
org.gradle.daemon=true
```