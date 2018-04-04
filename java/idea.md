# 激活地址
* lanyus
```url
http://idea.lanyus.com/
```

* 过往记忆
```url
http://idea.iteblog.com/key.php
```

### Class 类注释
```
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")
/**
 * Created by ZhongYu on ${MONTH}/${DAY}/${YEAR}.
 */
public class ${NAME} {
}
```
- old
```
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")
public class ${NAME} {
}
```

#### 设置文件不显示
- Settings -> Editor -> File Types -> Ignore files and folders
- 再添加以下内容
```
.idea;*.iml;
```

#### IDEA 创建`feature`文件
- Settings -> Editor -> File and CodeTemplates
- 添加一个Name为：`Gherkin feature file` Extension：`feature`
- 如果使用Cucumber建议添加以下内容
```feature
# language: zh-CN
# Created by ${USER} at ${DATE}
场景: #Enter feature name here
  # Enter feature description here

  Scenario: # Enter scenario name here
    # Enter steps here
```

#### Thymeleaf
```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>$Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
</head>
<body>
<div class="container">

</div>
</body>
</html>
```

#### 破解补丁激活
- 下载破解补丁[JetbrainsCrack-2.6.10-release-enc.jar](http://idea.lanyus.com/jar/JetbrainsCrack-2.6.10-release-enc.jar)
- 编辑`当前要破解的产品.vmoptions`和`idea.properties`
```
-javaagent:/Users/zhongyu/Applications/JetbrainsCrack-2.6.10-release-enc.jar
```

```
ThisCrackLicenseId-{
"licenseId":"ThisCrackLicenseId",
"licenseeName":"ZhongYu",
"assigneeName":"",
"assigneeEmail":"zhongyu.vip@gmail.com",
"licenseRestriction":"Please support genuine!!!",
"checkConcurrentUse":false,
"products":[
{"code":"II","paidUpTo":"2099-12-31"},
{"code":"DM","paidUpTo":"2099-12-31"},
{"code":"AC","paidUpTo":"2099-12-31"},
{"code":"RS0","paidUpTo":"2099-12-31"},
{"code":"WS","paidUpTo":"2099-12-31"},
{"code":"DPN","paidUpTo":"2099-12-31"},
{"code":"RC","paidUpTo":"2099-12-31"},
{"code":"PS","paidUpTo":"2099-12-31"},
{"code":"DC","paidUpTo":"2099-12-31"},
{"code":"RM","paidUpTo":"2099-12-31"},
{"code":"CL","paidUpTo":"2099-12-31"},
{"code":"PC","paidUpTo":"2099-12-31"}
],
"hash":"2911276/0",
"gracePeriodDays":7,
"autoProlongated":false}
```

#### 插件
- Alibaba Java Coding Guidelines
- MyBatis
- Material Theme UI
- ChroMATERIAL
- Lombok
- .env files support
- .ignore
- BashSupport
- Grep Console
- TranslationPlugin id：`2ce04f208dd25f35` 密钥：`zO9bgWBtvvE2RcRLJOlzMjaOPUaDCnhy`
