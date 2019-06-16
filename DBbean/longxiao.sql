/*
 Navicat Premium Data Transfer

 Source Server         : mysql1
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : longxiao

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 13/06/2019 10:36:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bkid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `bkname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `bkpublisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `bkprice` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bkid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '《ACM算法导论》', '清华出版社', '54.8');
INSERT INTO `book` VALUES ('2', '《大好河山》', '湖南科技出版社', '13.5');
INSERT INTO `book` VALUES ('3', '《java web应用开发》', '北京邮电大学出版社', '12.9');
INSERT INTO `book` VALUES ('4', '《操作系统》', '珊珊出版社', '90.7');
INSERT INTO `book` VALUES ('5', '《数据结构》', '陈慧出版社', '34.5');
INSERT INTO `book` VALUES ('6', '《计算机组成原理》', '湖南出版社', '89.6');
INSERT INTO `book` VALUES ('7', '《计算机网络》', '上海科技出版社', '29.8');
INSERT INTO `book` VALUES ('8', '《莫比乌斯算法》', '湖南青年出版社', '89.1');

-- ----------------------------
-- Table structure for booksystem_user
-- ----------------------------
DROP TABLE IF EXISTS `booksystem_user`;
CREATE TABLE `booksystem_user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booksystem_user
-- ----------------------------
INSERT INTO `booksystem_user` VALUES ('2', '2', '2');
INSERT INTO `booksystem_user` VALUES ('1', '1', '1');
INSERT INTO `booksystem_user` VALUES ('3', '3', '3');

-- ----------------------------
-- Table structure for dl
-- ----------------------------
DROP TABLE IF EXISTS `dl`;
CREATE TABLE `dl`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dl
-- ----------------------------
INSERT INTO `dl` VALUES ('1705020103', 'longxiao');
INSERT INTO `dl` VALUES ('longxiao', '1');

-- ----------------------------
-- Table structure for orderdata
-- ----------------------------
DROP TABLE IF EXISTS `orderdata`;
CREATE TABLE `orderdata`  (
  `bkid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `userid` varchar(222) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bkid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdata
-- ----------------------------
INSERT INTO `orderdata` VALUES ('1', '1');
INSERT INTO `orderdata` VALUES ('2', '1');
INSERT INTO `orderdata` VALUES ('3', '3');

SET FOREIGN_KEY_CHECKS = 1;
