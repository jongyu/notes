### Run Script

适用于执行jar包的程序

* 默认在当前用户目录下
```
cd ~
```

* jars目录
```
mkdir jars
```

* backup目录
```
mkdir backup
```

* logs目录
```
mkdir logs
```

* 流程
> 执行git拉取代码操作<br>
> 执行maven打包操作将现有的jar进行备份<br>
> 执行将新打包的jar包移动到jars目录<br>
> 调用重启方法<br>

* 
```bash
#!/usr/bin/env bash
time=$(date "+%Y-%m-%d")
application=sov-web-1.0

function deploy(){
    echo "deploying ...."
    git pull
    mvn clean install -DskipTests
    mv ~/jars/${application}.jar ~/backup/${application}.jar.${time}
    cp ~/sov-counter/sov-web/target/sov-web-1.0.jar ~/jars/${application}.jar
    restart $@
    echo "deployed ...."
}

function stop(){
    echo "shutting down ...."
    pkill -f ${application}
    sleep 8
}

function restart(){
    ps -ef|grep ${application}
    stop
    echo "starting ...."
    echo "java -Xmx4G -jar ~/jars/$application.jar $2 >> ~/logs/$application-$time.log 2>&1 &"
    java -Xmx4G -jar ~/jars/${application}.jar $2 >> ~/logs/${application}-${time}.log 2>&1 &
    echo "started ...."
    ps -ef|grep ${application}
}

case "$1" in
    "deploy")
      deploy $@
      exit 0
    ;;
    "stop")
      stop
      exit 0
    ;;
    "restart")
       restart $@
       exit 0
    ;;
    *)
       echo "usage： $0 {deploy|stop|restart} [now]"
       exit 1
    ;;
esac
```

* 赋予脚本执行权限
```
chmod a+x script.sh 或者 chmod 777 script.sh
```

* 执行脚本
```
./script.sh deploy|stop|restart
```