# jimureport-demo

积木报表集成示例代码。

```
集成示例，采用mysql5.7数据库
```




使用步骤
-----------------------------------

-  第一步：执行Mysql初始化脚步（自动创建数据库：jimureport）

          db/1jimureport.mysql5.7.create.sql
          db/2jimureport.mysql5.7.create.dict.sql
           
-  第三步： 启动项目

           右键执行com.example.jmreport.JimuReportApplication
           
-  第四步： 访问项目

           http://localhost:8085/jmreport/list
           




镜像生成
-----------------------------------
-  第一步：进入项目 jimureport-demo 根目录
   
-  第二步： 执行命令

         docker-compose up -d

