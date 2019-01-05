# 小米A2

- 恢复出厂设置
>1.手机关机<br>
>2.电源键和音量+键一起按，长按不放<br>
>3.手机会启动两次<br>
>4.在第二次Logo显示完后进入安卓机器人页面(页面显示No command)<br>
>5.按住电源键不放,然后按住音量+<br>
>6.用音量- 现在Wipe data/factory reset<br>
>7.选择后用电影键确认<br>
>8.进入后选择yes,然后按电源键确认<br>

- 消除WIFI和蜂窝数据的感叹号(9.0/8.1/8.0/7.1.2/7.1.1)
```
adb shell settings put global captive_portal_https_url https://www.google.cn/generate_204
```
