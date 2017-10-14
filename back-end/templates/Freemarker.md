## Freemarker

### Spring
```xml
<bean id="freemarkerConfig" class="org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer">
    <property name="templateLoaderPath" value="/"/>
    <property name="freemarkerSettings">
        <props>
            <prop key="template_update_delay">1</prop>
            <prop key="tag_syntax">auto_detect</prop>
            <prop key="default_encoding">UTF-8</prop>
            <prop key="url_escaping_charset">UTF-8</prop>
            <prop key="locale">zh_CN</prop>
            <prop key="boolean_format">yes,no</prop>
            <prop key="datetime_format">yyyy-MM-dd HH:mm:ss</prop>
            <prop key="date_format">yyyy-MM-dd</prop>
            <prop key="time_format">HH:mm:ss</prop>
            <prop key="number_format">0.######</prop>
            <prop key="whitespace_stripping">true</prop>
        </props>
    </property>
</bean>
```
xml
<bean id="viewResolver" class="org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver">
    <property name="cache" value="true"/>
    <property name="prefix" value="/WEB-INF/views/"/>
    <property name="suffix" value=".html"/>
    <property name="contentType" value="text/html; charset=UTF-8"/>
</bean>
```