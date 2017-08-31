## Flink

### start
```
par=300
#JVM_ARGS="-verbose:class" \
HADOOP_CLASSPATH=$(( find ./lib -name '*.jar'; find /usr/lib/hadoop -name '*.jar'; find /usr/lib/hadoop-yarn -name '*.jar'; find /usr/lib/hadoop-mapreduce -name '*.jar') | xargs | sed -e 's@ @:@g') \
HADOOP_CONF_DIR=/etc/hadoop/conf ./bin/flink run -m yarn-cluster  -yn $par -yjm 4192 -ytm 4096 -c fTest.StreamingJob -p $par ./retail-flink.jar \
 --zks 10.10.10.213:2181,10.10.10.212:2181,10.10.10.211:2181,10.10.10.203:2181 \
 --preP $par \
 --checkP true \
 --consumerP 10 \
 --parserP $par \
 --postP $par \
 --saveP $par \
 --subP $par \
 --groupid flink_reatil \
 > flink.log 2>flink.out &
```

### kill
```
yarn application -kill $(grep 'Submitted application' flink.log | awk '{print $NF}')
```