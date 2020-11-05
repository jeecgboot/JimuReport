# JimuReport

积木报表，免费的企业级WEB报表工具，像搭建积木一样在线设计报表！功能涵盖数据报表设计、打印设计、图表设计、大屏设计(暂不开源)等！


v1.0-beta

快速体验： [www.jimureport.com](http://www.jimureport.com "www.jimureport.com")


```
永久免费使用
专注于开源，打造“专业 易用 优质”的报表设计器和大屏设计器(暂不开源)
领先的企业级Web报表平台软件，采用纯Web在线技术，专注于解决企业报表快速制作难题。
```


  QQ交流群：212391162

![输入图片说明](https://oscimg.oschina.net/oscnet/up-093c83cd5f01bbbd6021c97c74af3df07f8.png "在这里输入图片标题")



集成文档
-----------------------------------

 JimuReport报表工具，提供离线版本可以快速与JeecgBoot项目集成，具体参考下面的文档。

###  #与JeecgBoot集成步骤

- 第一步： 集成依赖 jar

修改 jeecg-boot-module-system/pom.xml 加入下面的依赖
``` 
<dependency>
  <groupId>org.jeecgframework.boot</groupId>
  <artifactId>jimureport</artifactId>
  <version>1.0-beta</version>
</dependency>
``` 

- 第二步： 执行升级 sql

    [jimureport_init20201029.sql](https://github.com/zhangdaiscott/JimuReport/blob/master/db/jimureport_init20201029.sql "jimureport_init20201029.sql") 

- 第三步：修改配置文件

   修改 application-dev.yml增加配置属性

```
#jeecg专用配置
jeecg :
  #积木报表设置
  jmreport:
    mode: dev
    #是否需要校验token
    is_verify_token: false
    #必须校验方法
    verify_methods: remove,delete,save,add,update
```


- 第四步： 角色授权菜单，就可以看到报表设计菜单

![](https://oscimg.oschina.net/oscnet/up-e35b2318b8db9673fa064a0b50087bdd234.png)

- 第五步： shiro权限排除

   修改类 org.jeecg.config.shiro.ShiroConfig 加入代码
   ```
    //报表设计器排除
    filterChainDefinitionMap.put("/design/report/**", "anon");
    filterChainDefinitionMap.put("/**/*.js.map", "anon");
    filterChainDefinitionMap.put("/**/*.css.map", "anon");
   ```
   

- 第六步： 进入报表设计器列表

![](https://oscimg.oschina.net/oscnet/up-03d6c0a82f8e2fb96783eb5d9ce9a6a7bc0.png)

- 备注：其他特殊配置

 #a. 如果你用的是微服务模式，需要自行配置gateway新路由：`,/design/report/**`
![](https://oscimg.oschina.net/oscnet/up-90f845373770b607ef177deec0e4a78102a.png)

 #b. 如果你的jeecgboot非2.3版本，需要手工升级mybatis-plus版本为 3.3.2
```
   如果遇到文件报错，错误文件参考: https://github.com/zhangdaiscott/jeecg-boot
```
#c. 如果访问404 说明JAR没引入成功，刷新Maven依赖
![](https://oscimg.oschina.net/oscnet/up-37c3e33f9193336e6d27ecdee6d2e20abba.png)

###  #已开放功能清单
![](https://oscimg.oschina.net/oscnet/up-d65240de562820d4f26c001104d84db51a3.png)




项目介绍
-----------------------------------

- 官网： www.jimureport.com
- 视频： https://www.bilibili.com/video/BV1iT4y1w78o
