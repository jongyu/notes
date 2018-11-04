## 安装
- 安装
```
pip install robotframework
```

- 查看安装的`Robot Framework`版本
```
robot --version
rebot --version
pybot --version
```

## 入门
1.创建一个demo文件(demo.robot)
```
*** Settings   ***
*** Variables  ***
*** Test Cases ***
First test case     
  Begin web test 
Second test case    
  End web test                
*** Keywords ***                
Begin web test                      
  Log   This is first test case              
End web test           
  Log   HelloWorld
```

2.执行测试脚本
```
robot demo.robot
```

## 基础
- 定义变量
```robot 
variable
    ${var}    Set Variable    Hello World！
    log    ${var}
```

- 定义列表
```robot
list
    ${var}    Create List    A    B    C
    log    ${var}
```

- 连接字符串
```robot
catenate
    ${var }    Catenate    Hello    World    ！
    log    ${var}
```

- 时间
```robot
time
    ${var}    get time
    log    ${var}
    sleep    5
    ${var}    get time
    log    ${var}
```

- if判断
```robot
if
    ${var}    Set variable    100
    run keyword if    ${var}>=90    log    优秀
    ...    ELSE IF    ${var}<=70    log    良好
    ...    ELSE IF    ${var}<=60    log    及格
    ...    ELSE    log    不及格
```

- for循环
```robot
for
    : FOR    ${var}    IN RANGE    10
    \    log    ${var}
```

- 强大的Evaluate
```robot
evaluate
    ${var}    Evaluate    random.randint(1,100)    random
    log    ${var}
```
