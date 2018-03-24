# [Bigdongdong](https://www.youtube.com/channel/UCpPswAyGzdRwWmiW5oTNnvA)

1、切换到root用户

```bash
sudo -i
```

2、下载安装bbr

```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/FunctionClub/YankeeBBR/master/bbr.sh && bash bbr.sh install
```

蓝底窗口按TAB键选NO
选择重启 Y

## 这里会断开连接，大家可以关掉窗口再重新打开。

<hr>
以下是第二步的另一套代码TCP-BBR加速方案

```bash
wget --no-check-certificate https://github.com/iyuco/scripts/raw/master/bbr.sh
chmod +x bbr.sh
./bbr.sh
```

复制过去以后便会自动开始当显示./bbr.sh 的时候回车

![none](https://user-images.githubusercontent.com/34980980/37384008-33e9d8d0-2787-11e8-8156-bcffc955149e.png)

到这个界面的时候再按回车

![node](https://user-images.githubusercontent.com/34980980/37384163-3aeb94ec-2788-11e8-8898-458788f429b8.png)

### 出现这个地方的时候输入n不重启直接继续（也别关掉窗口重开，不然会SSH连接不上）并直接跳转第5步继续

3、切换到root用户`sudo -i`

4、启动bbr.sh脚本

```bash
bash bbr.sh start
```

如果用的新代码这3.4 这两步步跳过

5、下载shadowsocksR

```bash
wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocksR.sh && chmod +x shadowsocksR.sh
```

6、运行shadowsocksR

```bash
./shadowsocksR.sh
```

输入shadowsocks 密码
输入端口号
其他一路回车