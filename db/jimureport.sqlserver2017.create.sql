/*
 Navicat Premium Data Transfer

 Source Server         : sqlserver
 Source Server Type    : SQL Server
 Source Server Version : 14003223
 Source Host           : 192.168.1.199:1433
 Source Catalog        : jeecgboot
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14003223
 File Encoding         : 65001

 Date: 15/12/2020 14:25:07
*/


-- ----------------------------
-- Table structure for jimu_report
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jimu_report]') AND type IN ('U'))
	DROP TABLE [dbo].[jimu_report]
GO

CREATE TABLE [dbo].[jimu_report] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [json_str] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [api_url] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [thumb] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] tinyint  NULL,
  [api_method] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [api_code] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [template] tinyint  NULL,
  [view_count] bigint  NULL
)
GO

ALTER TABLE [dbo].[jimu_report] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'说明',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'note'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'json字符串',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'json_str'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求地址',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'api_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'缩略图',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'thumb'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标识0-正常,1-已删除',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求方法0-get,1-post',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'api_method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求编码',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'api_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是模板 0-是,1-不是',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'template'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览次数',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report',
'COLUMN', N'view_count'
GO

EXEC sp_addextendedproperty
'MS_Description', N'在线excel设计器',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report'
GO


-- ----------------------------
-- Records of jimu_report
-- ----------------------------
INSERT INTO [dbo].[jimu_report]  VALUES (N'1308645288868712448', N'20200923135242', N'统计人数创建情况', NULL, NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"1308645288868712448","printElHeight":1047,"rows":{"1":{"cells":{"1":{"text":"创建人数","style":0},"2":{"text":"日期","style":0}}},"2":{"cells":{"1":{"text":"#{tongji_days_user.ct}","style":0},"2":{"text":"#{tongji_days_user.date}","style":0}},"isDrag":true},"len":100},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":482,"name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}}],"validations":[],"cols":{"1":{"width":175},"2":{"width":207},"len":26},"merges":[]}', NULL, NULL, N'admin', N'2020-09-23 13:52:43.0000000', N'admin', N'2020-12-07 16:51:08.0000000', N'0', NULL, NULL, N'0', N'23')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'1321745750513815552', N'20201029172903', N'测试图表', NULL, NULL, N'printinfo', N'{"chartList":[{"row":0,"col":0,"width":"650","height":"350","config":"{\"yAxis\":{\"axisLabel\":{\"textStyle\":{\"color\":\"#333\",\"fontSize\":12}},\"axisLine\":{\"lineStyle\":{\"color\":\"#333\"}},\"show\":true,\"name\":\"销量\",\"splitLine\":{\"lineStyle\":{\"color\":\"red\",\"width\":1,\"type\":\"solid\"},\"show\":false}},\"xAxis\":{\"axisLabel\":{\"rotate\":0,\"interval\":0,\"textStyle\":{\"color\":\"#333\",\"fontSize\":12}},\"data\":[\"衬衫\",\"羊毛衫\",\"雪纺衫\",\"裤子\",\"高跟鞋\",\"袜子\"],\"axisLine\":{\"lineStyle\":{\"color\":\"#333\"}},\"show\":true,\"name\":\"服饰\",\"splitLine\":{\"lineStyle\":{\"color\":\"red\",\"width\":1,\"type\":\"solid\"},\"show\":false}},\"legend\":{\"padding\":[25,20,25,10],\"data\":[\"销量\"],\"top\":\"top\",\"orient\":\"horizontal\",\"left\":\"center\",\"show\":true,\"textStyle\":{\"color\":\"#333\",\"fontSize\":12}},\"grid\":{\"top\":60,\"left\":60,\"bottom\":60,\"right\":60},\"series\":[{\"barWidth\":50,\"data\":[5,20,36,10,10,20],\"name\":\"销量\",\"itemStyle\":{\"normal\":{\"color\":\"#c43632\",\"barBorderRadius\":0,\"label\":{\"show\":true,\"position\":\"top\",\"textStyle\":{\"color\":\"black\",\"fontSize\":16,\"fontWeight\":\"bolder\"}}}},\"type\":\"bar\",\"barMinHeight\":2}],\"tooltip\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\",\"fontSize\":18}},\"title\":{\"padding\":[5,20,5,20],\"left\":\"left\",\"show\":true,\"text\":\"某站点用户访问来源\",\"textStyle\":{\"color\":\"#c23531\",\"fontSize\":18,\"fontWeight\":\"bolder\"}}}","url":"","extData":{"chartType":""},"layer_id":"iVT2Ob7o5bcvT1jd","offsetX":0,"offsetY":0,"virtualCellRange":[[0,0],[0,1],[0,2],[0,3],[0,4],[0,5],[0,6]]},{"row":16,"col":0,"width":"650","height":"350","config":"{\"legend\":{\"padding\":[25,20,25,10],\"data\":[\"视频广告\",\"联盟广告\",\"邮件营销\",\"直接访问\",\"搜索引擎\",\"间接访问\"],\"top\":\"top\",\"orient\":\"horizontal\",\"left\":\"center\",\"show\":true,\"textStyle\":{\"color\":\"#333\",\"fontSize\":12}},\"series\":[{\"data\":[{\"name\":\"视频广告\",\"itemStyle\":{\"color\":null},\"value\":1170},{\"name\":\"联盟广告\",\"itemStyle\":{\"color\":null},\"value\":417},{\"name\":\"邮件营销\",\"itemStyle\":{\"color\":null},\"value\":335},{\"name\":\"直接访问\",\"itemStyle\":{\"color\":null},\"value\":410},{\"name\":\"搜索引擎\",\"itemStyle\":{\"color\":null},\"value\":800}],\"bottom\":60,\"isRadius\":false,\"roseType\":\"\",\"minAngle\":0,\"right\":60,\"label\":{\"show\":true,\"position\":\"outside\",\"textStyle\":{\"color\":\"black\",\"fontSize\":16,\"fontWeight\":\"bolder\"}},\"type\":\"pie\",\"autoSort\":false,\"top\":60,\"left\":60,\"notCount\":false,\"name\":\"访问来源\",\"radius\":\"55%\"}],\"tooltip\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\",\"fontSize\":18}},\"title\":{\"padding\":[5,20,5,10],\"left\":\"left\",\"show\":true,\"text\":\"某站点用户访问来源\",\"textStyle\":{\"color\":\"#c23531\",\"fontSize\":18,\"fontWeight\":\"bolder\"}}}","url":"","extData":{"chartType":""},"layer_id":"O0ikHkUXnGEVHwrn","offsetX":0,"offsetY":0,"virtualCellRange":[[16,0],[16,1],[16,2],[16,3],[16,4],[16,5],[16,6]]}],"area":{"sri":16,"sci":7,"eri":16,"eci":7,"width":100,"height":25},"printElWidth":794,"excel_config_id":"1321745750513815552","printElHeight":1047,"rows":{"0":{"cells":{"0":{"text":" ","virtual":"iVT2Ob7o5bcvT1jd"},"1":{"text":" ","virtual":"iVT2Ob7o5bcvT1jd"},"2":{"text":" ","virtual":"iVT2Ob7o5bcvT1jd"},"3":{"text":" ","virtual":"iVT2Ob7o5bcvT1jd"},"4":{"text":" ","virtual":"iVT2Ob7o5bcvT1jd"},"5":{"text":" ","virtual":"iVT2Ob7o5bcvT1jd"},"6":{"text":" ","virtual":"iVT2Ob7o5bcvT1jd"}}},"16":{"cells":{"0":{"text":" ","virtual":"O0ikHkUXnGEVHwrn"},"1":{"text":" ","virtual":"O0ikHkUXnGEVHwrn"},"2":{"text":" ","virtual":"O0ikHkUXnGEVHwrn"},"3":{"text":" ","virtual":"O0ikHkUXnGEVHwrn"},"4":{"text":" ","virtual":"O0ikHkUXnGEVHwrn"},"5":{"text":" ","virtual":"O0ikHkUXnGEVHwrn"},"6":{"text":" ","virtual":"O0ikHkUXnGEVHwrn"}}},"19":{"cells":{"6":{"text":"123"}}},"len":100},"dbexps":[],"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":700,"background":false,"name":"sheet1","autofilter":{},"styles":[],"validations":[],"cols":{"len":26},"merges":[]}', NULL, NULL, N'admin', N'2020-10-29 17:29:03.0000000', N'', N'2020-12-07 17:00:45.0000000', N'0', NULL, NULL, N'0', N'16')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'1329325191582584832', N'20201119152857', N'用户统计', NULL, NULL, N'datainfo', N'{"chartList":[{"row":8,"col":1,"width":"577","height":"315","config":"{\"yAxis\":{\"axisLabel\":{\"textStyle\":{\"color\":\"#333\",\"fontSize\":12}},\"axisLine\":{\"lineStyle\":{\"color\":\"#333\"}},\"show\":true,\"name\":\"销量\",\"splitLine\":{\"lineStyle\":{\"color\":\"red\",\"width\":1,\"type\":\"solid\"},\"show\":false}},\"xAxis\":{\"axisLabel\":{\"rotate\":\"\",\"interval\":\"\",\"textStyle\":{\"color\":\"#333\",\"fontSize\":12}},\"data\":[0,1,2],\"axisLine\":{\"lineStyle\":{\"color\":\"#333\"}},\"show\":true,\"name\":\"性别\",\"splitLine\":{\"lineStyle\":{\"color\":\"red\",\"width\":1,\"type\":\"solid\"},\"show\":\"\"}},\"grid\":{\"top\":60,\"left\":60,\"bottom\":60,\"right\":60},\"series\":[{\"barWidth\":50,\"data\":[1,2,1],\"name\":\"销量\",\"itemStyle\":{\"color\":\"#c43632\",\"barBorderRadius\":0},\"label\":{\"show\":true,\"position\":\"top\",\"textStyle\":{\"color\":\"black\",\"fontSize\":16,\"fontWeight\":\"bolder\"}},\"type\":\"bar\",\"barMinHeight\":2}],\"tooltip\":{\"show\":true,\"textStyle\":{\"color\":\"#fff\",\"fontSize\":18}},\"title\":{\"padding\":[5,20,5,20],\"left\":\"left\",\"show\":true,\"text\":\"\",\"textStyle\":{\"color\":\"#c23531\",\"fontSize\":18,\"fontWeight\":\"bolder\"}}}","url":"","extData":{"dataType":"sql","apiStatus":"","dataId":"1329327316048920577","axisX":"sex","axisY":"count(1)","series":"","yText":"人数","xText":"性别","dbCode":"tj_sexcount","chartType":"bar.simple"},"layer_id":"afG9aV4VeWdx9VbM","offsetX":0,"offsetY":0,"virtualCellRange":[[8,1],[8,2],[8,3],[8,4],[8,5],[8,6]]}],"area":{"sri":12,"sci":11,"eri":12,"eci":11,"width":100,"height":25},"printElWidth":802,"excel_config_id":"1329325191582584832","printElHeight":1047,"rows":{"1":{"cells":{"1":{"text":"用户名","style":2},"2":{"text":"生日","style":2},"3":{"text":"性别","style":2},"4":{"text":"邮箱","style":2},"5":{"text":"电话","style":2}},"height":33},"2":{"cells":{"1":{"text":"#{userreport.realname}","style":0},"2":{"text":"#{userreport.birthday}","style":3},"3":{"text":"#{userreport.sex}","style":0,"isDict":1,"dictCode":"sex"},"4":{"text":"#{userreport.email}","style":0},"5":{"text":"#{userreport.phone}","style":0}},"isDrag":true},"3":{"cells":{},"height":25},"8":{"cells":{"1":{"text":" ","virtual":"afG9aV4VeWdx9VbM"},"2":{"text":" ","virtual":"afG9aV4VeWdx9VbM"},"3":{"text":" ","virtual":"afG9aV4VeWdx9VbM"},"4":{"text":" ","virtual":"afG9aV4VeWdx9VbM"},"5":{"text":" ","virtual":"afG9aV4VeWdx9VbM"},"6":{"text":" ","virtual":"afG9aV4VeWdx9VbM"}}},"len":74},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":["sex"],"freeze":"A1","dataRectWidth":775,"name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#71ae47"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#c5e0b3"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"format":"date"}],"validations":[],"cols":{"4":{"width":132},"5":{"width":143},"len":26},"merges":[]}', NULL, NULL, N'admin', N'2020-11-19 15:28:57.0000000', N'admin', N'2020-11-19 15:45:04.0000000', N'0', NULL, NULL, N'0', N'11')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'1603a5abdfbd5d2beeba45fd26bcabce', N'5662333-副本', N'实习证明-副本', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"1603a5abdfbd5d2beeba45fd26bcabce","printElHeight":738,"rows":{"0":{"cells":{"0":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"},"1":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"},"2":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"},"3":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"},"4":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"},"5":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"},"6":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"},"7":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"},"8":{"text":" ","virtual":"ZT0IwwOEpy91cxAY"}}},"6":{"cells":{"2":{"merge":[2,2],"text":"实习证明","style":7},"3":{"style":7},"4":{"style":7}}},"7":{"cells":{"2":{"style":7},"3":{"style":7},"4":{"style":7}}},"8":{"cells":{"2":{"style":7},"3":{"style":7},"4":{"style":7}}},"9":{"cells":{},"height":59},"10":{"cells":{"1":{"text":"#{shixi.name}","style":8},"2":{"text":"同学在我公司与 2020年4月1日 至 2020年5月1日 实习。","merge":[0,3]}},"isDrag":true,"height":32},"11":{"cells":{},"height":10},"12":{"cells":{},"height":13},"13":{"cells":{"1":{"text":"#{shixi.pingjia}","style":9,"merge":[2,6]}}},"14":{"cells":{}},"15":{"cells":{},"height":35},"16":{"cells":{},"height":26},"17":{"cells":{"1":{"merge":[0,1],"text":"特此证明。"}},"height":47},"19":{"cells":{},"height":15},"20":{"cells":{"4":{"text":"证明人："},"5":{"text":"#{shixi.lingdao}","style":10}},"height":32},"21":{"cells":{"4":{"merge":[0,1],"text":"#{shixi.shijian}"}},"height":37},"36":{"cells":{"2":{"text":"","style":6},"3":{"style":6},"4":{"style":6},"5":{"style":6}}},"37":{"cells":{"2":{"style":6},"3":{"style":6},"4":{"style":6},"5":{"style":6}}},"38":{"cells":{"2":{"style":6},"3":{"style":6},"4":{"style":6},"5":{"style":6}}},"len":91},"dbexps":[],"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":636,"background":false,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","font":{"size":18}},{"align":"center","font":{"size":22}},{"align":"center","font":{"size":24}},{"align":"center","font":{"size":24,"bold":true}},{"align":"center","font":{"size":36,"bold":true}},{"align":"center","font":{"size":36,"bold":false}},{"align":"center","font":{"size":36}},{"align":"right"},{"textwrap":true},{"align":"left"}],"validations":[],"cols":{"0":{"width":73},"1":{"width":63},"4":{"width":69},"5":{"width":47},"6":{"width":36},"7":{"width":48},"len":27},"merges":["C7:E9","C11:F11","B14:H16","B18:C18","E22:F22"],"imgList":[{"row":0,"col":0,"width":"565","height":"800","src":"https://static.jeecg.com/designreport/images/report_1595906079684.png","isBackend":true,"commonBackend":true,"layer_id":"ZT0IwwOEpy91cxAY","offsetX":0,"offsetY":0,"virtualCellRange":[[0,0],[0,1],[0,2],[0,3],[0,4],[0,5],[0,6],[0,7],[0,8]]}]}', N'', N'', N'admin', N'2020-07-28 11:14:24.0000000', N'', N'2020-12-07 16:51:15.0000000', N'0', NULL, NULL, N'0', N'14')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'384b4d711b5e341d5e883c6e57eecfc4', N'20200805191006', N'测试居中', NULL, NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"384b4d711b5e341d5e883c6e57eecfc4","printElHeight":1047,"rows":{"5":{"cells":{"1":{"style":0,"text":"1"},"2":{"style":0,"text":"2"},"3":{"style":0,"text":"3"},"4":{"style":0,"text":"4"},"5":{"style":0,"text":"5"},"6":{"style":1}}},"6":{"cells":{"1":{"style":3,"text":"-----"},"2":{"style":0},"3":{"style":0},"4":{"style":0},"5":{"style":4,"text":"-----"},"6":{"style":1}}},"7":{"cells":{"1":{"style":0},"2":{"style":0},"3":{"style":0},"4":{"style":0},"5":{"style":0},"6":{"style":1}}},"8":{"cells":{"1":{"style":0},"2":{"style":0},"3":{"style":0},"4":{"style":0},"5":{"style":0},"6":{"style":1}}},"9":{"cells":{"1":{"style":0},"2":{"style":0},"3":{"style":0},"4":{"style":0},"5":{"style":0},"6":{"style":1}}},"10":{"cells":{"1":{"style":0},"2":{"style":0},"3":{"style":0},"4":{"style":0},"5":{"style":0},"6":{"style":1}}},"len":100},"freeze":"A1","dataRectWidth":565,"name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"left":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"right"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"right","font":{"bold":true}}],"validations":[],"cols":{"0":{"width":65},"len":26},"merges":[]}', NULL, N'', N'admin', N'2020-08-05 19:10:07.0000000', N'jeecg', N'2020-08-05 19:27:23.0000000', N'0', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'5104307fedacdf3332209874397c0576', N'5662333', N'实习证明', N'', NULL, N'printinfo', N'{"area":{"sri":1,"sci":11,"eri":1,"eci":11,"width":100,"height":25},"printElWidth":545,"excel_config_id":"5104307fedacdf3332209874397c0576","printElHeight":1047,"rows":{"0":{"cells":{"0":{"text":" ","virtual":"anojiUPWEerxAnl9"},"1":{"text":" ","virtual":"anojiUPWEerxAnl9"},"2":{"text":" ","virtual":"anojiUPWEerxAnl9"},"3":{"text":" ","virtual":"anojiUPWEerxAnl9"},"4":{"text":" ","virtual":"anojiUPWEerxAnl9"},"5":{"text":" ","virtual":"anojiUPWEerxAnl9"},"6":{"text":" ","virtual":"anojiUPWEerxAnl9"},"7":{"text":" ","virtual":"anojiUPWEerxAnl9"},"8":{"text":" ","virtual":"anojiUPWEerxAnl9"}}},"6":{"cells":{"2":{"merge":[2,2],"text":"实习证明","style":7},"3":{"style":7},"4":{"style":7}}},"7":{"cells":{"2":{"style":7},"3":{"style":7},"4":{"style":7}}},"8":{"cells":{"2":{"style":7},"3":{"style":7},"4":{"style":7}}},"9":{"cells":{},"height":59},"10":{"cells":{"1":{"text":"#{shixi.name}","style":8},"2":{"text":"同学在我公司与 2020年4月1日 至 2020年5月1日 实习。","merge":[0,3]}},"isDrag":true,"height":32},"11":{"cells":{},"height":10},"12":{"cells":{},"height":13},"13":{"cells":{"1":{"text":"#{shixi.pingjia}","style":9,"merge":[2,4]}}},"14":{"cells":{}},"15":{"cells":{},"height":35},"16":{"cells":{},"height":26},"17":{"cells":{"1":{"merge":[0,1],"text":"特此证明。"}},"height":47},"19":{"cells":{},"height":15},"20":{"cells":{"4":{"text":"证明人："},"5":{"text":"#{shixi.lingdao}","style":10}},"height":32},"21":{"cells":{"4":{"merge":[0,1],"text":"#{shixi.shijian}"}},"height":37},"36":{"cells":{"2":{"text":"","style":6},"3":{"style":6},"4":{"style":6},"5":{"style":6}}},"37":{"cells":{"2":{"style":6},"3":{"style":6},"4":{"style":6},"5":{"style":6}}},"38":{"cells":{"2":{"style":6},"3":{"style":6},"4":{"style":6},"5":{"style":6}}},"len":91},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":636,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","font":{"size":18}},{"align":"center","font":{"size":22}},{"align":"center","font":{"size":24}},{"align":"center","font":{"size":24,"bold":true}},{"align":"center","font":{"size":36,"bold":true}},{"align":"center","font":{"size":36,"bold":false}},{"align":"center","font":{"size":36}},{"align":"right"},{"textwrap":true},{"align":"left"}],"validations":[],"cols":{"0":{"width":73},"1":{"width":63},"4":{"width":69},"5":{"width":47},"6":{"width":36},"7":{"width":48},"len":27},"merges":["C7:E9","C11:F11","B18:C18","E22:F22","B14:F16"],"imgList":[{"row":0,"col":0,"width":"565","height":"800","src":"https://static.jeecg.com/designreport/images/report_1595906079684.png","isBackend":false,"isBackendImg":true,"commonBackend":true,"layer_id":"anojiUPWEerxAnl9","offsetX":0,"offsetY":0,"virtualCellRange":[[0,0],[0,1],[0,2],[0,3],[0,4],[0,5],[0,6],[0,7],[0,8]]}]}', N'', N'', N'admin', N'2020-07-28 11:14:24.0000000', N'admin', N'2020-12-07 16:58:15.0000000', N'0', NULL, NULL, N'1', N'10')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'519c1c6f4d1f584ae8fa5b43b45acdc7', N'56623333333', N'销售单', N'', NULL, N'printinfo', N'{"area":{"sri":4,"sci":0,"eri":5,"eci":25,"width":2591,"height":50},"printElWidth":794,"excel_config_id":"519c1c6f4d1f584ae8fa5b43b45acdc7","printElHeight":1047,"rows":{"0":{"cells":{"1":{"text":"销售单","style":9,"merge":[0,6]}},"height":99},"1":{"cells":{"1":{"text":"商品编码","style":26},"2":{"text":"商品名称","style":26},"3":{"text":"销售时间","style":26},"4":{"text":"销售数量","style":26},"5":{"text":"定价","style":26},"6":{"text":"优惠价","style":26},"7":{"text":"付款金额","style":26}},"height":39},"2":{"cells":{"1":{"text":"#{xiaoshou.bianma}","style":22},"2":{"text":"#{xiaoshou.cname}","style":22},"3":{"text":"#{xiaoshou.ctime}","style":22},"4":{"text":"#{xiaoshou.cnum}","style":22},"5":{"text":"#{xiaoshou.cprice}","style":22},"6":{"text":"#{xiaoshou.yprice}","style":22},"7":{"text":"#{xiaoshou.ctotal}","style":22}},"isDrag":true},"3":{"cells":{"1":{"style":34,"text":""},"2":{"style":34},"3":{"style":34},"4":{"style":34},"5":{"style":34,"text":""},"6":{"text":"总计：","style":38},"7":{"style":39,"text":"#{zongji.ttotal}"}},"isDrag":true,"height":73},"len":86},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":791,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","color":"#000100"},{"align":"center","color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]}},{"border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]},"bgcolor":"#01b0f1"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#01b0f1"},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]}},{"align":"center","font":{"size":18}},{"align":"center","font":{"size":18,"bold":true}},{"align":"center","font":{"size":16,"bold":true}},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"align":"center"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#fed964"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#fdc101"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#fdc101"},{"border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"align":"center"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#ffe59a"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#ffc001"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#fed964"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#ed7d31"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#5b9cd6"},{"align":"center","color":"#000100","border":{"bottom":["thin","#4371c6"],"top":["thin","#4371c6"],"left":["thin","#4371c6"],"right":["thin","#4371c6"]},"bgcolor":"#5b9cd6"},{"border":{"bottom":["thin","#4371c6"],"top":["thin","#4371c6"],"left":["thin","#4371c6"],"right":["thin","#4371c6"]},"align":"center"},{"font":{"size":8}},{"font":{"size":8},"color":"#7f7f7f"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#4371c6"],"top":["thin","#4371c6"],"left":["thin","#4371c6"],"right":["thin","#4371c6"]},"bgcolor":"#9cc2e6"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#9cc2e6"},{"border":{"bottom":["thin","#4371c6"],"top":["thin","#4371c6"],"left":["thin","#4371c6"],"right":["thin","#4371c6"]}},{"font":{"bold":true}},{"font":{"bold":true,"size":12}},{"font":{"bold":true,"size":16}},{"font":{"bold":true,"size":18}},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"align":"right"},{"align":"right"},{"align":"left"},{"align":"right","font":{"size":16}},{"align":"left","font":{"size":16}},{"align":"right","font":{"size":14}},{"align":"left","font":{"size":14}}],"validations":[],"cols":{"0":{"width":1},"1":{"width":163},"2":{"width":176},"3":{"width":147},"4":{"width":66},"5":{"width":66},"6":{"width":82},"7":{"width":90},"len":26},"merges":["B1:H1"]}', N'', N'', N'admin', N'2020-07-28 16:54:44.0000000', N'admin', N'2020-12-07 16:51:28.0000000', N'0', NULL, NULL, N'1', N'15')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'52c7022b724e202f98acac3546f42406', N'caiwu', N'财务', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"52c7022b724e202f98acac3546f42406","printElHeight":1047,"rows":{"1":{"cells":{"1":{"text":"年度各月份佣金收入","style":27,"merge":[0,5]},"2":{"style":28},"3":{"style":28},"4":{"style":28},"5":{"style":28},"6":{"style":28},"7":{"style":12},"8":{"style":12}},"height":45},"3":{"cells":{"1":{"text":"查询年度：","style":24},"2":{"text":"2019"},"4":{"text":"查询机构：","style":24},"5":{"text":"总公司"},"6":{"text":"单位：元","style":24}}},"5":{"cells":{"1":{"text":"月份","style":26},"2":{"text":"佣金/主营业收入","style":26},"3":{"text":"累计","style":26},"4":{"text":"历史最低水平","style":26},"5":{"text":"历史平均水平","style":26},"6":{"text":"历史最高水平","style":26}}},"6":{"cells":{"1":{"text":"#{income.month}","style":30},"2":{"text":"#{income.main_operating_income}","style":21},"3":{"text":"#{income.cumulative}","style":21},"4":{"text":"#{income.lowest_level_in_history}","style":21},"5":{"text":"#{income.historical_average}","style":21},"6":{"text":"#{income.record_high}","style":21}},"isDrag":true},"len":74},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":700,"name":"sheet1","autofilter":{},"styles":[{"bgcolor":"#f4f5f8","textwrap":true,"color":"#900b09","border":{"top":["thin","#0366d6"],"bottom":["thin","#0366d6"],"right":["thin","#0366d6"],"left":["thin","#0366d6"]}},{"format":"rmb"},{"textwrap":true},{"bgcolor":"#c45a10"},{"valign":"middle"},{"valign":"top"},{"valign":"middle","bgcolor":"#71ae47"},{"bgcolor":"#71ae47"},{"valign":"middle","bgcolor":"#a7d08c"},{"bgcolor":"#a7d08c"},{"valign":"middle","bgcolor":"#a7d08c","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"valign":"middle","bgcolor":"#ffffff","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"bgcolor":"#ffffff"},{"valign":"middle","bgcolor":"#ffffff","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center"},{"align":"center"},{"valign":"middle","bgcolor":"#ffffff","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":true}},{"align":"center","font":{"bold":true}},{"valign":"middle","bgcolor":"#ffffff","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":true,"size":26}},{"align":"center","font":{"bold":true,"size":26}},{"valign":"middle","bgcolor":"#ffffff","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":true,"size":22}},{"align":"center","font":{"bold":true,"size":22}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"valign":"middle","bgcolor":"#ffffff","align":"center","font":{"bold":true,"size":22}},{"align":"right"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#5b9cd6"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#ffc001"},{"valign":"middle","bgcolor":"#ffffff","align":"center","font":{"bold":true,"size":18}},{"font":{"size":18}},{"font":{"size":22}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"italic":true}}],"validations":[],"cols":{"2":{"width":75},"3":{"width":108},"5":{"width":109},"6":{"width":108},"7":{"width":117},"len":24},"merges":["UAAAAAACI6","B2:G2"]}', N'', N'', N'admin', N'2020-02-03 17:09:53.0000000', N'admin', N'2020-12-07 16:54:47.0000000', N'0', NULL, NULL, N'1', N'10')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'53c82a76f837d5661dceec7d93afafec', N'5678', N'阜阳检票数查询', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"53c82a76f837d5661dceec7d93afafec","printElHeight":1047,"rows":{"0":{"cells":{"1":{"text":""},"3":{"style":55,"merge":[0,3],"text":"阜阳火车站检票数"},"4":{"style":55},"5":{"style":55},"6":{"style":55}},"height":103},"1":{"cells":{"1":{}},"height":58},"2":{"cells":{"1":{"text":"日期：","style":56},"2":{"text":"#{gongsi.tdata}","style":57},"7":{"text":"","merge":[0,1],"style":33},"8":{"style":33}},"isDrag":true},"3":{"cells":{"1":{"text":"班次","merge":[1,0],"style":52},"2":{"text":"发车时间","merge":[1,0],"style":52},"3":{"text":"是否放空","merge":[1,0],"style":52},"4":{"text":"路线","merge":[0,1],"style":52},"5":{"style":47},"6":{"text":"核载座位数","merge":[1,0],"style":52},"7":{"merge":[1,0],"style":52,"text":"检票数"},"8":{"merge":[1,0],"style":52,"text":"实载率（%）"}}},"4":{"cells":{"1":{"style":47},"2":{"style":52},"3":{"style":47},"4":{"text":"从","style":52},"5":{"text":"到","style":52},"6":{"style":47},"7":{"style":52},"8":{"style":47}}},"5":{"cells":{"1":{"style":51,"text":"#{jianpiao.bnum}"},"2":{"style":51,"text":"#{jianpiao.ftime}"},"3":{"style":51,"text":"#{jianpiao.sfkong}"},"4":{"style":51,"text":"#{jianpiao.kaishi}"},"5":{"style":51,"text":"#{jianpiao.jieshu}"},"6":{"style":51,"text":"#{jianpiao.hezairen}"},"7":{"style":51,"text":"#{jianpiao.jpnum}"},"8":{"style":51,"text":"#{jianpiao.shihelv}"}}},"6":{"cells":{"1":{"style":11},"2":{"style":11},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"7":{"cells":{"1":{"style":11},"2":{"style":11,"text":""},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"8":{"cells":{"1":{"style":11},"2":{"style":11},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"9":{"cells":{"1":{"style":11},"2":{"style":11},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"10":{"cells":{"1":{"style":11},"2":{"style":11},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"11":{"cells":{"1":{"style":11},"2":{"style":11},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"12":{"cells":{"1":{"style":11},"2":{"style":11},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"13":{"cells":{"1":{"style":11},"2":{"style":11},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"14":{"cells":{"1":{"style":11},"2":{"style":11},"3":{"style":11},"4":{"style":11},"5":{"style":11},"6":{"style":11},"7":{"style":11},"8":{"style":11}}},"len":96,"-1":{"cells":{"-1":{"text":"#{gongsi.gdata}"}},"isDrag":true}},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":736,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","border":{"top":["thin","#000"],"bottom":["thin","#000"],"left":["thin","#000"]}},{"align":"center","border":{"top":["thin","#000"],"bottom":["thin","#000"]}},{"align":"center","border":{"top":["thin","#000"]}},{"align":"center","border":{"top":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]}},{"align":"center","border":{"bottom":["thin","#000"]}},{"align":"center","border":{"top":["thin","#000"],"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","border":{"bottom":["thin","#000"],"left":["thin","#000"]}},{"align":"center","border":{"bottom":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]}},{"border":{"top":["thin","#000100"],"left":["thin","#000100"]}},{"border":{"top":["thin","#000100"]}},{"border":{"top":["thin","#000100"],"right":["thin","#000100"]}},{"border":{"left":["thin","#000100"]}},{"border":{"right":["thin","#000100"]}},{"border":{"bottom":["thin","#000100"],"left":["thin","#000100"]}},{"border":{"bottom":["thin","#000100"]}},{"border":{"bottom":["thin","#000100"],"right":["thin","#000100"]}},{"border":{"top":["thin","#7f7f7f"]}},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]}},{"border":{"right":["thin","#7f7f7f"],"bottom":["thin","#7f7f7f"]}},{"border":{"bottom":["thin","#7f7f7f"]}},{"border":{"right":["thin","#7f7f7f"]}},{"align":"center","font":{"size":16}},{"align":"center","font":{"size":16,"bold":true}},{"font":{"bold":true}},{"font":{"bold":false}},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"bold":true}},{"align":"center","font":{"bold":true}},{"align":"right"},{"align":"center","font":{"size":14,"bold":true}},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"bold":true},"bgcolor":"#4371c6"},{"align":"center","font":{"bold":true},"bgcolor":"#4371c6"},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"bold":false},"bgcolor":"#4371c6"},{"align":"center","font":{"bold":false},"bgcolor":"#4371c6"},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"bold":false},"bgcolor":"#2e75b5"},{"align":"center","font":{"bold":false},"bgcolor":"#2e75b5"},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"bold":false},"bgcolor":"#5b9cd6"},{"align":"center","font":{"bold":false},"bgcolor":"#5b9cd6"},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"bold":false},"bgcolor":"#0170c1"},{"align":"center","font":{"bold":false},"bgcolor":"#0170c1"},{"font":{"bold":false},"color":"#7f7f7f"},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"bold":false},"bgcolor":"#9cc2e6"},{"align":"center","font":{"bold":false},"bgcolor":"#9cc2e6"},{"align":"center","border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"bold":false},"bgcolor":"#01b0f1"},{"align":"center","font":{"bold":false},"bgcolor":"#01b0f1"},{"align":"center","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"font":{"bold":false},"bgcolor":"#5b9cd6"},{"align":"center","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]}},{"align":"center","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"font":{"bold":false},"bgcolor":"#9cc2e6"},{"align":"center","font":{"size":16,"bold":true},"valign":"bottom"},{"align":"center","font":{"size":22,"bold":true},"valign":"bottom"},{"align":"center","font":{"size":18,"bold":true},"valign":"bottom"},{"font":{"bold":false},"color":"#7f7f7f","align":"right"},{"color":"#7f7f7f"}],"validations":[],"cols":{"0":{"width":52},"1":{"width":118},"2":{"width":75},"3":{"width":54},"4":{"width":95},"5":{"width":109},"6":{"width":75},"7":{"width":75},"8":{"width":83},"len":27},"merges":["E4:F4","B4:B5","C4:C5","D4:D5","G4:G5","H4:H5","I4:I5","D1:G1","H3:I3"]}', N'', N'', N'admin', N'2020-06-16 15:01:42.0000000', N'admin', N'2020-12-07 16:52:50.0000000', N'0', NULL, NULL, N'1', N'6')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'5b31fe02c799f351e131fca683ffd680', N'121212', N'单据表单设计', N'', NULL, N'2', N'{"chartList":[{"width":0,"height":0,"config":"{\"title\":{\"text\":\"JEECG系统登陆情况统计\",\"subtext\":\"真实数据\",\"left\":\"center\"},\"tooltip\":{\"trigger\":\"item\",\"formatter\":\"{b} : {c} ({d}%)\"},\"legend\":{\"bottom\":10,\"left\":\"center\",\"data\":[\"IE\",\"Safari\",\"Firefox\",\"Opera\",\"Chrome\"]},\"series\":[{\"type\":\"pie\",\"radius\":\"65%\",\"center\":[\"50%\",\"50%\"],\"selectedMode\":\"single\",\"data\":[{\"value\":1021,\"name\":\"IE\"},{\"value\":87,\"name\":\"Safari\"},{\"value\":582,\"name\":\"Firefox\"},{\"value\":123,\"name\":\"Opera\"},{\"value\":2451,\"name\":\"Chrome\"}]}]}","url":""},{"row":13,"col":1,"width":"650","height":"350","config":"{\"title\":{\"text\":\"ECharts 入门示例\"},\"tooltip\":{},\"legend\":{\"data\":[\"销量\"]},\"xAxis\":{\"data\":[\"衬衫\",\"羊毛衫\",\"雪纺衫\",\"裤子\",\"高跟鞋\",\"袜子\"]},\"yAxis\":{},\"series\":[{\"name\":\"销量\",\"type\":\"bar\",\"data\":[5,20,36,10,10,20]}]}","url":""}],"area":false,"excel_config_id":"5b31fe02c799f351e131fca683ffd680","freeze":"A1","name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center"},{"align":"center","bgcolor":"#bdd7ee"},{"align":"center","bgcolor":"#bdd7ee","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}}],"validations":[],"rows":{"1":{"cells":{"1":{"merge":[1,1],"text":"申请单","style":3},"2":{"style":2},"3":{},"4":{}}},"2":{"cells":{"0":{},"1":{"style":2},"2":{"style":2},"3":{},"4":{}}},"3":{"cells":{"1":{"text":"用户名","style":0},"2":{"text":"${name}","style":0},"3":{},"4":{}},"height":36},"4":{"cells":{"1":{"text":"性别","style":0},"2":{"text":"${sex}","style":0},"3":{}},"height":37},"5":{"cells":{"1":{"text":"年龄","style":0},"2":{"text":"${age}","style":0}},"height":42},"11":{"cells":{"1":{},"2":{},"3":{}}},"12":{"cells":{"1":{},"2":{},"3":{}}},"len":100},"cols":{"1":{"width":174},"2":{"width":177},"len":26},"merges":["B2:C3"],"imgList":[{"row":4,"col":4,"width":"315","height":"236.313","src":"excel_online/20191231/20180607175028Fn1Lq7zw_1577798081905.png"}]}', N'http://api.jeecg.com/mock/21/big-screen/printform', N'', N'admin', N'2019-12-25 18:54:17.0000000', NULL, N'2020-06-12 15:21:32.0000000', N'0', NULL, NULL, N'1', NULL)
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'6059e405dd9c66a6d38e00841d2e40cc', N'566777', N'处方笺', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":786,"excel_config_id":"6059e405dd9c66a6d38e00841d2e40cc","printElHeight":1047,"rows":{"0":{"cells":{"3":{"style":33}},"height":45},"1":{"cells":{"1":{"style":24},"2":{"style":25},"3":{"style":25},"4":{"style":25},"5":{"style":25},"6":{"style":25},"7":{"style":25},"8":{"style":25},"9":{"style":25},"10":{"style":25},"11":{"style":25},"12":{"style":26}},"height":18},"2":{"cells":{"1":{"text":"","style":27},"2":{"merge":[0,9],"text":"智能医学院处方笺","style":38},"3":{"style":12},"4":{"style":12},"5":{"style":12},"6":{"style":12},"7":{"style":12},"8":{"style":12},"10":{"style":12},"11":{"style":12},"12":{"style":28},"13":{"style":31}},"height":124},"3":{"cells":{"1":{"text":"","style":46},"2":{"merge":[0,1],"text":"姓名：","style":4},"3":{"style":4},"4":{"text":"#{yonghu.yname}"},"5":{"text":"性别：","style":42},"6":{"style":42,"text":"#{yonghu.ysex}"},"7":{"text":"年龄：","style":47},"8":{"text":"#{yonghu.yage}"},"10":{"text":"","style":42},"11":{"style":69,"text":"","merge":[0,1]},"12":{"style":43},"13":{"style":31}},"isDrag":true},"4":{"cells":{"1":{"text":"","style":74},"2":{"style":4,"merge":[0,1],"text":"单位："},"3":{"style":4},"4":{"text":"#{yonghu.danwei}"},"5":{"text":"电话："},"6":{"merge":[0,5],"text":"#{yonghu.yphone}"},"12":{"style":28},"15":{"text":""}},"isDrag":true,"height":29},"5":{"cells":{"1":{"style":31},"2":{"merge":[0,1],"text":"初步诊断："},"4":{"text":"#{yonghu.yjieguo}","merge":[0,7]},"12":{"style":28}},"isDrag":true,"height":34},"6":{"cells":{"1":{"text":" RP：","merge":[0,2],"style":79},"2":{"style":11},"3":{"style":11},"4":{"style":39},"5":{"style":0},"6":{"style":0},"7":{"style":0},"8":{"style":0},"10":{"style":0},"12":{"style":28},"14":{},"16":{}},"height":79},"7":{"cells":{"1":{"text":".","style":48},"2":{"text":"#{yaopin.name}","style":1,"merge":[0,5]},"8":{"text":"#{yaopin.value}"},"12":{"style":28},"14":{}},"isDrag":true,"height":37},"8":{"cells":{"1":{"style":31},"2":{"merge":[0,4]},"12":{"style":28}},"height":28},"9":{"cells":{"1":{"style":31},"2":{"merge":[0,4]},"12":{"style":28}},"height":32},"10":{"cells":{"1":{"style":31},"2":{"merge":[0,4]},"12":{"style":28}},"height":28},"11":{"cells":{"1":{"style":31},"2":{"merge":[0,4]},"12":{"style":28}},"height":33},"12":{"cells":{"0":{"style":28},"1":{"style":31},"2":{"merge":[0,4]},"12":{"style":28},"13":{"style":31}},"height":31},"13":{"cells":{"1":{"style":31},"2":{"merge":[0,4]},"12":{"style":28}},"height":34},"14":{"cells":{"1":{"style":31},"12":{"style":28}},"height":97},"15":{"cells":{"1":{"style":31},"2":{"text":"医嘱：","style":76},"3":{"merge":[0,8],"style":6,"text":"#{yonghu.yizhu}"},"12":{"style":28}}},"16":{"cells":{"1":{"style":31},"2":{"text":"药品费","style":6,"merge":[0,1]},"4":{"text":"#{yonghu.yprice}","style":6},"5":{"merge":[0,1],"text":"中成药费","style":6},"7":{"style":6},"8":{"text":"治疗费","merge":[0,2],"style":6},"11":{"style":6,"text":""},"12":{"style":28}}},"17":{"cells":{"1":{"style":31},"2":{"text":"检查费","style":6,"merge":[0,1]},"4":{"style":6},"5":{"merge":[0,1],"text":"换药费","style":6},"7":{"style":6},"8":{"merge":[0,2],"text":"诊疗费","style":6},"11":{"text":"#{yonghu.yzhenliao}","style":6},"12":{"style":28}},"isDrag":true},"18":{"cells":{"1":{"style":31},"2":{"text":"注射费","style":6,"merge":[0,1]},"4":{"style":6,"merge":[0,3]},"8":{"merge":[0,2],"text":"其他","style":6},"11":{"style":6},"12":{"style":28}}},"19":{"cells":{"1":{"style":31},"2":{"text":"合计","style":6,"merge":[0,1]},"4":{"text":"#{yonghu.ytotal}","merge":[0,7],"style":6},"12":{"style":28}},"isDrag":true},"20":{"cells":{"1":{"style":31},"12":{"style":28},"13":{"style":31}},"height":9},"21":{"cells":{"1":{"style":31},"2":{"text":"医师：","style":44,"merge":[0,1]},"4":{"text":"#{yonghu.yishe}","style":25},"5":{"style":25},"6":{"style":25},"7":{"style":25},"8":{"text":"日期：","style":44},"9":{"merge":[0,2],"style":25,"text":"#{yonghu.kdata}"},"12":{"style":71},"13":{"style":31}},"height":50},"22":{"cells":{"1":{"style":32},"2":{"style":33},"3":{"style":33},"4":{"style":33},"5":{"style":33},"6":{"style":33},"7":{"style":33},"8":{"style":33},"9":{"style":33},"10":{"style":33},"11":{"style":33},"12":{"style":34}},"height":24},"23":{"cells":{"3":{"style":25}}},"24":{"cells":{"11":{"text":""}},"isDrag":true},"len":100,"-1":{"cells":{"-1":{"text":"#{yaopin.value}"}},"isDrag":true}},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":701,"name":"sheet1","autofilter":{},"styles":[{"font":{"size":12}},{"font":{"size":10}},{"font":{"size":12},"align":"right"},{"font":{"size":14}},{"align":"right"},{"font":{"size":10},"align":"right"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center"},{"align":"center"},{"font":{"size":12},"align":"center"},{"font":{"size":12,"bold":true},"align":"center"},{"align":"center","font":{"bold":true}},{"font":{"size":14,"bold":true},"align":"center"},{"border":{"top":["thin","#000"],"left":["thin","#000"]}},{"border":{"top":["thin","#000"]}},{"border":{"top":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":14,"bold":true},"align":"center","border":{"left":["thin","#000"]}},{"border":{"right":["thin","#000"]}},{"font":{"size":12},"border":{"left":["thin","#000"]}},{"font":{"size":10},"border":{"left":["thin","#000"]}},{"border":{"left":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"left":["thin","#000"]}},{"border":{"bottom":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"right":["thin","#000"]}},{"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":14,"bold":true},"align":"center","border":{"left":["thick","#000"]}},{"border":{"right":["thick","#000"]}},{"font":{"size":12},"border":{"left":["thick","#000"]}},{"font":{"size":10},"border":{"left":["thick","#000"]}},{"border":{"left":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]}},{"border":{"bottom":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":15},"border":{"left":["thick","#000"]}},{"font":{"size":15}},{"align":"left"},{"font":{"size":14,"bold":true},"align":"center","border":{"bottom":["thick","#000"]}},{"font":{"size":12,"bold":true}},{"font":{"size":12,"bold":true},"align":"center","border":{"bottom":["thick","#000"]}},{"font":{"size":10},"border":{"left":["thick","#000"]},"valign":"bottom"},{"font":{"size":10},"valign":"bottom"},{"valign":"bottom"},{"align":"right","border":{"top":["thick","#000"]}},{"align":"left","border":{"top":["thick","#000"]}},{"font":{"size":10},"border":{"left":["thick","#000"]},"valign":"bottom","align":"right"},{"font":{"size":10},"valign":"bottom","align":"right"},{"font":{"size":10},"border":{"left":["thick","#000"]},"align":"right"},{"font":{"size":10},"border":{"left":["thick","#000"]},"textwrap":true},{"font":{"size":10},"textwrap":true},{"font":{"size":10},"border":{"left":["thick","#000"]},"textwrap":false},{"font":{"size":10},"textwrap":false},{"font":{"size":10},"border":{"left":["thick","#000"]},"textwrap":false,"align":"right"},{"font":{"size":10},"textwrap":false,"align":"right"},{"font":{"size":10},"border":{"left":["thick","#000"]},"textwrap":false,"align":"left"},{"font":{"size":10},"textwrap":false,"align":"left"},{"font":{"size":10},"border":{"left":["thick","#000"]},"textwrap":false,"align":"center"},{"font":{"size":10},"textwrap":false,"align":"center"},{"font":{"size":15},"border":{"left":["thick","#000"]},"align":"right"},{"font":{"size":15},"align":"right"},{"font":{"size":15},"border":{"left":["thick","#000"]},"align":"center"},{"font":{"size":10},"border":{"left":["thin","#000"]},"valign":"bottom","align":"right"},{"font":{"size":10},"valign":"bottom","border":{"right":["thin","#000"]}},{"font":{"size":10},"border":{"left":["thin","#000"]},"align":"right"},{"font":{"size":10},"border":{"left":["thin","#000"]},"textwrap":false,"align":"left"},{"font":{"size":10},"border":{"right":["thin","#000"]}},{"font":{"size":15},"border":{"left":["thin","#000"]},"align":"center"},{"align":"left","border":{"right":["thin","#000"]}},{"font":{"size":10},"valign":"bottom","border":{"right":["thick","#000"]}},{"font":{"size":10},"border":{"right":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]}},{"font":{"size":10},"align":"left"},{"border":{"left":["thick","#000"]},"align":"center"},{"border":{"left":["thick","#000"]},"align":"right"},{"border":{"bottom":["thick","#000"],"top":["thick","#000"],"left":["thick","#000"],"right":["thick","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"right"},{"font":{"size":10},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":10},"align":"left","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":15,"bold":true},"border":{"left":["thick","#000"]},"align":"center"}],"validations":[],"cols":{"0":{"width":75},"1":{"width":14},"2":{"width":56},"3":{"width":11},"4":{"width":156},"5":{"width":41},"6":{"width":18},"7":{"width":113},"8":{"width":58},"9":{"width":10},"10":{"width":1},"11":{"width":148},"12":{"width":12},"len":29},"merges":["C3:E3","C7:E7","H3:I3","H7:I7","C7:E7","H7:I7","F17:G17","I17:K17","F18:G18","I18:K18","I19:K19","E19:H19","C17:D17","C18:D18","C19:D19","C20:D20","C22:D22","L4:M4","C3:L3","B7:D7","C4:D4","C5:D5","E20:L20","J22:L22","D16:L16","C9:G9","C10:G10","C11:G11","C12:G12","C14:G14","C8:H8","C13:G13","G5:L5","I8:L8","C6:D6","E6:L6"]}', N'', N'', N'admin', N'2020-07-10 17:12:16.0000000', N'admin', N'2020-11-05 17:44:19.0000000', N'0', NULL, NULL, N'1', N'5')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'767f1c8ce37a94fae440faef3a1e92aa', N'56623333333-副本', N'销售单-副本', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"767f1c8ce37a94fae440faef3a1e92aa","printElHeight":1047,"rows":{"0":{"cells":{"1":{"text":"销售单","style":9,"merge":[0,6]}},"height":99},"1":{"cells":{"1":{"text":"商品编码","style":26},"2":{"text":"商品名称","style":26},"3":{"text":"销售时间","style":26},"4":{"text":"销售数量","style":26},"5":{"text":"定价","style":26},"6":{"text":"优惠价","style":26},"7":{"text":"付款金额","style":26}},"height":39},"2":{"cells":{"1":{"text":"#{xiaoshou.bianma}","style":22},"2":{"text":"#{xiaoshou.cname}","style":22},"3":{"text":"#{xiaoshou.ctime}","style":22},"4":{"text":"#{xiaoshou.cnum}","style":22},"5":{"text":"#{xiaoshou.cprice}","style":22},"6":{"text":"#{xiaoshou.yprice}","style":22},"7":{"text":"#{xiaoshou.ctotal}","style":22}},"isDrag":true},"3":{"cells":{"1":{"style":34,"text":""},"2":{"style":34},"3":{"style":34},"4":{"style":34},"5":{"style":34,"text":""},"6":{"text":"总计：","style":38},"7":{"style":39,"text":"#{zongji.ttotal}"}},"isDrag":true,"height":73},"5":{"cells":{},"isDrag":true},"6":{"cells":{},"isDrag":true},"7":{"cells":{"2":{"text":""}},"isDrag":true},"len":100},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":791,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","color":"#000100"},{"align":"center","color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]}},{"border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]},"bgcolor":"#01b0f1"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#01b0f1"},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]}},{"align":"center","font":{"size":18}},{"align":"center","font":{"size":18,"bold":true}},{"align":"center","font":{"size":16,"bold":true}},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"align":"center"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#fed964"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#fdc101"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#fdc101"},{"border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"align":"center"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#ffe59a"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#ffc001"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#fed964"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#ed7d31"},{"align":"center","color":"#000100","border":{"bottom":["thin","#fdc101"],"top":["thin","#fdc101"],"left":["thin","#fdc101"],"right":["thin","#fdc101"]},"bgcolor":"#5b9cd6"},{"align":"center","color":"#000100","border":{"bottom":["thin","#4371c6"],"top":["thin","#4371c6"],"left":["thin","#4371c6"],"right":["thin","#4371c6"]},"bgcolor":"#5b9cd6"},{"border":{"bottom":["thin","#4371c6"],"top":["thin","#4371c6"],"left":["thin","#4371c6"],"right":["thin","#4371c6"]},"align":"center"},{"font":{"size":8}},{"font":{"size":8},"color":"#7f7f7f"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#4371c6"],"top":["thin","#4371c6"],"left":["thin","#4371c6"],"right":["thin","#4371c6"]},"bgcolor":"#9cc2e6"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#9cc2e6"},{"border":{"bottom":["thin","#4371c6"],"top":["thin","#4371c6"],"left":["thin","#4371c6"],"right":["thin","#4371c6"]}},{"font":{"bold":true}},{"font":{"bold":true,"size":12}},{"font":{"bold":true,"size":16}},{"font":{"bold":true,"size":18}},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"align":"right"},{"align":"right"},{"align":"left"},{"align":"right","font":{"size":16}},{"align":"left","font":{"size":16}},{"align":"right","font":{"size":14}},{"align":"left","font":{"size":14}}],"validations":[],"cols":{"0":{"width":1},"1":{"width":163},"2":{"width":176},"3":{"width":147},"4":{"width":66},"5":{"width":66},"6":{"width":82},"7":{"width":90},"len":26},"merges":["B1:H1"]}', N'', N'', N'admin', N'2020-07-28 16:54:44.0000000', N'jeecg', N'2020-12-07 16:51:13.0000000', N'0', NULL, NULL, N'0', N'9')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'776f331978e958bb2801490e99f32bcc', N'5589633-副本', N'供电公司抢修单-副本', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"776f331978e958bb2801490e99f32bcc","printElHeight":1047,"rows":{"0":{"height":9,"cells":{"0":{"style":1,"text":""},"1":{"style":2,"text":""},"2":{"style":3,"text":""},"3":{"style":4,"text":""},"4":{"style":5,"text":""},"5":{"style":6,"text":""},"6":{"style":7,"text":""},"7":{"style":8,"text":""},"8":{"style":9,"text":""}}},"1":{"height":9,"cells":{"0":{"style":10,"text":""},"1":{"style":11,"text":""},"2":{"merge":[1,5],"style":12,"text":" 供电企业大修、技改工程项目竣工报告"},"8":{"style":13,"text":""}}},"2":{"height":83,"cells":{"0":{"style":14,"text":""},"1":{"style":15,"text":""},"8":{"style":16,"text":""}}},"3":{"height":26,"cells":{"0":{"style":17,"text":""},"1":{"style":18,"text":"填报单位："},"2":{"style":19,"text":"#{qiangxiu.danwei}"},"3":{"style":20,"text":""},"4":{"style":21,"text":""},"5":{"style":22,"text":"填报日期："},"6":{"merge":[0,1],"style":23,"text":"#{qiangxiu.time}"},"8":{"style":24,"text":""}}},"4":{"height":30,"cells":{"0":{"style":25,"text":""},"1":{"style":26,"text":"填报名称："},"2":{"style":27,"text":"#{qiangxiu.ktime}","merge":[0,1]},"4":{"style":29,"text":""},"5":{"style":30,"text":"项目编号："},"6":{"style":31,"text":"#{qiangxiu.wtime}"},"7":{"style":32,"text":""},"8":{"style":33,"text":""}}},"5":{"height":24,"cells":{"0":{"style":34,"text":""},"1":{"style":35,"text":"项目批准核算"},"2":{"merge":[0,5],"style":36,"text":"#{qiangxiu.yusuan}"},"8":{"style":37,"text":""}}},"6":{"height":24,"cells":{"0":{"style":38,"text":""},"1":{"style":39,"text":"开工日期"},"2":{"merge":[0,2],"style":40,"text":"#{qiangxiu.ktime}"},"5":{"style":41,"text":"完工日期"},"6":{"merge":[0,1],"style":42,"text":"#{qiangxiu.wtime}"},"8":{"style":43,"text":""}}},"7":{"height":57,"cells":{"0":{"style":44,"text":""},"1":{"style":45,"text":"完工主要内容"},"2":{"style":46,"text":"#{qiangxiu.neirong}","merge":[0,5]},"8":{"style":47,"text":""}}},"8":{"height":46,"cells":{"0":{"style":48,"text":""},"1":{"style":49,"text":"形成能力"},"2":{"style":50,"text":"#{qiangxiu.nengli}","merge":[0,5]},"8":{"style":51,"text":""}}},"9":{"height":60,"cells":{"0":{"style":52,"text":""},"1":{"style":53,"text":"目标效益验收意见"},"2":{"style":54,"text":"#{qiangxiu.yijian}","merge":[0,5]},"8":{"style":55,"text":""}}},"10":{"height":21,"cells":{"0":{"style":56,"text":""},"1":{"merge":[0,4],"style":57,"text":""},"6":{"merge":[0,1],"style":58,"text":"#{qiangxiu.time1}"},"8":{"style":59,"text":""}}},"11":{"height":85,"cells":{"0":{"style":60,"text":""},"1":{"style":61,"text":"实施质量验收评价"},"2":{"style":62,"text":"#{qiangxiu.pingjia}","merge":[0,5]},"8":{"style":63,"text":""}}},"12":{"height":23,"cells":{"0":{"style":64,"text":""},"1":{"merge":[0,4],"style":65,"text":""},"6":{"merge":[0,1],"style":66,"text":"#{qiangxiu.time2}"},"8":{"style":67,"text":""}}},"13":{"height":54,"cells":{"0":{"style":68,"text":""},"1":{"style":69,"text":"验收总结"},"2":{"style":70,"text":"#{qiangxiu.zongjie}","merge":[0,5]},"8":{"style":71,"text":""}}},"14":{"height":28,"cells":{"0":{"style":72,"text":""},"1":{"style":73,"text":"责任单位意见"},"2":{"merge":[0,5],"style":74,"text":""},"8":{"style":75,"text":""}}},"15":{"height":24,"cells":{"0":{"style":76,"text":""},"1":{"style":77,"text":"责任单位审核人"},"2":{"merge":[0,2],"style":78,"text":"段建军"},"3":{"text":"#{qiangxiu.dshenhe}"},"5":{"style":79,"text":"日期"},"6":{"merge":[0,1],"style":80,"text":"#{qiangxiu.time3}"},"8":{"style":81,"text":""}}},"16":{"height":27,"cells":{"0":{"style":82,"text":""},"1":{"style":83,"text":"生技部审批意见"},"2":{"merge":[0,5],"style":84,"text":""},"8":{"style":85,"text":""}}},"17":{"height":381,"cells":{"0":{"style":86,"text":""},"1":{"style":87,"text":"生技部主任"},"2":{"merge":[0,2],"style":88,"text":"王肃"},"3":{"text":"#{qiangxiu.zhuren}"},"5":{"style":89,"text":"日期"},"6":{"merge":[0,1],"style":90,"text":"#{qiangxiu.time4}"},"8":{"style":91,"text":""}}},"18":{"height":30,"cells":{"0":{"style":92,"text":""},"1":{"style":93,"text":""},"2":{"style":94,"text":""},"3":{"style":95,"text":""},"4":{"style":96,"text":""},"5":{"style":97,"text":""},"6":{"style":98,"text":""},"7":{"style":99,"text":""},"8":{"style":100,"text":""}}},"len":79,"-1":{"cells":{"-1":{"text":"#{qiangxiu.danwei}"}},"isDrag":true}},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":645,"name":"sheet1","autofilter":{},"styles":{"1":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"2":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"3":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"4":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"5":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"6":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"7":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"8":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"9":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"10":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"11":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"12":{"bgcolor":"#FFFFFF","color":"#FF0000","font":{"size":17,"bold":true}},"13":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"14":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"15":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"16":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"17":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"18":{"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"19":{"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"20":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"21":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"22":{"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"23":{"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"24":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"25":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"26":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"27":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"28":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"29":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"30":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"31":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"32":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"33":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"34":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"35":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"36":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"37":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"38":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"39":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"40":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"41":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"42":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"43":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"44":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"45":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"46":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"47":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"48":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"49":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"50":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"51":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"52":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"53":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"54":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"55":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"56":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"57":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","align":"center","font":{"size":10}},"58":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"59":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"60":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"61":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"62":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"63":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"64":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"65":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","align":"center","font":{"size":10}},"66":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"67":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"68":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"69":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"70":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"71":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"72":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"73":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"74":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"75":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"76":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"77":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"78":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"79":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"80":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"81":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"82":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"83":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"84":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"85":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"86":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"87":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"88":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"89":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"90":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"91":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"92":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"93":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"94":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"95":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"96":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"97":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"98":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"99":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"100":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}}},"validations":[],"cols":{"0":{"width":45},"7":{"width":90},"len":25},"merges":["PAAAAAABJ4","PAAAAAABJ1","PAAAAAABJ2","C5:D5","C8:H8","C9:H9","C12:H12","C10:H10","C14:H14"]}', N'', N'', N'admin', N'2020-07-17 15:45:25.0000000', N'jeecg', N'2020-12-07 16:51:18.0000000', N'0', NULL, NULL, N'0', N'7')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'7905022412733a0c68dc7b4ef8947489', N'8996445', N'介绍信', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"7905022412733a0c68dc7b4ef8947489","printElHeight":1047,"rows":{"0":{"cells":{"1":{},"12":{}},"height":11},"1":{"cells":{},"height":24},"2":{"cells":{},"isDrag":true,"height":43},"3":{"cells":{"0":{"text":"","style":46},"1":{"merge":[0,10],"text":"介绍信","style":337},"2":{"style":337},"3":{"style":337},"4":{"style":337},"5":{"style":337},"6":{"style":337},"7":{"style":337},"8":{"style":337},"9":{"style":337},"10":{"style":337},"11":{"style":337}},"height":216},"4":{"cells":{"1":{"text":"#{jieshaoxin.name}","style":338,"merge":[0,3]},"2":{"style":338},"3":{"style":338},"4":{"style":338},"5":{"text":"：","style":339},"6":{"style":339},"7":{"style":339},"8":{"style":339},"9":{"style":339},"10":{"style":339},"11":{"style":339},"12":{"style":316}},"height":80},"5":{"cells":{"1":{"text":"兹介绍我局","style":340,"merge":[0,5]},"2":{"style":339},"3":{"style":339},"4":{"style":339},"5":{"style":339},"6":{"style":339},"7":{"text":"#{jieshaoxin.value}","style":341},"8":{"text":"同志","style":339},"9":{"text":"#{jieshaoxin.percent}","style":339},"10":{"text":"人，前往你处","style":339,"merge":[0,1]},"11":{"style":339},"12":{"style":316}},"isDrag":true,"height":42},"6":{"cells":{"1":{"style":342,"text":"#{jieshaoxin.shiqing}","merge":[0,5]},"2":{"style":339},"3":{"style":339},"4":{"style":339},"5":{"style":339},"6":{"style":339},"7":{"style":339},"8":{"style":339},"9":{"style":339},"10":{"style":339},"11":{"style":339},"12":{"style":316},"15":{"text":""}},"height":48},"7":{"cells":{"1":{"style":343,"text":""},"2":{"style":344,"merge":[0,5],"text":"请予接洽并给予帮助。"},"3":{"style":339},"4":{"style":339},"5":{"style":339},"6":{"style":339},"7":{"style":339},"8":{"style":316},"9":{"style":316},"10":{"style":316},"11":{"style":316},"12":{"style":316}},"height":56},"8":{"cells":{"1":{"style":345},"2":{"style":316},"3":{"style":316},"4":{"style":316},"5":{"style":316},"6":{"style":316},"7":{"style":316},"8":{"style":316},"9":{"style":316},"10":{"style":316},"11":{"style":316},"12":{"style":316}},"height":15},"9":{"cells":{"1":{"style":316},"2":{"style":316},"3":{"style":316},"4":{"style":316},"5":{"style":316},"6":{"style":316},"7":{"style":316},"8":{"style":316},"9":{"style":316},"10":{"style":316},"11":{"style":316},"12":{"style":316}},"height":11},"10":{"cells":{"1":{"style":316},"2":{"style":316},"3":{"style":316},"4":{"style":316},"5":{"style":316},"6":{"style":316},"7":{"style":346},"8":{"text":"","style":316,"merge":[0,3]},"9":{"style":316},"10":{"style":316},"11":{"style":316},"12":{"style":316},"13":{"style":31}},"height":39},"11":{"cells":{"1":{"style":316},"2":{"style":316},"3":{"style":316},"4":{"style":316},"5":{"style":316},"6":{"style":316},"7":{"style":346},"8":{"merge":[0,2],"text":"单位盖章","style":347},"9":{"style":347},"10":{"style":347},"11":{"merge":[0,1],"style":316},"12":{"style":316}},"height":84},"12":{"cells":{"1":{"merge":[0,2],"text":"","style":317},"2":{"style":317},"3":{"style":317},"4":{"merge":[0,2],"text":"","style":346},"5":{"style":346},"6":{"style":346},"7":{"text":"（有效时间：至","style":317},"8":{"style":316,"text":"#{jieshaoxin.gdata}","merge":[0,2]},"9":{"style":316},"10":{"style":316},"11":{"style":348,"text":"止）"},"12":{"style":316}},"height":30},"13":{"cells":{"1":{"merge":[12,11]}}},"17":{"cells":{},"isDrag":true},"len":89},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":749,"name":"sheet1","autofilter":{},"styles":[{"align":"left"},{"align":"left","underline":true},{"underline":true},{"align":"center","underline":true},{"align":"center"},{"align":"center","underline":false},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]}},{"align":"left","border":{"bottom":["thin","#000"]}},{"align":"left","font":{"size":16}},{"font":{"size":16}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16}},{"align":"center","underline":false,"font":{"size":16}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16}},{"align":"left","font":{"size":16,"bold":true}},{"font":{"size":16,"bold":true}},{"align":"center","underline":false,"font":{"size":16,"bold":true}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":true}},{"font":{"bold":true}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":true}},{"align":"left","font":{"size":16,"bold":false}},{"font":{"size":16,"bold":false}},{"align":"center","underline":false,"font":{"size":16,"bold":false}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false}},{"font":{"bold":false}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false}},{"align":"left","font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"size":12}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12,"bold":false},"color":"#3f3f3f","align":"center"},{"font":{"size":12},"align":"center"},{"font":{"size":8}},{"font":{"size":10}},{"font":{"size":10,"bold":true}},{"font":{"size":10,"bold":true},"align":"center"},{"font":{"size":18,"bold":true},"align":"center"},{"align":"center","font":{"size":18}},{"font":{"size":16,"bold":true},"align":"center"},{"align":"center","font":{"size":16}},{"font":{"size":12},"valign":"bottom"},{"font":{"size":12},"valign":"middle"},{"font":{"size":12},"border":{"top":["thin","#000"],"left":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thin","#000"]}},{"border":{"top":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":12},"border":{"left":["thin","#000"]}},{"font":{"size":12},"border":{"right":["thin","#000"]}},{"font":{"size":12},"valign":"middle","border":{"right":["thin","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thin","#000"],"right":["thin","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thin","#000"]}},{"align":"center","underline":false,"border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"]}},{"border":{"bottom":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12},"border":{"left":["thick","#000"]}},{"font":{"size":12},"border":{"right":["thick","#000"]}},{"font":{"size":12},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]}},{"border":{"bottom":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]}},{"align":"center","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"border":{"left":["thin","#000"]}},{"border":{"left":["dashed","#000"]}},{"border":{"left":["thick","#000"]}},{"border":{"right":["thick","#000"]}},{"align":"left","border":{"bottom":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12},"border":{"left":["thick","#000"]},"align":"center"},{"font":{"size":12,"bold":true},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true}},{"font":{"size":14,"bold":true},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Arial"}},{"font":{"size":14,"bold":true,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Arial"}},{"font":{"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Arial"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Arial"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Arial"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Arial"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Source Sans Pro"}},{"font":{"size":14,"bold":true,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"}},{"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Comic Sans MS"}},{"font":{"size":14,"bold":true,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"}},{"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Courier New"}},{"font":{"size":14,"bold":true,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"}},{"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Courier New"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Courier New"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Courier New"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"color":"#000100"},{"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Arial"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"color":"#000100"},{"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Helvetica"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"color":"#000100"},{"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Lato"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"color":"#000100"},{"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":10,"name":"Lato"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"center"},{"font":{"size":10,"name":"Lato"},"valign":"middle","color":"#000100"},{"align":"center","underline":false,"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{},{"font":{"size":12,"name":"Lato","bold":true},"color":"#000100","align":"center"},{"align":"center","font":{"name":"Lato","bold":true},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","align":"right"},{"align":"right"},{"align":"right","font":{"size":12}},{"align":"left","font":{"size":12}},{"font":{"size":12},"border":{"bottom":["thin","#000"]}},{"font":{"size":12},"border":{"bottom":["thin","#000"]},"align":"center"},{"valign":"top"},{"valign":"top","align":"center"},{"valign":"top","align":"center","font":{"size":12}},{"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","align":"right"},{"font":{"size":14}},{"align":"right","font":{"size":14}},{"font":{"size":14},"border":{"bottom":["thin","#000"]}},{"font":{"size":14,"bold":true}},{"align":"right","font":{"size":9}},{"font":{"size":9}},{"font":{"size":9},"align":"center"},{"font":{"size":9},"align":"left"},{"align":"left","font":{"bold":true,"size":14}},{"align":"center","font":{"bold":true,"size":14},"valign":"top"},{"align":"center","font":{"bold":true,"size":16},"valign":"top"},{"align":"center","font":{"bold":true,"size":18},"valign":"top"},{"align":"right","font":{"size":10}},{"font":{"size":10},"align":"center"},{"align":"left","font":{"size":10}},{"align":"right","font":{"size":12},"valign":"bottom"},{"valign":"bottom"},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","align":"right","valign":"bottom"},{"font":{"size":12},"border":{"bottom":["thin","#000"]},"align":"center","valign":"bottom"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","valign":"bottom"},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","valign":"bottom"},{"align":"center","font":{"bold":true,"size":22},"valign":"top"},{"align":"right","font":{"size":14},"valign":"bottom"},{"font":{"size":14},"valign":"bottom"},{"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","align":"right","valign":"bottom"},{"font":{"size":14},"border":{"bottom":["thin","#000"]},"align":"center","valign":"bottom"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","valign":"bottom"},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","valign":"bottom"},{"font":{"size":14,"name":"Lato"},"color":"#000100"},{"font":{"size":14},"align":"center"},{"valign":"top","align":"center","font":{"size":14}},{"align":"left","font":{"size":14}}],"validations":[],"cols":{"0":{"width":73},"1":{"width":46},"2":{"width":24},"3":{"width":15},"4":{"width":37},"5":{"width":13},"6":{"width":83},"7":{"width":256},"8":{"width":42},"9":{"width":18},"10":{"width":77},"11":{"width":65},"12":{"width":108},"13":{"width":62},"16":{"width":55},"len":29},"merges":["C0:D0","G11:H11","G12:H12","B5:E5","B6:G6","C8:H8","I12:K12","B4:L4","K6:L6","B13:D13","E13:G13","I11:L11","L12:M12","B14:M26","I13:K13","B7:G7"]}', N'', N'', N'admin', N'2020-07-10 13:38:40.0000000', N'admin', N'2020-12-07 16:52:16.0000000', N'0', NULL, NULL, N'1', N'8')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'7c02c224a2db56d0350069650033f702', N'895666', N'核查评估表', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":1123,"excel_config_id":"7c02c224a2db56d0350069650033f702","printElHeight":1047,"rows":{"0":{"cells":{"0":{"text":"XX县（市、区）YY低保第三方核查评估汇总表","merge":[0,21],"style":112},"1":{"style":112},"2":{"style":112},"3":{"style":112},"4":{"style":112},"5":{"style":112},"6":{"style":112},"7":{"style":112},"8":{"style":112},"9":{"style":112},"10":{"style":112},"11":{"style":112},"12":{"style":112},"13":{"style":112},"14":{"style":112},"15":{"style":112},"16":{"style":112},"17":{"style":112},"18":{"style":112},"19":{"style":112},"20":{"style":112},"21":{"style":112}},"height":62},"1":{"cells":{"0":{"merge":[0,2],"style":113,"text":"     北京市林翠社区"},"1":{"style":114},"2":{"style":114},"3":{"merge":[0,2],"text":"镇（乡、街道办事处）","style":114},"4":{"style":114},"5":{"style":114},"6":{"style":114},"7":{"style":114},"8":{"style":114},"9":{"style":114},"10":{"style":114},"11":{"style":114},"12":{"style":114},"13":{"style":114},"14":{"merge":[0,7],"text":"单位：人、元、套、平方米","style":119},"15":{"style":8},"16":{"style":8},"17":{"style":8},"18":{"style":8},"19":{"style":8},"20":{"style":8},"21":{"style":8}}},"2":{"cells":{"0":{"style":114},"1":{"style":114},"2":{"style":114},"3":{"style":114},"4":{"style":114},"5":{"style":114},"6":{"style":114},"7":{"style":114},"8":{"style":114},"9":{"style":114},"10":{"style":114},"11":{"style":114},"12":{"style":114},"13":{"style":114},"14":{"style":114},"15":{"style":114},"16":{"style":114},"17":{"style":114},"18":{"style":114},"19":{"style":114},"20":{"style":114},"21":{"style":114}},"height":6},"3":{"cells":{"0":{"style":145,"text":"村（社区）名称","merge":[1,0]},"1":{"style":146,"text":"户主名称","merge":[1,0]},"2":{"style":146,"text":"保障编号","merge":[1,0]},"3":{"style":148,"text":"家庭人口","merge":[1,0]},"4":{"style":147,"text":"家庭住址","merge":[1,0]},"5":{"style":147,"text":"联系电话","merge":[1,0]},"6":{"style":149,"text":"身份证号码","merge":[1,0]},"7":{"style":147,"text":"原保障","merge":[0,2]},"8":{"style":119},"9":{"style":119},"10":{"text":"核减后月人均收入","style":149,"merge":[1,0]},"11":{"merge":[0,5],"text":"保障建议","style":150},"12":{"style":114},"13":{"style":114},"14":{"style":114},"15":{"style":114},"16":{"style":114},"17":{"text":"是否新增对象","style":151,"merge":[1,0]},"18":{"text":"建议取消原因","style":150,"merge":[0,3]},"19":{"style":114},"20":{"style":114},"21":{"style":114}}},"4":{"cells":{"0":{"style":123},"1":{"style":146},"2":{"style":124},"3":{"style":148},"4":{"style":119},"5":{"style":147},"6":{"style":126},"7":{"text":"户数","style":145},"8":{"style":148,"text":"人口"},"9":{"style":145,"text":"金额"},"10":{"style":126},"11":{"text":"保障类型","style":149},"12":{"style":152,"text":"人口"},"13":{"style":152,"text":"差额补助"},"14":{"style":151,"text":"全额补助"},"15":{"style":151,"text":"增发补助"},"16":{"style":151,"text":"合计补助"},"17":{"style":151},"18":{"style":148,"text":"收入超标"},"19":{"style":145,"text":"机动车超标"},"20":{"style":150,"text":"死亡"},"21":{"style":150,"text":"其他"}},"height":64},"5":{"cells":{"0":{"text":"#{huizong1.cname}","style":154},"1":{"text":"#{huizong1.hname}","style":154},"2":{"text":"#{huizong1.num}","style":154},"3":{"text":"#{huizong1.jtotal}","style":7},"4":{"text":"#{huizong1.jaddress}","style":7},"5":{"text":"#{huizong1.snum}","style":7},"6":{"style":117,"text":"#{huizong1.snum}"},"7":{"text":"#{huizong1.hushu}","style":7},"8":{"text":"#{huizong1.renkou}","style":7},"9":{"text":"#{huizong1.money}","style":7},"10":{"text":"#{huizong1.shouru}","style":7},"11":{"text":"#{huizong1.bkey}","style":7},"12":{"text":"#{huizong1.brenkou}","style":7},"13":{"text":"#{huizong1.cbuzhu}","style":7},"14":{"text":"#{huizong1.qbuzhu}","style":7},"15":{"text":"#{huizong1.zbuzhu}","style":7},"16":{"text":"#{huizong1.qbuzhu}","style":7},"17":{"text":"#{huizong1.sxinzeng}","style":7},"18":{"text":"#{huizong1.schaobiao}","style":0},"19":{"text":"#{huizong1.jchaobiao}","style":0},"20":{"text":"#{huizong1.die}","style":0},"21":{"text":"#{huizong1.qita}","style":0}},"isDrag":true},"6":{"cells":{"0":{"style":114},"1":{"style":114},"2":{"style":114},"3":{"style":114},"4":{"style":114},"5":{"style":114},"6":{"style":114},"7":{"style":114},"8":{"style":114},"9":{"style":114},"10":{"style":114},"11":{"style":114},"12":{"style":114},"13":{"style":114},"14":{"style":114},"15":{"style":114},"16":{"style":114},"17":{"style":114},"18":{"style":114},"19":{"style":114},"20":{"style":114},"21":{"style":114}},"height":46},"7":{"cells":{"0":{"style":114},"1":{"style":114},"2":{"style":114},"3":{"style":114},"4":{"style":114},"5":{"style":114},"6":{"style":114},"7":{"style":114},"8":{"style":114},"9":{"style":114},"10":{"style":114},"11":{"style":114},"12":{"style":114},"13":{"style":114},"14":{"style":114},"15":{"style":114},"16":{"style":114},"17":{"style":114},"18":{"style":114},"19":{"style":114},"20":{"style":114},"21":{"style":114}},"height":46},"8":{"cells":{"0":{"style":114},"1":{"style":114},"2":{"style":114},"3":{"style":114},"4":{"style":114},"5":{"style":114},"6":{"style":114},"7":{"style":114},"8":{"style":114},"9":{"style":114},"10":{"style":114},"11":{"style":114},"12":{"style":114},"13":{"style":114},"14":{"style":114},"15":{"style":114},"16":{"style":114},"17":{"style":114},"18":{"style":114},"19":{"style":114},"20":{"style":114},"21":{"style":114}},"height":45},"len":102},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":1106,"name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true},{"textwrap":true},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":false},{"textwrap":false},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center"},{"textwrap":true,"align":"center"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center"},{"align":"center"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"middle"},{"textwrap":true,"align":"center","valign":"middle"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"middle"},{"textwrap":true,"valign":"middle"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":false,"valign":"middle"},{"textwrap":false,"valign":"middle"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"bottom"},{"textwrap":true,"align":"center","valign":"bottom"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"top"},{"textwrap":true,"align":"center","valign":"top"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"bottom"},{"textwrap":true,"valign":"bottom"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"top"},{"border":{"bottom":["medium","#000"]}},{"border":{"bottom":["thin","#000"]}},{"align":"center","font":{"size":18}},{"align":"center","font":{"size":16}},{"align":"center","font":{"size":16,"bold":true}},{"align":"center","font":{"size":16,"bold":true,"name":"Helvetica"}},{"border":{"bottom":["thin","#000"]},"font":{"name":"Helvetica"}},{"font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Helvetica"}},{"align":"center","font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Helvetica"}},{"textwrap":true,"font":{"name":"Helvetica"}},{"textwrap":true,"align":"center","font":{"name":"Helvetica"}},{"textwrap":true,"align":"center","valign":"middle","font":{"name":"Helvetica"}},{"textwrap":true,"align":"center","valign":"top","font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"bottom","font":{"name":"Helvetica"}},{"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Helvetica"}},{"align":"center","font":{"size":16,"bold":true,"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"]},"font":{"name":"Source Sans Pro"}},{"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Source Sans Pro"}},{"align":"center","font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Source Sans Pro"}},{"textwrap":true,"font":{"name":"Source Sans Pro"}},{"textwrap":true,"align":"center","font":{"name":"Source Sans Pro"}},{"textwrap":true,"align":"center","valign":"middle","font":{"name":"Source Sans Pro"}},{"textwrap":true,"align":"center","valign":"top","font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"bottom","font":{"name":"Source Sans Pro"}},{"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Source Sans Pro"}},{"align":"center","font":{"size":16,"bold":true,"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"]},"font":{"name":"Comic Sans MS"}},{"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Comic Sans MS"}},{"align":"center","font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Comic Sans MS"}},{"textwrap":true,"font":{"name":"Comic Sans MS"}},{"textwrap":true,"align":"center","font":{"name":"Comic Sans MS"}},{"textwrap":true,"align":"center","valign":"middle","font":{"name":"Comic Sans MS"}},{"textwrap":true,"align":"center","valign":"top","font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"bottom","font":{"name":"Comic Sans MS"}},{"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Comic Sans MS"}},{"align":"center","font":{"size":16,"bold":true,"name":"Courier New"}},{"border":{"bottom":["thin","#000"]},"font":{"name":"Courier New"}},{"font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Courier New"}},{"align":"center","font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Courier New"}},{"textwrap":true,"font":{"name":"Courier New"}},{"textwrap":true,"align":"center","font":{"name":"Courier New"}},{"textwrap":true,"align":"center","valign":"middle","font":{"name":"Courier New"}},{"textwrap":true,"align":"center","valign":"top","font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"bottom","font":{"name":"Courier New"}},{"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Courier New"}},{"align":"center","font":{"size":16,"bold":true,"name":"Verdana"}},{"border":{"bottom":["thin","#000"]},"font":{"name":"Verdana"}},{"font":{"name":"Verdana"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"font":{"name":"Verdana"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","font":{"name":"Verdana"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"name":"Verdana"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Verdana"}},{"align":"center","font":{"name":"Verdana"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Verdana"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Verdana"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Verdana"}},{"textwrap":true,"font":{"name":"Verdana"}},{"textwrap":true,"align":"center","font":{"name":"Verdana"}},{"textwrap":true,"align":"center","valign":"middle","font":{"name":"Verdana"}},{"textwrap":true,"align":"center","valign":"top","font":{"name":"Verdana"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"bottom","font":{"name":"Verdana"}},{"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Verdana"}},{"align":"center","font":{"size":16,"bold":true,"name":"Lato"}},{"border":{"bottom":["thin","#000"]},"font":{"name":"Lato"}},{"font":{"name":"Lato"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"font":{"name":"Lato"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Lato"}},{"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Lato"}},{"textwrap":true,"font":{"name":"Lato"}},{"textwrap":true,"align":"center","font":{"name":"Lato"}},{"textwrap":true,"align":"center","valign":"middle","font":{"name":"Lato"}},{"textwrap":true,"align":"center","valign":"top","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"textwrap":true,"valign":"bottom","font":{"name":"Lato"}},{"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Lato"}},{"border":{"bottom":["thin","#262626"],"top":["thin","#262626"],"left":["thin","#262626"],"right":["thin","#262626"]},"textwrap":true,"font":{"name":"Lato"}},{"border":{"bottom":["thin","#262626"],"top":["thin","#262626"],"left":["thin","#262626"],"right":["thin","#262626"]},"textwrap":true,"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#262626"],"top":["thin","#262626"],"left":["thin","#262626"],"right":["thin","#262626"]},"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#262626"],"top":["thin","#262626"],"left":["thin","#262626"],"right":["thin","#262626"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Lato"}},{"border":{"bottom":["thin","#262626"],"top":["thin","#262626"],"left":["thin","#262626"],"right":["thin","#262626"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Lato"}},{"border":{"bottom":["thin","#262626"],"top":["thin","#262626"],"left":["thin","#262626"],"right":["thin","#262626"]},"font":{"name":"Lato"}},{"border":{"bottom":["thin","#262626"],"top":["thin","#262626"],"left":["thin","#262626"],"right":["thin","#262626"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Lato"}},{"border":{"bottom":["thin","#262626"],"top":["thin","#262626"],"left":["thin","#262626"],"right":["thin","#262626"]},"textwrap":true,"valign":"bottom","font":{"name":"Lato"}},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]},"textwrap":true,"font":{"name":"Lato"}},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]},"textwrap":true,"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]},"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Lato"}},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Lato"}},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]},"font":{"name":"Lato"}},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Lato"}},{"border":{"bottom":["thin","#7f7f7f"],"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]},"textwrap":true,"valign":"bottom","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"textwrap":true,"font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"textwrap":true,"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"textwrap":true,"align":"center","valign":"middle","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"textwrap":true,"align":"center","valign":"top","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"textwrap":true,"align":"center","valign":"bottom","font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"textwrap":true,"valign":"bottom","font":{"name":"Lato"}},{"align":"center","valign":"middle"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","valign":"middle"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"textwrap":false,"font":{"name":"Lato"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"textwrap":true,"font":{"name":"Lato"},"valign":"middle"}],"validations":[],"cols":{"0":{"width":61},"1":{"width":55},"2":{"width":63},"3":{"width":36},"4":{"width":176},"5":{"width":104},"6":{"width":94},"7":{"width":36},"8":{"width":28},"9":{"width":38},"10":{"width":35},"11":{"width":30},"12":{"width":23},"13":{"width":37},"14":{"width":37},"15":{"width":37},"16":{"width":40},"17":{"width":35},"18":{"width":33},"19":{"width":36},"20":{"width":38},"21":{"width":34},"22":{"width":34},"len":28},"merges":["L4:Q4","A4:A5","B4:B5","C4:C5","D4:D5","E4:E5","F4:F5","G4:G5","H4:J4","K4:K5","R4:R5","S4:V4","D2:F2","A2:C2","A1:V1","O2:V2"]}', N'', N'', N'admin', N'2020-07-14 16:41:42.0000000', N'admin', N'2020-12-07 16:52:11.0000000', N'0', NULL, NULL, N'1', N'13')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'94b04a1ed7c17f8e96baa6d89fb90758', N'3698522', N'员工请假单', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":800,"excel_config_id":"94b04a1ed7c17f8e96baa6d89fb90758","printElHeight":1047,"rows":{"1":{"cells":{"0":{"text":"员工请假单","style":56,"merge":[0,7]},"1":{"style":57},"2":{"style":57},"3":{"style":57},"4":{"style":57},"5":{"style":57},"6":{"style":57},"7":{"style":57}},"height":65},"2":{"cells":{"0":{"text":"单位：北极星","style":58,"merge":[0,2]},"1":{"style":59},"2":{"style":59},"3":{"style":40},"4":{"style":40},"5":{"style":40},"6":{"style":40},"7":{"style":40}},"height":38},"3":{"cells":{"0":{"text":"姓名","style":75},"1":{"style":75},"2":{"text":"工作岗位","style":76},"3":{"style":75},"4":{"text":"工作时间","style":75},"5":{"style":75},"6":{"text":"出生日期","style":75},"7":{"style":75}}},"4":{"cells":{"0":{"text":"请","style":77},"1":{"text":"年休假","style":78},"2":{"style":76,"text":"病、事假"},"3":{"style":76,"text":"探亲假"},"4":{"style":75,"merge":[0,1],"text":"婚、丧假"},"5":{"style":79},"6":{"style":75,"merge":[0,1],"text":"生育假"},"7":{"style":79}},"height":29},"5":{"cells":{"0":{"style":80,"text":"选"},"1":{"text":"1、公岭满1~9年（5天）","style":81},"2":{"style":75,"text":"1、病假"},"3":{"style":75,"text":"1、未婚探父母（20天）"},"4":{"style":75,"merge":[0,1],"text":"1、婚假（3天）"},"5":{"style":79},"6":{"style":75,"merge":[0,1],"text":"1、流产"},"7":{"style":79}},"height":25},"6":{"cells":{"0":{"style":80,"text":"择"},"1":{"style":82,"text":"2、公岭满10~19年（10天）"},"2":{"style":75,"text":"2、事假"},"3":{"style":75,"text":"2、已婚探父母（20天）"},"4":{"style":75,"merge":[0,1],"text":"2、晚婚假（13天）"},"5":{"style":79},"6":{"style":75,"merge":[0,1],"text":"2、产假"},"7":{"style":79}}},"7":{"cells":{"0":{"style":80,"text":"假"},"1":{"style":82,"text":"3、公岭满20年（15天）"},"2":{"style":75},"3":{"style":75,"text":"3、探配偶（30天）"},"4":{"style":75,"merge":[0,1],"text":"3、丧假（3天）"},"5":{"style":79},"6":{"style":75,"merge":[0,1],"text":"3、哺乳假"},"7":{"style":79}}},"8":{"cells":{"0":{"style":83,"text":"类"},"1":{"style":84},"2":{"style":75},"3":{"style":75,"text":"探亲地点：","merge":[0,2]},"4":{"style":79},"5":{"style":79},"6":{"style":75,"merge":[0,1],"text":"4、陪护假"},"7":{"style":79},"8":{"style":15},"9":{"style":15},"10":{"style":15},"11":{"style":15},"12":{"style":15},"13":{"style":15},"14":{"style":15},"15":{"style":15},"16":{"style":15},"17":{"style":15},"18":{"style":15},"19":{"style":15},"20":{"style":15},"21":{"style":15},"22":{"style":15},"23":{"style":5},"24":{"style":5},"25":{"style":5}}},"9":{"cells":{"0":{"style":88,"text":"请假时间"},"1":{"style":89,"merge":[0,6],"text":"2020年02-30 至2020年02-03-30"},"2":{"style":90},"3":{"style":90},"4":{"style":90},"5":{"style":90},"6":{"style":90},"7":{"style":90}},"height":46},"10":{"cells":{"0":{"style":87,"text":"审批人员及意见"},"1":{"merge":[0,6],"style":97,"text":"同意"},"2":{"style":98},"3":{"style":98},"4":{"style":98},"5":{"style":98},"6":{"style":98},"7":{"style":98}},"height":89},"11":{"cells":{"0":{"text":"备注","style":75},"1":{"style":75},"2":{"text":"请假人签名","style":75},"3":{"merge":[0,4],"style":75},"4":{"style":79},"5":{"style":79},"6":{"style":79},"7":{"style":79}},"height":90},"12":{"cells":{"0":{"merge":[0,7],"style":76,"text":"请假审批表一式两份，考勤员与人力资源部门各存一份"},"1":{"style":78},"2":{"style":78},"3":{"style":78},"4":{"style":78},"5":{"style":78},"6":{"style":78},"7":{"style":78}},"height":25},"len":101},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":707,"name":"sheet1","autofilter":{},"styles":[{"textwrap":true},{"textwrap":false},{"textwrap":true,"valign":"middle"},{"textwrap":false,"valign":"middle"},{"align":"center"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"textwrap":false,"valign":"middle","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"textwrap":false,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"textwrap":false,"valign":"middle","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"textwrap":false,"border":{"left":["thin","#000"],"right":["thin","#000"]}},{"textwrap":false,"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"left"},{},{"font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Helvetica"}},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Helvetica"}},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Helvetica"}},{"align":"center","font":{"name":"Helvetica"}},{"textwrap":false,"valign":"middle","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Helvetica"}},{"textwrap":false,"border":{"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Helvetica"}},{"font":{"name":"Arial"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Arial"}},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Arial"}},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Arial"}},{"align":"center","font":{"name":"Arial"}},{"textwrap":false,"valign":"middle","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Arial"}},{"textwrap":false,"border":{"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Arial"}},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Arial"}},{"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Source Sans Pro"}},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Source Sans Pro"}},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Source Sans Pro"}},{"align":"center","font":{"name":"Source Sans Pro"}},{"textwrap":false,"valign":"middle","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Source Sans Pro"}},{"textwrap":false,"border":{"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Source Sans Pro"}},{"font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"}},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"}},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"}},{"align":"center","font":{"name":"Courier New"}},{"textwrap":false,"valign":"middle","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"}},{"textwrap":false,"border":{"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"}},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"}},{"font":{"name":"Courier New"},"border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"font":{"name":"Courier New"},"border":{"left":["thin","#000"],"right":["thin","#000"]}},{"textwrap":true,"border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"}},{"textwrap":true,"border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"align":"center"},{"font":{"name":"Courier New"},"border":{"left":["thin","#000"],"right":["thin","#000"]},"align":"center"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"align":"center"},{"align":"center","font":{"name":"Courier New","size":14}},{"align":"center","font":{"size":14}},{"align":"center","font":{"name":"Courier New","size":14,"bold":true}},{"align":"center","font":{"size":14,"bold":true}},{"font":{"name":"Courier New"},"color":"#7f7f7f"},{"color":"#7f7f7f"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"textwrap":true,"border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Courier New"},"color":"#000100"},{"font":{"name":"Courier New"},"color":"#000100"},{"font":{"name":"Courier New"},"border":{"left":["thin","#000"],"right":["thin","#000"]},"align":"center","color":"#000100"},{"textwrap":false,"valign":"middle","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"textwrap":false,"border":{"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"align":"center","color":"#000100"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100"},{"align":"center","color":"#000100"},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100"},{"color":"#000100"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"textwrap":true,"border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Lato"},"color":"#000100"},{"font":{"name":"Lato"},"color":"#000100"},{"font":{"name":"Lato"},"border":{"left":["thin","#000"],"right":["thin","#000"]},"align":"center","color":"#000100"},{"textwrap":false,"valign":"middle","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"textwrap":false,"border":{"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"align":"center","color":"#000100"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100","font":{"name":"Lato"}},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100","font":{"name":"Lato"},"valign":"middle"},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100","font":{"name":"Lato"},"valign":"bottom"},{"textwrap":true,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100","font":{"name":"Lato"},"valign":"top"},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100","valign":"top"},{"align":"center","font":{"name":"Lato"},"color":"#000100","valign":"top"},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100","valign":"middle"},{"align":"center","font":{"name":"Lato"},"color":"#000100","valign":"middle"},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100","valign":"bottom"},{"align":"center","font":{"name":"Lato"},"color":"#000100","valign":"bottom"},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100","textwrap":true},{"align":"center","font":{"name":"Lato"},"color":"#000100","textwrap":true},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"name":"Lato"},"color":"#000100","textwrap":false},{"align":"center","font":{"name":"Lato"},"color":"#000100","textwrap":false},{"textwrap":false,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100","font":{"name":"Lato"}}],"validations":[],"cols":{"0":{"width":35},"1":{"width":195},"2":{"width":77},"3":{"width":168},"4":{"width":62},"6":{"width":70},"7":{"width":82},"len":26},"merges":["D9:F9","E5:F5","E6:F6","E7:F7","E8:F8","G5:H5","G6:H6","G7:H7","G8:H8","G9:H9","B10:H10","B11:H11","D12:H12","A13:H13","A3:C3","A2:H2"]}', N'', N'', N'admin', N'2020-07-10 18:29:39.0000000', N'admin', N'2020-12-07 16:52:13.0000000', N'0', NULL, NULL, N'1', N'6')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'9dbadaee8720767efe3164a7d018c870', N'45566', N'发票打印', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"9dbadaee8720767efe3164a7d018c870","printElHeight":738,"rows":{"0":{"cells":{"0":{"text":""}}},"2":{"cells":{},"height":11},"3":{"cells":{"2":{"text":""},"5":{"text":""}},"height":18},"4":{"cells":{"2":{"text":"182123434","style":0},"5":{"text":"12345678"}},"height":15},"5":{"cells":{"2":{"text":""}}},"7":{"cells":{"0":{"text":" ","virtual":"afslapoWaSFwEPc0"},"1":{"text":" ","virtual":"afslapoWaSFwEPc0"},"2":{"text":" ","virtual":"afslapoWaSFwEPc0"},"3":{"text":" ","virtual":"afslapoWaSFwEPc0"},"4":{"text":" ","virtual":"afslapoWaSFwEPc0"},"5":{"text":" ","virtual":"afslapoWaSFwEPc0"},"6":{"text":" ","virtual":"afslapoWaSFwEPc0"},"7":{"text":" ","virtual":"afslapoWaSFwEPc0"}}},"8":{"cells":{"1":{"text":"餐饮"},"2":{"text":"        A11"},"3":{"text":"    333      3"},"4":{"text":"  3                   4"},"5":{"text":"          1"},"6":{"text":"3333"}}},"9":{"cells":{"1":{"text":"测试"},"2":{"text":"      mmm"},"3":{"text":"    33          5"}}},"10":{"cells":{},"height":22},"11":{"cells":{"2":{"text":"                          "},"3":{"text":"343434"},"6":{"text":"3434"}},"height":45},"12":{"cells":{"4":{"text":"           刮开中奖"}},"height":12},"13":{"cells":{"2":{"text":""},"4":{"text":"      "},"5":{"text":"备注"}},"height":31},"14":{"cells":{"1":{"text":" 张三"},"3":{"text":"完成"},"4":{"text":"           李思"}},"height":41},"len":100},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":647,"name":"sheet1","autofilter":{},"styles":[{"font":{"size":8}}],"validations":[],"cols":{"0":{"width":93},"1":{"width":74},"2":{"width":80},"len":26},"merges":[],"imgList":[{"row":7,"col":0,"width":"680","height":"397","src":"https://static.jeecg.com/designreport/images/发票_1595320513640.jpg","isBackend":true,"commonBackend":true,"layer_id":"afslapoWaSFwEPc0","offsetX":0,"offsetY":0,"virtualCellRange":[[7,0],[7,1],[7,2],[7,3],[7,4],[7,5],[7,6],[7,7]]}]}', N'', N'', N'admin', N'2020-07-20 18:55:59.0000000', N'admin', N'2020-11-05 17:44:12.0000000', N'0', NULL, NULL, N'1', N'3')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'9dcd4ece71a16d77fa1a26a72a4f46a4', N'45677', N'公司业绩', N'', NULL, N'printinfo', N'{"chartList":[{"row":7,"col":1,"width":"699","height":"352","config":"{\"title\":{\"text\":\"折线图堆叠\"},\"tooltip\":{\"trigger\":\"axis\"},\"legend\":{\"data\":[\"总公司\",\"营销部\",\"广告部\",\"技术部\"]},\"grid\":{\"left\":\"3%\",\"right\":\"4%\",\"bottom\":\"3%\",\"containLabel\":true},\"toolbox\":{\"feature\":{\"saveAsImage\":{}}},\"xAxis\":{\"type\":\"category\",\"boundaryGap\":false,\"data\":[\"今年累积\",\"目标\",\"去年同期\"]},\"yAxis\":{\"type\":\"value\"},\"series\":[{\"name\":\"总公司\",\"type\":\"line\",\"stack\":\"总量\",\"data\":[300,250,200]},{\"name\":\"营销部\",\"type\":\"line\",\"stack\":\"总量\",\"data\":[200,150,200]},{\"name\":\"广告部\",\"type\":\"line\",\"stack\":\"总量\",\"data\":[200,180,120]},{\"name\":\"技术部\",\"type\":\"line\",\"stack\":\"总量\",\"data\":[110,170,120]}]}","url":"","extData":{},"layer_id":"KguoBVXgOm6T5JG7","offsetX":0,"offsetY":0,"virtualCellRange":[[7,1],[7,2],[7,3],[7,4],[7,5],[7,6],[7,7]]}],"area":false,"printElWidth":820,"excel_config_id":"9dcd4ece71a16d77fa1a26a72a4f46a4","printElHeight":1047,"rows":{"0":{"cells":{"1":{"text":"当月利润明细表","style":14,"merge":[0,6]},"2":{"style":14},"3":{"style":14},"4":{"style":14},"5":{"style":14},"6":{"style":14},"7":{"style":14},"8":{"text":""},"9":{"text":""}},"height":40},"2":{"cells":{"1":{"text":"部门","style":9,"merge":[1,0]},"2":{"merge":[0,2],"text":"利润总额（元）","style":9},"3":{"style":9},"4":{"style":9},"5":{"merge":[0,2],"text":"净利润（元）","style":9},"6":{"style":9},"7":{"style":9}},"height":46},"3":{"cells":{"1":{"style":10},"2":{"text":"实际","style":9},"3":{"text":"指标","style":9},"4":{"text":"完成率","style":9},"5":{"text":"实际","style":9},"6":{"text":"指标","style":9},"7":{"text":"完成率","style":9}},"height":48},"4":{"cells":{"1":{"text":"#{salesrate.bname}","style":17},"2":{"text":"#{salesrate.stotal}","style":18},"3":{"text":"#{salesrate.starget}","style":18},"4":{"text":"#{salesrate.srate}","style":18},"5":{"text":"#{salesrate.jtotal}","style":18},"6":{"text":"#{salesrate.jtarget}","style":18},"7":{"text":"#{salesrate.jrate}","style":18}}},"7":{"cells":{"1":{"text":" ","virtual":"KguoBVXgOm6T5JG7"},"2":{"text":" ","virtual":"KguoBVXgOm6T5JG7"},"3":{"text":" ","virtual":"KguoBVXgOm6T5JG7"},"4":{"text":" ","virtual":"KguoBVXgOm6T5JG7"},"5":{"text":" ","virtual":"KguoBVXgOm6T5JG7"},"6":{"text":" ","virtual":"KguoBVXgOm6T5JG7"},"7":{"text":" ","virtual":"KguoBVXgOm6T5JG7"}}},"len":101},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":760,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","bgcolor":"#01b0f1"},{"bgcolor":"#01b0f1"},{"align":"center","bgcolor":"#01b0f1","color":"#000100"},{"bgcolor":"#01b0f1","color":"#000100"},{"align":"center","bgcolor":"#9cc2e6","color":"#000100"},{"bgcolor":"#9cc2e6","color":"#000100"},{"align":"center","bgcolor":"#9cc2e6","color":"#7f7f7f"},{"bgcolor":"#9cc2e6","color":"#7f7f7f"},{"align":"center","bgcolor":"#9cc2e6","color":"#262626"},{"bgcolor":"#9cc2e6","color":"#262626"},{"font":{"bold":true}},{"font":{"bold":true,"size":16}},{"font":{"bold":true,"size":16},"align":"center"},{"font":{"bold":true,"size":14},"align":"center"},{"color":"#9cc2e6"},{"color":"#3f3f3f"},{"color":"#3f3f3f","border":{"bottom":["thin","#9cc2e6"],"top":["thin","#9cc2e6"],"left":["thin","#9cc2e6"],"right":["thin","#9cc2e6"]}},{"border":{"bottom":["thin","#9cc2e6"],"top":["thin","#9cc2e6"],"left":["thin","#9cc2e6"],"right":["thin","#9cc2e6"]}},{"font":{"bold":false,"size":14},"align":"center"},{"font":{"bold":false,"size":10},"align":"center"},{"font":{"bold":false,"size":10},"align":"left"},{"align":"center","font":{"size":14}}],"validations":[],"cols":{"0":{"width":60},"8":{"width":60},"len":27},"merges":["C3:E3","F3:H3","B3:B4","B1:H1"]}', N'', N'', N'admin', N'2020-06-17 16:01:14.0000000', N'admin', N'2020-12-07 16:52:33.0000000', N'0', NULL, NULL, N'1', N'4')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'9f3cb6a871c40bb2ce3aaae5c02bdd20', N'9899', N'员工考勤一览表', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":844,"excel_config_id":"9f3cb6a871c40bb2ce3aaae5c02bdd20","printElHeight":1047,"rows":{"0":{"cells":{"1":{"text":"员工考勤一览表","merge":[0,11],"style":5},"2":{"style":5},"3":{"style":5},"4":{"style":5},"5":{"style":5},"6":{"style":5},"7":{"style":5},"8":{"style":5},"9":{"style":5},"10":{"style":5},"11":{"style":5},"12":{"style":5}},"height":37},"1":{"cells":{"1":{"text":"考勤时间：2020/5/1  -  2020/5/31","style":26,"merge":[0,11]},"2":{"style":27},"3":{"style":27},"4":{"style":27},"5":{"style":27},"6":{"style":27},"7":{"style":27},"8":{"style":27},"9":{"style":27},"10":{"style":27},"11":{"style":27},"12":{"style":27}}},"3":{"cells":{"1":{"text":"编号","style":31},"2":{"text":"姓名","style":19},"3":{"text":"工作天数","style":19},"4":{"text":"正常打卡","style":19},"5":{"text":"迟到天数","style":19},"6":{"text":"早退天数","style":19},"7":{"text":"矿工天数","style":19},"8":{"text":"补卡次数","style":19},"9":{"text":"外勤天数","style":19},"10":{"text":"出差天数","style":19},"11":{"text":"请假次数","style":19},"12":{"text":"缺卡次数","style":19},"13":{"text":""}},"height":38},"4":{"cells":{"1":{"style":32,"text":"#{kaoqin.id}"},"2":{"style":11,"text":"#{kaoqin.name}"},"3":{"style":11,"text":"#{kaoqin.day}"},"4":{"style":11,"text":"#{kaoqin.zcdaka}"},"5":{"style":11,"text":"#{kaoqin.cdday}"},"6":{"style":11,"text":"#{kaoqin.ztday}"},"7":{"style":11,"text":"#{kaoqin.kgday}"},"8":{"style":11,"text":"#{kaoqin.bcnum}"},"9":{"style":11,"text":"#{kaoqin.wqday}"},"10":{"style":11,"text":"#{kaoqin.ccday}"},"11":{"style":11,"text":"#{kaoqin.qjnum}"},"12":{"style":11,"text":"#{kaoqin.qknum}"}}},"len":88},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":777,"name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":true}},{"align":"center"},{"align":"center","font":{"bold":true}},{"align":"center","font":{"bold":true,"size":16}},{"font":{"bold":true}},{"font":{"bold":false}},{"border":{"right":["thin","#fe0000"],"bottom":["thin","#fe0000"]},"align":"center"},{"border":{"bottom":["thin","#fe0000"]},"align":"center"},{"border":{"right":["thin","#fe0000"]},"align":"center"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center"},{"align":"center","font":{"bold":true},"color":"#d8d8d8"},{"align":"center","color":"#d8d8d8"},{"align":"center","font":{"bold":true},"color":"#a5a5a5"},{"align":"center","color":"#a5a5a5"},{"align":"center","font":{"bold":true},"color":"#7f7f7f"},{"align":"center","color":"#7f7f7f"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":true,"name":"Arial"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":false,"name":"Arial"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","font":{"bold":true}},{"align":"left","font":{"bold":true},"color":"#7f7f7f"},{"align":"left"},{"align":"left","font":{"bold":false},"color":"#7f7f7f"},{"align":"left","font":{"bold":false}},{"align":"center","font":{"size":16}},{"align":"center","font":{"bold":false},"color":"#7f7f7f"},{"align":"center","font":{"bold":false}},{"border":{"right":["thin","#fe0000"],"bottom":["thin","#fe0000"]},"align":"center","font":{"bold":true}},{"border":{"bottom":["thin","#fe0000"],"top":["thin","#fe0000"],"left":["thin","#fe0000"],"right":["thin","#fe0000"]},"align":"center","font":{"bold":true}},{"border":{"bottom":["thin","#fe0000"],"top":["thin","#fe0000"],"left":["thin","#fe0000"],"right":["thin","#fe0000"]},"align":"center"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":false,"name":"Arial"},"color":"#fe0000"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","font":{"bold":true},"color":"#fe0000"}],"validations":[],"cols":{"0":{"width":15},"1":{"width":72},"2":{"width":60},"3":{"width":60},"4":{"width":60},"5":{"width":60},"6":{"width":60},"7":{"width":60},"8":{"width":60},"9":{"width":60},"10":{"width":60},"11":{"width":60},"12":{"width":90},"len":27},"merges":["B2:M2","B1:M1"]}', N'', N'', N'admin', N'2020-06-16 15:29:27.0000000', N'admin', N'2020-12-07 16:52:47.0000000', N'0', NULL, NULL, N'1', N'4')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'a250846887abe01217aab173d3006489', N'56663', N'不动产打印', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":926,"excel_config_id":"a250846887abe01217aab173d3006489","printElHeight":738,"rows":{"0":{"cells":{"0":{"text":"   #{budong.name}","merge":[1,0],"style":34},"1":{"merge":[1,0],"text":"#{budong.time}","style":35},"2":{"merge":[1,0],"text":"                        #{budong.didian}","style":34},"3":{"text":"#{budong.bianhao}","merge":[1,0],"style":34}},"height":17},"1":{"cells":{"0":{"style":34},"1":{"style":35},"2":{"style":34},"3":{"style":34}},"height":24},"2":{"cells":{"0":{"text":"","style":0},"1":{"text":"       #{budong.yname}","style":21,"merge":[0,2]},"2":{"style":12},"3":{"style":12}},"height":39},"3":{"cells":{"1":{"text":"       #{budong.suoyou}","style":0,"merge":[0,2]},"4":{"text":"","style":19},"5":{"style":19,"merge":[5,3],"text":" #{budong.fujian}"}},"height":47},"4":{"cells":{"1":{"style":28,"text":"       #{budong.zhuzhi}","merge":[0,2]},"2":{"style":28},"3":{"style":28},"4":{"style":19}},"height":41},"5":{"cells":{"1":{"text":"       #{budong.danyuan}","style":0,"merge":[0,2]},"4":{"style":19}},"height":36},"6":{"cells":{"1":{"text":"        #{budong.type}","style":0,"merge":[0,2]},"4":{"style":19}},"height":44},"7":{"cells":{"1":{"text":"        #{budong.xtype}","style":0,"merge":[0,2]}},"height":36},"8":{"cells":{"1":{"text":"        #{budong.riqi}","style":0,"merge":[0,2]}},"height":36},"9":{"cells":{"1":{"text":"        #{budong.mianji}","style":0,"merge":[0,2]}},"height":56},"10":{"cells":{"1":{"style":0,"merge":[0,2],"text":"          #{budong.riqi}"}},"height":23},"11":{"cells":{"1":{"text":"","style":0,"merge":[0,2]}},"height":42},"12":{"cells":{"1":{"text":"","style":0},"2":{"style":0,"merge":[4,1],"text":"{budong.beizhu}"},"5":{"text":" ","virtual":"C4PFScYfeC962b5j"},"6":{"text":" ","virtual":"C4PFScYfeC962b5j"},"7":{"text":" ","virtual":"C4PFScYfeC962b5j"}}},"13":{"cells":{"1":{"style":0}}},"14":{"cells":{"1":{"style":0}}},"15":{"cells":{"1":{"style":0}}},"16":{"cells":{"1":{"style":0}},"height":5},"17":{"cells":{"1":{"style":0},"2":{"text":"","style":0}},"isDrag":true,"height":33},"18":{"cells":{"1":{"style":0},"2":{"style":0,"text":""}}},"len":100,"-1":{"cells":{"0":{"text":"#{budong.zhuzhi}"},"-1":{"text":"#{budong.suoyou}"}},"isDrag":true}},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":867,"name":"sheet1","autofilter":{},"styles":[{"font":{"bold":true}},{"font":{"italic":true}},{"font":{"italic":true,"bold":true}},{"font":{"italic":true,"bold":false}},{"font":{"italic":false,"bold":false}},{"font":{"italic":false,"bold":true}},{"align":"left"},{"align":"center"},{"align":"right"},{"align":"left","valign":"top"},{"align":"left","valign":"top","font":{"bold":true}},{"font":{"bold":false}},{"align":"left","valign":"bottom"},{"valign":"bottom"},{"align":"center","valign":"bottom"},{"textwrap":true},{"font":{"bold":true},"valign":"bottom"},{"font":{"italic":false,"bold":true},"valign":"top"},{"valign":"top"},{"textwrap":true,"font":{"bold":true}},{"align":"center","valign":"bottom","font":{"bold":true}},{"align":"left","valign":"bottom","font":{"bold":true}},{"align":"left","valign":"bottom","font":{"bold":true,"size":8}},{"font":{"bold":true,"size":8},"valign":"bottom"},{"align":"center","valign":"bottom","font":{"bold":true,"size":8}},{"align":"left","valign":"middle","font":{"bold":true}},{"align":"left","valign":"middle"},{"font":{"italic":false,"bold":true},"valign":"bottom"},{"font":{"italic":false,"bold":true},"valign":"middle"},{"valign":"middle"},{"font":{"italic":true,"bold":true},"valign":"middle"},{"valign":"middle","font":{"italic":true}},{"valign":"middle","font":{"italic":false}},{"font":{"italic":false,"bold":false},"valign":"middle"},{"align":"center","valign":"middle","font":{"bold":true,"size":8}},{"font":{"bold":true,"size":8},"valign":"middle"},{"align":"left","valign":"middle","font":{"bold":true,"size":8}},{"align":"right","valign":"middle","font":{"bold":true,"size":8}}],"validations":[],"cols":{"0":{"width":91},"1":{"width":38},"2":{"width":135},"3":{"width":180},"6":{"width":123},"8":{"width":25},"len":26},"merges":["A1:A2","B1:B2","C1:C2","D1:D2","B12:D12","B9:D9","B7:D7","B6:D6","B5:D5","B4:D4","B3:D3","B11:D11","F4:I9","B8:D8","B10:D10","C13:D17"],"imgList":[{"row":12,"col":5,"width":"315","height":"214.938","src":"https://static.jeecg.com/designreport/images/不动产_1595238562702_1595332333790.jpg","isBackend":true,"commonBackend":true,"layer_id":"C4PFScYfeC962b5j","offsetX":0,"offsetY":0,"virtualCellRange":[[12,5],[12,6],[12,7]]}]}', N'', N'', N'admin', N'2020-07-09 10:48:22.0000000', N'admin', N'2020-12-07 16:58:07.0000000', N'0', NULL, NULL, N'1', N'8')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'a6b5d8fc7ab3606ad4b16d9fa0b2466c', N'cc', N'数据表格循环测试', N'', NULL, N'12', N'{"excel_config_id":"a6b5d8fc7ab3606ad4b16d9fa0b2466c","freeze":"A1","name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#fdc101"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#c00000"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#5b9cd6"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#c5e0b3"}],"validations":[],"rows":{"2":{"cells":{"1":{"text":"姓名2","style":1},"2":{"text":"年龄2","style":1}},"height":39},"3":{"cells":{"0":{"merge":[0,25],"text":"<#list list2 as item>"}}},"4":{"cells":{"0":{"text":""},"1":{"text":"${item.name!''''}","style":0},"2":{"text":"${item.age!''''}","style":0},"3":{"text":""}},"height":29},"5":{"cells":{"0":{"merge":[0,25],"text":"</#list>"}}},"7":{"cells":{"1":{"text":"姓名1","style":4},"2":{"text":"年龄1","style":4}}},"8":{"cells":{"0":{"merge":[0,25],"text":"<#list list as item>"}}},"9":{"cells":{"0":{"text":""},"1":{"text":"${item.name!''''}","style":0},"2":{"text":"${item.age!''''}","style":0},"3":{"text":""}}},"10":{"cells":{"0":{"merge":[0,25],"text":"</#list>"}}},"len":100},"cols":{"len":26},"merges":["A4:Z4","A6:Z6","A9:Z9","A11:Z11"]}', N'http://api.jeecg.com/mock/21/big-screen/printList', N'', N'admin', N'2019-12-25 18:33:42.0000000', NULL, N'2019-12-28 17:15:11.0000000', N'0', NULL, NULL, N'1', NULL)
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'a9f068972508920cd4aab831814f0c04', N'23445', N'逮捕证', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"a9f068972508920cd4aab831814f0c04","printElHeight":1108,"rows":{"0":{"cells":{"2":{"text":"","merge":[0,9],"style":324},"12":{}},"isDrag":true,"height":88},"1":{"cells":{"0":{"style":324},"1":{"style":408,"merge":[0,13],"text":"兰州市经济侦查大队"},"15":{"style":83}},"height":128},"2":{"cells":{"0":{"style":324},"1":{"style":89,"merge":[0,13],"text":"逮捕令"},"15":{"style":83}},"height":41},"3":{"cells":{"0":{"style":324},"1":{"style":409,"merge":[0,12],"text":"第123459663号"},"2":{"style":397},"3":{"style":397},"4":{"style":397},"5":{"style":397},"6":{"style":397},"7":{"style":397},"8":{"style":397},"9":{"style":397},"10":{"style":397},"11":{"style":397},"12":{"style":397},"13":{"style":397},"14":{"style":84}},"height":60},"4":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"text":"                                 根据《中华人民共和国刑事诉讼法》第七十八条之规定，","style":341,"merge":[0,11]},"14":{"style":84}},"height":43},"5":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":341,"text":"经","merge":[0,1]},"3":{"style":343},"4":{"text":"#{pdaibu.pname}","style":342,"merge":[0,9]},"14":{"style":84}},"isDrag":true,"height":47},"6":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":344,"text":"","merge":[0,2]},"5":{"merge":[0,3],"text":"批准，兹由我局对涉嫌","style":338},"9":{"style":347,"text":"#{pdaibu.shiqing}","merge":[0,4]},"14":{"style":84}},"height":49},"7":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":341,"text":"的"},"3":{"style":345,"merge":[0,1],"text":"#{pdaibu.fname}"},"4":{"style":346},"5":{"text":"(性别","style":343},"6":{"text":"#{pdaibu.fsex}","style":370,"merge":[0,1]},"7":{"style":338},"8":{"style":346,"text":"出生日期"},"9":{"style":345,"text":"#{pdaibu.cdata}","merge":[0,4]},"14":{"style":84}},"height":51},"8":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":345,"merge":[0,7],"text":"#{pdaibu.zhuzhi}"},"3":{"style":370},"4":{"style":370},"5":{"style":370},"6":{"style":370},"7":{"style":370},"8":{"style":370},"9":{"style":370},"10":{"style":341,"text":"执行逮捕，送兰州","merge":[0,3]},"14":{"style":84}},"height":51},"9":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":341,"merge":[0,6],"text":"市经济侦查大队羁押。"},"3":{"style":350},"4":{"style":350},"5":{"style":350},"6":{"style":349},"7":{"style":349},"8":{"style":350},"9":{"style":341,"text":""},"10":{"style":341,"merge":[5,1]},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":57},"10":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":343},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":338},"7":{"style":338},"8":{"style":338},"9":{"text":"","style":338},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":61},"11":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":337,"text":""},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":376,"merge":[0,2]},"7":{"style":302},"8":{"style":302},"9":{"text":"","style":338},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":83},"12":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"merge":[0,6],"style":338},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":338},"7":{"style":338},"8":{"style":338},"9":{"style":338,"virtual":"LyTMcbb6tB1mvQ9n"},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":14},"13":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":351,"text":"","merge":[0,5]},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":338},"7":{"style":338},"8":{"style":380,"text":"公安局印"},"9":{"style":352,"text":""},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":89},"14":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":338},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":338},"7":{"style":338},"8":{"style":338},"9":{"style":338},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":21},"15":{"cells":{"0":{"style":324},"1":{"style":77},"2":{"style":375,"text":""},"3":{"style":78},"4":{"style":78},"5":{"style":78},"6":{"style":379,"merge":[0,6],"text":"                        #{pdaibu.gdata}"},"7":{"style":39},"8":{"style":39},"9":{"style":39},"10":{"style":39},"11":{"style":39},"12":{"style":39},"13":{"style":78},"14":{"style":79}},"height":201},"16":{"cells":{"2":{"style":283},"3":{"style":283},"4":{"style":283},"5":{"style":283},"8":{"style":283},"9":{"style":283},"10":{"style":283}},"height":23},"17":{"cells":{"2":{"style":324},"3":{"style":324},"4":{"style":324},"5":{"style":324},"8":{"text":""},"9":{"style":324},"10":{"style":324}},"isDrag":true},"18":{"cells":{"5":{"text":""}},"isDrag":true},"19":{"cells":{"9":{"text":""}},"isDrag":true},"len":99,"-1":{"cells":{"1":{"text":"#{daibu.fdata}"},"-1":{"text":"#{pdaibu.shiqing}"}},"isDrag":true}},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":566,"name":"sheet1","autofilter":{},"styles":[{"align":"left"},{"align":"left","underline":true},{"underline":true},{"align":"center","underline":true},{"align":"center"},{"align":"center","underline":false},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]}},{"align":"left","border":{"bottom":["thin","#000"]}},{"align":"left","font":{"size":16}},{"font":{"size":16}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16}},{"align":"center","underline":false,"font":{"size":16}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16}},{"align":"left","font":{"size":16,"bold":true}},{"font":{"size":16,"bold":true}},{"align":"center","underline":false,"font":{"size":16,"bold":true}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":true}},{"font":{"bold":true}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":true}},{"align":"left","font":{"size":16,"bold":false}},{"font":{"size":16,"bold":false}},{"align":"center","underline":false,"font":{"size":16,"bold":false}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false}},{"font":{"bold":false}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false}},{"align":"left","font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"size":12}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12,"bold":false},"color":"#3f3f3f","align":"center"},{"font":{"size":12},"align":"center"},{"font":{"size":8}},{"font":{"size":10}},{"font":{"size":10,"bold":true}},{"font":{"size":10,"bold":true},"align":"center"},{"font":{"size":18,"bold":true},"align":"center"},{"align":"center","font":{"size":18}},{"font":{"size":16,"bold":true},"align":"center"},{"align":"center","font":{"size":16}},{"font":{"size":12},"valign":"bottom"},{"font":{"size":12},"valign":"middle"},{"font":{"size":12},"border":{"top":["thin","#000"],"left":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thin","#000"]}},{"border":{"top":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":12},"border":{"left":["thin","#000"]}},{"font":{"size":12},"border":{"right":["thin","#000"]}},{"font":{"size":12},"valign":"middle","border":{"right":["thin","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thin","#000"],"right":["thin","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thin","#000"]}},{"align":"center","underline":false,"border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"]}},{"border":{"bottom":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12},"border":{"left":["thick","#000"]}},{"font":{"size":12},"border":{"right":["thick","#000"]}},{"font":{"size":12},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]}},{"border":{"bottom":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]}},{"align":"center","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"border":{"left":["thin","#000"]}},{"border":{"left":["dashed","#000"]}},{"border":{"left":["thick","#000"]}},{"border":{"right":["thick","#000"]}},{"align":"left","border":{"bottom":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12},"border":{"left":["thick","#000"]},"align":"center"},{"font":{"size":12,"bold":true},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true}},{"font":{"size":14,"bold":true},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Arial"}},{"font":{"size":14,"bold":true,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Arial"}},{"font":{"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Arial"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Arial"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Arial"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Arial"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Source Sans Pro"}},{"font":{"size":14,"bold":true,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"}},{"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Comic Sans MS"}},{"font":{"size":14,"bold":true,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"}},{"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Courier New"}},{"font":{"size":14,"bold":true,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"}},{"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Courier New"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Courier New"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Courier New"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"color":"#000100"},{"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Arial"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"color":"#000100"},{"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Helvetica"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"color":"#000100"},{"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Lato"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"color":"#000100"},{"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":10,"name":"Lato"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"center"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"color":"#000100","align":"right"},{"align":"right"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"left","color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"left","color":"#000100","valign":"top"},{"align":"left","valign":"top"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"left","color":"#000100","valign":"middle"},{"align":"left","valign":"middle"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"left","color":"#000100","valign":"bottom"},{"align":"left","valign":"bottom"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100","valign":"bottom"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"right","color":"#000100","valign":"bottom"},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","color":"#000100"},{"font":{"size":14,"bold":true,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"right","color":"#000100","valign":"bottom"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"name":"Lato"},"color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100","align":"right"},{"font":{"size":12,"name":"Lato","bold":true},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100"},{"border":{"right":["thin","#000"]}},{},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"]},"color":"#000100","align":"right"},{"font":{"size":12,"name":"Lato","bold":true},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"align":"right","color":"#000100","valign":"bottom"},{"align":"center","underline":false,"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12},"align":"center","border":{"bottom":["thin","#000"]}},{"align":"left","font":{"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"right"},{"border":{"bottom":["thin","#000"]},"font":{"size":12}},{"align":"center","font":{"bold":false}},{"align":"center","font":{"bold":false,"size":12}},{"align":"center","font":{"bold":false,"size":12},"border":{"bottom":["thin","#000"]}},{"align":"center","valign":"top"},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center"},{"font":{"size":14}},{"align":"center","font":{"bold":true,"size":16,"name":"Lato"},"color":"#000100"},{"font":{"size":14,"name":"Lato"},"align":"right","color":"#000100","valign":"bottom"},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"center","font":{"bold":false,"size":14},"border":{"bottom":["thin","#000"]}},{"font":{"name":"Lato","size":14},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","align":"center"},{"font":{"size":14},"align":"center","border":{"bottom":["thin","#000"]}},{"border":{"bottom":["thin","#000"]},"font":{"size":14}},{"align":"left","font":{"size":14}},{"align":"left","font":{"name":"Lato","size":14},"color":"#000100"},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"right"},{"align":"left","valign":"top","font":{"size":14}},{"border":{"top":["thick","#000"],"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"center","font":{"bold":true,"size":16,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"align":"right","color":"#000100","valign":"bottom","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","font":{"bold":false,"size":14},"border":{"right":["thick","#000"]}},{"align":"center","border":{"right":["thick","#000"]},"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"border":{"right":["thick","#000"]},"font":{"size":14}},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","border":{"right":["thick","#000"]}},{"font":{"name":"Lato","size":14},"color":"#000100","border":{"left":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center","border":{"left":["thick","#000"]}},{"font":{"size":14},"border":{"left":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"right","border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"right","border":{"bottom":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":14},"border":{"bottom":["thick","#000"]}},{"align":"center","font":{"bold":false,"size":14}},{"font":{"size":14},"align":"center"},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center","border":{"top":["thick","#000"],"left":["thick","#000"],"right":["thick","#000"]}},{"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center","border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"right","border":{"bottom":["thick","#000"]}},{"font":{"size":14},"align":"right"},{"border":{"bottom":["thick","#000"]},"font":{"size":12}},{"font":{"size":14},"border":{"bottom":["thick","#000"]},"align":"center"},{"border":{"bottom":["thick","#000"]},"font":{"size":12},"align":"center"},{"align":"left","valign":"middle","font":{"size":14}},{"border":{"top":["thick","#000"]},"font":{"size":24}},{"font":{"size":24}},{"border":{"top":["thick","#000"]},"font":{"size":22}},{"font":{"size":22}},{"border":{"top":["thick","#000"]},"font":{"size":18}},{"font":{"size":18}},{"border":{"top":["thick","#000"]},"font":{"size":18,"bold":true}},{"font":{"size":18,"bold":true}},{"border":{"top":["thick","#000"]},"font":{"size":18,"bold":true},"align":"center"},{"border":{"top":["thick","#000"]},"font":{"size":18,"bold":false},"align":"center"},{"font":{"size":18,"bold":false},"align":"center"},{"font":{"size":14,"bold":true}},{"border":{"top":["thick","#000"]},"font":{"size":18,"bold":false},"align":"center","valign":"bottom"},{"font":{"size":18,"bold":false},"align":"center","valign":"bottom"},{"valign":"bottom"},{"valign":"bottom","align":"right"},{"valign":"bottom","align":"right","font":{"size":14}},{"font":{"size":18,"bold":false},"align":"center","valign":"bottom","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","font":{"bold":true,"size":14},"border":{"left":["thin","#000"],"right":["thin","#000"]}},{"valign":"bottom","align":"right","font":{"size":14},"border":{"left":["thin","#000"],"right":["thin","#000"]}},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","border":{"right":["thin","#000"]}},{"align":"center","font":{"bold":false,"size":14},"border":{"right":["thin","#000"]}},{"font":{"size":14},"align":"center","border":{"right":["thin","#000"]}},{"font":{"size":18,"bold":false},"align":"center","valign":"bottom","border":{"top":["thick","#000"],"left":["thick","#000"],"right":["thick","#000"]}},{"align":"center","font":{"bold":true,"size":14},"border":{"left":["thick","#000"],"right":["thick","#000"]}},{"valign":"bottom","align":"right","font":{"size":14},"border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":14},"align":"center","border":{"right":["thick","#000"]}},{"font":{"size":18,"bold":false},"align":"center","valign":"bottom","border":{"top":["thick","#000"],"left":["thick","#000"]}},{"valign":"bottom","align":"right","font":{"size":14},"border":{"left":["thick","#000"]}}],"validations":[],"cols":{"0":{"width":46},"1":{"width":38},"2":{"width":27},"3":{"width":6},"4":{"width":87},"5":{"width":51},"6":{"width":68},"7":{"width":1},"8":{"width":78},"9":{"width":163},"10":{"width":1},"11":{"width":60},"12":{"width":45},"13":{"width":49},"14":{"width":34},"len":31},"merges":["D8:E8","C6:D6","C10:I10","G8:H8","C9:J9","C1:L1","K10:L15","C13:I13","C14:H14","F7:I7","G12:I12","G16:M16","B4:N4","C5:N5","E6:N6","J7:N7","C7:E7","J8:N8","K9:N9","B2:O2","B3:O3"],"imgList":[{"row":12,"col":9,"width":"127","height":"131","src":"https://static.jeecg.com/designreport/images/1111_1596625522803.jpeg","layer_id":"LyTMcbb6tB1mvQ9n","offsetX":0,"offsetY":0,"virtualCellRange":[[12,9]]}]}', N'', N'', N'admin', N'2020-07-10 13:38:40.0000000', N'admin', N'2020-12-07 16:52:20.0000000', N'0', NULL, NULL, N'1', N'7')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'b1ce8ef4f5eb54614a8368710e7b945f', N'1234455', N'出货单', N'', NULL, N'printinfo', N'{"area":{"sri":9,"sci":0,"eri":17,"eci":25,"width":2649,"height":240},"printElWidth":760,"excel_config_id":"b1ce8ef4f5eb54614a8368710e7b945f","printElHeight":1047,"rows":{"1":{"cells":{"2":{"text":"北京大淘宝商有限公司公司","style":71,"merge":[0,2]},"3":{"style":73},"4":{"style":73}},"height":37},"2":{"cells":{"1":{"style":47},"2":{"style":139,"text":"出货单","merge":[0,2]},"3":{"style":140},"4":{"style":140},"5":{"style":71},"6":{"style":71}}},"3":{"cells":{"1":{"style":133,"text":"客户名称：北京煎饼果子有限公司","merge":[0,1]},"3":{"text":"","style":88},"4":{"text":"订货日期：2020-05-23","merge":[0,1]}}},"4":{"cells":{"1":{"style":67,"text":"统一编码：256332111233","merge":[0,1]},"3":{"text":""},"4":{"style":123,"text":"出货日期：2020-05-24","merge":[0,1]},"6":{"style":88},"8":{"text":""}}},"5":{"cells":{"1":{"text":"发票地址：北京市朝阳路啊啊大厦","style":68,"merge":[0,1]},"3":{"text":""},"4":{"text":"打单号码：78995456321233","merge":[0,1]}}},"6":{"cells":{"1":{"text":"出货地：北京市朝阳区嫩嫩大厦","style":122,"merge":[0,1]},"3":{"text":""},"4":{"text":""}}},"7":{"cells":{"1":{"style":83,"text":"产品名称"},"2":{"style":83,"text":"规格"},"3":{"style":83,"text":"数量"},"4":{"style":105,"text":"单价"},"5":{"style":105,"text":"金额"}}},"8":{"cells":{"1":{"style":134,"text":"#{deliveryorder.name}"},"2":{"style":64,"text":"#{deliveryorder.specifications}"},"3":{"style":64,"text":"#{deliveryorder.num}"},"4":{"style":64,"text":"#{deliveryorder.price}"},"5":{"style":64,"text":"#{deliveryorder.total}"}}},"9":{"cells":{"1":{"style":64,"text":"总计："},"2":{"merge":[0,1],"style":84,"text":""},"4":{"style":69,"text":"  签收："},"5":{"style":136}},"height":40},"11":{"cells":{"6":{"style":68}}},"len":93},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":671,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","border":{"top":["thin","#000"],"left":["thin","#000"]}},{"align":"center","border":{"top":["thin","#000"]}},{"align":"center","border":{"top":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"left":["thin","#000"]}},{"border":{"bottom":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"right":["thin","#000"]}},{"border":{"top":["thin","#000"]}},{"border":{"top":["thin","#000"],"right":["thin","#000"]}},{"align":"center","border":{"left":["dashed","#fe0000"]}},{"border":{"left":["dashed","#fe0000"]}},{"align":"center","border":{"right":["dashed","#fe0000"],"bottom":["dashed","#fe0000"]}},{"border":{"right":["dashed","#fe0000"],"bottom":["dashed","#fe0000"]}},{"border":{"bottom":["dashed","#fe0000"]}},{"border":{"right":["dashed","#fe0000"]}},{},{"align":"center","border":{"bottom":["dashed","#fe0000"],"top":["dashed","#fe0000"],"left":["dashed","#fe0000"],"right":["dashed","#fe0000"]}},{"border":{"bottom":["dashed","#fe0000"],"top":["dashed","#fe0000"],"left":["dashed","#fe0000"],"right":["dashed","#fe0000"]}},{"align":"center","border":{"bottom":["thick","#fe0000"],"top":["thick","#fe0000"],"left":["thick","#fe0000"],"right":["thick","#fe0000"]}},{"border":{"bottom":["thick","#fe0000"],"top":["thick","#fe0000"],"left":["thick","#fe0000"],"right":["thick","#fe0000"]}},{"align":"center","border":{"bottom":["thick","#fdc101"]}},{"border":{"bottom":["thick","#fdc101"]}},{"align":"center","border":{"top":["thick","#fdc101"],"left":["thick","#fdc101"]}},{"border":{"top":["thick","#fdc101"]}},{"border":{"top":["thick","#fdc101"],"right":["thick","#fdc101"]}},{"border":{"bottom":["thick","#fdc101"],"left":["thick","#fdc101"]}},{"border":{"bottom":["thick","#fdc101"],"right":["thick","#fdc101"]}},{"align":"center","border":{"top":["thin","#7f7f7f"],"left":["thin","#7f7f7f"]}},{"border":{"top":["thin","#7f7f7f"]}},{"border":{"top":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]}},{"border":{"bottom":["thin","#7f7f7f"],"left":["thin","#7f7f7f"]}},{"border":{"bottom":["thin","#7f7f7f"]}},{"border":{"bottom":["thin","#7f7f7f"],"right":["thin","#7f7f7f"]}},{"align":"center","border":{"top":["thin","#d8d8d8"],"left":["thin","#d8d8d8"]}},{"border":{"top":["thin","#d8d8d8"]}},{"border":{"top":["thin","#d8d8d8"],"right":["thin","#d8d8d8"]}},{"border":{"bottom":["thin","#d8d8d8"],"left":["thin","#d8d8d8"]}},{"border":{"bottom":["thin","#d8d8d8"]}},{"border":{"bottom":["thin","#d8d8d8"],"right":["thin","#d8d8d8"]}},{"border":{"top":["thin","#d8d8d8"]},"align":"center"},{"border":{"top":["thin","#d8d8d8"],"right":["thin","#d8d8d8"]},"align":"center"},{"border":{"bottom":["thin","#d8d8d8"],"left":["thin","#d8d8d8"]},"align":"center"},{"border":{"bottom":["thin","#d8d8d8"]},"align":"center"},{"border":{"bottom":["thin","#d8d8d8"],"right":["thin","#d8d8d8"]},"align":"center"},{"align":"center","border":{"top":["thin","#d8d8d8"],"left":["thin","#d8d8d8"]},"bgcolor":"#ffff01"},{"border":{"top":["thin","#d8d8d8"]},"align":"center","bgcolor":"#ffff01"},{"border":{"top":["thin","#d8d8d8"],"right":["thin","#d8d8d8"]},"align":"center","bgcolor":"#ffff01"},{"bgcolor":"#ffffff"},{"align":"center","border":{"top":["thin","#d8d8d8"],"left":["thin","#d8d8d8"]},"bgcolor":"#ffffff"},{"border":{"top":["thin","#d8d8d8"]},"align":"center","bgcolor":"#ffffff"},{"border":{"top":["thin","#d8d8d8"],"right":["thin","#d8d8d8"]},"align":"center","bgcolor":"#ffffff"},{"border":{"bottom":["thin","#d8d8d8"],"left":["thin","#d8d8d8"]},"align":"center","bgcolor":"#ffffff"},{"border":{"bottom":["thin","#d8d8d8"]},"align":"center","bgcolor":"#ffffff"},{"border":{"bottom":["thin","#d8d8d8"],"right":["thin","#d8d8d8"]},"align":"center","bgcolor":"#ffffff"},{"bgcolor":"#ffffff","align":"center"},{"bgcolor":"#ffffff","align":"center","font":{"size":22}},{"align":"center","font":{"size":22}},{"bgcolor":"#ffffff","align":"center","font":{"size":18}},{"align":"center","font":{"size":18}},{"bgcolor":"#ffffff","align":"center","font":{"size":16}},{"align":"center","font":{"size":16}},{"bgcolor":"#ffffff","align":"center","font":{"size":14}},{"bgcolor":"#ffffff","align":"center","font":{"size":14},"textwrap":true},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center"},{"bgcolor":"#ffffff","align":"right"},{"align":"right"},{"bgcolor":"#ffffff","align":"left"},{"align":"left"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"left"},{"bgcolor":"#ffffff","align":"center","font":{"size":12},"textwrap":true},{"align":"center","font":{"size":16,"bold":true}},{"bgcolor":"#ffffff","font":{"bold":true}},{"font":{"bold":true}},{"bgcolor":"#ffffff","font":{"bold":true,"size":18}},{"font":{"bold":true,"size":18}},{"bgcolor":"#ffffff","font":{"bold":true,"size":18},"align":"center"},{"font":{"bold":true,"size":18},"align":"center"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffff01"},{"bgcolor":"#ffffff","align":"center","font":{"size":12}},{"font":{"size":12}},{"bgcolor":"#ffffff","align":"center","font":{"size":12},"color":"#a5a5a5"},{"font":{"size":12},"color":"#a5a5a5"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"bgcolor":"#ffffff","font":{"bold":true,"size":16},"align":"center"},{"textwrap":true},{"textwrap":true,"valign":"top"},{"textwrap":true,"valign":"middle"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"top"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"bottom"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"left","bgcolor":"#ffffff","valign":"middle"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"right","bgcolor":"#ffffff","valign":"middle"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":true},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":true},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false,"font":{"italic":true}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false,"font":{"italic":false}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false,"font":{"italic":false,"bold":true}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false,"font":{"italic":false,"bold":false}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false,"font":{"italic":false,"bold":false,"size":18}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false,"font":{"italic":false,"bold":false,"size":10}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false,"font":{"italic":false,"bold":false,"size":10},"format":"date"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","bgcolor":"#ffffff","valign":"middle","strike":false,"underline":false,"font":{"italic":false,"bold":false,"size":10},"format":"time"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"rmb"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"normal"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"percent"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"datetime"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"time"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"percent","font":{"name":"Arial"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"number"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"usd"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"eur"},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"date"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"format":"time"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"format":"datetime"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"format":"duration"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"format":"text"},{"align":"left","font":{"name":"Arial"}},{"font":{"name":"Arial"}},{"align":"left","font":{"name":"Helvetica"}},{"font":{"name":"Helvetica"}},{"align":"left","font":{"name":"Source Sans Pro"}},{"font":{"name":"Source Sans Pro"}},{"align":"left","font":{"name":"Comic Sans MS"}},{"font":{"name":"Comic Sans MS"}},{"align":"left","font":{"name":"Courier New"}},{"font":{"name":"Courier New"}},{"align":"left","font":{"name":"Lato"}},{"font":{"name":"Lato"}},{"bgcolor":"#ffffff","align":"left","font":{"name":"Arial"}},{"bgcolor":"#ffffff","align":"left","font":{"name":"Helvetica"}},{"border":{"bottom":["thin","#000100"],"top":["thin","#000100"],"left":["thin","#000100"],"right":["thin","#000100"]},"align":"center","format":"normal","font":{"name":"Arial"}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"format":"normal"},{"align":"left","border":{"top":["thin","#000"],"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"bgcolor":"#ffffff","align":"center","font":{"size":12},"color":"#a5a5a5","format":"normal"},{"font":{"size":16}},{"bgcolor":"#ffffff","align":"center","color":"#a5a5a5"},{"color":"#a5a5a5"}],"validations":[],"cols":{"0":{"width":84},"1":{"width":111},"2":{"width":115},"3":{"width":87},"4":{"width":137},"5":{"width":137},"6":{"width":88},"7":{"width":70},"8":{"width":120},"len":26},"merges":["E8:F8","C10:D10","C2:E2","C3:E3","B4:C4","E4:F4","B5:C5","B6:C6","B7:C7","E5:F5","E6:F6"]}', N'', N'', N'admin', N'2020-06-15 19:40:38.0000000', N'admin', N'2020-12-07 16:57:57.0000000', N'0', NULL, NULL, N'1', N'6')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'b8731b307e920e0ce55a2a5c69a4368e', N'33', N'33', N'33', NULL, N'33', N'{"chartList":[{"row":9,"col":6,"width":"447","height":"253","config":"{\"title\":{\"text\":\"JEECG系统登陆情况统计\",\"subtext\":\"真实数据\",\"left\":\"center\"},\"tooltip\":{\"trigger\":\"item\",\"formatter\":\"{b} : {c} ({d}%)\"},\"legend\":{\"bottom\":10,\"left\":\"center\",\"data\":[\"IE\",\"Safari\",\"Firefox\",\"Opera\",\"Chrome\"]},\"series\":[{\"type\":\"pie\",\"radius\":\"65%\",\"center\":[\"50%\",\"50%\"],\"selectedMode\":\"single\",\"data\":[{\"value\":1021,\"name\":\"IE\"},{\"value\":87,\"name\":\"Safari\"},{\"value\":582,\"name\":\"Firefox\"},{\"value\":123,\"name\":\"Opera\"},{\"value\":2451,\"name\":\"Chrome\"}]}]}","url":""}],"excel_config_id":"b8731b307e920e0ce55a2a5c69a4368e","freeze":"A1","name":"sheet1","autofilter":{},"styles":[],"validations":[],"rows":{"3":{"cells":{"1":{"text":"1"}}},"4":{"cells":{"1":{"text":"2"}}},"5":{"cells":{"1":{"text":"3"}}},"6":{"cells":{"1":{"text":"4"}}},"10":{"cells":{"1":{"merge":[3,4]}}},"len":100},"cols":{"len":26},"merges":["B11:F14"],"imgList":[{"row":10,"col":1,"width":"184","height":"87","src":"excel_online/20200110/banner (1)_1578643039514.jpg"}]}', N'http://api.jeecg.com/mock/21/big-screen/printform', N'', N'admin', N'2019-12-27 23:15:38.0000000', NULL, N'2020-01-10 16:07:10.0000000', N'0', NULL, NULL, N'1', NULL)
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'bbeb04782dac8fd6348e6c72c77d951f', N'23445-副本', N'逮捕证-副本', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"bbeb04782dac8fd6348e6c72c77d951f","printElHeight":1108,"rows":{"0":{"cells":{"2":{"text":"","merge":[0,9],"style":324},"12":{}},"isDrag":true,"height":88},"1":{"cells":{"0":{"style":324},"1":{"style":408,"merge":[0,13],"text":"兰州市经济侦查大队"},"15":{"style":83}},"height":128},"2":{"cells":{"0":{"style":324},"1":{"style":89,"merge":[0,13],"text":"逮捕令"},"15":{"style":83}},"height":41},"3":{"cells":{"0":{"style":324},"1":{"style":409,"merge":[0,12],"text":"第123459663号"},"2":{"style":397},"3":{"style":397},"4":{"style":397},"5":{"style":397},"6":{"style":397},"7":{"style":397},"8":{"style":397},"9":{"style":397},"10":{"style":397},"11":{"style":397},"12":{"style":397},"13":{"style":397},"14":{"style":84}},"height":60},"4":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"text":"                                 根据《中华人民共和国刑事诉讼法》第七十八条之规定，","style":341,"merge":[0,11]},"14":{"style":84}},"height":43},"5":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":341,"text":"经","merge":[0,1]},"3":{"style":343},"4":{"text":"#{pdaibu.pname}","style":342,"merge":[0,9]},"14":{"style":84}},"isDrag":true,"height":47},"6":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":344,"text":"","merge":[0,2]},"5":{"merge":[0,3],"text":"批准，兹由我局对涉嫌","style":338},"9":{"style":347,"text":"#{pdaibu.shiqing}","merge":[0,4]},"14":{"style":84}},"height":49},"7":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":341,"text":"的"},"3":{"style":345,"merge":[0,1],"text":"#{pdaibu.fname}"},"4":{"style":346},"5":{"text":"(性别","style":343},"6":{"text":"#{pdaibu.fsex}","style":370,"merge":[0,1]},"7":{"style":338},"8":{"style":346,"text":"出生日期"},"9":{"style":345,"text":"#{pdaibu.cdata}","merge":[0,4]},"14":{"style":84}},"height":51},"8":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":345,"merge":[0,7],"text":"#{pdaibu.zhuzhi}"},"3":{"style":370},"4":{"style":370},"5":{"style":370},"6":{"style":370},"7":{"style":370},"8":{"style":370},"9":{"style":370},"10":{"style":341,"text":"执行逮捕，送兰州","merge":[0,3]},"14":{"style":84}},"height":51},"9":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":341,"merge":[0,6],"text":"市经济侦查大队羁押。"},"3":{"style":350},"4":{"style":350},"5":{"style":350},"6":{"style":349},"7":{"style":349},"8":{"style":350},"9":{"style":341,"text":""},"10":{"style":341,"merge":[5,1]},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":57},"10":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":343},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":338},"7":{"style":338},"8":{"style":338},"9":{"text":"","style":338},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":61},"11":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":337,"text":""},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":376,"merge":[0,2]},"7":{"style":302},"8":{"style":302},"9":{"text":"","style":338},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":83},"12":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"merge":[0,6],"style":338},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":338},"7":{"style":338},"8":{"style":338},"9":{"style":338,"virtual":"9QtMOGnhMW4i0iYx"},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":14},"13":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":351,"text":"","merge":[0,5]},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":338},"7":{"style":338},"8":{"style":380,"text":"公安局印"},"9":{"style":352,"text":""},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":89},"14":{"cells":{"0":{"style":324},"1":{"style":83},"2":{"style":338},"3":{"style":338},"4":{"style":338},"5":{"style":338},"6":{"style":338},"7":{"style":338},"8":{"style":338},"9":{"style":338},"10":{"style":338},"11":{"style":338},"12":{"style":324},"13":{"style":324},"14":{"style":84}},"height":21},"15":{"cells":{"0":{"style":324},"1":{"style":77},"2":{"style":375,"text":""},"3":{"style":78},"4":{"style":78},"5":{"style":78},"6":{"style":379,"merge":[0,6],"text":"                        #{pdaibu.gdata}"},"7":{"style":39},"8":{"style":39},"9":{"style":39},"10":{"style":39},"11":{"style":39},"12":{"style":39},"13":{"style":78},"14":{"style":79}},"height":201},"16":{"cells":{"2":{"style":283},"3":{"style":283},"4":{"style":283},"5":{"style":283},"8":{"style":283},"9":{"style":283},"10":{"style":283}},"height":23},"17":{"cells":{"2":{"style":324},"3":{"style":324},"4":{"style":324},"5":{"style":324},"8":{"text":""},"9":{"style":324},"10":{"style":324}},"isDrag":true},"18":{"cells":{"5":{"text":""}},"isDrag":true},"19":{"cells":{"9":{"text":""}},"isDrag":true},"len":99,"-1":{"cells":{"1":{"text":"#{daibu.fdata}"},"-1":{"text":"#{pdaibu.shiqing}"}},"isDrag":true}},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":566,"name":"sheet1","autofilter":{},"styles":[{"align":"left"},{"align":"left","underline":true},{"underline":true},{"align":"center","underline":true},{"align":"center"},{"align":"center","underline":false},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]}},{"align":"left","border":{"bottom":["thin","#000"]}},{"align":"left","font":{"size":16}},{"font":{"size":16}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16}},{"align":"center","underline":false,"font":{"size":16}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16}},{"align":"left","font":{"size":16,"bold":true}},{"font":{"size":16,"bold":true}},{"align":"center","underline":false,"font":{"size":16,"bold":true}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":true}},{"font":{"bold":true}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":true}},{"align":"left","font":{"size":16,"bold":false}},{"font":{"size":16,"bold":false}},{"align":"center","underline":false,"font":{"size":16,"bold":false}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false}},{"font":{"bold":false}},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false}},{"align":"left","font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":16,"bold":false},"color":"#3f3f3f"},{"font":{"size":12}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12,"bold":false},"color":"#3f3f3f","align":"center"},{"font":{"size":12},"align":"center"},{"font":{"size":8}},{"font":{"size":10}},{"font":{"size":10,"bold":true}},{"font":{"size":10,"bold":true},"align":"center"},{"font":{"size":18,"bold":true},"align":"center"},{"align":"center","font":{"size":18}},{"font":{"size":16,"bold":true},"align":"center"},{"align":"center","font":{"size":16}},{"font":{"size":12},"valign":"bottom"},{"font":{"size":12},"valign":"middle"},{"font":{"size":12},"border":{"top":["thin","#000"],"left":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thin","#000"]}},{"border":{"top":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":12},"border":{"left":["thin","#000"]}},{"font":{"size":12},"border":{"right":["thin","#000"]}},{"font":{"size":12},"valign":"middle","border":{"right":["thin","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thin","#000"],"right":["thin","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thin","#000"]}},{"align":"center","underline":false,"border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"right":["thin","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"]}},{"border":{"bottom":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]}},{"font":{"size":12},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12},"border":{"left":["thick","#000"]}},{"font":{"size":12},"border":{"right":["thick","#000"]}},{"font":{"size":12},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"center","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]}},{"border":{"bottom":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]}},{"align":"center","font":{"size":12,"bold":false},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"border":{"left":["thin","#000"]}},{"border":{"left":["dashed","#000"]}},{"border":{"left":["thick","#000"]}},{"border":{"right":["thick","#000"]}},{"align":"left","border":{"bottom":["thick","#000"]},"font":{"size":12,"bold":false},"color":"#3f3f3f"},{"font":{"size":12},"border":{"left":["thick","#000"]},"align":"center"},{"font":{"size":12,"bold":true},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true}},{"font":{"size":14,"bold":true},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Arial"}},{"font":{"size":14,"bold":true,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Arial"}},{"font":{"name":"Arial"}},{"font":{"size":12,"name":"Arial"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Arial"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Arial"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Arial"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Arial"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Source Sans Pro"}},{"font":{"size":14,"bold":true,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Source Sans Pro"}},{"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Source Sans Pro"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Source Sans Pro"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Source Sans Pro"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Source Sans Pro"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Comic Sans MS"}},{"font":{"size":14,"bold":true,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Comic Sans MS"}},{"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Comic Sans MS"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Comic Sans MS"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Comic Sans MS"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Comic Sans MS"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"]},"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"name":"Courier New"}},{"font":{"size":14,"bold":true,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center"},{"align":"center","font":{"bold":true,"size":14,"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Courier New"}},{"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"valign":"middle","border":{"right":["thick","#000"]}},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#3f3f3f"},{"font":{"size":12,"name":"Courier New"},"border":{"right":["thick","#000"]}},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Courier New"}},{"border":{"bottom":["thick","#000"]},"font":{"name":"Courier New"}},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Courier New"}},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Courier New"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"color":"#000100"},{"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Courier New"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Courier New"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Arial"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Arial"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"color":"#000100"},{"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Arial"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Arial"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Helvetica"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"color":"#000100"},{"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Helvetica"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Helvetica"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"],"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"]},"color":"#000100"},{"border":{"top":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"top":["thick","#000"],"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"name":"Lato"},"color":"#000100"},{"font":{"size":14,"bold":true,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100"},{"align":"center","font":{"bold":true,"size":14,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"color":"#000100"},{"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","align":"center"},{"align":"center","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"left","border":{"right":["thick","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"right":["thick","#000"]},"color":"#000100"},{"border":{"bottom":["thick","#000"],"left":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"border":{"bottom":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"border":{"bottom":["thick","#000"],"right":["thick","#000"]},"font":{"name":"Lato"},"color":"#000100"},{"font":{"size":10,"name":"Lato"},"valign":"middle","border":{"right":["thick","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"center"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"color":"#000100","align":"right"},{"align":"right"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"left","color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"left","color":"#000100","valign":"top"},{"align":"left","valign":"top"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"left","color":"#000100","valign":"middle"},{"align":"left","valign":"middle"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"left","color":"#000100","valign":"bottom"},{"align":"left","valign":"bottom"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"center","color":"#000100","valign":"bottom"},{"font":{"size":12,"name":"Lato"},"border":{"left":["thick","#000"]},"align":"right","color":"#000100","valign":"bottom"},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","color":"#000100"},{"font":{"size":14,"bold":true,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","color":"#000100"},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"right","color":"#000100","valign":"bottom"},{"align":"left","font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","underline":false,"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"name":"Lato"},"color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100","align":"right"},{"font":{"size":12,"name":"Lato","bold":true},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"color":"#000100"},{"border":{"right":["thin","#000"]}},{},{"font":{"size":12,"name":"Lato"},"border":{"bottom":["thin","#000"]},"color":"#000100","align":"right"},{"font":{"size":12,"name":"Lato","bold":true},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"align":"right","color":"#000100","valign":"bottom"},{"align":"center","underline":false,"font":{"size":12,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":12},"align":"center","border":{"bottom":["thin","#000"]}},{"align":"left","font":{"name":"Lato"},"color":"#000100"},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"right"},{"border":{"bottom":["thin","#000"]},"font":{"size":12}},{"align":"center","font":{"bold":false}},{"align":"center","font":{"bold":false,"size":12}},{"align":"center","font":{"bold":false,"size":12},"border":{"bottom":["thin","#000"]}},{"align":"center","valign":"top"},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center"},{"font":{"size":14}},{"align":"center","font":{"bold":true,"size":16,"name":"Lato"},"color":"#000100"},{"font":{"size":14,"name":"Lato"},"align":"right","color":"#000100","valign":"bottom"},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"center","font":{"bold":false,"size":14},"border":{"bottom":["thin","#000"]}},{"font":{"name":"Lato","size":14},"color":"#000100"},{"align":"left","border":{"bottom":["thin","#000"]},"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"align":"center","border":{"bottom":["thin","#000"]},"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","align":"center"},{"font":{"size":14},"align":"center","border":{"bottom":["thin","#000"]}},{"border":{"bottom":["thin","#000"]},"font":{"size":14}},{"align":"left","font":{"size":14}},{"align":"left","font":{"name":"Lato","size":14},"color":"#000100"},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"right"},{"align":"left","valign":"top","font":{"size":14}},{"border":{"top":["thick","#000"],"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"center","font":{"bold":true,"size":16,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"align":"right","color":"#000100","valign":"bottom","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"],"right":["thick","#000"]}},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","border":{"left":["thick","#000"]}},{"align":"center","font":{"bold":false,"size":14},"border":{"right":["thick","#000"]}},{"align":"center","border":{"right":["thick","#000"]},"font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100"},{"border":{"right":["thick","#000"]},"font":{"size":14}},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","border":{"right":["thick","#000"]}},{"font":{"name":"Lato","size":14},"color":"#000100","border":{"left":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center","border":{"left":["thick","#000"]}},{"font":{"size":14},"border":{"left":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"right","border":{"left":["thick","#000"]}},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"right","border":{"bottom":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":14},"border":{"bottom":["thick","#000"]}},{"align":"center","font":{"bold":false,"size":14}},{"font":{"size":14},"align":"center"},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center","border":{"top":["thick","#000"],"left":["thick","#000"],"right":["thick","#000"]}},{"border":{"top":["thick","#000"],"left":["thick","#000"]}},{"font":{"size":14,"name":"Lato"},"color":"#000100","align":"center","border":{"top":["thick","#000"]}},{"border":{"top":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":12,"name":"Lato"},"color":"#000100","align":"right","border":{"bottom":["thick","#000"]}},{"font":{"size":14},"align":"right"},{"border":{"bottom":["thick","#000"]},"font":{"size":12}},{"font":{"size":14},"border":{"bottom":["thick","#000"]},"align":"center"},{"border":{"bottom":["thick","#000"]},"font":{"size":12},"align":"center"},{"align":"left","valign":"middle","font":{"size":14}},{"border":{"top":["thick","#000"]},"font":{"size":24}},{"font":{"size":24}},{"border":{"top":["thick","#000"]},"font":{"size":22}},{"font":{"size":22}},{"border":{"top":["thick","#000"]},"font":{"size":18}},{"font":{"size":18}},{"border":{"top":["thick","#000"]},"font":{"size":18,"bold":true}},{"font":{"size":18,"bold":true}},{"border":{"top":["thick","#000"]},"font":{"size":18,"bold":true},"align":"center"},{"border":{"top":["thick","#000"]},"font":{"size":18,"bold":false},"align":"center"},{"font":{"size":18,"bold":false},"align":"center"},{"font":{"size":14,"bold":true}},{"border":{"top":["thick","#000"]},"font":{"size":18,"bold":false},"align":"center","valign":"bottom"},{"font":{"size":18,"bold":false},"align":"center","valign":"bottom"},{"valign":"bottom"},{"valign":"bottom","align":"right"},{"valign":"bottom","align":"right","font":{"size":14}},{"font":{"size":18,"bold":false},"align":"center","valign":"bottom","border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","font":{"bold":true,"size":14},"border":{"left":["thin","#000"],"right":["thin","#000"]}},{"valign":"bottom","align":"right","font":{"size":14},"border":{"left":["thin","#000"],"right":["thin","#000"]}},{"align":"left","font":{"size":14,"bold":false,"name":"Lato"},"color":"#000100","border":{"right":["thin","#000"]}},{"align":"center","font":{"bold":false,"size":14},"border":{"right":["thin","#000"]}},{"font":{"size":14},"align":"center","border":{"right":["thin","#000"]}},{"font":{"size":18,"bold":false},"align":"center","valign":"bottom","border":{"top":["thick","#000"],"left":["thick","#000"],"right":["thick","#000"]}},{"align":"center","font":{"bold":true,"size":14},"border":{"left":["thick","#000"],"right":["thick","#000"]}},{"valign":"bottom","align":"right","font":{"size":14},"border":{"left":["thick","#000"],"right":["thick","#000"]}},{"font":{"size":14},"align":"center","border":{"right":["thick","#000"]}},{"font":{"size":18,"bold":false},"align":"center","valign":"bottom","border":{"top":["thick","#000"],"left":["thick","#000"]}},{"valign":"bottom","align":"right","font":{"size":14},"border":{"left":["thick","#000"]}}],"validations":[],"cols":{"0":{"width":46},"1":{"width":38},"2":{"width":27},"3":{"width":6},"4":{"width":87},"5":{"width":51},"6":{"width":68},"7":{"width":1},"8":{"width":78},"9":{"width":163},"10":{"width":1},"11":{"width":60},"12":{"width":45},"13":{"width":49},"14":{"width":34},"len":31},"merges":["D8:E8","C6:D6","C10:I10","G8:H8","C9:J9","C1:L1","K10:L15","C13:I13","C14:H14","F7:I7","G12:I12","G16:M16","B4:N4","C5:N5","E6:N6","J7:N7","C7:E7","J8:N8","K9:N9","B2:O2","B3:O3"],"imgList":[{"row":12,"col":9,"width":"127","height":"131","src":"https://static.jeecg.com/designreport/images/1111_1596625522803.jpeg","layer_id":"9QtMOGnhMW4i0iYx","offsetX":0,"offsetY":0,"virtualCellRange":[[12,9]]}]}', N'', N'', N'admin', N'2020-07-10 13:38:40.0000000', N'jeecg', N'2020-12-07 16:51:20.0000000', N'0', NULL, NULL, N'0', N'6')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'd119966ae22463625e0fc9b94082f753', N'3455r', N'大东电器出货单', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":863,"excel_config_id":"d119966ae22463625e0fc9b94082f753","printElHeight":1047,"rows":{"0":{"cells":{"3":{"text":"大东电器出货单","merge":[0,2],"style":2}},"height":54},"1":{"cells":{"0":{"text":""}},"isDrag":true},"2":{"cells":{"0":{"text":"制单日期：123","merge":[0,1],"style":7},"1":{"style":7},"2":{"text":"客户：张三丰","style":9,"merge":[0,1]},"3":{"style":9},"4":{"text":"地址：北京市朝阳区奥林佳泰大厦","style":7,"merge":[0,2]},"5":{"style":7},"6":{"style":7},"7":{"text":"备注：轻拿轻放","style":11}}},"3":{"cells":{"0":{"text":"序号","style":10},"1":{"text":"货品编码","style":10},"2":{"text":"货品名称","style":10},"3":{"text":"单位","style":10},"4":{"text":"数量","style":10},"5":{"text":"单价","style":10},"6":{"text":"返利","style":10},"7":{"text":"返利后金额","style":10},"8":{"text":"备注","style":10}}},"4":{"cells":{"0":{"style":4,"text":"#{dadong.id}"},"1":{"style":4,"text":"#{dadong.hnum}"},"2":{"style":4,"text":"#{dadong.hname}"},"3":{"style":4,"text":"#{dadong.danwei}"},"4":{"style":4,"text":"#{dadong.num}"},"5":{"style":4,"text":"#{dadong.danjia}"},"6":{"style":4,"text":"#{dadong.fanli}"},"7":{"text":"#{dadong.fanli}","style":3},"8":{"style":4,"text":"#{dadong.beizhu}"}}},"5":{"cells":{"6":{"text":""}},"isDrag":true},"6":{"cells":{"0":{"style":9},"1":{"style":9},"2":{"style":9},"3":{"style":9},"4":{"style":9},"5":{"style":9},"6":{"style":9},"7":{"style":9},"8":{"style":9}}},"len":69},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":860,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","font":{"size":18}},{"align":"center","font":{"size":18,"bold":true}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":true}},{"font":{"bold":true}},{"font":{"bold":false}},{"font":{"bold":true},"align":"center"},{"font":{"bold":false},"align":"center"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","font":{"bold":false}},{}],"validations":[],"cols":{"0":{"width":60},"len":26},"merges":["A3:B3","G5:I5","G5:I5","C3:D3","E3:G3","D1:F1"]}', N'', N'', N'admin', N'2020-06-16 14:45:32.0000000', N'admin', N'2020-12-07 16:54:20.0000000', N'0', NULL, NULL, N'1', N'10')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'd21a83d3299a0fb32ef5010e38ba2646', N'3456', N'考勤图形表', N'', NULL, N'printinfo', N'{"chartList":[{"row":14,"col":1,"width":"790","height":"374","config":"{\"color\":[\"#3398DB\"],\"title\":{\"text\":\"出勤情况\"},\"tooltip\":{},\"legend\":{\"data\":[\"名称\"]},\"xAxis\":{\"data\":[\"迟到率\",\"补卡率\",\"矿工率\",\"早退率\",\"外勤率\",\"出差率\",\"请假率\"]},\"yAxis\":{},\"series\":[{\"name\":\"出勤率（%）\",\"type\":\"bar\",\"data\":[5,20,6,10,10,20,10]}]}","url":"","extData":{},"layer_id":"Ks2xj4OdhqQqHQNj","offsetX":0,"offsetY":0,"virtualCellRange":[[14,1],[14,2],[14,3],[14,4],[14,5],[14,6],[14,7],[14,8],[14,9],[14,10],[14,11],[14,12]]}],"area":false,"printElWidth":915,"excel_config_id":"d21a83d3299a0fb32ef5010e38ba2646","printElHeight":1047,"rows":{"0":{"cells":{"1":{"text":"员工考勤图形表","merge":[0,11],"style":2},"2":{"style":2},"3":{"style":2},"4":{"style":2},"5":{"style":2},"6":{"style":2},"7":{"style":2},"8":{"style":2},"9":{"style":2},"10":{"style":2},"11":{"style":2},"12":{"style":2}},"height":43},"1":{"cells":{"1":{"merge":[0,11],"text":"考勤时间：2020/5/1  -  2020/5/31","style":5},"2":{"style":5},"3":{"style":5},"4":{"style":5},"5":{"style":5},"6":{"style":5},"7":{"style":5},"8":{"style":5},"9":{"style":5},"10":{"style":5},"11":{"style":5},"12":{"style":5}}},"2":{"cells":{"1":{"text":"编号","style":6},"2":{"text":"姓名","style":6},"3":{"text":"工作天数","style":6},"4":{"text":"正常打卡","style":6},"5":{"text":"迟到天数","style":6},"6":{"text":"早退天数","style":6},"7":{"text":"矿工天数","style":6},"8":{"text":"补卡次数","style":6},"9":{"text":"外勤天数","style":6},"10":{"text":"出差天数","style":6},"11":{"text":"请假次数","style":6},"12":{"text":"缺卡次数","style":6}}},"3":{"cells":{"1":{"text":"#{kaoqin.id}","style":6},"2":{"style":6,"text":"#{kaoqin.name}"},"3":{"style":6,"text":"#{kaoqin.day}"},"4":{"style":6,"text":"#{kaoqin.zcdaka}"},"5":{"style":6,"text":"#{kaoqin.cdday}"},"6":{"style":6,"text":"#{kaoqin.ztday}"},"7":{"style":6,"text":"#{kaoqin.kgday}"},"8":{"style":6,"text":"#{kaoqin.bcnum}"},"9":{"style":6,"text":"#{kaoqin.wqday}"},"10":{"style":6,"text":"#{kaoqin.ccday}"},"11":{"style":6,"text":"#{kaoqin.qjnum}"},"12":{"style":6,"text":"#{kaoqin.qknum}"}}},"14":{"cells":{"1":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"2":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"3":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"4":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"5":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"6":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"7":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"8":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"9":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"10":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"11":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"},"12":{"text":" ","virtual":"Ks2xj4OdhqQqHQNj"}}},"len":82},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":853,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","font":{"size":16}},{"align":"center","font":{"size":16,"bold":true}},{"color":"#bfbfbf"},{"color":"#bfbfbf","align":"center"},{"color":"#a5a5a5","align":"center"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{}],"validations":[],"cols":{"0":{"width":60},"1":{"width":70},"2":{"width":60},"3":{"width":63},"4":{"width":60},"5":{"width":60},"6":{"width":65},"7":{"width":66},"8":{"width":61},"9":{"width":61},"10":{"width":61},"11":{"width":66},"13":{"width":60},"len":27},"merges":["B1:M1","B2:M2"]}', N'', N'', N'admin', N'2020-06-17 15:29:34.0000000', N'admin', N'2020-12-07 16:52:43.0000000', N'0', NULL, NULL, N'1', N'4')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'dfbc0b68722bed153cc0a5ec9b856ccf', N'copy45566339922', N'采购单副本9922', N'', NULL, N'printinfo', N'{"area":{"sri":27,"sci":7,"eri":27,"eci":7,"width":100,"height":25},"printElWidth":794,"excel_config_id":"dfbc0b68722bed153cc0a5ec9b856ccf","printElHeight":1047,"rows":{"0":{"cells":{"1":{"text":"采购单","style":10,"merge":[0,6]}},"height":99},"1":{"cells":{"1":{"text":"产品名称","style":12},"2":{"text":"产品数量","style":12},"3":{"text":"单价","style":12},"4":{"text":"库存量","style":12},"5":{"text":"库存总值","style":12},"6":{"text":"订购量","style":12},"7":{"text":"二次订购量","style":12}},"height":39},"2":{"cells":{"1":{"style":11,"text":"#{caigou.cname}"},"2":{"style":11,"text":"#{caigou.cnum}"},"3":{"style":11,"text":"#{caigou.cprice}"},"4":{"style":11,"text":"#{caigou.ctotal}"},"5":{"style":11,"text":"#{caigou.tp}"},"6":{"style":11,"text":"#{caigou.dtotal}"},"7":{"style":11,"text":"#{caigou.ztotal}"}},"height":29},"5":{"cells":{"1":{"text":""}},"isDrag":true},"6":{"cells":{"1":{"text":""}},"isDrag":true},"7":{"cells":{"1":{"text":""},"2":{"text":""}},"isDrag":true},"len":100},"dbexps":[],"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":681,"background":false,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","color":"#000100"},{"align":"center","color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]}},{"border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]},"bgcolor":"#01b0f1"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#01b0f1"},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]}},{"align":"center","font":{"size":18}},{"align":"center","font":{"size":18,"bold":true}},{"align":"center","font":{"size":16,"bold":true}},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"align":"center"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#9cc2e6"}],"validations":[],"cols":{"0":{"width":93},"1":{"width":107},"2":{"width":60},"3":{"width":78},"4":{"width":77},"5":{"width":84},"6":{"width":82},"len":26},"merges":["B1:H1"]}', N'', N'', N'admin', N'2020-08-07 09:39:48.0000000', N'admin', N'2020-12-07 16:51:10.0000000', N'0', NULL, NULL, N'0', N'21')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'e5692be4d9a844511366fbb4ef575a31', N'员工', N'员工信息', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"e5692be4d9a844511366fbb4ef575a31","printElHeight":1047,"rows":{"1":{"cells":{"0":{"merge":[0,6],"text":"员工信息登记表","style":3}},"height":41},"2":{"cells":{"0":{"text":"编号:","style":7},"1":{"text":"#{employee.num}","merge":[0,3],"style":13},"2":{"style":12},"3":{"style":12},"4":{"style":12},"5":{"text":"填写日期:","style":7},"6":{"text":"#{employee.create_time}","style":4}},"isDrag":true},"3":{"cells":{"0":{"text":"姓名:","style":7},"1":{"text":"#{employee.name}","style":4},"2":{"text":"性别:","style":7},"3":{"text":"#{employee.sex}","style":4},"4":{"text":"出生年月:","style":7},"5":{"text":"#{employee.birthday}","style":4},"6":{"style":7,"merge":[4,0],"virtual":"rcDfGtIWejp4V0hf"}},"isDrag":true},"4":{"cells":{"0":{"text":"民族:","style":7},"1":{"text":"#{employee.nation}","style":4},"2":{"text":"政治面貌:","style":7},"3":{"text":"#{employee.political}","style":4},"4":{"text":"籍贯:","style":7},"5":{"text":"#{employee.native_place}","style":4}},"isDrag":true},"5":{"cells":{"0":{"text":"身高(cm):","style":7},"1":{"text":"#{employee.height}","style":4},"2":{"text":"体重(kg):","style":7},"3":{"text":"#{employee.weight}","style":4},"4":{"text":"健康状况:","style":7},"5":{"text":"#{employee.health}","style":4}},"isDrag":true},"6":{"cells":{"0":{"text":"身份证号:","style":7},"1":{"text":"#{employee.id_card}","merge":[0,2],"style":4},"4":{"text":"学历:","style":7},"5":{"text":"#{employee.education}","style":4}},"isDrag":true},"7":{"cells":{"0":{"text":"毕业学校:","style":7},"1":{"text":"#{employee.school}","merge":[0,2],"style":4},"4":{"text":"专业:","style":7},"5":{"text":"#{employee.major}","style":4}},"isDrag":true},"8":{"cells":{"0":{"text":"联系地址:","style":7},"1":{"text":"#{employee.address}","merge":[0,2],"style":4},"4":{"text":"邮编:","style":7},"5":{"text":"#{employee.zip_code}","merge":[0,1],"style":4}},"isDrag":true},"9":{"cells":{"0":{"text":"Email:","style":7},"1":{"text":"#{employee.email}","merge":[0,2],"style":4},"4":{"text":"手机号:","style":7},"5":{"text":"#{employee.phone}","merge":[0,1],"style":4}},"isDrag":true},"10":{"cells":{"0":{"text":"外语语种:","style":7},"1":{"text":"#{employee.foreign_language}","style":4},"2":{"text":"外语水平:","style":7},"3":{"text":"#{employee.foreign_language_level}","style":4},"4":{"text":"计算机水平:","style":7},"5":{"text":"#{employee.computer_level}","merge":[0,1],"style":4}},"isDrag":true},"11":{"cells":{"0":{"text":"毕业时间:","style":7},"1":{"text":"#{employee.graduation_time}","style":4},"2":{"text":"到职时间:","style":7},"3":{"text":"#{employee.arrival_time}","style":4},"4":{"text":"职称:","style":7},"5":{"text":"#{employee.positional_titles}","merge":[0,1],"style":4}},"isDrag":true},"12":{"cells":{"0":{"text":"教育经历:","style":9,"merge":[0,6]},"1":{"style":10},"2":{"style":10},"3":{"style":10},"4":{"style":10},"5":{"style":10},"6":{"style":10}}},"13":{"cells":{"0":{"text":"#{employee.education_experience}","merge":[2,6],"style":4}},"isDrag":true},"16":{"cells":{"0":{"text":"工作经历:","style":9,"merge":[0,6]},"1":{"style":10},"2":{"style":10},"3":{"style":10},"4":{"style":10},"5":{"style":10},"6":{"style":10}}},"17":{"cells":{"0":{"text":"#{employee.work_experience}","style":4,"merge":[2,6]}},"isDrag":true},"len":104},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":789,"name":"sheet1","autofilter":{},"styles":[{"font":{"size":16}},{"font":{"size":16},"align":"center"},{"font":{"size":16,"bold":true},"align":"center"},{"font":{"size":16,"bold":true},"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true}},{"font":{"bold":true}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"right"},{"font":{"bold":true},"align":"right"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"left"},{"align":"left"},{"font":{"italic":true}},{"font":{"italic":false}},{"font":{"italic":false},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"right"},{"border":{"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"right"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"right"}],"validations":[],"cols":{"0":{"width":66},"1":{"width":152},"2":{"width":65},"3":{"width":137},"4":{"width":78},"5":{"width":142},"6":{"width":149},"len":23},"merges":["G4:G8","G3","A13:G13","A17:G17","A2:G2","G4:G8","B3:E3","B7:D7","B8:D8","B9:D9","B10:D10","F9:G9","F10:G10","F11:G11","F12:G12","A14:G16","A18:G20"],"imgList":[{"row":3,"col":6,"width":"130","height":"77","src":"https://static.jeecg.com/designreport/images/海贼_1596607163165.jpeg","layer_id":"rcDfGtIWejp4V0hf","offsetX":0,"offsetY":0,"virtualCellRange":[[3,6]]}]}', N'', N'', N'admin', N'2020-02-04 12:05:08.0000000', N'admin', N'2020-12-07 16:53:07.0000000', N'0', NULL, NULL, N'1', N'4')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'e7c7dd7993ed58fa7fa810178b0b7592', N'员工-副本', N'员工信息-副本', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"e7c7dd7993ed58fa7fa810178b0b7592","printElHeight":1047,"rows":{"1":{"cells":{"0":{"merge":[0,6],"text":"员工信息登记表","style":3}},"height":41},"2":{"cells":{"0":{"text":"编号:","style":7},"1":{"text":"#{employee.num}","merge":[0,3],"style":13},"2":{"style":12},"3":{"style":12},"4":{"style":12},"5":{"text":"填写日期:","style":7},"6":{"text":"#{employee.create_time}","style":4}},"isDrag":true},"3":{"cells":{"0":{"text":"姓名:","style":7},"1":{"text":"#{employee.name}","style":4},"2":{"text":"性别:","style":7},"3":{"text":"#{employee.sex}","style":4},"4":{"text":"出生年月:","style":7},"5":{"text":"#{employee.birthday}","style":4},"6":{"style":7,"merge":[4,0],"virtual":"LQ2MNV2SpW8A47Gh"}},"isDrag":true},"4":{"cells":{"0":{"text":"民族:","style":7},"1":{"text":"#{employee.nation}","style":4},"2":{"text":"政治面貌:","style":7},"3":{"text":"#{employee.political}","style":4},"4":{"text":"籍贯:","style":7},"5":{"text":"#{employee.native_place}","style":4}},"isDrag":true},"5":{"cells":{"0":{"text":"身高(cm):","style":7},"1":{"text":"#{employee.height}","style":4},"2":{"text":"体重(kg):","style":7},"3":{"text":"#{employee.weight}","style":4},"4":{"text":"健康状况:","style":7},"5":{"text":"#{employee.health}","style":4}},"isDrag":true},"6":{"cells":{"0":{"text":"身份证号:","style":7},"1":{"text":"#{employee.id_card}","merge":[0,2],"style":4},"4":{"text":"学历:","style":7},"5":{"text":"#{employee.education}","style":4}},"isDrag":true},"7":{"cells":{"0":{"text":"毕业学校:","style":7},"1":{"text":"#{employee.school}","merge":[0,2],"style":4},"4":{"text":"专业:","style":7},"5":{"text":"#{employee.major}","style":4}},"isDrag":true},"8":{"cells":{"0":{"text":"联系地址:","style":7},"1":{"text":"#{employee.address}","merge":[0,2],"style":4},"4":{"text":"邮编:","style":7},"5":{"text":"#{employee.zip_code}","merge":[0,1],"style":4}},"isDrag":true},"9":{"cells":{"0":{"text":"Email:","style":7},"1":{"text":"#{employee.email}","merge":[0,2],"style":4},"4":{"text":"手机号:","style":7},"5":{"text":"#{employee.phone}","merge":[0,1],"style":4}},"isDrag":true},"10":{"cells":{"0":{"text":"外语语种:","style":7},"1":{"text":"#{employee.foreign_language}","style":4},"2":{"text":"外语水平:","style":7},"3":{"text":"#{employee.foreign_language_level}","style":4},"4":{"text":"计算机水平:","style":7},"5":{"text":"#{employee.computer_level}","merge":[0,1],"style":4}},"isDrag":true},"11":{"cells":{"0":{"text":"毕业时间:","style":7},"1":{"text":"#{employee.graduation_time}","style":4},"2":{"text":"到职时间:","style":7},"3":{"text":"#{employee.arrival_time}","style":4},"4":{"text":"职称:","style":7},"5":{"text":"#{employee.positional_titles}","merge":[0,1],"style":4}},"isDrag":true},"12":{"cells":{"0":{"text":"教育经历:","style":9,"merge":[0,6]},"1":{"style":10},"2":{"style":10},"3":{"style":10},"4":{"style":10},"5":{"style":10},"6":{"style":10}}},"13":{"cells":{"0":{"text":"#{employee.education_experience}","merge":[2,6],"style":4}},"isDrag":true},"16":{"cells":{"0":{"text":"工作经历:","style":9,"merge":[0,6]},"1":{"style":10},"2":{"style":10},"3":{"style":10},"4":{"style":10},"5":{"style":10},"6":{"style":10}}},"17":{"cells":{"0":{"text":"#{employee.work_experience}","style":4,"merge":[2,6]}},"isDrag":true},"len":104},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":789,"name":"sheet1","autofilter":{},"styles":[{"font":{"size":16}},{"font":{"size":16},"align":"center"},{"font":{"size":16,"bold":true},"align":"center"},{"font":{"size":16,"bold":true},"align":"center","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true}},{"font":{"bold":true}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"right"},{"font":{"bold":true},"align":"right"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"left"},{"align":"left"},{"font":{"italic":true}},{"font":{"italic":false}},{"font":{"italic":false},"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"right"},{"border":{"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"right"},{"border":{"bottom":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"font":{"bold":true},"align":"right"}],"validations":[],"cols":{"0":{"width":66},"1":{"width":152},"2":{"width":65},"3":{"width":137},"4":{"width":78},"5":{"width":142},"6":{"width":149},"len":23},"merges":["G4:G8","G3","A13:G13","A17:G17","A2:G2","G4:G8","B3:E3","B7:D7","B8:D8","B9:D9","B10:D10","F9:G9","F10:G10","F11:G11","F12:G12","A14:G16","A18:G20"],"imgList":[{"row":3,"col":6,"width":"130","height":"77","src":"https://static.jeecg.com/designreport/images/海贼_1596607163165.jpeg","layer_id":"LQ2MNV2SpW8A47Gh","offsetX":0,"offsetY":0,"virtualCellRange":[[3,6]]}]}', N'', N'', N'admin', N'2020-02-04 12:05:08.0000000', N'jeecg', N'2020-12-07 16:51:22.0000000', N'0', NULL, NULL, N'0', N'7')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'ec41c1f05a37fd6de034cf244743aa8f', N'chukudan', N'出库单', N'', NULL, N'printinfo', N'{"area":{"sri":4,"sci":3,"eri":4,"eci":3,"width":216,"height":25},"printElWidth":794,"excel_config_id":"ec41c1f05a37fd6de034cf244743aa8f","printElHeight":1047,"rows":{"3":{"cells":{"2":{"text":"出差单号","style":1},"3":{"text":"#{chuku.apply_no}","style":0}},"isDrag":true},"4":{"cells":{"2":{"text":"出差项目","style":1},"3":{"text":"#{chuku.project_name}","style":0}},"isDrag":true},"5":{"cells":{"2":{"text":"出差人","style":1},"3":{"text":"#{chuku.apply_user_name}","style":0}},"isDrag":true},"len":98},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":516,"name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#e7e5e6"}],"validations":[],"cols":{"3":{"width":216},"len":26},"merges":[]}', N'', N'', N'admin', N'2020-02-06 15:16:01.0000000', N'admin', N'2020-11-05 17:55:09.0000000', N'1', NULL, NULL, N'0', N'6')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'f6ee801e8bdc28ba9d63f95dc65ccd79', N'4556633', N'采购单', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"f6ee801e8bdc28ba9d63f95dc65ccd79","printElHeight":1047,"rows":{"0":{"cells":{"1":{"text":"采购单","style":10,"merge":[0,6]}},"height":99},"1":{"cells":{"1":{"text":"产品名称","style":12},"2":{"text":"产品数量","style":12},"3":{"text":"单价","style":12},"4":{"text":"库存量","style":12},"5":{"text":"库存总值","style":12},"6":{"text":"订购量","style":12},"7":{"text":"二次订购量","style":12}},"height":39},"2":{"cells":{"1":{"style":11,"text":"#{caigou.cname}"},"2":{"style":11,"text":"#{caigou.cnum}"},"3":{"style":11,"text":"#{caigou.cprice}"},"4":{"style":11,"text":"#{caigou.ctotal}"},"5":{"style":11,"text":"#{caigou.tp}"},"6":{"style":11,"text":"#{caigou.dtotal}"},"7":{"style":11,"text":"#{caigou.ztotal}"}},"height":29},"5":{"cells":{"1":{"text":""}},"isDrag":true},"6":{"cells":{"1":{"text":""}},"isDrag":true},"7":{"cells":{"1":{"text":""},"2":{"text":""}},"isDrag":true},"len":100},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":681,"name":"sheet1","autofilter":{},"styles":[{"align":"center"},{"align":"center","color":"#000100"},{"align":"center","color":"#000100","border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]}},{"border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]}},{"align":"center","color":"#000100","border":{"bottom":["thin","#01b0f1"],"top":["thin","#01b0f1"],"left":["thin","#01b0f1"],"right":["thin","#01b0f1"]},"bgcolor":"#01b0f1"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#01b0f1"},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]}},{"align":"center","font":{"size":18}},{"align":"center","font":{"size":18,"bold":true}},{"align":"center","font":{"size":16,"bold":true}},{"border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"align":"center"},{"align":"center","color":"#000100","border":{"bottom":["thin","#5b9cd6"],"top":["thin","#5b9cd6"],"left":["thin","#5b9cd6"],"right":["thin","#5b9cd6"]},"bgcolor":"#9cc2e6"}],"validations":[],"cols":{"0":{"width":93},"1":{"width":107},"2":{"width":60},"3":{"width":78},"4":{"width":77},"5":{"width":84},"6":{"width":82},"len":26},"merges":["B1:H1"]}', N'', N'', N'admin', N'2020-07-28 16:54:44.0000000', N'admin', N'2020-12-07 16:51:32.0000000', N'0', NULL, NULL, N'1', N'4')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'fb6832ee46a0778c1fbd51c461809d0f', N'5589633', N'供电公司抢修单', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"fb6832ee46a0778c1fbd51c461809d0f","printElHeight":1047,"rows":{"0":{"height":9,"cells":{"0":{"style":1,"text":""},"1":{"style":2,"text":""},"2":{"style":3,"text":""},"3":{"style":4,"text":""},"4":{"style":5,"text":""},"5":{"style":6,"text":""},"6":{"style":7,"text":""},"7":{"style":8,"text":""},"8":{"style":9,"text":""}}},"1":{"height":9,"cells":{"0":{"style":10,"text":""},"1":{"style":11,"text":""},"2":{"merge":[1,5],"style":12,"text":" 供电企业大修、技改工程项目竣工报告"},"8":{"style":13,"text":""}}},"2":{"height":83,"cells":{"0":{"style":14,"text":""},"1":{"style":15,"text":""},"8":{"style":16,"text":""}}},"3":{"height":26,"cells":{"0":{"style":17,"text":""},"1":{"style":18,"text":"填报单位："},"2":{"style":19,"text":"#{qiangxiu.danwei}"},"3":{"style":20,"text":""},"4":{"style":21,"text":""},"5":{"style":22,"text":"填报日期："},"6":{"merge":[0,1],"style":23,"text":"#{qiangxiu.time}"},"8":{"style":24,"text":""}}},"4":{"height":30,"cells":{"0":{"style":25,"text":""},"1":{"style":26,"text":"填报名称："},"2":{"style":27,"text":"#{qiangxiu.ktime}","merge":[0,1]},"4":{"style":29,"text":""},"5":{"style":30,"text":"项目编号："},"6":{"style":31,"text":"#{qiangxiu.wtime}"},"7":{"style":32,"text":""},"8":{"style":33,"text":""}}},"5":{"height":24,"cells":{"0":{"style":34,"text":""},"1":{"style":35,"text":"项目批准核算"},"2":{"merge":[0,5],"style":36,"text":"#{qiangxiu.yusuan}"},"8":{"style":37,"text":""}}},"6":{"height":24,"cells":{"0":{"style":38,"text":""},"1":{"style":39,"text":"开工日期"},"2":{"merge":[0,2],"style":40,"text":"#{qiangxiu.ktime}"},"5":{"style":41,"text":"完工日期"},"6":{"merge":[0,1],"style":42,"text":"#{qiangxiu.wtime}"},"8":{"style":43,"text":""}}},"7":{"height":57,"cells":{"0":{"style":44,"text":""},"1":{"style":45,"text":"完工主要内容"},"2":{"style":46,"text":"#{qiangxiu.neirong}","merge":[0,5]},"8":{"style":47,"text":""}}},"8":{"height":46,"cells":{"0":{"style":48,"text":""},"1":{"style":49,"text":"形成能力"},"2":{"style":50,"text":"#{qiangxiu.nengli}","merge":[0,5]},"8":{"style":51,"text":""}}},"9":{"height":60,"cells":{"0":{"style":52,"text":""},"1":{"style":53,"text":"目标效益验收意见"},"2":{"style":54,"text":"#{qiangxiu.yijian}","merge":[0,5]},"8":{"style":55,"text":""}}},"10":{"height":21,"cells":{"0":{"style":56,"text":""},"1":{"merge":[0,4],"style":57,"text":""},"6":{"merge":[0,1],"style":58,"text":"#{qiangxiu.time1}"},"8":{"style":59,"text":""}}},"11":{"height":85,"cells":{"0":{"style":60,"text":""},"1":{"style":61,"text":"实施质量验收评价"},"2":{"style":62,"text":"#{qiangxiu.pingjia}","merge":[0,5]},"8":{"style":63,"text":""}}},"12":{"height":23,"cells":{"0":{"style":64,"text":""},"1":{"merge":[0,4],"style":65,"text":""},"6":{"merge":[0,1],"style":66,"text":"#{qiangxiu.time2}"},"8":{"style":67,"text":""}}},"13":{"height":54,"cells":{"0":{"style":68,"text":""},"1":{"style":69,"text":"验收总结"},"2":{"style":70,"text":"#{qiangxiu.zongjie}","merge":[0,5]},"8":{"style":71,"text":""}}},"14":{"height":28,"cells":{"0":{"style":72,"text":""},"1":{"style":73,"text":"责任单位意见"},"2":{"merge":[0,5],"style":74,"text":""},"8":{"style":75,"text":""}}},"15":{"height":24,"cells":{"0":{"style":76,"text":""},"1":{"style":77,"text":"责任单位审核人"},"2":{"merge":[0,2],"style":78,"text":"段建军"},"3":{"text":"#{qiangxiu.dshenhe}"},"5":{"style":79,"text":"日期"},"6":{"merge":[0,1],"style":80,"text":"#{qiangxiu.time3}"},"8":{"style":81,"text":""}}},"16":{"height":27,"cells":{"0":{"style":82,"text":""},"1":{"style":83,"text":"生技部审批意见"},"2":{"merge":[0,5],"style":84,"text":""},"8":{"style":85,"text":""}}},"17":{"height":381,"cells":{"0":{"style":86,"text":""},"1":{"style":87,"text":"生技部主任"},"2":{"merge":[0,2],"style":88,"text":"王肃"},"3":{"text":"#{qiangxiu.zhuren}"},"5":{"style":89,"text":"日期"},"6":{"merge":[0,1],"style":90,"text":"#{qiangxiu.time4}"},"8":{"style":91,"text":""}}},"18":{"height":30,"cells":{"0":{"style":92,"text":""},"1":{"style":93,"text":""},"2":{"style":94,"text":""},"3":{"style":95,"text":""},"4":{"style":96,"text":""},"5":{"style":97,"text":""},"6":{"style":98,"text":""},"7":{"style":99,"text":""},"8":{"style":100,"text":""}}},"len":79,"-1":{"cells":{"-1":{"text":"#{qiangxiu.danwei}"}},"isDrag":true}},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":645,"name":"sheet1","autofilter":{},"styles":{"1":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"2":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"3":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"4":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"5":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"6":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"7":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"8":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"9":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"10":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"11":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"12":{"bgcolor":"#FFFFFF","color":"#FF0000","font":{"size":17,"bold":true}},"13":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"14":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"15":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"16":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"17":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"18":{"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"19":{"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"20":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"21":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"22":{"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"23":{"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"24":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"25":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"26":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"27":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"28":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"29":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"30":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"31":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"32":{"border":{"bottom":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"33":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"34":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"35":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"36":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"37":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"38":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"39":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"40":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"41":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"42":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"43":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"44":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"45":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"46":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"47":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"48":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"49":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"50":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"51":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"52":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"53":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"54":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"55":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"56":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"57":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","align":"center","font":{"size":10}},"58":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"59":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"60":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"61":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"62":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"63":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"64":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"65":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","align":"center","font":{"size":10}},"66":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"67":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"68":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"69":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"70":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"71":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"72":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"73":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"74":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"75":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"76":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"77":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"78":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"79":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"80":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"81":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"82":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"83":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"84":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"85":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"86":{"border":{"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"87":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"88":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"89":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","align":"center","font":{"size":10}},"90":{"border":{"top":["thin","#000"],"left":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#000000","font":{"size":10}},"91":{"border":{"left":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"92":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"93":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"94":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"95":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"96":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"97":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"98":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"99":{"border":{"top":["thin","#000"]},"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}},"100":{"bgcolor":"#FFFFFF","color":"#333333","font":{"size":10}}},"validations":[],"cols":{"0":{"width":45},"7":{"width":90},"len":25},"merges":["PAAAAAABJ4","PAAAAAABJ1","PAAAAAABJ2","C5:D5","C8:H8","C9:H9","C12:H12","C10:H10","C14:H14"]}', N'', N'', N'admin', N'2020-07-17 15:45:25.0000000', N'admin', N'2020-12-07 16:52:06.0000000', N'0', NULL, NULL, N'1', N'4')
GO

INSERT INTO [dbo].[jimu_report]  VALUES (N'ff9bd143582a6dfed897ba8b6f93b175', N'56696', N'销售公司出库单', N'', NULL, N'printinfo', N'{"area":false,"printElWidth":794,"excel_config_id":"ff9bd143582a6dfed897ba8b6f93b175","printElHeight":1047,"rows":{"0":{"cells":{"0":{"style":11,"text":"医疗器械销售公司出货单","merge":[0,9]}},"height":101},"1":{"cells":{"0":{"text":"供货单位：","style":20,"merge":[0,1]},"1":{"style":30},"2":{"style":19,"text":"#{gongsi.gname}"},"3":{"style":19},"4":{"text":"供货日期：","style":19},"5":{"text":"#{gongsi.gdata}","merge":[0,1],"style":19},"6":{"style":19},"7":{"text":"编号：","style":20},"8":{"text":"#{gongsi.num}","merge":[0,1],"style":19},"9":{"style":19}},"isDrag":true},"2":{"cells":{"0":{"text":"行号","style":39},"1":{"text":"产品代码","style":39},"2":{"text":"产品名称","style":39},"3":{"text":"规格型号","style":39},"4":{"text":"单位","style":39},"5":{"text":"实发数量","style":39},"6":{"text":"销售单价(元)","style":39},"7":{"text":"折扣率（%）","style":39},"8":{"text":"销售金额(元)","style":39},"9":{"text":"备注","style":39}}},"3":{"cells":{"0":{"style":35,"text":"#{xiaoshou.id}"},"1":{"style":35,"text":"#{xiaoshou.hnum}"},"2":{"style":35,"text":"#{xiaoshou.hname}"},"3":{"style":35,"text":"#{xiaoshou.xinghao}"},"4":{"style":35,"text":"#{xiaoshou.danwei}"},"5":{"style":35,"text":"#{xiaoshou.num}"},"6":{"style":35,"text":"#{xiaoshou.danjia}"},"7":{"style":35,"text":"#{xiaoshou.zhekoulv}"},"8":{"style":35,"text":"#{xiaoshou.xiaoshoujine}"},"9":{"style":35,"text":"#{xiaoshou.xiaoshoujine}"}}},"4":{"cells":{"0":{"style":4},"1":{}},"isDrag":true},"len":84,"-1":{"cells":{"0":{"text":"#{gongsi.gdata}"},"-1":{"text":"#{gongsi.didian}"}},"isDrag":true}},"toolPrintSizeObj":{"printType":"A4","widthPx":794,"heightPx":1047},"dicts":[],"freeze":"A1","dataRectWidth":784,"name":"sheet1","autofilter":{},"styles":[{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center"},{"font":{"size":16}},{"font":{"size":16},"align":"center"},{"align":"center"},{"border":{"top":["thin","#000"],"bottom":["thin","#000"],"left":["thin","#000"]}},{"border":{"top":["thin","#000"],"bottom":["thin","#000"]}},{"border":{"top":["thin","#000"],"bottom":["thin","#000"],"right":["thin","#000"]}},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"right"},{"align":"right"},{"align":"center","font":{"size":14}},{"align":"center","font":{"size":14,"bold":true}},{"align":"center","font":{"size":9}},{"font":{"size":9}},{"align":"right","font":{"size":9}},{"align":"center","font":{"size":8}},{"font":{"size":8}},{"align":"right","font":{"size":8}},{"align":"center","font":{"size":8},"color":"#7f7f7f"},{"font":{"size":8},"color":"#7f7f7f"},{"align":"right","font":{"size":8},"color":"#7f7f7f"},{"align":"center","font":{"size":8},"color":"#3f3f3f"},{"font":{"size":8},"color":"#3f3f3f"},{"align":"right","font":{"size":8},"color":"#3f3f3f"},{"align":"center","font":{"size":8},"color":"#262626"},{"font":{"size":8},"color":"#262626"},{"align":"right","font":{"size":8},"color":"#262626"},{"align":"center","font":{"size":8},"color":"#0c0c0c"},{"font":{"size":8},"color":"#0c0c0c"},{"align":"right","font":{"size":8},"color":"#0c0c0c"},{"align":"right","color":"#7f7f7f"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"align":"center","bgcolor":"#71ae47"},{"border":{"bottom":["thin","#000"],"top":["thin","#000"],"left":["thin","#000"],"right":["thin","#000"]},"bgcolor":"#71ae47"},{"border":{"bottom":["thin","#538136"],"top":["thin","#538136"],"left":["thin","#538136"],"right":["thin","#538136"]},"align":"center","bgcolor":"#71ae47"},{"border":{"bottom":["thin","#538136"],"top":["thin","#538136"],"left":["thin","#538136"],"right":["thin","#538136"]},"bgcolor":"#71ae47"},{"border":{"bottom":["thin","#538136"],"top":["thin","#538136"],"left":["thin","#538136"],"right":["thin","#538136"]},"align":"center"},{"border":{"bottom":["thin","#538136"],"top":["thin","#538136"],"left":["thin","#538136"],"right":["thin","#538136"]}},{"border":{"bottom":["thin","#538136"],"top":["thin","#538136"],"left":["thin","#538136"],"right":["thin","#538136"]},"align":"center","bgcolor":"#c5e0b3"},{"border":{"bottom":["thin","#538136"],"top":["thin","#538136"],"left":["thin","#538136"],"right":["thin","#538136"]},"bgcolor":"#c5e0b3"},{"border":{"bottom":["thin","#538136"],"top":["thin","#538136"],"left":["thin","#538136"],"right":["thin","#538136"]},"align":"center","bgcolor":"#a7d08c"},{"border":{"bottom":["thin","#538136"],"top":["thin","#538136"],"left":["thin","#538136"],"right":["thin","#538136"]},"bgcolor":"#a7d08c"}],"validations":[],"cols":{"0":{"width":32},"1":{"width":65},"2":{"width":115},"3":{"width":70},"4":{"width":52},"5":{"width":70},"6":{"width":93},"7":{"width":86},"8":{"width":75},"9":{"width":126},"10":{"width":81},"len":24},"merges":["F2:G2","F2:G2","I2:J2","A2:B2","C2:D2","A2:B2","A1:J1"]}', N'', N'', N'admin', N'2020-06-16 11:54:02.0000000', N'admin', N'2020-12-07 16:52:55.0000000', N'0', NULL, NULL, N'1', N'4')
GO


-- ----------------------------
-- Table structure for jimu_report_data_source
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jimu_report_data_source]') AND type IN ('U'))
	DROP TABLE [dbo].[jimu_report_data_source]
GO

CREATE TABLE [dbo].[jimu_report_data_source] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [report_id] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [remark] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_driver] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_url] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_username] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_password] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[jimu_report_data_source] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'报表_id',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'report_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库类型',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'db_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'驱动类',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'db_driver'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源地址',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'db_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'db_username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'db_password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_data_source',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of jimu_report_data_source
-- ----------------------------
INSERT INTO [dbo].[jimu_report_data_source]  VALUES (N'1324261983692902402', N'jeewx', N'1324261770294071296', N'', NULL, N'MYSQL', N'com.mysql.jdbc.Driver', N'jdbc:mysql://127.0.0.1:3306/jeewx-boot?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8', N'root', N'root', N'jeecg', N'2020-11-05 16:07:15.0000000', NULL, N'2020-11-05 16:07:15.0000000')
GO


-- ----------------------------
-- Table structure for jimu_report_db
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jimu_report_db]') AND type IN ('U'))
	DROP TABLE [dbo].[jimu_report_db]
GO

CREATE TABLE [dbo].[jimu_report_db] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [jimu_report_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [db_code] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_ch_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_type] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_table_name] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_dyn_sql] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_key] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tb_db_key] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tb_db_table_name] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [java_type] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [java_value] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [api_url] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [api_method] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_page] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_source] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_source_type] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[jimu_report_db] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键字段',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'jimu_report_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据集编码',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'db_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据集名字',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'db_ch_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源类型',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'db_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库表名',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'db_table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'动态查询SQL',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'db_dyn_sql'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源KEY',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'db_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'填报数据源',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'tb_db_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'填报数据表',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'tb_db_table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'java类数据集  类型（spring:springkey,class:java类名）',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'java_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'java类数据源  数值（bean key/java类名）',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'java_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求地址',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'api_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求方法0-get,1-post',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'api_method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否作为分页,0:不分页，1:分页',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'is_page'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'db_source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库类型 MYSQL ORACLE SQLSERVER',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db',
'COLUMN', N'db_source_type'
GO


-- ----------------------------
-- Records of jimu_report_db
-- ----------------------------
INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1224272692274794497', N'52c7022b724e202f98acac3546f42406', N'admin', NULL, N'2020-11-05 17:32:24.0000000', N'2020-11-05 17:32:24.0000000', N'income', N'income', N'0', NULL, N'select * from rep_demo_income', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1224643501392728065', N'e5692be4d9a844511366fbb4ef575a31', N'admin', NULL, N'2020-11-05 17:33:27.0000000', N'2020-11-05 17:33:27.0000000', N'employee', N'employee', N'0', NULL, N'select * from rep_demo_employee  where id=''${id}'' and sex=''${sex}''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1225317914627805185', N'ec41c1f05a37fd6de034cf244743aa8f', N'admin', NULL, N'2020-11-05 17:34:04.0000000', N'2020-11-05 17:34:04.0000000', N'chuku', N'chuku', N'0', NULL, N'select * from joa_busines_strip where apply_no = ''${apply_no}'' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1272816825196900354', N'9f3cb6a871c40bb2ce3aaae5c02bdd20', N'admin', NULL, N'2020-11-05 17:38:53.0000000', N'2020-11-05 17:38:53.0000000', N'kaoqin', N'kaoqin', N'0', NULL, N'select * from rep_demo_kaoqin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1272834687525482497', N'53c82a76f837d5661dceec7d93afafec', N'jeecg', NULL, N'2020-08-03 15:49:36.0000000', N'2020-08-03 15:49:36.0000000', N'jianpiao', N'jianpiao', N'0', NULL, N'select * from rep_demo_jianpiao where s_id=''${id}''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1272858455908073473', N'ff9bd143582a6dfed897ba8b6f93b175', N'jeecg', NULL, N'2020-07-28 18:07:01.0000000', N'2020-07-28 18:07:01.0000000', N'xiaoshou', N'xiaoshou', N'0', NULL, N'select * from rep_demo_xiaoshou where s_id=''${id}''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1273069349434863618', N'b1ce8ef4f5eb54614a8368710e7b945f', NULL, NULL, N'2020-06-17 09:46:00.0000000', N'2020-06-17 16:56:14.0000000', N'deliveryorder', N'deliveryorder', N'0', NULL, N'select * from rep_demo_deliveryorder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1273157643468333058', N'd21a83d3299a0fb32ef5010e38ba2646', N'admin', NULL, N'2020-11-05 17:40:10.0000000', N'2020-11-05 17:40:10.0000000', N'kaoqin', N'kaoqin', N'0', NULL, N'select * from rep_demo_kaoqin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1273205941680017410', N'9dcd4ece71a16d77fa1a26a72a4f46a4', N'admin', NULL, N'2020-11-05 17:40:44.0000000', N'2020-11-05 17:40:44.0000000', N'salesrate', N'salesrate', N'0', NULL, N'select * from rep_demo_salesrate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1273495682564534273', N'ff9bd143582a6dfed897ba8b6f93b175', N'jeecg', NULL, N'2020-08-03 09:55:26.0000000', N'2020-08-03 09:55:26.0000000', N'gongsi', N'gongsi', N'0', NULL, N'select * from rep_demo_gongsi where id=''${id}''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1273525013525344258', N'd119966ae22463625e0fc9b94082f753', N'admin', NULL, N'2020-11-05 17:37:08.0000000', N'2020-11-05 17:37:08.0000000', N'dadong', N'dadong', N'0', NULL, N'select * from rep_demo_dadong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1282993618201612289', N'7c02c224a2db56d0350069650033f702', N'admin', NULL, N'2020-11-05 17:42:44.0000000', N'2020-11-05 17:42:44.0000000', N'huizong1', N'huizong1', N'0', NULL, N'select * from rep_demo_huizong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1283730831482937345', N'6059e405dd9c66a6d38e00841d2e40cc', N'admin', NULL, N'2020-11-05 17:31:28.0000000', N'2020-11-05 17:31:28.0000000', N'yaopin', N'yaopin', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/chufangjian', N'0', N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1283957016150249473', N'6059e405dd9c66a6d38e00841d2e40cc', N'admin', NULL, N'2020-11-05 17:31:33.0000000', N'2020-11-05 17:31:33.0000000', N'yonghu', N'yonghu', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/yonghu', N'0', N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1284028534276038658', N'57a5b6121a5b701811e248e98074d934', NULL, NULL, N'2020-07-17 15:33:53.0000000', NULL, N'budong', N'budong', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/budongchan', N'0', NULL, NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1284039349247156225', N'fb6832ee46a0778c1fbd51c461809d0f', N'admin', NULL, N'2020-11-05 17:28:39.0000000', N'2020-11-05 17:28:39.0000000', N'qiangxiu', N'qiangxiu', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/qiangxiu', N'0', N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1284070508744257537', N'a250846887abe01217aab173d3006489', N'admin', NULL, N'2020-11-05 17:41:06.0000000', N'2020-11-05 17:41:06.0000000', N'budong', N'budong', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/budongchan', N'0', N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1285157606524002305', N'a9f068972508920cd4aab831814f0c04', NULL, NULL, N'2020-07-20 18:20:25.0000000', N'2020-07-20 18:28:22.0000000', N'pdaibu', N'pdaibu', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/daibu', N'0', NULL, NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1285164420728692737', N'7905022412733a0c68dc7b4ef8947489', N'admin', NULL, N'2020-11-05 17:45:46.0000000', N'2020-11-05 17:45:46.0000000', N'jieshaoxin', N'jieshaoxin', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/jieshaoxin', N'0', N'0', NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1287958726233354241', N'5104307fedacdf3332209874397c0576', N'admin', NULL, N'2020-11-05 17:26:05.0000000', N'2020-11-05 17:26:05.0000000', N'shixi', N'shixi', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/shixi', N'0', N'0', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1288038655293661186', N'f6ee801e8bdc28ba9d63f95dc65ccd79', N'admin', NULL, N'2020-11-05 17:25:40.0000000', N'2020-11-05 17:25:40.0000000', N'caigou', N'caigou', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/caigou?pageNo=''${pageNo}''&pageSize=''${pageSize}''', N'0', N'1', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1289140698221678593', N'519c1c6f4d1f584ae8fa5b43b45acdc7', N'admin', NULL, N'2020-10-29 18:06:24.0000000', N'2020-10-29 18:06:24.0000000', N'xiaoshou', N'xiaoshou', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/xiaoshou?pageNo=''${pageNo}''&pageSize=''${pageSize}''', N'0', N'1', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1290104038414721025', N'53c82a76f837d5661dceec7d93afafec', N'admin', NULL, N'2020-11-05 17:38:16.0000000', N'2020-11-05 17:38:17.0000000', N'gongsi', N'gongsi', N'0', NULL, N'select * from rep_demo_gongsi where id=''${id}''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1290197413256069121', N'519c1c6f4d1f584ae8fa5b43b45acdc7', N'jeecg', NULL, N'2020-08-03 16:06:49.0000000', N'2020-10-29 18:06:24.0000000', N'zongji', N'zongji', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/zongji', N'0', N'0', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291217511962902530', N'767f1c8ce37a94fae440faef3a1e92aa', N'jeecg', NULL, N'2020-08-03 15:19:54.0000000', N'2020-08-03 15:19:54.0000000', N'xiaoshou', N'xiaoshou', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/xiaoshou?pageNo=''${pageNo}''&pageSize=''${pageSize}''', N'0', N'1', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291217512210366466', N'767f1c8ce37a94fae440faef3a1e92aa', N'jeecg', NULL, N'2020-08-03 16:06:49.0000000', N'2020-08-03 16:06:49.0000000', N'zongji', N'zongji', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/zongji', N'0', N'0', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291217550135263234', N'4af4501a0df7c60ca246f5178467b204', N'jeecg', NULL, N'2020-07-28 11:51:04.0000000', N'2020-07-28 11:51:04.0000000', N'shixi', N'shixi', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/shixi', N'0', NULL, N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291218450836881409', N'bbeb04782dac8fd6348e6c72c77d951f', NULL, NULL, N'2020-07-20 18:20:25.0000000', N'2020-07-20 18:28:22.0000000', N'pdaibu', N'pdaibu', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/daibu', N'0', NULL, NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291218483749584898', N'776f331978e958bb2801490e99f32bcc', NULL, NULL, N'2020-07-17 16:16:52.0000000', NULL, N'qiangxiu', N'qiangxiu', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/qiangxiu', N'0', NULL, NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291218559968477186', N'1603a5abdfbd5d2beeba45fd26bcabce', N'jeecg', NULL, N'2020-07-28 11:51:04.0000000', N'2020-07-28 11:51:04.0000000', N'shixi', N'shixi', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/shixi', N'0', NULL, N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291310198925840385', N'e7c7dd7993ed58fa7fa810178b0b7592', NULL, NULL, N'2020-02-04 18:38:58.0000000', N'2020-06-08 15:22:01.0000000', N'employee', N'employee', N'0', NULL, N'select * from rep_demo_employee  where id=''${id}'' and sex=''${sex}''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291311312320614401', N'3f1865898d149cc4d29c2ea73b11ef77', N'jeecg', NULL, N'2020-07-28 11:51:04.0000000', N'2020-07-28 11:51:04.0000000', N'shixi', N'shixi', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/shixi', N'0', NULL, N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291549569390243841', N'dfbc0b68722bed153cc0a5ec9b856ccf', N'jeecg', NULL, N'2020-07-31 16:18:11.0000000', N'2020-07-31 16:18:11.0000000', N'caigou', N'caigou', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/caigou?pageNo=''${pageNo}''&pageSize=''${pageSize}''', N'0', N'1', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1291549584305188865', N'dcb357993dd7bdc6088d5b700bca81e6', NULL, NULL, N'2020-07-20 18:20:25.0000000', N'2020-07-20 18:28:22.0000000', N'pdaibu', N'pdaibu', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/daibu', N'0', NULL, NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1308646473898983425', N'1308645288868712448', N'admin', NULL, N'2020-11-15 12:58:34.0000000', N'2020-11-15 12:58:34.0000000', N'tongji_days_user', N'tongji_days_user', N'0', NULL, N'select count(*) ct,DATE_FORMAT(create_time, ''%Y-%m-%d'') as date  from sys_user GROUP BY date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'', N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1324268497690275841', N'1324268352960598016', N'jeecg', NULL, N'2020-11-05 16:33:08.0000000', N'2020-11-05 16:33:08.0000000', N'dddd', N'ddd', N'0', NULL, N'select * from jw_web_jwid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'1324261983692902402', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1324279359998005250', N'1324279359805067265', N'admin', NULL, N'2020-10-29 18:06:24.0000000', N'2020-10-29 18:06:24.0000000', N'xiaoshou', N'xiaoshou', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/xiaoshou?pageNo=''${pageNo}''&pageSize=''${pageSize}''', N'0', N'1', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1324279360333549569', N'1324279359805067265', N'jeecg', NULL, N'2020-08-03 16:06:49.0000000', N'2020-10-29 18:06:24.0000000', N'zongji', N'zongji', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/zongji', N'0', N'0', N'', NULL)
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1324279456571854849', N'1324279456462802946', NULL, NULL, N'2020-07-17 16:16:52.0000000', NULL, N'qiangxiu', N'qiangxiu', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'http://api.jeecg.com/mock/26/baobiao/qiangxiu', N'0', NULL, NULL, N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1329325550314045441', N'1329325191582584832', N'admin', NULL, N'2020-11-19 15:35:22.0000000', N'2020-11-19 15:35:22.0000000', N'userreport', N'统计用户数据', N'0', NULL, N'select * from sys_user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'', N'MYSQL')
GO

INSERT INTO [dbo].[jimu_report_db]  VALUES (N'1329327316048920577', N'1329325191582584832', N'admin', NULL, N'2020-11-19 15:40:15.0000000', N'2020-11-19 15:40:15.0000000', N'tj_sexcount', N'统计性别人数', N'0', NULL, N'select count(1),sex from sys_user group by sex HAVING sex is not null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'', N'MYSQL')
GO


-- ----------------------------
-- Table structure for jimu_report_db_field
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jimu_report_db_field]') AND type IN ('U'))
	DROP TABLE [dbo].[jimu_report_db_field]
GO

CREATE TABLE [dbo].[jimu_report_db_field] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [jimu_report_db_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_name] nvarchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_text] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [widget_type] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [widget_width] int  NULL,
  [order_num] int  NULL,
  [search_flag] int  NULL,
  [search_mode] int  NULL,
  [dict_code] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[jimu_report_db_field] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源ID',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'jimu_report_db_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段名',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'field_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段文本',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'field_text'
GO

EXEC sp_addextendedproperty
'MS_Description', N'控件类型',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'widget_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'控件宽度',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'widget_width'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'order_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询标识0否1是 默认0',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'search_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询模式1简单2范围',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'search_mode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典编码支持从表中取数据',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_field',
'COLUMN', N'dict_code'
GO


-- ----------------------------
-- Records of jimu_report_db_field
-- ----------------------------
INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709748842497', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709757231106', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'num', N'num', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709757231107', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709761425410', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'sex', N'sex', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709761425411', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'birthday', N'birthday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709761425412', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'nation', N'nation', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709765619713', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'political', N'political', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709765619714', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'native_place', N'native_place', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709765619715', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'height', N'height', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709765619716', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'weight', N'weight', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709765619717', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'health', N'health', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709769814018', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'id_card', N'id_card', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709769814019', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'education', N'education', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709769814020', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'school', N'school', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709774008322', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'major', N'major', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709774008323', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'address', N'address', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709774008324', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'zip_code', N'zip_code', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709774008325', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'email', N'email', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709774008326', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'phone', N'phone', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709774008327', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'foreign_language', N'foreign_language', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709778202625', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'foreign_language_level', N'foreign_language_level', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709778202626', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'computer_level', N'computer_level', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709778202627', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'graduation_time', N'graduation_time', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709782396930', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'arrival_time', N'arrival_time', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709782396931', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'positional_titles', N'positional_titles', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709782396932', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'education_experience', N'education_experience', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709782396933', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'work_experience', N'work_experience', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709786591233', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'create_by', N'create_by', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709786591234', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'create_time', N'create_time', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709786591235', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'update_by', N'update_by', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709786591236', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'update_time', N'update_time', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1268131709786591237', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1224643501392728065', N'del_flag', N'del_flag', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234379288578', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234383482882', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234383482883', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'day', N'day', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234387677186', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'zcdaka', N'zcdaka', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234387677187', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'cdday', N'cdday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234391871489', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'ztday', N'ztday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234391871490', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'kgday', N'kgday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234391871491', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'bcnum', N'bcnum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234391871492', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'wqday', N'wqday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234396065794', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'ccday', N'ccday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234396065795', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'qjnum', N'qjnum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272821234396065796', NULL, N'2020-06-16 17:20:05.0000000', NULL, NULL, N'1272816825196900354', N'qknum', N'qknum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907562864641', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907567058946', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'bnum', N'bnum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907571253250', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'ftime', N'ftime', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907571253251', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'sfkong', N'sfkong', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907571253252', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'kaishi', N'kaishi', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907571253253', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'jieshu', N'jieshu', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907571253254', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'hezairen', N'hezairen', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907571253255', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'jpnum', N'jpnum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1272834907575447554', NULL, N'2020-06-16 18:14:25.0000000', NULL, NULL, N'1272834687525482497', N'shihelv', N'shihelv', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643501887490', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643510276097', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643510276098', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'day', N'day', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643510276099', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'zcdaka', N'zcdaka', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643514470402', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'cdday', N'cdday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643514470403', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'ztday', N'ztday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643514470404', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'kgday', N'kgday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643514470405', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'bcnum', N'bcnum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643514470406', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'wqday', N'wqday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643518664705', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'ccday', N'ccday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643518664706', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'qjnum', N'qjnum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273157643518664707', NULL, N'2020-06-17 15:36:51.0000000', NULL, NULL, N'1273157643468333058', N'qknum', N'qknum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273177620112019457', NULL, N'2020-06-17 16:56:14.0000000', NULL, NULL, N'1273069349434863618', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273177620120408065', NULL, N'2020-06-17 16:56:14.0000000', NULL, NULL, N'1273069349434863618', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273177620120408066', NULL, N'2020-06-17 16:56:14.0000000', NULL, NULL, N'1273069349434863618', N'specifications', N'specifications', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273177620120408067', NULL, N'2020-06-17 16:56:14.0000000', NULL, NULL, N'1273069349434863618', N'num', N'num', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273177620120408068', NULL, N'2020-06-17 16:56:14.0000000', NULL, NULL, N'1273069349434863618', N'price', N'price', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273177620120408069', NULL, N'2020-06-17 16:56:14.0000000', NULL, NULL, N'1273069349434863618', N'total', N'total', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273177620128796673', NULL, N'2020-06-17 16:56:14.0000000', NULL, NULL, N'1273069349434863618', N'remarks', N'remarks', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273205941692600321', NULL, N'2020-06-17 18:48:46.0000000', NULL, NULL, N'1273205941680017410', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273205941700988929', NULL, N'2020-06-17 18:48:46.0000000', NULL, NULL, N'1273205941680017410', N'bname', N'bname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273205941700988930', NULL, N'2020-06-17 18:48:46.0000000', NULL, NULL, N'1273205941680017410', N'stotal', N'stotal', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273205941700988931', NULL, N'2020-06-17 18:48:46.0000000', NULL, NULL, N'1273205941680017410', N'starget', N'starget', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273205941700988932', NULL, N'2020-06-17 18:48:46.0000000', NULL, NULL, N'1273205941680017410', N'srate', N'srate', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273205941700988933', NULL, N'2020-06-17 18:48:46.0000000', NULL, NULL, N'1273205941680017410', N'jtotal', N'jtotal', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273205941700988934', NULL, N'2020-06-17 18:48:46.0000000', NULL, NULL, N'1273205941680017410', N'jtarget', N'jtarget', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1273205941705183234', NULL, N'2020-06-17 18:48:46.0000000', NULL, NULL, N'1273205941680017410', N'jrate', N'jrate', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618340024321', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618352607233', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'cname', N'cname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618356801538', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'hname', N'hname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618356801539', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'num', N'num', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618356801540', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'jtotal', N'jtotal', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618360995842', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'jaddress', N'jaddress', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618365190145', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'snum', N'snum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618369384449', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'hushu', N'hushu', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618369384450', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'renkou', N'renkou', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618369384451', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'money', N'money', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618369384452', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'shouru', N'shouru', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618373578754', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'bkey', N'bkey', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618373578755', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'brenkou', N'brenkou', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618373578756', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'cbuzhu', N'cbuzhu', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618373578757', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'qbuzhu', N'qbuzhu', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618377773058', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'zbuzhu', N'zbuzhu', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618381967361', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'hbuzhu', N'hbuzhu', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618381967362', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'sxinzeng', N'sxinzeng', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618381967363', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'schaobiao', N'schaobiao', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618386161665', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'jchaobiao', N'jchaobiao', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618386161666', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'die', N'die', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1282993618386161667', NULL, N'2020-07-14 19:01:30.0000000', NULL, NULL, N'1282993618201612289', N'qita', N'qita', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283730831688458241', NULL, N'2020-07-16 19:50:55.0000000', NULL, NULL, N'1283730831482937345', N'name', N'name', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283730831705235458', NULL, N'2020-07-16 19:50:56.0000000', NULL, NULL, N'1283730831482937345', N'value', N'value', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283730831717818369', NULL, N'2020-07-16 19:50:56.0000000', NULL, NULL, N'1283730831482937345', N'percent', N'percent', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016175415297', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'yphone', N'yphone', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016183803906', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'yzhenliao', N'yzhenliao', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016187998209', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'ysex', N'ysex', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016192192513', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'danwei', N'danwei', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016196386818', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'kdata', N'kdata', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016204775425', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'yname', N'yname', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016208969729', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'yprice', N'yprice', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016213164033', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'ytotal', N'ytotal', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016217358337', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'yishe', N'yishe', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016221552641', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'yizhu', N'yizhu', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016225746946', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'yage', N'yage', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1283957016229941249', NULL, N'2020-07-17 10:49:42.0000000', NULL, NULL, N'1283957016150249473', N'yjieguo', N'yjieguo', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534301204481', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'xtype', N'xtype', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534305398786', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'danyuan', N'danyuan', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534309593090', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'chanquan', N'chanquan', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534313787394', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'zhuzhi', N'zhuzhi', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534317981698', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'fujian', N'fujian', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534322176002', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'didian', N'didian', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534326370306', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'type', N'type', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534330564609', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'suoyou', N'suoyou', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534334758913', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'name', N'name', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534338953217', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'yname', N'yname', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534343147521', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'riqi', N'riqi', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534347341825', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'beizhu', N'beizhu', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534351536129', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'time', N'time', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284028534355730433', NULL, N'2020-07-17 15:33:53.0000000', NULL, NULL, N'1284028534276038658', N'mianji', N'mianji', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349301682177', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'ktime', N'ktime', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349310070785', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'danwei', N'danwei', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349314265090', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'wtime', N'wtime', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349322653698', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'yusuan', N'yusuan', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349326848002', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'dshenhe', N'dshenhe', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349331042306', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'zhuren', N'zhuren', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349339430913', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'neirong', N'neirong', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349347819521', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'yijian', N'yijian', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349356208130', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'time1', N'time1', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349364596738', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'time2', N'time2', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349368791041', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'time3', N'time3', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349377179650', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'time4', N'time4', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349381373954', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'pingjia', N'pingjia', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349385568258', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'name', N'name', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349393956865', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'bianhao', N'bianhao', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349402345474', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'zongjie', N'zongjie', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349410734082', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'nengli', N'nengli', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1284039349414928386', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1284039349247156225', N'time', N'time', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285159608326889474', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1285157606524002305', N'fsex', N'fsex', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285159608335278082', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1285157606524002305', N'fname', N'fname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285159608339472385', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1285157606524002305', N'shiqing', N'shiqing', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285159608339472386', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1285157606524002305', N'pname', N'pname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285159608339472387', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1285157606524002305', N'zhuzhi', N'zhuzhi', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285159608339472388', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1285157606524002305', N'gdata', N'gdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285159608343666690', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1285157606524002305', N'cdata', N'cdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285164420749664258', NULL, N'2020-07-20 18:47:30.0000000', NULL, NULL, N'1285164420728692737', N'shiqing', N'shiqing', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285164420753858561', NULL, N'2020-07-20 18:47:30.0000000', NULL, NULL, N'1285164420728692737', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285164420758052866', NULL, N'2020-07-20 18:47:30.0000000', NULL, NULL, N'1285164420728692737', N'gdata', N'gdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285164420758052867', NULL, N'2020-07-20 18:47:30.0000000', NULL, NULL, N'1285164420728692737', N'value', N'value', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285164420758052868', NULL, N'2020-07-20 18:47:30.0000000', NULL, NULL, N'1285164420728692737', N'percent', N'percent', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285164420762247169', NULL, N'2020-07-20 18:47:30.0000000', NULL, NULL, N'1285164420728692737', N'tdata', N'tdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285473875810967553', NULL, N'2020-07-21 15:17:10.0000000', NULL, NULL, N'1273495682564534273', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285473875823550466', NULL, N'2020-07-21 15:17:10.0000000', NULL, NULL, N'1273495682564534273', N'gname', N'gname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285473875823550467', NULL, N'2020-07-21 15:17:10.0000000', NULL, NULL, N'1273495682564534273', N'gdata', N'gdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285473875823550468', NULL, N'2020-07-21 15:17:10.0000000', NULL, NULL, N'1273495682564534273', N'tdata', N'tdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285473875827744769', NULL, N'2020-07-21 15:17:10.0000000', NULL, NULL, N'1273495682564534273', N'didian', N'didian', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285473875827744770', NULL, N'2020-07-21 15:17:10.0000000', NULL, NULL, N'1273495682564534273', N'zhaiyao', N'zhaiyao', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1285473875827744771', NULL, N'2020-07-21 15:17:10.0000000', NULL, NULL, N'1273495682564534273', N'num', N'num', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1287958726313046018', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1287958726233354241', N'lingdao', N'lingdao', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1287958726317240321', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1287958726233354241', N'pingjia', N'pingjia', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1287958726321434626', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1287958726233354241', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1287958726321434627', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1287958726233354241', N'shijian', N'shijian', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288038655394324482', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1288038655293661186', N'ctotal', N'库存量', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288038655402713090', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1288038655293661186', N'cname', N'产品名称', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288038655406907393', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1288038655293661186', N'cprice', N'单价', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288038655411101697', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1288038655293661186', N'dtotal', N'订购量', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288038655411101698', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1288038655293661186', N'tp', N'库存总值', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288038655415296002', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1288038655293661186', N'ztotal', N'二次订购量', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288038655415296003', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1288038655293661186', N'cnum', N'产品数量', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290843074561', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290847268865', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'hnum', N'hnum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290851463170', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'hname', N'hname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290851463171', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'xinghao', N'xinghao', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290851463172', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'fahuocangku', N'fahuocangku', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290851463173', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'danwei', N'danwei', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290851463174', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'num', N'num', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290851463175', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'danjia', N'danjia', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290851463176', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'zhekoulv', N'zhekoulv', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290855657473', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'xiaoshoujine', N'xiaoshoujine', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290859851778', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N'beizhu', N'beizhu', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1288048290859851779', NULL, N'2020-07-28 17:46:58.0000000', NULL, NULL, N'1272858455908073473', N's_id', N's_id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1290197413277040641', NULL, N'2020-08-03 16:06:49.0000000', NULL, NULL, N'1290197413256069121', N'ttotal', N'ttotal', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217511988068353', NULL, N'2020-08-03 15:18:47.0000000', NULL, NULL, N'1291217511962902530', N'ctotal', N'ctotal', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217512017428481', NULL, N'2020-08-03 15:18:47.0000000', NULL, NULL, N'1291217511962902530', N'bianma', N'bianma', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217512034205697', NULL, N'2020-08-03 15:18:47.0000000', NULL, NULL, N'1291217511962902530', N'cname', N'cname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217512042594306', NULL, N'2020-08-03 15:18:47.0000000', NULL, NULL, N'1291217511962902530', N'ctime', N'ctime', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217512046788609', NULL, N'2020-08-03 15:18:47.0000000', NULL, NULL, N'1291217511962902530', N'cprice', N'cprice', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217512080343041', NULL, N'2020-08-03 15:18:47.0000000', NULL, NULL, N'1291217511962902530', N'yprice', N'yprice', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217512097120258', NULL, N'2020-08-03 15:18:47.0000000', NULL, NULL, N'1291217511962902530', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217512118091777', NULL, N'2020-08-03 15:18:47.0000000', NULL, NULL, N'1291217511962902530', N'cnum', N'cnum', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217512227143681', NULL, N'2020-08-03 16:06:49.0000000', NULL, NULL, N'1291217512210366466', N'ttotal', N'ttotal', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217550160429057', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291217550135263234', N'lingdao', N'lingdao', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217550177206273', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291217550135263234', N'pingjia', N'pingjia', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217550189789186', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291217550135263234', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291217550206566401', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291217550135263234', N'shijian', N'shijian', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218450870435841', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291218450836881409', N'fsex', N'fsex', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218450895601666', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291218450836881409', N'fname', N'fname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218450903990273', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291218450836881409', N'shiqing', N'shiqing', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218450912378882', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291218450836881409', N'pname', N'pname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218450929156097', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291218450836881409', N'zhuzhi', N'zhuzhi', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218450945933314', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291218450836881409', N'gdata', N'gdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218450954321922', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291218450836881409', N'cdata', N'cdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483770556418', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'ktime', N'ktime', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483778945025', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'danwei', N'danwei', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483791527938', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'wtime', N'wtime', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483804110849', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'yusuan', N'yusuan', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483820888066', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'dshenhe', N'dshenhe', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483829276674', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'zhuren', N'zhuren', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483841859586', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'neirong', N'neirong', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483850248193', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'yijian', N'yijian', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483858636801', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'time1', N'time1', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483879608321', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'time2', N'time2', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483900579842', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'time3', N'time3', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483913162753', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'time4', N'time4', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483921551361', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'pingjia', N'pingjia', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483929939969', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'name', N'name', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483946717185', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'bianhao', N'bianhao', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483967688705', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'zongjie', N'zongjie', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483976077313', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'nengli', N'nengli', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218483988660226', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1291218483749584898', N'time', N'time', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218559981060097', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291218559968477186', N'lingdao', N'lingdao', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218559993643009', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291218559968477186', N'pingjia', N'pingjia', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218560010420225', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291218559968477186', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291218560023003137', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291218559968477186', N'shijian', N'shijian', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310198955200514', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'id', N'id', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310198980366338', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'num', N'num', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310198992949250', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199001337857', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'sex', N'sex', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199022309378', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'birthday', N'birthday', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199047475202', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'nation', N'nation', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199072641026', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'political', N'political', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199085223938', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'native_place', N'native_place', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199114584065', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'height', N'height', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199135555586', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'weight', N'weight', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199143944193', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'health', N'health', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199152332801', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'id_card', N'id_card', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199169110018', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'education', N'education', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199185887233', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'school', N'school', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199194275842', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'major', N'major', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199206858753', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'address', N'address', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199215247361', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'zip_code', N'zip_code', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199232024578', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'email', N'email', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199257190402', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'phone', N'phone', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199265579009', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'foreign_language', N'foreign_language', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199282356226', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'foreign_language_level', N'foreign_language_level', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199299133442', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'computer_level', N'computer_level', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199311716354', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'graduation_time', N'graduation_time', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199324299265', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'arrival_time', N'arrival_time', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199328493570', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'positional_titles', N'positional_titles', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199341076482', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'education_experience', N'education_experience', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199353659393', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'work_experience', N'work_experience', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199357853697', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'create_by', N'create_by', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199370436610', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'create_time', N'create_time', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199387213825', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'update_by', N'update_by', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199399796737', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'update_time', N'update_time', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291310199412379649', NULL, N'2020-06-03 18:45:35.0000000', NULL, NULL, N'1291310198925840385', N'del_flag', N'del_flag', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291311312354168833', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291311312320614401', N'lingdao', N'lingdao', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291311312375140354', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291311312320614401', N'pingjia', N'pingjia', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291311312383528961', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291311312320614401', N'name', N'name', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291311312396111874', NULL, N'2020-07-28 11:51:04.0000000', NULL, NULL, N'1291311312320614401', N'shijian', N'shijian', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549569423798273', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1291549569390243841', N'ctotal', N'库存量', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549569444769794', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1291549569390243841', N'cname', N'产品名称', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549569448964097', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1291549569390243841', N'cprice', N'单价', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549569465741314', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1291549569390243841', N'dtotal', N'订购量', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549569482518530', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1291549569390243841', N'tp', N'库存总值', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549569499295745', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1291549569390243841', N'ztotal', N'二次订购量', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549569511878657', NULL, N'2020-07-28 17:08:41.0000000', NULL, NULL, N'1291549569390243841', N'cnum', N'产品数量', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549584330354690', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291549584305188865', N'fsex', N'fsex', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549584347131906', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291549584305188865', N'fname', N'fname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549584355520514', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291549584305188865', N'shiqing', N'shiqing', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549584363909121', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291549584305188865', N'pname', N'pname', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549584384880641', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291549584305188865', N'zhuzhi', N'zhuzhi', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549584401657857', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291549584305188865', N'gdata', N'gdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1291549584405852162', NULL, N'2020-07-20 18:28:22.0000000', NULL, NULL, N'1291549584305188865', N'cdata', N'cdata', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321743465109848065', NULL, N'2020-10-29 17:19:34.0000000', NULL, NULL, N'1308646473898983425', N'ct', N'ct', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321743465122430978', NULL, N'2020-10-29 17:19:34.0000000', NULL, NULL, N'1308646473898983425', N'date', N'date', N'date', NULL, N'2', N'1', N'2', N'')
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321751264363610114', NULL, N'2020-10-29 17:50:33.0000000', NULL, NULL, N'1224272692274794497', N'id', N'id', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321751264371998722', NULL, N'2020-10-29 17:50:33.0000000', NULL, NULL, N'1224272692274794497', N'month', N'month', N'string', NULL, N'2', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321751264384581634', NULL, N'2020-10-29 17:50:33.0000000', NULL, NULL, N'1224272692274794497', N'main_operating_income', N'main_operating_income', N'string', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321751264388775937', NULL, N'2020-10-29 17:50:33.0000000', NULL, NULL, N'1224272692274794497', N'cumulative', N'cumulative', N'string', NULL, N'4', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321751264388775938', NULL, N'2020-10-29 17:50:33.0000000', NULL, NULL, N'1224272692274794497', N'lowest_level_in_history', N'lowest_level_in_history', N'string', NULL, N'5', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321751264388775939', NULL, N'2020-10-29 17:50:33.0000000', NULL, NULL, N'1224272692274794497', N'historical_average', N'historical_average', N'string', NULL, N'6', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321751264388775940', NULL, N'2020-10-29 17:50:33.0000000', NULL, NULL, N'1224272692274794497', N'record_high', N'record_high', N'string', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321755251053756418', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1289140698221678593', N'id', N'id', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321755251057950722', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1289140698221678593', N'bianma', N'bianma', N'string', NULL, N'2', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321755251057950723', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1289140698221678593', N'cname', N'cname', N'string', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321755251057950724', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1289140698221678593', N'ctime', N'ctime', N'string', NULL, N'4', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321755251057950725', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1289140698221678593', N'cnum', N'cnum', N'string', NULL, N'5', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321755251066339330', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1289140698221678593', N'cprice', N'cprice', N'string', NULL, N'6', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321755251066339331', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1289140698221678593', N'yprice', N'yprice', N'string', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1321755251066339332', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1289140698221678593', N'ctotal', N'ctotal', N'string', NULL, N'8', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268497975488513', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'id', N'id', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268497988071425', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'jwid', N'jwid', N'string', NULL, N'2', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268497988071426', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'name', N'name', N'string', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268497988071427', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'application_type', N'application_type', N'string', NULL, N'4', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268497996460033', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'qrcodeimg', N'qrcodeimg', N'string', NULL, N'5', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498017431554', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'create_by', N'create_by', N'string', NULL, N'6', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498021625858', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'create_time', N'create_time', N'string', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498034208770', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'weixin_number', N'weixin_number', N'string', NULL, N'8', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498042597377', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'weixin_appid', N'weixin_appid', N'string', NULL, N'9', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498042597378', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'weixin_appsecret', N'weixin_appsecret', N'string', NULL, N'10', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498050985985', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'account_type', N'account_type', N'string', NULL, N'11', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498050985986', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'auth_status', N'auth_status', N'string', NULL, N'12', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498050985987', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'access_token', N'access_token', N'string', NULL, N'13', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498059374594', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'token_gettime', N'token_gettime', N'string', NULL, N'14', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498059374595', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'apiticket', N'apiticket', N'string', NULL, N'15', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498059374596', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'apiticket_gettime', N'apiticket_gettime', N'string', NULL, N'16', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498071957505', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'jsapiticket', N'jsapiticket', N'string', NULL, N'17', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498080346113', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'jsapiticket_gettime', N'jsapiticket_gettime', N'string', NULL, N'18', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498088734721', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'auth_type', N'auth_type', N'string', NULL, N'19', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498097123330', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'business_info', N'business_info', N'string', NULL, N'20', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498097123331', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'func_info', N'func_info', N'string', NULL, N'21', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498105511938', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'nick_name', N'nick_name', N'string', NULL, N'22', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498113900546', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'headimgurl', N'headimgurl', N'string', NULL, N'23', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498122289154', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'authorization_info', N'authorization_info', N'string', NULL, N'24', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498130677761', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'authorizer_refresh_token', N'authorizer_refresh_token', N'string', NULL, N'25', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498134872066', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'token', N'token', N'string', NULL, N'26', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324268498134872067', NULL, N'2020-11-05 16:33:08.0000000', NULL, NULL, N'1324268497690275841', N'authorization_status', N'authorization_status', N'string', NULL, N'27', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360056725506', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1324279359998005250', N'id', N'id', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360077697026', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1324279359998005250', N'bianma', N'bianma', N'string', NULL, N'2', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360098668545', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1324279359998005250', N'cname', N'cname', N'string', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360115445762', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1324279359998005250', N'ctime', N'ctime', N'string', NULL, N'4', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360128028673', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1324279359998005250', N'cnum', N'cnum', N'string', NULL, N'5', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360136417282', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1324279359998005250', N'cprice', N'cprice', N'string', NULL, N'6', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360144805889', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1324279359998005250', N'yprice', N'yprice', N'string', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360165777409', NULL, N'2020-10-29 18:06:24.0000000', NULL, NULL, N'1324279359998005250', N'ctotal', N'ctotal', N'string', NULL, N'8', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279360350326785', NULL, N'2020-08-03 16:06:49.0000000', NULL, NULL, N'1324279360333549569', N'ttotal', N'ttotal', N'string', NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456592826370', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'ktime', N'ktime', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456605409281', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'danwei', N'danwei', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456617992193', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'wtime', N'wtime', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456630575106', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'yusuan', N'yusuan', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456638963714', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'dshenhe', N'dshenhe', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456651546625', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'zhuren', N'zhuren', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456672518145', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'neirong', N'neirong', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456680906754', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'yijian', N'yijian', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456693489666', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'time1', N'time1', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456693489667', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'time2', N'time2', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456706072577', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'time3', N'time3', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456714461185', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'time4', N'time4', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456735432705', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'pingjia', N'pingjia', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456748015618', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'name', N'name', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456756404225', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'bianhao', N'bianhao', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456764792834', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'zongjie', N'zongjie', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456764792835', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'nengli', N'nengli', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324279456777375745', NULL, N'2020-07-17 16:16:52.0000000', NULL, NULL, N'1324279456571854849', N'time', N'time', NULL, NULL, NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831843295234', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'id', N'id', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831851683842', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'apply_no', N'apply_no', N'string', NULL, N'2', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831851683843', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'apply_user_name', N'apply_user_name', N'string', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831860072449', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'depart_id', N'depart_id', N'string', NULL, N'4', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831860072450', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'depart_name', N'depart_name', N'string', NULL, N'5', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831860072451', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'project_id', N'project_id', N'string', NULL, N'6', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831860072452', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'project_name', N'project_name', N'string', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831860072453', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'destination', N'destination', N'string', NULL, N'8', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831860072454', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'departure_time', N'departure_time', N'string', NULL, N'9', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831860072455', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'planned_return_time', N'planned_return_time', N'string', NULL, N'10', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461058', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'actual_return_time', N'actual_return_time', N'string', NULL, N'11', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461059', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'day_num', N'day_num', N'string', NULL, N'12', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461060', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'travel_tool', N'travel_tool', N'string', NULL, N'13', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461061', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'loan_money', N'loan_money', N'string', NULL, N'14', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461062', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'travel_expenses_type', N'travel_expenses_type', N'string', NULL, N'15', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461063', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'reason', N'reason', N'string', NULL, N'16', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461064', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'depart_leader_id', N'depart_leader_id', N'string', NULL, N'17', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461065', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'depart_leader_audit', N'depart_leader_audit', N'string', NULL, N'18', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831868461066', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'finance_user_id', N'finance_user_id', N'string', NULL, N'19', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831876849666', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'finance_audit', N'finance_audit', N'string', NULL, N'20', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831876849667', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'cashier_id', N'cashier_id', N'string', NULL, N'21', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831876849668', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'cashier_loan_amount', N'cashier_loan_amount', N'string', NULL, N'22', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831876849669', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'manager_id', N'manager_id', N'string', NULL, N'23', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831876849670', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'manager_audit', N'manager_audit', N'string', NULL, N'24', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831881043970', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'cashier_loan_time', N'cashier_loan_time', N'string', NULL, N'25', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831881043971', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'depart_address', N'depart_address', N'string', NULL, N'26', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831881043972', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'bpm_status', N'bpm_status', N'string', NULL, N'27', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831881043973', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'create_by', N'create_by', N'string', NULL, N'28', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831881043974', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'create_time', N'create_time', N'string', NULL, N'29', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831881043975', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'update_by', N'update_by', N'string', NULL, N'30', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324283831881043976', NULL, N'2020-11-05 17:34:04.0000000', NULL, NULL, N'1225317914627805185', N'update_time', N'update_time', N'string', NULL, N'31', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284543151116290', NULL, N'2020-11-05 17:36:54.0000000', NULL, NULL, N'1273525013525344258', N'id', N'id', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284543159504898', NULL, N'2020-11-05 17:36:54.0000000', NULL, NULL, N'1273525013525344258', N'hnum', N'hnum', N'string', NULL, N'2', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284543159504899', NULL, N'2020-11-05 17:36:54.0000000', NULL, NULL, N'1273525013525344258', N'hname', N'hname', N'string', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284543159504900', NULL, N'2020-11-05 17:36:54.0000000', NULL, NULL, N'1273525013525344258', N'danwei', N'danwei', N'string', NULL, N'4', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284543163699201', NULL, N'2020-11-05 17:36:54.0000000', NULL, NULL, N'1273525013525344258', N'num', N'num', N'string', NULL, N'5', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284543163699202', NULL, N'2020-11-05 17:36:54.0000000', NULL, NULL, N'1273525013525344258', N'danjia', N'danjia', N'string', NULL, N'6', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284543163699203', NULL, N'2020-11-05 17:36:54.0000000', NULL, NULL, N'1273525013525344258', N'fanli', N'fanli', N'string', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284543167893506', NULL, N'2020-11-05 17:36:54.0000000', NULL, NULL, N'1273525013525344258', N'beizhu', N'beizhu', N'string', NULL, N'8', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284890212995073', NULL, N'2020-11-05 17:38:17.0000000', NULL, NULL, N'1290104038414721025', N'id', N'id', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284890212995074', NULL, N'2020-11-05 17:38:17.0000000', NULL, NULL, N'1290104038414721025', N'gname', N'gname', N'string', NULL, N'2', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284890212995075', NULL, N'2020-11-05 17:38:17.0000000', NULL, NULL, N'1290104038414721025', N'gdata', N'gdata', N'string', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284890221383682', NULL, N'2020-11-05 17:38:17.0000000', NULL, NULL, N'1290104038414721025', N'tdata', N'tdata', N'string', NULL, N'4', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284890221383683', NULL, N'2020-11-05 17:38:17.0000000', NULL, NULL, N'1290104038414721025', N'didian', N'didian', N'string', NULL, N'5', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284890221383684', NULL, N'2020-11-05 17:38:17.0000000', NULL, NULL, N'1290104038414721025', N'zhaiyao', N'zhaiyao', N'string', NULL, N'6', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324284890221383685', NULL, N'2020-11-05 17:38:17.0000000', NULL, NULL, N'1290104038414721025', N'num', N'num', N'string', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599377526786', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'name', N'name', N'string', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599377526787', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'time', N'time', N'string', NULL, N'2', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599377526788', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'didian', N'didian', N'string', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915393', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'bianhao', N'bianhao', N'string', NULL, N'4', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915394', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'yname', N'yname', N'string', NULL, N'5', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915395', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'suoyou', N'suoyou', N'string', NULL, N'6', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915396', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'zhuzhi', N'zhuzhi', N'string', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915397', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'danyuan', N'danyuan', N'string', NULL, N'8', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915398', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'type', N'type', N'string', NULL, N'9', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915399', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'xtype', N'xtype', N'string', NULL, N'10', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915400', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'riqi', N'riqi', N'string', NULL, N'11', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915401', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'mianji', N'mianji', N'string', NULL, N'12', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915402', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'chanquan', N'chanquan', N'string', NULL, N'13', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915403', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'beizhu', N'beizhu', N'string', NULL, N'14', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1324285599385915404', NULL, N'2020-11-05 17:41:06.0000000', NULL, NULL, N'1284070508744257537', N'fujian', N'fujian', N'string', NULL, N'15', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329325550439874561', NULL, N'2020-11-19 15:28:04.0000000', NULL, NULL, N'1329325550314045441', N'id', N'id', N'String', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329325550452457473', NULL, N'2020-11-19 15:28:04.0000000', NULL, NULL, N'1329325550314045441', N'realname', N'真名', N'String', NULL, N'3', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329325550452457474', NULL, N'2020-11-19 15:28:04.0000000', NULL, NULL, N'1329325550314045441', N'birthday', N'性别', N'String', NULL, N'7', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329325550452457475', NULL, N'2020-11-19 15:28:04.0000000', NULL, NULL, N'1329325550314045441', N'sex', N'sex', N'String', NULL, N'8', N'1', NULL, N'sex')
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329325550452457476', NULL, N'2020-11-19 15:28:04.0000000', NULL, NULL, N'1329325550314045441', N'email', N'email', N'String', NULL, N'9', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329325550460846081', NULL, N'2020-11-19 15:28:04.0000000', NULL, NULL, N'1329325550314045441', N'phone', N'phone', N'String', NULL, N'10', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329325550460846082', NULL, N'2020-11-19 15:28:04.0000000', NULL, NULL, N'1329325550314045441', N'post', N'post', N'String', NULL, N'18', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329325550469234690', NULL, N'2020-11-19 15:28:04.0000000', NULL, NULL, N'1329325550314045441', N'telephone', N'telephone', N'String', NULL, N'19', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329327316107640834', NULL, N'2020-11-19 15:35:05.0000000', NULL, NULL, N'1329327316048920577', N'count(1)', N'人数', N'String', NULL, N'1', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_field]  VALUES (N'1329327316120223746', NULL, N'2020-11-19 15:35:05.0000000', NULL, NULL, N'1329327316048920577', N'sex', N'性别', N'String', NULL, N'2', N'0', NULL, NULL)
GO


-- ----------------------------
-- Table structure for jimu_report_db_param
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jimu_report_db_param]') AND type IN ('U'))
	DROP TABLE [dbo].[jimu_report_db_param]
GO

CREATE TABLE [dbo].[jimu_report_db_param] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [jimu_report_head_id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [param_name] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [param_txt] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [param_value] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_num] int  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[jimu_report_db_param] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'动态报表ID',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'jimu_report_head_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数字段',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'param_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数文本',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'param_txt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数默认值',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'param_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'order_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_db_param',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of jimu_report_db_param
-- ----------------------------
INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'078d99565feef91904c84b42b43f5174', N'1273495682564534273', N'id', N'id', N'1', N'1', NULL, N'2020-08-03 09:55:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'1324279360203526146', N'1324279359998005250', N'pageSize', N'pageSize', N'10', N'2', NULL, N'2020-08-03 15:19:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'1324279360220303361', N'1324279359998005250', N'pageNo', N'pageNo', N'1', N'1', NULL, N'2020-08-03 15:19:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'143f8c164072ddbdeafec5c5b1466827', N'1272858455908073473', N'id', N'id', N'1', N'1', NULL, N'2020-07-21 15:31:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'173c869cc45b683a9cfe25826110cead', N'1272834687525482497', N'id', N'id', N'1', N'1', NULL, N'2020-08-03 09:57:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'1805eb351a966dc3c039b5239b6faa49', N'1291310198925840385', N'sex', N'sex', N'男', N'2', NULL, N'2020-06-08 15:21:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'256eb2f8582ce4d74559b1fc1e2917ca', N'1291310198925840385', N'id', N'id', N'111', N'1', NULL, N'2020-06-08 15:21:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'3a9efc51a6b6723d5a0ddf109aacb2b5', N'1288038655293661186', N'pageNo', N'pageNo', N'1', N'1', NULL, N'2020-07-30 17:26:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'3ced36c7a2cce40c667cc485bf59cd11', N'1291217511962902530', N'pageSize', N'pageSize', N'10', N'2', NULL, N'2020-08-03 15:19:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'49bd3f212cd6c406c8584e6bb0d9cf93', N'1291549569390243841', N'pageSize', N'pageSize', N'10', N'2', NULL, N'2020-07-30 17:26:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'57165a6fe5f2b700d4ef19518de4defd', N'1290104038414721025', N'id', N'id', N'1', N'1', NULL, N'2020-08-03 09:55:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'7569e95c1fa73d5438aceb19c1b85ef0', N'1288038655293661186', N'pageSize', N'pageSize', N'10', N'2', NULL, N'2020-07-30 17:26:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'7d7765754aadaddab91bf1257447ae73', N'1291549569390243841', N'pageNo', N'pageNo', N'1', N'1', NULL, N'2020-07-30 17:26:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'90b22a058cc331146b548bc93f09b5cd', N'1289140698221678593', N'pageSize', N'pageSize', N'10', N'2', NULL, N'2020-08-03 15:19:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'a803707f3383dd9f4685fadc7efa07f4', N'1224643501392728065', N'sex', N'sex', N'男', N'2', NULL, N'2020-06-08 15:21:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'b7c34e8a3c2804715825af4bdbcf857a', N'1224643501392728065', N'id', N'id', N'111', N'1', NULL, N'2020-06-08 15:21:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'd8010a4ffbe567e6117e7f59641aeb7c', N'1289140698221678593', N'pageNo', N'pageNo', N'1', N'1', NULL, N'2020-08-03 15:19:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jimu_report_db_param]  VALUES (N'd9d94d6b09dd074f39af96d7a4696f9a', N'1291217511962902530', N'pageNo', N'pageNo', N'1', N'1', NULL, N'2020-08-03 15:19:54.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for jimu_report_map
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jimu_report_map]') AND type IN ('U'))
	DROP TABLE [dbo].[jimu_report_map]
GO

CREATE TABLE [dbo].[jimu_report_map] (
  [id] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [label] nvarchar(125) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(125) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [data] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[jimu_report_map] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地图名称',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'label'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地图编码',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地图数据',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'data'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'0表示未删除,1表示删除',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地图配置表',
'SCHEMA', N'dbo',
'TABLE', N'jimu_report_map'
GO


-- ----------------------------
-- Indexes structure for table jimu_report
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_code]
ON [dbo].[jimu_report] (
  [code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table jimu_report
-- ----------------------------
ALTER TABLE [dbo].[jimu_report] ADD CONSTRAINT [PK__jimu_rep__3213E83FC7760036] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table jimu_report_data_source
-- ----------------------------
ALTER TABLE [dbo].[jimu_report_data_source] ADD CONSTRAINT [PK__jimu_rep__3213E83F470A65AF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table jimu_report_db
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_key]
ON [dbo].[jimu_report_db] (
  [db_key] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table jimu_report_db
-- ----------------------------
ALTER TABLE [dbo].[jimu_report_db] ADD CONSTRAINT [PK__jimu_rep__3213E83F3640044F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table jimu_report_db_field
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_dbfiledid]
ON [dbo].[jimu_report_db_field] (
  [jimu_report_db_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table jimu_report_db_field
-- ----------------------------
ALTER TABLE [dbo].[jimu_report_db_field] ADD CONSTRAINT [PK__jimu_rep__3213E83F7EA7F089] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table jimu_report_db_param
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_jmrheadid]
ON [dbo].[jimu_report_db_param] (
  [jimu_report_head_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table jimu_report_db_param
-- ----------------------------
ALTER TABLE [dbo].[jimu_report_db_param] ADD CONSTRAINT [PK__jimu_rep__3213E83F9A98D59D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table jimu_report_map
-- ----------------------------
CREATE NONCLUSTERED INDEX [uk_jrm_name]
ON [dbo].[jimu_report_map] (
  [name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table jimu_report_map
-- ----------------------------
ALTER TABLE [dbo].[jimu_report_map] ADD CONSTRAINT [PK__jimu_rep__3213E83F5013D1D4] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

