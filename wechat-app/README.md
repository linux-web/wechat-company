
## 微信公共平台APP示例

> 基于Java实现。

这里已经包含了源码和默认的一个实现。如果你想实现自己的个性话定制，只需把lib加人到你的web的lib目录。
加入classPath下面增加一个wechat.properties和log4j.properties的配置，在wechat.properties里面的MessageProcessingHandlerImpl是配置自定义的消息处理器的类路径(具体可以查看默认实现的源码)
web.xml里面配置一个过滤器。
```xml
<filter>
    <filter-name>WeChatFilter</filter-name>
    <filter-class>com.gson.WeChatFilter</filter-class>
</filter>
<filter-mapping>
	<filter-name>WeChatFilter</filter-name>
	<url-pattern>/wechat/*</url-pattern>
</filter-mapping>
```
demo里面我默认配置是过滤（/wechat/*）类型的所有请求。星号表示在公众平台里面配置的Token。

### 例如：

你的Token如果设置为abcdefg的话，那么你对应配置的URL就应该为 http://xxxxx.com/wechat/abcdefg


### 功能介绍：

* 回复 0 查看菜单;
* 回复 1 查看社区最新动态;
* 回复 2 本周推荐;
* 回复 3 查看星座运势;
* 回复 4 轻松一刻;
* 回复 5 祝福墙;
* 回复 6 快递查询;
* 回复 @城市名称 查看天气(eg: @北京);
* 回复 zip#地名 查询邮编区号(eg:zip#北京);
* 回复 #内容 问题意见反馈;