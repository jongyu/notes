#### Ubuntu美化

- 更新补丁
```commandline
sudo apt-get update 
sudo apt-get upgrade
```

- 删除亚马逊
```commandline
sudo apt-get remove unity-webapps-common
```

- 安装Unity Tweak Tool
```commandline
sudo apt-get install unity-tweak-tool
```

- 安装Flatabulous主题
```commandline
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme
```

- 安装Flatabulous主题配套的图标
```commandline
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons
```
安装完成后打开Unity Tweak Tool，进入Theme，修改为Flatabulous，在此界面下进入Icons栏，修改为Ultra-flat

- 安装vim
```commandline
sudo apt-get install vim
``` 

- 安装git
```commandline
sudo apt-get install git
``` 

- 安装MySQL
```commandline
sudo apt-get install mysql-server
apt install libmysqlclient-dev
```

- 查看MySQL是否安装成功
```commandline
sudo netstat -tap | grep mysql
```