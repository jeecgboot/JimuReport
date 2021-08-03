积木报表镜像制作
-----------------------------------

-  第一步：下载项目
	`git clone https://gitee.com/jeecg/JimuReport.git`

-  第二步：进入项目 jimureport-demo 根目录
	`cd JimuReport/jimureport-samples/jimureport-demo`
	
-  第三步：maven执行package
         `mvn clean package``
		 
-  第四步：执行命令，生成镜像
         `docker-compose up -d`
		 
-  第五步：访问报表
        http://localhost:8085/jmreport/list
