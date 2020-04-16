/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : system_backend

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-16 20:34:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '11111');

-- ----------------------------
-- Table structure for article_list
-- ----------------------------
DROP TABLE IF EXISTS `article_list`;
CREATE TABLE `article_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(255) DEFAULT NULL,
  `browse_times` int DEFAULT '0',
  `sort_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of article_list
-- ----------------------------
INSERT INTO `article_list` VALUES ('1', '测试1', 'cdfdaasdfad', '2020-04-14 15:54:34', 'Liu', '1', '1');
INSERT INTO `article_list` VALUES ('2', '测试2', 'asdsa', '2020-04-14 15:54:34', 'as', '5', '1');
INSERT INTO `article_list` VALUES ('3', '发打发萨达阿斯顿发尬啥的发送到发送到发发发', 'aaaaa', '2020-04-14 17:02:34', 'sada', '3', '2');
INSERT INTO `article_list` VALUES ('4', 'asdas', 'fa', '2020-04-14 15:54:43', 'sadas', '9', '1');
INSERT INTO `article_list` VALUES ('5', 'sadfsa', 'sad', '2020-04-14 15:54:41', 'asd', '6', '1');
INSERT INTO `article_list` VALUES ('6', 'safa阿萨德高度', '阿斯顿撒', '2020-04-14 15:54:37', 'sada', '7', '2');
INSERT INTO `article_list` VALUES ('7', '盾构法发', '撒打算', '2020-04-14 15:54:39', 'sada', '6', '1');
INSERT INTO `article_list` VALUES ('8', '大分公司的', '阿萨德', '2020-04-16 16:59:28', '阿斯顿撒', '7', '1');
INSERT INTO `article_list` VALUES ('9', '的撒发', '阿萨', '2020-04-14 17:01:02', 'asda', '5', '2');
INSERT INTO `article_list` VALUES ('10', '公司', '的', '2020-04-30 17:00:22', '的首付多少', '6', '1');
INSERT INTO `article_list` VALUES ('11', '但是个税', '大师傅干啥', '2020-04-19 17:01:11', '阿斯顿发然', '3', '2');
INSERT INTO `article_list` VALUES ('12', '1', 'aaaaaaa', '2020-04-16 20:04:17', 'LiuYJia', '0', '1');
INSERT INTO `article_list` VALUES ('13', '1', 'aaaaaaa', '2020-04-16 20:07:04', 'LiuYJia', '0', '1');
INSERT INTO `article_list` VALUES ('14', '阿发', '# hahah\n- 列表\n### 你好\n[TOCM]', '2020-04-16 20:08:06', 'LiuYJia', '0', '2');
INSERT INTO `article_list` VALUES ('15', '1', '# hahah\n- 列表\n### 你好\n[TOCM]', '2020-04-16 20:08:47', 'LiuYJia', '0', '1');

-- ----------------------------
-- Table structure for article_sort
-- ----------------------------
DROP TABLE IF EXISTS `article_sort`;
CREATE TABLE `article_sort` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of article_sort
-- ----------------------------
INSERT INTO `article_sort` VALUES ('1', '一些杂文');
INSERT INTO `article_sort` VALUES ('2', '一些笔记');

-- ----------------------------
-- Table structure for history_access
-- ----------------------------
DROP TABLE IF EXISTS `history_access`;
CREATE TABLE `history_access` (
  `id` int NOT NULL,
  `num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of history_access
-- ----------------------------
INSERT INTO `history_access` VALUES ('1', '10');
