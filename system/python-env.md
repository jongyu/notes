Python开发环境

#### pipenv
- Mac安装
```
brew install pipenv
```

- 普通安装
```
pip install pipenv
```

- 使用Python 3.6创建一个新项目
```
pipenv --python 3.6
```

- 为项目安装所有依赖项（包括开发）
```
pipenv install --dev
```

- 查看虚拟环境变量所在位置,并将其复制
```
pipenv --py
```

- 启用环境
```
pipenv shell
```

- 卸载一切
```
pipenv uninstall --all
```