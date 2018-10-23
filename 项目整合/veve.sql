/*
Navicat MySQL Data Transfer

Source Server         : news
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : veve

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-08-30 17:02:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
INSERT INTO `tb_type` VALUES ('1', '普通用户');
INSERT INTO `tb_type` VALUES ('2', '高级用户');
INSERT INTO `tb_type` VALUES ('3', '管理员');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_type_id` (`typeid`),
  CONSTRAINT `fk_user_type_id` FOREIGN KEY (`typeid`) REFERENCES `tb_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '张三', '1990-01-01', '28', '1');
INSERT INTO `tb_user` VALUES ('2', '李四', '1992-01-01', '26', '2');
INSERT INTO `tb_user` VALUES ('3', '王五', '1991-01-01', '27', '3');
INSERT INTO `tb_user` VALUES ('4', '赵刘', '1999-01-01', '19', '1');
