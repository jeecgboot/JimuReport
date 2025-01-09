# JimuReport积木报表(免费报表工具)

v1.9.3 | 2025-01-08


[![](https://img.shields.io/badge/Author-北京敲敲云科技-orange.svg)](https://qiaoqiaoyun.com/aboutUs)
[![](https://img.shields.io/badge/version-1.9.3-brightgreen.svg)](https://github.com/jeecgboot/JimuReport)
[![](https://img.shields.io/badge/Blog-积木报表官网-blue.svg)](http://jimureport.com)
[![GitHub stars](https://img.shields.io/github/stars/zhangdaiscott/JimuReport.svg?style=social&label=Stars)](https://github.com/jeecgboot/JimuReport)
[![GitHub forks](https://img.shields.io/github/forks/zhangdaiscott/JimuReport.svg?style=social&label=Fork)](https://github.com/jeecgboot/JimuReport)


 积木报表JimuReport，是一款免费的数据可视化报表，含报表、仪表盘和大屏设计，像搭建积木一样完全在线设计！功能涵盖：数据报表、打印设计、图表报表、门户设计、大屏设计等！
 
 -   Web版报表设计器，类Excel操作风格，通过拖拽完成报表设计，所见即所得.
 -   大屏采用类word风格，可以随意拖动组件，想怎么设计怎么设计，可以像百度和阿里一样，设计出炫酷大屏！
 -   从 v1.9+ 起推出 JimuBI 产品，她的牛叉之处，同时支持仪表盘、大屏、门户 (支持交互)、移动.
 -   秉承"简单、易用、专业"的产品理念，极大的降低报表开发难度、缩短开发周期、节省成本.
 -   领先的企业级Web报表，支持各种复杂报表，专注于解决企业报表难题.
 -   积木BI 数据可视化，支持大屏设计和仪表盘，致力于更生动、更友好的形式呈现实时业务数据分析
 
```
专注于开源，打造 “专业 易用 智能” 的数据可视化报表、大屏、门户
开源协议：`功能免费、可以商用、代码不开放`
```



技术文档
-----------------------------------

- 官方网站： http://jimureport.com
- 在线体验： http://jimureport.com/login
- 快速入门： [零基础集成积木报表](https://help.jeecg.com/jimureport/quick.html) | [开发文档](https://help.jeecg.com/jimureport) | [视频教程](http://jimureport.com/doc/video)
- 技术支持： 发现bug，[请在github上发issue](https://github.com/jeecgboot/JimuReport/issues/new)
- QQ交流群： ③596660273、①212391162(满)、②929646317(满)



快速集成积木报表
-----------------------------------
> 快速集成到自己项目中，支持SpringBoot2脚手架项目。

#### 第一步：引入JimuReport依赖

##### 积木报表依赖

```
<!-- 积木报表依赖 -->
<dependency>
   <groupId>org.jeecgframework.jimureport</groupId>
   <artifactId>jimureport-spring-boot-starter</artifactId>
   <version>1.9.3</version>
</dependency>
<!-- csv excel json mogodb elasticsearch redis 数据集支持包 -->
<dependency>
   <groupId>org.jeecgframework.jimureport</groupId>
   <artifactId>jimureport-nosql-starter</artifactId>
   <version>1.9.3</version>
</dependency>
```


##### 积木BI依赖(大屏和仪表盘)

```
 <dependency>
   <groupId>org.jeecgframework.jimureport</groupId>
   <artifactId>jimubi-spring-boot-starter</artifactId>
   <version>1.9.3</version>
 </dependency>
```


#### 第二步：初始化SQL和详细必须配置

 - https://help.jeecg.com/jimureport/quick.html


绿色免安装版本
-----------------------------------

- [集成版源码运行](https://github.com/jeecgboot/JimuReport/tree/master/jimureport-example)
- [Docker快速运行](https://help.jeecg.com/jimureport/docker.html)
- [绿色免安装版本](https://pan.baidu.com/s/1z9VmMz4HCc7GMVbzugetLQ?pwd=xafr)

> 默认账号密码：admin/123456



授权协议 
-----------------------------------

开源版本遵循 LGPL 条款发布，如果您不能接受 LGPL，并且需要将该项目用于商业用途且不想保留版权信息（预览“Powered by 积木报表”、“积木Logo” 等版权及链接），
为保障您的合法权益，需购买[商业授权](http://jimureport.com/vip)


产生背景
-----------------------------------
报表是企业IT服务必备的一项需求，但是行业内并没有一个免费好用的报表，大部分免费的报表功能较弱也不够智能，商业报表又很贵，所以有了研发一套免费报表的初衷。
做一个什么样的报表呢？随着低代码概念的兴起，原先通过报表工具设计模板，再与系统集成的模式已经落伍，现在追求的是完全在线设计，可视化、傻瓜式的操作，实现简单易用又智能的报表！



为什么选择 JimuReport?
-----------------------------------
>    永久免费，支持各种复杂报表，并且傻瓜式在线设计，非常的智能，低代码时代，这个是你的首选！

- 采用SpringBoot的脚手架项目，都可以快速集成
- Web 版设计器，类似于excel操作风格，通过拖拽完成报表设计
- 通过SQL、API等方式，将数据源与模板绑定。同时支持表达式，自动计算合计等功能，使计算工作量大大降低
- 开发效率很高，傻瓜式在线报表设计，一分钟设计一个报表，又简单又强大
- 支持 ECharts，目前支持28种图表，在线拖拽设计，支持SQL和API两种数据源
- 支持分组、交叉，合计、表达式等复杂报表
- 支持打印设计（支持套打、背景打印等）可设置打印边距、方向、页眉页脚等参数 一键快速打印 同时可实现发票套打，不动产证等精准、无缝打印
- 可视化图表，仪表盘设计器类大屏设计，支持丰富的数据源连接和移动端，通过拖拉拽方式快速制作图表和门户设计；支持多种图表类型：柱形图、折线图、散点图、饼图、环形图、面积图、漏斗图、进度图、仪表盘、雷达图、地图等等；
- 可设计各种类型的单据、大屏，如出入库单、销售单、财务报表、合同、监控大屏、旅游数据大屏等
- 大屏设计器支持几十种图表样式，可自由拼接、组合，设计炫酷大屏
- 数据可视化，DataV、帆软的开源替代方案，比帆软拥有更好的体验和更简单的使用方式
- [积木报表官网](http://jimureport.com/login) 可以在线免费制作报表和大屏，手机号一键注册，便可永久使用。大屏采用类word风格，可以随意拖动组件，想怎么设计怎么设计，可以像百度和阿里一样，设计出炫酷的可视化大屏！重要的是：免费！免费！免费！


数据库兼容 
-----------------------------------
 支持含常规、国产、大数据等28种数据库

|  数据库   |  支持   |
| --- | --- |
|   MySQL   |  √   |
|  Oracle、Oracle9i   |  √   |
|  SqlServer、SqlServer2012   |  √   |
|   PostgreSQL   |  √   |
|   DB2、Informix   |  √   |
|   MariaDB   |  √   |
|  SQLite、Hsqldb、Derby、H2   |  √   |
|   达梦、人大金仓、神通   |  √   |
|   华为高斯、虚谷、瀚高数据库   |  √   |
|   阿里云PolarDB、PPAS、HerdDB   |  √   |
|  Hive、HBase、CouchBase   |  √   |

  未提供脚本的数据库，可以参考 [文档](https://my.oschina.net/jeecg/blog/4905722) 自己转。





报表工作台
-----------------------------------

- 数据可视化（专业一流，数据可视化,解决各类报表难题）

![](https://oscimg.oschina.net/oscnet/up-a2a8557722593e6c5a5e8f015a0df2b70e9.png)


- 报表设计器（完全在线设计，简单易用）

![](https://oscimg.oschina.net/oscnet/up-752b454f64ed87c798b3e8a083fbd6622d4.gif)

- 打印设计（支持套打、背景打印）

![](https://oscimg.oschina.net/oscnet/up-9b6cd73719de68e0e45e1cf95cd6104a103.png)
![](https://oscimg.oschina.net/oscnet/up-8863ea4e67c02dbd844bb8022652f1be651.png)

- 数据报表（支持分组、交叉，合计等复杂报表）

![](https://oscimg.oschina.net/oscnet/up-fe2ac0dfc3933734961924de0538b3049d2.png)
![](https://oscimg.oschina.net/oscnet/up-be956cbc19287e4df9cc46c9d15e96da99d.png)

- 图形报表（目前支持28种图表）
![](https://oscimg.oschina.net/oscnet/up-3eda428ef182cb64a1a8e132e4bfeb87718.png)
![](https://oscimg.oschina.net/oscnet/up-22096123c5b6a10a801967c33cc33a7af11.png)


仪表盘工作台
-----------------------------------

![](https://jeecgos.oss-cn-beijing.aliyuncs.com/files/darg20240726105556.png)

![](https://jeecgos.oss-cn-beijing.aliyuncs.com/files/drag20240724135626.png)

![](https://jeecgos.oss-cn-beijing.aliyuncs.com/files/drag20240724135619.png)

![](https://jeecgos.oss-cn-beijing.aliyuncs.com/files/drag20240724135630.png)

![](https://jeecgos.oss-cn-beijing.aliyuncs.com/files/drag20240726105547.png)

![](https://oscimg.oschina.net/oscnet/up-fad98d42b2cf92f92a903c9cff7579f18ec.png)

![](https://oscimg.oschina.net/oscnet/up-1bbc177c8397400c3e79bd90fd03b04e615.png)






大屏设计效果
-----------------------------------


![](https://oscimg.oschina.net/oscnet/up-402a6034124474bfef8dfc5b4b2bac1ce5c.png)


![](https://oscimg.oschina.net/oscnet/up-6f7ba2e2ebbeea0d203db8d69fd87644c9f.png)


![](https://oscimg.oschina.net/oscnet/up-ee8d34f318da466b8a6070a6e3111d12ce7.png)




![](https://oscimg.oschina.net/oscnet/up-826f13c88f23c24ff218687f57f03d802a8.png)


![](https://oscimg.oschina.net/oscnet/up-61dfc52c383f86a4055e20d030503bef93c.png)


![](https://oscimg.oschina.net/oscnet/up-3aabd991c6c5af43f35b204d3ec94caf468.png)


![](https://oscimg.oschina.net/oscnet/up-3b75fde569ab528d8607596e147b8bb7d5e.png)


![](https://oscimg.oschina.net/oscnet/up-3b8d034341d0190156d63484ce09a863c9c.png)







报表功能清单
-----------------------------------
更多功能清单: [http://jimureport.com/plan](http://jimureport.com/plan)

```
├─报表设计器
│  ├─数据源
│  │  ├─支持多种数据源，如Oracle,MySQL,SQLServer,PostgreSQL等主流的数据库
│  │  ├─支持SQL编写页面智能化，可以看到数据源下面的表清单和字段清单
│  │  ├─支持参数
│  │  ├─支持但数据源和多数数据源设置
│  ├─单元格格式
│  │  ├─边框
│  │  ├─字体大小
│  │  ├─字体颜色
│  │  ├─背景色
│  │  ├─字体加粗
│  │  ├─支持水平和垂直的分散对齐
│  │  ├─支持文字自动换行设置
│  │  ├─图片设置为图片背景
│  │  ├─支持无线行和无限列
│  │  ├─支持设计器内冻结窗口
│  │  ├─支持对单元格内容或格式的复制、粘贴和删除等功能
│  │  ├─等等
│  ├─报表元素
│  │  ├─文本类型：直接写文本；支持数值类型的文本设置小数位数
│  │  ├─图片类型：支持上传一张图表
│  │  ├─图表类型
│  │  ├─函数类型
│  │  └─支持求和
│  │  └─平均值
│  │  └─最大值
│  │  └─最小值
│  ├─背景
│  │  ├─背景颜色设置
│  │  ├─背景图片设置
│  │  ├─背景透明度设置
│  │  ├─背景大小设置
│  ├─数据字典
│  ├─报表打印
│  │  ├─自定义打印
│  │  └─医药笺、逮捕令、介绍信等自定义样式设计打印
│  │  ├─简单数据打印
│  │  └─出入库单、销售表打印
│  │  └─带参数打印
│  │  └─分页打印
│  │  ├─套打
│  │  └─不动产证书打印
│  │  └─发票打印
│  ├─数据报表
│  │  ├─分组数据报表
│  │  └─横向数据分组
│  │  └─纵向数据分组
│  │  └─多级循环表头分组
│  │  └─横向分组小计
│  │  └─纵向分组小计
│  │  └─合计
│  │  ├─交叉报表
│  │  ├─明细表
│  │  ├─带条件查询报表
│  │  ├─表达式报表
│  │  ├─带二维码/条形码报表
│  │  ├─多表头复杂报表
│  │  ├─主子报表
│  │  ├─预警报表
│  │  ├─数据钻取报表
│  ├─图形报表
│  │  ├─柱形图
│  │  ├─折线图
│  │  ├─饼图
│  │  ├─折柱图
│  │  ├─散点图
│  │  ├─漏斗图
│  │  ├─雷达图
│  │  ├─象形图
│  │  ├─地图
│  │  ├─仪盘表
│  │  ├─关系图
│  │  ├─图表背景
│  │  ├─图表动态刷新
│  │  ├─图表数据字典
│  ├─参数
│  │  ├─参数配置
│  │  ├─参数管理
│  ├─导入导出
│  │  ├─导入Excel
│  │  ├─导出Excel、pdf
│  ├─打印设置
│  │  ├─打印区域设置
│  │  ├─打印机设置
│  │  ├─预览
│  │  ├─打印页码设置
├─大屏设计器
│  ├─系统功能
│  │  ├─静态数据源和动态数据源设置
│  │  ├─基础功能
│  │  └─支持拖拽设计
│  │  └─支持增、删、改、查大屏
│  │  └─支持复制大屏数据和样式
│  │  └─支持大屏预览、分享
│  │  └─支持系统自动保存数据，同时支持手动恢复数据
│  │  └─支持设置大屏密码
│  │  └─支持对组件图层的删除、组合、上移、下移、置顶、置底等
│  │  ├─背景设置
│  │  └─大屏的宽度和高度设置
│  │  └─大屏简介设置
│  │  └─背景颜色、背景图片设置
│  │  └─封面图设置
│  │  └─缩放比例设置
│  │  └─环境地址设置
│  │  └─水印设置
│  │  ├─地图设置
│  │  └─添加地图
│  │  └─地图数据隔离
│  ├─图表
│  │  ├─柱形图
│  │  ├─折线图
│  │  ├─折柱图
│  │  ├─饼图
│  │  ├─象形图
│  │  ├─雷达图
│  │  ├─散点图
│  │  ├─漏斗图
│  │  ├─文本框
│  │  ├─跑马灯
│  │  ├─超链接
│  │  ├─实时时间
│  │  ├─地图
│  │  ├─全国物流地图
│  │  ├─地理坐标地图
│  │  ├─城市派件地图
│  │  ├─图片
│  │  ├─图片框
│  │  ├─轮播图
│  │  ├─滑动组件
│  │  ├─iframe
│  │  ├─video
│  │  ├─翻牌器
│  │  ├─环形图
│  │  ├─进度条
│  │  ├─仪盘表
│  │  ├─字浮云
│  │  ├─表格
│  │  ├─选项卡
│  │  ├─万能组件
└─其他模块
   └─更多功能开发中。。
```

仪表盘功能清单
-----------------------------------

```
├─仪表盘设计器
│  ├─基础功能
│  │  └─支持拖拽设计
│  │  └─支持增、删、改、查仪表盘
│  │  └─支持复制仪表盘数据和样式
│  │  └─支持仪表盘预览、分享
│  │  └─支持设置仪表盘保护码
│  │  └─支持设置仪表盘PC模式或手机模式
│  │  └─支持对仪表盘控件的添加、删除、移动位置等
│  ├─数据源
│  │  └─支持多种数据源，如Oracle,MySQL,SQLServer,PostgreSQL等主流的数据库
│  │  └─支持SQL编写页面智能化，可以看到数据源下面的表清单和字段清单
│  │  └─支持参数
│  ├─数据集
│  │  └─SQL
│  │  └─API
│  │  └─JSON
│  │  └─WebSocket
│  │  └─静态数据集
│  ├─数据
│  │  └─设置数据条数
│  │  └─数据过滤
│  │  └─数据定时刷新
│  ├─图表
│  │  └─柱形图
│  │  └─饼图
│  │  └─南丁格尔玫瑰图
│  │  └─折线图
│  │  └─环形图
│  │  └─面积图
│  │  └─进度图
│  │  └─象形图
│  │  └─仪表盘
│  │  └─散点图
│  │  └─漏斗图
│  │  └─雷达图
│  ├─常用
│  │  └─查询条件
│  │  └─轮播图
│  │  └─Iframe
│  │  └─日历
│  │  └─图片
│  │  └─文本
│  │  └─数值
│  │  └─按钮
│  │  └─当前时间
│  │  └─富文本
│  ├─布局
│  │  └─选项卡
│  │  └─栅格
│  ├─数据
│  │  └─数据表格
│  │  └─数据列表
│  │  └─通用组件
│  ├─地图
│  │  └─散点地图
│  │  └─飞线地图
│  │  └─柱形地图
│  │  └─时间轴飞线地图
│  │  └─柱形排名地图
│  │  └─热力地图
│  │  └─区域地图
│  ├─首页
│  │  └─快捷导航
│  │  └─统计卡片
│  │  └─项目列表
│  │  └─简洁卡片
│  │  └─待办事项
│  │  └─最新动态
│  ├─个性
│  │  └─牛气冲天
│  │  └─五行相克
│  │  └─甘特图
│  ├─样式配置
│  │  └─基础配置
│  │  └─标题设置
│  │  └─副标题设置
│  │  └─X轴设置
│  │  └─Y轴设置
│  │  └─提示语设置
│  │  └─坐标轴边距
│  │  └─图例设置
│  │  └─自定义配色
│  │  └─卡片设置
│  │  └─自定义属性
│  │  └─数值设置
│  ├─交互设置
│  │  └─联动配置
│  │  └─查询配置
│  │  └─跳转配置
│  │  └─钻取配置
│  │  └─自定义JS
└─ 导出
    └─图片
    └─PDF
    └─Excel
```



