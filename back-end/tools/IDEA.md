## IDEA常用配置

### Class 类注释
```
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

/**
 * Created by IntelliJ IDEA.
 * User：${USER}
 * Description：${DESCRIPTION}
 * Date：${DATE}
 */
public class ${NAME} {
}
```

### JSP 页面注释
```jsp
<%--
  Created by IntelliJ IDEA.
  User：${USER}
  Description：
  Date：${DATE}
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>标题</title>
</head>
<body>
    内容
</body>
</html>
```