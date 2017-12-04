##### 安装pip
在Python目录下的Scripts目录执行
```
easy_install pip
```
##### 安装Selenium
```
pip install -U selenium
```

##### 安装Webium
- Webium是一个Page Object设置模式的框架
```
pip install webium
```

- 将ChromeDriver目录添加到Path环境下

- 最简单的例子
```python
from time import sleep

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver = webdriver.Chrome()
# 隐式等待
driver.implicitly_wait(10)
# 浏览器最大化
driver.maximize_window()
# 加载网页
driver.get('https://www.baidu.com')
# 在表单中输入内容
driver.find_element_by_id('kw').send_keys("ZhongYu's Blog")
# 输入回车键
driver.find_element_by_id('kw').send_keys(Keys.ENTER)
sleep(3)
# 刷新当前页面
driver.refresh()
```
