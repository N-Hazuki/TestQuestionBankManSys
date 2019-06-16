/*
Navicat MySQL Data Transfer

Source Server         : ExamManaSys
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : exammana

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-07-13 08:58:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(5) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(20) NOT NULL,
  `adminPwd` varchar(20) NOT NULL,
  `adminName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin1', 'admin', '管理员1');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `proId` int(5) NOT NULL AUTO_INCREMENT,
  `proTitle` varchar(20) NOT NULL COMMENT '题目',
  `proKey` varchar(20) NOT NULL COMMENT '关键字',
  `proType` int(5) NOT NULL,
  `proCoe` varchar(5) NOT NULL,
  `chaNo` varchar(5) NOT NULL COMMENT '所属章节编号',
  `chaTitle` varchar(20) DEFAULT NULL COMMENT '所属章节标题',
  `chaMpoint` varchar(20) DEFAULT NULL COMMENT '所属章节要点',
  `proConta` varchar(20) NOT NULL,
  `proContb` varchar(20) NOT NULL,
  `proContc` varchar(20) NOT NULL,
  `proContd` varchar(20) NOT NULL,
  `proAns` int(2) NOT NULL,
  `proTeaid` int(5) NOT NULL,
  PRIMARY KEY (`proId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('1', '7月10日港股闭市，小米收盘价是？', '小米 雷军', '1', '1', '1-1', '小米 上市', 'IPO 股票', '19港元', '18港元', '17港元', '16港元', '1', '7');
INSERT INTO `problem` VALUES ('2', '今日头条马上要在香港上市吗？', '今日头条 上市', '2', '1', '2-2', '独角兽', '香港', '', '', '', '', '-1', '7');
INSERT INTO `problem` VALUES ('5', '雷军回国后有没有穿破洞牛仔裤？', '小米', '2', '2', '1-3', '上市', '金融风险 股票', '', '', '', '', '1', '7');
INSERT INTO `problem` VALUES ('6', '瑞幸咖啡宣布完成A轮几亿融资？', '瑞幸咖啡 A轮', '1', '2', '1-5', '瑞幸咖啡融资', '瑞幸咖啡 融资 金融', '1亿', '1.5亿', '2亿', '2.5亿', '3', '7');
INSERT INTO `problem` VALUES ('7', '瑞幸咖啡宣布完成A轮几亿融资？', '瑞幸咖啡宣布完成A轮几亿融资？', '1', '1', '121', '瑞幸咖啡', '融资', '融资', '融资', '融资', '融资', '1', '7');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuId` int(5) NOT NULL AUTO_INCREMENT,
  `stuNo` varchar(20) NOT NULL,
  `stuPwd` varchar(20) NOT NULL,
  `stuName` varchar(20) DEFAULT NULL,
  `stuMajor` varchar(20) DEFAULT NULL,
  `stuGrade` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`stuId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', 'student1', 'student1', '学生1', '自动化', '自动151');
INSERT INTO `student` VALUES ('3', 'student2', 'student2', '学生2', '计算机', '计算161');
INSERT INTO `student` VALUES ('4', 'student3', 'student3', '学生3', '网络工程', '网络151');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teaId` int(5) NOT NULL AUTO_INCREMENT,
  `teaNo` varchar(20) NOT NULL,
  `teaPwd` varchar(20) NOT NULL,
  `teaName` varchar(20) DEFAULT NULL,
  `teaMajor` varchar(20) DEFAULT NULL,
  `teaMail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`teaId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('5', 'teacher4', 'teacher4', '教师4', '自动化', 'teacher4@t.t');
INSERT INTO `teacher` VALUES ('6', '王', 'sfsdfs', 'asdada', 'asdads', 'sadads');
INSERT INTO `teacher` VALUES ('7', 'teacher3', 'teacher3', '教师3', '土木', 'teacher3@t.t');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `testId` int(5) NOT NULL AUTO_INCREMENT,
  `testName` varchar(20) NOT NULL,
  `testMajor` varchar(20) NOT NULL,
  `testCoe` int(5) NOT NULL,
  `testNum` int(5) NOT NULL,
  `testScore` int(5) DEFAULT NULL,
  `testDetail` varchar(20) DEFAULT '',
  `testTeaid` int(5) NOT NULL,
  `testTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`testId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('10', '试卷1', '计算机', '1', '4', '100', null, '7', '201807121015');
INSERT INTO `test` VALUES ('11', '大法师', '大法', '1', '4', '100', '', '7', '201807121617');

-- ----------------------------
-- Table structure for testprorela
-- ----------------------------
DROP TABLE IF EXISTS `testprorela`;
CREATE TABLE `testprorela` (
  `tpId` int(5) NOT NULL AUTO_INCREMENT,
  `tpTestid` int(5) NOT NULL,
  `tpProid` int(5) NOT NULL,
  PRIMARY KEY (`tpId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testprorela
-- ----------------------------
INSERT INTO `testprorela` VALUES ('11', '10', '7');
INSERT INTO `testprorela` VALUES ('12', '10', '6');
INSERT INTO `testprorela` VALUES ('13', '10', '1');
INSERT INTO `testprorela` VALUES ('14', '10', '2');
DROP TRIGGER IF EXISTS `testTime`;
DELIMITER ;;
CREATE TRIGGER `testTime` BEFORE INSERT ON `test` FOR EACH ROW begin
	set new.testTime=date_format(sysdate(),'%Y%m%d%H%i');
end
;;
DELIMITER ;
