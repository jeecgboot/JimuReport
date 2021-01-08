/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 127.0.0.1:3306
 Source Schema         : jeecg-boot

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 05/01/2021 14:42:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `dict_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `type` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `indextable_dict_code`(`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0b1dac3e87ed7229ae19a586a8b8c8f8', '物资类型', 'wz_cc_type', NULL, 0, 'admin', '2019-04-26 18:25:48', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('0b5d19e1fce4b2e6647e6b4a17760c14', '通告类型', 'msg_category', '消息类型1:通知公告2:系统消息', 0, 'admin', '2019-04-22 18:01:35', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1166528843122561025', '测试字典', 'ceshi_code', '', 0, 'admin', '2019-08-28 09:52:04', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174509082208395266', '职务职级', 'position_rank', '职务表职级字典', 0, 'admin', '2019-09-19 10:22:41', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174511106530525185', '机构类型', 'org_category', '机构类型 1公司，2部门 3岗位', 0, 'admin', '2019-09-19 10:30:43', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1178295274528845826', '表单权限策略', 'form_perms_type', '', 0, 'admin', '2019-09-29 21:07:39', 'admin', '2019-09-29 21:08:26', NULL);
INSERT INTO `sys_dict` VALUES ('1199517671259906049', '紧急程度', 'urgent_level', '日程计划紧急程度', 0, 'admin', '2019-11-27 10:37:53', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1199518099888414722', '日程计划类型', 'eoa_plan_type', '', 0, 'admin', '2019-11-27 10:39:36', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1199525215290306561', '日程计划状态', 'eoa_plan_status', '', 0, 'admin', '2019-11-27 11:07:52', 'admin', '2019-11-27 11:10:11', 0);
INSERT INTO `sys_dict` VALUES ('1204580702536957953', '打卡类型', 'sign_type', '', 0, 'admin', '2019-12-11 09:56:34', 'admin', '2020-02-13 14:21:36', 0);
INSERT INTO `sys_dict` VALUES ('1204581134206337025', '打卡状态', 'sign_status', '', 0, 'admin', '2019-12-11 09:58:17', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1209733563293962241', '数据库类型', 'database_type', '', 0, 'admin', '2019-12-25 15:12:12', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1232913193820581889', 'Online表单业务分类', 'ol_form_biz_type', '', 0, 'admin', '2020-02-27 14:19:46', 'admin', '2020-02-27 14:20:23', 0);
INSERT INTO `sys_dict` VALUES ('1242281790421389314', '会议类型', 'mettingType', '', 0, 'admin', '2020-03-24 10:47:13', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1242298510024429569', '提醒方式', 'remindMode', '', 0, 'admin', '2020-03-24 11:53:40', 'admin', '2020-03-24 12:03:22', 0);
INSERT INTO `sys_dict` VALUES ('1244538302904672258', '提醒时间', 'remindTime', '', 0, 'admin', '2020-03-30 16:13:48', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1244538772909989889', '重复提醒', 'reminders', '', 0, 'admin', '2020-03-30 16:15:40', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1244941599661178882', '表单设计器路由类型', 'desform_route_type', '表单设计器下一步路由跳转类型', 0, 'admin', '2020-03-31 18:56:22', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1250687930947620866', '定时任务状态', 'quartz_status', '', 0, 'admin', '2020-04-16 15:30:14', '', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('1252881342601908225', '栏目类型', 'cms_menu_type', '', 0, 'admin', '2020-04-22 16:46:04', '', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('1253673013610672130', '会议室规模', 'meeting_scale', '', 0, 'admin', '2020-04-24 21:11:53', '', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('1272739651112034306', '缓急', 'urgency', '', 0, 'admin', '2020-06-16 11:55:54', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1272740254731100161', '密级', 'secret_level', '', 0, 'admin', '2020-06-16 11:58:18', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1280401766745718786', '租户状态', 'tenant_status', '租户状态', 0, 'admin', '2020-07-07 15:22:25', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1336551227544694785', '999', '999', '', 1, 'admin', '2020-12-09 14:00:19', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('20863a840c7622c3eab0ee69e55a8c7c', '常用审批语', 'approval_remarks', '常用审批语', 0, 'admin', '2019-03-15 11:03:26', 'admin', '2019-06-10 19:38:31', 0);
INSERT INTO `sys_dict` VALUES ('236e8a4baff0db8c62c00dd95632834f', '同步工作流引擎', 'activiti_sync', '同步工作流引擎', 0, 'admin', '2019-05-15 15:27:33', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2e02df51611a4b9632828ab7e5338f00', '权限策略', 'perms_type', '权限策略', 0, 'admin', '2019-04-26 18:26:55', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2f0320997ade5dd147c90130f7218c3e', '推送类别', 'msg_type', '', 0, 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', 0);
INSERT INTO `sys_dict` VALUES ('3486f32803bb953e7155dab3513dc68b', '删除状态', 'del_flag', '', 0, 'admin', '2019-10-18 21:46:26', 'admin', '2019-05-31 11:32:41', 0);
INSERT INTO `sys_dict` VALUES ('36d57175542a3ea85073923e8fccc21c', '尺码类型', 'air_china_size', NULL, 0, 'admin', '2019-04-23 23:02:44', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'sex', NULL, 0, NULL, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', 1);
INSERT INTO `sys_dict` VALUES ('4274efc2292239b6f000b153f50823ff', '全局权限策略', 'global_perms_type', '全局权限策略', 0, 'admin', '2019-05-10 17:54:05', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('49a0f7247f9c2a7df4e5733b790a4c9f', '供应商', 'air_china_ supplier', NULL, 0, 'admin', '2019-04-24 16:49:25', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c03fca6bf1f0299c381213961566349', 'Online图表展示模板', 'online_graph_display_template', 'Online图表展示模板', 0, 'admin', '2019-04-12 17:28:50', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c753b5293304e7a445fd2741b46529d', '字典状态', 'dict_item_status', NULL, 0, 'admin', '2019-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', 1);
INSERT INTO `sys_dict` VALUES ('4d7fec1a7799a436d26d02325eff295e', '优先级', 'priority', '优先级', 0, 'admin', '2019-03-16 17:03:34', 'admin', '2019-04-16 17:39:23', 0);
INSERT INTO `sys_dict` VALUES ('4e4602b3e3686f0911384e188dc7efb4', '条件规则', 'rule_conditions', '', 0, 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', 0);
INSERT INTO `sys_dict` VALUES ('4f69be5f507accea8d5df5f11346181a', '发送消息类型', 'msgType', NULL, 0, 'admin', '2019-04-11 14:27:09', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('68168534ff5065a152bfab275c2136f8', '有效无效状态', 'valid_status', '有效无效状态', 0, 'admin', '2020-09-26 19:21:14', 'admin', '2019-06-07 00:30:10', 0);
INSERT INTO `sys_dict` VALUES ('72cce0989df68887546746d8f09811aa', 'Online表单类型', 'cgform_table_type', '', 0, 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', 0);
INSERT INTO `sys_dict` VALUES ('76c1d6755018a918c9eeda575dbf3f98', '计量单位', 'air_china_unit', NULL, 0, 'admin', '2017-12-23 23:00:02', 'admin', '2019-04-23 23:13:52', 0);
INSERT INTO `sys_dict` VALUES ('78bda155fe380b1b3f175f1e88c284c6', '流程状态', 'bpm_status', '流程状态', 0, 'admin', '2019-05-09 16:31:52', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('83bfb33147013cc81640d5fd9eda030c', '日志类型', 'log_type', NULL, 0, 'admin', '2019-03-18 23:22:19', NULL, NULL, 1);
INSERT INTO `sys_dict` VALUES ('880a895c98afeca9d9ac39f29e67c13e', '操作类型', 'operate_type', '操作类型', 0, 'admin', '2019-07-22 10:54:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('8dfe32e2d29ea9430a988b3b558bf233', '发布状态', 'send_status', '发布状态', 0, 'admin', '2019-04-16 17:40:42', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a7adbcd86c37f7dbc9b66945c82ef9e6', '1是0否', 'yn', '', 1, 'admin', '2019-05-22 19:29:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'msgSendStatus', NULL, 0, 'admin', '2019-04-12 18:18:17', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'menu_type', NULL, 0, 'admin', '2019-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', 1);
INSERT INTO `sys_dict` VALUES ('bd1b8bc28e65d6feefefb6f3c79f42fd', 'Online图表数据类型', 'online_graph_data_type', 'Online图表数据类型', 0, 'admin', '2019-04-12 17:24:24', 'admin', '2019-04-12 17:24:57', 0);
INSERT INTO `sys_dict` VALUES ('c36169beb12de8a71c8683ee7c28a503', '部门状态', 'depart_status', NULL, 0, 'admin', '2019-03-18 21:59:51', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('c5a14c75172783d72cbee6ee7f5df5d1', 'Online图表类型', 'online_graph_type', 'Online图表类型', 0, 'admin', '2019-04-12 17:04:06', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('c72e92c2c13cdbc07b455e6abcc60d47', '启动状态', 'air_china_valid', NULL, 0, 'admin', '2019-04-23 23:05:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('d6e1152968b02d69ff358c75b48a6ee1', '流程类型', 'bpm_process_type', NULL, 0, 'admin', '2019-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', 0);
INSERT INTO `sys_dict` VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'user_status', NULL, 0, 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典项文本',
  `item_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典项值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) NULL DEFAULT NULL COMMENT '排序',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_dict_id`(`dict_id`) USING BTREE,
  INDEX `index_table_sort_order`(`sort_order`) USING BTREE,
  INDEX `index_table_dict_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c875d76c9b022e2179128', '4d7fec1a7799a436d26d02325eff295e', '低', 'L', '低', 3, 1, 'admin', '2019-04-16 17:04:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('00cd5762c968332e2bf8d1fdae872f26', '76c1d6755018a918c9eeda575dbf3f98', '条', '3', NULL, 3, 1, 'admin', '2019-04-23 23:00:42', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '已删除', '1', NULL, NULL, 1, 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20');
INSERT INTO `sys_dict_item` VALUES ('0737b49b097033b35e1882f970d43263', '36d57175542a3ea85073923e8fccc21c', '量体类', '1', NULL, 1, 1, 'admin', '2019-04-23 23:03:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('08ec6c5c986766cc0f398bf88b2c7fd5', '20863a840c7622c3eab0ee69e55a8c7c', '呈领导阅示', '呈领导阅示', '呈领导阅示', 7, 1, 'admin', '2019-05-15 11:07:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('096c2e758d823def3855f6376bc736fb', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'SQL', 'sql', NULL, 1, 1, 'admin', '2019-04-12 17:26:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '指定用户', 'USER', NULL, NULL, 1, 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28');
INSERT INTO `sys_dict_item` VALUES ('0ca4beba9efc4f9dd54af0911a946d5c', '72cce0989df68887546746d8f09811aa', '附表', '3', NULL, 3, 1, 'admin', '2019-03-27 10:13:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1030a2652608f5eac3b49d70458b8532', '2e02df51611a4b9632828ab7e5338f00', '禁用', '2', '禁用', 2, 1, 'admin', '2021-03-26 18:27:28', 'admin', '2019-04-26 18:39:11');
INSERT INTO `sys_dict_item` VALUES ('10e3b1b78da8b40161b7b89cefb2f31b', '0b1dac3e87ed7229ae19a586a8b8c8f8', '衣服', 'yifu', NULL, 1, 1, 'admin', '2019-04-26 18:26:04', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1166528884218351617', '1166528843122561025', '男', '1', '', 1, 1, 'admin', '2019-08-28 09:52:14', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1166528900752297986', '1166528843122561025', '女', '2', '', 1, 1, 'admin', '2019-08-28 09:52:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1174509082208395266', '1174511106530525185', '岗位', '3', '岗位', 1, 1, 'admin', '2019-09-19 10:31:16', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1174509601047994369', '1174509082208395266', '员级', '1', '', 1, 1, 'admin', '2019-09-19 10:24:45', 'admin', '2019-09-23 11:46:39');
INSERT INTO `sys_dict_item` VALUES ('1174509667297026049', '1174509082208395266', '助级', '2', '', 2, 1, 'admin', '2019-09-19 10:25:01', 'admin', '2019-09-23 11:46:47');
INSERT INTO `sys_dict_item` VALUES ('1174509713568587777', '1174509082208395266', '中级', '3', '', 3, 1, 'admin', '2019-09-19 10:25:12', 'admin', '2019-09-23 11:46:56');
INSERT INTO `sys_dict_item` VALUES ('1174509788361416705', '1174509082208395266', '副高级', '4', '', 4, 1, 'admin', '2019-09-19 10:25:30', 'admin', '2019-09-23 11:47:06');
INSERT INTO `sys_dict_item` VALUES ('1174509835803189250', '1174509082208395266', '正高级', '5', '', 5, 1, 'admin', '2019-09-19 10:25:41', 'admin', '2019-09-23 11:47:12');
INSERT INTO `sys_dict_item` VALUES ('1174511197735665665', '1174511106530525185', '公司', '1', '公司', 1, 1, 'admin', '2019-09-19 10:31:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1174511244036587521', '1174511106530525185', '部门', '2', '部门', 1, 1, 'admin', '2019-09-19 10:31:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1178295553450061826', '1178295274528845826', '可编辑(未授权禁用)', '2', '', 2, 1, 'admin', '2019-09-29 21:08:46', 'admin', '2019-09-29 21:09:18');
INSERT INTO `sys_dict_item` VALUES ('1178295639554928641', '1178295274528845826', '可见(未授权不可见)', '1', '', 1, 1, 'admin', '2019-09-29 21:09:06', 'admin', '2019-09-29 21:09:24');
INSERT INTO `sys_dict_item` VALUES ('1199517884758368257', '1199517671259906049', '一般', '1', '', 1, 1, 'admin', '2019-11-27 10:38:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517914017832962', '1199517671259906049', '重要', '2', '', 1, 1, 'admin', '2019-11-27 10:38:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517941339529217', '1199517671259906049', '紧急', '3', '', 1, 1, 'admin', '2019-11-27 10:38:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518186144276482', '1199518099888414722', '日常记录', '1', '', 1, 1, 'admin', '2019-11-27 10:39:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518214858481666', '1199518099888414722', '本周工作', '2', '', 1, 1, 'admin', '2019-11-27 10:40:03', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518235943247874', '1199518099888414722', '下周计划', '3', '', 1, 1, 'admin', '2019-11-27 10:40:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525468672405505', '1199525215290306561', '未开始', '0', '', 1, 1, 'admin', '2019-11-27 11:08:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525490575060993', '1199525215290306561', '进行中', '2', '', 3, 1, 'admin', '2019-11-27 11:08:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525506429530114', '1199525215290306561', '已完成', '3', '', 4, 1, 'admin', '2019-11-27 11:09:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199607547704647681', '4f69be5f507accea8d5df5f11346181a', '系统', '4', '', 1, 1, 'admin', '2019-11-27 16:35:02', 'admin', '2019-11-27 19:37:46');
INSERT INTO `sys_dict_item` VALUES ('1203571948706095105', '1199525215290306561', '已提醒', '1', '', 2, 1, 'admin', '2019-12-08 15:08:09', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581455016067074', '1204580702536957953', '上班打卡', '1', '', 1, 1, 'admin', '2019-12-11 09:59:34', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581521328013314', '1204580702536957953', '下班打卡', '2', '', 1, 1, 'admin', '2019-12-11 09:59:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581542945456129', '1204580702536957953', '外出打卡', '3', '', 1, 1, 'admin', '2019-12-11 09:59:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581564143468546', '1204580702536957953', '请假', '4', '', 1, 1, 'admin', '2019-12-11 10:00:00', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581583089139713', '1204580702536957953', '出差', '5', '', 1, 1, 'admin', '2019-12-11 10:00:04', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581803613061122', '1204581134206337025', '缺卡', '0', '', 1, 1, 'admin', '2019-12-11 10:00:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581830603407362', '1204581134206337025', '正常', '1', '', 1, 1, 'admin', '2019-12-11 10:01:03', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581850283081729', '1204581134206337025', '迟到', '2', '', 1, 1, 'admin', '2019-12-11 10:01:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581868406669314', '1204581134206337025', '旷工', '3', '', 1, 1, 'admin', '2019-12-11 10:01:12', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1204581886026940417', '1204581134206337025', '早退', '4', '', 1, 1, 'admin', '2019-12-11 10:01:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733775114702850', '1209733563293962241', 'MySQL5.5', '1', '', 1, 1, 'admin', '2019-12-25 15:13:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733839933476865', '1209733563293962241', 'Oracle', '2', '', 3, 1, 'admin', '2019-12-25 15:13:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733903020003330', '1209733563293962241', 'SQLServer', '3', '', 4, 1, 'admin', '2019-12-25 15:13:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1232913424813486081', '1232913193820581889', '官方示例', 'demo', '', 1, 1, 'admin', '2020-02-27 14:20:42', 'admin', '2020-02-27 14:21:37');
INSERT INTO `sys_dict_item` VALUES ('1232913493717512194', '1232913193820581889', '流程表单', 'bpm', '', 2, 1, 'admin', '2020-02-27 14:20:58', 'admin', '2020-02-27 14:22:20');
INSERT INTO `sys_dict_item` VALUES ('1232913605382467585', '1232913193820581889', '测试表单', 'temp', '', 4, 1, 'admin', '2020-02-27 14:21:25', 'admin', '2020-02-27 14:22:16');
INSERT INTO `sys_dict_item` VALUES ('1232914232372195330', '1232913193820581889', '导入表单', 'bdfl_include', '', 5, 1, 'admin', '2020-02-27 14:23:54', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1233279228474138625', '4e4602b3e3686f0911384e188dc7efb4', '左模糊', 'LEFT_LIKE', '', 7, 1, 'admin', '2020-02-28 14:34:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1233279337333104641', '4e4602b3e3686f0911384e188dc7efb4', '右模糊', 'RIGHT_LIKE', '', 7, 1, 'admin', '2020-02-28 14:34:42', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1242281959082741761', '1242281790421389314', '部门会议', 'depart', '', 1, 1, 'admin', '2020-03-24 10:47:54', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1242282018893516802', '1242281790421389314', '临时会议', 'temp', '', 1, 1, 'admin', '2020-03-24 10:48:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1242282141274918913', '1242281790421389314', '公司会议', 'company', '', 1, 1, 'admin', '2020-03-24 10:48:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1242282318563954690', '1242281790421389314', '培训会议', 'train', '', 1, 1, 'admin', '2020-03-24 10:49:19', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1242282375325470721', '1242281790421389314', '普通会议', 'common', '', 1, 1, 'admin', '2020-03-24 10:49:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1242300779390357505', '1242298510024429569', '短信提醒', '2', '', 2, 1, 'admin', '2020-03-24 12:02:41', 'admin', '2020-03-30 18:21:33');
INSERT INTO `sys_dict_item` VALUES ('1242300814383435777', '1242298510024429569', '邮件提醒', '1', '', 1, 1, 'admin', '2020-03-24 12:02:49', 'admin', '2020-03-30 18:21:26');
INSERT INTO `sys_dict_item` VALUES ('1242300887343353857', '1242298510024429569', '系统消息', '4', '', 4, 1, 'admin', '2020-03-24 12:03:07', 'admin', '2020-03-30 18:21:43');
INSERT INTO `sys_dict_item` VALUES ('1244538412480864258', '1244538302904672258', '不提醒', '0', '', 1, 1, 'admin', '2020-03-30 16:14:14', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538453169807361', '1244538302904672258', '开始时', '1', '', 1, 1, 'admin', '2020-03-30 16:14:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538498132746241', '1244538302904672258', '提前5分钟', '2', '', 2, 1, 'admin', '2020-03-30 16:14:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538537420791810', '1244538302904672258', '提前10分钟', '3', '', 3, 1, 'admin', '2020-03-30 16:14:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538569926647810', '1244538302904672258', '提前15分钟', '4', '', 4, 1, 'admin', '2020-03-30 16:14:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538620744835073', '1244538302904672258', '提前30分钟', '5', '', 5, 1, 'admin', '2020-03-30 16:15:04', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538674016690178', '1244538302904672258', '提前1小时', '6', '', 6, 1, 'admin', '2020-03-30 16:15:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538712323268610', '1244538302904672258', '提前2小时', '7', '', 7, 1, 'admin', '2020-03-30 16:15:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538832364249090', '1244538772909989889', '不重复', '0', '', 1, 1, 'admin', '2020-03-30 16:15:54', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538882335186946', '1244538772909989889', '每天', '1', '', 1, 1, 'admin', '2020-03-30 16:16:06', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538920792760321', '1244538772909989889', '每周', '2', '', 2, 1, 'admin', '2020-03-30 16:16:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244538964811980802', '1244538772909989889', '每月（当日）', '3', '', 3, 1, 'admin', '2020-03-30 16:16:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244539005064716289', '1244538772909989889', '每年（当日）', '4', '', 4, 1, 'admin', '2020-03-30 16:16:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1244941726052335617', '1244941599661178882', '跳转到表单', '1', '', 1, 1, 'admin', '2020-03-31 18:56:52', 'admin', '2020-03-31 21:16:05');
INSERT INTO `sys_dict_item` VALUES ('1244941755555069953', '1244941599661178882', '跳转到菜单', '2', '', 2, 1, 'admin', '2020-03-31 18:56:59', 'admin', '2020-03-31 21:16:09');
INSERT INTO `sys_dict_item` VALUES ('1244941784743231489', '1244941599661178882', '跳转到外部', '3', '', 3, 1, 'admin', '2020-03-31 18:57:06', 'admin', '2020-03-31 21:16:14');
INSERT INTO `sys_dict_item` VALUES ('1250688147579228161', '1250687930947620866', '正常', '0', '', 1, 1, 'admin', '2020-04-16 15:31:05', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688201064992770', '1250687930947620866', '停止', '-1', '', 1, 1, 'admin', '2020-04-16 15:31:18', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1252882203973537794', '1252881342601908225', '列表', '1', '', 1, 1, 'admin', '2020-04-22 16:49:29', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1252882248991002626', '1252881342601908225', '链接', '2', '', 1, 1, 'admin', '2020-04-22 16:49:40', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1253673087988264962', '1253673013610672130', '小型', 'S', '', 1, 1, 'admin', '2020-04-24 21:12:10', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1253673146364588034', '1253673013610672130', '中型', 'M', '', 1, 1, 'admin', '2020-04-24 21:12:24', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1253673184885075970', '1253673013610672130', '大型', 'L', '', 1, 1, 'admin', '2020-04-24 21:12:34', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1272739846449160193', '1272739651112034306', '一般', '0', '', 1, 1, 'admin', '2020-06-16 11:56:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1272739980616556545', '1272739651112034306', '平急', '1', '', 1, 1, 'admin', '2020-06-16 11:57:12', 'admin', '2020-10-28 17:50:22');
INSERT INTO `sys_dict_item` VALUES ('1272740017782284289', '1272739651112034306', '加急', '2', '', 1, 1, 'admin', '2020-06-16 11:57:21', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1272740063856713730', '1272739651112034306', '特急', '3', '', 1, 1, 'admin', '2020-06-16 11:57:32', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1272740134505570306', '1272739651112034306', '特提', '4', '', 1, 1, 'admin', '2020-06-16 11:57:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1272740342673072129', '1272740254731100161', '一般', '0', '', 1, 1, 'admin', '2020-06-16 11:58:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1272740397966581762', '1272740254731100161', '秘密', '1', '', 1, 1, 'admin', '2020-06-16 11:58:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1272740445697761282', '1272740254731100161', '机密', '2', '', 1, 1, 'admin', '2020-06-16 11:59:03', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1272740494238441473', '1272740254731100161', '绝密', '3', '', 1, 1, 'admin', '2020-06-16 11:59:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401815068295170', '1280401766745718786', '正常', '1', '', 1, 1, 'admin', '2020-07-07 15:22:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401847607705602', '1280401766745718786', '冻结', '0', '', 1, 1, 'admin', '2020-07-07 15:22:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280417387279060994', '1199525215290306561', '已接受', '4', '', 4, 1, 'admin', '2020-07-07 16:24:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280417420456005634', '1199525215290306561', '已取消', '5', '5', 5, 1, 'admin', '2020-07-07 16:24:36', 'admin', '2020-07-07 16:24:45');
INSERT INTO `sys_dict_item` VALUES ('1305827309355302914', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'API', 'api', '', 3, 1, 'admin', '2020-09-15 19:14:26', 'admin', '2020-09-15 19:14:41');
INSERT INTO `sys_dict_item` VALUES ('1334440962954936321', '1209733563293962241', 'MYSQL5.7', '4', NULL, 1, 1, 'admin', '2020-12-03 18:16:02', 'admin', '2020-12-03 18:16:02');
INSERT INTO `sys_dict_item` VALUES ('147c48ff4b51545032a9119d13f3222a', 'd6e1152968b02d69ff358c75b48a6ee1', '测试流程', 'test', NULL, 1, 1, 'admin', '2019-03-22 19:27:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1543fe7e5e26fb97cdafe4981bedc0c8', '4c03fca6bf1f0299c381213961566349', '单排布局', 'single', NULL, 2, 1, 'admin', '2022-07-12 17:43:39', 'admin', '2019-04-12 17:43:57');
INSERT INTO `sys_dict_item` VALUES ('1db531bcff19649fa82a644c8a939dc4', '4c03fca6bf1f0299c381213961566349', '组合布局', 'combination', '', 4, 1, 'admin', '2019-05-11 16:07:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('222705e11ef0264d4214affff1fb4ff9', '4f69be5f507accea8d5df5f11346181a', '短信', '1', '', 1, 1, 'admin', '2023-02-28 10:50:36', 'admin', '2019-04-28 10:58:11');
INSERT INTO `sys_dict_item` VALUES ('23a5bb76004ed0e39414e928c4cde155', '4e4602b3e3686f0911384e188dc7efb4', '不等于', '!=', '不等于', 3, 1, 'admin', '2019-04-01 16:46:15', 'admin', '2019-04-01 17:48:40');
INSERT INTO `sys_dict_item` VALUES ('25847e9cb661a7c711f9998452dc09e6', '4e4602b3e3686f0911384e188dc7efb4', '小于等于', '<=', '小于等于', 6, 1, 'admin', '2019-04-01 16:44:34', 'admin', '2019-04-01 17:49:10');
INSERT INTO `sys_dict_item` VALUES ('2d51376643f220afdeb6d216a8ac2c01', '68168534ff5065a152bfab275c2136f8', '有效', '1', '有效', 1, 1, 'admin', '2020-10-26 19:22:01', 'admin', '2019-10-04 17:46:58');
INSERT INTO `sys_dict_item` VALUES ('308c8aadf0c37ecdde188b97ca9833f5', '8dfe32e2d29ea9430a988b3b558bf233', '已发布', '1', '已发布', 2, 1, 'admin', '2019-04-16 17:41:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('333e6b2196e01ef9a5f76d74e86a6e33', '8dfe32e2d29ea9430a988b3b558bf233', '未发布', '0', '未发布', 1, 1, 'admin', '2019-04-16 17:41:12', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('337ea1e401bda7233f6258c284ce4f50', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'JSON', 'json', NULL, 1, 1, 'admin', '2019-04-12 17:26:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送失败', '2', NULL, 3, 1, 'admin', '2019-04-12 18:20:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('3c209b31417aba7cd5663355611d12c5', '36d57175542a3ea85073923e8fccc21c', '羊毛衫及毛背心类', '3', NULL, 3, 1, 'admin', '2019-04-23 23:03:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('3fbc03d6c994ae06d083751248037c0e', '78bda155fe380b1b3f175f1e88c284c6', '已完成', '3', '已完成', 3, 1, 'admin', '2019-05-09 16:33:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41d7aaa40c9b61756ffb1f28da5ead8e', '0b5d19e1fce4b2e6647e6b4a17760c14', '通知公告', '1', NULL, 1, 1, 'admin', '2019-04-22 18:01:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41fa1e9571505d643aea87aeb83d4d76', '4e4602b3e3686f0911384e188dc7efb4', '等于', '=', '等于', 4, 1, 'admin', '2019-04-01 16:45:24', 'admin', '2019-04-01 17:49:00');
INSERT INTO `sys_dict_item` VALUES ('4d7bcaf63f274e262c8e919470e47e5f', '20863a840c7622c3eab0ee69e55a8c7c', '同意', '同意', '同意', 1, 1, 'admin', '2019-05-15 11:04:31', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('4f05fb5376f4c61502c5105f52e4dd2b', '83bfb33147013cc81640d5fd9eda030c', '操作日志', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:22:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('50223341bfb5ba30bf6319789d8d17fe', 'd6e1152968b02d69ff358c75b48a6ee1', '业务办理', 'business', NULL, 3, 1, 'admin', '2023-04-22 19:28:05', 'admin', '2019-03-22 23:24:39');
INSERT INTO `sys_dict_item` VALUES ('51222413e5906cdaf160bb5c86fb827c', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '是', '1', '', 1, 1, 'admin', '2019-05-22 19:29:45', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('538fca35afe004972c5f3947c039e766', '2e02df51611a4b9632828ab7e5338f00', '显示', '1', '显示', 1, 1, 'admin', '2025-03-26 18:27:13', 'admin', '2019-04-26 18:39:07');
INSERT INTO `sys_dict_item` VALUES ('5584c21993bde231bbde2b966f2633ac', '4e4602b3e3686f0911384e188dc7efb4', '自定义SQL', 'USE_SQL_RULES', '自定义SQL表达式', 9, 1, 'admin', '2019-04-01 10:45:24', 'admin', '2019-04-01 17:49:27');
INSERT INTO `sys_dict_item` VALUES ('56b9f1c6364c775236e1aa16ff97afae', '20863a840c7622c3eab0ee69e55a8c7c', '不同意', '不同意', '不同意', 6, 1, 'admin', '2019-05-15 11:07:17', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('58b73b344305c99b9d8db0fc056bbc0a', '72cce0989df68887546746d8f09811aa', '主表', '2', NULL, 2, 1, 'admin', '2019-03-27 10:13:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('598380c65be4568b6ad507e563aba667', '76c1d6755018a918c9eeda575dbf3f98', '包', '8', NULL, 8, 1, 'admin', '2019-04-23 23:01:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '全体用户', 'ALL', NULL, NULL, 1, 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09');
INSERT INTO `sys_dict_item` VALUES ('5d833f69296f691843ccdd0c91212b6b', '880a895c98afeca9d9ac39f29e67c13e', '修改', '3', '', 3, 1, 'admin', '2019-07-22 10:55:07', 'admin', '2019-07-22 10:55:41');
INSERT INTO `sys_dict_item` VALUES ('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '女', '2', NULL, 2, 1, NULL, '2019-01-04 14:56:56', NULL, '2019-01-04 17:38:12');
INSERT INTO `sys_dict_item` VALUES ('66c952ae2c3701a993e7db58f3baf55e', '4e4602b3e3686f0911384e188dc7efb4', '大于', '>', '大于', 1, 1, 'admin', '2019-04-01 10:45:46', 'admin', '2019-04-01 17:48:29');
INSERT INTO `sys_dict_item` VALUES ('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '未发送', '0', NULL, 1, 1, 'admin', '2019-04-12 18:19:23', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6a7a9e1403a7943aba69e54ebeff9762', '4f69be5f507accea8d5df5f11346181a', '邮件', '2', '', 2, 1, 'admin', '2031-02-28 10:50:44', 'admin', '2019-04-28 10:59:03');
INSERT INTO `sys_dict_item` VALUES ('6c682d78ddf1715baf79a1d52d2aa8c2', '72cce0989df68887546746d8f09811aa', '单表', '1', NULL, 1, 1, 'admin', '2019-03-27 10:13:29', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6d404fd2d82311fbc87722cd302a28bc', '4e4602b3e3686f0911384e188dc7efb4', '模糊', 'LIKE', '模糊', 7, 1, 'admin', '2019-04-01 16:46:02', 'admin', '2019-04-01 17:49:20');
INSERT INTO `sys_dict_item` VALUES ('6d4e26e78e1a09699182e08516c49fc4', '4d7fec1a7799a436d26d02325eff295e', '高', 'H', '高', 1, 1, 'admin', '2019-04-16 17:04:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6e65c7d1cb1a433b5cccc2e072f6c536', '76c1d6755018a918c9eeda575dbf3f98', '双', '4', NULL, 4, 1, 'admin', '2019-04-23 23:01:10', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7050c1522702bac3be40e3b7d2e1dfd8', 'c5a14c75172783d72cbee6ee7f5df5d1', '柱状图', 'bar', NULL, 1, 1, 'admin', '2019-04-12 17:05:17', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('71b924faa93805c5c1579f12e001c809', 'd6e1152968b02d69ff358c75b48a6ee1', 'OA办公', 'oa', NULL, 2, 1, 'admin', '2021-03-22 19:27:17', 'admin', '2019-03-22 23:24:36');
INSERT INTO `sys_dict_item` VALUES ('75b260d7db45a39fc7f21badeabdb0ed', 'c36169beb12de8a71c8683ee7c28a503', '不启用', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:29:41', 'admin', '2019-03-18 23:29:54');
INSERT INTO `sys_dict_item` VALUES ('7688469db4a3eba61e6e35578dc7c2e5', 'c36169beb12de8a71c8683ee7c28a503', '启用', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:29:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:30:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '按钮权限', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:25:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:30:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('83250269359855501ec4e9c0b7e21596', '4274efc2292239b6f000b153f50823ff', '可见/可访问(授权后可见/可访问)', '1', '', 1, 1, 'admin', '2023-06-10 17:54:51', 'admin', '2019-06-05 19:43:11');
INSERT INTO `sys_dict_item` VALUES ('84778d7e928bc843ad4756db1322301f', '4e4602b3e3686f0911384e188dc7efb4', '大于等于', '>=', '大于等于', 5, 1, 'admin', '2019-04-01 10:46:02', 'admin', '2019-04-01 17:49:05');
INSERT INTO `sys_dict_item` VALUES ('848d4da35ebd93782029c57b103e5b36', 'c5a14c75172783d72cbee6ee7f5df5d1', '饼图', 'pie', NULL, 3, 1, 'admin', '2019-04-12 17:05:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84dfc178dd61b95a72900fcdd624c471', '78bda155fe380b1b3f175f1e88c284c6', '处理中', '2', '处理中', 2, 1, 'admin', '2019-05-09 16:33:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '子菜单', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:25:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '微信', '3', NULL, 3, 1, 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31');
INSERT INTO `sys_dict_item` VALUES ('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '启用', '1', NULL, 0, 0, 'admin', '2019-03-18 23:19:27', 'admin', '2019-03-20 09:33:30');
INSERT INTO `sys_dict_item` VALUES ('8cdf08045056671efd10677b8456c999', '4274efc2292239b6f000b153f50823ff', '可编辑(未授权时禁用)', '2', '', 2, 1, 'admin', '2019-05-10 17:55:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8ff48e657a7c5090d4f2a59b37d1b878', '4d7fec1a7799a436d26d02325eff295e', '中', 'M', '中', 2, 1, 'admin', '2019-04-16 17:04:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('948923658baa330319e59b2213cda97c', '880a895c98afeca9d9ac39f29e67c13e', '添加', '2', '', 2, 1, 'admin', '2019-07-22 10:54:59', 'admin', '2019-07-22 10:55:36');
INSERT INTO `sys_dict_item` VALUES ('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '不启用', '0', NULL, 1, 1, 'admin', '2019-03-18 23:19:53', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('9c5b6144c4f954d938c96384e2e948aa', '20863a840c7622c3eab0ee69e55a8c7c', '请审批', '请审批', '请审批', 8, 1, 'admin', '2019-05-15 11:08:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a05f177a7d9aeb84125ee8bc9c4fc64b', '49a0f7247f9c2a7df4e5733b790a4c9f', '耐克供应商', '2', NULL, 1, 1, 'admin', '2023-01-24 16:49:39', 'admin', '2019-04-24 16:49:59');
INSERT INTO `sys_dict_item` VALUES ('a1e7d1ca507cff4a480c8caba7c1339e', '880a895c98afeca9d9ac39f29e67c13e', '导出', '6', '', 6, 1, 'admin', '2019-07-22 12:06:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a2be752dd4ec980afaec1efd1fb589af', '8dfe32e2d29ea9430a988b3b558bf233', '已撤销', '2', '已撤销', 3, 1, 'admin', '2019-04-16 17:41:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '一级菜单', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:24:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('adcf2a1fe93bb99a84833043f475fe0b', '4e4602b3e3686f0911384e188dc7efb4', '包含', 'IN', '包含', 8, 1, 'admin', '2019-04-01 16:45:47', 'admin', '2019-04-01 17:49:24');
INSERT INTO `sys_dict_item` VALUES ('b029a41a851465332ee4ee69dcf0a4c2', '0b5d19e1fce4b2e6647e6b4a17760c14', '系统消息', '2', NULL, 1, 1, 'admin', '2019-02-22 18:02:08', 'admin', '2019-04-22 18:02:13');
INSERT INTO `sys_dict_item` VALUES ('b038e6f80c527d684c9ca0e1ecbef72f', '49a0f7247f9c2a7df4e5733b790a4c9f', '阿迪供应商', '1', NULL, 1, 1, 'admin', '2023-01-24 16:49:34', 'admin', '2019-04-24 16:50:02');
INSERT INTO `sys_dict_item` VALUES ('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '正常', '0', NULL, NULL, 1, 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20');
INSERT INTO `sys_dict_item` VALUES ('b5f3bd5f66bb9a83fecd89228c0d93d1', '68168534ff5065a152bfab275c2136f8', '无效', '0', '无效', 2, 1, 'admin', '2020-09-26 19:21:49', 'admin', '2019-05-13 17:20:07');
INSERT INTO `sys_dict_item` VALUES ('b96af20aef0c9388f2ae843ea7f8d722', '20863a840c7622c3eab0ee69e55a8c7c', '请***阅示', '请***阅示', '请***阅示', 4, 1, 'admin', '2019-05-15 11:06:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('b9fbe2a3602d4a27b45c100ac5328484', '78bda155fe380b1b3f175f1e88c284c6', '待提交', '1', '待提交', 1, 1, 'admin', '2019-05-09 16:32:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('ba27737829c6e0e582e334832703d75e', '236e8a4baff0db8c62c00dd95632834f', '同步', '1', '同步', 1, 1, 'admin', '2019-05-15 15:28:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('bcec04526b04307e24a005d6dcd27fd6', '880a895c98afeca9d9ac39f29e67c13e', '导入', '5', '', 5, 1, 'admin', '2019-07-22 12:06:41', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('bdeae295bf98a61b45e9be0322657d4b', 'c72e92c2c13cdbc07b455e6abcc60d47', '不启动', '2', NULL, 1, 1, 'admin', '2019-04-23 23:05:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c4896da3525689b477b3c868d728c87f', 'c72e92c2c13cdbc07b455e6abcc60d47', '启动', '1', NULL, 1, 1, 'admin', '2019-04-23 23:05:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c53da022b9912e0aed691bbec3c78473', '880a895c98afeca9d9ac39f29e67c13e', '查询', '1', '', 1, 1, 'admin', '2019-07-22 10:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c5700a71ad08994d18ad1dacc37a71a9', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '否', '0', '', 1, 1, 'admin', '2019-05-22 19:29:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c83d907903a7a5ff52de60aabf3550ee', '76c1d6755018a918c9eeda575dbf3f98', '件', '1', NULL, 1, 1, 'admin', '2018-12-23 23:00:17', 'admin', '2019-04-23 23:14:00');
INSERT INTO `sys_dict_item` VALUES ('c8e63916333e588ef52d3eb3be9b6944', '0b1dac3e87ed7229ae19a586a8b8c8f8', 'dd', 'dd', NULL, 1, 1, 'admin', '2019-04-26 18:26:07', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c9c3fb6c8a06b7bf577b4f574adccd12', '20863a840c7622c3eab0ee69e55a8c7c', '请指示', '请指示', '请指示', 3, 1, 'admin', '2019-05-15 11:05:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('cbfcc5b88fc3a90975df23ffc8cbe29c', 'c5a14c75172783d72cbee6ee7f5df5d1', '曲线图', 'line', NULL, 2, 1, 'admin', '2019-05-12 17:05:30', 'admin', '2019-04-12 17:06:06');
INSERT INTO `sys_dict_item` VALUES ('d217592908ea3e00ff986ce97f24fb98', 'c5a14c75172783d72cbee6ee7f5df5d1', '数据列表', 'table', NULL, 4, 1, 'admin', '2019-04-12 17:05:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('d76e35d4fa1c2892ff812e1de08b8684', '36d57175542a3ea85073923e8fccc21c', '标准尺码类', '4', NULL, 4, 1, 'admin', '2019-04-23 23:03:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('da01e5c526fc1984ca60fdcf13354d05', '20863a840c7622c3eab0ee69e55a8c7c', '同意***的意见', '同意***的意见', '同意***的意见', 2, 1, 'admin', '2019-05-15 11:05:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('db681e7aabd2ff52fdfaf6c2770448ff', '76c1d6755018a918c9eeda575dbf3f98', '套', '2', NULL, 2, 1, 'admin', '2019-04-23 23:00:32', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '男', '1', '', 1, 1, NULL, '2027-08-04 14:56:49', 'admin', '2020-05-11 14:07:04');
INSERT INTO `sys_dict_item` VALUES ('e05d424ee35c707d7bc20de3719fb3ae', '76c1d6755018a918c9eeda575dbf3f98', '块', '7', NULL, 7, 1, 'admin', '2019-01-23 23:01:36', 'admin', '2019-04-23 23:01:48');
INSERT INTO `sys_dict_item` VALUES ('e6329e3a66a003819e2eb830b0ca2ea0', '4e4602b3e3686f0911384e188dc7efb4', '小于', '<', '小于', 2, 1, 'admin', '2019-04-01 16:44:15', 'admin', '2019-04-01 17:48:34');
INSERT INTO `sys_dict_item` VALUES ('e8f34a36f38f35e2efb1aaa342509242', '78bda155fe380b1b3f175f1e88c284c6', '已挂起', '5', '已挂起', 5, 1, 'admin', '2019-05-23 16:12:42', 'admin', '2019-05-22 18:39:42');
INSERT INTO `sys_dict_item` VALUES ('e94eb7af89f1dbfa0d823580a7a6e66a', '236e8a4baff0db8c62c00dd95632834f', '不同步', '0', '不同步', 2, 1, 'admin', '2019-05-15 15:28:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('ecb788a9b71d3d11357c31a0febefaaa', '36d57175542a3ea85073923e8fccc21c', '男衬衫类', '2', NULL, 2, 1, 'admin', '2019-04-23 23:03:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送成功', '1', NULL, 2, 1, 'admin', '2019-04-12 18:19:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f2688992fffa5c62e31ce50bbb1919d9', '20863a840c7622c3eab0ee69e55a8c7c', '审核无误', '审核无误', '审核无误', 9, 1, 'admin', '2019-05-15 11:08:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f2bda3b1ca643b789a2e712ad53b06fb', '36d57175542a3ea85073923e8fccc21c', '固定型号', '5', NULL, 5, 1, 'admin', '2019-04-23 23:03:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f37f90c496ec9841c4c326b065e00bb2', '83bfb33147013cc81640d5fd9eda030c', '登录日志', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:22:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f64ca22c7a2d5793a271590e7b01eb6b', '76c1d6755018a918c9eeda575dbf3f98', '个', '5', NULL, 6, 1, 'admin', '2019-04-23 23:01:21', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f753aff60ff3931c0ecb4812d8b5e643', '4c03fca6bf1f0299c381213961566349', '双排布局', 'double', NULL, 3, 1, 'admin', '2019-04-12 17:43:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f80a8f6838215753b05e1a5ba3346d22', '880a895c98afeca9d9ac39f29e67c13e', '删除', '4', '', 4, 1, 'admin', '2019-07-22 10:55:14', 'admin', '2019-07-22 10:55:30');
INSERT INTO `sys_dict_item` VALUES ('fb80836f3e69d977303e56023cf4b0ca', '20863a840c7622c3eab0ee69e55a8c7c', '请处理', '请处理', '请处理', 5, 1, 'admin', '2019-05-15 11:06:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('fcec03570f68a175e1964808dc3f1c91', '4c03fca6bf1f0299c381213961566349', 'Tab风格', 'tab', NULL, 1, 1, 'admin', '2019-04-12 17:43:31', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('fe50b23ae5e68434def76f67cef35d2d', '78bda155fe380b1b3f175f1e88c284c6', '已作废', '4', '已作废', 4, 1, 'admin', '2021-09-09 16:33:43', 'admin', '2019-05-09 16:34:40');

SET FOREIGN_KEY_CHECKS = 1;
