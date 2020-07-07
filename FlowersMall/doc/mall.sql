/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2020-03-07 18:11:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '爱情鲜花', '0', '1');
INSERT INTO `classification` VALUES ('2', '生日鲜花', '0', '1');
INSERT INTO `classification` VALUES ('3', '友情鲜花', '0', '1');
INSERT INTO `classification` VALUES ('4', '问候长辈', '0', '1');
INSERT INTO `classification` VALUES ('5', '玫瑰', '2', '2');
INSERT INTO `classification` VALUES ('6', '康乃馨', '2', '2');
INSERT INTO `classification` VALUES ('7', '百合', '2', '2');
INSERT INTO `classification` VALUES ('9', '婚庆鲜花', '0', '1');
INSERT INTO `classification` VALUES ('10', '郁金香', '4', '2');
INSERT INTO `classification` VALUES ('11', '马蹄莲', '3', '2');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('10', '1', '李强', '上海市崇明区长江路199号海上风华大厦16层3-2室', '18222924001', '1096', '4', '2020-02-19 20:23:43');
INSERT INTO `order` VALUES ('11', '1', '李强', '北京市天安门大院', '18222924001', '2297', '3', '2020-02-19 20:24:50');
INSERT INTO `order` VALUES ('12', '1', '李强', '广州市001', '18222924001', '398', '1', '2020-02-19 20:25:29');
INSERT INTO `order` VALUES ('13', '1', '美团空', '云南省咯恶露OK聚聚V5', '1822232555', '697', '1', '2020-02-20 12:15:38');
INSERT INTO `order` VALUES ('14', '1', 'xiaoming', '北京市天安门001', '110', '7479', '4', '2020-03-01 22:52:40');
INSERT INTO `order` VALUES ('15', '1', 'JinZY', '北京市东城区001号院', '18855556666', '214', '1', '2020-03-07 14:23:47');
INSERT INTO `order` VALUES ('16', '2', '卢阳', '上海市东方之珠01层', '16612345678', '204', '2', '2020-03-07 15:26:55');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('14', '10', '9', '2', '598');
INSERT INTO `order_item` VALUES ('15', '10', '12', '1', '199');
INSERT INTO `order_item` VALUES ('16', '10', '13', '1', '299');
INSERT INTO `order_item` VALUES ('17', '11', '13', '1', '299');
INSERT INTO `order_item` VALUES ('18', '11', '14', '2', '1998');
INSERT INTO `order_item` VALUES ('19', '12', '12', '2', '398');
INSERT INTO `order_item` VALUES ('20', '13', '9', '1', '299');
INSERT INTO `order_item` VALUES ('21', '13', '12', '2', '398');
INSERT INTO `order_item` VALUES ('22', '14', '9', '1', '299');
INSERT INTO `order_item` VALUES ('23', '14', '12', '5', '3184');
INSERT INTO `order_item` VALUES ('24', '14', '14', '3', '3996');
INSERT INTO `order_item` VALUES ('25', '15', '9', '1', '58');
INSERT INTO `order_item` VALUES ('26', '15', '12', '2', '156');
INSERT INTO `order_item` VALUES ('27', '16', '9', '2', '116');
INSERT INTO `order_item` VALUES ('28', '16', '13', '1', '88');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `shop_price` bigint(20) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('9', '5', '蓝玫瑰，没有天然的蓝玫瑰，属于染色鲜花。可保存半年之久。蓝玫瑰花语是“不可能的事”，在爱情中有很多不可能的事，但所爱隔山海，山海皆可平。', '没有天然的蓝玫瑰，属于染色鲜花。可保存半年之久。蓝玫瑰花语是“不可能的事”。', '/mall/admin/product/img/D4DD38BED4E695A817212217C246B5.jpg', '58', '198', '1', '2020-03-07 14:12:32');
INSERT INTO `product` VALUES ('11', '10', '粉玫瑰，颜色娇嫩可爱，它的花语是宠爱，总有一天，你会遇到一个把你紧紧抱在怀中的人。', '颜色娇嫩可爱，它的花语是宠爱，总有一天，你会遇到一个把你紧紧抱在怀中的人。', '/mall/admin/product/img/307772C698AF095C444328C669637C.jpg', '66', '138', '0', '2020-03-07 14:12:39');
INSERT INTO `product` VALUES ('12', '7', '紫玫瑰，紫色高贵，神秘，紫玫瑰的花语是守护，守护爱情，守护爱人。', '紫色高贵，神秘，紫玫瑰的花语是守护，守护爱情，守护爱人。', '/mall/admin/product/img/0ACFA69789B4ACF565E7E8D14515DA.jpg', '78', '118', '1', '2020-03-07 14:12:49');
INSERT INTO `product` VALUES ('13', '7', '香槟玫瑰，醇厚香槟酒的奶白色，花语是我只钟情你一人，对爱的告白。', '醇厚香槟酒的奶白色，花语是我只钟情你一人，对爱的告白。', '/mall/admin/product/img/6399B5149BAFE79A67723B6FC4AB6E.jpg', '88', '66', '1', '2020-03-05 22:18:38');
INSERT INTO `product` VALUES ('14', '6', '白玫瑰，白玫瑰并不是冷清的白，属于温柔的白色，让人觉得世间美好，白玫瑰花语是崇拜的爱。', '白玫瑰并不是冷清的白，属于温柔的白色，让人觉得世间美好，白玫瑰花语是崇拜的爱。11', '/mall/admin/product/img/CCCEB66226AA381D4A74C68ED47323.jpg', '98', '128', '1', '2020-03-07 14:12:58');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jinzhiyuan', '靳之源', 'jinzhiyuan', '18222920001', '天津河东', '110@qq.com');
INSERT INTO `user` VALUES ('2', 'luyy', '卢洋洋', 'luyy', '18812345678', '深圳市大湾区002号', '18812345678@164.com');
INSERT INTO `user` VALUES ('3', 'zhangwei', '张威', 'zhangwei', '18812340001', '杭州市滨海区003号', '18812340001@164.com');
