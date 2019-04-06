/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : bar_system

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2019-04-05 20:17:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_id` varchar(10) NOT NULL,
  `admin_pwd` varchar(15) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('admin', '123456');
INSERT INTO `tb_admin` VALUES ('baidu', '123456');
INSERT INTO `tb_admin` VALUES ('soushu', 'souhu');

-- ----------------------------
-- Table structure for tb_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_list`;
CREATE TABLE `tb_list` (
  `member_id` varchar(25) NOT NULL,
  `thing_id` varchar(15) NOT NULL,
  `thing_name` varchar(20) NOT NULL,
  `thing_money` varchar(5) NOT NULL,
  `thing_status` varchar(2) DEFAULT NULL,
  KEY `member_id` (`member_id`),
  KEY `thing_id` (`thing_id`),
  CONSTRAINT `tb_list_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`member_id`),
  CONSTRAINT `tb_list_ibfk_2` FOREIGN KEY (`thing_id`) REFERENCES `tb_thing` (`thing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_list
-- ----------------------------
INSERT INTO `tb_list` VALUES ('140712199412123456', '1', '网站定制开发', '2000', '0');
INSERT INTO `tb_list` VALUES ('140712199412123456', '10', '垂直平台服务', '6000', '2');
INSERT INTO `tb_list` VALUES ('140712199412123456', '24', 'unity3d游戏制作', '5000', '0');
INSERT INTO `tb_list` VALUES ('140712199412123456', '26', '官网主页设计', '500', '0');

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `member_id` varchar(25) NOT NULL,
  `member_pwd` varchar(15) NOT NULL,
  `member_money` varchar(5) DEFAULT NULL,
  `member_name` varchar(10) NOT NULL,
  `member_tel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO `tb_member` VALUES ('140712199412123456', '123456', '70.5', '张六', '13432515126');

-- ----------------------------
-- Table structure for tb_thing
-- ----------------------------
DROP TABLE IF EXISTS `tb_thing`;
CREATE TABLE `tb_thing` (
  `thing_id` varchar(15) NOT NULL,
  `thing_name` varchar(20) NOT NULL,
  `thing_money` varchar(10) NOT NULL,
  PRIMARY KEY (`thing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_thing
-- ----------------------------
INSERT INTO `tb_thing` VALUES ('1', '网站定制开发', '2000');
INSERT INTO `tb_thing` VALUES ('10', '垂直平台服务', '6000');
INSERT INTO `tb_thing` VALUES ('11', '三维片头设计', '3000');
INSERT INTO `tb_thing` VALUES ('12', 'AE模板工程制定', '2800');
INSERT INTO `tb_thing` VALUES ('13', '企业宣传片拍摄', '20000');
INSERT INTO `tb_thing` VALUES ('14', '广告文案撰写', ' 1980');
INSERT INTO `tb_thing` VALUES ('15', '中式家装设计', '50/平方');
INSERT INTO `tb_thing` VALUES ('16', '旅游区公共设施设计', '1000');
INSERT INTO `tb_thing` VALUES ('17', '景区营销方案', '6000');
INSERT INTO `tb_thing` VALUES ('18', '文创双肩包设计', '1000');
INSERT INTO `tb_thing` VALUES ('19', '吉祥物IP设计', '2000');
INSERT INTO `tb_thing` VALUES ('2', '企业网站开发', '2500');
INSERT INTO `tb_thing` VALUES ('20', '平面方案', '600/');
INSERT INTO `tb_thing` VALUES ('21', '效果设计', '1000/');
INSERT INTO `tb_thing` VALUES ('22', '三层欧式别墅设计', '32000');
INSERT INTO `tb_thing` VALUES ('23', '高端别墅设计', '10000');
INSERT INTO `tb_thing` VALUES ('24', 'unity3d游戏制作', '5000');
INSERT INTO `tb_thing` VALUES ('25', 'vr全景拍摄', '2000');
INSERT INTO `tb_thing` VALUES ('26', '官网主页设计', '500');
INSERT INTO `tb_thing` VALUES ('3', '公众平台开发', '1300');
INSERT INTO `tb_thing` VALUES ('4', '小程序开发', '1600');
INSERT INTO `tb_thing` VALUES ('5', '海报设计', '60');
INSERT INTO `tb_thing` VALUES ('6', 'logo设计', '200');
INSERT INTO `tb_thing` VALUES ('600', '官网主页设计', '100');
INSERT INTO `tb_thing` VALUES ('7', '项目策划', '600');
INSERT INTO `tb_thing` VALUES ('8', 'SEM托管服务', '12345');
INSERT INTO `tb_thing` VALUES ('9', 'SEO站群服务', '10000');
