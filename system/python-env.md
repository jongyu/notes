# Pipenv

- Mac安装

```shell
brew install pipenv
```

- 普通安装

```shell
pip install pipenv
```

- 使用Python 3.6创建一个新项目

```shell
pipenv --python 3.6
```

- 为项目安装所有依赖项（包括开发）

```shell
pipenv install --dev
```

- 查看虚拟环境变量所在位置,并将其复制

```shell
pipenv --py
```

- 启用环境

```shell
pipenv shell
```

- 卸载一切

```shell
pipenv uninstall --all
```

- Python库
```
pipenv install Appium-Python-Client
pipenv install ConfigParser
pipenv install HTMLTestRunner
```