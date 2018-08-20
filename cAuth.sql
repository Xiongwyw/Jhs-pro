/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : cAuth

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 08/10/2017 22:22:52 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cSessionInfo`
-- ----------------------------
DROP TABLE IF EXISTS `cSessionInfo`;
CREATE TABLE `cSessionInfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会话管理用户信息';


/*用户表*/
/*
* ID: 用户ID(start for 10000)
* Name: 用户姓名
* Type: 用户类型 0：普通用户， 1： 推广用户， 2： VIP用户（default: 0）， 4：测试用户
* Consume-amount: 消费金额
* Cashback-amount: 返现金额
* Withdraw-amount: 已提现金额
* Entry-mode:进入方式（0：搜索， 1：扫码， 2： 分享）
* Entry-Date: 日期
* ParentID: 推广用户ID
*/
-- ----------------------------
--  Table structure for `cUser`
-- ----------------------------
DROP TABLE IF EXISTS `cUser`;
CREATE TABLE `cUserInfo`(
	`userid` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` varchar(100) NOT NULL,
	`type` char(1) NOT NULL DEFAULT 0,
	`consume` int NULL DEFAULT 0,
	`cashback` int NULL DEFAULT 0,
	`withdraw` int NULL DEFAULT 0,
	`entrymode` char(1) NOT NULL DEFAULT 0,
	`date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`parentid` int NOT NULL DEFAULT 0,
	KEY `parentid` ('userid') USING BTREE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=10000 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息';


/*订单表*/
/*
* ID: 订单ID
* UserID: 用户ID
* GoodsInfo: 商品信息（Json）
* Cash: 金额
* Cashback:返现金额
* Date: 日期
* Status: 状态(0:待发货，1：待收货，2：确认收货， 3：取消订单)
* Remarks: 备注
*/
-- ----------------------------
--  Table structure for `cOrder`
-- ----------------------------
DROP TABLE IF EXISTS `cOrder`;
CREATE TABLE `cOrder`(
	`id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`userid` int NOT NULL,
	
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单信息';

/*商品表*/
/*
* ID：商品ID
* Name:商品名称
* Category: 类别
* Subject: 科目
* Price: 价格
* Cashback-rate:返现率
* Cost-price: 成本价
* Status:状态（0：待上架， 1：下架， 2： 上架， 3：缺货）
* Date: 上架日期
* Data: 下架日期
*/
-- ----------------------------
--  Table structure for `cGoods`
-- ----------------------------
DROP TABLE IF EXISTS `cGoods`;
CREATE TABLE `cGoods`(
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品信息';

SET FOREIGN_KEY_CHECKS = 1;
