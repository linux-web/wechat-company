/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : jeewx-released

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2014-08-10 00:32:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cgform_button`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button`;
CREATE TABLE `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `button_icon` varchar(20) DEFAULT NULL,
  `BUTTON_NAME` varchar(50) DEFAULT NULL,
  `BUTTON_STATUS` varchar(2) DEFAULT NULL,
  `BUTTON_STYLE` varchar(20) DEFAULT NULL,
  `EXP` varchar(255) DEFAULT NULL,
  `FORM_ID` varchar(32) DEFAULT NULL,
  `OPT_TYPE` varchar(20) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_button_sql`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button_sql`;
CREATE TABLE `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button_sql
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_enhance_js`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_enhance_js`;
CREATE TABLE `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_enhance_js
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_field`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_field`;
CREATE TABLE `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `dict_field` varchar(100) DEFAULT NULL,
  `dict_table` varchar(100) DEFAULT NULL,
  `dict_text` varchar(100) DEFAULT NULL,
  `field_default` varchar(20) DEFAULT NULL,
  `field_href` varchar(200) DEFAULT NULL,
  `field_length` int(11) DEFAULT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) DEFAULT NULL,
  `is_key` varchar(2) DEFAULT NULL,
  `is_null` varchar(5) DEFAULT NULL,
  `is_query` varchar(5) DEFAULT NULL,
  `is_show` varchar(5) DEFAULT NULL,
  `is_show_list` varchar(5) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) DEFAULT NULL,
  `main_table` varchar(100) DEFAULT NULL,
  `old_field_name` varchar(32) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `point_length` int(11) DEFAULT NULL,
  `query_mode` varchar(10) DEFAULT NULL,
  `show_type` varchar(10) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_iwtkke1oigq9ukafldrovslx6` (`table_id`),
  CONSTRAINT `FK_iwtkke1oigq9ukafldrovslx6` FOREIGN KEY (`table_id`) REFERENCES `cgform_head` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_field
-- ----------------------------
INSERT INTO `cgform_field` VALUES ('402881e446676a0601466770878c0002', '主键', 'admin', '2014-06-04 23:12:46', '管理员', '', '', '', '', '', '0', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a060146677087df0003', '关键字', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'keyword', '', 'N', 'N', 'N', 'Y', 'Y', '100', '', '', 'key', '2', '0', 'single', 'text', 'string', 'admin', '2014-06-04 23:18:27', '管理员', '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a060146677087e20004', '类长名', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'classname', '', 'N', 'N', 'N', 'Y', 'Y', '100', '', '', 'classname', '3', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a060146677087e50005', '微信公众帐号', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'accountid', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountid', '4', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a0601466775b8fc0007', '功能名称', 'admin', '2014-06-04 23:18:27', '管理员', '', '', '', '', '', '120', 'name', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'name', '5', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a0601466775b9000008', '功能描述', 'admin', '2014-06-04 23:18:27', '管理员', '', '', '', '', '', '120', 'content', '', 'N', 'Y', 'N', 'Y', 'Y', '300', '', '', 'content', '6', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445120008', '主键', 'admin', '2014-05-04 21:02:39', '管理员', '', '', '', '', '', '0', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445ae0009', '公众帐号名称', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountname', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountname', '2', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445b5000b', '公众帐号TOKEN', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accounttoken', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accounttoken', '3', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445b8000c', '公众微信号', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountnumber', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountnumber', '4', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445c3000d', '公众号类型', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accounttype', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'accounttype', '5', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445c7000e', '电子邮箱', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountemail', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountemail', '6', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445cb000f', '公众帐号描述', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountdesc', '', 'N', 'Y', 'N', 'Y', 'Y', '500', '', '', 'accountdesc', '7', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845d16cb10145d1711e730002', '公众帐号APPID', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountappid', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountappid', '8', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845d16cb10145d1711e790003', '公众帐号APPSECRET', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountappsecret', '', 'N', 'Y', 'N', 'Y', 'Y', '500', '', '', 'accountappsecret', '9', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845d16cb10145d1711e7e0004', 'ACCESS_TOKEN', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountaccesstoken', '', 'N', 'Y', 'N', 'Y', 'Y', '1000', '', '', 'accountaccesstoken', '10', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f74632020009', '主键', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f7463216000a', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f746321c000b', '创建日期', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'Y', '20', '', '', 'create_date', '3', '0', 'single', 'text', 'Date', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f7463224000c', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '4', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f7463246000d', '修改日期', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '5', '0', 'single', 'text', 'Date', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f7463250000e', '分类名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'name', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'name', '6', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f746326b000f', '图片路径', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'imgurl', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'imgurl', '7', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f74632720010', '分类上级ID', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'parentid', '', 'N', 'Y', 'N', 'Y', 'Y', '36', '', '', 'parentid', '8', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f746327b0011', '卖家ID', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'seller_id', '', 'N', 'Y', 'N', 'N', 'N', '36', '', '', 'seller_id', '9', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed3c0002', '主键', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed620003', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed6a0004', '创建日期', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '3', '0', 'single', 'text', 'Date', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed880005', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '4', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed920006', '修改日期', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '5', '0', 'single', 'text', 'Date', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed9c0007', '标题信息', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'title', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'title', '6', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6eda50008', '标题图片', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'title_img', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'title_img', '7', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edbd0009', '商品详情', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'descriptions', '', 'N', 'Y', 'N', 'Y', 'Y', '5000', '', '', 'descriptions', '8', '0', 'single', 'text', 'Text', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edc5000a', '商品原价', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'price', '9', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edcc000b', '商品现价', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'real_price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'real_price', '10', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edd4000c', '折扣', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'sale', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'sale', '11', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edde000d', '销售数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'sell_count', '', 'N', 'Y', 'N', 'Y', 'Y', '11', '', '', 'sell_count', '12', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ede5000e', '评价数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'discuss_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'discuss_count', '13', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edec000f', '好评数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'good_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'good_count', '14', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edf40010', '差评数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'bad_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'bad_count', '15', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edff0011', '状态', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'statement', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'statement', '16', '0', 'single', 'text', 'string', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee1a0012', '上架时间', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'shelve_time', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'shelve_time', '17', '0', 'single', 'text', 'Date', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee220013', '下架时间', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'remove_time', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'remove_time', '18', '0', 'single', 'text', 'Date', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee280014', '快递名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'express_name', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'express_name', '19', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee2f0015', '快递费用', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'express_price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'express_price', '20', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee360016', '卖家ID', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'seller_id', '', 'N', 'Y', 'N', 'Y', 'Y', '36', '', '', 'seller_id', '21', '0', 'single', 'text', 'string', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52193b012f', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219410130', '订单号', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_code', null, 'N', 'Y', 'Y', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219460131', '订单日期', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_date', null, 'N', 'Y', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'date', 'Date', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219480132', '订单金额', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '3', '3', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52194a0133', '备注', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'Y', 'Y', 'Y', 'Y', '255', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219520134', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219550135', '请假标题', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'title', null, 'N', 'N', 'N', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219570136', '请假人', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'people', null, 'N', 'N', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219580137', '性别', 'admin', '2014-01-07 23:28:53', '管理员', 'sex', '', null, null, null, '0', 'sex', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '3', '0', 'single', 'list', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52195a0138', '请假开始时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'begindate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '4', '0', 'group', 'date', 'Date', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52195b0139', '请假结束时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'enddate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '5', '0', 'group', 'datetime', 'Date', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52195d013a', '所属部门', 'admin', '2014-01-07 23:28:53', '管理员', 'id', 't_s_depart', 'departname', null, null, '0', 'hol_dept', null, 'N', 'N', 'N', 'Y', 'Y', '32', '', '', null, '7', '0', 'single', 'list', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52195e013b', '请假原因', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'hol_reson', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521960013c', '部门审批人', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'dep_leader', null, 'N', 'N', 'N', 'Y', 'Y', '20', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521961013d', '部门审批意见', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521963013e', '请假天数', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'day_num', null, 'N', 'Y', 'N', 'Y', 'Y', '10', '', '', null, '6', '0', 'single', 'text', 'int', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52196e013f', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219700140', '客户名', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'name', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219720141', '单价', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219740142', '外键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'fk_id', null, 'N', 'N', 'Y', 'N', 'N', '36', 'id', 'jform_order_main', null, '5', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219750143', '电话', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'telphone', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219770144', '性别', 'admin', '2014-01-07 23:28:53', '管理员', 'sex', '', null, null, null, '120', 'sex', null, 'N', 'Y', 'Y', 'Y', 'Y', '4', '', '', null, '3', '0', 'single', 'radio', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52197b0145', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'checkbox', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52197d0146', '航班号', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'ticket_code', null, 'N', 'N', 'Y', 'Y', 'Y', '100', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52197f0147', '航班时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'tickect_date', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '2', '0', 'single', 'datetime', 'Date', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219810148', '外键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'fck_id', null, 'N', 'N', 'N', 'N', 'N', '36', 'id', 'jform_order_main', null, '3', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219860149', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521989014a', '机构合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'a', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '1', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52198a014b', '行政小计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52198d014c', '行政省', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b11', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '3', '0', 'group', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52198f014d', '行政市', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b12', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '4', '0', 'group', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521991014e', '行政县', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b13', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '5', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521994014f', '事业合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '6', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219970150', '参公小计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '7', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219990151', '参公省', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b31', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52199c0152', '参公市', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b32', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52199e0153', '参公县', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b33', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219a00154', '全额拨款', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '11', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219a30155', '差额拨款', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '12', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219a60156', '自收自支', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '13', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219a80157', '经费合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'd', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '14', '2', 'single', 'text', 'int', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219aa0158', '机构资质', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'd1', null, 'N', 'N', 'N', 'Y', 'Y', '1000', '', '', null, '15', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');

-- ----------------------------
-- Table structure for `cgform_ftl`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_ftl`;
CREATE TABLE `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) DEFAULT NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) DEFAULT NULL,
  `UPDATE_BY` varchar(36) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_ftl
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_head`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_head`;
CREATE TABLE `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) DEFAULT NULL,
  `sub_table_str` longtext,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `jform_pk_sequence` varchar(200) DEFAULT NULL,
  `jform_pk_type` varchar(100) DEFAULT NULL,
  `tab_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_head
-- ----------------------------
INSERT INTO `cgform_head` VALUES ('402881e446676a060146677087880001', '扩展接口管理', 'admin', '2014-06-04 23:12:46', '管理员', 'N', 'Y', 'Y', 'N', '1', '2', 'single', '0', null, 'weixin_expandconfig', 'admin', '2014-06-04 23:18:31', '管理员', null, null, null);
INSERT INTO `cgform_head` VALUES ('402881e845c73cb00145c754450c0007', '微信公众帐号信息', 'admin', '2014-05-04 21:02:39', '管理员', 'Y', 'Y', 'Y', 'N', '1', '2', 'single', '0', null, 'weixin_account', 'admin', '2014-05-06 20:10:30', '管理员', null, null, null);
INSERT INTO `cgform_head` VALUES ('402881e946f72f8e0146f74632010008', '商品分类', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', 'N', 'Y', 'Y', 'Y', '1', '1', 'single', '0', null, 'WEIXIN_MALL_CATEGORY', '4028d881436d514601436d5215ac0043', '2014-07-02 21:45:35', 'admin', '', 'UUID', null);
INSERT INTO `cgform_head` VALUES ('402881e94701b0bc014701b6ed380001', '商品信息', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', 'Y', 'Y', 'Y', 'N', '1', '3', 'group', '0', null, 'weixin_shop_goods', '4028d881436d514601436d5215ac0043', '2014-07-04 22:23:37', 'admin', '', 'UUID', null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d521928012a', '订单主信息', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'Y', 'Y', 'N', '2', '57', 'group', '0', 'jform_order_ticket,jform_order_customer', 'jform_order_main', '4028d881436d514601436d5215ac0043', '2014-07-24 15:39:44', 'admin', null, null, null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d52192d012b', '请假单', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'Y', 'Y', 'N', '1', '51', 'group', '0', null, 'jform_leave', 'admin', '2014-01-19 10:08:17', '管理员', null, null, null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d52192f012c', '订单客户信息', 'admin', '2014-01-07 23:28:53', '管理员', 'Y', 'N', 'Y', 'N', '3', '16', 'single', '0', null, 'jform_order_customer', null, null, null, null, null, null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d521931012d', '订单机票信息', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'N', 'Y', 'N', '3', '20', 'single', '0', null, 'jform_order_ticket', null, null, null, null, null, null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d521933012e', '价格认证机构统计表', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'N', 'Y', 'N', '1', '3', 'group', '0', null, 'jform_price1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `cgform_uploadfiles`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_uploadfiles`;
CREATE TABLE `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`),
  CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_uploadfiles
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_editor`
-- ----------------------------
DROP TABLE IF EXISTS `ck_editor`;
CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_editor
-- ----------------------------
INSERT INTO `ck_editor` VALUES ('4028d881436d514601436d5219250129', 0x3C68746D6C3E3C686561643E3C7469746C653E3C2F7469746C653E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F64656661756C742F6561737975692E637373272069643D276561737975695468656D65272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F69636F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6163636F7264696F6E2F6373732F6163636F7264696F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7374796C652E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7461626C6566726F6D2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C7374796C6520747970653D27746578742F637373273E626F64797B666F6E742D73697A653A313270783B7D7461626C65207B626F726465723A31707820736F6C696420233030303030303B626F726465722D636F6C6C617073653A20636F6C6C617073653B7D7464207B626F726465723A31707820736F6C696420233030303030303B6261636B67726F756E643A77686974653B666F6E742D73697A653A313270783B666F6E742D66616D696C793A20D0C2CBCECCE53B636F6C6F723A20233333333B3C2F7374796C653E3C2F686561643E3C626F64793E3C6469763E3C703EB8BDBCFE32A3BA3C2F703E3C6831207374796C653D27746578742D616C69676E3A63656E746572273E3C7370616E207374796C653D27666F6E742D73697A653A32347078273E3C7374726F6E673EBCDBB8F1C8CFD6A4C8CBD4B1CDB3BCC6B1ED3C2F7374726F6E673E3C2F7370616E3E3C2F68313E3C703ECCEEB1A8B5A5CEBBA3A8B8C7D5C2A3A9A3BA3C696E707574206E616D653D276F72675F6E616D652720747970653D2774657874272076616C75653D27247B6F72675F6E616D653F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C703EB5A5CEBBB4FAC2EBBAC5A3BA3C696E707574206E616D653D276E756D2720747970653D2774657874272076616C75653D27247B6E756D3F69665F6578697374733F68746D6C7D27202F3E20266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703BB5A5CEBBA3BAC8CBCCEE266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20B1A8C8D5C6DAA3BA266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20C4EA266E6273703B266E6273703B20D4C2266E6273703B266E6273703B20C8D53C2F703E3C666F726D20616374696F6E3D276367466F726D4275696C64436F6E74726F6C6C65722E646F3F736176654F72557064617465272069643D27666F726D6F626A27206D6574686F643D27706F737427206E616D653D27666F726D6F626A273E3C696E707574206E616D653D277461626C654E616D652720747970653D2768696464656E272076616C75653D27247B7461626C654E616D653F69665F6578697374733F68746D6C7D27202F3E203C696E707574206E616D653D2769642720747970653D2768696464656E272076616C75653D27247B69643F69665F6578697374733F68746D6C7D27202F3E237B6A666F726D5F68696464656E5F6669656C647D3C696E70757420747970653D2768696464656E27202F3E3C703E266E6273703B3C2F703E3C7461626C6520626F726465723D2731272063656C6C70616464696E673D2730272063656C6C73706163696E673D273027207374796C653D2777696474683A313031367078273E3C74626F64793E3C74723E3C746420726F777370616E3D2734273E3C703E266E6273703B3C2F703E3C703E266E6273703B3C2F703E3C703EBACFBCC63C2F703E3C703E266E6273703B3C2F703E3C2F74643E3C746420636F6C7370616E3D27362720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EC8CBCAFD3C2F703E3C2F74643E3C746420636F6C7370616E3D27352720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703ED1A7C0FA3C2F703E3C2F74643E3C746420636F6C7370616E3D27342720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EC8A1B5C3B5C4A3A8C9CFB8DAA3A9D6B4D2B5D7CAB8F13C2F703E3C2F74643E3C746420636F6C7370616E3D2734273E3C703ED7A8D2B5BCBCCAF5D6B0B3C63C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2734273E3C703EA3A8BEADBCC3CFB5C1D0A1A2B9A4B3CCCFB5C1D0A3A93C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2733273E3C703ED4DAB1E0C8CBD4B13C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EC6B8D3C3C8CBD4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC1D9CAB128BDE8D3C329C8CBD4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8DFD6D03C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB4F3D7A83C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB1BEBFC63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703ED1D0BEBFC9FA3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EBCDBB8F13C2F703E3C703EBCF8D6A4D4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EBCDBB8F13C2F703E3C703EBCF8D6A4CAA63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8B4BACB3C2F703E3C703EB2C3B6A8D4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB3F5BCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703ED6D0BCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8DFBCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703EB1BEB5A5CEBB3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C74643E3C703EB3A4C6DA3C2F703E3C2F74643E3C74643E3C703EB6CCC6DA3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E41313C2F703E3C2F74643E3C74643E3C703E42313C2F703E3C2F74643E3C74643E3C703E42323C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E42333C2F703E3C2F74643E3C74643E3C703E42343C2F703E3C2F74643E3C74643E3C703E42353C2F703E3C2F74643E3C74643E3C703E43313C2F703E3C2F74643E3C74643E3C703E43323C2F703E3C2F74643E3C74643E3C703E43333C2F703E3C2F74643E3C74643E3C703E43343C2F703E3C2F74643E3C74643E3C703E43353C2F703E3C2F74643E3C74643E3C703E44313C2F703E3C2F74643E3C74643E3C703E44323C2F703E3C2F74643E3C74643E3C703E44333C2F703E3C2F74643E3C74643E3C703E44343C2F703E3C2F74643E3C74643E3C703E45313C2F703E3C2F74643E3C74643E3C703E45323C2F703E3C2F74643E3C74643E3C703E45333C2F703E3C2F74643E3C74643E3C703E45343C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E3C696E707574206E616D653D276131272073697A653D27342720747970653D2774657874272076616C75653D27247B61313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276231272073697A653D27342720747970653D2774657874272076616C75653D27247B62313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276232272073697A653D27342720747970653D2774657874272076616C75653D27247B62323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E3C696E707574206E616D653D276233272073697A653D27342720747970653D2774657874272076616C75653D27247B62333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276234272073697A653D27342720747970653D2774657874272076616C75653D27247B62343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276235272073697A653D27342720747970653D2774657874272076616C75653D27247B62353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276331272073697A653D27342720747970653D2774657874272076616C75653D27247B63313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276332272073697A653D27342720747970653D2774657874272076616C75653D27247B63323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276333272073697A653D27342720747970653D2774657874272076616C75653D27247B63333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276334272073697A653D27342720747970653D2774657874272076616C75653D27247B63343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276335272073697A653D27342720747970653D2774657874272076616C75653D27247B63353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276431272073697A653D27342720747970653D2774657874272076616C75653D27247B64313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276432272073697A653D27342720747970653D2774657874272076616C75653D27247B64323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276433272073697A653D27342720747970653D2774657874272076616C75653D27247B64333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276434272073697A653D27342720747970653D2774657874272076616C75653D27247B64343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276531272073697A653D27342720747970653D2774657874272076616C75653D27247B65313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276532272073697A653D27342720747970653D2774657874272076616C75653D27247B65323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276533272073697A653D27342720747970653D2774657874272076616C75653D27247B65333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276534272073697A653D27342720747970653D2774657874272076616C75653D27247B65343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D273230273E3C703E266E6273703B3C2F703E3C703ECCEEB1A8CBB5C3F7A3BA3C2F703E3C703ED2BBA1A2BACFBCC6A3A841A3A9A3BACCEEB1A8D6C1CDB3BCC6BDD8D6B9C6DAB5C4B1BEBBFAB9B9B5C4C8CBD4B1D7DCCAFDA1A33C2F703E3C703EB6FEA1A2C8CBCAFDA3BA3C2F703E3C703ED4DAB1E0C8CBD4B1A3BAB7D6B1F0B0B4D5D5BCDBB8F1C8CFD6A4BBFAB9B9B1E0D6C6C4DABCB0C6E4CBFCBEDFD3D0BCDBB8F1D6F7B9DCB2BFC3C5B1E0D6C6B5C4CAB5D3D0C8CBCAFDCCEEB1A8D4DA4231A1A24232C0B8C4DAA1A33C2F703E3C703EC6B8D3C3C8CBD4B1A3BAB0B4D5D5BEADBCDBB8F1D6F7B9DCB2BFC3C5BBF2BCDBB8F1C8CFD6A4BBFAB9B9C8CBCAC2B2BFC3C5C8CFBFC9B5C4B2A2C7A9B6A9C8FDC4EAD2D4C9CFB5C4B9A4D7F7BACFCDACB5C4C8CBD4B1A3A84233A3A9A3BBD2D4BCB0C3BBD3D0BEADB9FDBCDBB8F1D6F7B9DCB2BFC3C5BBF2BCDBB8F1C8CFD6A4BBFAB9B9C8CBCAC2B2BFC3C5C8CFBFC9B5C4C7A9B6A9BACFCDACC9D9D3DAC8FDC4EAB5C4C8CBD4B1A3A84234A3A9B7D6B1F0C0B4BDF8D0D0CDB3BCC6A1A33C2F703E3C703EC1D9CAB1A3A8BDE8D3C3A3A9C8CBD4B1A3A84235A3A9A3BACCD8D6B8CDE2C6B8B5C4C1D9CAB1B9A4A3ACBBF2D5DFB9A4D7F7B9D8CFB5B2BBD4DAB1BEB5A5CEBBC7D2CEDEB3A4C6DAC6B8D3C3BACFCDACB5C4BDE8B5F7C8CBD4B1B5C8A1A33C2F703E3C703EC8FDA1A2B1EDC4DAB8F7C0B8C4BFB9D8CFB53C2F703E3C703E413D42312B42322B42332B42342B42353D43312B43322B43332B43342B43353D44312B44322B44332B44343D45312B45322B45332B45343C2F703E3C2F74643E3C2F74723E3C2F74626F64793E3C2F7461626C653E3C2F666F726D3E3C2F6469763E3C2F626F64793E3C2F68746D6C3E);

-- ----------------------------
-- Table structure for `ck_finder`
-- ----------------------------
DROP TABLE IF EXISTS `ck_finder`;
CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_finder
-- ----------------------------

-- ----------------------------
-- Table structure for `doc`
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime DEFAULT NULL,
  `DOCID` varchar(255) DEFAULT NULL,
  `DOCTITLE` varchar(255) DEFAULT NULL,
  `DOCTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------

-- ----------------------------
-- Table structure for `jeecg_demo`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo`;
CREATE TABLE `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo
-- ----------------------------
INSERT INTO `jeecg_demo` VALUES ('4028d881436d514601436d521ad4015e', '12', '2014-01-07 23:28:53', null, null, '123', 'demo@jeecg.com', '13111111111', '66666666', '111111.00', '1', null, '小明', null);

-- ----------------------------
-- Table structure for `jeecg_demo_course`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_course`;
CREATE TABLE `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `teacher_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`),
  CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_course
-- ----------------------------
INSERT INTO `jeecg_demo_course` VALUES ('4028d881436d514601436d5219b0015b', '海贼王', '4028d881436d514601436d5219ae015a');

-- ----------------------------
-- Table structure for `jeecg_demo_student`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_student`;
CREATE TABLE `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `COURSE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`),
  CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_student
-- ----------------------------
INSERT INTO `jeecg_demo_student` VALUES ('4028d881436d514601436d5219b4015c', null, '卓洛', '0', '4028d881436d514601436d5219b0015b');
INSERT INTO `jeecg_demo_student` VALUES ('4028d881436d514601436d5219b7015d', null, '山治 ', '0', '4028d881436d514601436d5219b0015b');

-- ----------------------------
-- Table structure for `jeecg_demo_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_teacher`;
CREATE TABLE `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_teacher
-- ----------------------------
INSERT INTO `jeecg_demo_teacher` VALUES ('4028d881436d514601436d5219ae015a', '路飞', 'upload/Teacher/pic3345280233.PNG');

-- ----------------------------
-- Table structure for `jeecg_matter_bom`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_matter_bom`;
CREATE TABLE `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `parent_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`),
  CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_matter_bom
-- ----------------------------
INSERT INTO `jeecg_matter_bom` VALUES ('4028d881436d514601436d521ae40163', '广东深圳', '001', '电脑', '5000.000000', '2014-01-07 23:28:53', '5', '10', '台', '100', null);
INSERT INTO `jeecg_matter_bom` VALUES ('4028d881436d514601436d521ae70164', '上海', '001001', '主板', '800.000000', '2014-01-07 23:28:53', '6', '18', '个', '60', '4028d881436d514601436d521ae40163');

-- ----------------------------
-- Table structure for `jeecg_minidao`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_minidao`;
CREATE TABLE `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_minidao
-- ----------------------------

-- ----------------------------
-- Table structure for `jeecg_order_custom`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_custom`;
CREATE TABLE `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) DEFAULT NULL,
  `GOC_CONTENT` varchar(66) DEFAULT NULL,
  `GOC_CUS_NAME` varchar(16) DEFAULT NULL,
  `GOC_IDCARD` varchar(18) DEFAULT NULL,
  `GOC_PASSPORT_CODE` varchar(10) DEFAULT NULL,
  `GOC_SEX` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_custom
-- ----------------------------
INSERT INTO `jeecg_order_custom` VALUES ('4028d881436d514601436d521ae20162', null, null, null, null, null, '11111AAA', null, null, '小明', null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for `jeecg_order_main`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ALL_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_CONTACT_NAME` varchar(16) DEFAULT NULL,
  `GO_CONTENT` varchar(66) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) DEFAULT NULL,
  `GO_RETURN_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_TELPHONE` varchar(11) DEFAULT NULL,
  `GODER_TYPE` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  `USERTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO `jeecg_order_main` VALUES ('4028d881436d514601436d521adb0160', null, null, null, null, null, '1111111.00', 'alex', '别放辣椒', '11111AAA', '1', '100.00', null, '1', null, null, null, '1');

-- ----------------------------
-- Table structure for `jeecg_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_product`;
CREATE TABLE `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) DEFAULT NULL,
  `GOP_COUNT` int(11) DEFAULT NULL,
  `GOP_ONE_PRICE` decimal(10,2) DEFAULT NULL,
  `GOP_PRODUCT_NAME` varchar(33) DEFAULT NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_product
-- ----------------------------
INSERT INTO `jeecg_order_product` VALUES ('4028d881436d514601436d521adf0161', null, null, null, null, null, '11111AAA', null, '1', '100.00', '最最美味的地锅鸡', '1', '100.00', null, null, null);

-- ----------------------------
-- Table structure for `jform_cgreport_head`
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_head`;
CREATE TABLE `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_head
-- ----------------------------
INSERT INTO `jform_cgreport_head` VALUES ('402889f847666ae401476670bb72000a', 'select * from  weixin_cms_menu', 'A001', '查询微网站栏目', '查询栏目');

-- ----------------------------
-- Table structure for `jform_cgreport_item`
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_item`;
CREATE TABLE `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) DEFAULT NULL,
  `S_MODE` varchar(10) DEFAULT NULL,
  `CGRHEAD_ID` varchar(36) DEFAULT NULL,
  `DICT_CODE` varchar(36) DEFAULT NULL,
  `FIELD_HREF` varchar(120) DEFAULT NULL,
  `FIELD_NAME` varchar(36) DEFAULT NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) DEFAULT NULL,
  `IS_SHOW` varchar(5) DEFAULT NULL,
  `ORDER_NUM` int(11) DEFAULT NULL,
  `REPLACE_VA` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_item
-- ----------------------------
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb74000b', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'ID', 'ID', 'String', 'Y', '0', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb78000c', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'ACCOUNTID', 'ACCOUNTID', 'String', 'Y', '1', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb79000d', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_BY', 'CREATE_BY', 'String', 'Y', '2', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb7a000e', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_DATE', 'CREATE_DATE', 'String', 'Y', '3', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb7b000f', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_NAME', 'CREATE_NAME', 'String', 'Y', '4', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb7e0010', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'IMAGE_HREF', 'IMAGE_HREF', 'String', 'Y', '5', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb7f0011', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'IMAGE_NAME', 'IMAGE_NAME', 'String', 'Y', '6', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb800012', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'NAME', 'NAME', 'String', 'Y', '7', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb810013', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'TYPE', 'TYPE', 'String', 'Y', '8', '');

-- ----------------------------
-- Table structure for `jform_leave`
-- ----------------------------
DROP TABLE IF EXISTS `jform_leave`;
CREATE TABLE `jform_leave` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '请假标题',
  `people` varchar(20) NOT NULL COMMENT '请假人',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `begindate` datetime NOT NULL COMMENT '请假开始时间',
  `enddate` datetime NOT NULL COMMENT '请假结束时间',
  `day_num` int(11) DEFAULT NULL COMMENT '请假天数',
  `hol_dept` varchar(32) NOT NULL COMMENT '所属部门',
  `hol_reson` varchar(255) NOT NULL COMMENT '请假原因',
  `dep_leader` varchar(20) NOT NULL COMMENT '部门审批人',
  `content` varchar(255) NOT NULL COMMENT '部门审批意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_leave
-- ----------------------------

-- ----------------------------
-- Table structure for `jform_order_main`
-- ----------------------------
DROP TABLE IF EXISTS `jform_order_main`;
CREATE TABLE `jform_order_main` (
  `id` varchar(36) NOT NULL,
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double DEFAULT NULL COMMENT '订单金额',
  `content` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_order_main
-- ----------------------------

-- ----------------------------
-- Table structure for `jg_person`
-- ----------------------------
DROP TABLE IF EXISTS `jg_person`;
CREATE TABLE `jg_person` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CREATEDT` datetime DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jg_person
-- ----------------------------
INSERT INTO `jg_person` VALUES ('4028d881436d514601436d521ad9015f', '10', '2014-01-07 23:28:53', '2014-01-07 23:28:53', '小红', '1000.00');

-- ----------------------------
-- Table structure for `optimistic_locking`
-- ----------------------------
DROP TABLE IF EXISTS `optimistic_locking`;
CREATE TABLE `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `NAME` varchar(85) DEFAULT NULL,
  `VER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optimistic_locking
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance`;
CREATE TABLE `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) DEFAULT NULL,
  `BUYMONEY` float DEFAULT NULL,
  `BUYPROJECTNO` varchar(255) DEFAULT NULL,
  `BUYPROJECTORG` varchar(255) DEFAULT NULL,
  `BUYUSE` varchar(255) DEFAULT NULL,
  `BUYYEAR` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `COLLECTORG` varchar(255) DEFAULT NULL,
  `EXPENSEACCOUNT` varchar(255) DEFAULT NULL,
  `HAPPENYEAR` int(11) DEFAULT NULL,
  `MONEYAREA` varchar(255) DEFAULT NULL,
  `MONEYSOURCE` varchar(255) DEFAULT NULL,
  `MONEYTOTAL` float DEFAULT NULL,
  `MONEYUSE` varchar(255) DEFAULT NULL,
  `PAYTIME` datetime DEFAULT NULL,
  `ZBWNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance
-- ----------------------------
INSERT INTO `t_finance` VALUES ('402880e6478c6d8201478c72e8ff0008', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_finance` VALUES ('402880e6478c6d8201478c74a6000010', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_finance` VALUES ('402881e547bb946e0147bb9834db0013', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_finance_files`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_files`;
CREATE TABLE `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`),
  CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_files
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_attachment`;
CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) DEFAULT NULL,
  `businesskey` varchar(32) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `extend` varchar(32) DEFAULT NULL,
  `note` longtext,
  `realpath` varchar(100) DEFAULT NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) DEFAULT NULL,
  `INFOTYPEID` varchar(32) DEFAULT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`),
  CONSTRAINT `FK_mnq23hlc835n4ufgjl7nkn3bd` FOREIGN KEY (`USERID`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_attachment
-- ----------------------------
INSERT INTO `t_s_attachment` VALUES ('297e7eb6469a4a8901469a5d96ea000d', null, '19343396_845725', null, '2014-06-14 20:32:43', 'jpg', null, 'upload/files/20140614203243Hk6qikWt.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614203243Hk6qikWt.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('297e7eb6469a4a8901469a5ebac20010', null, '1384480985636', null, '2014-06-14 20:33:57', 'jpg', null, 'upload/files/20140614203357CLkYJbzQ.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614203357CLkYJbzQ.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('297e7eb6469a9a0f01469a9b59d30001', null, '1384480985636', null, '2014-06-14 21:40:10', 'jpg', null, 'upload/files/20140614214010COJ3srhx.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614214010COJ3srhx.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('297e7eb6469a9a0f01469a9bc74b0003', null, '19343396_845725', null, '2014-06-14 21:40:38', 'jpg', null, 'upload/files/20140614214038YRSIWjjs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614214038YRSIWjjs.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402880e6477d04e001477d0a31040002', null, 'jeecg_scott', null, '2014-07-28 20:55:25', 'jpg', null, 'upload/files/20140728205525rUa7itrm.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205525rUa7itrm.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402880e6477d04e001477d0a53150005', null, 'default', null, '2014-07-28 20:55:34', 'zip', null, 'upload/files/20140728205534UfBLupzK.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205534UfBLupzK.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402880e6477d04e001477d0dfcd80009', null, 'default', null, '2014-07-28 20:59:34', 'zip', null, 'upload/files/20140728205934YVSrqmg8.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205934YVSrqmg8.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402880e6477d04e001477d0e143d000a', null, 'jeecg_scott', null, '2014-07-28 20:59:40', 'jpg', null, 'upload/files/20140728205940Y6Ly8de0.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205940Y6Ly8de0.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402880e6477d04e001477d0e1d31000d', null, 'default', null, '2014-07-28 20:59:42', 'zip', null, 'upload/files/20140728205942vS1giD8f.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205942vS1giD8f.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402880e6477d5c2601477d5d81de0001', null, 'jeecg_scott', null, '2014-07-28 22:26:25', 'jpg', null, 'upload/files/20140728222625KXeCCRAG.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728222625KXeCCRAG.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446394419014639453ce90002', null, '19343396_845725', null, '2014-05-27 00:02:57', 'jpg', null, 'upload/files/20140527000257Q4m5Y6eh.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140527000257Q4m5Y6eh.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e4463cc88701463ccef5340001', null, '19343396_845725', null, '2014-05-27 16:32:14', 'jpg', null, 'upload/files/20140527163214CKTFLZIC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140527163214CKTFLZIC.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44643207c01464333b1f9000c', null, '1384480985636', null, '2014-05-28 22:19:59', 'jpg', null, 'upload/files/20140528221959CZ99E1i2.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528221959CZ99E1i2.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e4464381350146438691940002', null, '1384480985636', null, '2014-05-28 23:50:30', 'jpg', null, 'upload/files/20140528235031DMUhg2PP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528235031DMUhg2PP.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44643813501464389b02a000b', null, '1384480985636', null, '2014-05-28 23:53:55', 'jpg', null, 'upload/files/20140528235355miw0YqCA.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528235355miw0YqCA.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44643a1cd014643a510060003', null, '19343396_845725', null, '2014-05-29 00:23:49', 'jpg', null, 'upload/files/20140529002349G6XE4cA2.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140529002349G6XE4cA2.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44643a1cd014643a55d6f0006', null, '1384480985636', null, '2014-05-29 00:24:09', 'jpg', null, 'upload/files/20140529002409iN0ffyA8.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140529002409iN0ffyA8.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695183a014695210478000f', null, '6e061d950a7b020896cc3c1162d9f2d3572cc83d', null, '2014-06-13 20:08:27', 'jpg', null, 'upload/files/20140613200827S3Ft6XCD.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200827S3Ft6XCD.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695183a0146952144320012', null, 'd1f3d003big', null, '2014-06-13 20:08:43', 'jpg', null, 'upload/files/20140613200843IviG7AmD.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200843IviG7AmD.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695183a0146952187bc0015', null, '1253192_135516023956_2', null, '2014-06-13 20:09:01', 'jpg', null, 'upload/files/20140613200901Ojk0MGav.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200901Ojk0MGav.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695183a01469522f1ed0018', null, 'd1f3d003big', null, '2014-06-13 20:10:33', 'jpg', null, 'upload/files/20140613201033crByRcxc.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201033crByRcxc.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695183a01469523431e001b', null, '6e061d950a7b020896cc3c1162d9f2d3572cc83d', null, '2014-06-13 20:10:54', 'jpg', null, 'upload/files/20140613201054g0kYQE93.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201054g0kYQE93.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695183a01469523eb7f001e', null, '1253192_135516023956_2', null, '2014-06-13 20:11:37', 'jpg', null, 'upload/files/20140613201137iG8QIvk5.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201137iG8QIvk5.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695183a0146952422130021', null, 'ADIDAS', null, '2014-06-13 20:11:51', 'jpg', null, 'upload/files/201406132011519hkg5QtC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132011519hkg5QtC.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695970aeb0014', null, 'duote_07_10-55-22', null, '2014-06-13 22:17:22', 'jpg', null, 'upload/files/20140613221722NSivMHPF.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221722NSivMHPF.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c01469597394f0016', null, 'duote_07_10-55-22', null, '2014-06-13 22:17:34', 'jpg', null, 'upload/files/20140613221734ZEujKDpc.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221734ZEujKDpc.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c0146959757810018', null, 'duote_07_10-55-22', null, '2014-06-13 22:17:42', 'jpg', null, 'upload/files/20140613221742gfNHuIR8.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221742gfNHuIR8.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695977560001a', null, 'duote_07_10-55-22', null, '2014-06-13 22:17:49', 'jpg', null, 'upload/files/20140613221749dsYZWnuE.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221749dsYZWnuE.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a1de0a001d', null, '537f1f63dd1c9', null, '2014-06-13 22:29:11', 'jpg', null, 'upload/files/20140613222911w09Nh7qi.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613222911w09Nh7qi.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a38b470020', null, '537f1f74d031c', null, '2014-06-13 22:31:01', 'jpg', null, 'upload/files/2014061322310112yaMHm6.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/2014061322310112yaMHm6.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a3cdea0022', null, '537f1f86602b3', null, '2014-06-13 22:31:18', 'jpg', null, 'upload/files/20140613223118fWHj2S0v.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223118fWHj2S0v.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a4383a0024', null, '537f1f98d6f42', null, '2014-06-13 22:31:45', 'jpg', null, 'upload/files/201406132231453VVP7RXR.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132231453VVP7RXR.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a4913b0026', null, '537f1faf595dd', null, '2014-06-13 22:32:08', 'jpg', null, 'upload/files/20140613223208gwvPwwpZ.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223208gwvPwwpZ.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a4dda10027', null, '537f1faf595dd', null, '2014-06-13 22:32:28', 'jpg', null, 'upload/files/201406132232281L92gsCP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132232281L92gsCP.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a726df0028', null, '537f1faf595dd', null, '2014-06-13 22:34:58', 'jpg', null, 'upload/files/201406132234583cgLyGHg.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132234583cgLyGHg.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a7705a002b', null, '537f1ca3cd562', null, '2014-06-13 22:35:16', 'jpg', null, 'upload/files/20140613223516i3wMpi1u.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223516i3wMpi1u.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a7b814002e', null, '537f1cb75c597', null, '2014-06-13 22:35:35', 'jpg', null, 'upload/files/20140613223535gu4iUrA4.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223535gu4iUrA4.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a7ecf10031', null, '537f1fc8d750b', null, '2014-06-13 22:35:48', 'jpg', null, 'upload/files/20140613223548eQq5swwP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223548eQq5swwP.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e446955c7c014695a831d70034', null, '537f1fdba507f', null, '2014-06-13 22:36:06', 'jpg', null, 'upload/files/20140613223606Lfh0WaQd.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223606Lfh0WaQd.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695ed3bdc0001', null, '2385844_083138053_2', null, '2014-06-13 23:51:30', 'jpg', null, 'upload/files/20140613235131snYOuQDL.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235131snYOuQDL.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695ed79fa0003', null, '1384480985636', null, '2014-06-13 23:51:46', 'jpg', null, 'upload/files/20140613235146eEgyESpy.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235146eEgyESpy.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695ef476c0005', null, '19343396_845725', null, '2014-06-13 23:53:45', 'jpg', null, 'upload/files/20140613235345vGK3pfjC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235345vGK3pfjC.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f2c6280007', null, '537f1f63dd1c9', null, '2014-06-13 23:57:34', 'jpg', null, 'upload/files/201406132357343zuaHgX4.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132357343zuaHgX4.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f3176d0009', null, '537f1f86602b3', null, '2014-06-13 23:57:54', 'jpg', null, 'upload/files/20140613235754hLRC87rF.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235754hLRC87rF.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f339a7000b', null, '537f1f74d031c', null, '2014-06-13 23:58:03', 'jpg', null, 'upload/files/201406132358039IpFSyet.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132358039IpFSyet.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f3a3b3000d', null, '537f1f98d6f42', null, '2014-06-13 23:58:30', 'jpg', null, 'upload/files/20140613235830M96wj4Lr.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235830M96wj4Lr.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f3f89f000f', null, '537f1faf595dd', null, '2014-06-13 23:58:52', 'jpg', null, 'upload/files/20140613235852gBTueAWO.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235852gBTueAWO.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f443990011', null, '537f1ca3cd562', null, '2014-06-13 23:59:11', 'jpg', null, 'upload/files/20140613235911chsAs0Md.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235911chsAs0Md.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f45e1a0013', null, '537f1cb75c597', null, '2014-06-13 23:59:18', 'jpg', null, 'upload/files/20140613235918OA8vt546.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235918OA8vt546.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f494290015', null, '537f1fc8d750b', null, '2014-06-13 23:59:32', 'jpg', null, 'upload/files/20140613235932htqZFtCs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235932htqZFtCs.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e44695ebe3014695f4d5570017', null, '537f1fdba507f', null, '2014-06-13 23:59:49', 'jpg', null, 'upload/files/20140613235949UuUHp1Bs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235949UuUHp1Bs.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e547bb946e0147bb98361a0015', null, '772607', null, null, 'jpg', null, 'upload/files/201408100027008becjgnn.jpg', null, 'upload/files/201408100027008becjgnn.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e845d1723e0145d18fef940019', null, 'svn', null, '2014-05-06 20:44:02', 'txt', null, 'upload/files/20140506204402BgVrby8Q.txt', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140506204402BgVrby8Q.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e946ddea480146ddf061b50001', null, '634490825089531250', null, '2014-06-27 23:27:36', 'jpg', null, 'upload/files/20140627232736z3SvfVEj.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627232736z3SvfVEj.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e946ddea480146ddf730350003', null, '19300001024098134717639977056', null, '2014-06-27 23:35:02', 'jpg', null, 'upload/files/20140627233502FEzyc38j.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627233502FEzyc38j.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e946ddea480146ddf991610005', null, '20120823024251636', null, '2014-06-27 23:37:38', 'jpg', null, 'upload/files/20140627233738xqDsNzfy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627233738xqDsNzfy.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e946ddea480146de02f8ba0008', null, 'Img305735292', null, '2014-06-27 23:47:55', 'jpg', null, 'upload/files/20140627234755MS58ckJV.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627234755MS58ckJV.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e946ddea480146de0522e3000a', null, '30_1i$1JxIOB', null, '2014-06-27 23:50:17', 'jpg', null, 'upload/files/20140627235017KDQfXcBu.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627235017KDQfXcBu.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e946ddea480146de09f959000e', null, 'Img305735292', null, '2014-06-27 23:55:34', 'jpg', null, 'upload/files/20140627235534VJM1pkx3.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627235534VJM1pkx3.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e946ddea480146de0f340b0010', null, '30_1i$1JxIOB', null, '2014-06-28 00:01:16', 'jpg', null, 'upload/files/20140628000116OF07rm7E.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140628000116OF07rm7E.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e947015a7001470160f9290001', null, '1384480985636', null, '2014-07-04 20:37:18', 'jpg', null, 'upload/files/201407042037189rPp00ZT.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407042037189rPp00ZT.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e947015a70014701619f490004', null, '19343396_845725', null, '2014-07-04 20:38:00', 'jpg', null, 'upload/files/20140704203800Q6g5eVpd.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704203800Q6g5eVpd.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e947015a700147016449650007', null, '1384480985636', null, '2014-07-04 20:40:55', 'jpg', null, 'upload/files/20140704204055j06raaJy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704204055j06raaJy.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e94701df96014701eb22d30006', null, '1384480985636', null, '2014-07-04 23:08:12', 'jpg', null, 'upload/files/201407042308121vLOUuSc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407042308121vLOUuSc.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e94701df96014701f3f7160007', null, '634490825089531250', null, '2014-07-04 23:17:51', 'jpg', null, 'upload/files/20140704231751jgyEMUFt.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704231751jgyEMUFt.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e94701df960147020b82d1000d', null, '1384480985636', null, '2014-07-04 23:43:34', 'jpg', null, 'upload/files/20140704234334Vhfk9mYp.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704234334Vhfk9mYp.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e9470273d20147028adf830019', null, '634490825089531250', null, '2014-07-05 02:02:41', 'jpg', null, 'upload/files/201407050202416ZCRAJjr.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407050202416ZCRAJjr.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e9470273d20147028afde6001a', null, '634490825089531250', null, '2014-07-05 02:02:49', 'jpg', null, 'upload/files/201407050202490ByJscnc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407050202490ByJscnc.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402881e94702c764014702ceee2e0004', null, '19343396_845725', null, '2014-07-05 03:17:01', 'jpg', null, 'upload/files/20140705031701QWDPG07Q.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140705031701QWDPG07Q.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889ed472e852301472eaee6f80009', null, '1348502748_9205', null, '2014-07-13 15:45:19', 'gif', null, 'upload/files/20140713154520vkFUZy23.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713154520vkFUZy23.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889ed472e852301472eb0270b000d', null, '1348502732_4991', null, '2014-07-13 15:46:42', 'gif', null, 'upload/files/20140713154642E71rUQGZ.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713154642E71rUQGZ.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889ed472ec2a801472ec3997c0001', null, '1348502772_8826', null, '2014-07-13 16:07:56', 'gif', null, 'upload/files/20140713160756wTrr5Zn3.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713160756wTrr5Zn3.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889ed472ee23401472ee59ccf0001', null, '13840528444553', null, '2014-07-13 16:45:05', 'png', null, 'upload/files/20140713164505QAtOSSSm.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713164505QAtOSSSm.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f346dc66c30146dc7c11630001', null, '1348502732_4991', null, '2014-06-27 16:40:56', 'gif', null, 'upload/files/20140627164056wwWqB80c.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164056wwWqB80c.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f346dc66c30146dc7ccb410005', null, '13840528444553', null, '2014-06-27 16:41:44', 'png', null, 'upload/files/20140627164144bzcSvQNs.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164144bzcSvQNs.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f346dc66c30146dc7cf66b0008', null, '1348502748_9205', null, '2014-06-27 16:41:55', 'gif', null, 'upload/files/20140627164155hUT3hMVJ.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164155hUT3hMVJ.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f346dc8a220146dc933f720007', null, 'fdfb6e9cb6103298f5497760962ebbf7', null, '2014-06-27 17:06:15', 'png', null, 'upload/files/20140627170616I8PtmI3X.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627170616I8PtmI3X.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f64747048401474709372d0009', null, 'LOGO-副本副本', null, '2014-07-18 09:14:52', 'jpg', null, 'upload/files/20140718091452MW70kigU.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091452MW70kigU.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f6474704840147470a1ca7000e', null, 'Desktop', null, '2014-07-18 09:15:50', 'zip', null, 'upload/files/20140718091550rbnPw893.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091550rbnPw893.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f6474704840147470d48ab000f', null, 'LOGO-副本副本', null, '2014-07-18 09:19:18', 'jpg', null, 'upload/files/20140718091918Vmd5RP48.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091918Vmd5RP48.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f6474704840147470d62570012', null, 'Desktop', null, '2014-07-18 09:19:25', 'zip', null, 'upload/files/20140718091925pEgAued6.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091925pEgAued6.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f6474704840147470e7b920014', null, 'LOGO-副本副本', null, '2014-07-18 09:20:37', 'jpg', null, 'upload/files/20140718092037mgTjUY0W.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092037mgTjUY0W.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f64747048401474710097e0017', null, 'Desktop', null, '2014-07-18 09:22:19', 'zip', null, 'upload/files/20140718092219HhQXuKxn.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092219HhQXuKxn.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f647470484014747108feb001a', null, 'LOGO-副本副本', null, '2014-07-18 09:22:53', 'jpg', null, 'upload/files/20140718092253Hk6Q64Rz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092253Hk6Q64Rz.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f647470484014747129c15001d', null, 'Desktop', null, '2014-07-18 09:25:07', 'zip', null, 'upload/files/20140718092507XT4r9A7J.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092507XT4r9A7J.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f647470484014747133201001f', null, 'LOGO-副本副本', null, '2014-07-18 09:25:46', 'jpg', null, 'upload/files/201407180925466IUsX7FW.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180925466IUsX7FW.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f647470484014747137f230022', null, 'Desktop', null, '2014-07-18 09:26:05', 'zip', null, 'upload/files/20140718092605f3N8z6h7.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092605f3N8z6h7.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f64747182f01474718ed750001', null, 'LOGO', null, '2014-07-18 09:32:01', 'jpg', null, 'upload/files/20140718093201bbpEq64r.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718093201bbpEq64r.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f64747182f01474719193e0004', null, 'Desktop', null, '2014-07-18 09:32:12', 'zip', null, 'upload/files/20140718093212D3R2wWX8.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718093212D3R2wWX8.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f64747182f01474719c42b0007', null, 'Desktop', null, '2014-07-18 09:32:56', 'zip', null, 'upload/files/201407180932564NiTCHsL.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180932564NiTCHsL.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f64747182f01474720ef4c000c', null, 'LOGO-副本副本', null, '2014-07-18 09:40:46', 'jpg', null, 'upload/files/20140718094046tpfYNITQ.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094046tpfYNITQ.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f64747182f014747211b11000f', null, 'Desktop', null, '2014-07-18 09:40:57', 'zip', null, 'upload/files/2014071809405739bzRcEb.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/2014071809405739bzRcEb.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f6474722ad01474723d3400001', null, 'LOGO-副本副本', null, '2014-07-18 09:43:55', 'jpg', null, 'upload/files/20140718094355twCIOKEZ.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094355twCIOKEZ.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f6474722ad01474723f78e0004', null, 'Desktop', null, '2014-07-18 09:44:05', 'zip', null, 'upload/files/201407180944059hUL3euv.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180944059hUL3euv.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f6474722ad014747248d0f0007', null, 'LOGO-副本副本', null, '2014-07-18 09:44:43', 'jpg', null, 'upload/files/20140718094443ye4QrEVf.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094443ye4QrEVf.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f6474722ad01474724bdc2000a', null, 'Desktop', null, '2014-07-18 09:44:56', 'zip', null, 'upload/files/20140718094456XgxaVLOr.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094456XgxaVLOr.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f847666ae40147666df6eb0002', null, 'jeecg_scott', null, '2014-07-24 11:33:08', 'jpg', null, 'upload/files/20140724113308R9yRv2hj.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724113308R9yRv2hj.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f847666ae40147666e16ff0003', null, 'jeecg_scott', null, '2014-07-24 11:33:16', 'jpg', null, 'upload/files/201407241133168ezfMs40.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407241133168ezfMs40.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f847666ae40147671e80cf0017', null, 'LOGO', null, '2014-07-24 14:45:58', 'jpg', null, 'upload/files/20140724144558XmkQL4Zs.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724144558XmkQL4Zs.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f847666ae401476729806f0018', null, 'LOGO', null, '2014-07-24 14:57:58', 'jpg', null, 'upload/files/20140724145758jWIbQ6sv.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724145758jWIbQ6sv.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f847666ae401476729c6df001b', null, 'default', null, '2014-07-24 14:58:16', 'zip', null, 'upload/files/20140724145816LX1bxIBf.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724145816LX1bxIBf.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f847666ae401476730b187001e', null, 'LOGO', null, '2014-07-24 15:05:50', 'jpg', null, 'upload/files/20140724150550qiXF3fMC.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724150550qiXF3fMC.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f847666ae401476730f1240021', null, 'root', null, '2014-07-24 15:06:06', 'zip', null, 'upload/files/20140724150606bwWmIb9y.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724150606bwWmIb9y.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f84767413b0147674352d30001', null, 'jeecg_scott', null, '2014-07-24 15:26:11', 'jpg', null, 'upload/files/20140724152611YCkPnNNe.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724152611YCkPnNNe.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477ad29d01477ad8e51b0004', null, 'default', null, '2014-07-28 10:42:20', 'zip', null, 'upload/files/20140728104220s9ne9Xg1.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728104220s9ne9Xg1.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b0c1f01477b0e31e30003', null, 'LOGO', null, '2014-07-28 11:40:33', 'jpg', null, 'upload/files/20140728114033QsfvsemU.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728114033QsfvsemU.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b0c1f01477b0e44790006', null, '12', null, '2014-07-28 11:40:38', 'zip', null, 'upload/files/20140728114038qnWchMMc.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728114038qnWchMMc.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b5b5b01477b5cb2c40002', null, '12', null, '2014-07-28 13:06:18', 'zip', null, 'upload/files/20140728130618DtPUFGuA.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130618DtPUFGuA.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b5b5b01477b5cc3e50003', null, 'LOGO', null, '2014-07-28 13:06:22', 'jpg', null, 'upload/files/20140728130622IwHTMQ8A.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130622IwHTMQ8A.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b5b5b01477b5d02730006', null, '12', null, '2014-07-28 13:06:38', 'zip', null, 'upload/files/20140728130638snqMiJ14.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130638snqMiJ14.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b5b5b01477b5ef0a90009', null, 'LOGO', null, '2014-07-28 13:08:45', 'jpg', null, 'upload/files/20140728130845H1ns0FfD.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130845H1ns0FfD.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b5b5b01477b5efd31000c', null, '12', null, '2014-07-28 13:08:48', 'zip', null, 'upload/files/20140728130848mCc0YxYQ.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130848mCc0YxYQ.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b681801477b69179c0002', null, 'LOGO', null, '2014-07-28 13:19:50', 'jpg', null, 'upload/files/20140728131950wN5iFSPb.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728131950wN5iFSPb.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b681801477b692d7b0005', null, 'saas-plugin-web-master-shiro-mybatis', null, '2014-07-28 13:19:56', 'zip', null, 'upload/files/20140728131956xAYGxZkb.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728131956xAYGxZkb.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b6c5401477b6d39dc0002', null, 'LOGO', null, '2014-07-28 13:24:21', 'jpg', null, 'upload/files/20140728132421aK4DQMYc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132421aK4DQMYc.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b6c5401477b6d4ee40005', null, '12', null, '2014-07-28 13:24:26', 'zip', null, 'upload/files/20140728132426Jjjm71ce.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132426Jjjm71ce.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b6e4e01477b6efba10001', null, 'LOGO', null, '2014-07-28 13:26:16', 'jpg', null, 'upload/files/20140728132616YIujfrwM.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132616YIujfrwM.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b6e4e01477b6f0ae10004', null, '12', null, '2014-07-28 13:26:20', 'zip', null, 'upload/files/20140728132620zgrSq1Lg.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132620zgrSq1Lg.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b70aa01477b71e16e0003', null, 'LOGO', null, '2014-07-28 13:29:26', 'jpg', null, 'upload/files/201407281329268P4veRz7.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407281329268P4veRz7.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b70aa01477b71ee4a0006', null, '12', null, '2014-07-28 13:29:29', 'zip', null, 'upload/files/20140728132929AexU7BwG.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132929AexU7BwG.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b70aa01477b75b3200009', null, 'LOGO', null, '2014-07-28 13:33:36', 'jpg', null, 'upload/files/20140728133336yGqI8ds0.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728133336yGqI8ds0.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477b70aa01477b75c54a000c', null, '12', null, '2014-07-28 13:33:41', 'zip', null, 'upload/files/20140728133341NY9jq8uK.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728133341NY9jq8uK.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477c283701477c29665c0002', null, 'jeecg_scott', null, '2014-07-28 16:49:53', 'jpg', null, 'upload/files/20140728164953P9e67L9P.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728164953P9e67L9P.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477c283701477c298a7e0005', null, 'jeewx_default(1)', null, '2014-07-28 16:50:03', 'zip', null, 'upload/files/20140728165003FePN5O3T.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165003FePN5O3T.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477c283701477c2a71d10007', null, 'jeecg_scott', null, '2014-07-28 16:51:02', 'jpg', null, 'upload/files/20140728165102pX4UL9q5.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165102pX4UL9q5.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477c283701477c2a81de000a', null, 'jeewx_default(1)', null, '2014-07-28 16:51:06', 'zip', null, 'upload/files/20140728165106e4gjNVNS.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165106e4gjNVNS.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477c283701477c2b8bb4000b', null, 'LOGO', null, '2014-07-28 16:52:14', 'jpg', null, 'upload/files/20140728165214sZ5XLBUL.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165214sZ5XLBUL.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477c283701477c2b9bfd000e', null, 'jeewx_default(1)', null, '2014-07-28 16:52:18', 'zip', null, 'upload/files/20140728165218pc1G2SaG.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165218pc1G2SaG.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477c283701477c2e96f50012', null, 'jeecg_scott', null, '2014-07-28 16:55:33', 'jpg', null, 'upload/files/20140728165533cOAxPIj2.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165533cOAxPIj2.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('402889f8477c283701477c2eb1300015', null, 'default', null, '2014-07-28 16:55:40', 'zip', null, 'upload/files/201407281655408Wv6aztF.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407281655408Wv6aztF.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028bc064763571d0147635828440003', null, 'LOGO', null, '2014-07-23 21:10:27', 'jpg', null, 'upload/files/20140723211027iPYMKOfy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140723211027iPYMKOfy.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214bb0008', null, 'JR079839867R90000001000', null, null, 'doc', null, 'JR079839867R90000001000', null, 'upload/files/20130719201109hDr31jP1.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214c00009', null, 'JEECG平台协议', null, null, 'docx', null, 'JEECG平台协议', null, 'upload/files/20130719201156sYHjSFJj.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214c2000a', null, '分析JEECG与其他的开源项目的不足和优势', null, null, 'docx', null, '分析JEECG与其他的开源项目的不足和优势', null, 'upload/files/20130719201727ZLEX1OSf.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214c4000b', null, 'DMS-T3第三方租赁业务接口开发说明', null, null, 'docx', null, 'DMS-T3第三方租赁业务接口开发说明', null, 'upload/files/20130719201841LzcgqUek.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214c5000c', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, null, 'doc', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, 'upload/files/20130719201925mkCrU47P.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214ca000d', null, 'JEECG团队开发规范', null, null, 'txt', null, 'JEECG团队开发规范', null, 'upload/files/20130724103633fvOTwNSV.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214cb000e', null, '第一模板', null, null, 'doc', null, '第一模板', null, 'upload/files/20130724104603pHDw4QUT.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214cd000f', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200345EakUH3WB.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214cf0010', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200651IE8wPdZ4.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214d10011', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, null, 'xlsx', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, 'upload/files/20130704201022KhdRW1Gd.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214d30012', null, 'EIM201_CN', null, null, 'pdf', null, 'EIM201_CN', null, 'upload/files/20130704201046JVAkvvOt.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214d40013', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704201116Z8NhEK57.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881436d514601436d5214d60014', null, 'JEECGUI标签库帮助文档v3.2', null, null, 'pdf', null, 'JEECGUI标签库帮助文档v3.2', null, 'upload/files/20130704201125DQg8hi2x.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f0d8101472f14e0010002', null, '13840528444553', null, '2014-07-13 17:36:42', 'png', null, 'upload/files/20140713173643LtfDgtJW.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713173643LtfDgtJW.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f0d8101472f1ff82a0005', null, '2501216q581a_434673', null, '2014-07-13 17:48:50', 'jpg', null, 'upload/files/201407131748505X4diOvz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407131748505X4diOvz.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f0d8101472f218b350008', null, 'fdfb6e9cb6103298f5497760962ebbf7', null, '2014-07-13 17:50:33', 'png', null, 'upload/files/20140713175033jbqSMvgC.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713175033jbqSMvgC.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f356e01472f3695840002', null, 'Penguins', null, '2014-07-13 18:13:32', 'jpg', null, 'upload/files/20140713181332KAu3isS8.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713181332KAu3isS8.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f356e01472f3f428e0006', null, 'Hydrangeas', null, '2014-07-13 18:23:00', 'jpg', null, 'upload/files/20140713182300VpK2yVH4.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713182300VpK2yVH4.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f356e01472f4256e00007', null, 'Hydrangeas', null, '2014-07-13 18:26:22', 'jpg', null, 'upload/files/201407131826228RgGqLTc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407131826228RgGqLTc.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f356e01472f42fcc40009', null, 'Tulips', null, '2014-07-13 18:27:05', 'jpg', null, 'upload/files/20140713182705cUaiEj8S.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713182705cUaiEj8S.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f451c01472f481df30001', null, 'Koala', null, '2014-07-13 18:32:41', 'jpg', null, 'upload/files/20140713183241G0MwnKGS.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183241G0MwnKGS.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f451c01472f4cd0dc0003', null, 'Desert', null, '2014-07-13 18:37:49', 'jpg', null, 'upload/files/20140713183749DFYsvVqm.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183749DFYsvVqm.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d881472f451c01472f4d0a920004', null, 'Jellyfish', null, '2014-07-13 18:38:03', 'jpg', null, 'upload/files/20140713183803rrJwDiBz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183803rrJwDiBz.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d8814734ee0d0147351e604e0001', null, '淘学网DB设计', null, '2014-07-14 21:44:48', 'xls', null, 'upload/files/20140714214448nnhIGNXP.xls', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140714214448nnhIGNXP.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('4028d88147359f51014735a006fc0001', null, '1348502732_4991', null, '2014-07-15 00:06:25', 'gif', null, 'upload/files/20140715000625jz067Iqi.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140715000625jz067Iqi.swf', null, null, null);

-- ----------------------------
-- Table structure for `t_s_base_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_base_user`;
CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) DEFAULT NULL,
  `browser` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `signature` blob,
  `status` smallint(6) DEFAULT NULL,
  `userkey` varchar(200) DEFAULT NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_base_user
-- ----------------------------
INSERT INTO `t_s_base_user` VALUES ('402881e4461f9c6401461fa2e6f50002', null, null, '4be1dd049390623054515c6d433c4e3c', 'tingfeng', null, '1', null, 'tingfeng', '4028d881436d514601436d5214d70015');
INSERT INTO `t_s_base_user` VALUES ('402881e44648134a014648174a45000c', null, null, 'e0d5cae5376f58ac', 'jeecg测试', null, '1', null, 'ceshi', '4028d881436d514601436d5214d70015');
INSERT INTO `t_s_base_user` VALUES ('4028d881436d514601436d5215ac0043', '1', null, 'c44b01947c9e6e3f', '管理员', null, '1', null, 'admin', '4028d881436d514601436d5214d70015');
INSERT INTO `t_s_base_user` VALUES ('4028d881436d514601436d5215b20044', '0', null, '97c07a884bf272b5', '张代浩', null, '1', null, 'scott', '4028d881436d514601436d5214f30017');
INSERT INTO `t_s_base_user` VALUES ('4028d881436d514601436d5215b80045', '0', null, 'f2322ec2fb9f40d1', '采购员', null, '1', null, 'cgy', '4028d881436d514601436d5214d70015');
INSERT INTO `t_s_base_user` VALUES ('4028d881436d514601436d5215bc0046', '1', null, 'a324509dc1a3089a', '采购审批员', null, '1', null, 'cgspy', '4028d881436d514601436d5214d70015');

-- ----------------------------
-- Table structure for `t_s_config`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_config`;
CREATE TABLE `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`),
  CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_config
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_demo`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_demo`;
CREATE TABLE `t_s_demo` (
  `ID` varchar(32) NOT NULL,
  `democode` longtext,
  `demoorder` smallint(6) DEFAULT NULL,
  `demotitle` varchar(200) DEFAULT NULL,
  `demourl` varchar(200) DEFAULT NULL,
  `demopid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fni8e3v88wcf2sahhlv57u4nm` (`demopid`),
  CONSTRAINT `FK_fni8e3v88wcf2sahhlv57u4nm` FOREIGN KEY (`demopid`) REFERENCES `t_s_demo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_demo
-- ----------------------------
INSERT INTO `t_s_demo` VALUES ('4028d881436d514601436d52186900c4', '<div class=\"form\">\r\n   <label class=\"Validform_label\">\r\n     非空验证：\r\n    </label>\r\n    <input name=\"demotitle\" id=\"demotitle\" datatype=\"*\" errormsg=\"该字段不为空\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     URL验证：\r\n    </label>\r\n    <input name=\"demourl\" id=\"demourl\" datatype=\"url\" errormsg=\"必须是URL\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     至少选择2项：\r\n    </label>\r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite21\" type=\"checkbox\" value=\"1\" datatype=\"need2\" nullmsg=\"请选择您的爱好！\" />\r\n  \r\n     阅读\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite22\" type=\"checkbox\" value=\"2\" />\r\n    \r\n     音乐\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite23\" type=\"checkbox\" value=\"3\" />\r\n  \r\n     运动\r\n   \r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     邮箱：\r\n    </label>\r\n    <input name=\"demoorder\" id=\"demoorder\" datatype=\"e\" errormsg=\"邮箱非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     手机号：\r\n    </label>\r\n    <input name=\"phone\" id=\"phone\" datatype=\"m\" errormsg=\"手机号非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     金额：\r\n    </label>\r\n    <input name=\"money\" id=\"money\" datatype=\"d\" errormsg=\"金额非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     日期：\r\n    </label>\r\n    <input name=\"date\" id=\"date\" class=\"easyui-datebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     时间：\r\n    </label>\r\n    <input name=\"time\" id=\"time\" class=\"easyui-datetimebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>', null, '表单验证', null, null);

-- ----------------------------
-- Table structure for `t_s_depart`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_depart`;
CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`),
  CONSTRAINT `FK_knnm3wb0bembwvm0il7tf6686` FOREIGN KEY (`parentdepartid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_depart
-- ----------------------------
INSERT INTO `t_s_depart` VALUES ('4028d881436d514601436d5214d70015', '信息部', '12', null);
INSERT INTO `t_s_depart` VALUES ('4028d881436d514601436d5214ef0016', '设计部', null, null);
INSERT INTO `t_s_depart` VALUES ('4028d881436d514601436d5214f30017', '研发室', '研发技术难题', '4028d881436d514601436d5214ef0016');

-- ----------------------------
-- Table structure for `t_s_document`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_document`;
CREATE TABLE `t_s_document` (
  `documentstate` smallint(6) DEFAULT NULL,
  `documenttitle` varchar(100) DEFAULT NULL,
  `pictureindex` blob,
  `showhome` smallint(6) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`),
  CONSTRAINT `FK_f2mc12eu0umghp2i70apmtxjl` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_qr3qlmgkflj35m5ci1xv0vvg3` FOREIGN KEY (`typeid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_document
-- ----------------------------
INSERT INTO `t_s_document` VALUES (null, null, null, null, '297e7eb6469a4a8901469a5d96ea000d', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '297e7eb6469a4a8901469a5ebac20010', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '297e7eb6469a9a0f01469a9b59d30001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '297e7eb6469a9a0f01469a9bc74b0003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402880e6477d04e001477d0a31040002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402880e6477d04e001477d0a53150005', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402880e6477d04e001477d0dfcd80009', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402880e6477d04e001477d0e143d000a', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402880e6477d04e001477d0e1d31000d', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402880e6477d5c2601477d5d81de0001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446394419014639453ce90002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e4463cc88701463ccef5340001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44643207c01464333b1f9000c', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e4464381350146438691940002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44643813501464389b02a000b', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44643a1cd014643a510060003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44643a1cd014643a55d6f0006', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695183a014695210478000f', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695183a0146952144320012', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695183a0146952187bc0015', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695183a01469522f1ed0018', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695183a01469523431e001b', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695183a01469523eb7f001e', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695183a0146952422130021', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695970aeb0014', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c01469597394f0016', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c0146959757810018', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695977560001a', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a1de0a001d', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a38b470020', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a3cdea0022', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a4383a0024', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a4913b0026', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a4dda10027', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a726df0028', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a7705a002b', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a7b814002e', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a7ecf10031', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e446955c7c014695a831d70034', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695ed3bdc0001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695ed79fa0003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695ef476c0005', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f2c6280007', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f3176d0009', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f339a7000b', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f3a3b3000d', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f3f89f000f', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f443990011', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f45e1a0013', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f494290015', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e44695ebe3014695f4d5570017', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, '11111', null, null, '402881e845d1723e0145d18fef940019', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e946ddea480146ddf061b50001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e946ddea480146ddf730350003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e946ddea480146ddf991610005', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e946ddea480146de02f8ba0008', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e946ddea480146de0522e3000a', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e946ddea480146de09f959000e', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e946ddea480146de0f340b0010', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e947015a7001470160f9290001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e947015a70014701619f490004', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e947015a700147016449650007', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e94701df96014701eb22d30006', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e94701df96014701f3f7160007', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e94701df960147020b82d1000d', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e9470273d20147028adf830019', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e9470273d20147028afde6001a', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402881e94702c764014702ceee2e0004', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889ed472e852301472eaee6f80009', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889ed472e852301472eb0270b000d', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889ed472ec2a801472ec3997c0001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889ed472ee23401472ee59ccf0001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f346dc66c30146dc7c11630001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f346dc66c30146dc7ccb410005', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f346dc66c30146dc7cf66b0008', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f346dc8a220146dc933f720007', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f64747048401474709372d0009', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f6474704840147470a1ca7000e', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f6474704840147470d48ab000f', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f6474704840147470d62570012', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f6474704840147470e7b920014', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f64747048401474710097e0017', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f647470484014747108feb001a', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f647470484014747129c15001d', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f647470484014747133201001f', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f647470484014747137f230022', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f64747182f01474718ed750001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f64747182f01474719193e0004', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f64747182f01474719c42b0007', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f64747182f01474720ef4c000c', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f64747182f014747211b11000f', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f6474722ad01474723d3400001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f6474722ad01474723f78e0004', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f6474722ad014747248d0f0007', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f6474722ad01474724bdc2000a', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f847666ae40147666df6eb0002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f847666ae40147666e16ff0003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f847666ae40147671e80cf0017', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f847666ae401476729806f0018', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f847666ae401476729c6df001b', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f847666ae401476730b187001e', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f847666ae401476730f1240021', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f84767413b0147674352d30001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477ad29d01477ad8e51b0004', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b0c1f01477b0e31e30003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b0c1f01477b0e44790006', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b5b5b01477b5cb2c40002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b5b5b01477b5cc3e50003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b5b5b01477b5d02730006', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b5b5b01477b5ef0a90009', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b5b5b01477b5efd31000c', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b681801477b69179c0002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b681801477b692d7b0005', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b6c5401477b6d39dc0002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b6c5401477b6d4ee40005', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b6e4e01477b6efba10001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b6e4e01477b6f0ae10004', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b70aa01477b71e16e0003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b70aa01477b71ee4a0006', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b70aa01477b75b3200009', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477b70aa01477b75c54a000c', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477c283701477c29665c0002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477c283701477c298a7e0005', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477c283701477c2a71d10007', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477c283701477c2a81de000a', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477c283701477c2b8bb4000b', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477c283701477c2b9bfd000e', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477c283701477c2e96f50012', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '402889f8477c283701477c2eb1300015', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028bc064763571d0147635828440003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f0d8101472f14e0010002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f0d8101472f1ff82a0005', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f0d8101472f218b350008', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f356e01472f3695840002', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f356e01472f3f428e0006', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f356e01472f4256e00007', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f356e01472f42fcc40009', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f451c01472f481df30001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f451c01472f4cd0dc0003', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d881472f451c01472f4d0a920004', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d8814734ee0d0147351e604e0001', '4028d881436d514601436d5216190053');
INSERT INTO `t_s_document` VALUES (null, null, null, null, '4028d88147359f51014735a006fc0001', '4028d881436d514601436d5216190053');

-- ----------------------------
-- Table structure for `t_s_fileno`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_fileno`;
CREATE TABLE `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) DEFAULT NULL,
  `filenonum` int(11) DEFAULT NULL,
  `filenotype` varchar(32) DEFAULT NULL,
  `filenoYear` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_fileno
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_function`;
CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) DEFAULT NULL,
  `functionlevel` smallint(6) DEFAULT NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) DEFAULT NULL,
  `functionurl` varchar(100) DEFAULT NULL,
  `parentfunctionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  `desk_iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  KEY `FK_gbdacaoju6d5u53rp4jo4rbs9` (`desk_iconid`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_gbdacaoju6d5u53rp4jo4rbs9` FOREIGN KEY (`desk_iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_function
-- ----------------------------
INSERT INTO `t_s_function` VALUES ('297e7eb6469a4a8901469a54eff60006', null, '1', '文章管理', '3', 'cmsArticleController.do?cmsArticle', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402880e6477d61da01477d71430f001a', null, '1', 'JqueryFile示例', '10', 'fileUploadController.do?fileUploadSample', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402880e6478c6d8201478c71c5460001', null, '1', '微相册', '3', 'weixinPhotoAlbumController.do?weixinPhotoAlbum', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402881e446677b700146677d7b600001', null, '1', '扩展接口管理', '03', 'weixinExpandconfigController.do?weixinExpandconfig', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402881e44695183a0146951af2b70004', null, '0', '微信网站', '4', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402881e44695183a0146951b66050006', null, '1', '广告管理', '0', 'adController.do?ad', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402881e44695183a0146951ed79e0008', null, '1', '栏目管理', '1', 'cmsMenuController.do?menu', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402881e545f5dd1a0145f5de9bb60001', null, '0', '消息管理', '2', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402881e545f5dd1a0145f5f32cf00005', null, '1', '文本消息', '1', 'textTemplateController.do?list', '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402881e545f5f4780145f61198810004', null, '1', '图文消息', '2', 'newsTemplateController.do?list', '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402881e8460d7e5301460d81c7a60001', null, '1', '关键字管理', '2', 'autoResponseController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402889f64747048401474706d2a50001', null, '1', '网站信息', '5', 'weixinCmsSiteController.do?weixinCmsSite', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('402889f64747048401474707902e0003', null, '1', '网站模板', '6', 'weixinCmsStyleController.do?weixinCmsStyle', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215070018', null, '0', 'Online 开发', '11', '', null, '4028d881436d514601436d5214ba0007', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52150a0019', null, '0', '系统管理', '11', '', null, '4028d881436d514601436d5214b80005', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52150b001a', null, '0', '统计查询', '3', '', null, '4028d881436d514601436d5214ba0007', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52150d001b', null, '0', '常用示例', '8', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52150f001c', null, '0', '系统监控', '11', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521513001d', null, '1', '用户管理', '5', 'userController.do?user', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521516001e', null, '1', '角色管理', '6', 'roleController.do?role', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52151a001f', null, '1', '菜单管理', '7', 'functionController.do?function', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52151f0020', null, '1', '数据字典', '6', 'systemController.do?typeGroupList', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215220021', null, '1', '图标管理', '18', 'iconController.do?icon', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215260023', null, '1', '部门管理', '22', 'departController.do?depart', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215290024', null, '1', '地域管理', '22', 'territoryController.do?territory', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b10001', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52152c0025', null, '1', '用户分析', '17', 'logController.do?statisticTabs&isIframe', '4028d881436d514601436d52150b001a', '4028d881436d514601436d5214b10001', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215300026', null, '1', '表单配置', '1', 'cgFormHeadController.do?cgFormHeadList', '4028d881436d514601436d5215070018', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215340027', null, '1', '动态报表配置', '2', 'cgreportConfigHeadController.do?cgreportConfigHead', '4028d881436d514601436d5215070018', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215380028', null, '1', '数据监控', '11', 'dataSourceController.do?goDruid&isIframe', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52153b0029', null, '1', '系统日志', '21', 'logController.do?log', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521540002a', null, '1', '定时任务', '21', 'timeTaskController.do?timeTask', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521545002b', null, '1', '表单验证', '1', 'demoController.do?formTabs', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521549002c', null, '1', 'Demo示例', '2', 'jeecgDemoController.do?jeecgDemo', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52154d002d', null, '1', '单表模型', '3', 'jeecgNoteController.do?jeecgNote', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521552002e', null, '1', '一对多模型', '4', 'jeecgOrderMainController.do?jeecgOrderMain', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521557002f', null, '1', 'Excel导入导出', '5', 'courseController.do?course', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52155a0030', null, '1', '上传下载', '6', 'commonController.do?listTurn&turn=system/document/filesList', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52155f0031', null, '1', '无分页列表', '7', 'userNoPageController.do?user', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215640032', null, '1', 'jdbc示例', '8', 'jeecgJdbcController.do?jeecgJdbc', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215670033', null, '1', 'SQL分离', '9', 'jeecgJdbcController.do?dictParameter', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52156b0034', null, '1', '字典标签', '10', 'demoController.do?dictSelect', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52156f0035', null, '1', '表单弹出风格', '11', 'demoController.do?demoList', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215730036', null, '1', '特殊布局', '12', 'demoController.do?demoIframe', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215770037', null, '1', '单表例子(无Tag)', '13', 'jeecgEasyUIController.do?jeecgEasyUI', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52157a0038', null, '1', '一对多例子(无Tag)', '14', 'jeecgOrderMainNoTagController.do?jeecgOrderMainNoTag', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52157e0039', null, '1', 'HTML编辑器', '15', 'jeecgDemoController.do?ckeditor&isIframe', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521581003a', null, '1', '在线word(IE)', '16', 'webOfficeController.do?webOffice', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521584003b', null, '1', 'WebOffice官方例子', '17', 'webOfficeController.do?webOfficeSample&isIframe', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521587003c', null, '1', '多附件管理', '18', 'tFinanceController.do?tFinance', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52158a003d', null, '1', 'Datagrid手工Html', '19', 'userController.do?userDemo', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52158f003e', null, '1', '物料Bom', '20', 'jeecgMatterBomController.do?goList', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d521593003f', null, '1', '报表示例', '21', 'reportDemoController.do?studentStatisticTabs&isIframe', '4028d881436d514601436d52150b001a', '4028d881436d514601436d5214b10001', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5215990040', null, '1', 'ckfinder例子', '100', 'jeecgDemoCkfinderController.do?jeecgDemoCkfinder', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d52c2fb0181', null, '0', '基础设置', '1', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d539c530183', null, '0', '菜单管理', '3', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d53fee50187', null, '0', '发送消息', '04', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5449330189', null, '0', '微活动', '5', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d54b1bf018d', null, '0', '统计分析', '07', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d54e0ba018f', null, '0', '账号管理', '6', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5618400191', null, '1', '关注欢迎语', '01', 'subscribeController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d56555e0193', null, '1', '未识别回复语', '02', '', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5884be019d', null, '1', '自定义菜单', '02', 'menuManagerController.do?list', '4028d881436d514601436d539c530183', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d58ff5e01a1', null, '1', '群发消息', '01', '', '4028d881436d514601436d53fee50187', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d592bef01a3', null, '1', '单发消息', '02', '', '4028d881436d514601436d53fee50187', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d59984601a5', null, '1', '微大转盘', '01', 'huodongController.do?list&type=2', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d59d6d901a7', null, '1', '微信刮刮乐', '02', 'huodongController.do?list&type=1', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5a18e601a9', null, '1', '数据统计', '01', '', '4028d881436d514601436d54b1bf018d', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5af95501b1', null, '1', '公众帐号管理', '01', 'weixinAccountController.do?weixinAccount', '4028d881436d514601436d54e0ba018f', '4028d881436d514601436d5214b30002', null);
INSERT INTO `t_s_function` VALUES ('4028d881436d514601436d5b3b7001b3', null, '1', '企业资料', '02', '', '4028d881436d514601436d54e0ba018f', '4028d881436d514601436d5214b30002', null);

-- ----------------------------
-- Table structure for `t_s_icon`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_icon`;
CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `iconclas` varchar(200) DEFAULT NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_icon
-- ----------------------------
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214650000', 'png', 'back', null, '返回', 'plug-in/accordion/images/back.png', '1');
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214b10001', 'png', 'pie', null, '饼图', 'plug-in/accordion/images/pie.png', '1');
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214b30002', 'png', 'pictures', null, '图片', 'plug-in/accordion/images/pictures.png', '1');
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214b40003', 'png', 'pencil', null, '笔', 'plug-in/accordion/images/pencil.png', '1');
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214b50004', 'png', 'map', null, '地图', 'plug-in/accordion/images/map.png', '1');
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214b80005', 'png', 'group_add', null, '组', 'plug-in/accordion/images/group_add.png', '1');
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214b90006', 'png', 'calculator', null, '计算器', 'plug-in/accordion/images/calculator.png', '1');
INSERT INTO `t_s_icon` VALUES ('4028d881436d514601436d5214ba0007', 'png', 'folder', null, '文件夹', 'plug-in/accordion/images/folder.png', '1');

-- ----------------------------
-- Table structure for `t_s_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_log`;
CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) DEFAULT NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) DEFAULT NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`),
  CONSTRAINT `FK_oe64k4852uylhyc5a00rfwtay` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_log
-- ----------------------------
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a4b008b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:12:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a4b9c400001', 'Chrome', '权限: 微大转盘被更新成功', '5', '169.254.254.54', '2014-06-14 20:13:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a4c0c810002', 'Chrome', '权限: 微信刮刮乐被更新成功', '5', '169.254.254.54', '2014-06-14 20:13:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a4c1d6a0003', 'Chrome', '用户admin已退出', '2', '169.254.254.54', '2014-06-14 20:13:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a4c6e2f0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:13:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a4ebff20005', 'Chrome', '权限: 广告管理被更新成功', '5', '169.254.254.54', '2014-06-14 20:16:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a54f0740007', 'Chrome', '权限: 信息管理被添加成功', '3', '169.254.254.54', '2014-06-14 20:23:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a5596b80009', 'Chrome', '用户admin已退出', '2', '169.254.254.54', '2014-06-14 20:23:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a55a8fa000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:24:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a562832000b', 'Chrome', '用户admin已退出', '2', '169.254.254.54', '2014-06-14 20:24:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a59947b000c', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:28:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a5e5939000f', 'Chrome', '信息添加成功', '3', '169.254.254.54', '2014-06-14 20:33:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a4a8901469a5ef9c80012', 'Chrome', '信息添加成功', '3', '169.254.254.54', '2014-06-14 20:34:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a5fcc01469a60c51e0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:36:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a5fcc01469a6229a40002', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:37:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a728901469a7315830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:56:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a9a0f01469a9a79210000', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 21:39:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a9a0f01469a9b5fe10002', 'Chrome', '信息更新成功', '5', '169.254.254.54', '2014-06-14 21:40:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469a9a0f01469a9bcd080004', 'Chrome', '信息更新成功', '5', '169.254.254.54', '2014-06-14 21:40:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('297e7eb6469ad01a01469ad0915d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 22:38:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880a945fef8250145fefbd4c20000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.0.41', '2014-05-15 16:24:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880a945ff058c0145ff05c6fd0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.0.41', '2014-05-15 16:35:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880a945ff058c0145ff08ca8b0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.41', '2014-05-15 16:38:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880a945ff058c0145ff0b9bea0002', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.0.41', '2014-05-15 16:42:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6475e8cc801475e9117020000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-22 22:54:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e64763f59c014763f61b110000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 00:02:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e64763f59c014763f70c870002', 'Firefox', '权限: 订单管理被添加成功', '3', '192.168.0.102', '2014-07-24 00:04:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e64763f59c014763f7dab70004', 'Firefox', '用户admin已退出', '2', '192.168.0.102', '2014-07-24 00:04:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e64763f59c014763f7fa0a0005', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 00:05:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6476832b20147683308170000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 19:48:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6476832b201476834b5480001', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-07-24 19:49:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6476832b201476834d0bf0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 19:49:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e647684471014768452cbd0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 20:07:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6476844710147684ca6550001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 20:15:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e647685ab10147685b063e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 20:31:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e647687a270147687a94830000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 21:06:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d0820000000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 20:53:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d09f9a00001', 'Firefox', '微站点模板删除成功', '4', '192.168.0.102', '2014-07-28 20:55:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d0a52110004', 'Firefox', '微站点模板添加成功', '3', '192.168.0.102', '2014-07-28 20:55:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d0b3b0c0006', 'Firefox', '微站点信息更新成功', '5', '192.168.0.102', '2014-07-28 20:56:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d0cb8a50007', 'Firefox', '微站点模板更新成功', '5', '192.168.0.102', '2014-07-28 20:58:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d0dc4ca0008', 'Firefox', '微站点模板删除成功', '4', '192.168.0.102', '2014-07-28 20:59:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d0e1c9b000c', 'Firefox', '微站点模板添加成功', '3', '192.168.0.102', '2014-07-28 20:59:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d0e644b000e', 'Firefox', '微站点信息更新成功', '5', '192.168.0.102', '2014-07-28 21:00:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d04e001477d1254da000f', 'Firefox', '微站点信息更新成功', '5', '192.168.0.102', '2014-07-28 21:04:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d5c2601477d5d11d60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:25:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d5c2601477d5d8f4f0003', 'Chrome', '信息添加成功', '3', '192.168.0.102', '2014-07-28 22:26:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d5f7601477d5febb70000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:29:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d61da01477d637e370000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:32:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d61da01477d6a70730001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:40:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d61da01477d6ba9ac0018', 'Firefox', '用户admin已退出', '2', '192.168.0.102', '2014-07-28 22:41:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d61da01477d6bc2680019', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:41:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d61da01477d71437b001b', 'Chrome', '权限: JqueryFile示例被添加成功', '3', '192.168.0.102', '2014-07-28 22:48:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d61da01477d71bbf5001d', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-07-28 22:48:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6477d61da01477d7248f8001e', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:49:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c6ecb850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-31 20:39:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c71c5a70002', 'Chrome', '权限: 微相册被添加成功', '3', '192.168.0.102', '2014-07-31 20:42:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c7227d20004', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-07-31 20:43:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c7245c40005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-31 20:43:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c72a7350007', 'Chrome', '微相册添加成功', '3', '192.168.0.102', '2014-07-31 20:43:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c72e9510009', 'Chrome', '添加成功', '3', '192.168.0.102', '2014-07-31 20:44:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c738eea000c', 'Chrome', '相片更新成功', '5', '192.168.0.102', '2014-07-31 20:44:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c73abb9000d', 'Chrome', '相片更新成功', '5', '192.168.0.102', '2014-07-31 20:44:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c7454cd000f', 'Chrome', '微相册添加成功', '3', '192.168.0.102', '2014-07-31 20:45:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478c6d8201478c74a63f0011', 'Chrome', '添加成功', '3', '192.168.0.102', '2014-07-31 20:46:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478d3e0501478d3ea6610000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-01 00:26:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478d418101478d4232170000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-01 00:30:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478d48ea01478d4965960000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-01 00:38:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880e6478d527e01478d52dc8e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-01 00:48:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880eb44ce3b0f0144ce684ba30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.107', '2014-03-17 12:59:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880f3459d14a101459d19f3710000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:14:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880f3459d14a101459d1b7a360001', 'Chrome', '用户admin已退出', '2', '192.168.0.115', '2014-04-26 16:16:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880f3459d14a101459d1ba61c0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:16:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880f3459d14a101459d1c5b250003', 'Chrome', '用户admin已退出', '2', '192.168.0.115', '2014-04-26 16:17:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880f3459d14a101459d25a4ef0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:27:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880f3459d14a101459d26ce2c0005', 'Chrome', '用户admin已退出', '2', '192.168.0.115', '2014-04-26 16:28:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880f3459d14a101459d26e6870006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:29:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402880f3459d14a101459d2dae670007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:36:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e445a3b2fe0145a3b45ede0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-04-27 23:01:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f927c01461f9361480000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:18:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f927c01461f94a26d0001', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-22 00:19:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f927c01461f94b44b0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:19:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461f9cc0830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:28:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461fa2e79f0004', 'Chrome', '用户: tingfeng添加成功', '3', '192.168.1.100', '2014-05-22 00:35:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461fa2f9910005', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-22 00:35:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461fa31a820006', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:35:21', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461fa349030007', 'Chrome', '用户tingfeng已退出', '2', '192.168.1.100', '2014-05-22 00:35:33', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461fa35a540008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:35:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461fa395a4000a', 'Chrome', '用户: tingfeng更新成功', '5', '192.168.1.100', '2014-05-22 00:35:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461fa3a099000b', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-22 00:35:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4461f9c6401461fa3bc08000c', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:36:02', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44639441901463944c01a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-27 00:02:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4463cc88701463cc95b6a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-27 16:26:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4463cc88701463ccf1d2d0003', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-27 16:32:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643207c014643224c250000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:00:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643207c01464322e2000001', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-28 22:01:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643207c0146432330d80002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:01:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643207c0146432382b10003', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-28 22:02:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643207c0146432399a60004', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:02:25', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643207c014643293b310005', 'Chrome', '用户tingfeng已退出', '2', '192.168.1.100', '2014-05-28 22:08:34', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643207c0146432950350006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:08:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643207c014643328d3b0008', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-28 22:18:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643207c01464332a3e90009', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:18:50', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643207c01464333f86e000e', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-28 22:20:17', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643207c0146435b9f6c0011', 'Chrome', '微信公众帐号信息添加成功', '3', '192.168.1.100', '2014-05-28 23:03:36', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643207c0146436e5e770013', 'Chrome', '用户tingfeng已退出', '2', '192.168.1.100', '2014-05-28 23:24:05', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643207c01464373c3b60014', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 23:29:58', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643813501464381e9700000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 23:45:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643813501464386a7090004', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-28 23:50:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643813501464388b4950008', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-28 23:52:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44643813501464388d43a0009', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 23:52:59', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643813501464389b876000d', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-28 23:53:57', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643a1cd014643a3c2d80001', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 00:22:24', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643a1cd014643a536680005', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-29 00:23:59', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44643a1cd014643a579b20008', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-29 00:24:16', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e44648134a014648146e7b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:03:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a014648163ab80002', 'Chrome', '角色: 测试角色被添加成功', '3', '192.168.1.100', '2014-05-29 21:05:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146481669b90003', 'Chrome', '角色: 测试角色被更新成功', '5', '192.168.1.100', '2014-05-29 21:06:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a014648174aeb000e', 'Chrome', '用户: ceshi添加成功', '3', '192.168.1.100', '2014-05-29 21:07:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146481772be000f', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:07:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146481791ac0010', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:07:22', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464817e7da0011', 'Chrome', '用户ceshi已退出', '2', '192.168.1.100', '2014-05-29 21:07:44', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464817fd8a0012', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:07:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464818dfee0029', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:08:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464818f9bd002a', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:08:54', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a014648193f99002b', 'Chrome', '用户ceshi已退出', '2', '192.168.1.100', '2014-05-29 21:09:12', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464819557f002c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:09:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464819f229002d', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:09:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146481a78d3002e', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:10:32', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146481ad284002f', 'Chrome', '用户ceshi已退出', '2', '192.168.1.100', '2014-05-29 21:10:55', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146481aed9e0030', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:11:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146481d4a370047', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146481d5d860048', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:13:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a014648209402004a', 'Chrome', '操作: 新增被添加成功', '3', '192.168.1.100', '2014-05-29 21:17:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146482152fc004c', 'Chrome', '操作: 编辑被添加成功', '3', '192.168.1.100', '2014-05-29 21:18:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464821b64b004d', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:18:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464821ea56004e', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:18:40', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146482288a6004f', 'Chrome', '用户ceshi已退出', '2', '192.168.1.100', '2014-05-29 21:19:21', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a014648229acc0050', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:19:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a014648254cbb0051', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:22:22', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402881e44648134a01464827a5de0052', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:24:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146482c4e0f0053', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:30:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146482e24850054', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:32:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146482e37b90055', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:32:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146483162bf0056', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:35:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44648134a0146483184de0057', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:35:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464d026901464d036aa40000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-30 20:03:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464d026901464d05ab920002', 'Chrome', '添加1的信息成功！', '3', '192.168.1.100', '2014-05-30 20:05:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464db22d01464db4a1870000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-30 23:17:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464db22d01464db6ccfa0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-30 23:19:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464db22d01464db785860003', 'Chrome', '添加大转盘的信息成功！', '3', '192.168.1.100', '2014-05-30 23:20:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464dd29901464dd5dd1a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-30 23:53:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464ddec701464ddf57fd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-31 00:03:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464de1b501464de86fc10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-31 00:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464de1b501464dedae2e0001', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:19:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464de1b501464defa1a40002', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:21:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464de1b501464df091cd0003', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:22:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464de1b501464df315720004', 'Chrome', '更新大转盘的菜单信息信息成功！', '5', '192.168.1.100', '2014-05-31 00:25:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df500090000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-31 00:27:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df5476e0001', 'Chrome', '删除大转盘菜单信息数据', '4', '192.168.1.100', '2014-05-31 00:27:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df5cc4c0002', 'Chrome', '更新1的菜单信息信息成功！', '5', '192.168.1.100', '2014-05-31 00:28:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df66e280003', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:28:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df707b20005', 'Chrome', '添加我的大转盘的信息成功！', '3', '192.168.1.100', '2014-05-31 00:29:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df718220006', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:29:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df7525a0007', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:29:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df7931c0008', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:30:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4464df45f01464df9087b0009', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:31:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446672a080146672aa03a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 21:56:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446675fc801466761ea850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 22:56:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446676a060146676b66c90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:07:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446676a060146677088340006', 'Chrome', '创建成功', '3', '192.168.1.100', '2014-06-04 23:12:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446676a0601466775b94c0009', 'Chrome', '修改成功', '5', '192.168.1.100', '2014-06-04 23:18:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146677c3e140000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:25:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146677d7bc20002', 'Chrome', '权限: 扩展接口管理被添加成功', '3', '192.168.1.100', '2014-06-04 23:26:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146677d9e290003', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-04 23:27:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146677db0a00004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:27:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146678c66690006', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-04 23:43:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146678c795a0007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:43:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146678d6a810008', 'Chrome', '权限: 扩展接口管理被更新成功', '5', '192.168.1.100', '2014-06-04 23:44:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146678d8d210009', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-04 23:44:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446677b700146678d9e64000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:44:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44667912a01466793387a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:50:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44667912a0146679390b60002', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-04 23:51:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44667912a014667947aaa0004', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-04 23:52:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44667a05e014667a104aa0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-05 00:05:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4466c8d9801466c92e8a00006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-05 23:08:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446950f860146951146380000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 19:51:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446950f86014695120fc30002', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-13 19:52:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446950f8601469513ecde0004', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-13 19:54:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a0146951a33a60002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 20:01:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a0146951af32f0005', 'Chrome', '权限: 微信CMS被添加成功', '3', '192.168.1.100', '2014-06-13 20:01:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a0146951b66cb0007', 'Chrome', '权限: 首页广告管理被添加成功', '3', '192.168.1.100', '2014-06-13 20:02:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a0146951ed81f0009', 'Chrome', '权限: 栏目管理被添加成功', '3', '192.168.1.100', '2014-06-13 20:06:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a0146951f35f7000d', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-13 20:06:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a0146951f470e000e', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 20:06:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a0146952114830011', 'Chrome', '首页广告添加成功', '3', '192.168.1.100', '2014-06-13 20:08:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a014695214ad30014', 'Chrome', '首页广告添加成功', '3', '192.168.1.100', '2014-06-13 20:08:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a01469521a0200017', 'Chrome', '首页广告添加成功', '3', '192.168.1.100', '2014-06-13 20:09:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a01469522f83f001a', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 20:10:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a0146952348ec001d', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 20:10:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a01469523f1300020', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 20:11:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695183a01469524270e0023', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 20:11:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446952fde0146953087580001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 20:25:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c0146955d19850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 21:14:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c01469581929e0005', 'Chrome', '扩展接口管理更新成功', '5', '192.168.1.100', '2014-06-13 21:53:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c0146958917930010', 'Chrome', '扩展接口管理更新成功', '5', '192.168.1.100', '2014-06-13 22:02:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c01469597116a0015', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:17:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695973dbd0017', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:17:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695975c130019', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:17:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c0146959779d6001b', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:17:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a1e45f001e', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:29:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a36e56001f', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:30:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a390f50021', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:31:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a3d2fb0023', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:31:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a4526f0025', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:31:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a72ae4002a', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:34:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a77541002d', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:35:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a7bcb80030', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:35:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a7f0f70033', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:35:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446955c7c014695a8374e0036', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:36:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695ec69a30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 23:50:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695ed424a0002', 'Chrome', '首页广告更新成功', '5', '192.168.1.100', '2014-06-13 23:51:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695ed811b0004', 'Chrome', '首页广告更新成功', '5', '192.168.1.100', '2014-06-13 23:51:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695ef4c060006', 'Chrome', '首页广告更新成功', '5', '192.168.1.100', '2014-06-13 23:53:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f2e0010008', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:57:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f31d02000a', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:57:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f33e67000c', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:58:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f3aa80000e', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:58:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f3ff9d0010', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:58:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f447550012', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:59:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f465280014', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:59:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f499930016', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:59:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e44695ebe3014695f4dac10018', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:59:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4469ffe7a01469fff48cb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-15 22:47:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4469ffe7a0146a000097e0002', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-15 22:48:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4469ffe7a0146a005dbda0008', 'Chrome', '更新我的大转盘的菜单信息信息成功！', '5', '192.168.1.100', '2014-06-15 22:54:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e4469ffe7a0146a0060ecf0009', 'Chrome', '更新我的大转盘的菜单信息信息成功！', '5', '192.168.1.100', '2014-06-15 22:54:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a009740146a00a89c50000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-15 22:59:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4d4eb280000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:19:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4eb87dd0001', 'Chrome', '权限: 栏目管理被更新成功', '5', '192.168.1.100', '2014-06-16 21:43:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4ebbfee0002', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-16 21:44:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4ebd7360003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:44:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4ec895c0004', 'Chrome', '权限: 栏目管理被更新成功', '5', '192.168.1.100', '2014-06-16 21:45:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4ec97da0005', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-16 21:45:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4ecab460006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:45:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4f0380b0007', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:49:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4d1cc0146a4f1a2290008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:50:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f60d0146a4f671ad0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:55:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a4fa2beb0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:59:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a500c7460007', 'Chrome', '更新测试菜单的菜单信息信息成功！', '5', '192.168.1.100', '2014-06-16 22:07:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a50183d00009', 'Chrome', '添加微CMS的信息成功！', '3', '192.168.1.100', '2014-06-16 22:07:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a5019b9b000a', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-06-16 22:08:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a5028775000b', 'MSIE 8.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:09:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a503d7a6000c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:10:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a503e6bc000d', 'Safari', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:10:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a506c908000f', 'Safari', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:13:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a52c2e240010', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:54:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e446a4f9400146a52ccb7d0011', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-16 22:55:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5dd1a0145f5ddb2850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 21:55:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5dd1a0145f5de9bdb0002', 'Chrome', '权限: 消息管理被添加成功', '3', '192.168.1.101', '2014-05-13 21:56:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5dd1a0145f5f0b5ab0004', 'Chrome', '权限: 文本模板被添加成功', '3', '192.168.1.101', '2014-05-13 22:16:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5dd1a0145f5f32d4f0006', 'Chrome', '权限: 文本模板被添加成功', '3', '192.168.1.101', '2014-05-13 22:18:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5dd1a0145f5f33dc60007', 'Chrome', '权限: 文本模板被删除成功', '4', '192.168.1.101', '2014-05-13 22:18:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5dd1a0145f5f37693000a', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-05-13 22:19:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5dd1a0145f5f387d1000b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:19:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5f4780145f5f4debd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:20:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5f4780145f5f55fb30002', 'Chrome', '删除信息数据成功！', '4', '192.168.1.101', '2014-05-13 22:21:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5f4780145f6112aa30003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:51:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5f4780145f61198cf0005', 'Chrome', '权限: 图文模板被添加成功', '3', '192.168.1.101', '2014-05-13 22:51:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5f4780145f611ed960007', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-05-13 22:52:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f5f4780145f611feae0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:52:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f612570145f61311400000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:53:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f61b4d0145f61c39a60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 23:03:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545f61f110145f61f54460000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 23:06:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545fb0fdb0145fb1027e40000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-14 22:08:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545fb0fdb0145fb1123c30001', 'MSIE 7.0', '权限: 自定义菜单被更新成功', '5', '192.168.1.101', '2014-05-14 22:09:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545fb0fdb0145fb1178920002', 'MSIE 7.0', '用户admin已退出', '2', '192.168.1.101', '2014-05-14 22:09:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545fb0fdb0145fb118a2a0003', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-14 22:10:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545fb0fdb0145fb174b050006', 'MSIE 7.0', '添加第一个菜单的信息成功！', '3', '192.168.1.101', '2014-05-14 22:16:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e545fb0fdb0145fb206d840008', 'MSIE 7.0', '添加子菜单的信息成功！', '3', '192.168.1.101', '2014-05-14 22:26:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e54705957f0147059acf3e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-05 16:18:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e54705f629014705f6963f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-05 17:59:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e54705f629014705f7d62b0002', 'Chrome', '权限: 会员管理被添加成功', '3', '192.168.1.101', '2014-07-05 18:00:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e54705f629014705f81e150004', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-07-05 18:00:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e54705f629014705f83d730005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-05 18:01:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470601b7014706020d7a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-05 18:11:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a3f7701470a4033150000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 13:58:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a3f7701470a4159b60002', 'Chrome', '权限: 会员管理被添加成功', '3', '192.168.1.101', '2014-07-06 13:59:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a3f7701470a41e1700004', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-07-06 13:59:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a3f7701470a42034d0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:00:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a3f7701470a42c71f0006', 'Chrome', '权限: 会员管理被删除成功', '4', '192.168.1.101', '2014-07-06 14:00:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a3f7701470a43019c0007', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-07-06 14:01:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a3f7701470a4321dd0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:01:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a44ed01470a458b630000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:03:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a467f01470a46dc3a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:05:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a467f01470a4809cf0001', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-07-06 14:06:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a467f01470a482c630002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:06:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a467f01470a48d4a10003', 'Chrome', '权限: 会员管理被更新成功', '5', '192.168.1.101', '2014-07-06 14:07:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a4f9b01470a5083540000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:15:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a4f9b01470a5155040001', 'Chrome', '权限: 会员管理被更新成功', '5', '192.168.1.101', '2014-07-06 14:16:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a559701470a5644850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:22:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a6e9a01470a6f33d20000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:49:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a6e9a01470a855a1e0002', 'Chrome', '商城会员添加成功', '3', '192.168.1.101', '2014-07-06 15:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a6e9a01470a90101f0004', 'Chrome', '商城会员添加成功', '3', '192.168.1.101', '2014-07-06 15:25:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470a6e9a01470ad0483d0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 16:35:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470ae66801470ae727db0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 17:00:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470aeaa301470aeb76cb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 17:05:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470aeaa301470bb508930001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 20:45:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470bc37201470bd0699a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 21:15:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470bc37201470bd137200002', 'Chrome', '权限: 购物车管理被添加成功', '3', '192.168.1.101', '2014-07-06 21:16:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470bd23901470bd46bbd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 21:19:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470c1b5901470c1bf4ae0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 22:37:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5470c28a701470c2a94e80000', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:53:43', '1', null);
INSERT INTO `t_s_log` VALUES ('402881e5470c28a701470c2c97540001', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:55:54', '1', null);
INSERT INTO `t_s_log` VALUES ('402881e5470c28a701470c2e24de0003', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:57:36', '1', null);
INSERT INTO `t_s_log` VALUES ('402881e5470c28a701470c2e4e6c0007', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:57:47', '1', null);
INSERT INTO `t_s_log` VALUES ('402881e5470c28a701470c2ecc6a0009', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:58:19', '1', null);
INSERT INTO `t_s_log` VALUES ('402881e5470c28a701470c2f5933000a', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:58:55', '1', null);
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d051f600000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-04 01:57:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d0635480002', 'Chrome', '权限: 会员卡被添加成功', '3', '192.168.1.101', '2014-08-04 01:58:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d0675f80004', 'Chrome', '权限: 会员卡信息被添加成功', '3', '192.168.1.101', '2014-08-04 01:59:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d0777a80007', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-08-04 02:00:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d07915f0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-04 02:00:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d08ceeb0009', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:01:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d0ab6be000a', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:03:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d0def2b000b', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:07:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d0e9f37000c', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:08:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d0ef21c000d', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:08:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e5479d04cc01479d0f336f000e', 'Chrome', '权限: 会员卡被更新成功', '5', '192.168.1.101', '2014-08-04 02:08:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb953cf10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-10 00:23:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb960b4f0001', 'Chrome', '微站点信息删除成功', '4', '192.168.1.101', '2014-08-10 00:24:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9618150002', 'Chrome', '微站点模板删除成功', '4', '192.168.1.101', '2014-08-10 00:24:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9650220003', 'Chrome', '权限: 商品分类被删除成功', '4', '192.168.1.101', '2014-08-10 00:24:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb965d670004', 'Chrome', '权限: 商品信息被删除成功', '4', '192.168.1.101', '2014-08-10 00:24:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9668690005', 'Chrome', '权限: 会员管理被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9676310006', 'Chrome', '权限: 购物车管理被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb96833e0007', 'Chrome', '权限: 订单管理被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb968d420008', 'Chrome', '权限: 微信商城被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb969b860009', 'Chrome', '权限: 会员卡信息被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb96a3eb000a', 'Chrome', '权限: 会员卡被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb96cd72000b', 'Chrome', '权限: 用户概况被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb96ddf7000c', 'Chrome', '权限: 用户分组被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb96ea93000d', 'Chrome', '权限: 会话记录被删除成功', '4', '192.168.1.101', '2014-08-10 00:25:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb974661000e', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-08-10 00:25:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb977118000f', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-10 00:26:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9809cf0010', 'Chrome', '相片更新成功', '5', '192.168.1.101', '2014-08-10 00:26:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9813240011', 'Chrome', '相片删除成功', '4', '192.168.1.101', '2014-08-10 00:26:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb981b440012', 'Chrome', '相片删除成功', '4', '192.168.1.101', '2014-08-10 00:26:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9835480014', 'Chrome', '添加成功', '3', '192.168.1.101', '2014-08-10 00:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb989ba10016', 'Chrome', '相片删除成功', '4', '192.168.1.101', '2014-08-10 00:27:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb98aa9c0017', 'Chrome', '相片删除成功', '4', '192.168.1.101', '2014-08-10 00:27:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb98b2830018', 'Chrome', '相片删除成功', '4', '192.168.1.101', '2014-08-10 00:27:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb98c7b20019', 'Chrome', '微相册删除成功', '4', '192.168.1.101', '2014-08-10 00:27:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9a1494001a', 'Chrome', '权限: 会员管理被删除成功', '4', '192.168.1.101', '2014-08-10 00:29:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9a3385001b', 'Chrome', '权限: 基础设置被更新成功', '5', '192.168.1.101', '2014-08-10 00:29:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9aa12f001c', 'Chrome', '权限: 消息管理被更新成功', '5', '192.168.1.101', '2014-08-10 00:29:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9ae710001d', 'Chrome', '权限: 菜单管理被更新成功', '5', '192.168.1.101', '2014-08-10 00:29:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9b23bf001e', 'Chrome', '权限: 微信网站被更新成功', '5', '192.168.1.101', '2014-08-10 00:30:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9b60c4001f', 'Chrome', '权限: 微活动被更新成功', '5', '192.168.1.101', '2014-08-10 00:30:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9b81710020', 'Chrome', '权限: 账号管理被更新成功', '5', '192.168.1.101', '2014-08-10 00:30:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9b8e1d0021', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-08-10 00:30:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9ba56d0022', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-10 00:30:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9c796e0023', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-08-10 00:31:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e547bb946e0147bb9c98ad0024', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-10 00:31:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e647962b48014796e03c450000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-02 21:19:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e647970fbd014797105e5e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-02 22:12:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e64799449b014799452ac80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 08:29:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e64799449b0147994cf3c60001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 08:37:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e64799449b0147994d95a20002', 'Chrome', '权限: 订单管理被更新成功', '5', '192.168.1.102', '2014-08-03 08:38:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e64799449b0147994dd6280003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 08:38:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e647994e690147994f10680000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 08:40:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e647994e6901479986a1d50001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 09:40:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e64799f7e4014799f870300000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 11:45:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479a921401479a928f0f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 14:33:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479ac39801479ac5a04a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 15:29:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479ace8d01479acf061e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 15:39:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479ace8d01479aecadaa0004', 'Chrome', '购物车 删除成功', '4', '192.168.1.102', '2014-08-03 16:11:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479af7d201479af843d80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 16:24:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479af9a001479affc7fc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 16:32:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b3b3301479b3b8f6d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 17:37:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b3d9e01479b3dfcc60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 17:40:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b4e8c01479b5294d10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:03:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b619c01479b6244f90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:20:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b662101479b69e3110000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:28:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b6c8601479b6cf0950000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:31:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b6c8601479b6e7d7c0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:33:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b6c8601479b7002910002', 'Chrome', '商城地址信息删除成功', '4', '192.168.1.102', '2014-08-03 18:35:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b6c8601479b700b550003', 'Chrome', '商城地址信息删除成功', '4', '192.168.1.102', '2014-08-03 18:35:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e6479b6c8601479b7092220005', 'Chrome', '商城地址信息添加成功', '3', '192.168.1.102', '2014-08-03 18:35:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e745e6735b0145e676015f0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-05-10 22:07:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e745e67ca70145e67d2ef90000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-05-10 22:15:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e747bae9ac0147baea2c810000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-08-09 21:16:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e747baf1ea0147baf2403d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-08-09 21:25:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e747baf1ea0147baf4c6a40001', 'Chrome', '用户admin已退出', '2', '192.168.1.103', '2014-08-09 21:28:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e747baf1ea0147baf4e7e50002', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.103', '2014-08-09 21:28:38', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e747baf1ea0147bb0a90340003', 'Chrome', '用户tingfeng已退出', '2', '192.168.1.101', '2014-08-09 21:52:17', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` VALUES ('402881e747baf1ea0147bb0aa6030004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-09 21:52:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e747baf1ea0147bb51f7ea0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-09 23:10:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e747baf1ea0147bb750b9a0006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-09 23:48:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e747baf1ea0147bb79d29f0008', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.101', '2014-08-09 23:53:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c297860145c29981dd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-03 23:00:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c2d12b0145c2d303490000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 00:03:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c2d12b0145c2d38b680001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 00:03:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c2d12b0145c2d473600002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 00:04:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c2d88e0145c2d9159a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 00:09:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c6f1430145c7043fa80000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 19:35:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c6f1430145c704a6230001', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 19:35:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c6f1430145c705a9480002', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 19:36:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c7090d0145c709a93b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 19:41:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c732a20145c737394d0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 20:30:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c73cb00145c746c9240000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 20:47:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c73cb00145c74893910001', 'MSIE 9.0', '权限: 公众帐号管理被更新成功', '5', '192.168.1.104', '2014-05-04 20:49:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c73cb00145c74976440005', 'MSIE 9.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-04 20:50:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c73cb00145c74988570006', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 20:50:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845c73cb00145c75445eb0010', 'MSIE 9.0', '创建成功', '3', '192.168.1.104', '2014-05-04 21:02:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc520a0145cc535a580000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 20:19:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc520a0145cc5520730001', 'MSIE 9.0', '权限: 公众帐号管理被更新成功', '5', '192.168.1.104', '2014-05-05 20:21:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc520a0145cc55585c0002', 'MSIE 9.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-05 20:21:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc520a0145cc5569f20003', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 20:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc520a0145cc62d2900004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 20:36:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc65050145cc659b8d0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 20:39:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc8bf40145cc8cb0750000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 21:22:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc8bf40145cc8cfdcd0001', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 21:22:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845cc8bf40145cc8e41100002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 21:24:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d1456d0145d14949e90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 19:26:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d1698f0145d16a1d380000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:02:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d16aef0145d16b87370000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:04:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d16cb10145d16d0af40000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:05:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d16cb10145d1711cc60001', 'MSIE 9.0', 'accountid删除成功', '4', '192.168.1.104', '2014-05-06 20:10:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d16cb10145d1711eb90005', 'MSIE 9.0', '修改成功', '5', '192.168.1.104', '2014-05-06 20:10:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d1723e0145d172b10f0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:12:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d1723e0145d18f52a70017', 'MSIE 9.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-06 20:43:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d1723e0145d18f649e0018', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:43:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d1723e0145d199f2b7001a', 'MSIE 9.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-06 20:54:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d1723e0145d19a0626001b', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:55:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e845d6fbb90145d6fe287f0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-07 22:02:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d7e5301460d7f42d70000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 12:03:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d7e5301460d81c7d60002', 'MSIE 7.0', '权限: 关键字管理被添加成功', '3', '192.168.1.104', '2014-05-18 12:05:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d7e5301460d8341ce0004', 'MSIE 7.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-18 12:07:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d7e5301460d83568b0005', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 12:07:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d83c701460d85afbd0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 12:10:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d83c701460d89f1580001', 'MSIE 7.0', '修改关文本模板成功！', '5', '192.168.1.104', '2014-05-18 12:14:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d83c701460e06cd630002', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:31:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d83c701460e075e2f0003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:31:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460d83c701460e08fc770005', 'Chrome', '权限: 关注欢迎语被更新成功', '5', '192.168.1.104', '2014-05-18 14:33:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460e097d01460e0b37850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:35:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460e097d01460e0be28c0001', 'Chrome', '用户admin已退出', '2', '192.168.1.104', '2014-05-18 14:36:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460e097d01460e0c00cf0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:36:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460e097d01460e0f35f50003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:40:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460e102a01460e107e860000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:41:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8460f865501460f8c923d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 21:36:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e84617910601461791f8fe0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 10:59:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e846181e710146182023a70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 13:34:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e84618d367014618d3f08e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 16:51:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e84618da56014618dacb830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 16:58:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e84618e0e5014618e146e80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 17:05:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e84618e481014618e4ef4d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 17:09:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e84619037b01461903dc000000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 17:43:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e846190c670146190ce4670000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 17:53:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461911f00146191305010000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:00:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461919800146191a5a070000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:08:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461921b80146192242490000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:16:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461926590146192744fc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:22:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461931a3014619328a900000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:34:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e846193d530146193db2b90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:46:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e846194295014619430b350000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:52:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e846194a3a0146194a96b10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 19:00:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e846194ec30146194fb3000000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 19:06:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e84619622701461962f69c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 19:27:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e84619666e01461966e3eb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 19:31:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461c3ba101461c3dbb7f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-21 08:45:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461c3ba101461c3e522f0001', 'Chrome', '权限: 取消关注回复语被删除成功', '4', '192.168.1.104', '2014-05-21 08:46:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461c3ba101461c3e93b90002', 'Chrome', '权限: 素材管理被删除成功', '4', '192.168.1.104', '2014-05-21 08:46:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461c3ba101461c3f2b950003', 'Chrome', '权限: 关键字应答被删除成功', '4', '192.168.1.104', '2014-05-21 08:47:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461c3ba101461c3f386f0004', 'Chrome', '权限: 关键字应答被删除成功', '4', '192.168.1.104', '2014-05-21 08:47:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461c3ba101461c3f63830005', 'Chrome', '权限: 自动应答菜单被删除成功', '4', '192.168.1.104', '2014-05-21 08:47:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461c3ba101461c4221ca0006', 'Chrome', '用户admin已退出', '2', '192.168.1.104', '2014-05-21 08:50:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e8461c3ba101461c42339b0007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-21 08:50:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946dd8ecc0146dd8f7e9c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-27 21:41:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddc9450146ddcae3540000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-27 22:46:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146ddefa0bb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-27 23:26:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146ddf07b620002', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:27:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146ddf741ac0004', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:35:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146ddf99c4c0006', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:37:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146ddf9b7370007', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:37:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146de0300b30009', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:47:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146de05329b000c', 'Chrome', '首页广告添加成功', '3', '192.168.1.105', '2014-06-27 23:50:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146de099ce5000d', 'Chrome', '首页广告删除成功', '4', '192.168.1.105', '2014-06-27 23:55:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146de09fe7c000f', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:55:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ddea480146de0f3ab60012', 'Chrome', '首页广告添加成功', '3', '192.168.1.105', '2014-06-28 00:01:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946e2a2360146e2a404f30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-28 21:22:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946e2a2360146e2af4be30001', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-06-28 21:34:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946e2a2360146e2af66d80002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-28 21:34:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946e2a2360146e2ca1bc00003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-28 22:03:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946e2a2360146e2caeb950005', 'Chrome', '修改图文模板成功！', '5', '192.168.1.105', '2014-06-28 22:04:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ecbe530146ecc60c9d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-30 20:35:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946ecbe530146ecc6149a0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-30 20:35:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f72f8e0146f73230170000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 21:09:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f72f8e0146f7403e600004', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-02 21:25:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f72f8e0146f7406e8d0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 21:25:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f72f8e0146f74632e60012', 'Chrome', '创建成功', '3', '192.168.1.105', '2014-07-02 21:31:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f749a30146f752151d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 21:44:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f755ae0146f758cf830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 21:52:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f7bcb20146f7c69ad30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 23:52:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f7bcb20146f7c763c10002', 'Chrome', '权限: 微信商城被添加成功', '3', '192.168.1.105', '2014-07-02 23:52:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f7bcb20146f7c8c0380004', 'Chrome', '权限: 商品类别被添加成功', '3', '192.168.1.105', '2014-07-02 23:54:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f7bcb20146f7c9992d0007', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-02 23:55:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f7bcb20146f7c9c6580008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 23:55:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e946f7bcb20146f7ceb045000b', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-03 00:00:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e9470133a7014701375b910000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 19:51:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e9470133a70147013872f00002', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-04 19:53:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e947015a700147015b65830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 20:31:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e947015a700147016148ac0003', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-04 20:37:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e947015a7001470161a84c0006', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-04 20:38:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e947015a7001470164504b0009', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-04 20:40:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701b0bc014701b1982e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 22:05:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701b0bc014701b6eeaa0017', 'Chrome', '创建成功', '3', '192.168.1.105', '2014-07-04 22:11:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701b0bc014701ba3eb80018', 'Chrome', '修改成功', '5', '192.168.1.105', '2014-07-04 22:14:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701b0bc014701bc19440019', 'Chrome', '修改成功', '5', '192.168.1.105', '2014-07-04 22:16:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701df96014701e43b290000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 23:00:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701df96014701e5fec20002', 'Chrome', '权限: 商品信息管理被添加成功', '3', '192.168.1.105', '2014-07-04 23:02:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701df96014701e69fe70004', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-04 23:03:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701df96014701e6b86e0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 23:03:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701df96014701f48cee0009', 'Chrome', '商品信息添加成功', '3', '192.168.1.105', '2014-07-04 23:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701df96014701fcbfc7000b', 'Chrome', '商品信息添加成功', '3', '192.168.1.105', '2014-07-04 23:27:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701df96014702080ac0000c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 23:39:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94701df960147020c27b30011', 'Chrome', '商品信息添加成功', '3', '192.168.1.105', '2014-07-04 23:44:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e9470273d2014702840d3a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-05 01:55:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e9470273d201470285fa1a0017', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-05 01:57:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e9470273d20147028610cf0018', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-05 01:57:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e9470273d201470297db5e001b', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-05 02:16:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e9470273d201470297fccb001c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-05 02:17:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e9470273d2014702a94a9f001e', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.105', '2014-07-05 02:35:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94702c764014702cd82f20002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-05 03:15:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94702c764014702ce59e90003', 'Chrome', '商品信息更新成功', '5', '192.168.1.105', '2014-07-05 03:16:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402881e94702c764014702cf04d50005', 'Chrome', '商品信息更新成功', '5', '192.168.1.105', '2014-07-05 03:17:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a1d8301471a1e409b0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 15:54:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a20e301471a21ef3d0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 15:58:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a25aefb0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 16:03:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a25e0680001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 16:03:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a2abcc20002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 16:08:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a2d1e390003', 'Chrome', '商品分类删除成功', '4', '192.168.9.132', '2014-07-09 16:11:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a2fbd720004', 'Chrome', '商品分类更新成功', '5', '192.168.9.132', '2014-07-09 16:14:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a2fe1830005', 'Chrome', '商品分类更新成功', '5', '192.168.9.132', '2014-07-09 16:14:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a3013160006', 'Chrome', '商品分类更新成功', '5', '192.168.9.132', '2014-07-09 16:14:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a30db7e0008', 'Chrome', '商城会员添加成功', '3', '192.168.9.132', '2014-07-09 16:15:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('40288904471a240e01471a34036e0009', 'Chrome', '商品信息删除成功', '4', '192.168.9.132', '2014-07-09 16:18:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472e852301472e85f8ea0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 15:00:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472e852301472e8a050c0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 15:05:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472e852301472e90a3080006', 'Firefox', '活动删除成功', '4', '192.168.9.109', '2014-07-13 15:12:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472e852301472eae6cef0007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 15:44:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472e852301472eb0d6bd000f', 'Chrome', '微信单图消息添加成功', '3', '192.168.9.109', '2014-07-13 15:47:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472e852301472eb1b2c30010', 'Chrome', '微信单图消息更新成功', '5', '192.168.9.109', '2014-07-13 15:48:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472ec2a801472ec328f50000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 16:07:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472ec2a801472ec39f680003', 'Firefox', '微信单图消息添加成功', '3', '192.168.9.109', '2014-07-13 16:07:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ed472ee23401472ee48a410000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 16:43:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc66c30146dc778e9a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 16:36:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc66c30146dc7c1c450003', 'Chrome', '信息添加成功', '3', '192.168.9.115', '2014-06-27 16:40:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc66c30146dc7cd4510007', 'Chrome', '微信单图消息添加成功', '3', '192.168.9.115', '2014-06-27 16:41:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc66c30146dc7cfb05000a', 'Chrome', '微信单图消息添加成功', '3', '192.168.9.115', '2014-06-27 16:41:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dc8ac3190000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 16:56:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dc8b16a60001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 16:57:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dc8d69990002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 16:59:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dc8d92dd0003', 'Chrome', '用户admin已退出', '2', '192.168.9.115', '2014-06-27 17:00:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dc8ea8cc0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:01:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dc8fec310005', 'Chrome', '用户admin已退出', '2', '192.168.9.115', '2014-06-27 17:02:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dc90209a0006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:02:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dc9520650008', 'Chrome', '用户admin已退出', '2', '192.168.9.115', '2014-06-27 17:08:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dca372870009', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:23:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dc8a220146dca3c44f000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:24:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dcad7f0146dcade99f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:35:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f346dcad7f0146dcb414f50001', 'Chrome', '用户admin已退出', '2', '192.168.9.115', '2014-06-27 17:42:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474704840147470593110000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:10:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747048401474706d41f0002', 'Chrome', '权限: 微站点信息被添加成功', '3', '192.168.9.118', '2014-07-18 09:12:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474704840147470790740004', 'Chrome', '权限: 微站点模板被添加成功', '3', '192.168.9.118', '2014-07-18 09:13:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747048401474708189c0007', 'Chrome', '用户admin已退出', '2', '192.168.9.118', '2014-07-18 09:13:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747048401474708b0170008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:14:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747048401474709458e000b', 'Chrome', '微站点信息添加成功', '3', '192.168.9.118', '2014-07-18 09:14:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474704840147470a1bf2000d', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:15:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474704840147470d620a0011', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:19:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474704840147470e56d50013', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:20:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474704840147471009460016', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:22:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f647470484014747106a810018', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:22:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f647470484014747106ad30019', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:22:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f647470484014747129bc6001c', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:25:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747048401474713109a001e', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:25:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f647470484014747137eeb0021', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:26:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747182f01474718a70d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:31:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747182f0147471918ba0003', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:32:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747182f01474719c3e00006', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:32:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747182f01474720a1500008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:40:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747182f01474720c6010009', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:40:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747182f01474720c65a000a', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:40:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747182f01474720c6be000b', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:40:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f64747182f014747211adc000e', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:40:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474722ad0147472395130000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:43:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474722ad01474723f6e50003', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:44:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474722ad0147472469ff0005', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:44:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474722ad014747246a530006', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:44:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f6474722ad01474724bd6f0009', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:44:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de0147665143220000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 11:01:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de014766568e6c0001', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 11:07:34', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('402889f8476650de01476665e0360003', 'Firefox', '类型分组: 12被添加成功', '3', '192.168.9.120', '2014-07-24 11:24:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de014766662a910004', 'Firefox', '类型分组: CMS菜单类型被更新成功', '5', '192.168.9.120', '2014-07-24 11:24:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de01476666acfe0006', 'Firefox', '类型: 单文被添加成功', '3', '192.168.9.120', '2014-07-24 11:25:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de01476666d5f20008', 'Firefox', '类型: 02被添加成功', '3', '192.168.9.120', '2014-07-24 11:25:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de014766670a2f0009', 'Firefox', '类型: 多文章被更新成功', '5', '192.168.9.120', '2014-07-24 11:25:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de014766672fdb000a', 'Firefox', '类型: 单文章被更新成功', '5', '192.168.9.120', '2014-07-24 11:25:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de01476668df3f000b', 'Firefox', '类型: 多文章被更新成功', '5', '192.168.9.120', '2014-07-24 11:27:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8476650de01476668faaf000c', 'Firefox', '类型: 单文章被更新成功', '5', '192.168.9.120', '2014-07-24 11:27:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae40147666c2fd70000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 11:31:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae40147666c8b3c0001', 'Firefox', '栏目管理更新成功', '5', '192.168.9.120', '2014-07-24 11:31:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae40147666e1c530004', 'Firefox', '栏目管理更新成功', '5', '192.168.9.120', '2014-07-24 11:33:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae40147666f81db0008', 'Firefox', '用户admin已退出', '2', '192.168.9.120', '2014-07-24 11:34:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae40147666f9c060009', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 11:34:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae401476670bbc70014', 'Firefox', '添加成功', '3', '192.168.9.120', '2014-07-24 11:36:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae4014766daefc80015', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 13:32:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae40147670ad1f30016', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 14:24:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae401476729c58b001a', 'Firefox', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-24 14:58:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae40147672f3e19001c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:04:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae401476730779a001d', 'Firefox', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-24 15:05:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae401476730f0870020', 'Firefox', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-24 15:06:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f847666ae40147673af4bd0022', 'Firefox', '微站点信息更新成功', '5', '192.168.9.120', '2014-07-24 15:17:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f84767413b0147674303790000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:25:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f84767413b01476743586f0003', 'Firefox', '栏目管理添加成功', '3', '192.168.9.120', '2014-07-24 15:26:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f84767413b0147674375a50004', 'Firefox', '栏目管理更新成功', '5', '192.168.9.120', '2014-07-24 15:26:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f84767413b014767472de60005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:30:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f84767413b0147674b45130008', 'Chrome', '用户admin已退出', '2', '192.168.9.120', '2014-07-24 15:34:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f84767413b0147674b61a20009', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:34:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f84767413b0147674ba7f2000a', 'Chrome', '用户admin已退出', '2', '192.168.9.120', '2014-07-24 15:35:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f84767413b0147674c0407000b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:35:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477ab1ad01477ab2859d0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:00:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477ac5b901477ac638de0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:21:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477ac5b901477ac6ea2f0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:22:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477ac5b901477acfe6460002', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:32:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477ad29d01477ad7c1830000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:41:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477ad29d01477ad88f8d0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:41:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477ad29d01477ad8e3c70003', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 10:42:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477adacf01477addfd2f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:47:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477adacf01477ade1a860001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 10:48:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477aea1d01477aea8c990000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:01:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477afa0601477afa80070000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:19:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b065001477b06cd560000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:32:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b08ad01477b0908670000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:34:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b0c1f01477b0ca6ae0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:38:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b0c1f01477b0ded290001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:40:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b0c1f01477b0e084a0002', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 11:40:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b0c1f01477b0e43cb0005', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 11:40:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b0fc001477b101c450000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:42:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b5b5b01477b5c03060000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:05:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b5b5b01477b5c93980001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:06:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b5b5b01477b5d01af0005', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:06:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b5b5b01477b5e68790007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:08:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b5b5b01477b5ec8360008', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:08:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b5b5b01477b5efcf3000b', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:08:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b66e201477b67504a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:17:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b66e201477b678dea0001', 'Chrome', '微站点模板更新成功', '5', '192.168.9.120', '2014-07-28 13:18:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b681801477b68a1ce0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:19:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b681801477b68c3960001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:19:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b681801477b692cf90004', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:19:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b6c5401477b6cf5b70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:24:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b6c5401477b6d1c880001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:24:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b6c5401477b6d4e880004', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:24:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b6e4e01477b6ebcc00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:26:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b6e4e01477b6f0a720003', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:26:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b70aa01477b7196420000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b70aa01477b71b6460001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:29:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b70aa01477b71bede0002', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:29:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b70aa01477b71edd70005', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:29:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b70aa01477b7264fb0007', 'Chrome', '微站点模板更新成功', '5', '192.168.9.120', '2014-07-28 13:30:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b70aa01477b729a7f0008', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:30:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477b70aa01477b75c50c000b', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:33:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c28cc230000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 16:49:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c28ea980001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 16:49:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c2989d70004', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 16:50:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c2a4e0b0006', 'Chrome', '微站点模板更新成功', '5', '192.168.9.120', '2014-07-28 16:50:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c2a81970009', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 16:51:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c2b9bc0000d', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 16:52:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c2e7144000f', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 16:55:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c2e76b70010', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 16:55:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c2e7dbf0011', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 16:55:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889f8477c283701477c2eb0f20014', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 16:55:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889fc4734103e01473411c0c40000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.124', '2014-07-14 16:51:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889fc4734103e0147341478940003', 'Firefox', '删除信息数据成功', '4', '192.168.9.124', '2014-07-14 16:54:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889fc4734103e0147341479dc0004', 'Firefox', '删除信息数据成功', '4', '192.168.9.124', '2014-07-14 16:54:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728a3d1c90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 11:35:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728a46c520001', 'Chrome', '权限: 文本消息被更新成功', '5', '192.168.9.127', '2014-07-12 11:36:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728a48b0c0002', 'Chrome', '权限: 图文消息被更新成功', '5', '192.168.9.127', '2014-07-12 11:36:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728a4a7b50003', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:36:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728ab3dbe0006', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:43:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728ab47f30007', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:43:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728ab72600008', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:43:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728ab9d040009', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:44:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728abc608000a', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:44:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728abd265000b', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:44:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728af52b3000c', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728af6535000d', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728af7a82000e', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728af8734000f', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728af8eda0010', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728afa4dd0011', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728afe92f0012', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728aff7370013', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728afff480014', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b00a100015', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b01a710016', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b0415b0017', 'Chrome', '修改关键字回复成功！', '5', '192.168.9.127', '2014-07-12 11:49:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b05a0d0018', 'Chrome', '修改关键字回复成功！', '5', '192.168.9.127', '2014-07-12 11:49:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b0663e0019', 'Chrome', '修改关键字回复成功！', '5', '192.168.9.127', '2014-07-12 11:49:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b0708e001a', 'Chrome', '修改关键字回复成功！', '5', '192.168.9.127', '2014-07-12 11:49:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b20122001d', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:51:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b2088c001e', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:51:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b20f7b001f', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:51:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b436990022', 'Chrome', '权限: 微信商城被更新成功', '5', '192.168.9.127', '2014-07-12 11:53:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b455730023', 'Chrome', '权限: 微信CMS被更新成功', '5', '192.168.9.127', '2014-07-12 11:53:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b47d3c0024', 'Chrome', '用户admin已退出', '2', '192.168.9.127', '2014-07-12 11:53:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b497bc0025', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 11:53:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b4d76f0026', 'Chrome', '权限: 基础设置被更新成功', '5', '192.168.9.127', '2014-07-12 11:54:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b4eb280027', 'Chrome', '权限: 菜单管理被更新成功', '5', '192.168.9.127', '2014-07-12 11:54:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b58db10028', 'Chrome', '权限: Online 开发被更新成功', '5', '192.168.9.127', '2014-07-12 11:54:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b5cf500029', 'Chrome', '权限: 微信网站被更新成功', '5', '192.168.9.127', '2014-07-12 11:55:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b5df56002a', 'Chrome', '用户admin已退出', '2', '192.168.9.127', '2014-07-12 11:55:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b68b9d002b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 11:55:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b8aeb6002c', 'Chrome', '修改关文本模板成功！', '5', '192.168.9.127', '2014-07-12 11:58:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728b8be01002d', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:58:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728baa5300030', 'Chrome', '更新我的大转盘的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 12:00:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728bace3a0031', 'Chrome', '更新微CMS的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 12:00:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728bafe2c0032', 'Chrome', '更新微活动的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 12:00:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728bb20160033', 'Chrome', '更新微商城的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 12:00:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728bbb73f0035', 'Chrome', '添加查天气的信息成功！', '3', '192.168.9.127', '2014-07-12 12:01:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728bc62680037', 'Chrome', '添加联系我们的信息成功！', '3', '192.168.9.127', '2014-07-12 12:02:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728bcb34c0039', 'Chrome', '添加联系我们的信息成功！', '3', '192.168.9.127', '2014-07-12 12:02:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728e02c65003a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:41:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728a293014728e55ce2003b', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:47:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728e9ee014728ea82d90000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:52:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728ebee014728ec763c0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:54:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728ee6b014728f0025e0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:58:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f283db0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 13:01:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f2d3fd0002', 'Firefox', '添加开源项目的信息成功！', '3', '192.168.9.127', '2014-07-12 13:01:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f3015b0003', 'Firefox', '更新开源项目的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:02:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f314560004', 'Firefox', '更新微活动的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:02:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f324df0005', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:02:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f4ba310007', 'Firefox', '添加捷微jeeWX的信息成功！', '3', '192.168.9.127', '2014-07-12 13:03:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f52c640009', 'Firefox', '添加企业快速开发平台的信息成功！', '3', '192.168.9.127', '2014-07-12 13:04:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f5a95a000a', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:04:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f60f56000c', 'Firefox', '添加社区培训的信息成功！', '3', '192.168.9.127', '2014-07-12 13:05:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f61bde000d', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 13:05:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014728f8e092000f', 'Firefox', '扩展接口管理添加成功', '3', '192.168.9.127', '2014-07-12 13:08:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014729029dd30011', 'Firefox', '添加刮刮乐的信息成功！', '3', '192.168.9.127', '2014-07-12 13:19:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f23701472903092a0012', 'Firefox', '删除查天气菜单信息数据', '4', '192.168.9.127', '2014-07-12 13:19:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f2370147290349b50013', 'Firefox', '更新大转盘的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:19:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f237014729039ccb0015', 'Firefox', '添加营销工具的信息成功！', '3', '192.168.9.127', '2014-07-12 13:20:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f23701472906878f0016', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 13:23:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f23701472908756c0017', 'Firefox', '微信公众帐号信息更新成功', '5', '192.168.9.127', '2014-07-12 13:25:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f23701472909966e0019', 'Firefox', '类型分组: 微信公众账号类型被添加成功', '3', '192.168.9.127', '2014-07-12 13:26:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f23701472909d8a8001b', 'Firefox', '类型分组: 服务号被添加成功', '3', '192.168.9.127', '2014-07-12 13:26:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f23701472909ee60001c', 'Firefox', '数据字典分组: 服务号被删除 成功', '4', '192.168.9.127', '2014-07-12 13:27:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f2370147290a0fb6001e', 'Firefox', '类型: 1被添加成功', '3', '192.168.9.127', '2014-07-12 13:27:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f2370147290a2d9f0020', 'Firefox', '类型: 2被添加成功', '3', '192.168.9.127', '2014-07-12 13:27:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f2370147290ac9190021', 'Firefox', '类型: 服务号被更新成功', '5', '192.168.9.127', '2014-07-12 13:27:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f2370147290ae8500022', 'Firefox', '类型: 订阅号被更新成功', '5', '192.168.9.127', '2014-07-12 13:28:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4728f2370147290b08140023', 'Firefox', '微信公众帐号信息更新成功', '5', '192.168.9.127', '2014-07-12 13:28:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47290bbf0147290c5a780000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 13:29:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472928ab01472928fce50000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:00:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47292ef10147292f5bcc0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:07:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729328401472933d1900000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:12:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729376601472937d0e60000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:17:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472939aa0147293a00060000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:19:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47293de30147293e633a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:24:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47294b5c0147294bc2df0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:38:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47294cb20147294d0fb90000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:40:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729505d01472950c6810000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:44:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472953b401472954cc520000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:48:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47295aa80147295af83c0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:55:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47295db40147295e20af0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:59:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47295db40147295e7fc40002', 'Firefox', '活动添加成功', '3', '192.168.9.127', '2014-07-12 14:59:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729668a01472966d77a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:08:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47296a4f0147296ac2a40000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:12:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47297515014729759d050000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:24:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472975150147297654c70003', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:25:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472978290147297893f20000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:27:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729782901472979ed520002', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:29:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472978290147297d66970005', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:33:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472978290147297d7fa50006', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:33:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472978290147297d93990007', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:33:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472978290147297da7d80008', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:33:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729834501472983d7e00000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:40:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729929c014729931f250000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:56:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729929c0147299360340001', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 15:57:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a0147299b51420000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 16:05:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a0147299bb2570001', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:06:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a0147299e45970002', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:09:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a141620003', 'Firefox', '更新开源项目的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a169390004', 'Firefox', '更新捷微jeeWX的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a185df0005', 'Firefox', '更新企业快速开发平台的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a1a2f80006', 'Firefox', '更新微活动的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a1c0bb0007', 'Firefox', '更新营销工具的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a1daf50008', 'Firefox', '更新微商城的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a201060009', 'Firefox', '更新微网站的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a21894000a', 'Firefox', '更新刮刮乐的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a23350000b', 'Firefox', '更新关于我们的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a2518e000c', 'Firefox', '更新社区培训的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a27006000d', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a279b8000e', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:13:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a2c176000f', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:13:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a33fa90010', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:14:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff47299a8a014729a3556b0011', 'Firefox', '同步菜单信息数据成功！', '4', '192.168.9.127', '2014-07-12 16:14:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729fcdc014729fe78740000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 17:54:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729fcdc01472a06d89a0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 18:03:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff4729fcdc01472a07536e0002', 'Firefox', '微信公众帐号信息更新成功', '5', '192.168.9.127', '2014-07-12 18:03:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472a277501472a2800180000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 18:39:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472a2e7601472a2ede9c0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 18:47:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac4989f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 21:30:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac581010001', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac592270002', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac5a8340003', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac5bec20004', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac5cfc80005', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac5f9060006', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac626fc0007', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac654d10008', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac675e40009', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac43501472ac68a3b000a', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ac90001472aca175a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 21:36:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ad38401472ad3fc5f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 21:47:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472ad38401472ae7258f0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 22:08:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('402889ff472b0f1c01472b0fdd640000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 22:52:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc064763323001476332f4130000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 20:29:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a790147633afa130000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 20:38:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a7901476344ed290006', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:49:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a7901476344f8ae0007', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:49:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a790147634529d00009', 'Firefox', '修改关键字回复成功！', '5', '192.168.60.134', '2014-07-23 20:49:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a79014763453777000a', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:49:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a79014763455d03000c', 'Firefox', '扩展接口管理添加成功', '3', '192.168.60.134', '2014-07-23 20:49:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a79014763457026000d', 'Firefox', '扩展接口管理更新成功', '5', '192.168.60.134', '2014-07-23 20:50:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a79014763458628000e', 'Firefox', '扩展接口管理删除成功', '4', '192.168.60.134', '2014-07-23 20:50:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a7901476345bd530010', 'Firefox', '修改关文本模板成功！', '5', '192.168.60.134', '2014-07-23 20:50:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a7901476345c7630011', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:50:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a7901476345fd250013', 'Firefox', '添加1221的信息成功！', '3', '192.168.60.134', '2014-07-23 20:50:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a7901476346349a0014', 'Firefox', '更新1221的菜单信息信息成功！', '5', '192.168.60.134', '2014-07-23 20:50:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a7901476346ea220015', 'Firefox', '删除1221菜单信息数据', '4', '192.168.60.134', '2014-07-23 20:51:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a790147634749f40017', 'Firefox', '修改关文本模板成功！', '5', '192.168.60.134', '2014-07-23 20:52:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647633a790147634753770018', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:52:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476349dc0147634a7b4d0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 20:55:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647634d250147634de3cd0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 20:59:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476353c00147635427a40000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:06:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc064763571d0147635779670000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:09:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc064763571d01476357d5430002', 'Firefox', '修改图文模板成功！', '5', '192.168.60.134', '2014-07-23 21:10:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc064763571d01476358bc6c0005', 'Firefox', '微信单图消息添加成功', '3', '192.168.60.134', '2014-07-23 21:11:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647635da50147635e2e9f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:17:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647635da50147636036890001', 'Firefox', '购物车 删除成功', '4', '192.168.60.134', '2014-07-23 21:19:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647635da5014763603f7a0002', 'Firefox', '购物车 删除成功', '4', '192.168.60.134', '2014-07-23 21:19:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647635da50147636049f70003', 'Firefox', '购物车 删除成功', '4', '192.168.60.134', '2014-07-23 21:19:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636343fc0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:22:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636429280001', 'Firefox', '权限: 购物车管理被更新成功', '5', '192.168.60.134', '2014-07-23 21:23:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636443760002', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:23:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636462930003', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:23:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636578720004', 'Firefox', '权限: 微网站配置被更新成功', '5', '192.168.60.134', '2014-07-23 21:25:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476365b5240005', 'Firefox', '权限: 微网站模板被更新成功', '5', '192.168.60.134', '2014-07-23 21:25:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476365da9e0006', 'Firefox', '权限: 微网站信息被更新成功', '5', '192.168.60.134', '2014-07-23 21:25:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476365faae0007', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:25:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476366257b0008', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:25:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476366db320009', 'Firefox', '权限: 微网站信息被更新成功', '5', '192.168.60.134', '2014-07-23 21:26:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd014763674561000a', 'Firefox', '权限: 文章管理被更新成功', '5', '192.168.60.134', '2014-07-23 21:26:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476367a228000b', 'Firefox', '权限: 微网站模板被更新成功', '5', '192.168.60.134', '2014-07-23 21:27:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd014763680c3a000c', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:27:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd014763683635000d', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:27:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd014763697ee5000e', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:29:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476369a4a6000f', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:29:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636b0e450010', 'Firefox', '微站点模板删除成功', '4', '192.168.60.134', '2014-07-23 21:31:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636b30310011', 'Firefox', '微站点信息更新成功', '5', '192.168.60.134', '2014-07-23 21:31:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636ceb710012', 'Firefox', '权限: 商品分类被更新成功', '5', '192.168.60.134', '2014-07-23 21:33:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636d2e180013', 'Firefox', '权限: 商品信息被更新成功', '5', '192.168.60.134', '2014-07-23 21:33:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147636f66420014', 'Firefox', '权限: 购物车管理被更新成功', '5', '192.168.60.134', '2014-07-23 21:35:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476372abdc0015', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:39:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd01476372d50c0016', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:39:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147637352850017', 'Firefox', '权限: 网站信息被更新成功', '5', '192.168.60.134', '2014-07-23 21:40:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc06476362cd0147637379410018', 'Firefox', '权限: 网站模板被更新成功', '5', '192.168.60.134', '2014-07-23 21:40:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028bc0647637a8d014763808f2a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:54:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52187300c5', 'Chrome', '用户: admin登录成功', '1', '169.254.200.136', '2013-04-24 16:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52187c00c6', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-04-24 17:12:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52187d00c7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:37:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52187f00c8', 'Chrome', '用户admin已退出', '2', '169.254.218.201', '2013-03-10 15:38:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188000c9', 'MSIE 9.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:38:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188200ca', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188400cb', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188600cc', 'Chrome', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188700cd', 'MSIE 9.0', '权限: 单表模型被更新成功', '5', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188800ce', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188900cf', 'MSIE 9.0', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188b00d0', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188c00d1', 'Firefox', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188e00d2', 'Chrome', '添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52188f00d3', 'Chrome', '更新成功', '5', '169.254.218.201', '2013-03-10 15:40:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52189100d4', 'Chrome', 'JeecgDemo例子: 12被添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52189400d5', 'Chrome', '部门: 信息部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52189600d6', 'Chrome', '部门: 设计部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52189800d7', 'Chrome', '类型: 信息部流程被更新成功', '5', '169.254.218.201', '2013-03-10 15:46:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52189a00d8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:48:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52189c00d9', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:23:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52189d00da', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:26:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52189f00db', 'Chrome', '权限: 一对多实例被添加成功', '3', '169.254.218.201', '2013-03-21 23:28:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218a100dc', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 08:25:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218a300dd', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:05:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218a500de', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:09:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218a600df', 'MSIE 8.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:28:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218a700e0', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:32:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218a900e1', 'Chrome', '物品: 笔记本添加成功', '3', '169.254.218.201', '2013-03-22 10:35:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218aa00e2', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:41:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218ab00e3', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 16:11:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218ac00e4', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 21:49:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218ae00e5', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:17:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218af00e6', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218b100e7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:16:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218b200e8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218b300e9', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218b400ea', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 14:23:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218b600eb', 'Chrome', '流程参数: 主任审批被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218b800ec', 'Firefox', '业务参数: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218bb00ed', 'Chrome', '权限: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:12:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218bc00ee', 'Firefox', '权限: 入职办理被添加成功', '3', '169.254.218.201', '2013-03-23 15:13:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218be00ef', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-05-06 15:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218c000f0', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 15:16:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218c200f1', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:02:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218c400f2', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:07:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218c600f3', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:09:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218c800f4', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:11:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218ca00f5', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:13:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218cc00f6', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:16:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218cd00f7', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:19:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218ce00f8', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218d100f9', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:42:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218d200fa', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:44:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218d300fb', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:49:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218d500fc', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:50:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218d600fd', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:53:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218d700fe', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 16:56:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218d900ff', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:59:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218da0100', 'MSIE 8.0', '创建成功', '3', '192.168.197.1', '2013-07-07 17:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218dc0101', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:26:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218de0102', 'MSIE 8.0', '删除成功', '4', '192.168.197.1', '2013-07-07 17:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218df0103', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:35:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218e00104', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:46:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218e20105', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:55:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218e30106', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:08:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218e40107', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:13:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218e60108', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:15:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218e70109', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:28:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218e9010a', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:29:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218ed010b', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:30:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218f0010c', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218f3010d', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218f5010e', 'MSIE 9.0', '物品: 555添加成功', '3', '192.168.1.103', '2013-03-20 23:03:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218f7010f', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-20 23:19:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218f80110', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:09:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218fa0111', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218fb0112', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:44:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218fc0113', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:54:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218fe0114', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:01:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5218ff0115', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:13:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219010116', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:15:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219040117', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219060118', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219080119', 'MSIE 9.0', '物品: 33添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d521909011a', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:25:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52190b011b', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52190c011c', 'MSIE 9.0', '权限: 采购审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:29:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52190d011d', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:29:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52190f011e', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:30:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d521910011f', 'MSIE 9.0', '用户: admin更新成功', '5', '192.168.1.103', '2013-03-21 21:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219130120', 'MSIE 9.0', '流程参数: 采购审批员审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:36:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219150121', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:36:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219170122', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:37:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219190123', 'MSIE 9.0', '流程类别: 采购审批员审批被删除 成功', '4', '192.168.1.103', '2013-03-21 21:38:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52191c0124', 'MSIE 9.0', '物品: 44添加成功', '3', '192.168.1.103', '2013-03-21 21:43:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52191e0125', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 10:10:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219200126', 'MSIE 9.0', '权限: 上传下载被添加成功', '3', '192.168.1.105', '2013-02-07 11:07:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219210127', 'MSIE 9.0', '权限: 插件演示被删除成功', '4', '192.168.1.105', '2013-02-07 11:07:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5219230128', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 11:07:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d522e440180', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-07 23:28:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d52c3440182', 'Chrome', '权限: 基础设置被添加成功', '3', '192.168.88.1', '2014-01-07 23:29:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d539c950184', 'Chrome', '权限: 菜单管理被添加成功', '3', '192.168.88.1', '2014-01-07 23:30:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d53cfd20186', 'Chrome', '权限: 关键字应答被添加成功', '3', '192.168.88.1', '2014-01-07 23:30:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d53ff2f0188', 'Chrome', '权限: 发送消息被添加成功', '3', '192.168.88.1', '2014-01-07 23:30:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d544978018a', 'Chrome', '权限: 微活动1被添加成功', '3', '192.168.88.1', '2014-01-07 23:31:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5485f3018c', 'Chrome', '权限: 会员管理被添加成功', '3', '192.168.88.1', '2014-01-07 23:31:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d54b207018e', 'Chrome', '权限: 统计分析被添加成功', '3', '192.168.88.1', '2014-01-07 23:31:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d54e1080190', 'Chrome', '权限: 账号管理被添加成功', '3', '192.168.88.1', '2014-01-07 23:31:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5619b80192', 'Chrome', '权限: 关注欢迎语被添加成功', '3', '192.168.88.1', '2014-01-07 23:33:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d56559f0194', 'Chrome', '权限: 未识别回复语被添加成功', '3', '192.168.88.1', '2014-01-07 23:33:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d569e610195', 'Chrome', '权限: 关注欢迎语被更新成功', '5', '192.168.88.1', '2014-01-07 23:33:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d56c7540196', 'Chrome', '权限: 未识别回复语被更新成功', '5', '192.168.88.1', '2014-01-07 23:34:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d571b010198', 'Chrome', '权限: 内容库管理被添加成功', '3', '192.168.88.1', '2014-01-07 23:34:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d574c5f019a', 'Chrome', '权限: 取消关注回复语被添加成功', '3', '192.168.88.1', '2014-01-07 23:34:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d585d05019c', 'Chrome', '权限: 自动应答菜单被添加成功', '3', '192.168.88.1', '2014-01-07 23:35:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d588500019e', 'Chrome', '权限: 自定义菜单被添加成功', '3', '192.168.88.1', '2014-01-07 23:35:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d58cfd801a0', 'Chrome', '权限: 关键字应答被添加成功', '3', '192.168.88.1', '2014-01-07 23:36:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d58ff9e01a2', 'Chrome', '权限: 群发消息被添加成功', '3', '192.168.88.1', '2014-01-07 23:36:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d592c4301a4', 'Chrome', '权限: 单发消息被添加成功', '3', '192.168.88.1', '2014-01-07 23:36:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d59987501a6', 'Chrome', '权限: 微大转盘被添加成功', '3', '192.168.88.1', '2014-01-07 23:37:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d59d73801a8', 'Chrome', '权限: 微信刮刮乐被添加成功', '3', '192.168.88.1', '2014-01-07 23:37:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5a192c01aa', 'Chrome', '权限: 数据统计被添加成功', '3', '192.168.88.1', '2014-01-07 23:37:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5a5c8501ac', 'Chrome', '权限: 用户概况被添加成功', '3', '192.168.88.1', '2014-01-07 23:37:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5a872001ae', 'Chrome', '权限: 用户分组被添加成功', '3', '192.168.88.1', '2014-01-07 23:38:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5ac02801b0', 'Chrome', '权限: 会话记录被添加成功', '3', '192.168.88.1', '2014-01-07 23:38:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5af99501b2', 'Chrome', '权限: 接口配置被添加成功', '3', '192.168.88.1', '2014-01-07 23:38:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5b3bb401b4', 'Chrome', '权限: 企业资料被添加成功', '3', '192.168.88.1', '2014-01-07 23:38:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5ce5f601ce', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-07 23:40:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5d276a01cf', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-07 23:40:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5dfdb701d0', 'Chrome', '权限: 微活动被更新成功', '5', '192.168.88.1', '2014-01-07 23:41:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5e419901d1', 'Chrome', '权限: 系统管理被更新成功', '5', '192.168.88.1', '2014-01-07 23:42:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5e5c3c01d2', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-07 23:42:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d5e6dfa01d3', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-07 23:42:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d61ad3701d4', 'Chrome', '权限: 自动应答菜单被更新成功', '5', '192.168.88.1', '2014-01-07 23:45:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d514601436d61c65901d5', 'Chrome', '权限: 自定义菜单被更新成功', '5', '192.168.88.1', '2014-01-07 23:46:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7bbd01436d7c3ba70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:14:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7bbd01436d7cad630001', 'Chrome', '权限: 微信菜单被删除成功', '4', '192.168.88.1', '2014-01-08 00:15:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7bbd01436d7d344a0003', 'Chrome', '权限: 素材管理被添加成功', '3', '192.168.88.1', '2014-01-08 00:15:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7bbd01436d7d81fe0004', 'Chrome', '权限: 素材管理被更新成功', '5', '192.168.88.1', '2014-01-08 00:16:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7bbd01436d7dc4910006', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-08 00:16:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7bbd01436d7dd6840007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:16:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7f5a01436d7f9fa60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:18:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7f5a01436d8003090001', 'Chrome', '权限: 内容库管理被删除成功', '4', '192.168.88.1', '2014-01-08 00:19:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7f5a01436d80ef0c0002', 'Chrome', '权限: 素材管理被更新成功', '5', '192.168.88.1', '2014-01-08 00:20:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7f5a01436d81011e0003', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-08 00:20:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d7f5a01436d8112660004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:20:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d823c01436d827dc60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:21:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881436d823c01436d8481b30002', 'Chrome', '微信素材添加成功', '3', '192.168.88.1', '2014-01-08 00:23:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881439b285601439b296cb30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-16 21:06:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881439b285601439b2d8c830001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-16 21:11:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881439b389601439b39332c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-16 21:24:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881439b3a1601439b3a5deb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-16 21:25:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881439b3a1601439b3b9fe50001', 'Chrome', '微信单图消息删除成功', '4', '192.168.88.1', '2014-01-16 21:26:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88143a83cad0143a83d55b00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-19 10:03:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88143a83cad0143a83d7ba10001', 'Chrome', '微信单图消息删除成功', '4', '192.168.88.1', '2014-01-19 10:03:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88143a83cad0143a84123050005', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-19 10:07:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88143a83cad0143a84135f40006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-19 10:08:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88143a83cad0143a842884b0009', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-19 10:09:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88143a83cad0143a842995f000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-19 10:09:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88143a904ff0143a905b6090000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-19 13:42:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88143bc9a910143bc9af4130000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-23 08:58:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881448cf61c01448cf6e6ed0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-03-04 19:59:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88146dce1940146dce1e75c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-06-27 18:32:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88146dce1940146dcebf6710001', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-06-27 18:43:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88146dd21330146dd21856a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-06-27 19:41:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d8814710f69f014710f77c450000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-07 21:16:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472b634601472b63b9c50000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 00:24:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472b679501472b67fd580000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 00:29:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472b8aaf01472b8bd7280000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 01:08:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f0d8101472f13ea1b0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 17:35:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f0d8101472f14a4650001', 'Firefox', '删除信息数据成功！', '4', '192.168.88.1', '2014-07-13 17:36:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f0d8101472f154b520004', 'Firefox', '微信单图消息添加成功', '3', '192.168.88.1', '2014-07-13 17:37:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f0d8101472f200b4f0007', 'Firefox', '微信单图消息添加成功', '3', '192.168.88.1', '2014-07-13 17:48:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f0d8101472f219e1b000a', 'Firefox', '微信单图消息添加成功', '3', '192.168.88.1', '2014-07-13 17:50:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f2eb101472f2f492b0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 18:05:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f356e01472f35e58f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 18:12:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f356e01472f36d1aa0004', 'Firefox', '微信单图消息添加成功', '3', '192.168.88.1', '2014-07-13 18:13:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f356e01472f3a1a3b0005', 'Firefox', '微信单图消息删除成功', '4', '192.168.88.1', '2014-07-13 18:17:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f356e01472f4289960008', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-13 18:26:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f356e01472f431322000a', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-13 18:27:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f451c01472f459c790000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 18:29:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f451c01472f495eee0002', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-13 18:34:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f674b01472f67ba5e0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 19:07:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f6b2001472f6b818f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 19:11:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f712001472f71b7840000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 19:18:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f712001472f71f60e0001', 'Firefox', '微信单图消息删除成功', '4', '192.168.88.1', '2014-07-13 19:18:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f712001472f7201550002', 'Firefox', '微信单图消息删除成功', '4', '192.168.88.1', '2014-07-13 19:18:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f84d101472fb41e900000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 20:30:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f84d101472fb4aea30001', 'Firefox', '商城会员删除成功', '4', '192.168.88.1', '2014-07-13 20:31:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f84d101472fb4bf5d0002', 'Firefox', '商城会员删除成功', '4', '192.168.88.1', '2014-07-13 20:31:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f84d101472fb549b70003', 'Firefox', '更新捷微jeeWX的菜单信息信息成功！', '5', '192.168.88.1', '2014-07-13 20:31:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472f84d101472fb57ad70004', 'Firefox', '更新企业快速开发平台的菜单信息信息成功！', '5', '192.168.88.1', '2014-07-13 20:32:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472fbd4401472fbdb5e60000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 20:41:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472fbd4401472fbde7670002', 'Firefox', '添加joa123的信息成功！', '3', '192.168.88.1', '2014-07-13 20:41:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472fbd4401472fbdfb560004', 'Firefox', '添加333的信息成功！', '3', '192.168.88.1', '2014-07-13 20:41:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472fbd4401472fbe186a0005', 'Firefox', '更新333的菜单信息信息成功！', '5', '192.168.88.1', '2014-07-13 20:41:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472fbd4401472fbe28430006', 'Firefox', '删除joa123菜单信息数据', '4', '192.168.88.1', '2014-07-13 20:41:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881472fbd4401472fbe50fb0007', 'Firefox', '同步菜单信息数据成功！', '4', '192.168.88.1', '2014-07-13 20:41:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88147301fa50147302271f20000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 22:31:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881473027c7014730283f0c0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 22:37:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d8814734ee0d0147351707bd0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-14 21:36:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d8814734ee0d014735670b820006', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-14 23:04:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d8814734ee0d0147356b6b600011', 'Firefox', '修改关键字回复成功！', '5', '192.168.88.1', '2014-07-14 23:08:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d8814734ee0d0147357de8000013', 'Firefox', '修改关键字回复成功！', '5', '192.168.88.1', '2014-07-14 23:29:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88147359f510147359fa7950000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-15 00:06:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88147359f51014735a020630002', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-15 00:06:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d88147359f51014735a02cbf0003', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-15 00:06:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d70147448bcaab0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:38:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d701474494f70c0001', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:48:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d7014744955dfb0002', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:49:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d701474495b5bf0003', 'Firefox', '用户: ceshi密码重置成功', '5', '192.168.88.1', '2014-07-17 21:49:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d701474495c3940004', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:49:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d701474495de470005', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:49:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d701474495f5b00006', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:49:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d7014744966c3a0007', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:50:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d7014744969efe0008', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:50:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d701474496cad00009', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:50:38', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('4028d881474489d7014744971411000a', 'Firefox', '用户ceshi已退出', '2', '192.168.88.1', '2014-07-17 21:50:57', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('4028d881474489d70147449733e2000b', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:51:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d70147449868fc0023', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:52:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` VALUES ('4028d881474489d7014744989cca0024', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:52:38', '1', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_log` VALUES ('4028d881474489d701474499892d0026', 'Firefox', '微信公众帐号信息添加成功', '3', '192.168.88.1', '2014-07-17 21:53:38', '1', '402881e44648134a014648174a45000c');

-- ----------------------------
-- Table structure for `t_s_operation`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_operation`;
CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) DEFAULT NULL,
  `operationicon` varchar(100) DEFAULT NULL,
  `operationname` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_operation
-- ----------------------------
INSERT INTO `t_s_operation` VALUES ('402881e44648134a0146482093940049', 'add', null, '新增', null, '4028d881436d514601436d52154d002d', '4028d881436d514601436d5214650000');
INSERT INTO `t_s_operation` VALUES ('402881e44648134a0146482152c2004b', 'edit', null, '编辑', null, '4028d881436d514601436d52154d002d', '4028d881436d514601436d5214650000');
INSERT INTO `t_s_operation` VALUES ('4028d881436d514601436d5216730069', 'add', null, '录入', null, '4028d881436d514601436d521549002c', '4028d881436d514601436d5214650000');
INSERT INTO `t_s_operation` VALUES ('4028d881436d514601436d521678006a', 'edit', null, '编辑', null, '4028d881436d514601436d521549002c', '4028d881436d514601436d5214650000');
INSERT INTO `t_s_operation` VALUES ('4028d881436d514601436d52167c006b', 'del', null, '删除', null, '4028d881436d514601436d521549002c', '4028d881436d514601436d5214650000');
INSERT INTO `t_s_operation` VALUES ('4028d881436d514601436d52167f006c', 'szqm', null, '审核', null, '4028d881436d514601436d521549002c', '4028d881436d514601436d5214650000');

-- ----------------------------
-- Table structure for `t_s_opintemplate`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_opintemplate`;
CREATE TABLE `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_opintemplate
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role`;
CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) DEFAULT NULL,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role
-- ----------------------------
INSERT INTO `t_s_role` VALUES ('402881e44648134a014648163a6d0001', 'ceshi', '测试角色');
INSERT INTO `t_s_role` VALUES ('4028d881436d514601436d52159c0041', 'admin', '管理员');
INSERT INTO `t_s_role` VALUES ('4028d881436d514601436d5215a00042', 'manager', '普通用户');

-- ----------------------------
-- Table structure for `t_s_role_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_function`;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_function
-- ----------------------------
INSERT INTO `t_s_role_function` VALUES ('297e7eb6469a4a8901469a55889e0008', null, '297e7eb6469a4a8901469a54eff60006', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402880e6478c6d8201478c7210f40003', null, '402880e6478c6d8201478c71c5460001', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402881e446677b700146678c59d70005', null, '402881e446677b700146677d7b600001', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402881e44695183a0146951f18f0000a', null, '402881e44695183a0146951b66050006', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402881e44695183a0146951f18f3000b', null, '402881e44695183a0146951ed79e0008', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402881e44695183a0146951f18f3000c', null, '402881e44695183a0146951af2b70004', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402881e545f5dd1a0145f5f35a240008', null, '402881e545f5dd1a0145f5f32cf00005', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402881e545f5dd1a0145f5f35a260009', null, '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402881e545f5f4780145f611e26e0006', null, '402881e545f5f4780145f61198810004', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402881e8460d7e5301460d8310230003', null, '402881e8460d7e5301460d81c7a60001', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402889f6474704840147470805a40005', null, '402889f64747048401474707902e0003', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402889f6474704840147470805a60006', null, '402889f64747048401474706d2a50001', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('402889ff4728a293014728b3fab70021', null, '4028d881436d514601436d52151f0020', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d521699006f', null, '4028d881436d514601436d52150a0019', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d52169e0070', null, '4028d881436d514601436d52150a0019', '4028d881436d514601436d5215a00042');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216bb0077', null, '4028d881436d514601436d521513001d', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216bf0078', null, '4028d881436d514601436d521513001d', '4028d881436d514601436d5215a00042');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216c30079', null, '4028d881436d514601436d521516001e', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216c7007a', null, '4028d881436d514601436d521516001e', '4028d881436d514601436d5215a00042');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216ca007b', null, '4028d881436d514601436d52151a001f', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216cc007c', null, '4028d881436d514601436d52151a001f', '4028d881436d514601436d5215a00042');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216d4007e', null, '4028d881436d514601436d52151f0020', '4028d881436d514601436d5215a00042');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216d7007f', null, '4028d881436d514601436d5215220021', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216dc0080', null, '4028d881436d514601436d5215220021', '4028d881436d514601436d5215a00042');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216eb0084', null, '4028d881436d514601436d5215260023', '4028d881436d514601436d5215a00042');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5216f10086', null, '4028d881436d514601436d5215290024', '4028d881436d514601436d5215a00042');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6a901b5', null, '4028d881436d514601436d54e0ba018f', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6ac01b7', null, '4028d881436d514601436d5618400191', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6ac01bc', null, '4028d881436d514601436d5af95501b1', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6ac01bd', null, '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6ac01bf', null, '4028d881436d514601436d539c530183', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6ac01c0', null, '4028d881436d514601436d5884be019d', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6ac01c2', null, '4028d881436d514601436d59984601a5', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6ac01c3', null, '4028d881436d514601436d59d6d901a7', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881436d514601436d5cd6ac01c6', null, '4028d881436d514601436d5449330189', '4028d881436d514601436d52159c0041');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d7014744985904000c', null, '4028d881436d514601436d59984601a5', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d7014744985904000d', null, '4028d881436d514601436d5884be019d', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d7014744985904000e', null, '4028d881436d514601436d59d6d901a7', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040010', null, '4028d881436d514601436d54e0ba018f', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040011', null, '402881e446677b700146677d7b600001', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040012', null, '297e7eb6469a4a8901469a54eff60006', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040013', null, '4028d881436d514601436d5618400191', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040014', null, '402881e545f5dd1a0145f5f32cf00005', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040015', null, '402881e545f5f4780145f61198810004', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040016', null, '4028d881436d514601436d5449330189', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040017', null, '402881e44695183a0146951ed79e0008', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040018', null, '402881e8460d7e5301460d81c7a60001', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d7014744985904001b', null, '4028d881436d514601436d52c2fb0181', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d7014744985904001c', null, '4028d881436d514601436d5af95501b1', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d7014744985904001d', null, '402881e545f5dd1a0145f5de9bb60001', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d7014744985904001f', null, '402881e44695183a0146951af2b70004', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859040020', null, '4028d881436d514601436d539c530183', '402881e44648134a014648163a6d0001');
INSERT INTO `t_s_role_function` VALUES ('4028d881474489d70147449859140021', null, '402881e44695183a0146951b66050006', '402881e44648134a014648163a6d0001');

-- ----------------------------
-- Table structure for `t_s_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_user`;
CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_user
-- ----------------------------
INSERT INTO `t_s_role_user` VALUES ('402881e4461f9c6401461fa3956d0009', '4028d881436d514601436d52159c0041', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_role_user` VALUES ('402881e44648134a014648174ab3000d', '402881e44648134a014648163a6d0001', '402881e44648134a014648174a45000c');
INSERT INTO `t_s_role_user` VALUES ('4028d881436d514601436d52179f00bf', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_role_user` VALUES ('4028d881436d514601436d5217a300c0', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_role_user` VALUES ('4028d881436d514601436d5217a700c1', '4028d881436d514601436d5215a00042', '4028d881436d514601436d5215b20044');
INSERT INTO `t_s_role_user` VALUES ('4028d881436d514601436d5217aa00c2', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215b80045');
INSERT INTO `t_s_role_user` VALUES ('4028d881436d514601436d5217ad00c3', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215bc0046');

-- ----------------------------
-- Table structure for `t_s_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_student`;
CREATE TABLE `t_s_student` (
  `ID` varchar(32) NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_student
-- ----------------------------
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521ae80165', '1班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521aea0166', '1班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521aeb0167', '1班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521aec0168', '1班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521aec0169', '2班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521aee016a', '2班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521af0016b', '2班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521af1016c', '2班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521af3016d', '3班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521af4016e', '3班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521af7016f', '3班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521afa0170', '3班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521afe0171', '3班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521aff0172', '3班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b000173', '4班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b010174', '4班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b030175', '4班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b040176', '4班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b040177', '5班', '张三', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b050178', '5班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b060179', '5班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b07017a', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b08017b', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b09017c', '5班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b0a017d', '5班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b0b017e', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('4028d881436d514601436d521b0c017f', '5班', '赵六', 'm');

-- ----------------------------
-- Table structure for `t_s_territory`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_territory`;
CREATE TABLE `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) DEFAULT NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_territory
-- ----------------------------
INSERT INTO `t_s_territory` VALUES ('1', '100', '1', '全国', 'qg', '0', '106.258754', '38.471318', '0');
INSERT INTO `t_s_territory` VALUES ('10', '00000016', '2', '河南省', 'HNS', '0', '113.687228', '34.76819', '1');
INSERT INTO `t_s_territory` VALUES ('100', '371300', '3', '临沂市', 'LYS', '0', '118.356448', '35.104672', '18');
INSERT INTO `t_s_territory` VALUES ('1000', '370903', '4', '岱岳区', 'DYQ', '0', '117.041582', '36.18799', '96');
INSERT INTO `t_s_territory` VALUES ('1001', '370921', '4', '宁阳县', 'NYX', '0', '116.805797', '35.758787', '96');
INSERT INTO `t_s_territory` VALUES ('1002', '370923', '4', '东平县', 'DPX', '0', '116.470304', '35.937102', '96');
INSERT INTO `t_s_territory` VALUES ('1003', '370982', '4', '新泰市', 'XTS', '0', '117.767953', '35.909032', '96');
INSERT INTO `t_s_territory` VALUES ('1004', '370983', '4', '肥城市', 'FCS', '0', '116.768358', '36.182571', '96');
INSERT INTO `t_s_territory` VALUES ('1005', '371002', '4', '环翠区', 'HCQ', '0', '122.123444', '37.501991', '97');
INSERT INTO `t_s_territory` VALUES ('1006', '371081', '4', '文登市', 'WDS', '0', '122.058128', '37.1939129', '97');
INSERT INTO `t_s_territory` VALUES ('1007', '371082', '4', '荣成市', 'RCS', '0', '122.486676', '37.165249', '97');
INSERT INTO `t_s_territory` VALUES ('1008', '371083', '4', '乳山市', 'RSS', '0', '121.539764', '36.919816', '97');
INSERT INTO `t_s_territory` VALUES ('1009', '371102', '4', '东港区', 'DGQ', '0', '119.462228', '35.425475', '98');
INSERT INTO `t_s_territory` VALUES ('101', '371400', '3', '德州市', 'DZS', '0', '116.357465', '37.434093', '18');
INSERT INTO `t_s_territory` VALUES ('1010', '371103', '4', '岚山区', 'LSQ', '0', '119.318813', '35.121816', '98');
INSERT INTO `t_s_territory` VALUES ('1011', '371121', '4', '五莲县', 'WLX', '0', '119.208744', '35.750095', '98');
INSERT INTO `t_s_territory` VALUES ('1012', '371122', '4', '莒县', 'JX', '0', '118.837131', '35.579868', '98');
INSERT INTO `t_s_territory` VALUES ('1013', '371202', '4', '莱城区', 'LCQ', '0', '117.659864', '36.203208', '99');
INSERT INTO `t_s_territory` VALUES ('1014', '371203', '4', '钢城区', 'GCQ', '0', '117.811355', '36.058572', '99');
INSERT INTO `t_s_territory` VALUES ('1015', '371302', '4', '兰山区', 'LSQ', '0', '118.347707', '35.051729', '100');
INSERT INTO `t_s_territory` VALUES ('1016', '371311', '4', '罗庄区', 'LZQ', '0', '118.284786', '34.996741', '100');
INSERT INTO `t_s_territory` VALUES ('1017', '371312', '4', '河东区', 'HDQ', '0', '118.402893', '35.089917', '100');
INSERT INTO `t_s_territory` VALUES ('1018', '371321', '4', '沂南县', 'YNX', '0', '118.465213', '35.549976', '100');
INSERT INTO `t_s_territory` VALUES ('1019', '371322', '4', '郯城县', 'TCX', '0', '118.367263', '34.613557', '100');
INSERT INTO `t_s_territory` VALUES ('102', '371500', '3', '聊城市', 'LCS', '0', '115.985371', '36.4567039', '18');
INSERT INTO `t_s_territory` VALUES ('1020', '371323', '4', '沂水县', 'YSX', '0', '118.627918', '35.79045', '100');
INSERT INTO `t_s_territory` VALUES ('1021', '371324', '4', '苍山县', 'CSX', '0', '118.07065', '34.857149', '100');
INSERT INTO `t_s_territory` VALUES ('1022', '371325', '4', '费县', 'FX', '0', '117.977868', '35.26634', '100');
INSERT INTO `t_s_territory` VALUES ('1023', '371326', '4', '平邑县', 'PYX', '0', '117.640352', '35.5059429', '100');
INSERT INTO `t_s_territory` VALUES ('1024', '371327', '4', '莒南县', 'JNX', '0', '118.835163', '35.174846', '100');
INSERT INTO `t_s_territory` VALUES ('1025', '371328', '4', '蒙阴县', 'MYX', '0', '117.945085', '35.710032', '100');
INSERT INTO `t_s_territory` VALUES ('1026', '371329', '4', '临沭县', 'LSX', '0', '118.650782', '34.919852', '100');
INSERT INTO `t_s_territory` VALUES ('1027', '371402', '4', '德城区', 'DCQ', '0', '116.299434', '37.451272', '101');
INSERT INTO `t_s_territory` VALUES ('1028', '371421', '4', '陵县', 'LX', '0', '116.576176', '37.33579', '101');
INSERT INTO `t_s_territory` VALUES ('1029', '371422', '4', '宁津县', 'NJX', '0', '116.800324', '37.652329', '101');
INSERT INTO `t_s_territory` VALUES ('103', '371600', '3', '滨州市', 'BZS', '0', '117.970703', '37.38199', '18');
INSERT INTO `t_s_territory` VALUES ('1030', '371423', '4', '庆云县', 'QYX', '0', '117.385123', '37.77539', '101');
INSERT INTO `t_s_territory` VALUES ('1031', '371424', '4', '临邑县', 'LYX', '0', '116.86665', '37.189864', '101');
INSERT INTO `t_s_territory` VALUES ('1032', '371425', '4', '齐河县', 'QHX', '0', '116.758917', '36.795011', '101');
INSERT INTO `t_s_territory` VALUES ('1033', '371426', '4', '平原县', 'PYX', '0', '116.434187', '37.165419', '101');
INSERT INTO `t_s_territory` VALUES ('1034', '371427', '4', '夏津县', 'XJX', '0', '116.001726', '36.948371', '101');
INSERT INTO `t_s_territory` VALUES ('1035', '371428', '4', '武城县', 'WCX', '0', '116.069302', '37.213311', '101');
INSERT INTO `t_s_territory` VALUES ('1036', '371481', '4', '乐陵市', 'LLS', '0', '117.231935', '37.729907', '101');
INSERT INTO `t_s_territory` VALUES ('1037', '371482', '4', '禹城市', 'YCS', '0', '116.638387', '36.934259', '101');
INSERT INTO `t_s_territory` VALUES ('1038', '371502', '4', '东昌府区', 'DCFQ', '0', '115.988484', '36.434697', '102');
INSERT INTO `t_s_territory` VALUES ('1039', '371521', '4', '阳谷县', 'YGX', '0', '115.79182', '36.114392', '102');
INSERT INTO `t_s_territory` VALUES ('104', '371700', '3', '菏泽市', 'HZS', '0', '115.480656', '35.23375', '18');
INSERT INTO `t_s_territory` VALUES ('1040', '371522', '4', '莘县', 'SX', '0', '115.671191', '36.233599', '102');
INSERT INTO `t_s_territory` VALUES ('1041', '371523', '4', '茌平县', 'CPX', '0', '116.255282', '36.5807639', '102');
INSERT INTO `t_s_territory` VALUES ('1042', '371524', '4', '东阿县', 'DAX', '0', '116.24758', '36.334917', '102');
INSERT INTO `t_s_territory` VALUES ('1043', '371525', '4', '冠县', 'GX', '0', '115.44274', '36.484009', '102');
INSERT INTO `t_s_territory` VALUES ('1044', '371526', '4', '高唐县', 'GTX', '0', '116.231478', '36.866062', '102');
INSERT INTO `t_s_territory` VALUES ('1045', '371581', '4', '临清市', 'LQS', '0', '115.704881', '36.838277', '102');
INSERT INTO `t_s_territory` VALUES ('1046', '371602', '4', '滨城区', 'BCQ', '0', '118.019146', '37.43206', '103');
INSERT INTO `t_s_territory` VALUES ('1047', '371621', '4', '惠民县', 'HMX', '0', '117.510451', '37.489769', '103');
INSERT INTO `t_s_territory` VALUES ('1048', '371622', '4', '阳信县', 'YXX', '0', '117.578262', '37.641106', '103');
INSERT INTO `t_s_territory` VALUES ('1049', '371623', '4', '无棣县', 'WDX', '0', '117.625696', '37.770261', '103');
INSERT INTO `t_s_territory` VALUES ('1050', '371624', '4', '沾化县', 'ZHX', '0', '118.132199', '37.698281', '103');
INSERT INTO `t_s_territory` VALUES ('1051', '371625', '4', '博兴县', 'BXX', '0', '118.131815', '37.150226', '103');
INSERT INTO `t_s_territory` VALUES ('1052', '371626', '4', '邹平县', 'ZPX', '0', '117.743109', '36.862989', '103');
INSERT INTO `t_s_territory` VALUES ('1053', '371702', '4', '牡丹区', 'MDQ', '0', '115.417827', '35.252512', '104');
INSERT INTO `t_s_territory` VALUES ('1054', '371721', '4', '曹县', 'CX', '0', '115.542328', '34.825508', '104');
INSERT INTO `t_s_territory` VALUES ('1055', '371722', '4', '单县', 'DX', '0', '116.107428', '34.778808', '104');
INSERT INTO `t_s_territory` VALUES ('1056', '371723', '4', '成武县', 'CWX', '0', '115.889765', '34.952459', '104');
INSERT INTO `t_s_territory` VALUES ('1057', '371724', '4', '巨野县', 'JYX', '0', '116.094674', '35.396261', '104');
INSERT INTO `t_s_territory` VALUES ('1058', '371725', '4', '郓城县', 'YCX', '0', '115.943613', '35.599758', '104');
INSERT INTO `t_s_territory` VALUES ('1059', '371726', '4', '鄄城县', 'JCX', '0', '115.510193', '35.563408', '104');
INSERT INTO `t_s_territory` VALUES ('1060', '371727', '4', '定陶县', 'DTX', '0', '115.573094', '35.071', '104');
INSERT INTO `t_s_territory` VALUES ('1061', '371728', '4', '东明县', 'DMX', '0', '115.089905', '35.289368', '104');
INSERT INTO `t_s_territory` VALUES ('11', '00000008', '2', '黑龙江省', 'HLJS', '0', '126.662507', '45.7421699', '1');
INSERT INTO `t_s_territory` VALUES ('12', '20000000', '2', '上海市', 'SHS', '0', '121.473704', '31.230393', '1');
INSERT INTO `t_s_territory` VALUES ('13', '00000010', '2', '江苏省', 'JSS', '0', '118.763232', '32.061707', '1');
INSERT INTO `t_s_territory` VALUES ('14', '00000011', '2', '浙江省', 'ZJS', '0', '120.153676', '30.26586', '1');
INSERT INTO `t_s_territory` VALUES ('15', '00000012', '2', '安徽省', 'AHS', '0', '117.284923', '31.861184', '1');
INSERT INTO `t_s_territory` VALUES ('16', '00000013', '2', '福建省', 'FJS', '0', '119.296506', '26.099933', '1');
INSERT INTO `t_s_territory` VALUES ('17', '00000014', '2', '江西省', 'JXS', '0', '115.909175', '28.674424', '1');
INSERT INTO `t_s_territory` VALUES ('1739', '360102', '4', '东湖区', 'DHQ', '0', '115.89901', '28.6849159', '184');
INSERT INTO `t_s_territory` VALUES ('1740', '360103', '4', '西湖区', 'XHQ', '0', '115.877287', '28.656887', '184');
INSERT INTO `t_s_territory` VALUES ('1741', '360104', '4', '青云谱区', 'QYPQ', '0', '115.925749', '28.621169', '184');
INSERT INTO `t_s_territory` VALUES ('1742', '360105', '4', '湾里区', 'WLQ', '0', '115.730994', '28.714869', '184');
INSERT INTO `t_s_territory` VALUES ('1743', '360111', '4', '青山湖区', 'QSHQ', '0', '115.962144', '28.682985', '184');
INSERT INTO `t_s_territory` VALUES ('1744', '360121', '4', '南昌县', 'NCX', '0', '115.944162', '28.545459', '184');
INSERT INTO `t_s_territory` VALUES ('1745', '360122', '4', '新建县', 'XJX', '0', '115.815233', '28.692437', '184');
INSERT INTO `t_s_territory` VALUES ('1746', '360123', '4', '安义县', 'AYX', '0', '115.549199', '28.844429', '184');
INSERT INTO `t_s_territory` VALUES ('1747', '360124', '4', '进贤县', 'JXX', '0', '116.240924', '28.376918', '184');
INSERT INTO `t_s_territory` VALUES ('1748', '360202', '4', '昌江区', 'CJQ', '0', '117.183688', '29.27342', '185');
INSERT INTO `t_s_territory` VALUES ('1749', '360203', '4', '珠山区', 'ZSQ', '0', '117.202336', '29.301272', '185');
INSERT INTO `t_s_territory` VALUES ('1750', '360222', '4', '浮梁县', 'FLX', '0', '117.215061', '29.351739', '185');
INSERT INTO `t_s_territory` VALUES ('1751', '360281', '4', '乐平市', 'LPS', '0', '117.129169', '28.961902', '185');
INSERT INTO `t_s_territory` VALUES ('1752', '360302', '4', '安源区', 'AYQ', '0', '113.87073', '27.615202', '186');
INSERT INTO `t_s_territory` VALUES ('1753', '360313', '4', '湘东区', 'XDQ', '0', '113.733059', '27.640075', '186');
INSERT INTO `t_s_territory` VALUES ('1754', '360321', '4', '莲花县', 'LHX', '0', '113.961465', '27.127669', '186');
INSERT INTO `t_s_territory` VALUES ('1755', '360322', '4', '上栗县', 'SLX', '0', '113.795219', '27.880567', '186');
INSERT INTO `t_s_territory` VALUES ('1756', '360323', '4', '芦溪县', 'LXX', '0', '114.029595', '27.631145', '186');
INSERT INTO `t_s_territory` VALUES ('1757', '360402', '4', '庐山区', 'LSQ', '0', '115.989212', '29.671775', '187');
INSERT INTO `t_s_territory` VALUES ('1758', '360403', '4', '浔阳区', 'XYQ', '0', '115.990399', '29.72746', '187');
INSERT INTO `t_s_territory` VALUES ('1759', '360421', '4', '九江县', 'JJX', '0', '115.911314', '29.608456', '187');
INSERT INTO `t_s_territory` VALUES ('1760', '360423', '4', '武宁县', 'WNX', '0', '115.100579', '29.256323', '187');
INSERT INTO `t_s_territory` VALUES ('1761', '360424', '4', '修水县', 'XSX', '0', '114.547356', '29.025707', '187');
INSERT INTO `t_s_territory` VALUES ('1762', '360425', '4', '永修县', 'YXX', '0', '115.809111', '29.021824', '187');
INSERT INTO `t_s_territory` VALUES ('1763', '360426', '4', '德安县', 'DAX', '0', '115.756883', '29.314348', '187');
INSERT INTO `t_s_territory` VALUES ('1764', '360427', '4', '星子县', 'XZX', '0', '116.044893', '29.448037', '187');
INSERT INTO `t_s_territory` VALUES ('1765', '360428', '4', '都昌县', 'DCX', '0', '116.204099', '29.273194', '187');
INSERT INTO `t_s_territory` VALUES ('1766', '360429', '4', '湖口县', 'HKX', '0', '116.220266', '29.73944', '187');
INSERT INTO `t_s_territory` VALUES ('1767', '360430', '4', '彭泽县', 'PZX', '0', '116.549359', '29.896061', '187');
INSERT INTO `t_s_territory` VALUES ('1768', '360481', '4', '瑞昌市', 'RCS', '0', '115.681504', '29.673795', '187');
INSERT INTO `t_s_territory` VALUES ('1769', '360499', '4', '共青城', 'GQC', '0', '115.774', '29.2417', '187');
INSERT INTO `t_s_territory` VALUES ('1770', '360502', '4', '渝水区', 'YSQ', '0', '114.944574', '27.80038', '188');
INSERT INTO `t_s_territory` VALUES ('1771', '360521', '4', '分宜县', 'FYX', '0', '114.692039', '27.814628', '188');
INSERT INTO `t_s_territory` VALUES ('1772', '360602', '4', '月湖区', 'YHQ', '0', '117.036676', '28.238797', '189');
INSERT INTO `t_s_territory` VALUES ('1773', '360622', '4', '余江县', 'YJX', '0', '116.818871', '28.204174', '189');
INSERT INTO `t_s_territory` VALUES ('1774', '360681', '4', '贵溪市', 'GXS', '0', '117.245497', '28.292519', '189');
INSERT INTO `t_s_territory` VALUES ('1775', '360702', '4', '章贡区', 'ZGQ', '0', '114.941826', '25.862827', '190');
INSERT INTO `t_s_territory` VALUES ('1776', '360721', '4', '赣县', 'GX', '0', '115.011561', '25.860691', '190');
INSERT INTO `t_s_territory` VALUES ('1777', '360722', '4', '信丰县', 'XFX', '0', '114.922963', '25.386278', '190');
INSERT INTO `t_s_territory` VALUES ('1778', '360723', '4', '大余县', 'DYX', '0', '114.362094', '25.401283', '190');
INSERT INTO `t_s_territory` VALUES ('1779', '360724', '4', '上犹县', 'SYX', '0', '114.551371', '25.784978', '190');
INSERT INTO `t_s_territory` VALUES ('1780', '360725', '4', '崇义县', 'CYX', '0', '114.308273', '25.681879', '190');
INSERT INTO `t_s_territory` VALUES ('1781', '360726', '4', '安远县', 'AYX', '0', '115.393922', '25.136925', '190');
INSERT INTO `t_s_territory` VALUES ('1782', '360727', '4', '龙南县', 'LNX', '0', '114.789811', '24.911107', '190');
INSERT INTO `t_s_territory` VALUES ('1783', '360728', '4', '定南县', 'DNX', '0', '115.027845', '24.78441', '190');
INSERT INTO `t_s_territory` VALUES ('1784', '360729', '4', '全南县', 'QNX', '0', '114.530125', '24.742401', '190');
INSERT INTO `t_s_territory` VALUES ('1785', '360730', '4', '宁都县', 'NDX', '0', '116.009472', '26.470116', '190');
INSERT INTO `t_s_territory` VALUES ('1786', '360731', '4', '于都县', 'YDX', '0', '115.41551', '25.952066', '190');
INSERT INTO `t_s_territory` VALUES ('1787', '360732', '4', '兴国县', 'XGX', '0', '115.36319', '26.337937', '190');
INSERT INTO `t_s_territory` VALUES ('1788', '360733', '4', '会昌县', 'HCX', '0', '115.786057', '25.600272', '190');
INSERT INTO `t_s_territory` VALUES ('1789', '360734', '4', '寻乌县', 'YWX', '0', '115.646525', '24.963322', '190');
INSERT INTO `t_s_territory` VALUES ('1790', '360735', '4', '石城县', 'SCX', '0', '116.354201', '26.32686', '190');
INSERT INTO `t_s_territory` VALUES ('1791', '360781', '4', '瑞金市', 'RJS', '0', '116.02713', '25.885561', '190');
INSERT INTO `t_s_territory` VALUES ('1792', '360782', '4', '南康市', 'NKS', '0', '114.765238', '25.661356', '190');
INSERT INTO `t_s_territory` VALUES ('1793', '360802', '4', '吉州区', 'JZQ', '0', '114.994307', '27.129975', '191');
INSERT INTO `t_s_territory` VALUES ('1794', '360803', '4', '青原区', 'QYQ', '0', '115.01424', '27.081719', '191');
INSERT INTO `t_s_territory` VALUES ('1795', '360821', '4', '吉安县', 'JAX', '0', '114.907659', '27.040142', '191');
INSERT INTO `t_s_territory` VALUES ('1796', '360822', '4', '吉水县', 'JSX', '0', '115.135507', '27.229632', '191');
INSERT INTO `t_s_territory` VALUES ('1797', '360823', '4', '峡江县', 'XJX', '0', '115.316566', '27.582901', '191');
INSERT INTO `t_s_territory` VALUES ('1798', '360824', '4', '新干县', 'XGX', '0', '115.393043', '27.740809', '191');
INSERT INTO `t_s_territory` VALUES ('1799', '360825', '4', '永丰县', 'YFX', '0', '115.441477', '27.317869', '191');
INSERT INTO `t_s_territory` VALUES ('18', '00000015', '2', '山东省', 'SDS', '0', '117.020411', '36.668627', '1');
INSERT INTO `t_s_territory` VALUES ('1800', '360826', '4', '泰和县', 'THX', '0', '114.908861', '26.790231', '191');
INSERT INTO `t_s_territory` VALUES ('1801', '360827', '4', '遂川县', 'SCX', '0', '114.52098', '26.311894', '191');
INSERT INTO `t_s_territory` VALUES ('1802', '360828', '4', '万安县', 'WAX', '0', '114.786256', '26.458257', '191');
INSERT INTO `t_s_territory` VALUES ('1803', '360829', '4', '安福县', 'AFX', '0', '114.619893', '27.392874', '191');
INSERT INTO `t_s_territory` VALUES ('1804', '360830', '4', '永新县', 'YXX', '0', '114.242675', '26.945233', '191');
INSERT INTO `t_s_territory` VALUES ('1805', '360881', '4', '井冈山市', 'JGSS', '0', '114.289182', '26.748186', '191');
INSERT INTO `t_s_territory` VALUES ('1806', '360902', '4', '袁州区', 'YZQ', '0', '114.424657', '27.798846', '192');
INSERT INTO `t_s_territory` VALUES ('1807', '360921', '4', '奉新县', 'FXX', '0', '115.384904', '28.700806', '192');
INSERT INTO `t_s_territory` VALUES ('1808', '360922', '4', '万载县', 'WZX', '0', '114.447551', '28.10455', '192');
INSERT INTO `t_s_territory` VALUES ('1809', '360923', '4', '上高县', 'SGX', '0', '114.924494', '28.232827', '192');
INSERT INTO `t_s_territory` VALUES ('1810', '360924', '4', '宜丰县', 'YFX', '0', '114.803542', '28.393613', '192');
INSERT INTO `t_s_territory` VALUES ('1811', '360925', '4', '靖安县', 'JAX', '0', '115.362629', '28.861475', '192');
INSERT INTO `t_s_territory` VALUES ('1812', '360926', '4', '铜鼓县', 'TGX', '0', '114.37098', '28.520747', '192');
INSERT INTO `t_s_territory` VALUES ('1813', '360981', '4', '丰城市', 'FCS', '0', '115.771195', '28.159325', '192');
INSERT INTO `t_s_territory` VALUES ('1814', '360982', '4', '樟树市', 'ZSS', '0', '115.546063', '28.055796', '192');
INSERT INTO `t_s_territory` VALUES ('1815', '360983', '4', '高安市', 'GAS', '0', '115.375618', '28.417261', '192');
INSERT INTO `t_s_territory` VALUES ('1816', '361002', '4', '临川区', 'LCQ', '0', '116.31136', '27.934529', '193');
INSERT INTO `t_s_territory` VALUES ('1817', '361021', '4', '南城县', 'NCX', '0', '116.644658', '27.552748', '193');
INSERT INTO `t_s_territory` VALUES ('1818', '361022', '4', '黎川县', 'LCX', '0', '116.907508', '27.282382', '193');
INSERT INTO `t_s_territory` VALUES ('1819', '361023', '4', '南丰县', 'NFX', '0', '116.525725', '27.218445', '193');
INSERT INTO `t_s_territory` VALUES ('1820', '361024', '4', '崇仁县', 'CRX', '0', '116.061164', '27.764681', '193');
INSERT INTO `t_s_territory` VALUES ('1821', '361025', '4', '乐安县', 'LAX', '0', '115.837895', '27.420441', '193');
INSERT INTO `t_s_territory` VALUES ('1822', '361026', '4', '宜黄县', 'YHX', '0', '116.222128', '27.546146', '193');
INSERT INTO `t_s_territory` VALUES ('1823', '361027', '4', '金溪县', 'JXX', '0', '116.775435', '27.908337', '193');
INSERT INTO `t_s_territory` VALUES ('1824', '361028', '4', '资溪县', 'ZXX', '0', '117.060264', '27.706102', '193');
INSERT INTO `t_s_territory` VALUES ('1825', '361029', '4', '东乡县', 'DXX', '0', '116.590465', '28.236118', '193');
INSERT INTO `t_s_territory` VALUES ('1826', '361030', '4', '广昌县', 'GCX', '0', '116.325757', '26.837267', '193');
INSERT INTO `t_s_territory` VALUES ('1827', '361102', '4', '信州区', 'XZQ', '0', '117.966823', '28.43121', '194');
INSERT INTO `t_s_territory` VALUES ('1828', '361121', '4', '上饶县', 'SRX', '0', '117.90785', '28.448983', '194');
INSERT INTO `t_s_territory` VALUES ('1829', '361122', '4', '广丰县', 'GFX', '0', '118.19124', '28.436286', '194');
INSERT INTO `t_s_territory` VALUES ('1830', '361123', '4', '玉山县', 'YSX', '0', '118.245124', '28.682055', '194');
INSERT INTO `t_s_territory` VALUES ('1831', '361124', '4', '铅山县', 'QSX', '0', '117.709451', '28.315217', '194');
INSERT INTO `t_s_territory` VALUES ('1832', '361125', '4', '横峰县', 'HFX', '0', '117.596452', '28.407118', '194');
INSERT INTO `t_s_territory` VALUES ('1833', '361126', '4', '弋阳县', 'YYX', '0', '117.449588', '28.378044', '194');
INSERT INTO `t_s_territory` VALUES ('1834', '361127', '4', '余干县', 'YGX', '0', '116.695647', '28.702302', '194');
INSERT INTO `t_s_territory` VALUES ('1835', '361128', '4', '鄱阳县', 'PYX', '0', '116.699746', '29.011699', '194');
INSERT INTO `t_s_territory` VALUES ('1836', '361129', '4', '万年县', 'WNX', '0', '117.058445', '28.694582', '194');
INSERT INTO `t_s_territory` VALUES ('1837', '361130', '4', '婺源县', 'WYX', '0', '117.861911', '29.2480249', '194');
INSERT INTO `t_s_territory` VALUES ('1838', '361181', '4', '德兴市', 'DXS', '0', '117.578713', '28.946464', '194');
INSERT INTO `t_s_territory` VALUES ('1839', '370102', '4', '历下区', 'LXQ', '0', '117.07653', '36.666344', '195');
INSERT INTO `t_s_territory` VALUES ('184', '360100', '3', '南昌市', 'NCS', '0', '115.858089', '28.68316', '17');
INSERT INTO `t_s_territory` VALUES ('1840', '370103', '4', '市中区', 'SZQ', '0', '116.997475', '36.6511749', '195');
INSERT INTO `t_s_territory` VALUES ('1841', '370104', '4', '槐荫区', 'HYQ', '0', '116.90113', '36.651301', '195');
INSERT INTO `t_s_territory` VALUES ('1842', '370105', '4', '天桥区', 'TQQ', '0', '116.987492', '36.678016', '195');
INSERT INTO `t_s_territory` VALUES ('1843', '370112', '4', '历城区', 'LCQ', '0', '117.065222', '36.680171', '195');
INSERT INTO `t_s_territory` VALUES ('185', '360200', '3', '景德镇市', 'JDZS', '0', '117.17842', '29.268836', '17');
INSERT INTO `t_s_territory` VALUES ('186', '360300', '3', '萍乡市', 'PXS', '0', '113.854676', '27.622865', '17');
INSERT INTO `t_s_territory` VALUES ('187', '360400', '3', '九江市', 'JJS', '0', '116.001951', '29.705103', '17');
INSERT INTO `t_s_territory` VALUES ('188', '360500', '3', '新余市', 'XYS', '0', '114.91741', '27.817819', '17');
INSERT INTO `t_s_territory` VALUES ('189', '360600', '3', '鹰潭市', 'YTS', '0', '117.069202', '28.260189', '17');
INSERT INTO `t_s_territory` VALUES ('19', '00000017', '2', '湖北省', 'HBS', '0', '114.341921', '30.545861', '1');
INSERT INTO `t_s_territory` VALUES ('190', '360700', '3', '赣州市', 'GZS', '0', '114.935025', '25.831925', '17');
INSERT INTO `t_s_territory` VALUES ('191', '360800', '3', '吉安市', 'JAS', '0', '114.992912', '27.113039', '17');
INSERT INTO `t_s_territory` VALUES ('192', '360900', '3', '宜春市', 'YCS', '0', '114.416778', '27.815619', '17');
INSERT INTO `t_s_territory` VALUES ('193', '361000', '3', '抚州市', 'FZS', '0', '116.358176', '27.9492', '17');
INSERT INTO `t_s_territory` VALUES ('194', '361100', '3', '上饶市', 'SRS', '0', '117.943433', '28.454863', '17');
INSERT INTO `t_s_territory` VALUES ('195', '370100', '3', '济南市', 'JNS', '0', '116.994917', '36.665282', '18');
INSERT INTO `t_s_territory` VALUES ('20', '00000018', '2', '湖南省', 'HNS', '0', '112.98381', '28.112444', '1');
INSERT INTO `t_s_territory` VALUES ('21', '40000000', '2', '重庆市', 'ZQS', '0', '106.551557', '29.56301', '1');
INSERT INTO `t_s_territory` VALUES ('22', '00000022', '2', '四川省', 'SCS', '0', '104.075931', '30.651652', '1');
INSERT INTO `t_s_territory` VALUES ('23', '00000019', '2', '广东省', 'GDS', '0', '113.266531', '23.132191', '1');
INSERT INTO `t_s_territory` VALUES ('24', '00000020', '2', '广西壮族自治区', 'GXZZZZQ', '0', '108.327546', '22.815478', '1');
INSERT INTO `t_s_territory` VALUES ('25', '00000021', '2', '海南省', 'HNS', '0', '110.349229', '20.017378', '1');
INSERT INTO `t_s_territory` VALUES ('26', '810000', '2', '香港特别行政区', 'XGTBXZQ', '0', '114.109497', '22.396428', '1');
INSERT INTO `t_s_territory` VALUES ('27', '820000', '2', '澳门特别行政区', 'AMTBXZQ', '0', '113.543873', '22.198745', '1');
INSERT INTO `t_s_territory` VALUES ('28', '00000023', '2', '贵州省', 'GZS', '0', '106.707116', '26.598026', '1');
INSERT INTO `t_s_territory` VALUES ('29', '00000024', '2', '云南省', 'YNS', '0', '102.709812', '25.045359', '1');
INSERT INTO `t_s_territory` VALUES ('3', '00000006', '2', '辽宁省', 'LNS', '0', '123.42944', '41.835441', '1');
INSERT INTO `t_s_territory` VALUES ('30', '00000025', '2', '西藏自治区', 'XCZZQ', '0', '91.1170059', '29.647951', '1');
INSERT INTO `t_s_territory` VALUES ('31', '00000026', '2', '陕西省', 'SXS', '0', '108.954239', '34.265472', '1');
INSERT INTO `t_s_territory` VALUES ('32', '00000027', '2', '甘肃省', 'GSS', '0', '103.826308', '36.059421', '1');
INSERT INTO `t_s_territory` VALUES ('33', '00000028', '2', '青海省', 'QHS', '0', '101.780199', '36.620901', '1');
INSERT INTO `t_s_territory` VALUES ('34', '00000029', '2', '宁夏回族自治区', 'NXHZZZQ', '0', '106.258754', '38.471318', '1');
INSERT INTO `t_s_territory` VALUES ('35', '00000030', '2', '新疆维吾尔自治区', 'XJWWEZZQ', '0', '87.6278119', '43.793028', '1');
INSERT INTO `t_s_territory` VALUES ('4', '00000007', '2', '吉林省', 'JLS', '0', '125.326065', '43.896082', '1');
INSERT INTO `t_s_territory` VALUES ('5', '10000000', '2', '北京市', 'BJS', '0', '116.407413', '39.904214', '1');
INSERT INTO `t_s_territory` VALUES ('6', '30000000', '2', '天津市', 'TJS', '0', '117.200983', '39.084158', '1');
INSERT INTO `t_s_territory` VALUES ('7', '00000003', '2', '河北省', 'HBS', '0', '114.468665', '38.037057', '1');
INSERT INTO `t_s_territory` VALUES ('8', '00000004', '2', '山西省', 'SXS', '0', '112.562569', '37.873376', '1');
INSERT INTO `t_s_territory` VALUES ('89', '370200', '3', '青岛市', 'QDS', '0', '120.382504', '36.06722', '18');
INSERT INTO `t_s_territory` VALUES ('9', '00000005', '2', '内蒙古自治区', 'NMGZZQ', '0', '111.765618', '40.817498', '1');
INSERT INTO `t_s_territory` VALUES ('90', '370300', '3', '淄博市', 'ZBS', '0', '118.055007', '36.813497', '18');
INSERT INTO `t_s_territory` VALUES ('91', '370400', '3', '枣庄市', 'ZZS', '0', '117.323725', '34.810488', '18');
INSERT INTO `t_s_territory` VALUES ('92', '370500', '3', '东营市', 'DYS', '0', '118.674767', '37.434751', '18');
INSERT INTO `t_s_territory` VALUES ('926', '370113', '4', '长清区', 'CQQ', '0', '116.751959', '36.553691', '195');
INSERT INTO `t_s_territory` VALUES ('927', '370124', '4', '平阴县', 'PYX', '0', '116.456187', '36.289265', '195');
INSERT INTO `t_s_territory` VALUES ('928', '370125', '4', '济阳县', 'JYX', '0', '117.173529', '36.978547', '195');
INSERT INTO `t_s_territory` VALUES ('929', '370126', '4', '商河县', 'SHX', '0', '117.157183', '37.309045', '195');
INSERT INTO `t_s_territory` VALUES ('93', '370600', '3', '烟台市', 'YTS', '0', '121.447926', '37.463819', '18');
INSERT INTO `t_s_territory` VALUES ('930', '370181', '4', '章丘市', 'ZQS', '0', '117.534326', '36.714015', '195');
INSERT INTO `t_s_territory` VALUES ('931', '370202', '4', '市南区', 'SNQ', '0', '120.412392', '36.075651', '89');
INSERT INTO `t_s_territory` VALUES ('932', '370203', '4', '市北区', 'SBQ', '0', '120.374801', '36.087661', '89');
INSERT INTO `t_s_territory` VALUES ('933', '370205', '4', '四方区', 'SFQ', '0', '120.366454', '36.103993', '89');
INSERT INTO `t_s_territory` VALUES ('934', '370211', '4', '黄岛区', 'HDQ', '0', '120.198054', '35.960935', '89');
INSERT INTO `t_s_territory` VALUES ('935', '370212', '4', '崂山区', 'LSQ', '0', '120.468956', '36.107538', '89');
INSERT INTO `t_s_territory` VALUES ('936', '370213', '4', '李沧区', 'LCQ', '0', '120.432864', '36.145476', '89');
INSERT INTO `t_s_territory` VALUES ('937', '370214', '4', '城阳区', 'CYQ', '0', '120.396529', '36.307061', '89');
INSERT INTO `t_s_territory` VALUES ('938', '370281', '4', '胶州市', 'JZS', '0', '120.033345', '36.264664', '89');
INSERT INTO `t_s_territory` VALUES ('939', '370282', '4', '即墨市', 'JMS', '0', '120.447162', '36.389401', '89');
INSERT INTO `t_s_territory` VALUES ('94', '370700', '3', '潍坊市', 'WFS', '0', '119.16193', '36.706691', '18');
INSERT INTO `t_s_territory` VALUES ('940', '370283', '4', '平度市', 'PDS', '0', '119.960014', '36.7867', '89');
INSERT INTO `t_s_territory` VALUES ('941', '370284', '4', '胶南市', 'JNS', '0', '120.04643', '35.8725', '89');
INSERT INTO `t_s_territory` VALUES ('942', '370285', '4', '莱西市', 'LXS', '0', '120.51769', '36.889084', '89');
INSERT INTO `t_s_territory` VALUES ('943', '370302', '4', '淄川区', 'ZCQ', '0', '117.966842', '36.643449', '90');
INSERT INTO `t_s_territory` VALUES ('944', '370303', '4', '张店区', 'ZDQ', '0', '118.017656', '36.806773', '90');
INSERT INTO `t_s_territory` VALUES ('945', '370304', '4', '博山区', 'BSQ', '0', '117.861698', '36.494752', '90');
INSERT INTO `t_s_territory` VALUES ('946', '370305', '4', '临淄区', 'LZQ', '0', '118.308977', '36.827343', '90');
INSERT INTO `t_s_territory` VALUES ('947', '370306', '4', '周村区', 'ZCQ', '0', '117.869877', '36.803109', '90');
INSERT INTO `t_s_territory` VALUES ('948', '370321', '4', '桓台县', 'HTX', '0', '118.097955', '36.959623', '90');
INSERT INTO `t_s_territory` VALUES ('949', '370322', '4', '高青县', 'GQX', '0', '117.826916', '37.171063', '90');
INSERT INTO `t_s_territory` VALUES ('95', '370800', '3', '济宁市', 'JNS', '0', '116.587099', '35.414921', '18');
INSERT INTO `t_s_territory` VALUES ('950', '370323', '4', '沂源县', 'YYX', '0', '118.170979', '36.184827', '90');
INSERT INTO `t_s_territory` VALUES ('951', '370402', '4', '市中区', 'SZQ', '0', '117.556124', '34.864114', '91');
INSERT INTO `t_s_territory` VALUES ('952', '370403', '4', '薛城区', 'YCQ', '0', '117.263157', '34.795206', '91');
INSERT INTO `t_s_territory` VALUES ('953', '370404', '4', '峄城区', 'YCQ', '0', '117.590819', '34.772236', '91');
INSERT INTO `t_s_territory` VALUES ('954', '370405', '4', '台儿庄区', 'TEZQ', '0', '117.733832', '34.562528', '91');
INSERT INTO `t_s_territory` VALUES ('955', '370406', '4', '山亭区', 'STQ', '0', '117.461343', '35.099549', '91');
INSERT INTO `t_s_territory` VALUES ('956', '370481', '4', '滕州市', 'TZS', '0', '117.164388', '35.084021', '91');
INSERT INTO `t_s_territory` VALUES ('957', '370502', '4', '东营区', 'DYQ', '0', '118.582184', '37.448964', '92');
INSERT INTO `t_s_territory` VALUES ('958', '370503', '4', '河口区', 'HKQ', '0', '118.525579', '37.886138', '92');
INSERT INTO `t_s_territory` VALUES ('959', '370521', '4', '垦利县', 'KLX', '0', '118.547627', '37.58754', '92');
INSERT INTO `t_s_territory` VALUES ('960', '370522', '4', '利津县', 'LJX', '0', '118.255273', '37.49026', '92');
INSERT INTO `t_s_territory` VALUES ('961', '370523', '4', '广饶县', 'GRX', '0', '118.407045', '37.0537', '92');
INSERT INTO `t_s_territory` VALUES ('962', '370602', '4', '芝罘区', 'ZFQ', '0', '121.400031', '37.540687', '93');
INSERT INTO `t_s_territory` VALUES ('963', '370611', '4', '福山区', 'FSQ', '0', '121.267697', '37.498051', '93');
INSERT INTO `t_s_territory` VALUES ('964', '370612', '4', '牟平区', 'MPQ', '0', '121.600512', '37.386901', '93');
INSERT INTO `t_s_territory` VALUES ('965', '370613', '4', '莱山区', 'LSQ', '0', '121.445304', '37.511305', '93');
INSERT INTO `t_s_territory` VALUES ('966', '370614', '4', '开发区', 'KFQ', '0', '121.251001', '37.554683', '93');
INSERT INTO `t_s_territory` VALUES ('967', '370634', '4', '长岛县', 'CDX', '0', '120.736584', '37.921417', '93');
INSERT INTO `t_s_territory` VALUES ('968', '370681', '4', '龙口市', 'LKS', '0', '120.477836', '37.646064', '93');
INSERT INTO `t_s_territory` VALUES ('969', '370682', '4', '莱阳市', 'LYS', '0', '120.711607', '36.97891', '93');
INSERT INTO `t_s_territory` VALUES ('970', '370683', '4', '莱州市', 'LZS', '0', '119.942327', '37.177017', '93');
INSERT INTO `t_s_territory` VALUES ('971', '370684', '4', '蓬莱市', 'PLS', '0', '120.758848', '37.810661', '93');
INSERT INTO `t_s_territory` VALUES ('972', '370685', '4', '招远市', 'ZYS', '0', '120.434072', '37.355469', '93');
INSERT INTO `t_s_territory` VALUES ('973', '370686', '4', '栖霞市', 'QXS', '0', '120.849675', '37.335123', '93');
INSERT INTO `t_s_territory` VALUES ('974', '370687', '4', '海阳市', 'HYS', '0', '121.158477', '36.776425', '93');
INSERT INTO `t_s_territory` VALUES ('975', '370702', '4', '潍城区', 'WCQ', '0', '119.024836', '36.7281', '94');
INSERT INTO `t_s_territory` VALUES ('976', '370703', '4', '寒亭区', 'HTQ', '0', '119.219734', '36.775491', '94');
INSERT INTO `t_s_territory` VALUES ('977', '370704', '4', '坊子区', 'FZQ', '0', '119.166485', '36.654448', '94');
INSERT INTO `t_s_territory` VALUES ('978', '370705', '4', '奎文区', 'KWQ', '0', '119.132486', '36.707676', '94');
INSERT INTO `t_s_territory` VALUES ('979', '370724', '4', '临朐县', 'LQX', '0', '118.542982', '36.5125059', '94');
INSERT INTO `t_s_territory` VALUES ('980', '370725', '4', '昌乐县', 'CLX', '0', '118.829914', '36.706945', '94');
INSERT INTO `t_s_territory` VALUES ('981', '370781', '4', '青州市', 'QZS', '0', '118.479622', '36.684528', '94');
INSERT INTO `t_s_territory` VALUES ('982', '370782', '4', '诸城市', 'ZCS', '0', '119.410103', '35.995654', '94');
INSERT INTO `t_s_territory` VALUES ('983', '370783', '4', '寿光市', 'SGS', '0', '118.790652', '36.85548', '94');
INSERT INTO `t_s_territory` VALUES ('984', '370784', '4', '安丘市', 'AQS', '0', '119.218978', '36.478494', '94');
INSERT INTO `t_s_territory` VALUES ('985', '370785', '4', '高密市', 'GMS', '0', '119.755597', '36.3825949', '94');
INSERT INTO `t_s_territory` VALUES ('986', '370786', '4', '昌邑市', 'CYS', '0', '119.398525', '36.85882', '94');
INSERT INTO `t_s_territory` VALUES ('987', '370802', '4', '市中区', 'SZQ', '0', '116.596614', '35.40819', '95');
INSERT INTO `t_s_territory` VALUES ('988', '370811', '4', '任城区', 'RCQ', '0', '116.628562', '35.433727', '95');
INSERT INTO `t_s_territory` VALUES ('989', '370826', '4', '微山县', 'WSX', '0', '117.128946', '34.8071', '95');
INSERT INTO `t_s_territory` VALUES ('990', '370827', '4', '鱼台县', 'YTX', '0', '116.650608', '35.012749', '95');
INSERT INTO `t_s_territory` VALUES ('991', '370828', '4', '金乡县', 'JXX', '0', '116.311532', '35.06662', '95');
INSERT INTO `t_s_territory` VALUES ('992', '370829', '4', '嘉祥县', 'JXX', '0', '116.342442', '35.407829', '95');
INSERT INTO `t_s_territory` VALUES ('993', '370830', '4', '汶上县', 'WSX', '0', '116.489043', '35.732799', '95');
INSERT INTO `t_s_territory` VALUES ('994', '370831', '4', '泗水县', 'SSX', '0', '117.251195', '35.664323', '95');
INSERT INTO `t_s_territory` VALUES ('995', '370832', '4', '梁山县', 'LSX', '0', '116.096044', '35.802306', '95');
INSERT INTO `t_s_territory` VALUES ('996', '370881', '4', '曲阜市', 'QFS', '0', '116.986532', '35.581137', '95');
INSERT INTO `t_s_territory` VALUES ('997', '370882', '4', '兖州市', 'YZS', '0', '116.783834', '35.553144', '95');
INSERT INTO `t_s_territory` VALUES ('998', '370883', '4', '邹城市', 'ZCS', '0', '117.003743', '35.405185', '95');
INSERT INTO `t_s_territory` VALUES ('999', '370902', '4', '泰山区', 'TSQ', '0', '117.135354', '36.192084', '96');

-- ----------------------------
-- Table structure for `t_s_timetask`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_timetask`;
CREATE TABLE `t_s_timetask` (
  `ID` varchar(32) NOT NULL,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(100) NOT NULL,
  `IS_EFFECT` varchar(1) NOT NULL,
  `IS_START` varchar(1) NOT NULL,
  `TASK_DESCRIBE` varchar(50) NOT NULL,
  `TASK_ID` varchar(100) NOT NULL,
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_timetask
-- ----------------------------
INSERT INTO `t_s_timetask` VALUES ('4028d881436d514601436d5219ab0159', null, null, null, '0 0/1 * * * ?', '0', '0', '测试Demo', 'taskDemoServiceTaskCronTrigger', null, null, null);

-- ----------------------------
-- Table structure for `t_s_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_type`;
CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) DEFAULT NULL,
  `typename` varchar(50) DEFAULT NULL,
  `typepid` varchar(32) DEFAULT NULL,
  `typegroupid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_type
-- ----------------------------
INSERT INTO `t_s_type` VALUES ('402889f8476650de01476666acbf0005', '01', '多文章', null, '402889f8476650de01476665dfe70002');
INSERT INTO `t_s_type` VALUES ('402889f8476650de01476666d5c30007', '02', '单文章', null, '402889f8476650de01476665dfe70002');
INSERT INTO `t_s_type` VALUES ('402889ff4728f2370147290a0f82001d', '1', '服务号', null, '402889ff4728f2370147290995f80018');
INSERT INTO `t_s_type` VALUES ('402889ff4728f2370147290a2d63001f', '2', '订阅号', null, '402889ff4728f2370147290995f80018');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216130051', '2', '菜单图标', null, '4028d881436d514601436d5215c30047');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216160052', '1', '系统图标', null, '4028d881436d514601436d5215c30047');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216190053', 'files', '附件', null, '4028d881436d514601436d5215e4004f');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d52161c0054', '1', '优质订单', null, '4028d881436d514601436d5215c90048');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d52161f0055', '2', '普通订单', null, '4028d881436d514601436d5215c90048');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216220056', '1', '签约客户', null, '4028d881436d514601436d5215cc0049');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216250057', '2', '普通客户', null, '4028d881436d514601436d5215cc0049');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216290058', '1', '特殊服务', null, '4028d881436d514601436d5215cf004a');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d52162e0059', '2', '普通服务', null, '4028d881436d514601436d5215cf004a');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d521633005a', 'single', '单条件查询', null, '4028d881436d514601436d5215d4004b');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d521638005b', 'group', '范围查询', null, '4028d881436d514601436d5215d4004b');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d52163d005c', 'Y', '是', null, '4028d881436d514601436d5215d7004c');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d521640005d', 'N', '否', null, '4028d881436d514601436d5215d7004c');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d521643005e', 'Integer', 'Integer', null, '4028d881436d514601436d5215db004d');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d521646005f', 'Date', 'Date', null, '4028d881436d514601436d5215db004d');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d52164b0060', 'String', 'String', null, '4028d881436d514601436d5215db004d');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d52164f0061', 'Long', 'Long', null, '4028d881436d514601436d5215db004d');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216530062', 'act', '工作流引擎表', null, '4028d881436d514601436d5215df004e');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216570063', 't_s', '系统基础表', null, '4028d881436d514601436d5215df004e');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d52165c0064', 't_b', '业务表', null, '4028d881436d514601436d5215df004e');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216600065', 't_p', '自定义引擎表', null, '4028d881436d514601436d5215df004e');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216640066', 'news', '新闻', null, '4028d881436d514601436d5215e4004f');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d5216670067', '0', '男性', null, '4028d881436d514601436d5215e90050');
INSERT INTO `t_s_type` VALUES ('4028d881436d514601436d52166a0068', '1', '女性', null, '4028d881436d514601436d5215e90050');

-- ----------------------------
-- Table structure for `t_s_typegroup`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_typegroup`;
CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) DEFAULT NULL,
  `typegroupname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_typegroup
-- ----------------------------
INSERT INTO `t_s_typegroup` VALUES ('402889f8476650de01476665dfe70002', 'cms_menu', 'CMS菜单类型');
INSERT INTO `t_s_typegroup` VALUES ('402889ff4728f2370147290995f80018', 'weixintype', '微信公众账号类型');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215c30047', 'icontype', '图标类型');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215c90048', 'order', '订单类型');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215cc0049', 'custom', '客户类型');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215cf004a', 'service', '服务项目类型');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215d4004b', 'searchmode', '查询模式');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215d7004c', 'yesorno', '逻辑条件');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215db004d', 'fieldtype', '字段类型');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215df004e', 'database', '数据表');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215e4004f', 'fieltype', '文档分类');
INSERT INTO `t_s_typegroup` VALUES ('4028d881436d514601436d5215e90050', 'sex', '性别类');

-- ----------------------------
-- Table structure for `t_s_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_user`;
CREATE TABLE `t_s_user` (
  `email` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `officePhone` varchar(20) DEFAULT NULL,
  `signatureFile` varchar(100) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  `type` varchar(2) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_user
-- ----------------------------
INSERT INTO `t_s_user` VALUES ('', '', '', null, '402881e4461f9c6401461fa2e6f50002', '', null);
INSERT INTO `t_s_user` VALUES ('', '', '', null, '402881e44648134a014648174a45000c', '', null);
INSERT INTO `t_s_user` VALUES (null, null, null, 'images/renfang/qm/licf.gif', '4028d881436d514601436d5215ac0043', '', null);
INSERT INTO `t_s_user` VALUES ('zhangdaiscott@163.com', '13426432910', '7496661', null, '4028d881436d514601436d5215b20044', '', null);
INSERT INTO `t_s_user` VALUES (null, null, null, null, '4028d881436d514601436d5215b80045', '', null);
INSERT INTO `t_s_user` VALUES (null, null, null, null, '4028d881436d514601436d5215bc0046', '', null);

-- ----------------------------
-- Table structure for `t_s_version`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_version`;
CREATE TABLE `t_s_version` (
  `ID` varchar(32) NOT NULL,
  `loginpage` varchar(100) DEFAULT NULL,
  `versioncode` varchar(50) DEFAULT NULL,
  `versionname` varchar(30) DEFAULT NULL,
  `versionnum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_version
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_accesstoken`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_accesstoken`;
CREATE TABLE `weixin_accesstoken` (
  `ID` varchar(32) NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `expires_ib` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_accesstoken
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_account`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_account`;
CREATE TABLE `weixin_account` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `accountname` varchar(200) DEFAULT NULL COMMENT '公众帐号名称',
  `accounttoken` varchar(200) DEFAULT NULL COMMENT '公众帐号TOKEN',
  `accountnumber` varchar(200) DEFAULT NULL COMMENT '公众微信号',
  `accounttype` varchar(50) DEFAULT NULL COMMENT '公众号类型',
  `accountemail` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `accountdesc` varchar(500) DEFAULT NULL COMMENT '公众帐号描述',
  `accountaccesstoken` varchar(1000) DEFAULT NULL COMMENT 'ACCESS_TOKEN',
  `accountappid` varchar(200) DEFAULT NULL COMMENT '公众帐号APPID',
  `accountappsecret` varchar(500) DEFAULT NULL COMMENT '公众帐号APPSECRET',
  `ADDTOEKNTIME` datetime DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `WEIXIN_ACCOUNTID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_account
-- ----------------------------
INSERT INTO `weixin_account` VALUES ('402881e8461795c201461795c2e90000', '捷微演示账号', 'jeecg', 'zhangdaiscott@163.com', '1', 'zhangdaiscott@163.com', '无', 'Ah8oz_tPVk9lI-3jwcR-d4WgbV8hdRyavLozH7pBHX7rqHsDh_rsJaRN9p0ZsRbmspQFdrjY3f9SQyEQacbhAw', 'wxa842e07813a1380a', 'd4506b6c9232e30715c4c9d5f3ac80da', '2014-08-09 23:24:00', 'admin', 'gh_fd03cca3459e');
INSERT INTO `weixin_account` VALUES ('4028d881474489d70147449988040025', 'ceshi', 'ceshi', '', '1', '', '', '', 'ceshi', 'ceshi', null, 'ceshi', 'ceshi');

-- ----------------------------
-- Table structure for `weixin_autoresponse`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_autoresponse`;
CREATE TABLE `weixin_autoresponse` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `rescontent` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_autoresponse
-- ----------------------------
INSERT INTO `weixin_autoresponse` VALUES ('402889ff4728a293014728b0c7da001b', '2014-07-12 11:49:39', '01', 'text', 'f7a8a3a946e55a940146e5a3e498004d', '微译使用指南', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_autoresponse` VALUES ('402889ff4728a293014728b155c8001c', '2014-07-12 11:50:16', '你好', 'text', '4028d8814734ee0d0147356b4c730010', '你好', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_autoresponse` VALUES ('f7a8a3a946e249c20146e26a10ca0019', '2014-06-28 20:19:00', '?', 'text', 'f7a8a3a946e249c20146e25c4dc7000c', '欢迎关注语', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_autoresponse` VALUES ('f7a8a3a946e55a940146e5a47b890050', '2014-06-29 11:21:40', '02', 'text', 'f7a8a3a946e55a940146e5a429cf004e', '天气使用指南', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_autoresponse` VALUES ('f7a8a3a946e55a940146e5a632220054', '2014-06-29 11:23:32', '03', 'text', 'f7a8a3a946e55a940146e5a53e6b0051', '大转盘指南', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_autoresponse` VALUES ('f7a8a3a946e55a940146e5a656150055', '2014-06-29 11:23:41', '04', 'text', 'f7a8a3a946e55a940146e5a584da0052', '刮刮乐指南', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_cms_ad`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_ad`;
CREATE TABLE `weixin_cms_ad` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_ad
-- ----------------------------
INSERT INTO `weixin_cms_ad` VALUES ('402881e44695183a014695214a510013', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:08:45', '管理员', 'upload/files/20140627233502FEzyc38j.jpg', '19300001024098134717639977056.jpg', 'IPHONE7');
INSERT INTO `weixin_cms_ad` VALUES ('402881e44695183a014695219fe70016', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:09:07', '管理员', 'upload/files/20140627232736z3SvfVEj.jpg', '634490825089531250.jpg', 'IPHONE');
INSERT INTO `weixin_cms_ad` VALUES ('402881e946ddea480146de053265000b', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-06-27 23:50:21', 'admin', 'upload/files/20140627235534VJM1pkx3.jpg', 'Img305735292.jpg', '黑莓');
INSERT INTO `weixin_cms_ad` VALUES ('402881e946ddea480146de0f3a810011', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-06-28 00:01:18', 'admin', 'upload/files/20140628000116OF07rm7E.jpg', '30_1i$1JxIOB.jpg', 'Lumia930 王者归来');

-- ----------------------------
-- Table structure for `weixin_cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_article`;
CREATE TABLE `weixin_cms_article` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `image_name` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `image_href` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `summary` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL COMMENT '内容',
  `column_id` varchar(36) DEFAULT NULL COMMENT '栏目id',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账户',
  `create_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_article
-- ----------------------------
INSERT INTO `weixin_cms_article` VALUES ('297e7eb6469a4a8901469a5e58c0000e', '测试一个小黄人的图片', '19343396_845725.jpg', 'upload/files/20140613235146eEgyESpy.jpg', '你看看这个小黄人美不美？', '<p><strong>我的小黄人是不是很好看啊</strong></p><p><strong><br/></strong></p><p><strong><br/></strong></p><p><span style=\"background-color: rgb(255, 255, 0);\"><strong>这个颜色怎么样啊。</strong></span></p>', '402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', '管理员', 'admin', '2014-06-14 20:33:33');
INSERT INTO `weixin_cms_article` VALUES ('297e7eb6469a4a8901469a5ef95c0011', '这个杀手帅不帅？', '1384480985636.jpg', 'upload/files/20140613235146eEgyESpy.jpg', '这个杀手帅不帅？', '<p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p><p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p>', '402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', '管理员', 'admin', '2014-06-14 20:34:14');
INSERT INTO `weixin_cms_article` VALUES ('402880e6477d5c2601477d5d8f260002', '123123', 'jeecg_scott.jpg', 'upload/files/20140728222625KXeCCRAG.jpg', '123123', '<p>123123123123</p>', '402889f84767413b0147674358370002', '402881e8461795c201461795c2e90000', 'admin', '4028d881436d514601436d5215ac0043', '2014-07-28 22:26:29');
INSERT INTO `weixin_cms_article` VALUES ('402889f346dc66c30146dc7c1c120002', '12', '1348502732_4991.gif', 'upload/files/20140613235146eEgyESpy.jpg', '12', '12', '402881e44695183a0146952426ce0022', '402881e8461795c201461795c2e90000', 'admin', '4028d881436d514601436d5215ac0043', '2014-06-27 16:40:59');

-- ----------------------------
-- Table structure for `weixin_cms_menu`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_menu`;
CREATE TABLE `weixin_cms_menu` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_menu
-- ----------------------------
INSERT INTO `weixin_cms_menu` VALUES ('402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:10:35', '管理员', 'upload/files/201406132357343zuaHgX4.jpg', '537f1f63dd1c9.jpg', '关于JEECG', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402881e44695183a014695234880001c', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:10:56', '管理员', 'upload/files/20140613235754hLRC87rF.jpg', '537f1f86602b3.jpg', '渠道代理', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402881e44695183a01469523f03a001f', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:11:39', '管理员', 'upload/files/201406132358039IpFSyet.jpg', '537f1f74d031c.jpg', '功能说明', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402881e44695183a0146952426ce0022', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:11:53', '管理员', 'upload/files/20140613235830M96wj4Lr.jpg', '537f1f98d6f42.jpg', '企业文化', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402881e446955c7c014695a72a610029', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:34:59', '管理员', 'upload/files/20140613235852gBTueAWO.jpg', '537f1faf595dd.jpg', '案例分享', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402881e446955c7c014695a774f9002c', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:18', '管理员', 'upload/files/20140613235911chsAs0Md.jpg', '537f1ca3cd562.jpg', '联系我们', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402881e446955c7c014695a7bc45002f', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:36', '管理员', 'upload/files/20140613235918OA8vt546.jpg', '537f1cb75c597.jpg', '轻松一刻', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402881e446955c7c014695a7f08b0032', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:50', '管理员', 'upload/files/20140613235932htqZFtCs.jpg', '537f1fc8d750b.jpg', '互动推广', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402881e446955c7c014695a836da0035', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:36:08', '管理员', 'upload/files/201407241133168ezfMs40.jpg', 'jeecg_scott.jpg', '升级公告', '01');
INSERT INTO `weixin_cms_menu` VALUES ('402889f84767413b0147674358370002', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-07-24 15:26:12', 'admin', 'upload/files/20140724152611YCkPnNNe.jpg', 'jeecg_scott.jpg', '123123', '02');

-- ----------------------------
-- Table structure for `weixin_cms_site`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_site`;
CREATE TABLE `weixin_cms_site` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(32) DEFAULT NULL,
  `COMPANY_TEL` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `SITE_LOGO` varchar(200) DEFAULT NULL,
  `SITE_NAME` varchar(100) DEFAULT NULL,
  `SITE_TEMPLATE_STYLE` varchar(50) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_site
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_cms_style`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_style`;
CREATE TABLE `weixin_cms_style` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `REVIEW_IMG_URL` varchar(100) DEFAULT NULL,
  `TEMPLATE_NAME` varchar(100) DEFAULT NULL,
  `TEMPLATE_URL` varchar(200) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_style
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_expandconfig`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_expandconfig`;
CREATE TABLE `weixin_expandconfig` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(200) DEFAULT NULL,
  `CLASSNAME` varchar(100) NOT NULL,
  `CONTENT` longtext,
  `KEYWORD` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_expandconfig
-- ----------------------------
INSERT INTO `weixin_expandconfig` VALUES ('402881e44667912a0146679390450001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.FanYiKeyService', '翻译', '翻译', '翻译');
INSERT INTO `weixin_expandconfig` VALUES ('402881e44667912a014667947a3a0003', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.TianQiKeyService', '天气预报', '天气', '天气预报');
INSERT INTO `weixin_expandconfig` VALUES ('402881e446950f86014695120f810001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.DaZhuanPanService', '大转盘', '大转盘', '大转盘');
INSERT INTO `weixin_expandconfig` VALUES ('402881e446950f8601469513ec670003', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.CmsService', 'CMS', 'cms', 'CMS,cms');
INSERT INTO `weixin_expandconfig` VALUES ('402881e4469ffe7a0146a000090d0001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.GuagualeService', '刮刮乐', '刮刮乐', '刮刮乐');
INSERT INTO `weixin_expandconfig` VALUES ('402881e747baf1ea0147bb79d2330007', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.WeixinPhotoService', '微相册', '微相册,相册', '微相册');
INSERT INTO `weixin_expandconfig` VALUES ('402881e9470273d2014702a94a1b001d', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.WeixinShopService', '微信商城', '微商城,商城', '微商城');

-- ----------------------------
-- Table structure for `weixin_group`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_group`;
CREATE TABLE `weixin_group` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '分组名称',
  `addtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_group
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_gzuserinfo`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_gzuserinfo`;
CREATE TABLE `weixin_gzuserinfo` (
  `id` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '主键',
  `subscribe` varchar(100) DEFAULT NULL COMMENT '是否关注',
  `openid` varchar(100) DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(200) DEFAULT NULL COMMENT '昵称',
  `sex` varchar(100) DEFAULT NULL COMMENT '性别',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `country` varchar(100) DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(400) DEFAULT NULL COMMENT '用户头像',
  `bzName` varchar(100) DEFAULT NULL COMMENT '备注名称',
  `groupId` varchar(100) DEFAULT NULL,
  `subscribe_time` varchar(100) DEFAULT NULL COMMENT '关注时间',
  `addtime` datetime DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_gzuserinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_hdrecord`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_hdrecord`;
CREATE TABLE `weixin_hdrecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime DEFAULT NULL,
  `HDID` varchar(100) DEFAULT NULL,
  `NICKNAME` varchar(200) DEFAULT NULL,
  `OPENDID` varchar(100) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_hdrecord
-- ----------------------------
INSERT INTO `weixin_hdrecord` VALUES ('402889ed472e852301472e8d20090002', '2014-07-13 15:08:26', '402880a9468a0bef01468a0e72840001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '2', null);
INSERT INTO `weixin_hdrecord` VALUES ('402889ed472e852301472e8e0b7e0003', '2014-07-13 15:09:26', '402881e6469a13b901469a1e9e420001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '2', null);
INSERT INTO `weixin_hdrecord` VALUES ('4028bc0647633a790147633d5ab10001', '2014-07-23 20:41:11', '402881e6469a13b901469a1e9e420001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '1', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_hdrecord` VALUES ('4028bc0647633a790147633ee1f50002', '2014-07-23 20:42:51', '402880a9468a0bef01468a0e72840001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '1', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_huodong`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_huodong`;
CREATE TABLE `weixin_huodong` (
  `id` varchar(100) NOT NULL COMMENT '键主',
  `title` varchar(400) DEFAULT NULL COMMENT '活动名称',
  `description` text COMMENT '活动描述',
  `priceone` varchar(400) DEFAULT NULL COMMENT '一等奖奖品',
  `onetotal` int(4) DEFAULT NULL COMMENT '一等奖数量',
  `pricetwo` varchar(400) DEFAULT NULL COMMENT '二等奖奖品',
  `twototal` int(4) DEFAULT NULL COMMENT '二等奖数量',
  `pricethree` varchar(400) DEFAULT NULL COMMENT '三等奖奖品',
  `threetotal` int(4) DEFAULT NULL COMMENT '三等奖数量',
  `starttime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `endtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `type` varchar(100) DEFAULT NULL COMMENT '活动类型',
  `gl` varchar(100) DEFAULT NULL,
  `count` varchar(10) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_huodong
-- ----------------------------
INSERT INTO `weixin_huodong` VALUES ('402880a9468a0bef01468a0e72840001', '国庆乐欢天', '活动期间参加抽奖，就有计划获得精美礼品一份！', '联想Thinkpad', '1', '苹果6', '2', '捷安特自行车', '3', '2014-06-10 16:32:00', '2014-07-12 14:59:51', '1', '12/100', '3', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_huodong` VALUES ('402881e6469a13b901469a1e9e420001', '微信大转盘摇奖', '活动期间参与摇奖，就送好礼！', '500万', '1', '200万', '2', '300万', '3', '2014-06-14 19:23:36', '2014-07-12 14:59:49', '2', '10/100', '3', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_menuentity`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_menuentity`;
CREATE TABLE `weixin_menuentity` (
  `ID` varchar(32) NOT NULL,
  `menukey` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orders` varchar(11) DEFAULT NULL,
  `templateid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `fatherid` varchar(32) DEFAULT NULL,
  `accountid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_astulwpsla864at9igbas3eic` (`fatherid`),
  CONSTRAINT `FK_astulwpsla864at9igbas3eic` FOREIGN KEY (`fatherid`) REFERENCES `weixin_menuentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_menuentity
-- ----------------------------
INSERT INTO `weixin_menuentity` VALUES ('402881e4464d026901464d05ab600001', 'c02', 'text', '微活动', '2', 'f7a8a3a946e249c20146e25c4dc7000c', 'click', null, null, '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402881e4464df45f01464df707760004', 'c0202', 'expand', '微商城', '0', '402881e9470273d2014702a94a1b001d', 'click', 'http://123.165.130.173/jeecg-weixin-steward/webpage/weixin/guanjia/other/dazhuanpan/index.html', '402881e4464d026901464d05ab600001', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402881e446a4f9400146a50183620008', 'c0203', 'expand', '微网站', '1', '402881e446950f8601469513ec670003', 'click', null, '402881e4464d026901464d05ab600001', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402889ff4728a293014728bc62250036', 'c03', 'text', '关于我们', '3', 'f7a8a3a946e55a940146e5c317f6005f', 'click', null, null, '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402889ff4728a293014728bcb3020038', 'c0302', 'text', '联系我们', '1', 'f7a8a3a946e55a940146e5c317f6005f', 'click', null, '402889ff4728a293014728bc62250036', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402889ff4728f237014728f2d39f0001', 'c01', null, '开源项目', '1', null, 'click', null, null, '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402889ff4728f237014728f4b8c70006', 'c0101', null, '开源微信系统', '', null, 'view', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01#rd', '402889ff4728f237014728f2d39f0001', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402889ff4728f237014728f52c0b0008', 'c0102', null, '快速开发平台', '', null, 'view', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=2&sn=a4a4bd237aff404b8044e59105b74c69#rd', '402889ff4728f237014728f2d39f0001', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402889ff4728f237014728f60f0f000b', 'c0301', null, '社区培训', '', null, 'view', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200211928&idx=1&sn=18baf4ad4076f2f42c7db938c1277b08#rd', '402889ff4728a293014728bc62250036', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402889ff4728f237014729029d940010', 'c0204', 'expand', '刮刮乐', '1', '402881e4469ffe7a0146a000090d0001', 'click', null, '402881e4464d026901464d05ab600001', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_menuentity` VALUES ('402889ff4728f237014729039c7c0014', 'c0201', 'text', '营销工具', '', 'f7a8a3a946e55a940146e5cfa5660070', 'click', null, '402881e4464d026901464d05ab600001', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_newsitem`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_newsitem`;
CREATE TABLE `weixin_newsitem` (
  `ID` varchar(32) NOT NULL,
  `new_type` varchar(255) DEFAULT NULL COMMENT '图文类型：图文还是外部url',
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `description` varchar(255) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `orders` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `templateid` varchar(32) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '外部URL',
  `create_date` date DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m8qs8ufeqkk5cx17budto66r0` (`templateid`),
  CONSTRAINT `FK_m8qs8ufeqkk5cx17budto66r0` FOREIGN KEY (`templateid`) REFERENCES `weixin_newstemplate` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_newsitem
-- ----------------------------
INSERT INTO `weixin_newsitem` VALUES ('402889ed472e852301472eb0d680000e', null, 'google', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-size: 16px; \"><strong><strong>JeeWx,&nbsp;</strong>敏捷微信开发，简称&quot;</strong><strong style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; font-size: xx-large; line-height: 48px;\">捷微</strong><strong style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; font-size: xx-large; line-height: 1.5;\">&quot;.</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-size: 16px; \"><strong>捷微是一款免费开源的JAVA微信公众账号</strong></span><strong style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; font-size: 16px; line-height: 1.5;\">开发平台.</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/><img src=\"http://dl2.iteye.com/upload/attachment/0098/8103/2bd30f19-2af5-368f-ba38-b3a5b37327a0.png\" alt=\"\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; \"/></p><p><span style=\"font-size: 16px; \"><strong>平台介绍：</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">一、简介</span></strong></p><p><span style=\"font-size: 16px; \">jeewx是一个开源，高效，敏捷的微信开发平台 ，&nbsp;采用JAVA语言它是基于<a target=\"_blank\" href=\"http://zhangdaiscott.github.io/jeecg/\" style=\"color: rgb(51, 102, 153);\">jeecg</a>这个企业级快速开发框架实现的。</span></p><p><span style=\"font-size: 16px; \">jeewx的目的是最大化的简化微信开发的流程，使用开发者能把最好的精力放到微信具体业务开发，并能以最快的时间完成。把一些常规而频繁的工作交由jeewx来处理即可，平台兼备的代码生成器，在线开发，可以快速的完成企业应用。为此jeewx提供了详细的二次开发文档，关键代码里还是相关的注释说明。jeewx采用插件的方式实现微信功能，不同的插件实现不同的微信功能。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">主要特性</span></strong></p><p><span style=\"font-size: 16px; \">1、基于快速开发平台<a target=\"_blank\" href=\"http://zhangdaiscott.github.io/jeecg/\" style=\"color: rgb(51, 102, 153);\">jeecg 3.4.4</a>最新版本，采用SpringMVC+Hibernate4+UI库+代码生成器+Jquery+Ehcache等主流架构技术</span></p><p><span style=\"font-size: 16px; \">2、支持企业快速开发，完善的用户组织机构，报表，强大的代码生成器快速有效的提高开发效率</span></p><p><span style=\"font-size: 16px; \">2、开源免费，jeewx遵循Apache2开源协议,免费提供使用。</span></p><p><span style=\"font-size: 16px; \">3、支持多用户多公众号管理</span></p><p><span style=\"font-size: 16px; \">4、详细的二次开发文档，并不断更新增加相关开发案例提供学习参考</span></p><p><span style=\"font-size: 16px; \">5、微信功能插件化开发，更易于定制和二次开发</span></p><p><span style=\"font-size: 16px; \">6、提供丰富的微信插件下载安装使用，总有一些是符合或接近你的需求</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">主要功能</span></strong></p><p><span style=\"font-size: 16px; \">1、微信接口认证</span></p><p><span style=\"font-size: 16px; \">2、菜单自定义</span></p><p><span style=\"font-size: 16px; \">3、文本管理和回复</span></p><p><span style=\"font-size: 16px; \">4</span><span style=\"font-size: 16px; \">、关注欢迎语</span></p><p><span style=\"font-size: 16px; \">5、关键字管理</span></p><p><span style=\"font-size: 16px; \">6、文本消息管理</span></p><p><span style=\"font-size: 16px; \">7、图文 消息管理</span></p><p><span style=\"font-size: 16px; \">8、微信账号管理</span></p><p><span style=\"font-size: 16px; \">9、用户管理</span></p><p><span style=\"font-size: 16px; \">10、角色管理</span></p><p><span style=\"font-size: 16px; \">11、菜单管理</span></p><p><span style=\"font-size: 16px; \">12、微信支持多用户多公众号</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong>后续发布功能：</strong></p><p><span style=\"font-size: 16px; \">1、微信大转盘</span></p><p><span style=\"font-size: 16px; \">2</span><span style=\"font-size: 16px; \">、微信刮刮乐</span></p><p><span style=\"font-size: 16px; \">3、微信CMS</span></p><p><span style=\"font-size: 16px; \">4</span><span style=\"font-size: 16px; \">、周边</span></p><p><span style=\"font-size: 16px; \">5、&nbsp;微信群发</span></p><p><span style=\"font-size: 16px; \">6</span><span style=\"font-size: 16px; \">、&nbsp;微信关注用户分组</span></p><p><span style=\"font-size: 16px; \">7、微信关注用户、</span></p><p><span style=\"font-size: 16px; \">8</span><span style=\"font-size: 16px; \">、微信扫描登录</span></p><p><span style=\"font-size: 16px; \">9</span><span style=\"font-size: 16px; \">、会员管理</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">最低系统需求</span></strong></p><p><span style=\"font-size: 16px; \">Tomcat6.0 或更高版本。</span></p><p><span style=\"font-size: 16px; \">MySQL 5.0 或更高版本。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-size: 16px; \">MyEclipse8.5或其他版本。</span><span style=\"font-size: 16px; \">&nbsp;</span><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/><span style=\"font-size: 16px; \"><strong>源码下载地址：</strong></span><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/><span style=\"font-size: 16px; \">&nbsp; &nbsp; &nbsp;</span><a href=\"https://code.csdn.net/zhangdaiscott/jeewx\" style=\"color: rgb(0, 102, 153);\"><span style=\"font-size: 16px; \">https://code.csdn.net/zhangdaiscott/jeewx</span></a><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/><br style=\"color: rgb(68, 68, 68); font-family: Tahoma, Helvetica, SimSun, sans-serif; \"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><strong style=\"color: rgb(68, 68, 68); font-family: 黑体; font-size: large; line-height: 27px;\">文档下载地址：</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp; &nbsp;链接: http://pan.baidu.com/s/1i3LxLmH 密码: j3co&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p><strong><span style=\"font-size: 16px; \">系统安装</span></strong></p><p><span style=\"font-size: 16px; \">1、将jeewx压缩包解压并上传到服务器。</span></p><p><span style=\"font-size: 16px; \">2、首次在浏览器中访问&nbsp;http://localhost:8080/jeewx/</span><span style=\"font-size: 16px; \">，默认admin登录，一个账号只能配置一个微信公众账号。</span></p><p><span style=\"font-size: 16px; \">3、按照安技术文档完成安装，如果有问题请访问官网讨论区寻求帮助。</span></p><p><span style=\"font-size: 16px; \">4、服务器配置&nbsp; &nbsp;&nbsp; &nbsp;</span></p><p><span style=\"font-size: 16px; \">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;URL:&nbsp; &nbsp;<a target=\"_blank\" href=\"http://xn--%2A%2A-r20k9d/jeewx/wechatController.do?wechat\" style=\"color: rgb(51, 102, 153);\">http://*地址*/jeewx/wechatController.do?wechat</a></span></p><p><span style=\"font-size: 16px; \">&nbsp; &nbsp;&nbsp; &nbsp;Token:&nbsp;&nbsp;jeecg<br/>5.云服务平台建议，可以采用<a target=\"_blank\" href=\"http://www.mopaas.com/\" style=\"color: rgb(51, 102, 153);\">MoPaaS</a></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><strong><span style=\"font-size: 16px; \">联系方式：</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">QQ &nbsp;群 : 287090836，129190229，175449166</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">官网: &nbsp; &nbsp;<a target=\"_blank\" href=\"http://www.jeewx.com/\" style=\"color: rgb(51, 102, 153);\">http://www.jeewx.com</a><br/>邮箱： &nbsp; jeecg@sina.com</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-size: 16px; \">系统首页展示：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/><img src=\"http://dl2.iteye.com/upload/attachment/0098/8101/e537f9a2-60dd-3b47-8294-21f3e4efa6cd.jpg\" alt=\"\" title=\"点击查看原始大小图片\" class=\"magplus\" style=\"border: 0px; cursor: url(http://www.iteye.com/images/magplus.gif), pointer; \" height=\"406\" width=\"650\"/><br/>&nbsp;<span style=\"font-size: 16px; \"><br/><img src=\"http://dl2.iteye.com/upload/attachment/0098/8099/cf2026b3-2cf6-3577-a37d-293c3e27def6.jpg\" alt=\"\" title=\"点击查看原始大小图片\" class=\"magplus\" style=\"border: 0px; cursor: url(http://www.iteye.com/images/magplus.gif), pointer; \" height=\"426\" width=\"650\"/><br/>&nbsp;</span></p><p><br/></p>', 'google', 'upload/files/20140713154642E71rUQGZ.gif', '1', 'google', '402889ed472e852301472eae90680008', '', null, '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_newsitem` VALUES ('4028bc064763571d01476358bc210004', null, 'zhangsan', '<h1 style=\"margin: 0px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 30px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG 智能开发平台</h1><h2 style=\"margin: 0px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">前言：</h2><p style=\"margin: 0px 0px 15px; padding: 0px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">随着 WEB UI 框架 ( EasyUI/Jquery UI/Ext/DWZ) 等的逐渐成熟,系统界面逐渐实现统一化，代码生成器也可以生成统一规范的界面！ 代码生成+手工MERGE半智能开发将是新的趋势，单表数据模型和一对多数据模型的增删改查功能直接生成使用,可节省60%工作量，快速提高开发效率！！！</p><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">简介</h2><p style=\"margin: 0px 0px 15px; padding: 0px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG（J2EE Code Generation）是一款基于代码生成器的智能开发平台。引领新的开发模式(Online Coding模式-&gt;代码生成器模式-&gt;手工MERGE智能开发)， 可以帮助解决Java项目60%的重复工作，让开发更多关注业务逻辑。既能快速提高开发效率，帮助公司节省人力成本，同时又不失灵活性。</p><p style=\"margin: 15px 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG宗旨是: 简单功能由代Online Coding配置出功能;复杂功能由代码生成器生成进行手工Merge; 复杂流程业务采用表单自定义，业务流程使用工作流来实现、扩展出任务接口，供开发编写业务逻辑。实现了流程任务节点和任务接口的灵活配置，既保证了公司流程的保密行，又减少了开发人员的工作量。</p><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">为什么选择JEECG?</h2><ul class=\" list-paddingleft-2\" style=\"margin: 15px 0px; padding: 0px 0px 0px 30px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \"><li><p>1.采用主流框架，容易上手; 代码生成器依赖性低,很方便的扩展能力，可完全实现二次开发;</p></li><li><p>2.开发效率很高,采用代码生成器，单表数据模型和一对多(父子表)数据模型，增删改查功能自动生成，菜单配置直接使用；</p></li><li><p>3.页面校验自动生成(必须输入、数字校验、金额校验、时间空间等);</p></li><li><p>4.封装完善的用户基础权限和数据字典等基础功能，直接使用无需修改</p></li><li><p>5.常用共通封装，各种工具类(定时任务,短信接口,邮件发送,Excel导出等),基本满足80%项目需求</p></li><li><p>6.集成简易报表工具，图像报表和数据导出非常方便，可极其方便的生成pdf、excel、word等报表；</p></li><li><p>7.集成工作流activiti，并实现了只需在页面配置流程转向，可极大的简化jbpm工作流的开发；用jbpm的流程设计器画出了流程走向，一个工作流基本就完成了，只需写很少量的java代码；</p></li><li><p>8.UI快速开发库，针对WEB UI进行标准式封装，页面统一采用自定义标签实现功能：列表数据展现、页面校验等,标签使用简单清晰且便于维护</p></li><li><p>9.在线流程设计，采用开源Activiti流程引擎，实现在线画流程,自定义表单,表单挂靠,业务流转</p></li><li><p>10.查询条件生成器：查询功能自动生成，后台动态拼SQL追加查询条件；支持多种匹配方式（全匹配/模糊查询/包含查询/不匹配查询）；</p></li></ul><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG 适用范围</h2><p style=\"margin: 0px 0px 15px; padding: 0px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG智能开发平台，可以应用在任何J2EE项目的开发中，尤其适合企业信息管理系统（MIS）、内部办公系统（OA）、企业资源计划系统（ERP） 、客户关系管理系统（CRM）等，其半智能手工Merge的开发方式，可以显著提高开发效率60%以上，极大降低开发成本。</p><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">JEECG 功能特点</h2><ul class=\" list-paddingleft-2\" style=\"margin: 15px 0px; padding: 0px 0px 0px 30px; color: rgb(51, 51, 51); font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \"><li><p>JEECG V3.0版本采用SpringMVC+Hibernate+UI快速开发库+Spring jdbc+ freemarker+ Highcharts+ bootstrap+Ehcache 的基础架构<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">采用面向声明的开发模式， 基于泛型编写极少代码即可实现复杂的数据展示、数据编辑、 表单处理等功能，再配合Online Coding在线开发与代码生成器的使用,将J2EE的开发效率提高6倍以上，可以将代码减少80%以上。<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">JEECG V3.0版本六大技术点: 1.Online Coding (通过在线配置实现一个表模型的增删改查功能，无需一行代码，支持用户自定义表单布局)2.代码生成器 3.UI快速开发库 4.在线流程设计 5.系统日志记录 6.Web GIS支持 7.移动平台支持Bootstrap(兼容Html5) 8.动态报表9.查询过滤器<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点一：</strong>Online Coding开发模式（通过配置实现单表模型和一对多数据模型的增删改查功能,No 代码,支持用户自定义表单布局）<span class=\"Apple-converted-space\">&nbsp;</span><br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点二：</strong>代码生成器，支持多种数据模型,根据表生成对应的Entity,Service,Dao,Action,JSP等,增删改查功能生成直接使用<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点三：</strong>UI快速开发库，针对WEB UI进行标准封装，页面统一采用UI标签实现功能：数据datagrid,表单校验,Popup,Tab等，实现JSP页面零JS，开发维护非常高效<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点四：</strong>在线流程定义，采用开源Activiti流程引擎，实现在线画流程,自定义表单,表单挂接,业务流转，流程监控，流程跟踪，流程委托等<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点五：</strong>系统日志记录 (详细记录操作日志)<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点六：</strong>Web GIS支持 （基础技术GIS的支持）<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点七：</strong>移动平台支持，对Bootstrap(兼容Html5)进行标准封装<span class=\"Apple-converted-space\">&nbsp;</span><br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \"><strong style=\"margin: 0px; padding: 0px; \">技术点八：</strong>动态报表功能（用户输入一个sql，系统自动解析生成报表）<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">JEECG V3.0,经过了专业压力测试,性能测试，保证后台数据的准确性和页面访问速度<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">支持多种浏览器: IE, 火狐, Google 等<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">支持数据库: Mysql,Oracle10g,Postgre,SqlServer等<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">基础权限: 用户，角色，菜单权限，按钮权限，数据权限<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">智能报表集成: 简易的图像报表工具和Excel导入导出<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">Web容器测试通过的有Jetty和Tomcat6,Weblogic<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">即将推出功能：分布式部署，云平台，移动平台开发，规则引擎<br style=\"margin: 0px; padding: 0px; \"/></p></li><li><p style=\"margin: 0px; padding: 0px; \">要求JDK1.6+<br style=\"margin: 0px; padding: 0px; \"/></p></li></ul><h2 style=\"margin: 20px 0px 10px; padding: 0px; font-family: Helvetica, &#39;microsoft yahei&#39;, Arial, sans-serif; font-weight: bold; line-height: 36px; color: black; text-rendering: optimizelegibility; font-size: 24px; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); font-style: normal; font-variant: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; \">系统演示</h2><p><br/></p>', 'zhangsan', 'upload/files/20140723211027iPYMKOfy.jpg', '1', 'zhangsan', '4028bc064763571d01476357b2f10001', '', '2014-07-23', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_newsitem` VALUES ('4028d881472f0d8101472f154b120003', null, '张三', '<p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><strong><span style=\"font-size: 18px; \">初步设想：</span></strong></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">通过中间件配置，将一个在用的业务系统转化为简版的移动应用。</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><span style=\"font-size: 18px; \"><strong>实现方法：</strong></span></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">当前移动应用解决方案很多：app?html5？微信</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">采用何种方法来实现？对于一个企业来讲，app分andriod和ios开发，维护成本很高，采用html5是一个不错的选择！</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">这里我们选择html5来实现移动的应用转换，采用微信作为中间平台，来实现便捷的移动端，因为他已经实现了多平台的兼容性，这块的技术问题，我们不需要再处理；</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">只需要保证我们开发的页面兼容微信网页即可；</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><span style=\"font-size: 18px; \"><strong>如何实现一个应用系统的轻量级转化呢？而不用重新开发代码</strong></span></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">最好的方法就是通过配置方式，讲应用功能转化为移动的功能，既可以在PC段使用，也可以在移动端使用；</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><span style=\"font-size: 18px; \"><strong>移动端主要功能点：</strong></span></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">1. 首页（菜单页面）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">2. 数据列表</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">3. 表单录入页面</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">通过这么一种配置方式，可以配置列表需要展示的字段，另外表单配置，配置表单展示的字段和字段的校验规则；</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">这样的话，功能需要的配置已经OK，下面我们采用模板语言freemarker写一套通用的模板兼容手机，pad，pc段即可（用户想要不同的效果，只需要改模板即可）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><br/></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \"><span style=\"font-size: 18px; \"><strong>具体实现方法：</strong></span></p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">1. 一个微信注册器（为什么需要这个，通过这个可以与微信服务器做很多交流，比如大转盘，推送信息等等）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">2. &nbsp;手机端的登录页面（与后台业务系统的交互）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">3. 移动端的首页（功能菜单展示）</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">4. 移动的数据列表</p><p style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); \">5. 移动表单（复杂的功能采用java增强+表单的模式）</p><p><br/></p>', '张三是简历', 'upload/files/20140713173643LtfDgtJW.png', '1', '个人简历', '402889ed472e852301472eae90680008', null, '2014-07-13', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_newsitem` VALUES ('4028d881472f356e01472f36d0a00003', null, '中央广播电台1', '<p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴2</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p>金融风暴金融风暴金融风暴</p><p><br/></p>', '金融风暴2', 'upload/files/20140715000625jz067Iqi.gif', '1', '新闻联播1', '4028d881472f356e01472f36461b0001', '', '2014-07-13', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_newstemplate`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_newstemplate`;
CREATE TABLE `weixin_newstemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `tempatename` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_newstemplate
-- ----------------------------
INSERT INTO `weixin_newstemplate` VALUES ('402889ed472e852301472eae90680008', '2014-07-13 15:44:57', '1221', 'common', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_newstemplate` VALUES ('4028bc064763571d01476357b2f10001', '2014-07-23 21:09:57', '999988', 'common', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_newstemplate` VALUES ('4028d881472f356e01472f36461b0001', '2014-07-13 18:13:11', '我的图文', 'common', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_photo`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_photo`;
CREATE TABLE `weixin_photo` (
  `ID` varchar(32) NOT NULL,
  `PHOTO_ALBUM_ID` varchar(32) DEFAULT NULL COMMENT '对应相册',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '相片描述',
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '相片名字',
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_photo
-- ----------------------------
INSERT INTO `weixin_photo` VALUES ('402881e547bb946e0147bb98361a0015', '402880e6478c6d8201478c72a6f00006', null, '4028d881436d514601436d5215ac0043', '2014-08-10 00:27:00', '未命名', '4028d881436d514601436d5215ac0043', '2014-08-10 00:27:00');

-- ----------------------------
-- Table structure for `weixin_photo_album`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_photo_album`;
CREATE TABLE `weixin_photo_album` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '相册名称',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '相册描述',
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '修改人',
  `PHOTO_ID` varchar(32) DEFAULT NULL COMMENT '封面相片',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_photo_album
-- ----------------------------
INSERT INTO `weixin_photo_album` VALUES ('402880e6478c6d8201478c72a6f00006', '相册', '张代浩相册', '402881e8461795c201461795c2e90000', '2014-07-31 20:43:49', '4028d881436d514601436d5215ac0043', '2014-08-10 00:27:02', '4028d881436d514601436d5215ac0043', '402881e547bb946e0147bb98361a0015');

-- ----------------------------
-- Table structure for `weixin_prizerecord`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_prizerecord`;
CREATE TABLE `weixin_prizerecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime DEFAULT NULL,
  `HDID` varchar(100) DEFAULT NULL,
  `MOBILE` varchar(100) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `PRIZE` varchar(100) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_prizerecord
-- ----------------------------
INSERT INTO `weixin_prizerecord` VALUES ('402889ed472e852301472e8f9a450004', '2014-07-13 15:11:08', '402881e6469a13b901469a1e9e420001', '13426432920', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '3', null);
INSERT INTO `weixin_prizerecord` VALUES ('402889ed472e852301472e9032520005', '2014-07-13 15:11:47', '402880a9468a0bef01468a0e72840001', '13426432920', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '1', null);
INSERT INTO `weixin_prizerecord` VALUES ('4028bc0647633a790147633f43980003', '2014-07-23 20:43:16', '402880a9468a0bef01468a0e72840001', '18615189705', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '1', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_receivetext`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_receivetext`;
CREATE TABLE `weixin_receivetext` (
  `ID` varchar(32) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `fromusername` varchar(255) DEFAULT NULL,
  `msgid` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `rescontent` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `tousername` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_receivetext
-- ----------------------------
INSERT INTO `weixin_receivetext` VALUES ('297e7eb6469a5fcc01469a6083fa0000', 'cms', '2014-06-14 20:35:54', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024762561460671840', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('297e7eb6469a728901469a73a2190001', 'cms', '2014-06-14 20:56:47', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024767943054693747', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('297e7eb6469a763101469a7dbcfb0000', 'cms', '2014-06-14 21:07:50', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024770786323043727', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('297e7eb6469a9ff201469aa081480000', 'cms', '2014-06-14 21:45:48', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024780574553511388', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('297e7eb6469a9ff201469aa20fe60001', 'cms', '2014-06-14 21:47:30', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6024781016935142886', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4464381350146438393630001', '1', '2014-05-28 23:47:14', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018503454080662192', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44643813501464386eaed0006', '2', '2014-05-28 23:50:53', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018504394678500022', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438135014643872f1a0007', '2', '2014-05-28 23:51:11', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018504467692944056', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4464381350146438a0d9e000f', '2', '2014-05-28 23:54:19', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018505245082024642', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4464381350146438aae1e0010', '2', '2014-05-28 23:55:00', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018505451240454852', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d0146438bb9110000', '2', '2014-05-28 23:56:08', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018505739003263687', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d0146438c66570001', '2', '2014-05-28 23:56:53', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018505936571759305', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d0146438c7a2b0002', '2', '2014-05-28 23:56:58', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018505936571759305', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d0146438cb5280003', '2', '2014-05-28 23:57:13', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018505936571759305', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d0146438cefda0004', '2', '2014-05-28 23:57:28', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018505936571759305', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d0146439298810005', '，2', '2014-05-29 00:03:39', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018507680328481495', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d01464392dd730006', '2', '2014-05-29 00:03:56', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018507757637892825', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d01464392f13c0007', '2', '2014-05-29 00:04:01', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018507757637892825', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d014643932c200008', '2', '2014-05-29 00:04:17', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018507757637892825', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446438b4d0146439366fb0009', '2', '2014-05-29 00:04:32', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018507757637892825', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446439a9e0146439b63b80000', '2', '2014-05-29 00:13:15', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018510149934676708', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446439a9e0146439cf6b80001', '2', '2014-05-29 00:14:58', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018510596611275496', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446439a9e0146439d0a870002', '2', '2014-05-29 00:15:03', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018510596611275496', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446439a9e0146439d45680003', '2', '2014-05-29 00:15:18', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018510596611275496', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446439a9e0146439d80410004', '2', '2014-05-29 00:15:33', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018510596611275496', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446439a9e0146439e7ac40005', '2', '2014-05-29 00:16:38', 'oPkVVuB0848Vy2Vzah5aaZwxGGQA', '6018511026108005097', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44643a1cd014643a291920000', '2', '2014-05-29 00:21:06', 'oPkVVuLMJ6y2vucDSCUdY6WABzkg', '6018512168569305840', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44643a1cd014643a5fba2000a', '3', '2014-05-29 00:24:49', 'oPkVVuLMJ6y2vucDSCUdY6WABzkg', '6018513139231914738', 'text', null, '0', 'gh_d58a98383644', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672cc15d0001', '天气', '2014-06-04 21:58:44', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073072884223902', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672cee860002', '天气', '2014-06-04 21:58:56', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073124423831455', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672d32ee0003', '天气', '2014-06-04 21:59:13', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073201733242784', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672d46f10004', '天气', '2014-06-04 21:59:19', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073201733242784', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672d81cf0005', '天气', '2014-06-04 21:59:34', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073201733242784', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672dbcd40006', '天气', '2014-06-04 21:59:49', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073201733242784', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672ecfbc0007', '天气', '2014-06-04 22:00:59', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073652704808869', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672ee3c80008', '天气', '2014-06-04 22:01:04', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073652704808869', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672f1eed0009', '天气', '2014-06-04 22:01:19', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073652704808869', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672a080146672f5afa000a', '天气', '2014-06-04 22:01:35', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021073652704808869', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef014667313ffb0000', '天气', '2014-06-04 22:03:39', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074335604608941', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef01466731cbb50001', '天气', '2014-06-04 22:04:15', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074494518398896', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef01466731dfb00002', '天气', '2014-06-04 22:04:20', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074494518398896', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef014667321a930003', '天气', '2014-06-04 22:04:35', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074494518398896', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef01466732559c0004', '天气', '2014-06-04 22:04:50', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074494518398896', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef01466732eb520005', '天气', '2014-06-04 22:05:28', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074808051011509', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef014667332a840006', '天气', '2014-06-04 22:05:44', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074881065455543', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef014667333e830007', '天气', '2014-06-04 22:05:50', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074881065455543', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef0146673379b50008', '天气', '2014-06-04 22:06:05', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074881065455543', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef01466733b4eb0009', '天气', '2014-06-04 22:06:20', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021074881065455543', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef014667358e8b000a', '天气', '2014-06-04 22:08:21', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021075551080353723', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446672fef01466735ac83000b', '天气哈尔滨', '2014-06-04 22:08:29', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021075585440092093', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c4014667439a860000', '天气', '2014-06-04 22:23:42', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021079498155298802', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c401466743c3490001', '天气哈尔滨', '2014-06-04 22:23:52', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021079549694906356', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c40146674587c70002', '天气哈尔滨', '2014-06-04 22:25:48', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021080047911112697', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c4014667459b9f0003', '天气哈尔滨', '2014-06-04 22:25:53', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021080047911112697', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c401466745d6890004', '天气哈尔滨', '2014-06-04 22:26:08', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021080047911112697', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c401466746118f0005', '天气哈尔滨', '2014-06-04 22:26:23', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021080047911112697', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c40146674656480006', '天气哈尔滨', '2014-06-04 22:26:41', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021080275544379386', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c4014667466a2e0007', '天气哈尔滨', '2014-06-04 22:26:46', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021080275544379386', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c401466746a5110008', '天气哈尔滨', '2014-06-04 22:27:01', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021080275544379386', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c401466746e0160009', '天气哈尔滨', '2014-06-04 22:27:16', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021080275544379386', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466741c40146674b3cbb000a', '天气哈尔滨', '2014-06-04 22:32:02', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021081654228881414', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446674d1d0146674e68b20000', '翻译', '2014-06-04 22:35:30', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021082543287111689', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446674d1d0146674e95e30001', '翻译', '2014-06-04 22:35:41', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021082599121686539', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446674d1d0146674ea9cb0002', '翻译', '2014-06-04 22:35:47', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021082599121686539', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446674d1d0146674ee4b40003', '翻译', '2014-06-04 22:36:02', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021082599121686539', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667515c01466751be700000', '翻译', '2014-06-04 22:39:08', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021083483884949521', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667515c01466751fdb90001', '翻译中国人', '2014-06-04 22:39:25', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021083556899393555', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667515c0146675226200002', '翻译大宝贝', '2014-06-04 22:39:35', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021083599849066517', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667515c01466752528a0003', '翻译大混蛋', '2014-06-04 22:39:46', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021083651388674071', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667515c01466752962a0004', '翻译操你大爷', '2014-06-04 22:40:04', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021083724403118105', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667515c01466752c6e00005', '/::-|', '2014-06-04 22:40:16', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021083775942725659', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a05e014667a14a960001', '翻译', '2014-06-05 00:06:02', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021105873549463731', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a05e014667a175880002', '天气', '2014-06-05 00:06:13', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021105925089071285', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667a47e600000', '天气', '2014-06-05 00:09:31', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021106771197628611', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667a4993e0001', '天气哈尔滨', '2014-06-05 00:09:38', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021106809852334277', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667a4cdbb0002', '天气哈尔滨', '2014-06-05 00:09:52', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021106865686909127', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667ad363f0003', '天气', '2014-06-05 00:19:01', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109223623954653', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667ad4f920004', '天气哈尔滨', '2014-06-05 00:19:09', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109262278660319', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667ade5930005', '天气哈尔滨', '2014-06-05 00:19:48', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109425487417569', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667ae16a50006', '天气哈尔滨', '2014-06-05 00:20:00', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109481321992419', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667ae2a6a0007', '天气哈尔滨', '2014-06-05 00:20:05', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109481321992419', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667a41a014667ae653c0008', '天气哈尔滨', '2014-06-05 00:20:20', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109481321992419', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667af53014667afe4290000', '天气哈尔滨', '2014-06-05 00:21:58', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109936588525797', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667af53014667afe46b0001', '天气哈尔滨', '2014-06-05 00:21:58', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109936588525797', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667af53014667b005c10002', '天气哈尔滨', '2014-06-05 00:22:07', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021109936588525797', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44667af53014667b039150003', '翻译中国', '2014-06-05 00:22:20', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021110082617413862', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466c8d9801466c8f03ad0000', '天气哈尔滨', '2014-06-05 23:04:10', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021461015805237365', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466c8d9801466c8f59de0001', '天气', '2014-06-05 23:04:32', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021461114589485175', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466c8d9801466c8f74d10002', '天气哈尔滨', '2014-06-05 23:04:39', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021461144654256249', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466c8d9801466c917de90003', '天气哈尔滨', '2014-06-05 23:06:52', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021461715884906627', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466c8d9801466c91e71d0004', '天气哈尔滨', '2014-06-05 23:07:19', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021461831849023623', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466c8d9801466c9206ed0005', '天气沈阳', '2014-06-05 23:07:27', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6021461866208761993', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466c8d9801466c94470b0007', '天气北京', '2014-06-05 23:09:55', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6021462501863921806', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4466c8d9801466c946a7a0008', '翻译你好', '2014-06-05 23:10:04', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6021462540518627472', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446950f8601469516a2b20005', '大转盘', '2014-06-13 19:57:07', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024381477602430111', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44695183a014695188db90000', '大转盘', '2014-06-13 19:59:12', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024382018768309416', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44695183a014695194edf0001', 'CMS', '2014-06-13 20:00:02', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024382233516674219', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44695183a0146951abdca0003', '大转盘', '2014-06-13 20:01:36', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6024382641538567341', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44695183a01469524b2c70024', ' cms', '2014-06-13 20:12:28', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024385441857244357', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44695183a01469524e3930025', 'CMS', '2014-06-13 20:12:41', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024385497691819208', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44695183a014695277c500026', 'CMS', '2014-06-13 20:15:31', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024386227836259531', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446952fde014695305bf00000', 'cms', '2014-06-13 20:25:12', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024388718917291230', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446952fde014695362ae00002', 'CMS', '2014-06-13 20:31:33', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024390355299831028', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146957852820001', 'CMS', '2014-06-13 21:43:49', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024408978278026744', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146957b3a180002', 'CMS', '2014-06-13 21:46:59', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6024409798616780285', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146957ff4980003', '天气哈尔滨', '2014-06-13 21:52:09', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024411125761674761', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146958078090004', 'CMS', '2014-06-13 21:52:43', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024411276085530124', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c01469581b2120006', 'cms', '2014-06-13 21:54:03', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024411619682913807', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c014695825da70007', 'cms', '2014-06-13 21:54:47', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024411808661474833', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146958271850008', 'cms', '2014-06-13 21:54:52', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024411808661474833', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146958285600009', 'cms', '2014-06-13 21:54:57', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024411808661474833', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c014695829932000a', 'cms', '2014-06-13 21:55:02', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024411808661474833', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146958508ad000b', 'cms', '2014-06-13 21:57:42', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024412560280751640', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146958525db000c', '翻译中国', '2014-06-13 21:57:49', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024412590345522714', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c014695865d23000d', 'cms', '2014-06-13 21:59:09', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6024412933942906397', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146958684be000e', 'cms', '2014-06-13 21:59:19', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024412976892579361', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c01469586f136000f', 'CMS', '2014-06-13 21:59:47', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6024413097151663652', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146958956a60011', 'cms', '2014-06-13 22:02:24', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6024413771461529143', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146958b2edb0012', 'cms', '2014-06-13 22:04:25', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6024414291152571964', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c014695940b7c0013', 'cms', '2014-06-13 22:14:05', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6024416786528570972', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446955c7c0146959a21cc001c', 'cms', '2014-06-13 22:20:44', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6024418495925554795', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e44695ebe3014695f5f3e70019', 'cms', '2014-06-14 00:01:02', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6024444338743775120', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4469ffe7a0146a000fe980003', '大转盘', '2014-06-15 22:49:18', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6025168014963350861', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4469ffe7a0146a00211840004', '大转盘', '2014-06-15 22:50:28', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6025168324200996177', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e4469ffe7a0146a00473890006', '刮刮乐', '2014-06-15 22:53:04', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6025168994215894361', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a00ebc0146a01e34d70000', '大转盘', '2014-06-15 23:21:12', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6025176231235788180', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a00ebc0146a01e3cd00001', '大转盘', '2014-06-15 23:21:14', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6025176231235788180', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a00ebc0146a022544b0003', '大转盘', '2014-06-15 23:25:42', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6025177408056827296', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f60d0146a4f721940001', ' cms', '2014-06-16 21:56:37', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6025525532336039206', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f60d0146a4f752ce0002', 'cms', '2014-06-16 21:56:50', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6025525579580679465', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f60d0146a4f7df1b0003', 'cms', '2014-06-16 21:57:26', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6025525742789436715', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f60d0146a4f86c5b0004', 'cms', '2014-06-16 21:58:02', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6025525893113292077', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f9400146a4fa19c90000', 'cms', '2014-06-16 21:59:52', 'oR0jFt6fH6nxwXRCNaVSi93S3L84', '6025526356969760049', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f9400146a4fce81f0002', 'cms', '2014-06-16 22:02:56', 'oR0jFt3HxVfz5hSV-ugO7VruAsro', '6025527151538709820', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f9400146a4fd0fbb0003', 'cms', '2014-06-16 22:03:06', 'oR0jFt6fH6nxwXRCNaVSi93S3L84', '6025527203078317374', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f9400146a4ffd6440004', 'cms', '2014-06-16 22:06:08', 'oR0jFt6fH6nxwXRCNaVSi93S3L84', '6025527984762365261', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f9400146a5004c4f0005', 'cms', '2014-06-16 22:06:38', 'oR0jFt6fH6nxwXRCNaVSi93S3L84', '6025528113611384144', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f9400146a500be810006', 'cms', '2014-06-16 22:07:07', 'oR0jFt5cNkybFxsPf3xLm39FEqgo', '6025528238165435730', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e446a4f9400146a5052338000e', '1', '2014-06-16 22:11:55', 'oR0jFt72mBBcs1f31PiBjSThaHwU', '6025529475116017000', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e946dda3270146dda635740000', '大转盘\n', '2014-06-27 22:06:35', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6029610020464759577', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e946dda3270146dda656900001', '大转盘', '2014-06-27 22:06:44', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6029610059119465245', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e946ddc9450146ddcd07600002', '刮刮乐', '2014-06-27 22:48:59', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6029620946861560923', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e94702b68b014702ba2e040000', '微商城', '2014-07-05 02:54:21', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6032281752115896513', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e94702b68b014702c00bb50001', '微商城', '2014-07-05 03:00:46', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6032283409973272808', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e94702b68b014702c47ed70002', '微商城', '2014-07-05 03:05:37', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6032284664103723267', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e94702c764014702ca45a00000', '\n微商城', '2014-07-05 03:11:56', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6032286283306393896', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('402881e94702c764014702ca7f360001', '微商城', '2014-07-05 03:12:11', 'oR0jFt0BHjQpJgViwVp-vCfjblUM', '6032286352025870635', 'text', null, '0', 'gh_7371a2c3fef2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d014735654f2b0002', '121', '2014-07-14 23:02:17', 'zhangsan', '1234567890123456', 'text', null, '0', '', '');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147356587280003', '?', '2014-07-14 23:02:31', 'zhangsan', '1234567890123456', 'text', null, '0', '123', '123');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d014735666a370004', 'hello', '2014-07-14 23:03:30', 'zhangsan', '1234567890123456', 'text', null, '0', '123', '123');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147356692cb0005', 'hello', '2014-07-14 23:03:40', 'zhangsan', '1234567890123456', 'text', null, '0', '123', '123');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147356740230007', '你好', '2014-07-14 23:04:24', 'zhangsan', '1234567890123456', 'text', null, '0', '123', '123');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147356781390008', '01', '2014-07-14 23:04:41', 'zhangsan', '1234567890123456', 'text', null, '0', '123', '123');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147356928140009', '01', '2014-07-14 23:06:29', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', 'gh_fd03cca3459e', 'gh_fd03cca3459e');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d01473569574d000a', '你好', '2014-07-14 23:06:41', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', 'gh_fd03cca3459e', 'gh_fd03cca3459e');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d014735698b46000b', '你好', '2014-07-14 23:06:55', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', 'gh_fd03cca3459e', 'gh_fd03cca3459e');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d01473569cbf0000c', '01', '2014-07-14 23:07:11', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', 'gh_fd03cca3459e', 'gh_fd03cca3459e');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d01473569fc14000d', '翻译你好', '2014-07-14 23:07:24', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', 'gh_fd03cca3459e', 'gh_fd03cca3459e');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147356a19cc000e', '天气北京', '2014-07-14 23:07:31', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', 'gh_fd03cca3459e', 'gh_fd03cca3459e');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147356ac6c2000f', '你好', '2014-07-14 23:08:15', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', 'gh_fd03cca3459e', 'gh_fd03cca3459e');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147356b7db90012', '你好', '2014-07-14 23:09:02', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', 'gh_fd03cca3459e', 'gh_fd03cca3459e');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d014735811b5c0014', '?', '2014-07-14 23:32:39', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', '', '');
INSERT INTO `weixin_receivetext` VALUES ('4028d8814734ee0d0147358149170015', '?', '2014-07-14 23:32:51', 'gh_fd03cca3459e', '1234567890123456', 'text', null, '0', '', '');

-- ----------------------------
-- Table structure for `weixin_shop_address`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_address`;
CREATE TABLE `weixin_shop_address` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `accountid` varchar(50) DEFAULT NULL COMMENT '公众帐号ID',
  `openid` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `userid` varchar(50) DEFAULT NULL COMMENT '用户ID2',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `area` varchar(50) DEFAULT NULL COMMENT '县区',
  `address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `realname` varchar(50) DEFAULT NULL COMMENT '收件人姓名',
  `tel` varchar(50) DEFAULT NULL COMMENT '收件人电话',
  `postno` varchar(10) DEFAULT NULL COMMENT '邮编',
  `alladdress` varchar(500) DEFAULT NULL,
  `defaultflag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_address
-- ----------------------------
INSERT INTO `weixin_shop_address` VALUES ('402881e6479b6c8601479b7091ee0004', 'admin', '2014-08-03 18:35:51', null, null, '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '4028d881436d514601436d5215ac0043', '河南省', '郑州市', '', '文化路97号', '付明星', '18838231664', null, '河南省郑州市文化路97号付明星18838231664', '0');

-- ----------------------------
-- Table structure for `weixin_shop_cart`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_cart`;
CREATE TABLE `weixin_shop_cart` (
  `id` varchar(40) NOT NULL COMMENT '购物车Id',
  `goods_id` varchar(40) DEFAULT NULL COMMENT '商品Id',
  `goods_property` varchar(200) DEFAULT NULL COMMENT '商品属性',
  `buy_price` double(10,0) DEFAULT NULL COMMENT '单价',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `total` double(10,0) DEFAULT NULL COMMENT '总结金额',
  `buyer_id` varchar(40) DEFAULT NULL COMMENT '买家Id',
  `seller_id` varchar(40) DEFAULT NULL COMMENT '卖家Id',
  `accountid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_cart
-- ----------------------------
INSERT INTO `weixin_shop_cart` VALUES ('402881e5470c28a701470c2e477f0006', '402881e94701df96014701f48ca00008', '', '4000', '1', '4000', '402881e5470a6e9a01470a8559c20001', null, null);

-- ----------------------------
-- Table structure for `weixin_shop_category`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_category`;
CREATE TABLE `weixin_shop_category` (
  `ID` varchar(36) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `IMGURL` varchar(200) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `SELLER_ID` varchar(36) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  `parentid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pyu50rd5olohgk0u8cnosgk3d` (`parentid`),
  CONSTRAINT `FK_pyu50rd5olohgk0u8cnosgk3d` FOREIGN KEY (`parentid`) REFERENCES `weixin_shop_category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_category
-- ----------------------------
INSERT INTO `weixin_shop_category` VALUES ('402881e947015a7001470161481b0002', '2014-07-04 20:37:38', 'admin', 'upload/files/20140704204055j06raaJy.jpg', '电子产品', '4028d881436d514601436d5215ac0043', '2014-07-09 16:14:02', '402881e8461795c201461795c2e90000', 'admin', null);
INSERT INTO `weixin_shop_category` VALUES ('402881e947015a7001470161a8050005', '2014-07-04 20:38:03', 'admin', 'upload/files/20140704204055j06raaJy.jpg', '电脑', '4028d881436d514601436d5215ac0043', '2014-07-09 16:14:11', '402881e8461795c201461795c2e90000', 'admin', '402881e947015a7001470161481b0002');
INSERT INTO `weixin_shop_category` VALUES ('402881e947015a700147016450170008', '2014-07-04 20:40:57', 'admin', 'upload/files/20140704204055j06raaJy.jpg', 'pad', '4028d881436d514601436d5215ac0043', '2014-07-09 16:14:23', '402881e8461795c201461795c2e90000', 'admin', '402881e947015a7001470161481b0002');

-- ----------------------------
-- Table structure for `weixin_shop_deal`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_deal`;
CREATE TABLE `weixin_shop_deal` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `deal_number` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `paytype` varchar(32) DEFAULT NULL COMMENT '支付方式',
  `pay_number` varchar(32) DEFAULT NULL COMMENT '交易号',
  `buyer_id` varchar(32) DEFAULT NULL COMMENT '买家id',
  `seller_id` varchar(32) DEFAULT NULL COMMENT '卖家id',
  `address_detail` varchar(32) DEFAULT NULL COMMENT '配送信息',
  `deal_statement` varchar(32) DEFAULT NULL COMMENT '订单状态',
  `sendtype` varchar(32) DEFAULT NULL COMMENT '配送方式',
  `express_name` varchar(32) DEFAULT NULL COMMENT '快递名称',
  `express_number` varchar(32) DEFAULT NULL COMMENT '运单号',
  `tel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `deal_time` varchar(32) DEFAULT NULL COMMENT '下单时间',
  `pay_time` varchar(32) DEFAULT NULL COMMENT '支付时间',
  `sendout_time` varchar(32) DEFAULT NULL COMMENT '发货时间',
  `confirm_time` varchar(32) DEFAULT NULL COMMENT '确认收获时间',
  `buyer_leave_words` varchar(32) DEFAULT NULL COMMENT '买家留言',
  `seller_leave_words` varchar(32) DEFAULT NULL COMMENT '卖家留言',
  `reduce_price` double DEFAULT NULL COMMENT '优惠降价',
  `yfmny` double DEFAULT NULL COMMENT '应付金额',
  `sfmny` double DEFAULT NULL COMMENT '实付金额',
  `jfmny` double DEFAULT NULL COMMENT '积分抵用金额',
  `memo` varchar(32) DEFAULT NULL COMMENT '备注',
  `goodid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_deal
-- ----------------------------
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479a921401479a9413270001', 'admin', '2014-08-03 14:35:01', null, null, '16015d47-c431-470a-9273-30fb89f5d208', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4000', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479ace8d01479ad0466d0001', '235', '2014-08-03 15:40:46', null, null, '75ac87c3-6587-405b-9b5d-63d71e828102', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b54110e0001', '235', '2014-08-03 18:04:43', null, null, '69d4dc13-b725-42a2-96c2-752518234fcf', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b5411780002', '235', '2014-08-03 18:04:43', null, null, '7375bc83-b6f7-4d16-8645-3f771b5ea69a', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b5411dd0003', '235', '2014-08-03 18:04:43', null, null, '6da59092-22da-42c7-9f53-c8b5c9242954', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b54121d0004', '235', '2014-08-03 18:04:43', null, null, '1ca7b82e-7b86-422c-9680-a6f27ad04c3c', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b54124b0005', '235', '2014-08-03 18:04:43', null, null, '029092c5-5cdc-43aa-9dc3-e8c178bbb88f', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b5412730006', '235', '2014-08-03 18:04:44', null, null, '2175e40f-103a-49a3-9aec-43972782f563', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b5412910007', '235', '2014-08-03 18:04:44', null, null, '22520f2a-d92d-4be4-8bb4-0a86196cfa2c', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b5412b70008', '235', '2014-08-03 18:04:44', null, null, 'f74add86-e576-4744-b747-b4ce25e7a143', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b4e8c01479b5412e50009', '235', '2014-08-03 18:04:44', null, null, 'd01d5bb7-04ed-4300-9b82-4eef38e295a1', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');
INSERT INTO `weixin_shop_deal` VALUES ('402881e6479b6c8601479b75ffc80006', '付明星', '2014-08-03 18:41:47', null, null, 'ffea1444-2e1a-4c65-9d7a-05d074cb74cb', '银联支付', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '河南省郑州市文化路97号', '未支付', null, '顺丰', null, null, null, null, null, null, '', null, null, '4500', null, null, null, '402881e94701df96014701f48ca00008');

-- ----------------------------
-- Table structure for `weixin_shop_goods`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_goods`;
CREATE TABLE `weixin_shop_goods` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `title` varchar(200) DEFAULT NULL COMMENT '标题信息',
  `title_img` varchar(100) DEFAULT NULL COMMENT '标题图片',
  `descriptions` longtext COMMENT '商品详情',
  `price` double DEFAULT NULL COMMENT '商品原价',
  `real_price` double DEFAULT NULL COMMENT '商品现价',
  `sale` double DEFAULT NULL COMMENT '折扣',
  `sell_count` int(11) DEFAULT NULL COMMENT '销售数量',
  `discuss_count` int(11) DEFAULT NULL COMMENT '评价数量',
  `good_count` int(11) DEFAULT NULL COMMENT '好评数量',
  `bad_count` int(11) DEFAULT NULL COMMENT '差评数量',
  `statement` varchar(32) DEFAULT NULL COMMENT '状态',
  `shelve_time` datetime DEFAULT NULL COMMENT '上架时间',
  `remove_time` datetime DEFAULT NULL COMMENT '下架时间',
  `express_name` varchar(32) DEFAULT NULL COMMENT '快递名称',
  `express_price` double DEFAULT NULL COMMENT '快递费用',
  `seller_id` varchar(36) DEFAULT NULL COMMENT '卖家ID',
  `accountid` varchar(200) DEFAULT NULL,
  `CATEGORY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_997yl0agvds726aknlc95grpo` (`CATEGORY_ID`),
  CONSTRAINT `FK_997yl0agvds726aknlc95grpo` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `weixin_shop_category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_goods
-- ----------------------------
INSERT INTO `weixin_shop_goods` VALUES ('402881e94701df96014701f48ca00008', 'admin', '2014-07-04 23:18:29', 'admin', '2014-08-03 17:51:08', '测试标题内容', 'upload/files/20140704231751jgyEMUFt.jpg', '测试测试', '50000', '4000', '1', '1', '0', '0', '0', '0', '2014-07-05 03:14:16', null, '顺丰', '500', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');
INSERT INTO `weixin_shop_goods` VALUES ('402881e94701df96014701fcbf3e000a', 'admin', '2014-07-04 23:27:27', '', null, '测试内容2', 'upload/files/20140704231751jgyEMUFt.jpg', '哦哦噢噢噢噢', '500', '200', '4', '0', '0', '0', '0', '0', '2014-07-04 23:27:27', '2014-07-04 23:27:27', '顺丰', '10', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a700147016450170008');
INSERT INTO `weixin_shop_goods` VALUES ('402881e94701df960147020c273b0010', 'admin', '2014-07-04 23:44:16', '', null, '12312', 'upload/files/20140704234334Vhfk9mYp.jpg', '<p><img src=\"http://localhost:8080/jeewx/plug-in/ueditor/jsp/upload1/20140704/53401404488560799.jpg\" title=\"634490825089531250.jpg\"/>我的测试内容</p>', '123', '123', '1', '0', '0', '0', '0', '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '11', '11', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');
INSERT INTO `weixin_shop_goods` VALUES ('402881e94701df960147020c273b0012', 'admin', '2014-07-04 23:44:16', '', '2014-07-05 01:09:46', '12312', 'upload/files/20140704234334Vhfk9mYp.jpg', '<p><img src=\"http://localhost:8080/jeewx/plug-in/ueditor/jsp/upload1/20140704/53401404488560799.jpg\" title=\"634490825089531250.jpg\"/>我的测试内容</p>', '123', '123', '1', '0', '0', '0', '0', '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '11', '11', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');
INSERT INTO `weixin_shop_goods` VALUES ('402881e94701df960147020c273b0013', 'admin', '2014-07-04 23:44:16', '', '2014-07-05 01:09:46', '12312', 'upload/files/20140704234334Vhfk9mYp.jpg', '<p><img src=\"http://localhost:8080/jeewx/plug-in/ueditor/jsp/upload1/20140704/53401404488560799.jpg\" title=\"634490825089531250.jpg\"/>我的测试内容</p>', '123', '123', '1', '0', '0', '0', '0', '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '11', '11', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');
INSERT INTO `weixin_shop_goods` VALUES ('402881e94701df960147020c273b0014', 'admin', '2014-07-04 23:44:16', '', '2014-07-05 01:09:46', '12312', 'upload/files/20140704234334Vhfk9mYp.jpg', '<p><img src=\"http://localhost:8080/jeewx/plug-in/ueditor/jsp/upload1/20140704/53401404488560799.jpg\" title=\"634490825089531250.jpg\"/>我的测试内容</p>', '123', '123', '1', '0', '0', '0', '0', '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '11', '11', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');
INSERT INTO `weixin_shop_goods` VALUES ('402881e94701df960147020c273b0015', 'admin', '2014-07-04 23:44:16', '', '2014-07-05 01:09:46', '12312', 'upload/files/20140704234334Vhfk9mYp.jpg', '<p><img src=\"http://localhost:8080/jeewx/plug-in/ueditor/jsp/upload1/20140704/53401404488560799.jpg\" title=\"634490825089531250.jpg\"/>我的测试内容</p>', '123', '123', '1', '0', '0', '0', '0', '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '11', '11', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');

-- ----------------------------
-- Table structure for `weixin_shop_member`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_member`;
CREATE TABLE `weixin_shop_member` (
  `id` varchar(40) NOT NULL COMMENT '主键Id',
  `USERNAME` varchar(100) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(100) NOT NULL COMMENT '密码',
  `accountid` varchar(100) DEFAULT NULL,
  `ADDTIME` datetime DEFAULT NULL COMMENT '注册时间',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_member
-- ----------------------------
INSERT INTO `weixin_shop_member` VALUES ('402881e5470a6e9a01470a8559c20001', 'tom', '111111', null, null, '18838231664');

-- ----------------------------
-- Table structure for `weixin_subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_subscribe`;
CREATE TABLE `weixin_subscribe` (
  `ID` varchar(32) CHARACTER SET utf8 NOT NULL,
  `accountid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `addTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `msgType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `templateId` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `templateName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of weixin_subscribe
-- ----------------------------
INSERT INTO `weixin_subscribe` VALUES ('402889ff472978290147297b54350004', '402881e8461795c201461795c2e90000', '2014-07-12 15:30:54', 'text', 'f7a8a3a946e249c20146e25c4dc7000c', '欢迎关注语');

-- ----------------------------
-- Table structure for `weixin_texttemplate`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_texttemplate`;
CREATE TABLE `weixin_texttemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_texttemplate
-- ----------------------------
INSERT INTO `weixin_texttemplate` VALUES ('4028d8814734ee0d0147356b4c730010', '2014-07-14 23:08:50', '你好，我是开源社区负责人，scott', '你好', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_texttemplate` VALUES ('f7a8a3a946e249c20146e25c4dc7000c', '2014-06-28 20:03:58', ' 欢迎您关注捷微团队，捷微是一款基于JAVA+MYSQL的微信公众平台第三方扩展框架，代码完全开源，方便二次开发。程序自身提供部分行业解决方案及丰富的营销功能。更多演示功能请查看下方菜单。官方网站：http://www.jeewx.com。\r\nQQ群：287090836\r\n论坛：www.jeecg.org', '欢迎关注语', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_texttemplate` VALUES ('f7a8a3a946e55a940146e5a3e498004d', '2014-06-29 11:21:01', '微译使用指南\r\n\r\n微译为用户提供专业的多语言翻译服务，目前支持以下翻译方向：\r\n    中 -> 英\r\n    英 -> 中\r\n    日 -> 中\r\n\r\n使用示例：\r\n    翻译我是中国人\r\n    翻译dream\r\n    翻译さようなら\r\n\r\n回复“?”显示主菜单', '微译使用指南', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_texttemplate` VALUES ('f7a8a3a946e55a940146e5a429cf004e', '2014-06-29 11:21:19', '发送天气+城市，例如\'天气广州\'\r\n', '天气使用指南', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_texttemplate` VALUES ('f7a8a3a946e55a940146e5a53e6b0051', '2014-06-29 11:22:30', '请输入\"大转盘\"，参与抽奖活动', '大转盘指南', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_texttemplate` VALUES ('f7a8a3a946e55a940146e5a584da0052', '2014-06-29 11:22:48', '请输入\"刮刮乐\"，参与抽奖活动', '刮刮乐指南', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_texttemplate` VALUES ('f7a8a3a946e55a940146e5c317f6005f', '2014-06-29 11:55:06', '社区负责：张代浩\r\n邮箱： jeecg@sina.com\r\n论坛： www.jeecg.org', '联系我们', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_texttemplate` VALUES ('f7a8a3a946e55a940146e5cfa5660070', '2014-06-29 12:08:49', '01  翻译\r\n02  天气\r\n03  大转盘\r\n04  刮刮乐', '营销工具', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_vip_info`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_vip_info`;
CREATE TABLE `weixin_vip_info` (
  `ID` varchar(36) NOT NULL,
  `VIP_NAME` varchar(100) NOT NULL,
  `VIP_IMG` varchar(200) DEFAULT NULL,
  `VIP_DESCRIBE` varchar(200) DEFAULT NULL,
  `VIP_COFING` varchar(20) DEFAULT NULL,
  `START_TIME` date DEFAULT NULL,
  `END_TIME` date DEFAULT NULL,
  `LEVEL_ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_vip_info
-- ----------------------------
INSERT INTO `weixin_vip_info` VALUES ('402881e5479afd0101479b7258ca0023', '黄金会员卡', 'upload/files/20140804022004UE5avXRs.png', '					      					      黄金会员卡,帝王享受\r\n					      \r\n					      \r\n					      ', null, '2014-08-03', null, '4', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_vip_info` VALUES ('402881e5479afd0101479b7cc102002b', '钻石会员卡', 'upload/files/20140804022016GE5JCfZ0.png', '					      					      钻石会员卡，至尊待遇，尊贵无比			      \r\n					      \r\n					      ', null, '2014-08-03', null, '5', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_vip_info` VALUES ('402881e5479afd0101479b7d792e002f', '普通会员卡', 'upload/files/20140804022031I66JtQG5.png', '					      普通会员卡,注册即可获得	      \r\n					      ', null, '2014-08-03', null, '1', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_vip_info` VALUES ('402881e5479afd0101479b7e64c00032', '青铜会员卡', 'upload/files/20140804022040CxBHjCcT.png', '					      活跃用户才能获得的会员卡	      \r\n					      ', null, '2014-08-03', null, '2', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_vip_info` VALUES ('402881e5479afd0101479b7ee8aa0035', '白银会员卡', 'upload/files/20140804022243rk2FhIWa.png', '					      					      					      核心用户才能获取的会员卡，享受精致生活 \r\n					      \r\n					      \r\n					      ', null, '2014-08-03', null, '3', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_vip_member`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_vip_member`;
CREATE TABLE `weixin_vip_member` (
  `ID` varchar(36) NOT NULL,
  `MEMBER_NAME` varchar(100) DEFAULT NULL,
  `MEMBER_BALANCE` decimal(9,2) unsigned zerofill DEFAULT '0000000.00',
  `MEMBER_INTEGRAL` int(9) DEFAULT '0',
  `CREATE_TIME` date NOT NULL,
  `VIP_ID` varchar(36) DEFAULT NULL,
  `MEMBER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_vip_member
-- ----------------------------
INSERT INTO `weixin_vip_member` VALUES ('402881e5479afd0101479b7cc102002c', 'admin', '0000000.00', '0', '2014-08-04', '402881e5479afd0101479b7cc102002b', '4028d881436d514601436d5215ac0043');
