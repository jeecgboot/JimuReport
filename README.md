# JimuReport

积木报表，一个开源免费的报表工具，像搭建积木一样在线设计报表！功能涵盖数据报表设计、打印设计、图表设计、大屏设计等！


v1.0-beta

快速体验： [www.jimureport.com](http://www.jimureport.com "www.jimureport.com")

```
永久免费使用
专注于开源，打造“专业 易用 优质”的报表设计器和大屏设计器
领先的企业级Web报表平台软件，采用纯Web在线技术，专注于解决企业报表快速制作难题。
```

集成文档
-----------------------------------

###  #与JeecgBoot集成步骤

- 第一步： 集成依赖 jar
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


- 第五步： 进入报表设计器列表

![](https://oscimg.oschina.net/oscnet/up-03d6c0a82f8e2fb96783eb5d9ce9a6a7bc0.png)

备注： 如果你用的是微服务模式，需要自行配置gateway新路由。

###  #已开放功能清单

![](https://oscimg.oschina.net/oscnet/up-d10e6c78dd5fb37923d3123be8c1ca23cd0.png)




项目介绍
-----------------------------------

- 官网： www.jimureport.com
- 视频： https://www.bilibili.com/video/BV1iT4y1w78o
