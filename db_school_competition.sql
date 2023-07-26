/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.153.130 虚拟机（MySQL）
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 192.168.153.130:3306
 Source Schema         : db_school_competition

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 28/02/2023 12:14:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ylrc_clazz
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_clazz`;
CREATE TABLE `ylrc_clazz`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade_id` bigint(20) NULL DEFAULT NULL,
  `professional_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKauy915rukkjw5428pkeb0edfp`(`grade_id`) USING BTREE,
  INDEX `FK5s97p83eh461drrkpmkinwear`(`professional_id`) USING BTREE,
  CONSTRAINT `FK5s97p83eh461drrkpmkinwear` FOREIGN KEY (`professional_id`) REFERENCES `ylrc_professional` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKauy915rukkjw5428pkeb0edfp` FOREIGN KEY (`grade_id`) REFERENCES `ylrc_grade` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_clazz
-- ----------------------------
INSERT INTO `ylrc_clazz` VALUES (17, '2023-01-30 13:48:53', '2023-01-30 13:48:53', 'JAVA1班', 9, 10);
INSERT INTO `ylrc_clazz` VALUES (18, '2023-01-30 13:48:55', '2023-01-30 13:48:55', '软件171班', 11, 10);
INSERT INTO `ylrc_clazz` VALUES (19, '2023-01-30 13:49:07', '2023-01-30 13:49:07', '软件172班', 11, 10);
INSERT INTO `ylrc_clazz` VALUES (20, '2023-01-30 13:49:08', '2023-01-30 13:49:08', '国贸1班', 10, 15);
INSERT INTO `ylrc_clazz` VALUES (21, '2023-01-30 13:49:25', '2023-01-30 13:49:53', '软件181班', 12, 10);
INSERT INTO `ylrc_clazz` VALUES (22, '2023-01-30 13:49:41', '2023-01-30 13:49:41', '软件182班', 12, 10);
INSERT INTO `ylrc_clazz` VALUES (23, '2023-01-30 13:49:47', '2023-01-30 13:49:47', '食品研究2018级1班', 12, 18);
INSERT INTO `ylrc_clazz` VALUES (24, '2023-01-30 13:50:12', '2023-01-30 13:50:12', '原子弹研究1班', 16, 19);

-- ----------------------------
-- Table structure for ylrc_college
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_college`;
CREATE TABLE `ylrc_college`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_mcpybasf8b8i1ptu9kn5k4h7i`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_college
-- ----------------------------
INSERT INTO `ylrc_college` VALUES (16, '2023-01-30 13:37:16', '2023-01-30 13:37:16', '人文学院');
INSERT INTO `ylrc_college` VALUES (17, '2023-01-30 13:37:25', '2023-01-30 13:37:25', '计算机学院');
INSERT INTO `ylrc_college` VALUES (18, '2023-01-30 13:41:04', '2023-01-30 13:41:04', '软件工程');
INSERT INTO `ylrc_college` VALUES (20, '2023-01-30 13:43:36', '2023-01-30 13:43:51', '生物工程学院');
INSERT INTO `ylrc_college` VALUES (21, '2023-01-30 13:44:00', '2023-01-30 13:44:00', '园艺园林学院');
INSERT INTO `ylrc_college` VALUES (22, '2023-01-30 13:44:11', '2023-01-30 13:44:11', '食品安全学院');
INSERT INTO `ylrc_college` VALUES (23, '2023-01-30 13:44:32', '2023-01-30 13:44:32', '核工程学院');
INSERT INTO `ylrc_college` VALUES (24, '2023-01-30 13:44:41', '2023-01-30 13:44:41', '量子物理学院');
INSERT INTO `ylrc_college` VALUES (25, '2023-01-30 13:45:31', '2023-01-30 13:45:31', '现代沙雕学院');
INSERT INTO `ylrc_college` VALUES (26, '2023-01-30 13:45:50', '2023-01-30 13:45:50', '古代经济学院');
INSERT INTO `ylrc_college` VALUES (27, '2023-01-30 13:46:03', '2023-01-30 13:46:03', '远古生物学院');

-- ----------------------------
-- Table structure for ylrc_competition
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_competition`;
CREATE TABLE `ylrc_competition`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `competition_status` int(11) NOT NULL,
  `competition_type` int(11) NOT NULL,
  `detailed_introduction` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enroll_end_time` datetime NOT NULL,
  `enroll_start_time` datetime NOT NULL,
  `enrollment_number` int(11) NOT NULL,
  `finals_end_time` datetime NOT NULL,
  `finals_start_time` datetime NOT NULL,
  `preliminaries_end_time` datetime NOT NULL,
  `preliminaries_start_time` datetime NOT NULL,
  `race_type` int(11) NOT NULL,
  `second_round_end_time` datetime NOT NULL,
  `second_round_start_time` datetime NOT NULL,
  `team_size` int(11) NOT NULL,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `college_id` bigint(20) NULL DEFAULT NULL,
  `professional_id` bigint(20) NULL DEFAULT NULL,
  `signed_up` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK5otpr428b8sd15sdkydhuebem`(`college_id`) USING BTREE,
  INDEX `FK9s54xj9ox6mxlv9l906iudagl`(`professional_id`) USING BTREE,
  CONSTRAINT `FK5otpr428b8sd15sdkydhuebem` FOREIGN KEY (`college_id`) REFERENCES `ylrc_college` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK9s54xj9ox6mxlv9l906iudagl` FOREIGN KEY (`professional_id`) REFERENCES `ylrc_professional` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_competition
-- ----------------------------
INSERT INTO `ylrc_competition` VALUES (54, '2023-01-31 15:13:51', '2023-01-31 15:11:54', 1, 1, '454651', '2021-01-08 15:35:00', '2020-12-31 14:40:00', 1, '2021-01-08 16:20:00', '2021-01-08 16:15:00', '2021-01-08 16:00:00', '2021-01-08 15:55:00', 1, '2021-01-08 16:10:00', '2021-01-08 16:05:00', 1, '测试竞赛', NULL, NULL, 1, 2);
INSERT INTO `ylrc_competition` VALUES (55, '2023-01-31 15:34:33', '2023-01-31 15:45:00', 5, 1, '测试测试<img width=\"30px\" src=\"/photo/view?filename=/20201231/1609400068096.jpg\" alt=\"\" />', '2020-12-31 15:37:00', '2020-12-31 15:35:00', 4, '2020-12-31 15:45:00', '2020-12-31 15:43:00', '2020-12-31 15:40:00', '2020-12-31 15:38:00', 1, '2020-12-31 15:42:00', '2020-12-31 15:41:00', 1, '演讲竞赛', NULL, NULL, 4, 1);
INSERT INTO `ylrc_competition` VALUES (56, '2023-01-31 15:36:14', '2023-01-31 15:49:00', 5, 2, '测试测试', '2020-12-31 15:40:00', '2020-12-31 15:38:00', 2, '2020-12-31 15:49:00', '2020-12-31 15:47:00', '2020-12-31 15:43:00', '2020-12-31 15:41:00', 1, '2020-12-31 15:46:00', '2020-12-31 15:44:00', 2, '恋爱竞赛', NULL, NULL, 1, 1);
INSERT INTO `ylrc_competition` VALUES (57, '2023-01-31 16:01:54', '2023-01-31 16:12:00', 5, 1, '测试测试', '2020-12-31 16:05:00', '2020-12-31 16:03:00', 3, '2020-12-31 16:12:00', '2020-12-31 16:11:00', '2020-12-31 16:07:00', '2020-12-31 16:06:00', 2, '2020-12-31 16:10:00', '2020-12-31 16:08:00', 1, '健康竞赛', 17, 10, 2, 1);
INSERT INTO `ylrc_competition` VALUES (58, '2023-01-31 16:14:22', '2023-01-31 16:24:00', 5, 2, '测试一波测试一波', '2020-12-31 16:18:00', '2020-12-31 16:15:00', 2, '2020-12-31 16:24:00', '2020-12-31 16:23:00', '2020-12-31 16:20:00', '2020-12-31 16:19:00', 2, '2020-12-31 16:22:00', '2020-12-31 16:21:00', 2, '敲代码竞赛', 17, 10, 2, 1);
INSERT INTO `ylrc_competition` VALUES (59, '2023-01-19 10:06:32', '2023-01-19 10:06:32', 1, 1, '测试一下', '2023-01-20 10:00:00', '2023-01-19 10:05:00', 10, '2023-01-22 11:00:00', '2023-01-22 11:00:00', '2023-01-20 11:00:00', '2023-01-20 10:00:00', 2, '2023-01-21 11:00:00', '2023-01-21 11:00:00', 1, 'Java八股文竞赛', 17, 10, 0, 2);
INSERT INTO `ylrc_competition` VALUES (60, '2023-01-19 10:27:57', '2023-01-19 10:28:17', 1, 1, '测试', '2023-01-20 10:00:00', '2023-01-19 10:05:00', 10, '2023-01-22 11:00:00', '2023-01-22 11:00:00', '2023-01-20 11:00:00', '2023-01-20 10:00:00', 1, '2023-01-21 11:00:00', '2023-01-21 11:00:00', 1, '测试开放型', NULL, NULL, 1, 2);

-- ----------------------------
-- Table structure for ylrc_competition_grades
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_competition_grades`;
CREATE TABLE `ylrc_competition_grades`  (
  `competition_id` bigint(20) NOT NULL,
  `grades_id` bigint(20) NOT NULL,
  INDEX `FK6r73wd79bcxmdgp55vfdydgra`(`grades_id`) USING BTREE,
  INDEX `FKos1fqhvtopxb6w8fea1b5fasd`(`competition_id`) USING BTREE,
  CONSTRAINT `FK6r73wd79bcxmdgp55vfdydgra` FOREIGN KEY (`grades_id`) REFERENCES `ylrc_grade` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKos1fqhvtopxb6w8fea1b5fasd` FOREIGN KEY (`competition_id`) REFERENCES `ylrc_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_competition_grades
-- ----------------------------
INSERT INTO `ylrc_competition_grades` VALUES (54, 9);
INSERT INTO `ylrc_competition_grades` VALUES (55, 11);
INSERT INTO `ylrc_competition_grades` VALUES (55, 12);
INSERT INTO `ylrc_competition_grades` VALUES (56, 11);
INSERT INTO `ylrc_competition_grades` VALUES (56, 12);
INSERT INTO `ylrc_competition_grades` VALUES (57, 11);
INSERT INTO `ylrc_competition_grades` VALUES (57, 12);
INSERT INTO `ylrc_competition_grades` VALUES (58, 11);
INSERT INTO `ylrc_competition_grades` VALUES (58, 12);
INSERT INTO `ylrc_competition_grades` VALUES (59, 14);
INSERT INTO `ylrc_competition_grades` VALUES (60, 14);

-- ----------------------------
-- Table structure for ylrc_competition_judges
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_competition_judges`;
CREATE TABLE `ylrc_competition_judges`  (
  `competition_id` bigint(20) NOT NULL,
  `judges_id` bigint(20) NOT NULL,
  INDEX `FKqc71146w4cgrlvuwljugn2fxw`(`judges_id`) USING BTREE,
  INDEX `FK2ms04l7o4id3qqqc2h57k4a5s`(`competition_id`) USING BTREE,
  CONSTRAINT `FK2ms04l7o4id3qqqc2h57k4a5s` FOREIGN KEY (`competition_id`) REFERENCES `ylrc_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKqc71146w4cgrlvuwljugn2fxw` FOREIGN KEY (`judges_id`) REFERENCES `ylrc_judge` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_competition_judges
-- ----------------------------
INSERT INTO `ylrc_competition_judges` VALUES (54, 23);
INSERT INTO `ylrc_competition_judges` VALUES (55, 23);
INSERT INTO `ylrc_competition_judges` VALUES (55, 24);
INSERT INTO `ylrc_competition_judges` VALUES (56, 23);
INSERT INTO `ylrc_competition_judges` VALUES (56, 24);
INSERT INTO `ylrc_competition_judges` VALUES (57, 23);
INSERT INTO `ylrc_competition_judges` VALUES (57, 24);
INSERT INTO `ylrc_competition_judges` VALUES (58, 23);
INSERT INTO `ylrc_competition_judges` VALUES (58, 24);
INSERT INTO `ylrc_competition_judges` VALUES (59, 23);
INSERT INTO `ylrc_competition_judges` VALUES (59, 24);
INSERT INTO `ylrc_competition_judges` VALUES (60, 23);
INSERT INTO `ylrc_competition_judges` VALUES (60, 24);
INSERT INTO `ylrc_competition_judges` VALUES (60, 25);

-- ----------------------------
-- Table structure for ylrc_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_database_bak`;
CREATE TABLE `ylrc_database_bak`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filepath` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_database_bak
-- ----------------------------

-- ----------------------------
-- Table structure for ylrc_grade
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_grade`;
CREATE TABLE `ylrc_grade`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ptoyl294v0qv2c71ginhghvcb`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_grade
-- ----------------------------
INSERT INTO `ylrc_grade` VALUES (9, '2023-01-30 13:47:52', '2023-01-31 15:02:48', '2015级1');
INSERT INTO `ylrc_grade` VALUES (10, '2023-01-30 13:47:59', '2023-01-30 13:47:59', '2016级');
INSERT INTO `ylrc_grade` VALUES (11, '2023-01-30 13:48:05', '2023-01-30 13:48:05', '2017级');
INSERT INTO `ylrc_grade` VALUES (12, '2023-01-30 13:48:12', '2023-01-30 13:48:12', '2018级');
INSERT INTO `ylrc_grade` VALUES (13, '2023-01-30 13:48:19', '2023-01-30 13:48:19', '2019级');
INSERT INTO `ylrc_grade` VALUES (14, '2023-01-30 13:48:25', '2023-01-30 13:48:25', '2020级');
INSERT INTO `ylrc_grade` VALUES (15, '2023-01-30 13:48:31', '2023-01-30 13:48:31', '2021级');
INSERT INTO `ylrc_grade` VALUES (16, '2023-01-30 13:48:37', '2023-01-30 13:48:37', '2022级');
INSERT INTO `ylrc_grade` VALUES (17, '2023-01-30 13:49:46', '2023-01-30 13:49:46', '2023级');
INSERT INTO `ylrc_grade` VALUES (18, '2023-01-30 13:49:55', '2023-01-30 13:49:55', '2024级');
INSERT INTO `ylrc_grade` VALUES (19, '2023-01-30 13:50:02', '2023-01-30 13:50:02', '2025级');

-- ----------------------------
-- Table structure for ylrc_grade_competitions
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_grade_competitions`;
CREATE TABLE `ylrc_grade_competitions`  (
  `grade_id` bigint(20) NOT NULL,
  `competitions_id` bigint(20) NOT NULL,
  INDEX `FKgphuotync37pxk2nnj180fkc4`(`competitions_id`) USING BTREE,
  INDEX `FKquac8i35j6pgu913pfjvjjxfm`(`grade_id`) USING BTREE,
  CONSTRAINT `FKgphuotync37pxk2nnj180fkc4` FOREIGN KEY (`competitions_id`) REFERENCES `ylrc_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKquac8i35j6pgu913pfjvjjxfm` FOREIGN KEY (`grade_id`) REFERENCES `ylrc_grade` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_grade_competitions
-- ----------------------------

-- ----------------------------
-- Table structure for ylrc_individual_accessory
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_individual_accessory`;
CREATE TABLE `ylrc_individual_accessory`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `finals_accessory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finals_status` int(11) NULL DEFAULT NULL,
  `preliminaries_accessory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_round_accessory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_round_status` int(11) NULL DEFAULT NULL,
  `individual_competition_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKlnhb1uidk8eaq791ws92u28rn`(`individual_competition_id`) USING BTREE,
  CONSTRAINT `FKlnhb1uidk8eaq791ws92u28rn` FOREIGN KEY (`individual_competition_id`) REFERENCES `ylrc_individual_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_individual_accessory
-- ----------------------------
INSERT INTO `ylrc_individual_accessory` VALUES (11, '2023-01-31 15:38:20', '2023-01-31 15:43:17', '20201231/1609400597152-63616c3e-df20-46ac-a3f8-7bf9bac833f9.rar', 1, '20201231/1609400300359-4df6ee18-e85a-4ff0-8d17-53695b3fb164.rar', '20201231/1609400483925-cc48f17a-f462-4894-b967-012a2f972059.rar', 1, 24);
INSERT INTO `ylrc_individual_accessory` VALUES (12, '2023-01-31 15:38:26', '2023-01-31 15:43:13', '20201231/1609400592500-461ca99b-5a7b-44c0-b866-c0ab6077c61c.rar', 1, '20201231/1609400306461-2dbc52ce-6b67-4a44-b5c8-582c6ae0bb93.rar', '20201231/1609400470698-751f2552-bfe5-431a-9b18-2f7ecd4eb301.rar', 1, 22);
INSERT INTO `ylrc_individual_accessory` VALUES (13, '2023-01-31 15:38:37', '2023-01-31 15:38:37', NULL, 0, '20201231/1609400316723-d5a63226-aa17-4fe6-8424-dbf58bd1a7da.rar', NULL, 0, 23);
INSERT INTO `ylrc_individual_accessory` VALUES (14, '2023-01-31 15:41:17', '2023-01-31 15:43:10', '20201231/1609400589880-c934cd07-f603-4705-8d8a-905ee60bb548.rar', 1, NULL, '20201231/1609400477071-f6a74ffe-6ec5-4607-9f5e-9037dbaaf653.rar', 1, 25);
INSERT INTO `ylrc_individual_accessory` VALUES (15, '2023-01-31 16:06:09', '2023-01-31 16:11:15', '20201231/1609402274529-8bb0bf44-547d-47c8-b50f-edd8e85331b7.rar', 1, '20201231/1609401968733-667691f7-caf7-46a5-a857-cd9baca762f7.rar', '20201231/1609402091697-b7f6a17d-9284-4ca0-abd5-7cb344edfb89.rar', 1, 26);
INSERT INTO `ylrc_individual_accessory` VALUES (16, '2023-01-31 16:11:35', '2023-01-31 16:11:35', '20201231/1609402294470-ac998eb3-c1b3-4159-9d43-07e1d05da179.rar', 1, NULL, NULL, 0, 27);

-- ----------------------------
-- Table structure for ylrc_individual_competition
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_individual_competition`;
CREATE TABLE `ylrc_individual_competition`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `apply_status` int(11) NULL DEFAULT NULL,
  `finals_score` int(11) NULL DEFAULT NULL,
  `finals_score_status` int(11) NULL DEFAULT NULL,
  `preliminaries_score` int(11) NULL DEFAULT NULL,
  `preliminaries_score_status` int(11) NULL DEFAULT NULL,
  `preliminaries_status` int(11) NULL DEFAULT NULL,
  `second_round_score` int(11) NULL DEFAULT NULL,
  `second_round_score_status` int(11) NULL DEFAULT NULL,
  `second_round_status` int(11) NULL DEFAULT NULL,
  `competition_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKplv7wc6lgndcfryimxpva793y`(`competition_id`) USING BTREE,
  INDEX `FKet2n7afsc7t8h1wv48u35nqr`(`student_id`) USING BTREE,
  CONSTRAINT `FKet2n7afsc7t8h1wv48u35nqr` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKplv7wc6lgndcfryimxpva793y` FOREIGN KEY (`competition_id`) REFERENCES `ylrc_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_individual_competition
-- ----------------------------
INSERT INTO `ylrc_individual_competition` VALUES (21, '2023-01-31 15:11:54', '2023-01-31 15:11:54', 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 48);
INSERT INTO `ylrc_individual_competition` VALUES (22, '2023-01-31 15:35:05', '2023-01-31 15:43:31', 1, 98, 1, 100, 1, 1, 100, 1, 1, 55, 47);
INSERT INTO `ylrc_individual_competition` VALUES (23, '2023-01-31 15:35:07', '2023-01-31 15:41:48', 1, 0, 0, 100, 1, 1, 20, 1, 0, 55, 51);
INSERT INTO `ylrc_individual_competition` VALUES (24, '2023-01-31 15:35:17', '2023-01-31 15:43:28', 1, 99, 1, 100, 1, 1, 100, 1, 1, 55, 49);
INSERT INTO `ylrc_individual_competition` VALUES (25, '2023-01-31 15:35:25', '2023-01-31 15:43:24', 1, 100, 1, 100, 1, 1, 100, 1, 1, 55, 48);
INSERT INTO `ylrc_individual_competition` VALUES (26, '2023-01-31 16:03:54', '2023-01-31 16:11:28', 1, 100, 1, 100, 1, 1, 100, 1, 1, 57, 51);
INSERT INTO `ylrc_individual_competition` VALUES (27, '2023-01-31 16:04:39', '2023-01-31 16:11:20', 1, 10, 1, 100, 1, 1, 80, 1, 1, 57, 49);
INSERT INTO `ylrc_individual_competition` VALUES (28, '2023-01-19 10:28:17', '2023-01-19 10:31:09', 1, 0, 0, 0, 0, 0, 0, 0, 0, 60, 53);

-- ----------------------------
-- Table structure for ylrc_judge
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_judge`;
CREATE TABLE `ylrc_judge`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `college_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgu8b025kbsq77un4wnfu509gg`(`college_id`) USING BTREE,
  INDEX `FK83my481jvgt27lhfy3amw4hwf`(`role_id`) USING BTREE,
  CONSTRAINT `FK83my481jvgt27lhfy3amw4hwf` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKgu8b025kbsq77un4wnfu509gg` FOREIGN KEY (`college_id`) REFERENCES `ylrc_college` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_judge
-- ----------------------------
INSERT INTO `ylrc_judge` VALUES (23, '2023-01-30 14:10:44', '2023-01-30 14:10:44', '15518166316', '王金库', '123456', 1, 17, 9, 1, '');
INSERT INTO `ylrc_judge` VALUES (24, '2023-01-31 15:12:32', '2023-01-31 15:12:32', '13345678910', '钟锐', '1234', 1, 17, 9, 1, '20201231/1609398718147.jpg');
INSERT INTO `ylrc_judge` VALUES (25, '2023-01-31 15:13:11', '2023-01-31 15:13:11', '13345678911', '赵炫烨', '123456', 1, 16, 9, 1, '');

-- ----------------------------
-- Table structure for ylrc_judge_competitions
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_judge_competitions`;
CREATE TABLE `ylrc_judge_competitions`  (
  `judge_id` bigint(20) NOT NULL,
  `competitions_id` bigint(20) NOT NULL,
  INDEX `FKcittmmtf5p4ewobhol53haki2`(`competitions_id`) USING BTREE,
  INDEX `FKl9wlkaeo3stopppptqng7v9m8`(`judge_id`) USING BTREE,
  CONSTRAINT `FKcittmmtf5p4ewobhol53haki2` FOREIGN KEY (`competitions_id`) REFERENCES `ylrc_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKl9wlkaeo3stopppptqng7v9m8` FOREIGN KEY (`judge_id`) REFERENCES `ylrc_judge` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_judge_competitions
-- ----------------------------

-- ----------------------------
-- Table structure for ylrc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_menu`;
CREATE TABLE `ylrc_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsbtnjocfrq29e8taxdwo21gic`(`parent_id`) USING BTREE,
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_menu
-- ----------------------------
INSERT INTO `ylrc_menu` VALUES (2, '2020-03-14 14:26:03', '2020-03-14 18:24:53', '系统设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (3, '2020-03-14 16:58:55', '2023-01-23 15:15:04', '菜单管理', '/admin/menu/list', 'mdi-view-list', 1, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (5, '2020-03-14 17:04:44', '2023-01-23 15:15:10', '新增', '/admin/menu/add', 'mdi-plus', 2, 3, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (7, '2020-03-14 17:07:43', '2023-01-23 15:15:35', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', 5, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (8, '2020-03-14 18:28:48', '2023-01-23 15:15:19', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', 3, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (9, '2020-03-14 18:30:00', '2023-01-23 15:15:27', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', 4, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (10, '2020-03-15 12:12:00', '2023-01-23 15:15:43', '添加', '/admin/role/add', 'mdi-account-plus', 6, 7, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (11, '2020-03-15 12:12:36', '2023-01-23 15:15:50', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', 7, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (12, '2020-03-15 12:13:19', '2023-01-23 15:16:00', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', 8, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (13, '2020-03-15 12:14:52', '2023-01-23 15:16:07', '用户管理', '/admin/user/list', 'mdi-account-multiple', 9, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (14, '2020-03-15 12:15:22', '2023-01-23 15:16:13', '添加', '/admin/user/add', 'mdi-account-plus', 10, 13, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (15, '2020-03-16 17:18:14', '2023-01-23 15:16:25', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', 11, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (16, '2020-03-16 17:19:01', '2023-01-23 15:16:35', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', 12, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (19, '2020-03-22 11:24:36', '2020-03-22 11:26:00', '上传图片', '/upload/upload_photo', 'mdi-arrow-up-bold-circle', 0, 13, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (20, '2020-03-22 14:09:35', '2020-03-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', 13, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (21, '2020-03-22 14:11:39', '2020-03-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', 14, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (22, '2020-03-22 14:12:57', '2020-03-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', 15, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (23, '2020-03-22 14:46:40', '2020-03-22 14:47:09', '数据备份', '/database_bak/list', 'mdi-database', 16, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (24, '2020-03-22 14:48:07', '2020-03-22 15:13:41', '备份', 'add(\'/database_bak/add\')', 'mdi-database-plus', 17, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (25, '2020-03-22 14:49:03', '2020-03-22 14:49:03', '删除', 'del(\'/database_bak/delete\')', 'mdi-database-minus', 18, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (26, '2020-03-22 19:36:20', '2020-03-22 19:36:20', '还原', 'restore(\'/database_bak/restore\')', 'mdi-database-minus', 19, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (28, '2023-01-22 17:56:12', '2023-01-23 15:17:02', '学院管理', '', 'mdi-city', 20, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (29, '2023-01-22 17:56:45', '2023-01-23 15:17:25', '学院列表', '/admin/college/list', 'mdi-animation', 21, 28, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (30, '2023-01-22 17:57:07', '2023-01-23 15:17:42', '添加', '/admin/college/add', 'mdi-account-plus', 22, 29, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (31, '2023-01-22 17:59:23', '2023-01-23 15:17:53', '编辑', 'edit(\'/admin/college/edit\')', 'mdi-account-settings-variant', 23, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (32, '2023-01-22 17:59:45', '2023-01-23 15:18:05', '删除', 'del(\'/admin/college/delete\')', 'mdi-account-minus', 24, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (33, '2023-01-22 21:06:55', '2023-01-23 15:19:45', '评委管理', '', 'mdi-account-multiple', 37, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (34, '2023-01-22 21:07:15', '2023-01-23 15:20:31', '评委列表', '/admin/judge/list', 'mdi-account-multiple-outline', 38, 33, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (35, '2023-01-22 21:07:41', '2023-01-23 15:20:39', '添加', '/admin/judge/add', 'mdi-account-multiple-plus', 39, 34, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (36, '2023-01-22 21:08:04', '2023-01-23 15:20:49', '编辑', 'edit(\'/admin/judge/edit\')', 'mdi-account-settings-variant', 40, 34, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (37, '2023-01-22 21:08:22', '2023-01-23 15:21:02', '删除', 'del(\'/admin/judge/delete\')', 'mdi-account-multiple-minus', 41, 34, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (39, '2023-01-23 09:54:09', '2023-01-23 15:18:15', '班级列表', '/admin/clazz/list', 'mdi-file-document-box', 25, 28, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (40, '2023-01-23 09:55:29', '2023-01-23 15:18:33', '添加', '/admin/clazz/add', 'mdi-view-grid', 26, 39, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (41, '2023-01-23 10:01:25', '2023-01-23 15:18:44', '编辑', 'edit(\'/admin/clazz/edit\')', 'mdi-account-settings-variant', 27, 39, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (42, '2023-01-23 10:01:47', '2023-01-23 15:18:56', '删除', 'del(\'/admin/clazz/delete\')', 'mdi-account-minus', 28, 39, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (43, '2023-01-23 10:03:10', '2023-01-24 13:22:41', '个人信息', '/admin/judge/self', 'mdi-account', 42, 33, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (44, '2023-01-23 13:52:43', '2023-01-23 15:19:06', '年级管理', '/admin/grade/list', 'mdi-gavel', 29, 28, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (45, '2023-01-23 13:53:16', '2023-01-23 15:19:19', '添加', '/admin/grade/add', 'mdi-sofa', 30, 44, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (46, '2023-01-23 13:53:36', '2023-01-23 15:19:30', '编辑', 'edit(\'/admin/grade/edit\')', 'mdi-grease-pencil', 31, 44, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (47, '2023-01-23 13:54:03', '2023-01-23 15:19:40', '删除', 'del(\'/admin/grade/delete\')', 'mdi-delete-empty', 32, 44, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (48, '2023-01-23 14:25:28', '2023-01-23 15:19:50', '专业管理', '/admin/professional/list', 'mdi-chair-school', 33, 28, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (49, '2023-01-23 14:25:58', '2023-01-23 15:19:58', '添加', '/admin/professional/add', 'mdi-border-inside', 34, 48, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (50, '2023-01-23 14:26:31', '2023-01-23 15:20:10', '编辑', 'edit(\'/admin/professional/edit\')', 'mdi-format-list-bulleted', 35, 48, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (51, '2023-01-23 14:27:21', '2023-01-23 15:20:21', '删除', 'del(\'/admin/professional/delete\')', 'mdi-delete-sweep', 36, 48, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (52, '2023-01-23 15:07:36', '2023-01-23 15:08:44', '竞赛管理', '', 'mdi-xbox-controller', 43, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (53, '2023-01-23 15:09:33', '2023-01-23 15:09:43', '竞赛列表', '/admin/competition/list', 'mdi-xbox-controller-battery-full', 44, 52, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (54, '2023-01-23 15:11:31', '2023-01-23 15:11:31', '添加', '/admin/competition/add', 'mdi-xbox-controller-battery-empty', 45, 53, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (55, '2023-01-23 15:12:22', '2023-01-23 15:12:22', '编辑', 'edit(\'/admin/competition/edit\')', 'mdi-xbox-controller-battery-alert', 46, 53, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (56, '2023-01-23 15:12:57', '2023-01-23 15:13:08', '删除', 'del(\'/admin/competition/delete\')', 'mdi-xbox-controller-off', 47, 53, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (57, '2023-01-23 16:56:26', '2023-01-23 16:56:26', '学生管理', '/admin/student/list', 'mdi-walk', 48, 28, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (58, '2023-01-23 16:57:22', '2023-01-23 16:57:22', '添加', '/admin/student/add', 'mdi-led-outline', 49, 57, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (59, '2023-01-23 16:59:20', '2023-01-23 16:59:20', '编辑', 'edit(\'/admin/student/edit\')', 'mdi-format-align-left', 50, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (60, '2023-01-23 16:59:59', '2023-01-23 16:59:59', '删除', 'del(\'/admin/student/delete\')', 'mdi-battery-70', 51, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (62, '2023-01-23 17:02:30', '2023-01-23 18:29:35', '导出', 'loadFile(\'/admin/student/export\')', 'mdi-view-day', 53, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (63, '2023-01-23 17:30:56', '2023-01-23 17:30:56', '图片上传', '/upload/upload_photo', 'mdi-xbox-controller-off', 54, 57, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (64, '2023-01-24 14:34:03', '2023-01-24 14:34:03', '个人信息管理', '', 'mdi-texture', 55, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (65, '2023-01-24 14:40:23', '2023-01-24 14:40:23', '学生个人信息', '/admin/student/info', 'mdi-view-stream', 56, 64, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (66, '2023-01-24 14:57:42', '2023-01-24 15:17:20', '编辑', 'edit(\'/admin/judge/editSelf\')', 'mdi-account-settings-variant', 57, 43, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (67, '2023-01-24 15:15:57', '2023-01-24 17:35:02', '编辑', '/admin/student/editInfo', 'mdi-folder-google-drive', 59, 65, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (68, '2023-01-24 16:58:57', '2023-01-24 16:58:57', '导入', '/admin/student/lead', 'mdi-dumbbell', 58, 57, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (69, '2023-01-24 17:37:38', '2023-01-24 17:37:49', '参与的个人竞赛', '/admin/individualCompetition/list', 'mdi-xbox-controller', 60, 64, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (70, '2023-01-24 17:38:33', '2023-01-24 17:38:33', '参与的团队竞赛', '/admin/team/my_game_list', 'mdi-xbox-controller', 61, 64, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (71, '2023-01-24 19:02:34', '2023-01-28 08:56:37', '查看竞赛', 'viewCompetition(\'/admin/competition/viewComption\')', 'mdi-apps', 62, 69, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (72, '2023-01-24 19:04:25', '2023-01-25 17:52:04', '查看成绩', 'showScore(\'/admin/individualCompetition/showScore\')', 'mdi-content-paste', 63, 69, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (73, '2023-01-25 10:03:01', '2023-01-29 17:35:55', '查看竞赛信息', 'viewCompetition(\'/admin/competition/viewComption\')', 'mdi-zip-box', 64, 70, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (74, '2023-01-25 10:04:31', '2023-01-25 10:04:31', '查看成绩', 'showScore(\'/admin/team/show_score\')', 'mdi-white-balance-incandescent', 65, 70, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (75, '2023-01-25 11:06:46', '2023-01-25 11:06:46', '报名是否通过', '/admin/team/is_apply_pass', 'mdi-zip-box', 66, 70, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (76, '2023-01-25 11:18:40', '2023-01-25 11:18:40', '查看团队', 'showTeam(\'/admin/team/show_team_list\')', 'mdi-youtube-play', 67, 70, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (78, '2023-01-25 14:32:49', '2023-01-25 14:32:49', '队长转让', '/admin/team/make_captain', 'mdi-windows', 69, 70, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (79, '2023-01-25 15:28:39', '2023-01-25 15:38:56', '退出团队', 'quit(\'/admin/team/quit_team\')', 'mdi-zip-box', 70, 70, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (80, '2023-01-25 16:00:59', '2023-01-25 16:00:59', '报名', 'apply(\'/admin/student/apply\')', 'mdi-human-greeting', 71, 53, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (81, '2023-01-25 16:06:52', '2023-01-25 16:06:52', '解散团队', '/admin/team/dissolve_team', 'mdi-zip-box', 72, 70, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (82, '2023-01-25 16:28:19', '2023-01-25 16:33:36', '获取专业', '/admin/student/find_professional', 'mdi-xing-circle', 73, 57, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (83, '2023-01-25 16:32:01', '2023-01-25 16:33:56', '获取班级', '/admin/student/find_clazz', 'mdi-window-restore', 74, 57, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (84, '2023-01-25 18:13:05', '2023-01-29 18:54:46', '团队列表', '/admin/competition/team_apply/competition_team', 'mdi-xing-circle', 75, 53, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (85, '2023-01-25 19:47:57', '2023-01-29 18:55:08', '加入团队', '/admin/competition/team_apply/join_team', 'mdi-login-variant', 76, 53, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (86, '2023-01-26 16:19:05', '2023-01-26 16:25:51', '查看竞赛', 'viewCompetition(\'/admin/competition/viewComption\')', 'mdi-xbox-controller-battery-full', 77, 53, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (87, '2023-01-28 10:13:58', '2023-01-29 18:55:28', '创建团队', '/admin/competition/team_apply/create_team', 'mdi-zip-box', 78, 53, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (88, '2023-01-28 13:12:29', '2023-01-28 13:12:29', '团队申请记录', 'apply(\'/admin/team/apply_list\')', 'mdi-xml', 79, 70, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (89, '2023-01-28 13:28:57', '2023-01-28 13:28:57', '查看申请记录', '/admin/team/is_captain', 'mdi-white-balance-sunny', 80, 70, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (90, '2023-01-28 13:30:21', '2023-01-28 13:31:02', '上传图片', '/upload/upload_photo', 'mdi-account-settings-variant', 81, 43, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (91, '2023-01-28 13:53:32', '2023-01-28 15:53:25', '查看报名名单', 'viewRegistration(\'1\')', 'mdi-reorder-horizontal', 82, 53, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (92, '2023-01-28 14:24:56', '2023-01-28 14:24:56', '同意', 'add(\'/admin/team/apply_add\')', 'mdi-weather-fog', 83, 70, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (93, '2023-01-28 14:25:31', '2023-01-28 14:25:31', '删除', 'del(\'/admin/team/apply_delete\')', 'mdi-delete-empty', 84, 70, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (94, '2023-01-28 19:16:41', '2023-01-28 19:16:41', '上传附件', 'uploadAccessory(\'/admin/individualCompetition/upload_accessory\')', 'mdi-xing-circle', 82, 69, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (95, '2023-01-29 09:24:02', '2023-01-29 10:16:45', '查看初赛名单', 'viewMatch(\'2\')', 'mdi-format-align-center', 85, 53, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (96, '2023-01-29 10:17:44', '2023-01-29 10:17:44', '查看初赛|复赛|决赛个人', '/admin/competition/viewPersionMatch', 'mdi-equal', 86, 53, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (97, '2023-01-29 10:19:25', '2023-01-29 10:19:50', '查看初赛|复赛|决赛团队', '/admin/competition/viewTeamMatch', 'mdi-account-switch', 87, 53, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (98, '2023-01-29 13:50:43', '2023-01-29 13:50:55', '查看复赛名单', 'viewMatch(\'3\')', 'mdi-view-list', 88, 53, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (99, '2023-01-29 14:00:37', '2023-01-29 14:00:37', '查看决赛名单', 'viewMatch(\'4\')', 'mdi-format-align-justify', 89, 53, b'1', b'1');

-- ----------------------------
-- Table structure for ylrc_operater_log
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_operater_log`;
CREATE TABLE `ylrc_operater_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1900 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_operater_log
-- ----------------------------

-- ----------------------------
-- Table structure for ylrc_order_auth
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_order_auth`;
CREATE TABLE `ylrc_order_auth`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `mac` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_sn` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_order_auth
-- ----------------------------

-- ----------------------------
-- Table structure for ylrc_professional
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_professional`;
CREATE TABLE `ylrc_professional`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `college_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_g942ws10lcyj2x46s3o1ii1es`(`name`) USING BTREE,
  INDEX `FK31emr0od02p2k3dpms8xxik1d`(`college_id`) USING BTREE,
  CONSTRAINT `FK31emr0od02p2k3dpms8xxik1d` FOREIGN KEY (`college_id`) REFERENCES `ylrc_college` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_professional
-- ----------------------------
INSERT INTO `ylrc_professional` VALUES (10, '2023-01-30 13:43:32', '2023-01-30 13:44:26', 'JAVA开发', 17);
INSERT INTO `ylrc_professional` VALUES (11, '2023-01-30 13:43:55', '2023-01-30 13:43:55', 'Web前端', 17);
INSERT INTO `ylrc_professional` VALUES (12, '2023-01-30 13:44:07', '2023-01-30 13:44:07', '软件工程', 17);
INSERT INTO `ylrc_professional` VALUES (13, '2023-01-30 13:44:18', '2023-01-30 13:44:18', 'UI设计', 17);
INSERT INTO `ylrc_professional` VALUES (14, '2023-01-30 13:45:51', '2023-01-30 13:45:51', 'Andiond安卓', 17);
INSERT INTO `ylrc_professional` VALUES (15, '2023-01-30 13:46:51', '2023-01-30 13:46:51', '国贸经济', 16);
INSERT INTO `ylrc_professional` VALUES (16, '2023-01-30 13:46:58', '2023-01-30 13:46:58', '食品检测', 22);
INSERT INTO `ylrc_professional` VALUES (17, '2023-01-30 13:48:09', '2023-01-30 13:48:09', '食品安全制作专业', 22);
INSERT INTO `ylrc_professional` VALUES (18, '2023-01-30 13:48:20', '2023-01-30 13:48:20', '食品研究', 22);
INSERT INTO `ylrc_professional` VALUES (19, '2023-01-30 13:48:34', '2023-01-30 13:48:34', '原子弹组织和构成专业', 23);
INSERT INTO `ylrc_professional` VALUES (20, '2023-01-30 13:49:06', '2023-01-30 13:49:06', '园林设计专业', 21);
INSERT INTO `ylrc_professional` VALUES (22, '2023-01-31 15:01:17', '2023-01-31 15:01:17', '化石专业', 27);

-- ----------------------------
-- Table structure for ylrc_role
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role`;
CREATE TABLE `ylrc_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_role
-- ----------------------------
INSERT INTO `ylrc_role` VALUES (1, '2020-03-15 13:16:38', '2023-01-19 09:57:11', '超级管理员', '超级管理员拥有最高权限。', 1);
INSERT INTO `ylrc_role` VALUES (2, '2020-03-15 13:18:57', '2020-03-21 22:18:43', '普通管理员', '普通管理员只有部分权限', 1);
INSERT INTO `ylrc_role` VALUES (4, '2020-03-21 20:11:00', '2020-03-23 17:49:00', '测试角色', 'sadsa', 0);
INSERT INTO `ylrc_role` VALUES (9, '2023-01-23 09:02:52', '2023-01-29 14:17:57', '评委', '', 1);
INSERT INTO `ylrc_role` VALUES (10, '2023-01-23 09:03:09', '2023-01-29 18:48:10', '学生', '', 1);

-- ----------------------------
-- Table structure for ylrc_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role_authorities`;
CREATE TABLE `ylrc_role_authorities`  (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  INDEX `FKhj7ap1o1cjrl7enr9arf5f2qp`(`authorities_id`) USING BTREE,
  INDEX `FKg3xdaexmr0x1qx8omhvjtk46d`(`role_id`) USING BTREE,
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_role_authorities
-- ----------------------------
INSERT INTO `ylrc_role_authorities` VALUES (2, 2);
INSERT INTO `ylrc_role_authorities` VALUES (2, 3);
INSERT INTO `ylrc_role_authorities` VALUES (2, 5);
INSERT INTO `ylrc_role_authorities` VALUES (2, 7);
INSERT INTO `ylrc_role_authorities` VALUES (2, 11);
INSERT INTO `ylrc_role_authorities` VALUES (2, 13);
INSERT INTO `ylrc_role_authorities` VALUES (2, 16);
INSERT INTO `ylrc_role_authorities` VALUES (4, 2);
INSERT INTO `ylrc_role_authorities` VALUES (4, 13);
INSERT INTO `ylrc_role_authorities` VALUES (4, 15);
INSERT INTO `ylrc_role_authorities` VALUES (9, 33);
INSERT INTO `ylrc_role_authorities` VALUES (9, 43);
INSERT INTO `ylrc_role_authorities` VALUES (9, 66);
INSERT INTO `ylrc_role_authorities` VALUES (9, 90);
INSERT INTO `ylrc_role_authorities` VALUES (9, 52);
INSERT INTO `ylrc_role_authorities` VALUES (9, 53);
INSERT INTO `ylrc_role_authorities` VALUES (9, 86);
INSERT INTO `ylrc_role_authorities` VALUES (9, 91);
INSERT INTO `ylrc_role_authorities` VALUES (9, 95);
INSERT INTO `ylrc_role_authorities` VALUES (9, 96);
INSERT INTO `ylrc_role_authorities` VALUES (9, 97);
INSERT INTO `ylrc_role_authorities` VALUES (9, 98);
INSERT INTO `ylrc_role_authorities` VALUES (9, 99);
INSERT INTO `ylrc_role_authorities` VALUES (10, 52);
INSERT INTO `ylrc_role_authorities` VALUES (10, 53);
INSERT INTO `ylrc_role_authorities` VALUES (10, 80);
INSERT INTO `ylrc_role_authorities` VALUES (10, 84);
INSERT INTO `ylrc_role_authorities` VALUES (10, 85);
INSERT INTO `ylrc_role_authorities` VALUES (10, 86);
INSERT INTO `ylrc_role_authorities` VALUES (10, 87);
INSERT INTO `ylrc_role_authorities` VALUES (10, 91);
INSERT INTO `ylrc_role_authorities` VALUES (10, 95);
INSERT INTO `ylrc_role_authorities` VALUES (10, 96);
INSERT INTO `ylrc_role_authorities` VALUES (10, 97);
INSERT INTO `ylrc_role_authorities` VALUES (10, 98);
INSERT INTO `ylrc_role_authorities` VALUES (10, 99);
INSERT INTO `ylrc_role_authorities` VALUES (10, 64);
INSERT INTO `ylrc_role_authorities` VALUES (10, 65);
INSERT INTO `ylrc_role_authorities` VALUES (10, 67);
INSERT INTO `ylrc_role_authorities` VALUES (10, 69);
INSERT INTO `ylrc_role_authorities` VALUES (10, 71);
INSERT INTO `ylrc_role_authorities` VALUES (10, 72);
INSERT INTO `ylrc_role_authorities` VALUES (10, 94);
INSERT INTO `ylrc_role_authorities` VALUES (10, 70);
INSERT INTO `ylrc_role_authorities` VALUES (10, 73);
INSERT INTO `ylrc_role_authorities` VALUES (10, 74);
INSERT INTO `ylrc_role_authorities` VALUES (10, 75);
INSERT INTO `ylrc_role_authorities` VALUES (10, 76);
INSERT INTO `ylrc_role_authorities` VALUES (10, 78);
INSERT INTO `ylrc_role_authorities` VALUES (10, 79);
INSERT INTO `ylrc_role_authorities` VALUES (10, 81);
INSERT INTO `ylrc_role_authorities` VALUES (10, 88);
INSERT INTO `ylrc_role_authorities` VALUES (10, 89);
INSERT INTO `ylrc_role_authorities` VALUES (10, 92);
INSERT INTO `ylrc_role_authorities` VALUES (10, 93);
INSERT INTO `ylrc_role_authorities` VALUES (1, 2);
INSERT INTO `ylrc_role_authorities` VALUES (1, 3);
INSERT INTO `ylrc_role_authorities` VALUES (1, 5);
INSERT INTO `ylrc_role_authorities` VALUES (1, 8);
INSERT INTO `ylrc_role_authorities` VALUES (1, 9);
INSERT INTO `ylrc_role_authorities` VALUES (1, 7);
INSERT INTO `ylrc_role_authorities` VALUES (1, 10);
INSERT INTO `ylrc_role_authorities` VALUES (1, 11);
INSERT INTO `ylrc_role_authorities` VALUES (1, 12);
INSERT INTO `ylrc_role_authorities` VALUES (1, 13);
INSERT INTO `ylrc_role_authorities` VALUES (1, 14);
INSERT INTO `ylrc_role_authorities` VALUES (1, 15);
INSERT INTO `ylrc_role_authorities` VALUES (1, 16);
INSERT INTO `ylrc_role_authorities` VALUES (1, 19);
INSERT INTO `ylrc_role_authorities` VALUES (1, 20);
INSERT INTO `ylrc_role_authorities` VALUES (1, 21);
INSERT INTO `ylrc_role_authorities` VALUES (1, 22);
INSERT INTO `ylrc_role_authorities` VALUES (1, 23);
INSERT INTO `ylrc_role_authorities` VALUES (1, 24);
INSERT INTO `ylrc_role_authorities` VALUES (1, 25);
INSERT INTO `ylrc_role_authorities` VALUES (1, 26);
INSERT INTO `ylrc_role_authorities` VALUES (1, 28);
INSERT INTO `ylrc_role_authorities` VALUES (1, 29);
INSERT INTO `ylrc_role_authorities` VALUES (1, 30);
INSERT INTO `ylrc_role_authorities` VALUES (1, 31);
INSERT INTO `ylrc_role_authorities` VALUES (1, 32);
INSERT INTO `ylrc_role_authorities` VALUES (1, 39);
INSERT INTO `ylrc_role_authorities` VALUES (1, 40);
INSERT INTO `ylrc_role_authorities` VALUES (1, 41);
INSERT INTO `ylrc_role_authorities` VALUES (1, 42);
INSERT INTO `ylrc_role_authorities` VALUES (1, 44);
INSERT INTO `ylrc_role_authorities` VALUES (1, 45);
INSERT INTO `ylrc_role_authorities` VALUES (1, 46);
INSERT INTO `ylrc_role_authorities` VALUES (1, 47);
INSERT INTO `ylrc_role_authorities` VALUES (1, 48);
INSERT INTO `ylrc_role_authorities` VALUES (1, 49);
INSERT INTO `ylrc_role_authorities` VALUES (1, 50);
INSERT INTO `ylrc_role_authorities` VALUES (1, 51);
INSERT INTO `ylrc_role_authorities` VALUES (1, 57);
INSERT INTO `ylrc_role_authorities` VALUES (1, 58);
INSERT INTO `ylrc_role_authorities` VALUES (1, 59);
INSERT INTO `ylrc_role_authorities` VALUES (1, 60);
INSERT INTO `ylrc_role_authorities` VALUES (1, 62);
INSERT INTO `ylrc_role_authorities` VALUES (1, 63);
INSERT INTO `ylrc_role_authorities` VALUES (1, 68);
INSERT INTO `ylrc_role_authorities` VALUES (1, 82);
INSERT INTO `ylrc_role_authorities` VALUES (1, 83);
INSERT INTO `ylrc_role_authorities` VALUES (1, 33);
INSERT INTO `ylrc_role_authorities` VALUES (1, 34);
INSERT INTO `ylrc_role_authorities` VALUES (1, 35);
INSERT INTO `ylrc_role_authorities` VALUES (1, 36);
INSERT INTO `ylrc_role_authorities` VALUES (1, 37);
INSERT INTO `ylrc_role_authorities` VALUES (1, 52);
INSERT INTO `ylrc_role_authorities` VALUES (1, 53);
INSERT INTO `ylrc_role_authorities` VALUES (1, 54);
INSERT INTO `ylrc_role_authorities` VALUES (1, 55);
INSERT INTO `ylrc_role_authorities` VALUES (1, 56);
INSERT INTO `ylrc_role_authorities` VALUES (1, 80);
INSERT INTO `ylrc_role_authorities` VALUES (1, 84);
INSERT INTO `ylrc_role_authorities` VALUES (1, 85);
INSERT INTO `ylrc_role_authorities` VALUES (1, 86);
INSERT INTO `ylrc_role_authorities` VALUES (1, 87);
INSERT INTO `ylrc_role_authorities` VALUES (1, 91);
INSERT INTO `ylrc_role_authorities` VALUES (1, 95);
INSERT INTO `ylrc_role_authorities` VALUES (1, 96);
INSERT INTO `ylrc_role_authorities` VALUES (1, 97);
INSERT INTO `ylrc_role_authorities` VALUES (1, 98);
INSERT INTO `ylrc_role_authorities` VALUES (1, 99);

-- ----------------------------
-- Table structure for ylrc_student
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_student`;
CREATE TABLE `ylrc_student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `clazz_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `head_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_g2abhpm1smojgkp19c3vivqpk`(`student_number`) USING BTREE,
  INDEX `FKojifflll0nukkmlc0t69bjyqa`(`clazz_id`) USING BTREE,
  INDEX `FKe83orkk340l35tp3o39b4v859`(`role_id`) USING BTREE,
  CONSTRAINT `FKe83orkk340l35tp3o39b4v859` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKojifflll0nukkmlc0t69bjyqa` FOREIGN KEY (`clazz_id`) REFERENCES `ylrc_clazz` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_student
-- ----------------------------
INSERT INTO `ylrc_student` VALUES (47, '2023-01-31 15:09:45', '2023-01-31 15:09:45', '测试学生', 12, '123456', '13529788521', 1, 20, 10, 1, '', '17530710863');
INSERT INTO `ylrc_student` VALUES (48, '2023-01-31 15:14:58', '2023-01-31 15:14:58', '赵炫烨', 22, '123456', '13456789101', 1, 20, 10, 1, '', '17530710864');
INSERT INTO `ylrc_student` VALUES (49, '2023-01-31 16:00:36', '2023-01-31 16:00:36', '猿来入此2', 20, '123456', '15518163123', 1, 19, 10, 1, '', '1710272236');
INSERT INTO `ylrc_student` VALUES (50, '2023-01-31 16:01:13', '2023-01-31 16:01:13', '猿来入此2', 19, '123456', '15518166234', 1, 19, 10, 1, '', '1710272235');
INSERT INTO `ylrc_student` VALUES (51, '2023-01-31 16:01:47', '2023-01-31 16:01:47', '猿来入此3', 20, '123456', '15518166456', 1, 19, 10, 1, '', '1710272234');
INSERT INTO `ylrc_student` VALUES (52, '2023-01-31 16:13:18', '2023-01-31 16:13:18', '猿来入此吧', 20, '123456', '15518166012', 1, 19, 10, 1, '', '1710272250');
INSERT INTO `ylrc_student` VALUES (53, '2023-01-19 10:08:24', '2023-01-19 10:08:24', 'Lee', 19, '123456', '15867827988', 1, 17, 10, 1, '', '202019951206');

-- ----------------------------
-- Table structure for ylrc_team_accessory
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_team_accessory`;
CREATE TABLE `ylrc_team_accessory`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `finals_accessory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finals_status` int(11) NULL DEFAULT NULL,
  `preliminaries_accessory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_round_accessory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_round_status` int(11) NULL DEFAULT NULL,
  `team_competition_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6pa84uv9b3fxxfrgthmgy0g25`(`team_competition_id`) USING BTREE,
  CONSTRAINT `FK6pa84uv9b3fxxfrgthmgy0g25` FOREIGN KEY (`team_competition_id`) REFERENCES `ylrc_team_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_team_accessory
-- ----------------------------
INSERT INTO `ylrc_team_accessory` VALUES (5, '2023-01-31 15:41:28', '2023-01-31 15:47:14', '20201231/1609400833668-181167e2-1df0-4d39-997c-081fba7cf4d3.rar', 1, '20201231/1609400487780-023a32f7-6af0-4326-8d9f-9a62f4de078e.rar', '20201231/1609400659597-8dcb8c1a-7d5a-4585-a500-478d51f440bf.rar', 1, 19);
INSERT INTO `ylrc_team_accessory` VALUES (6, '2023-01-31 16:19:17', '2023-01-31 16:23:13', '20201231/1609402992513-513a19b8-a550-4220-aed5-0dba30ba310a.rar', 1, '20201231/1609402757184-911cbbb9-d561-4500-834e-77577847bd5f.rar', '20201231/1609402869723-6e5829a1-2a14-449a-99f2-2f6c21795996.rar', 1, 22);
INSERT INTO `ylrc_team_accessory` VALUES (7, '2023-01-31 16:23:42', '2023-01-31 16:23:42', '20201231/1609403021566-2c9e3b2b-653e-40d8-b614-99cae013e8e9.rar', 1, NULL, NULL, 0, 23);

-- ----------------------------
-- Table structure for ylrc_team_apply
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_team_apply`;
CREATE TABLE `ylrc_team_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `stauts` int(11) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  `team_competition_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKoya28ushfmxbyd20vot3ev02u`(`student_id`) USING BTREE,
  INDEX `FKsk6d8i0lyqdosu5vlkwemo3t3`(`team_competition_id`) USING BTREE,
  CONSTRAINT `FKoya28ushfmxbyd20vot3ev02u` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsk6d8i0lyqdosu5vlkwemo3t3` FOREIGN KEY (`team_competition_id`) REFERENCES `ylrc_team_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_team_apply
-- ----------------------------
INSERT INTO `ylrc_team_apply` VALUES (23, '2023-01-31 15:38:52', '2023-01-31 15:39:04', 1, 47, 19);
INSERT INTO `ylrc_team_apply` VALUES (24, '2023-01-31 15:39:26', '2023-01-31 15:39:54', 1, 49, 20);
INSERT INTO `ylrc_team_apply` VALUES (25, '2023-01-31 16:15:29', '2023-01-31 16:16:07', 1, 50, 22);
INSERT INTO `ylrc_team_apply` VALUES (26, '2023-01-31 16:15:41', '2023-01-31 16:15:41', 0, 49, 22);
INSERT INTO `ylrc_team_apply` VALUES (27, '2023-01-31 16:16:26', '2023-01-31 16:16:39', 1, 49, 23);

-- ----------------------------
-- Table structure for ylrc_team_competition
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_team_competition`;
CREATE TABLE `ylrc_team_competition`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `finals_score` int(11) NULL DEFAULT NULL,
  `finals_score_status` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preliminaries_score` int(11) NULL DEFAULT NULL,
  `preliminaries_score_status` int(11) NULL DEFAULT NULL,
  `preliminaries_status` int(11) NULL DEFAULT NULL,
  `second_round_score` int(11) NULL DEFAULT NULL,
  `second_round_score_status` int(11) NULL DEFAULT NULL,
  `second_round_status` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `competition_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKga6b9mjxg4c5ixjtb77s3wvlh`(`competition_id`) USING BTREE,
  INDEX `FK7w9ytiwx9lthxb2e9vdvlmj0q`(`student_id`) USING BTREE,
  CONSTRAINT `FK7w9ytiwx9lthxb2e9vdvlmj0q` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKga6b9mjxg4c5ixjtb77s3wvlh` FOREIGN KEY (`competition_id`) REFERENCES `ylrc_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_team_competition
-- ----------------------------
INSERT INTO `ylrc_team_competition` VALUES (19, '2023-01-31 15:38:13', '2023-01-31 15:47:07', 10, 1, '恋爱团队', 100, 1, 1, 100, 1, 1, 1, 56, 51);
INSERT INTO `ylrc_team_competition` VALUES (20, '2023-01-31 15:38:45', '2023-01-31 15:38:45', 0, 0, 'QQ小組', 0, 0, 0, 0, 0, 0, 3, 56, 48);
INSERT INTO `ylrc_team_competition` VALUES (22, '2023-01-31 16:15:08', '2023-01-31 16:24:05', 100, 1, '敲代码团队', 100, 1, 1, 100, 1, 1, 1, 58, 51);
INSERT INTO `ylrc_team_competition` VALUES (23, '2023-01-31 16:16:14', '2023-01-31 16:24:09', 100, 1, '杨洋喜欢的妹子是', 100, 1, 1, 100, 1, 1, 1, 58, 52);

-- ----------------------------
-- Table structure for ylrc_team_member
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_team_member`;
CREATE TABLE `ylrc_team_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  `team_competition_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKomwsmd2pocfkeo0n7hgnm6gmf`(`student_id`) USING BTREE,
  INDEX `FKmn8a2wo00jvj2otuy83uxfxa0`(`team_competition_id`) USING BTREE,
  CONSTRAINT `FKmn8a2wo00jvj2otuy83uxfxa0` FOREIGN KEY (`team_competition_id`) REFERENCES `ylrc_team_competition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKomwsmd2pocfkeo0n7hgnm6gmf` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_team_member
-- ----------------------------
INSERT INTO `ylrc_team_member` VALUES (36, '2023-01-31 15:38:13', '2023-01-31 15:38:13', 51, 19);
INSERT INTO `ylrc_team_member` VALUES (37, '2023-01-31 15:38:45', '2023-01-31 15:38:45', 48, 20);
INSERT INTO `ylrc_team_member` VALUES (39, '2023-01-31 15:39:04', '2023-01-31 15:39:04', 47, 19);
INSERT INTO `ylrc_team_member` VALUES (40, '2023-01-31 15:39:54', '2023-01-31 15:39:54', 49, 20);
INSERT INTO `ylrc_team_member` VALUES (41, '2023-01-31 16:15:08', '2023-01-31 16:15:08', 51, 22);
INSERT INTO `ylrc_team_member` VALUES (42, '2023-01-31 16:16:07', '2023-01-31 16:16:07', 50, 22);
INSERT INTO `ylrc_team_member` VALUES (43, '2023-01-31 16:16:14', '2023-01-31 16:16:14', 52, 23);
INSERT INTO `ylrc_team_member` VALUES (44, '2023-01-31 16:16:39', '2023-01-31 16:16:39', 49, 23);

-- ----------------------------
-- Table structure for ylrc_user
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_user`;
CREATE TABLE `ylrc_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_btsosjytrl4hu7fnm1intcpo8`(`username`) USING BTREE,
  INDEX `FKg09b8o67eu61st68rv6nk8npj`(`role_id`) USING BTREE,
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ylrc_user
-- ----------------------------
INSERT INTO `ylrc_user` VALUES (1, '2023-01-18 19:18:53', '2023-02-28 11:34:00', 'ylrc@qq.com', '20230228/1677555237320.jpg', 'attr', '123456', 1, 1, 'admin', 1);
INSERT INTO `ylrc_user` VALUES (2, '2023-01-18 19:20:36', '2023-01-21 22:18:55', 'llq@qq.com', '20200318/1584530412075.jpg', '13918655758', '123456', 1, 1, '测试账号', 2);
INSERT INTO `ylrc_user` VALUES (5, '2023-01-20 20:42:19', '2023-01-23 17:50:19', 'yw@qq.com', '20200323/1584956702094.png', '13356565959', '123456', 1, 1, '小刘同志', 4);
INSERT INTO `ylrc_user` VALUES (10, '2023-01-30 16:34:28', '2023-01-31 14:24:02', '115432031@qq.com', '20201231/1609395840462.jpg', '15518166316', '123456', 1, 1, '猿走此出', 1);

SET FOREIGN_KEY_CHECKS = 1;
