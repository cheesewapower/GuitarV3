/*
Navicat MySQL Data Transfer

Source Server         : my Connection
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : guitar

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-06-02 08:59:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for guitar
-- ----------------------------
DROP TABLE IF EXISTS `guitar`;
CREATE TABLE `guitar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guitar_price` double DEFAULT NULL,
  `guitar_serial_number` varchar(255) DEFAULT NULL,
  `spec_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ggk67847ulcxlua4owf6s98dh` (`spec_id`),
  CONSTRAINT `FK_ggk67847ulcxlua4owf6s98dh` FOREIGN KEY (`spec_id`) REFERENCES `guitar_spec` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guitar
-- ----------------------------
INSERT INTO `guitar` VALUES ('3', '1000', '4b3508e9-4fe6-4c1b-ba80-0fe8527ac8cf', '3');
INSERT INTO `guitar` VALUES ('4', '1000', '43112fd5-0337-4333-a542-36ca7009cea8', '4');
INSERT INTO `guitar` VALUES ('5', '666', '69939799-92cb-4b46-bce3-e1e2b863b53c', '5');

-- ----------------------------
-- Table structure for guitar_spec
-- ----------------------------
DROP TABLE IF EXISTS `guitar_spec`;
CREATE TABLE `guitar_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guitar_back_wood` varchar(50) DEFAULT NULL,
  `guitar_builder` varchar(50) DEFAULT NULL,
  `guitar_model` varchar(255) DEFAULT NULL,
  `guitar_top_wood` varchar(50) DEFAULT NULL,
  `guitar_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guitar_spec
-- ----------------------------
INSERT INTO `guitar_spec` VALUES ('3', '0', '0', '0', '0', '0');
INSERT INTO `guitar_spec` VALUES ('4', '0', '0', '0', '0', '0');
INSERT INTO `guitar_spec` VALUES ('5', '1', '1', '0', '2', '1');
