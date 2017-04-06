## SQL

### 管理数据库命令
1.查看数据库
```
show databases;
```

2.创建数据库
```
create database 数据库名;
```

3.使用数据库
```
use 数据库名;
```

4.删除数据库
```
drop database 数据库名;
```

### 数据表管理命令
1.修改、添加、删除字段，字段改名，修改字段排序顺序，更改表名：
```
alert table 表名 modify 需要修改的字段 修改的类型;
alert table 表名 add 需要添加的新字段名 字段类型;
alert table 表名 drop 需要删除的字段名;
alert table 表名 change 原来的字段名 新的字段名 新的字段类型;
alert table 表名 modify|add| 字段名 字段类型 first|after 字段名;
alert table 原数据表名 rename 新数据表名;
```

2.创建有索引的表
```
create index 索引名 on 表名(列表);
或者
create table 表名 (index index1(id,name));
```

3.插入数据
```
insert into 表名 (列表名) values(要插入的数据);
或者
insert into 表名 set 列表1=数据, 列表2=数据;
```

4.更新数据
```
update 表名 set 列名1=数据1, 列名2=数据2,...[where clause];
```

5.删除数据
```
delete from 表名 [where clause];
```

6.查询数据
```
select 列名1,列名2 from 表名1,表名2[where clause];
```