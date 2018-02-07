## Velocity模板引擎配置及使用

#### Maven依赖
* 基本
```xml
<dependency>
    <groupId>velocity</groupId>
    <artifactId>velocity</artifactId>
    <version>1.5</version>
</dependency>
```

* velocity.properties
```properties
input.encoding=UTF-8
output.encoding=UTF-8
```

* SpringMVC Config
```xml
<bean id="velocityConfig" class="org.springframework.web.servlet.view.velocity.VelocityConfigurer">
    <property name="resourceLoaderPath" value="/WEB-INF/views/"/>
    <property name="configLocation" value="/WEB-INF/config/velocity.properties"/>
</bean>

<bean id="viewResolver" class="org.springframework.web.servlet.view.velocity.VelocityViewResolver">
    <property name="cache" value="false"/>
    <property name="prefix" value=""/>
    <property name="suffix" value=".vm"/>
    <property name="contentType" value="text/html;charset=UTF-8"/>
</bean>
```
