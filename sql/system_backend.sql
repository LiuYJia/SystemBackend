/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : system_backend

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-22 20:33:36
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
  `nick_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '11111', 'HelloWorld', '1158502533@qq.com', 'https://github.com/LiuYJia');

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
INSERT INTO `article_list` VALUES ('14', '阿发', '# hahah\n- 列表\n### 你好\n[TOCM]', '2020-04-16 20:08:06', 'LiuYJia', '0', '2');

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
-- Table structure for msg_board
-- ----------------------------
DROP TABLE IF EXISTS `msg_board`;
CREATE TABLE `msg_board` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of msg_board
-- ----------------------------
INSERT INTO `msg_board` VALUES ('1', '张三', '123@qq.com', '2020-04-22 19:55:06', '不行，下一个。');
INSERT INTO `msg_board` VALUES ('2', '例子', '888@163.com', '2020-05-22 19:55:46', '什么东西。');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of one_tips
-- ----------------------------
INSERT INTO `one_tips` VALUES ('1', 'http://image.wufazhuce.com/Fryzoo5ncUkEb1zG3hlzdVt8X9fj', '哲学家们只是用不同的方式解释世界，而问题在于改变世界。', '摄影');
INSERT INTO `one_tips` VALUES ('2', 'http://image.wufazhuce.com/Fo-CYfiARndoDysTnNjEADy2t19s', '今天做不成的，明天也不会做好。一天也不能虚度，要下决心把可能的事情，一把抓住而紧紧抱住，有决心就不会任其逃去，而且必然要贯彻实行。', '摄影');
INSERT INTO `one_tips` VALUES ('3', 'http://image.wufazhuce.com/FrSGYFzI4WTECW5VYDSCceZSAfOb', '如果一个人想要做一件真正忠于自己内心的事情，那么往往只能一个人独自去做。', '摄影');
