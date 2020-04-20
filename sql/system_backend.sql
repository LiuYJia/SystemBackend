/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : system_backend

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-20 20:52:39
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of article_list
-- ----------------------------
INSERT INTO `article_list` VALUES ('1', '测试1111', '123', '2020-04-17 17:11:04', 'Liu', '1', '2');
INSERT INTO `article_list` VALUES ('8', '大分公司的', '阿萨德', '2020-04-16 16:59:28', '阿斯顿撒', '7', '1');
INSERT INTO `article_list` VALUES ('9', '的撒发', '阿萨', '2020-04-14 17:01:02', 'asda', '5', '2');
INSERT INTO `article_list` VALUES ('10', '公司', '的', '2020-04-30 17:00:22', '的首付多少', '6', '1');
INSERT INTO `article_list` VALUES ('11', '但是个税', '大师傅干啥', '2020-04-19 17:01:11', '阿斯顿发然', '3', '2');
INSERT INTO `article_list` VALUES ('12', '1', 'aaaaaaa', '2020-04-16 20:04:17', 'LiuYJia', '0', '1');
INSERT INTO `article_list` VALUES ('13', '1', 'aaaaaaa', '2020-04-16 20:07:04', 'LiuYJia', '0', '1');
INSERT INTO `article_list` VALUES ('14', '阿发', '# hahah\n- 列表\n### 你好\n[TOCM]', '2020-04-16 20:08:06', 'LiuYJia', '0', '2');
INSERT INTO `article_list` VALUES ('15', '1', '# hahah\n- 列表\n### 你好\n[TOCM]', '2020-04-16 20:08:47', 'LiuYJia', '0', '1');
INSERT INTO `article_list` VALUES ('16', 'test', '111', '2020-04-16 21:01:15', 'LiuYJia', '0', '1');
INSERT INTO `article_list` VALUES ('17', '1', '1111', '2020-04-17 16:57:46', 'LiuYJia', '0', '1');
INSERT INTO `article_list` VALUES ('18', '1', '11111', '2020-04-17 17:07:19', 'LiuYJia', '0', '1');
INSERT INTO `article_list` VALUES ('19', 'seotest', 'dassdaasdas', '2020-04-18 00:00:26', 'LiuYJia', '0', '11');

-- ----------------------------
-- Table structure for article_sort
-- ----------------------------
DROP TABLE IF EXISTS `article_sort`;
CREATE TABLE `article_sort` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of article_sort
-- ----------------------------
INSERT INTO `article_sort` VALUES ('1', '一些杂文');
INSERT INTO `article_sort` VALUES ('2', '一些笔记');
INSERT INTO `article_sort` VALUES ('11', '一些SEO');

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

-- ----------------------------
-- Table structure for one_tips
-- ----------------------------
DROP TABLE IF EXISTS `one_tips`;
CREATE TABLE `one_tips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `img_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of one_tips
-- ----------------------------
INSERT INTO `one_tips` VALUES ('1', 'http://image.wufazhuce.com/Fo-CYfiARndoDysTnNjEADy2t19s', '如果一个人想要做一件真正忠于自己内心的事情，那么往往只能一个人独自去做。', '摄影');
