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