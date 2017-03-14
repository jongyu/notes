## Thymeleaf模板引擎配置及使用

#### Maven依赖
* 基本
```xml
<dependency>
    <groupId>org.thymeleaf</groupId>
    <artifactId>thymeleaf</artifactId>
    <version>3.0.3.RELEASE</version>
</dependency>
```

* 基于Spring3
```xml
<dependency>
    <groupId>org.thymeleaf</groupId>
    <artifactId>thymeleaf-spring3</artifactId>
    <version>3.0.3.RELEASE</version>
</dependency>
```

* 基于Spring4
```xml
<dependency>
    <groupId>org.thymeleaf</groupId>
    <artifactId>thymeleaf-spring4</artifactId>
    <version>3.0.3.RELEASE</version>
</dependency>
```

* SpringMVC4 Config
```xml
<bean id="templateResolver" class="org.thymeleaf.spring4.templateresolver.SpringResourceTemplateResolver">
    <property name="prefix" value="/WEB-INF/views/"/>
    <property name="suffix" value=".html"/>
    <property name="templateMode" value="HTML5"/>
    <property name="cacheable" value="false"/>
    <property name="characterEncoding" value="UTF-8"/>
</bean>

<bean id="templateEngine" class="org.thymeleaf.spring4.SpringTemplateEngine">
    <property name="templateResolver" ref="templateResolver"/>
</bean>

<bean class="org.thymeleaf.spring4.view.ThymeleafViewResolver">
    <property name="templateEngine" ref="templateEngine"/>
    <property name="characterEncoding" value="UTF-8"/>
</bean>
```