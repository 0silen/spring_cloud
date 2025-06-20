/*
 Navicat Premium Data Transfer

 Source Server         : SIRIN
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : homework

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 28/12/2024 18:02:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for purchases
-- ----------------------------
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(0) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `total` decimal(10, 2) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createdAt` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchases
-- ----------------------------
INSERT INTO `purchases` VALUES (32, 'Product B', 3, 15.00, 45.00, '3', '2024-12-28 13:05:45');
INSERT INTO `purchases` VALUES (33, 'Product C', 10, 50.00, 500.00, '4', '2024-12-28 13:05:52');
INSERT INTO `purchases` VALUES (34, 'Product D', 2, 35.75, 71.50, '5', '2024-12-28 13:06:00');
INSERT INTO `purchases` VALUES (35, 'Product E', 8, 25.30, 202.40, '2', '2024-12-28 13:06:08');
INSERT INTO `purchases` VALUES (36, 'Product F', 4, 40.00, 160.00, '3', '2024-12-28 13:06:15');
INSERT INTO `purchases` VALUES (37, 'Product G', 6, 60.00, 360.00, '4', '2024-12-28 13:06:25');
INSERT INTO `purchases` VALUES (38, 'Product H', 12, 30.25, 363.00, '5', '2024-12-28 13:06:32');
INSERT INTO `purchases` VALUES (39, 'Product I', 7, 22.80, 159.60, '2', '2024-12-28 13:06:39');
INSERT INTO `purchases` VALUES (40, 'Product J', 3, 45.90, 137.70, '3', '2024-12-28 13:06:46');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'ADMIN');
INSERT INTO `roles` VALUES (2, 'EMPLOYEE');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleid` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`roleid`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', 2);
INSERT INTO `users` VALUES (2, '2', '2', 2);
INSERT INTO `users` VALUES (8, '3', '3', 1);
INSERT INTO `users` VALUES (9, '4', '4', 2);
INSERT INTO `users` VALUES (10, '5', '5', 1);
INSERT INTO `users` VALUES (11, 'test1', '1', 2);
INSERT INTO `users` VALUES (12, 'test2', '1', 2);

SET FOREIGN_KEY_CHECKS = 1;
