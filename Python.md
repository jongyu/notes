##### 安装pip
在Python目录下的Scripts目录执行
```
easy_install pip
```
##### 安装Selenium
```
pip install -U selenium
```

- 将ChromeDriver目录添加到Path环境下

- 最简单的例子
```python
from selenium import webdriver

driver = webdriver.Chrome()
driver.maximize_window()
driver.get('https://www.baidu.com')
```
