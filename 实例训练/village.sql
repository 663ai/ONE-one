/*
Navicat MySQL Data Transfer

Source Server         : news
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : village

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-09-30 20:08:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `apname` varchar(255) NOT NULL,
  `acname` varchar(255) NOT NULL,
  `atime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('物业王', '会长李', '2018-09-28');

-- ----------------------------
-- Table structure for audio
-- ----------------------------
DROP TABLE IF EXISTS `audio`;
CREATE TABLE `audio` (
  `auid` int(11) NOT NULL AUTO_INCREMENT,
  `aud` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audio
-- ----------------------------
INSERT INTO `audio` VALUES ('1', null);

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cnumber` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `ctime` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '500', '300', '2018-09-28');
INSERT INTO `car` VALUES ('2', '500', '499', '2018-09-27');
INSERT INTO `car` VALUES ('3', '500', '500', '2018-09-27');
INSERT INTO `car` VALUES ('4', '500', '500', '2018-09-24');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(255) NOT NULL COMMENT '业主名字',
  `hnumber` int(11) NOT NULL COMMENT '业主家庭数量',
  `hphone` varchar(11) NOT NULL,
  `hwater` varchar(255) NOT NULL,
  `hfire` varchar(255) NOT NULL,
  `hnet` varchar(255) NOT NULL,
  `hcar` varchar(255) NOT NULL COMMENT '格式：x-xxx',
  `hcost` varchar(255) NOT NULL,
  `hele` varchar(255) NOT NULL,
  `htime` date NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '张三', '5', '12345678911', '已缴', '已缴', '已缴', '1-001', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('2', '李四', '6', '12345678944', '已缴', '已缴', '已缴', '1-002', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('3', '王五', '3', '12345678944', '已缴', '未缴', '未缴', '0', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('4', '张一', '5', '12345678911', '已缴', '已缴', '已缴', '1-003', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('5', '李三', '6', '12345678944', '已缴', '已缴', '已缴', '1-004', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('6', '王四', '3', '12345678944', '已缴', '未缴', '未缴', '0', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('7', '老六', '2', '12345648797', '已缴', '已缴', '已缴', '0', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('8', '张七', '5', '12345678911', '已缴', '已缴', '已缴', '1-005', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('9', '李天', '6', '12345678944', '已缴', '已缴', '已缴', '1-006', '已缴', '已缴', '2018-09-28');
INSERT INTO `house` VALUES ('10', '王八', '3', '12345678944', '已缴', '未缴', '未缴', '0', '已缴', '已缴', '2018-09-28');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `managerid` int(11) NOT NULL AUTO_INCREMENT,
  `managername` varchar(20) NOT NULL,
  `passwd` varchar(15) NOT NULL,
  `mstate` varchar(2) DEFAULT '1' COMMENT '1-可用\r\n2-不可用\r\n\r\n',
  PRIMARY KEY (`managerid`)
) ENGINE=InnoDB AUTO_INCREMENT=1836254612 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('521877069', '1', '1', '1');
INSERT INTO `manager` VALUES ('1004671380', '5', '5', '1');
INSERT INTO `manager` VALUES ('1197204293', '2', '2', '0');
INSERT INTO `manager` VALUES ('1205745243', '4', '4', '1');
INSERT INTO `manager` VALUES ('1566434852', '6', '6', '0');
INSERT INTO `manager` VALUES ('1836254611', '3', '3', '0');

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `water` varchar(255) NOT NULL,
  `fire` varchar(255) NOT NULL,
  `net` varchar(255) NOT NULL,
  `ele` varchar(255) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power
-- ----------------------------
INSERT INTO `power` VALUES ('1', '正常', '中断', '正常', '正常', '2018-09-28');

-- ----------------------------
-- Table structure for safe
-- ----------------------------
DROP TABLE IF EXISTS `safe`;
CREATE TABLE `safe` (
  `said` int(11) NOT NULL,
  `saa` varchar(255) NOT NULL,
  `sab` varchar(255) NOT NULL,
  `sac` varchar(255) NOT NULL,
  `sad` varchar(255) NOT NULL,
  `sae` varchar(255) NOT NULL,
  `saf` varchar(255) NOT NULL,
  `sag` varchar(255) NOT NULL,
  `satime` date NOT NULL,
  PRIMARY KEY (`said`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of safe
-- ----------------------------
INSERT INTO `safe` VALUES ('1', '正常', '故障', '故障', '正常', '正常', '正常', '正常', '2018-09-28');
INSERT INTO `safe` VALUES ('2', '正常', '正常', '故障', '正常', '正常', '正常', '正常', '2018-09-27');
INSERT INTO `safe` VALUES ('3', '正常', '正常', '故障', '正常', '正常', '正常', '正常', '2018-09-26');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) NOT NULL,
  `sage` varchar(255) NOT NULL,
  `sphone` int(12) NOT NULL,
  `ssex` varchar(255) NOT NULL,
  `stime` date NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', '小李', '20', '1234567897', '男', '2018-09-28');
INSERT INTO `staff` VALUES ('2', '老王', '53', '1234567897', '男', '2018-09-27');
INSERT INTO `staff` VALUES ('3', '老刘', '52', '1234567897', '男', '2018-09-26');
INSERT INTO `staff` VALUES ('4', '老李', '62', '1234567897', '男', '2018-09-25');
INSERT INTO `staff` VALUES ('5', '小王', '21', '1234567897', '男', '2018-09-24');
INSERT INTO `staff` VALUES ('6', '小刘', '18', '1234567897', '男', '2018-09-23');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vtime` date NOT NULL,
  `va` varchar(255) DEFAULT NULL,
  `vb` varchar(255) DEFAULT NULL,
  `vc` varchar(255) DEFAULT NULL,
  `vd` varchar(255) DEFAULT NULL,
  `ve` varchar(255) DEFAULT NULL,
  `vf` varchar(255) DEFAULT NULL,
  `vg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '2018-09-28', null, null, null, null, null, null, null);
