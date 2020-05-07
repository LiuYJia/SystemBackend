/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : system_backend

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-30 19:07:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `github` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '11111', 'L', '1158502533@qq.com', 'https://github.com/LiuYJia');

-- ----------------------------
-- Table structure for article_list
-- ----------------------------
DROP TABLE IF EXISTS `article_list`;
CREATE TABLE `article_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `browse_times` int DEFAULT '0',
  `sort_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of article_list
-- ----------------------------
INSERT INTO `article_list` VALUES ('14', '诺克萨斯', '&ensp;&ensp;古代诺克西人是残暴的野蛮人部落联合，他们占领了一座古城，并将其建成了现在的帝国中心。当时的诺克萨斯面临着来自各方的威胁，所以他们与所有敌人都激烈交锋，睚眦必报，不胜不归，最终让帝国的版图连年扩张。这一段艰难求生的历史让诺克萨斯人从骨子里感到骄傲自豪，也因此重视力量胜过一切。当然，力量可以通过许多不同的形式表现。\n# hahah\n- 列表\n### 你好\n[TOCM]', '2020-04-27 17:35:50', 'LiuYJia', '9', '2');
INSERT INTO `article_list` VALUES ('20', '这是一篇测试文章文章文章文章文章文章文章', '&emsp;&emsp;这是测试的第一个段落,哈哈哈这是测试的第一个段落这是测试的第一个段落这是测试的第一个段落这是测试的第一个段落。\n- 哈哈哈\n- 嘿嘿嘿\n- 呵呵呵\n1. 小标题\n&emsp;&emsp;这是测试的第一个段落,哈哈哈这是测试的第一个段落这是测试的第一个段落这是测试的第一个段落这是测试的第一个段落。\n2. 小标题\n&emsp;&emsp;这是测试的第一个段落,哈哈哈这是测试的第一个段落这是测试的第一个段落这是测试的第一个段落这是测试的第一个段落。\n3. 小标题\n&emsp;&emsp;这是测试的第一个段落,哈哈哈这是测试的第一个段落这是测试的第一个段落这是测试的第一个段落这是测试的第一个段落\n\n```\n<html>\n	<p>11111<p>\n</html>\nfunction test(){\n	console.log(111)\n	console.log(222)\n	console.log(111)\n}\n```\n##### 下面上传一个图片\n&ensp;&ensp;这是一张图片\n![蜘蛛侠](http://localhost:3000/images/article_1587703014514.jpg \"蜘蛛侠\")\n##### 这个是引用文本\n> 你好你好', '2020-04-24 16:23:07', 'LiuYJia', '6', '1');
INSERT INTO `article_list` VALUES ('21', '比尔吉沃特特特特特特特特特特特特', '&ensp;&ensp;欢迎来到比尔吉沃特欢迎来到比尔吉沃特欢迎来到比尔吉沃特欢迎来到比尔吉沃特欢迎来到比尔吉沃特\n\n#### Disabled options\n\n- TeX (Based on KaTeX);\n- Emoji;\n- Task lists;\n- HTML tags decode;\n- Flowchart and Sequence Diagram;\n\n#### Editor.md directory\n\n    editor.md/\n            lib/\n            css/\n            scss/\n            tests/\n            fonts/\n            images/\n            plugins/\n            examples/\n            languages/     \n            editormd.js\n            ...\n\n```html\n<!-- English -->\n<script src=\"../dist/js/languages/en.js\"></script>\n\n<!-- 繁體中文 -->\n<script src=\"../dist/js/languages/zh-tw.js\"></script>\n```\n', '2020-04-27 17:24:29', 'LiuYJia', '1', '1');
INSERT INTO `article_list` VALUES ('22', '艾欧尼亚', '&ensp;&ensp;无论社会立场、身世背景、祖国故乡和个人财富如何，任何人都可能在诺克萨斯获得权力、地位、和尊敬，只要他们能够表现出必要的能力。能够使用魔法的人会被高看一眼，帝国甚至会主动寻觅这类人，让他们的特殊天赋得到锻炼并最高效地为帝国所用。\n- 列表\n- 列表', '2020-04-27 17:24:32', 'LiuYJia', '2', '1');
INSERT INTO `article_list` VALUES ('23', '暗影岛', '&emsp;&emsp;这片被诅咒的土地原本养育着一个高贵、开悟的文明，它的盟友和使节将此处成为福光岛。然而，在一千多年前，一场前所未有的魔法灾难撕碎了物质与精神领域之间的屏障，让二者发生了融合效应……顷刻间就毁灭了所有生命。\n\n&emsp;&emsp;如今，一团恶毒的黑雾永久地萦绕着这片群岛，就连土地本身也被恶毒的巫术污染。任何凡人如果胆敢踏上这片凄凉的海岸，就会被渐渐偷走生命力，继而引来永不知足、猎食成性的死灵。\n\n&emsp;&emsp;那些在黑雾中殒命的灵魂会遭受诅咒，永世栖息于这片噩梦般的土地。更可怕的是，暗影岛的力量每一年都在逐渐变强，让最强大的幽灵在符文至地上侵扰得越来越远。', '2020-04-24 16:31:32', 'LiuYJia', '0', '2');
INSERT INTO `article_list` VALUES ('24', '德玛西亚亚亚亚亚1', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-27 17:24:36', 'LiuYJia', '7', '11');
INSERT INTO `article_list` VALUES ('26', '德玛西亚亚亚亚2', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-27 17:24:39', 'LiuYJia', '8', '11');
INSERT INTO `article_list` VALUES ('27', '诺克萨斯111', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-27 17:24:42', 'LiuYJia', '3', '11');
INSERT INTO `article_list` VALUES ('28', '诺克萨斯222', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-24 16:39:07', 'LiuYJia', '0', '11');
INSERT INTO `article_list` VALUES ('29', '诺克萨斯333', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-27 17:24:47', 'LiuYJia', '5', '11');
INSERT INTO `article_list` VALUES ('30', '诺克萨斯444', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-24 16:39:07', 'LiuYJia', '0', '11');
INSERT INTO `article_list` VALUES ('31', '诺克萨斯555', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-24 16:39:07', 'LiuYJia', '0', '11');
INSERT INTO `article_list` VALUES ('32', '诺克萨斯666', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-24 16:39:07', 'LiuYJia', '0', '11');
INSERT INTO `article_list` VALUES ('33', '诺克萨斯777', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-27 17:24:54', 'LiuYJia', '4', '11');
INSERT INTO `article_list` VALUES ('34', '诺克萨斯888', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-24 16:39:07', 'LiuYJia', '0', '11');
INSERT INTO `article_list` VALUES ('35', '诺克萨斯999', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-24 16:39:07', 'LiuYJia', '0', '11');
INSERT INTO `article_list` VALUES ('36', '诺克萨斯000', '&emsp;&emsp;德玛西亚是一个法理至上的强大王国，战功赫赫，久负盛名。德玛西亚人自古崇尚正义、荣耀和责任，近乎狂热地以自身的传统及底蕴为豪。然而，尽管秉持着这些高尚的原则，在过去的几百年间，刚愎自用的德玛西亚越发与世隔绝，成为了孤立主义的代名词。\n\n&emsp;&emsp;然而现在，王国中已经出现了变数。\n\n&emsp;&emsp;德玛西亚雄都以禁魔石——一种可以抑制魔法能量的白色岩石——为基，起初是符文战争之后为了躲避魔法侵害的人们所建立的庇护地。王权由中心向外辐射，守护着边远的城镇、农田、森林和矿产丰饶的山脉。\n\n&emsp;&emsp;然而，自从嘉文三世国王突然驾崩，各大家族至今仍未赞同他唯一的继承人嘉文王子继位。\n\n&emsp;&emsp;在王国眼中，重兵把守的边境之外已经是异心遍起，许多原先的附庸在乱世来临之际开始寻求来自别处的庇护。有人私下妄言，德玛西亚的黄金时代已经一去不返，除非臣民能够上下一心，顺应时代的变化——许多人认为他们并没有这样的能力，否则王国的衰败在所难免。\n\n&emsp;&emsp;再多的禁魔石，也无法阻止德玛西亚由内而外的覆灭。', '2020-04-24 16:39:07', 'LiuYJia', '0', '11');

-- ----------------------------
-- Table structure for article_sort
-- ----------------------------
DROP TABLE IF EXISTS `article_sort`;
CREATE TABLE `article_sort` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of msg_board
-- ----------------------------
INSERT INTO `msg_board` VALUES ('1', '张三', '123@qq.com', '2020-04-22 19:55:06', '不行，下一个。');
INSERT INTO `msg_board` VALUES ('2', '例子', '888@163.com', '2020-05-22 19:55:46', '什么东西。');
INSERT INTO `msg_board` VALUES ('3', '赵五', '11@qq.com', '2020-04-30 11:36:26', '你可别逗了，哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈');
INSERT INTO `msg_board` VALUES ('4', '2', '567@qq.com', '2020-04-27 09:37:30', '我来冒个泡');
INSERT INTO `msg_board` VALUES ('5', '哈哈哈', '11@qq.com', '2020-04-27 19:06:35', '你好你好你好你好你好你好你好');

-- ----------------------------
-- Table structure for one_tips
-- ----------------------------
DROP TABLE IF EXISTS `one_tips`;
CREATE TABLE `one_tips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of one_tips
-- ----------------------------
INSERT INTO `one_tips` VALUES ('16', 'http://image.wufazhuce.com/FrIXn6UeYcjax44F8eYOcvR3eWLq', '如果不知道自己想要干什么，就先工作。只要工作，就可以得到米、酱、酱油、朋友和信任。可以一边工作，一边寻找真正想干的事，千万不要游手好闲。', '摄影');
INSERT INTO `one_tips` VALUES ('17', 'http://image.wufazhuce.com/FsXiQJZ4Jt8mn7szAUFgkxjdNYwu', '永远年轻，永远热泪盈眶。', '摄影');
INSERT INTO `one_tips` VALUES ('18', 'http://image.wufazhuce.com/FrSGYFzI4WTECW5VYDSCceZSAfOb', '今天做不成的，明天也不会做好。一天也不能虚度，要下决心把可能的事情，一把抓住而紧紧抱住，有决心就不会任其逃去，而且必然要贯彻实行。', '摄影');
INSERT INTO `one_tips` VALUES ('19', 'http://image.wufazhuce.com/FnTZrZAil8kGLXhMc5lOXvW9zybF', '我要很多很多的爱。如果没有爱，那么就要很多很多的钱，如果两件都没有，有健康也是好的。', '摄影');
