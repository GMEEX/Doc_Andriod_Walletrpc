-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 9.34.80.3:12707
-- 生成日期： 2020-04-14 18:37:27
-- 服务器版本： 5.6.28-cdb2016-log
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `bizzan2`
--

-- --------------------------------------------------------

--
-- 表的结构 `activity`
--

CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL,
  `activity_link` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `notice_link` varchar(255) DEFAULT NULL,
  `progress` int(11) NOT NULL,
  `settings` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `step` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accept_unit` varchar(255) NOT NULL,
  `amount_scale` int(11) NOT NULL,
  `banner_image_url` varchar(255) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `detailen` varchar(255) DEFAULT NULL,
  `end_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `limit_times` int(11) NOT NULL,
  `max_limit_amout` decimal(24,8) DEFAULT NULL,
  `min_limit_amout` decimal(24,8) DEFAULT NULL,
  `price` decimal(18,8) DEFAULT NULL,
  `price_scale` int(11) NOT NULL,
  `small_image_url` varchar(255) DEFAULT NULL,
  `start_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '开始时间',
  `titleen` varchar(255) DEFAULT NULL,
  `total_supply` decimal(24,8) NOT NULL,
  `traded_amount` decimal(24,8) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `freeze_amount` decimal(26,8) DEFAULT '0.00000000',
  `levelone_count` int(11) NOT NULL,
  `mining_days` int(11) NOT NULL,
  `mining_daysprofit` decimal(24,8) DEFAULT '0.00000000',
  `mining_invite` decimal(24,8) DEFAULT '0.00000000',
  `mining_invitelimit` decimal(24,8) DEFAULT '0.00000000',
  `mining_unit` varchar(255) NOT NULL,
  `mining_period` int(11) NOT NULL,
  `hold_limit` decimal(24,8) DEFAULT '0.00000000',
  `hold_unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- 表的结构 `activity_order`
--

CREATE TABLE `activity_order` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `amount` decimal(24,8) DEFAULT '0.00000000',
  `base_symbol` varchar(255) DEFAULT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `freeze_amount` decimal(24,8) DEFAULT '0.00000000',
  `member_id` bigint(20) DEFAULT NULL,
  `price` decimal(24,8) DEFAULT '0.00000000',
  `state` int(11) NOT NULL,
  `turnover` decimal(26,16) DEFAULT '0.0000000000000000',
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `mobile_phone` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `department_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `avatar`, `email`, `enable`, `last_login_ip`, `last_login_time`, `mobile_phone`, `password`, `qq`, `real_name`, `role_id`, `status`, `username`, `department_id`) VALUES
(1, 'kjglkasdjg/sdfasdf/asdf', 'root', 0, '114.222.191.30', '2020-04-14 18:31:30', '18602588888', '985eb5b028065701341a478a9215e7b2', '000000', 'Admin', 1, 0, 'root', 1);

-- --------------------------------------------------------

--
-- 表的结构 `admin_access_log`
--

CREATE TABLE `admin_access_log` (
  `id` bigint(20) NOT NULL,
  `access_ip` varchar(255) DEFAULT NULL,
  `access_method` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_access_log`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_permission`
--

CREATE TABLE `admin_permission` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_permission`
--

INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (2,'角色管理','system:role:all',8,0,'角色管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (3,'用户管理','system:employee:page-query',8,0,'用户管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (4,'部门管理','system:department:all',8,0,'部门管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (5,'站点管理','system:website-information:find-one',8,0,'站点管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (6,'菜单管理','system:role:permission:all',8,0,'菜单管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (7,'系统日志','system:access-log:page-query',8,0,'系统日志');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (8,'系统管理','system-------',0,7,'系统管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (9,'广告管理','cms:system-advertise:page-query',18,0,'广告管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (10,'帮助管理','cms:system-help:page-query',18,0,'帮助管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (11,'会员管理','member--------',0,1,'会员管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (12,'会员管理','member:page-query',11,0,'会员管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (13,'实名管理','member:member-application:page-query',11,0,'实名管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (14,'会员监控','member--------',11,0,'会员监控');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (18,'内容管理','cms-------',0,4,'内容管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (19,'交易明细','finance:member-transaction:page-query',93,0,'交易记录');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (20,'提现管理','finance:withdraw-record:page-query',93,0,'提现管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (23,'币种管理','system:coin:page-query',8,0,'币币币种管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (26,'公告管理','cms:notice',18,0,'公告管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (27,'创建修改角色','system:role:merge',8,0,'创建修改角色');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (28,'更改角色权限','system:role:permission:update',8,0,'更改角色权限');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (29,'角色拥有权限','system:role:permission',8,0,'角色拥有权限');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (30,'全部权限树','system:role:permission:all',8,0,'全部权限树');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (31,'创建更改后台用户','system:employee:merge',8,0,'创建更改后台用户');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (32,'后台用户详情','system:employee:detail',8,0,'后台用户详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (33,'站点信息修改','system:website-information:alter',8,0,'站点信息修改');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (34,'系统日志详情','system:access-log:detail',8,0,'系统日志详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (35,'创建系统广告','cms:system-advertise:create',18,0,'创建系统广告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (36,'所有系统广告','cms:system-advertise:all',18,0,'所有系统广告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (37,'系统广告详情','cms:system-advertise:detail',18,0,'系统广告详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (38,'更新系统广告','cms:system-advertise:update',18,0,'更新系统广告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (39,'删除系统广告','cms:system-advertise:deletes',18,0,'删除系统广告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (40,'导出广告excel','cms:system-advertise:out-excel',18,0,'导出广告excel');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (41,'创建系统帮助','cms:system-help:create',18,0,'创建系统帮助');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (42,'系统帮助详情','cms:system-help:detail',18,0,'系统帮助详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (43,'更新系统帮助','cms:system-help:update',18,0,'更新系统帮助');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (44,'删除系统帮助','cms:system-help:deletes',18,0,'删除系统帮助');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (45,'导出系统帮助excel','cms:system-help:out-excel',18,0,'导出系统帮助excel');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (46,'会员详情','member:detail',11,0,'会员详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (47,'会员删除','member:delete',11,0,'会员删除');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (48,'会员更新','member:update',11,0,'会员更新');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (49,'认证商家审核','member:audit-business',66,0,'认证商家审核');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (50,'导出会员excel','member:out-excel',11,0,'导出会员excel');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (51,'实名信息详情','member:member-application:detail',11,0,'实名信息详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (52,'实名审核通过','member:member-application:pass',11,0,'实名审核通过');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (53,'实名审核不通过','member:member-application:no-pass',11,0,'实名审核不通过');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (54,'交易记录详情','finance:member-transaction:detail',93,0,'交易记录详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (55,'导出交易记录excel','finance:member-transaction:out-excel',93,0,'导出交易记录excel');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (56,'提现记录详情','finance:withdraw-record:detail',93,0,'提现记录详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (57,'提现记录一键审核通过','finance:withdraw-record:audit-pass',93,0,'提现记录一键审核通过');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (58,'提现记录一键审核不通过','finance:withdraw-record:audit-no-pass',93,0,'提现记录一键审核不通过');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (59,'批量打款','finance:withdraw-record:remittance',93,0,'批量打款');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (60,'币币管理','exchange-------',0,5,'币币管理父菜单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (61,'币币交易订单详情','exchange:exchange-order:detail',60,0,'币币交易订单详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (62,'订单管理','exchange:exchange-order:page-query',60,0,'币币交易订单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (63,'导出币币交易订单excel','exchange:exchange-order:out-excel',60,0,'导出币币交易订单excel');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (64,'币种管理','exchange:exchange-coin:page-query',60,0,'币种管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (65,'币币交易对详情','exchange:exchange-coin:detail',60,0,'币币交易对详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (66,'OTC管理','otc-------',0,10,'法币otc');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (67,'后台广告详情','otc:advertise:detail',66,0,'后台广告详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (68,'关闭后台广告','otc:advertise:turnoff',66,0,'关闭后台广告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (69,'后台广告状态修改','otc:advertise:alter-status',66,0,'后台广告状态修改');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (70,'后台广告','otc:advertise:page-query',66,0,'后台广告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (71,'后台广告导出excel','otc:advertise:out-excel',66,0,'后台广告导出excel');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (72,'后台申诉','otc:appeal:page-query',66,0,'后台申诉');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (73,'申诉详情','otc:appeal:detail',66,0,'申诉详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (74,'申诉处理','otc:appeal:audit',66,0,'申诉处理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (75,'法币交易订单详情','otc:order:detail',66,0,'法币交易订单详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (76,'法币交易订单状态修改','otc:order:alert-status',66,0,'法币交易订单状态修改');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (77,'订单管理','otc:order:page-query',66,0,'法币交易订单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (78,'导出法币交易订单excel','otc:order:out-excel',66,0,'导出法币交易订单excel');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (79,'创建otc币种','otc:otc-coin:create',66,0,'创建otc币种');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (80,'otc币种详情','otc:otc-coin:detail',66,0,'otc币种详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (81,'otc币种更新','otc:otc-coin:update',66,0,'otc币种更新');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (82,'otc币种交易率修改','otc:otc-coin:alter-jy-rate',66,0,'otc币种交易率修改');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (83,'币种管理','otc:otc-coin:page-query',66,0,'法币币种管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (84,'导出otc币种excel','otc:otc-coin:out-excel',66,0,'导出otc币种excel');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (85,'创建后台货币','system:coin:create',8,0,'创建后台货币');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (86,'部门详情','system:department:detail',8,0,'部门详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (87,'查询新增用户曲线','system:statistics:member-statistics',8,0,'查询新增用户曲线');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (88,'委托量曲线','system:statistics:delegation-statistics',8,0,'委托量曲线');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (89,'法币交易订单量曲线','system:statistics:order-statistics',8,0,'法币交易订单量曲线');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (90,'otc_order统计','system:statistics:dashboard',8,0,'otc_order统计');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (91,'余额管理','member:member-wallet:balance',11,0,'余额管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (92,'充值管理','finance:member-transaction:page-query:recharge',93,0,'充值管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (93,'财务管理','finance-------',0,4,'财务管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (94,'提币审核','finance:member-transaction:page-query:check',93,0,'提现客服审核');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (95,'手续费管理','finance:member-transaction:page-query:fee',93,0,'手续费管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (96,'创建公告','system:announcement:create',8,0,'创建公告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (97,'分页查询公告','system:announcement:page-query',8,0,'分页查询公告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (98,'删除公告','system:announcement:deletes',8,0,'删除公告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (99,'公告详情','system:announcement:detail',8,0,'公告详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (100,'更新公告','system:announcement:update',8,0,'更新公告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (101,'关闭公告','system:announcement:turn-off',8,0,'关闭公告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (102,'打开公告','system:announcement:turn-on',8,0,'打开公告');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (103,'币币设置','exchange:set',60,0,'币币设置');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (104,'放币处理','otc:appeal:release-coin',66,0,'放币处理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (105,'取消订单','otc:appeal:cancel-order',66,0,'取消订单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (106,'创建修改部门','system:department:merge',8,0,'创建修改部门');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (107,'删除exchangeCoin','exchange:exchange-coin:deletes',60,0,'删除exchangeCoin');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (108,'删除otcCoin','otc:otc-coin:deletes',66,0,'删除otcCoin');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (109,'删除部门','system:department:deletes',8,0,'删除部门');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (110,'增加/修改权限','system:permission:merge',8,0,'增加权限');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (111,'权限管理','system:permission:page-query',8,0,'分页查询权限');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (112,'权限详情','system:permission:details',8,0,'权限详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (113,'权限删除','system:permission:deletes',8,0,'权限删除');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (114,'添加交易流水号','finance:withdraw-record:add-transaction-number',93,0,'财务提现转账成功添加流水号');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (115,'人工充值','member:member-wallet:recharge',11,0,'人工充值');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (116,'首页订单数','otc:order:get-order-num',66,0,'首页订单数');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (117,'投票管理','system:vote:merge',8,0,'新增/修改投票');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (118,'分页查询','system:vote:page-query',8,0,'分页查询');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (119,'admin更改密码','system:employee:update-password',8,0,'admin更改密码');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (120,'系统公告置顶','cms:system-help:top',18,0,'系统公告置顶');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (121,'系统广告置顶','cms:system-advertise:top',18,0,'系统广告置顶');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (122,'公告置顶','system:announcement:top',8,0,'公告置顶');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (123,'转账地址','system:transfer-address:page-query',8,0,'转账地址管理    拍币网独有');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (124,'新增/修改转账地址','system:transfer-address:merge',8,0,'新增/修改转账地址  拍币网独有');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (125,'转账地址详情','system:transfer-address:detail',8,0,'转账地址详情  拍币网独有');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (126,'批量删除转账地址','system:transfer-address:deletes',8,0,'批量删除转账地址   拍币网独有');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (128,'分红管理','system:dividend:page-query',8,0,'分红管理分页查询');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (129,'开始分红','system:dividend:start',8,0,'开始分红');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (130,'分红手续费','system:dividend:fee-query',8,0,'分红手续费');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (131,'充币记录','finance:member-deposit:page-query',93,0,'区块链钱包充币记录');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (132,'人工转账','system:coin:transfer',8,0,'热钱包转账至冷钱包');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (133,'转入明细','system:coin:hot-transfer-record:page-query',8,0,'热钱包转入冷钱包记录');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (134,'实名认证配置修改','system:member-application-config:merge',8,0,'实名认证配置修改');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (135,'实名认证配置详情','system:member-application-config:detail',8,0,'实名认证配置详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (136,'禁用/解禁发布广告','member:alter-publish-advertisement-status',11,0,'禁用/解禁发布广告 1表示正常');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (137,'禁用/解禁会员账号','member:alter-status',11,0,'禁用/解禁会员账号 0表示正常');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (138,'推荐会员','promotion:member:page-query',143,0,'推荐会员分页');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (139,'删除用户','system:employee:deletes',8,0,'批量删除用户');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (140,'充值管理','legal-wallet-recharge',66,0,'充值管理分页');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (141,'提币管理','legal-wallet-withdraw',66,0,'提币管理查询分页');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (142,'是否禁止交易','member:alter-transaction-status',11,0,'是否禁止交易  1表示正常');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (143,'推荐返佣','promotion-------',0,9,'推荐返佣 根');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (144,'新增/修改推荐返佣配置','promotion:reward:merge',143,0,'新增/修改推荐返佣配置');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (145,'重置会员钱包地址','member:member-wallet:reset-address',11,0,'重置会员钱包地址');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (146,'佣金参数','promotion:reward:page-query',143,0,'佣金参数');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (147,'系统信息维护','system:data-dictionary',8,0,'系统信息管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (148,'数据字典添加','system:data-dictionary:create',8,0,'数据字典添加');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (149,'数据字典修改','system:data-dictionary:update',8,0,'数据字典修改');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (150,'版本管理','system:app-revision:page-query',8,0,'版本管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (151,'添加版本信息','system:app-revision:create',8,0,'添加版本信息');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (152,'更新版本信息','system:app-revision:update',8,0,'更新版本信息');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (153,'版本信息详情','system:app-revision:details',8,0,'版本信息详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (154,'推荐会员导出','promotion:member:out-excel',143,0,'推荐会员导出');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (155,'推荐会员明细','promotion:member:details',143,0,'推荐会员明细');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (156,'测试权限','测试名称',18,0,'描述');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (158,'取消委托','exchange:exchange-order:cancel',18,0,'取消委托订单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (159,'法币交易明细','finance:otc:order:page-query',93,0,'法币交易明细');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (160,'提币明细','finance:withdraw-record:page-query:success',93,0,'提币明细');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (161,'保证金管理','business-auth:manager',93,0,'保证金管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (162,'活动管理','activity-------',0,6,'活动管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (164,'签到新增','activity:sign:post',162,0,'签到新增');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (165,'签到修改','activity:sign:put',162,0,'签到修改');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (167,'签到管理','activity:sign:page-query',162,0,'签到分页');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (168,'签到详情','activity:sign:id:get',162,0,'签到详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (169,'签到提前关闭','activity:sign:id:early-closing',162,0,'签到提前关闭');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (170,'签到记录','activity:member-sign-record:page-query',162,0,'签到记录');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (171,'财务统计','finance:statistics:turnover',93,0,'成交量/成交额统计');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (172,'手续费合计','finance:statistics:fee',93,0,'手续费合计');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (173,'锁定钱包','member:member-wallet:lock-wallet',11,0,'锁定钱包');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (174,'解锁钱包','member:member-wallet:unlock-wallet',11,0,'解锁钱包');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (176,'角色删除','system:role:deletes',8,0,'角色删除');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (177,'保证金管理','business:auth:deposit',0,8,'保证金管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (178,'查询保证金策略','business:auth:deposit:page',177,0,'查询保证金策略');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (179,'创建保证金策略','business:auth:deposit:create',177,0,'创建保证金策略');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (180,'修改保证金策略','business:auth:deposit:update',177,0,'修改保证金策略');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (181,'退保审核','business:cancel-apply:check',66,0,'退保审核');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (182,'退保管理','business:cancel-apply:page-query',66,0,'退保申请记录');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (183,'退保用户详情','business:cancel-apply:detail',66,0,'退保用户详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (184,'认证商家','business-auth:apply:page-query',66,0,'认证商家');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (185,'佣金参数详情','promotion:reward:detail',143,0,'佣金参数详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (186,'认证商家详情','business-auth:apply:detail',66,0,'认证商家详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (187,'币种详情','system:coin:detail',8,0,'系统管理下币种详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (188,'添加交易对','exchange:exchange-coin:merge',60,0,'添加交易对');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (189,'修改交易对','exchange:exchange-coin:alter-rate',60,0,'修改交易对');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (190,'更新后台货币','system:coin:update',8,0,'系统管理下更新后台货币');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (191,'添加用户钱包记录','system:coin:newwallet',8,0,'系统管理下添加用户钱包记录');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (192,'启动交易引擎','exchange:exchange-coin:start-trader',60,0,'启动交易引擎');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (193,'停止交易引擎','exchange:exchange-coin:stop-trader',60,0,'停止交易引擎');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (194,'撤销某交易对委托','exchange:exchange-coin:cancel-all-order',60,0,'撤销某交易对所有委托单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (195,'查看交易对盘面','exchange:exchange-coin:exchange-overview',60,0,'查看交易对盘面');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (196,'活动列表','activity:activity:page-query',162,0,'活动列表');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (197,'添加活动','activity:activity:add',162,0,'添加活动');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (198,'修改活动','activity:activity:modify',162,0,'修改活动');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (199,'活动详情','activity:activity:detail',162,0,'查看活动详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (200,'修改活动进度','activity:activity:modify-progress',162,0,'修改活动进度');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (201,'活动参与详情','activity:activity:orderlist',162,0,'活动参与详情列表');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (202,'派发活动币','activity:activity:distribute',162,0,'');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (203,'CTC管理','ctc---------',0,3,'');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (204,'订单列表','ctc:order:page-query',203,0,'用户买入卖出列表');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (205,'订单详情','ctc:order:order-detail',203,0,'订单详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (206,'标记付款','ctc:order:pay-order',203,0,'标记付款');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (207,'完成放币','ctc:order:complete-order',203,0,'完成放币');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (208,'接单','ctc:order:confirm-order',203,0,'接单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (209,'取消订单','ctc:order:cancel-order',203,0,'取消订单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (210,'承兑商列表','ctc:acceptor:page-query',203,0,'承兑商列表');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (211,'切换承兑商状态','ctc:acceptor:switch',203,0,'切换状态');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (212,'查看机器人参数','exchange:exchange-coin:robot-config',60,0,'查看机器人参数');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (213,'修改一般机器人参数','exchange:exchange-coin:alter-robot-config',60,0,'修改一般机器人参数');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (214,'邀请管理','invite-------',0,2,'');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (215,'邀请记录','invite:management:query',214,0,'邀请记录');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (216,'邀请排名','invite:management:rank',214,0,'邀请');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (217,'更新邀请参数','invite:management:update-rank',214,0,'更新邀请参数');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (218,'邀请详情','invite:management:detail-rank',214,0,'邀请详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (219,'创建一般机器人','exchange:exchange-coin:create-robot-config',60,0,'创建交易机器人');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (220,'红包管理','envelope-----',0,6,'红包管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (221,'红包列表','envelope:page-query',220,0,'红包列表');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (222,'红包详情','envelope:detail',220,0,'红包详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (223,'红包领取详情','envelope:receive-detail',220,0,'红包领取详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (224,'添加红包','envelope:add',220,0,'添加红包');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (225,'修改红包','envelope:modify',220,0,'修改红包');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (226,'修改定价机器人','exchange:exchange-coin:alter-robot-config-price',60,0,'修改定价机器人');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (227,'创建定价机器人','exchange:exchange-coin:create-robot-config-price',60,0,'创建定价机器人');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (228,'控盘机器人','exchange:robot',60,0,'控盘机器人');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (229,'保存K线数据','exchange:exchange-coin:save-robot-kline',60,0,'保存K线数据');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (230,'控盘币种列表','exchange:exchange-coin:custom-coin-list',60,0,'控盘币种列表');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (231,'机器人k线列表','exchange:exchange-coin:robot-kline-list',60,0,'获取控盘机器人K线数据');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (232,'预测合约','option-------------',0,6,'预测合约');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (233,'交易对管理','option-coin:page-query',232,0,'获取交易对');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (234,'获取交易对详情','option-coin:detail',232,0,'获取交易对详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (235,'添加交易对','option-coin:add',232,0,'添加交易对');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (236,'修改交易对','option-coin:alter',232,0,'修改交易对');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (237,'合约管理','option:page-query',232,0,'查询每期合约');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (238,'订单管理','option:order:page-query',232,0,'查询所有合约订单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (239,'单期合约所有订单','option:order:option-list',232,0,'单期合约所有订单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (240,'指定用户所有合约订单','option:order:member-list',232,0,'指定用户所有合约订单');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (241,'重置交易引擎','exchange:exchange-coin:reset-trader\t',60,0,'重置交易引擎');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (242,'永续合约','swap------------------',0,0,'永续合约');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (243,'交易对管理','swap-coin:page-query',242,0,'交易对管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (244,'查看交易对详情','swap-coin:detail',242,0,'查看交易对详情');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (245,'添加交易对','swap-coin:add',242,0,'添加交易对');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (246,'修改交易对','swap-coin:alter',242,0,'修改交易对');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (247,'添加合约账户','swap-coin:init-wallet',242,0,'添加合约账户');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (248,'委托管理','swap:order:page-query',242,0,'委托管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (249,'撤销委托','swap:order:cancel',242,0,'撤销委托');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (250,'仓位管理','swap:position:page-query',242,0,'仓位管理');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (251,'强制平仓','swap:order:force-close',242,0,'强制平仓');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (252,'定点爆仓','swap-coin:blast',242,0,'定点爆仓');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (253,'授权代理商','member:alter-member-superpartner',11,0,'授权代理商');
INSERT INTO `admin_permission` (`id`,`title`,`name`,`parent_id`,`sort`,`description`) VALUES (254,'查询用户锁仓','activity:activity:locked-activity',162,0,'查询用户锁仓');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role`
--

CREATE TABLE `admin_role` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_role`
--

INSERT INTO `admin_role` (`id`, `description`, `role`) VALUES
(1, '系统管理员', '系统管理员'),
(61, '外部', '客服');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permission`
--

CREATE TABLE `admin_role_permission` (
  `role_id` bigint(20) NOT NULL,
  `rule_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_role_permission`
--

INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,2);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,3);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,4);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,5);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,6);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,7);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,8);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,9);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,10);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,11);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,12);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,13);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,14);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,18);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,19);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,20);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,23);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,26);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,27);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,28);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,29);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,30);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,31);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,32);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,33);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,34);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,35);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,36);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,37);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,38);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,39);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,40);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,41);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,42);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,43);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,44);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,45);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,46);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,47);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,48);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,49);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,50);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,51);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,52);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,53);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,54);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,55);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,56);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,57);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,58);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,59);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,60);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,61);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,62);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,63);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,64);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,65);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,66);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,67);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,68);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,69);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,70);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,71);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,72);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,73);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,74);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,75);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,76);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,77);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,78);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,79);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,80);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,81);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,82);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,83);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,84);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,85);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,86);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,87);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,88);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,89);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,90);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,91);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,92);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,93);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,94);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,95);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,96);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,97);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,98);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,99);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,100);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,101);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,102);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,103);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,104);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,105);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,106);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,107);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,108);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,109);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,110);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,111);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,112);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,113);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,114);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,115);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,116);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,117);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,118);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,119);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,120);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,121);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,122);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,123);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,124);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,125);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,126);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,128);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,129);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,130);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,131);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,132);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,133);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,134);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,135);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,136);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,137);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,138);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,139);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,140);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,141);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,142);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,143);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,144);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,145);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,146);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,147);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,148);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,149);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,150);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,151);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,152);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,153);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,154);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,155);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,156);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,158);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,159);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,160);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,161);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,162);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,164);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,165);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,167);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,168);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,169);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,170);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,171);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,172);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,173);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,174);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,176);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,177);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,178);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,179);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,180);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,181);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,182);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,183);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,184);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,185);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,186);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,187);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,188);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,189);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,190);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,191);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,192);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,193);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,194);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,195);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,196);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,197);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,198);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,199);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,200);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,201);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,202);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,203);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,204);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,205);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,206);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,207);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,208);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,209);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,210);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,211);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,212);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,213);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,214);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,215);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,216);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,217);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,218);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,219);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,220);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,221);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,222);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,223);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,224);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,225);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,226);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,227);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,228);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,229);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,230);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,231);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,232);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,233);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,234);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,235);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,236);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,237);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,238);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,239);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,240);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,241);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,242);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,243);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,244);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,245);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,246);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,247);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,248);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,249);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,250);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,251);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,252);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,253);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (1,254);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,2);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,3);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,4);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,5);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,6);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,8);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,9);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,10);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,11);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,12);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,13);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,18);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,19);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,20);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,23);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,26);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,36);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,37);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,42);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,43);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,46);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,49);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,51);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,54);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,56);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,60);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,61);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,62);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,64);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,65);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,66);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,67);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,70);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,73);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,75);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,77);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,80);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,83);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,86);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,90);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,91);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,92);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,93);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,97);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,99);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,103);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,116);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,117);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,118);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,125);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,128);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,140);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,141);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,147);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,150);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,153);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,159);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,160);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,161);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,162);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,167);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,168);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,170);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,171);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,172);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,177);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,178);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,183);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,184);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,186);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,195);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,196);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,199);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,201);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,203);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,204);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,205);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,210);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,212);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,214);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,215);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,216);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,217);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,218);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,220);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,221);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,222);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,223);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,232);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,233);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,234);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,237);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,238);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,239);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,240);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,242);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,243);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,244);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,248);
INSERT INTO `admin_role_permission` (`role_id`,`rule_id`) VALUES (61,250);

-- --------------------------------------------------------

--
-- 表的结构 `advertise`
--

CREATE TABLE `advertise` (
  `id` bigint(20) NOT NULL,
  `advertise_type` int(11) NOT NULL,
  `auto` int(11) DEFAULT NULL,
  `autoword` varchar(255) DEFAULT NULL,
  `coin_unit` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_amount` decimal(18,8) DEFAULT NULL COMMENT '交易中数量',
  `level` int(11) DEFAULT NULL,
  `limit_money` varchar(255) DEFAULT NULL,
  `max_limit` decimal(18,2) DEFAULT NULL COMMENT '最高单笔交易额',
  `min_limit` decimal(18,2) DEFAULT NULL COMMENT '最低单笔交易额',
  `number` decimal(18,8) DEFAULT NULL COMMENT '计划数量',
  `pay_mode` varchar(255) DEFAULT NULL,
  `premise_rate` decimal(18,6) DEFAULT NULL COMMENT '溢价百分比',
  `price` decimal(18,2) DEFAULT NULL COMMENT '交易价格',
  `price_type` int(11) NOT NULL,
  `remain_amount` decimal(18,8) DEFAULT NULL COMMENT '计划剩余数量',
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `announcement`
--

CREATE TABLE `announcement` (
  `id` bigint(20) NOT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `is_top` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `announcement_classification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `announcement`
--

-- --------------------------------------------------------

--
-- 表的结构 `appeal`
--

CREATE TABLE `appeal` (
  `id` bigint(20) NOT NULL,
  `associate_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_with_time` datetime DEFAULT NULL,
  `initiator_id` bigint(20) DEFAULT NULL,
  `is_success` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `app_revision`
--

CREATE TABLE `app_revision` (
  `id` bigint(20) NOT NULL,
  `download_url` varchar(255) DEFAULT NULL,
  `platform` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `app_revision`
--

INSERT INTO `app_revision` (`id`, `download_url`, `platform`, `publish_time`, `remark`, `version`) VALUES
(1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/appdownload/BIZZAN-release.apk', 0, '2019-11-03 12:20:03', '安卓APP', '1.0.6'),
(2, 'https://www.bizzan.com/app', 1, '2019-08-29 00:00:00', '苹果APP', '1.0.4');

-- --------------------------------------------------------

--
-- 表的结构 `business_auth_apply`
--

CREATE TABLE `business_auth_apply` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `auditing_time` datetime DEFAULT NULL,
  `auth_info` text,
  `certified_business_status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deposit_record_id` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `business_auth_deposit_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `business_auth_deposit`
--

CREATE TABLE `business_auth_deposit` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '保证金数额',
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bussiness_cancel_apply`
--

CREATE TABLE `bussiness_cancel_apply` (
  `id` bigint(20) NOT NULL,
  `cancel_apply_time` datetime DEFAULT NULL,
  `deposit_record_id` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `handle_time` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `coin`
--

CREATE TABLE `coin` (
  `name` varchar(255) NOT NULL,
  `can_auto_withdraw` int(11) DEFAULT NULL,
  `can_recharge` int(11) DEFAULT NULL,
  `can_transfer` int(11) DEFAULT NULL,
  `can_withdraw` int(11) DEFAULT NULL,
  `cny_rate` double NOT NULL,
  `enable_rpc` int(11) DEFAULT NULL,
  `is_platform_coin` int(11) DEFAULT NULL,
  `max_tx_fee` double NOT NULL,
  `max_withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '最大提币数量',
  `min_tx_fee` double NOT NULL,
  `min_withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '最小提币数量',
  `name_cn` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `usd_rate` double NOT NULL,
  `withdraw_threshold` decimal(18,8) DEFAULT NULL COMMENT '提现阈值',
  `has_legal` bit(1) NOT NULL DEFAULT b'0',
  `cold_wallet_address` varchar(255) DEFAULT NULL,
  `miner_fee` decimal(18,8) DEFAULT '0.00000000' COMMENT '矿工费',
  `withdraw_scale` int(11) DEFAULT '4' COMMENT '提币精度',
  `information` varchar(255) DEFAULT NULL,
  `infolink` varchar(255) DEFAULT NULL,
  `account_type` int(11) DEFAULT '0' COMMENT '币种账户类型',
  `deposit_address` varchar(255) DEFAULT NULL,
  `min_recharge_amount` decimal(18,8) DEFAULT NULL COMMENT '最小充值数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coin`
--

INSERT INTO `coin` (`name`, `can_auto_withdraw`, `can_recharge`, `can_transfer`, `can_withdraw`, `cny_rate`, `enable_rpc`, `is_platform_coin`, `max_tx_fee`, `max_withdraw_amount`, `min_tx_fee`, `min_withdraw_amount`, `name_cn`, `sort`, `status`, `unit`, `usd_rate`, `withdraw_threshold`, `has_legal`, `cold_wallet_address`, `miner_fee`, `withdraw_scale`, `information`, `infolink`, `account_type`, `deposit_address`, `min_recharge_amount`) VALUES
('Bitcoin', 0, 1, 1, 1, 0, 1, 0, 0.01, '5.00000000', 0.001, '0.00200000', '比特币', 2, 0, 'BTC', 0, '0.10000000', b'0', '14QZK9h8udeB6riNfrNRYhK5ptHzJTmjM5', '0.00002000', 4, '比特币（BitCoin）的概念最初由中本聪在2008年提出，根据中本聪的思路设计发布的开源软件以及建构其上的P2P网络。比特币是一种P2P形式的数字货币。点对点的传输意味着一个去中心化的支付系统。', 'https://www.bizzan.com/helpdetail?cate=3&id=10&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', 0, '', '0.10000000'),
('BitcoinCash', 0, 1, 1, 1, 0, 1, 0, 0.01, '1000.00000000', 0.001, '0.10000000', 'BCHABC', 4, 0, 'BCH', 0, '0.01000000', b'0', '', NULL, 0, '比特币现金（BitcoinCash）与比特币相同，是一种基于去中心化，采用点对点网络与共识主动性，开放源代码，以区块链作为底层技术的加密货货币。', 'https://www.bizzan.com/helpdetail?cate=3&id=14&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', 0, '', '0.01000000'),
('BitcoinSV', 0, 1, 1, 1, 0, 1, 0, 0.0008, '1000.00000000', 0.0005, '0.20000000', 'BSV', 6, 0, 'BSV', 0, '0.00010000', b'0', '', NULL, 0, 'BSV（Bitcoin Satoshi Vision）是遵循中本聪白皮书原始设计和协议稳定的比特币，实现原定的大规模链上扩容愿景，旨在成为全球通用的点对点电子现金与价值数据传输网络。', 'https://www.bizzan.com/helpdetail?cate=3&id=42&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', 0, '', '0.01000000'),
('EOS', 0, 1, 1, 1, 0, 0, 0, 1, '10000.00000000', 0.1, '20.00000000', 'Enterprise Operation System', 6, 0, 'EOS', 0, '0.00100000', b'0', '', NULL, 0, 'EOS是区块链奇才BM（Daniel Larimer）领导开发的类似操作系统的区块链架构平台，旨在实现分布式应用的性能扩展。EOS 提供帐户，身份验证，数据库，异步通信以及在数以百计的CPU或群集上的程序调度。', 'https://www.bizzan.com/helpdetail?cate=3&id=15&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', 1, 'z5z5z5z5z5z5', '0.10000000'),
('Ethereum', 0, 1, 1, 1, 0, 1, 0, 0.2, '1000.00000000', 0.01, '0.10000000', '以太坊', 5, 0, 'ETH', 0, '0.01000000', b'0', '0x2a1d24ffacd556e94ceedc7a0a0ffecf08fdc0fa', NULL, 0, 'Ethereum（以太坊）是一个平台和一种编程语言，使开发人员能够建立和发布下一代分布式应用。 Ethereum可以用来编程，分散，担保和交易任何事物：投票，域名，金融交易所，众筹，公司管理， 合同和大部分的协议，知识产权，还有得益于硬件集成的智能资产。', 'https://www.bizzan.com/helpdetail?cate=3&id=11&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', 0, '', '0.01000000'),
('EUSDT', 0, 0, 1, 1, 0, 1, 0, 5, '100000.00000000', 1, '10.00000000', 'EUSDT', 6, 0, 'EUSDT', 0, '0.00100000', b'0', '0x2a1d24ffacd556e94ceedc7a0a0ffecf08fdc0fa', NULL, 0, 'EUSDT是基于ETH网络发行的USDT，使用的是ERC20协议，EUSDT支持的交易所较多，满足不同用户需求，便于转账并且手续费低。', 'https://www.bizzan.com/helpdetail?cate=3&id=41&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', 0, '', '1.00000000'),
('Litecoin', 0, 1, 1, 1, 0, 1, 0, 0.005, '1000.00000000', 0.001, '0.20000000', '莱特币', 5, 0, 'LTC', 0, '0.00001000', b'0', '', NULL, 0, '莱特币 (Litecoin, LTC) 是受比特币(BitCoin, BTC) 的启发而推出的改进版数字货币，由一名曾任职于谷歌的程序员设计并编程实现 , 2011年11月9日发布运行。莱特币与比特币在技术上具有相同的实现原理，但莱特币的创造和转让基于一种开源的加密协议，不受到任何中央机构的管理。', 'https://www.bizzan.com/helpdetail?cate=3&id=13&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', 0, '', '0.00010000'),
('Ripple', 0, 1, 1, 1, 0, 0, 0, 5, '100000.00000000', 0.15, '30.00000000', '瑞波币', 3, 0, 'XRP', 0, '1.00000000', b'0', '', NULL, 0, 'Ripple(瑞波)是世界上第一个开放的支付网络，通过这个支付网络可以转账任意一种货币，简便易行快捷，交易确认在几秒以内完成，交易费用几乎是零，没有所谓的跨行异地以及跨国支付费用。Ripple开放式支付系统是一个虚拟货币网络、未来的电子支付平台。', 'https://www.bizzan.com/helpdetail?cate=3&id=12&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99', 1, 'rrqnWuQhT5ZVDQh1CGXtUgt2xRE7zkDax', '1.00000000'),
('USDT', 0, 1, 1, 1, 0, 1, 0, 10, '10000.00000000', 4, '10.00000000', '泰达币', 100, 0, 'USDT', 0, '1.00000000', b'0', '14QZK9h8udeB6riNfrNRYhK5ptHzJTmjM5', NULL, 0, '', '', 0, '', '1.00000000');

-- --------------------------------------------------------

--
-- 表的结构 `country`
--

CREATE TABLE `country` (
  `zh_name` varchar(255) NOT NULL,
  `area_code` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `local_currency` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `country`
--

INSERT INTO `country` (`zh_name`, `area_code`, `en_name`, `language`, `local_currency`, `sort`) VALUES
('中国', '86', 'China', 'zh_CN', 'CNY', 0),
('中国台湾', '886', 'Taiwan,China', 'zh_TW', 'TWD', 0),
('新加坡', '65', 'Singapore', 'en_US', 'SGD', 0),
('美国', '1', 'America', 'en_US', 'USD', 0),
('香港', '852', 'HongKong', 'zh_HK', 'HKD', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ctc_acceptor`
--

CREATE TABLE `ctc_acceptor` (
  `id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `cny_in` decimal(18,2) DEFAULT '0.00' COMMENT '买入CNY',
  `cny_out` decimal(18,2) DEFAULT '0.00' COMMENT '售出CNY',
  `usdt_in` decimal(18,2) DEFAULT '0.00' COMMENT '买入USDT',
  `usdt_out` decimal(18,2) DEFAULT '0.00' COMMENT '售出USDT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ctc_order`
--

CREATE TABLE `ctc_order` (
  `id` bigint(20) NOT NULL,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `cancel_reason` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `confirm_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `direction` int(11) NOT NULL,
  `money` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `order_sn` varchar(255) NOT NULL,
  `pay_mode` varchar(255) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `acceptor_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `data_dictionary`
--

CREATE TABLE `data_dictionary` (
  `id` bigint(20) NOT NULL,
  `bond` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `data_dictionary`
--

INSERT INTO `data_dictionary` (`id`, `bond`, `comment`, `creation_time`, `update_time`, `value`) VALUES
(1, 'register_allow', '新用户注册', '2019-09-19 15:06:48', '2019-09-19 15:06:48', '1');

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `leader_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `department`
--

INSERT INTO `department` (`id`, `create_time`, `leader_id`, `name`, `remark`, `update_time`) VALUES
(1, '2019-08-27 13:33:20', 1, '客服部', '', '2019-08-27 13:33:20');

-- --------------------------------------------------------

--
-- 表的结构 `deposit_record`
--

CREATE TABLE `deposit_record` (
  `id` varchar(255) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dividend_start_record`
--

CREATE TABLE `dividend_start_record` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(18,6) DEFAULT NULL COMMENT '数量',
  `date` datetime DEFAULT NULL,
  `end` bigint(20) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL COMMENT '比例',
  `start` bigint(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `exchange_coin`
--

CREATE TABLE `exchange_coin` (
  `symbol` varchar(255) NOT NULL,
  `base_coin_scale` int(11) NOT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `coin_scale` int(11) NOT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `fee` decimal(8,4) DEFAULT NULL COMMENT '交易手续费',
  `sort` int(11) NOT NULL,
  `enable_market_buy` int(11) DEFAULT '1' COMMENT '是否启用市价买',
  `enable_market_sell` int(11) DEFAULT '1' COMMENT '是否启用市价卖',
  `min_sell_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '最低挂单卖价',
  `flag` int(11) DEFAULT '0' COMMENT '默认为0，1表示推荐',
  `max_trading_order` int(11) DEFAULT '0' COMMENT '最大允许同时交易的订单数，0表示不限制',
  `max_trading_time` int(11) DEFAULT '0' COMMENT '委托超时自动下架时间，单位为秒，0表示不过期',
  `instrument` varchar(20) DEFAULT NULL COMMENT '交易类型，B2C2特有',
  `min_turnover` decimal(18,8) DEFAULT '0.00000000' COMMENT '最小挂单成交额',
  `max_volume` decimal(18,8) DEFAULT '0.00000000' COMMENT '最大下单量',
  `min_volume` decimal(18,8) DEFAULT '0.00000000' COMMENT '最小下单量',
  `zone` int(11) DEFAULT '0',
  `clear_time` varchar(30) DEFAULT '1' COMMENT '清盘时间',
  `end_time` varchar(30) DEFAULT '1' COMMENT '结束时间',
  `publish_price` decimal(18,8) DEFAULT '0.00000000' COMMENT ' 分摊发行价格',
  `publish_type` int(11) DEFAULT '1' COMMENT '发行活动类型 1:无活动,2:抢购发行,3:分摊发行',
  `start_time` varchar(30) DEFAULT '1' COMMENT '开始时间',
  `exchangeable` int(11) DEFAULT '1' COMMENT ' 是否可交易',
  `publish_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT ' 活动发行数量',
  `visible` int(11) DEFAULT '1' COMMENT ' 前台可见状态',
  `max_buy_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '最高买单价',
  `robot_type` int(11) DEFAULT '0' COMMENT '机器人类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `exchange_coin`
--

INSERT INTO `exchange_coin` (`symbol`, `base_coin_scale`, `base_symbol`, `coin_scale`, `coin_symbol`, `enable`, `fee`, `sort`, `enable_market_buy`, `enable_market_sell`, `min_sell_price`, `flag`, `max_trading_order`, `max_trading_time`, `instrument`, `min_turnover`, `max_volume`, `min_volume`, `zone`, `clear_time`, `end_time`, `publish_price`, `publish_type`, `start_time`, `exchangeable`, `publish_amount`, `visible`, `max_buy_price`, `robot_type`) VALUES
('BCH/USDT', 6, 'USDT', 4, 'BCH', 1, '0.0010', 4, 1, 1, '0.00100000', 1, 0, 0, NULL, '0.00010000', '0.00000000', '0.00100000', 0, '2019-09-14 15:26:31', '2019-09-14 15:26:31', NULL, 1, '2019-09-14 15:26:31', 1, '0.00000000', 1, '0.00000000', 0),
('BSV/USDT', 6, 'USDT', 6, 'BSV', 1, '0.0010', 5, 1, 1, '0.00010000', 1, 0, 0, NULL, '0.00100000', '0.00000000', '0.00100000', 0, '2019-09-17 14:49:23', '2019-09-17 14:49:23', NULL, 1, '2019-09-17 14:49:23', 1, '0.00000000', 1, '0.00000000', 0),
('BTC/USDT', 6, 'USDT', 8, 'BTC', 1, '0.0010', 1, 1, 1, '0.00100000', 1, 0, 0, NULL, '0.00100000', '0.00000000', '0.00100000', 0, '2019-09-08 11:22:19', '2019-09-08 11:22:19', NULL, 1, '2019-09-08 11:22:19', 1, '0.00000000', 1, '0.00000000', 0),
('EOS/USDT', 6, 'USDT', 4, 'EOS', 1, '0.0010', 5, 1, 1, '0.00010000', 0, 0, 0, NULL, '0.00100000', '0.00000000', '0.00100000', 0, '2019-09-18 15:14:25', '2019-09-18 15:14:25', NULL, 1, '2019-09-18 15:14:25', 1, '0.00000000', 1, '0.00000000', 0),
('ETH/USDT', 6, 'USDT', 4, 'ETH', 1, '0.0010', 2, 1, 1, '0.00100000', 1, 0, 0, NULL, '0.00100000', '0.00000000', '0.00100000', 0, '2019-09-11 13:45:01', '2019-09-11 13:45:01', NULL, 1, '2019-09-11 13:45:01', 1, '0.00000000', 1, '0.00000000', 0),
('EUSDT/USDT', 6, 'USDT', 6, 'EUSDT', 1, '0.0001', 666, 1, 1, '0.00000010', 0, 0, 0, NULL, '0.00001000', '1000000.00000000', '0.10000000', 0, '2019-09-15 17:15:40', '2019-09-15 17:15:40', NULL, 1, '2019-09-15 17:15:40', 1, '0.00000000', 1, '0.00000000', 1),
('LTC/USDT', 6, 'USDT', 4, 'LTC', 1, '0.0010', 5, 1, 1, '0.00010000', 1, 0, 0, NULL, '0.00010000', '0.00000000', '0.00010000', 0, '2019-09-16 14:37:10', '2019-09-16 14:37:10', NULL, 1, '2019-09-16 14:37:10', 1, '0.00000000', 1, '0.00000000', 0),
('XRP/USDT', 6, 'USDT', 4, 'XRP', 1, '0.0010', 3, 1, 1, '0.00010000', 1, 0, 0, NULL, '0.00010000', '0.00000000', '0.00100000', 0, '2019-09-12 19:12:07', '2019-09-12 19:12:07', NULL, 1, '2019-09-12 19:12:07', 1, '0.00000000', 1, '0.00000000', 0);

-- --------------------------------------------------------

--
-- 表的结构 `exchange_favor_symbol`
--

CREATE TABLE `exchange_favor_symbol` (
  `id` bigint(20) NOT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `exchange_order`
--

CREATE TABLE `exchange_order` (
  `order_id` varchar(255) NOT NULL,
  `amount` decimal(18,8) DEFAULT '0.00000000',
  `base_symbol` varchar(255) DEFAULT NULL,
  `canceled_time` bigint(20) DEFAULT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `completed_time` bigint(20) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `price` decimal(18,8) DEFAULT '0.00000000',
  `status` int(11) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `traded_amount` decimal(26,16) DEFAULT '0.0000000000000000',
  `turnover` decimal(26,16) DEFAULT '0.0000000000000000',
  `type` int(11) DEFAULT NULL,
  `use_discount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `financial_item`
--

CREATE TABLE `financial_item` (
  `id` bigint(20) NOT NULL,
  `coin_minnum` decimal(19,2) DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deadline` int(11) NOT NULL,
  `item_desc` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `yield` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `financial_order`
--

CREATE TABLE `financial_order` (
  `id` bigint(20) NOT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  `coin_num` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `frozen_days` int(11) NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `order_state` int(11) NOT NULL,
  `order_usdt_rate` double DEFAULT NULL,
  `plan_revenue_time` datetime DEFAULT NULL,
  `real_income` decimal(19,2) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hot_transfer_record`
--

CREATE TABLE `hot_transfer_record` (
  `id` bigint(20) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '转账金额',
  `balance` decimal(18,8) DEFAULT '0.00000000' COMMENT '热钱包余额',
  `cold_address` varchar(255) DEFAULT NULL,
  `miner_fee` decimal(18,8) DEFAULT '0.00000000' COMMENT '矿工费',
  `transaction_number` varchar(255) DEFAULT NULL,
  `transfer_time` datetime DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `init_plate`
--

CREATE TABLE `init_plate` (
  `id` bigint(20) NOT NULL,
  `final_price` varchar(255) DEFAULT NULL,
  `init_price` varchar(255) DEFAULT NULL,
  `interference_factor` varchar(255) DEFAULT NULL,
  `relative_time` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `legal_wallet_recharge`
--

CREATE TABLE `legal_wallet_recharge` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(18,2) NOT NULL COMMENT '充值金额',
  `creation_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_name` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `legal_wallet_withdraw`
--

CREATE TABLE `legal_wallet_withdraw` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `remit_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_name` varchar(255) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE `member` (
  `id` bigint(20) NOT NULL,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `appeal_success_times` int(11) NOT NULL,
  `appeal_times` int(11) NOT NULL,
  `application_time` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `certified_business_apply_time` datetime DEFAULT NULL,
  `certified_business_check_time` datetime DEFAULT NULL,
  `certified_business_status` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_level` int(11) NOT NULL,
  `google_date` datetime DEFAULT NULL,
  `google_key` varchar(255) DEFAULT NULL,
  `google_state` int(11) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `inviter_id` bigint(20) DEFAULT NULL,
  `jy_password` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `login_count` int(11) NOT NULL,
  `margin` varchar(255) DEFAULT NULL,
  `member_level` int(11) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `promotion_code` varchar(255) DEFAULT NULL,
  `publish_advertise` int(11) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `real_name_status` int(11) DEFAULT NULL,
  `registration_time` datetime DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `second_level` int(11) NOT NULL,
  `sign_in_ability` bit(1) NOT NULL DEFAULT b'1',
  `status` int(11) DEFAULT NULL,
  `super_partner` varchar(255) DEFAULT NULL,
  `third_level` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_expire_time` datetime DEFAULT NULL,
  `transaction_status` int(11) DEFAULT NULL,
  `transactions` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_address`
--

CREATE TABLE `member_address` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_application`
--

CREATE TABLE `member_application` (
  `id` bigint(20) NOT NULL,
  `audit_status` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `identity_card_img_front` varchar(255) NOT NULL,
  `identity_card_img_in_hand` varchar(255) NOT NULL,
  `identity_card_img_reverse` varchar(255) NOT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `member_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_application_config`
--

CREATE TABLE `member_application_config` (
  `id` bigint(20) NOT NULL,
  `promotion_on` int(11) DEFAULT NULL,
  `recharge_coin_on` int(11) DEFAULT NULL,
  `transaction_on` int(11) DEFAULT NULL,
  `withdraw_coin_on` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_bonus`
--

CREATE TABLE `member_bonus` (
  `id` bigint(20) NOT NULL,
  `arrive_time` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `have_time` varchar(255) DEFAULT NULL,
  `mem_bouns` decimal(18,8) DEFAULT NULL COMMENT '分红数量',
  `member_id` bigint(20) DEFAULT NULL,
  `total` decimal(18,8) DEFAULT NULL COMMENT '当天总手续费'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_deposit`
--

CREATE TABLE `member_deposit` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT '0.00000000',
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_invite_stastic`
--

CREATE TABLE `member_invite_stastic` (
  `id` bigint(20) NOT NULL,
  `btc_reward` decimal(24,8) DEFAULT '0.00000000',
  `estimated_reward` decimal(24,8) DEFAULT '0.00000000',
  `eth_reward` decimal(24,8) DEFAULT '0.00000000',
  `extra_reward` decimal(24,8) DEFAULT '0.00000000',
  `is_robot` int(11) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `other_reward` varchar(255) DEFAULT NULL,
  `stastic_date` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '统计日期',
  `usdt_reward` decimal(24,8) DEFAULT '0.00000000',
  `user_identify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_invite_stastic_rank`
--

CREATE TABLE `member_invite_stastic_rank` (
  `id` bigint(20) NOT NULL,
  `is_robot` int(11) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `stastic_date` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_identify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_level`
--

CREATE TABLE `member_level` (
  `id` bigint(20) NOT NULL,
  `is_default` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_promotion`
--

CREATE TABLE `member_promotion` (
  `id` bigint(20) NOT NULL,
  `invitees_id` bigint(20) DEFAULT NULL,
  `inviter_id` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_sign_record`
--

CREATE TABLE `member_sign_record` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `sign_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_transaction`
--

CREATE TABLE `member_transaction` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(26,16) DEFAULT NULL COMMENT '充币金额',
  `create_time` datetime DEFAULT NULL,
  `discount_fee` varchar(255) DEFAULT NULL,
  `fee` decimal(26,16) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `member_id` bigint(20) DEFAULT NULL,
  `real_fee` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member_wallet`
--

CREATE TABLE `member_wallet` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `balance` decimal(26,16) DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(26,16) DEFAULT NULL COMMENT '冻结余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包不是锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `to_released` decimal(18,8) DEFAULT NULL COMMENT '待释放总量',
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 触发器 `member_wallet`
--
DELIMITER $$
CREATE TRIGGER `trigger_update_wallet` AFTER UPDATE ON `member_wallet` FOR EACH ROW INSERT INTO member_wallet_history(member_id,coin_id,before_balance,after_balance,before_frozen_balance,after_frozen_balance,op_time) VALUES (new.member_id,new.coin_id,old.balance,new.balance,old.frozen_balance,new.frozen_balance,now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `member_wallet_history`
--

CREATE TABLE `member_wallet_history` (
  `id` bigint(20) NOT NULL,
  `member_id` int(11) NOT NULL,
  `coin_id` varchar(255) NOT NULL,
  `before_balance` decimal(18,8) NOT NULL,
  `after_balance` decimal(18,8) DEFAULT NULL,
  `before_frozen_balance` decimal(18,8) DEFAULT '0.00000000',
  `after_frozen_balance` decimal(18,8) DEFAULT '0.00000000',
  `op_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mining_order`
--

CREATE TABLE `mining_order` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `current_daysprofit` decimal(18,8) DEFAULT NULL COMMENT '矿机当前日产出',
  `end_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `member_id` bigint(20) NOT NULL,
  `mining_days` int(11) NOT NULL,
  `mining_daysprofit` decimal(18,8) DEFAULT NULL COMMENT '矿机原始日产出',
  `mining_unit` varchar(255) DEFAULT NULL,
  `mininged_days` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mining_status` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mining_invite` decimal(24,8) DEFAULT '0.00000000',
  `mining_invitelimit` decimal(24,8) DEFAULT '0.00000000',
  `total_profit` decimal(18,8) DEFAULT NULL COMMENT '矿机总产出',
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mining_order_detail`
--

CREATE TABLE `mining_order_detail` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `mining_order_id` bigint(20) DEFAULT NULL,
  `mining_unit` varchar(255) DEFAULT NULL,
  `output` decimal(18,8) DEFAULT NULL COMMENT '矿机当期产出'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `otc_coin`
--

CREATE TABLE `otc_coin` (
  `id` bigint(20) NOT NULL,
  `buy_min_amount` decimal(18,8) DEFAULT NULL COMMENT '买入广告最低发布数量',
  `is_platform_coin` int(11) DEFAULT NULL,
  `jy_rate` decimal(18,6) DEFAULT NULL COMMENT '交易手续费率',
  `name` varchar(255) NOT NULL,
  `name_cn` varchar(255) NOT NULL,
  `sell_min_amount` decimal(18,8) DEFAULT NULL COMMENT '卖出广告最低发布数量',
  `sort` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `otc_coin`
--

INSERT INTO `otc_coin` (`id`, `buy_min_amount`, `is_platform_coin`, `jy_rate`, `name`, `name_cn`, `sell_min_amount`, `sort`, `status`, `unit`) VALUES
(1, '0.01000000', 0, '1.000000', 'Bitcoin', '比特币', '0.10000000', 1, 0, 'BTC'),
(2, '0.01000000', 0, '1.000000', 'USDT', '泰达币', '0.10000000', 3, 0, 'USDT'),
(3, '0.01000000', 0, '1.000000', 'Ethereum', '以太坊', '0.10000000', 2, 0, 'ETH');

-- --------------------------------------------------------

--
-- 表的结构 `otc_order`
--

CREATE TABLE `otc_order` (
  `id` bigint(20) NOT NULL,
  `advertise_id` bigint(20) NOT NULL,
  `advertise_type` int(11) NOT NULL,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `commission` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `country` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_real_name` varchar(255) DEFAULT NULL,
  `max_limit` decimal(18,2) DEFAULT NULL COMMENT '最高交易额',
  `member_id` bigint(20) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `member_real_name` varchar(255) DEFAULT NULL,
  `min_limit` decimal(18,2) DEFAULT NULL COMMENT '最低交易额',
  `money` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `number` decimal(18,8) DEFAULT NULL COMMENT '交易数量',
  `order_sn` varchar(255) NOT NULL,
  `pay_mode` varchar(255) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `release_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `promotion_card`
--

CREATE TABLE `promotion_card` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '单个卡券金额',
  `card_desc` varchar(255) DEFAULT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `exchange_count` int(11) NOT NULL,
  `is_enabled` int(11) NOT NULL,
  `is_free` int(11) NOT NULL,
  `is_lock` int(11) NOT NULL,
  `lock_days` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '所有卡券总金额',
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `promotion_card_order`
--

CREATE TABLE `promotion_card_order` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '兑换金额',
  `create_time` datetime DEFAULT NULL,
  `is_free` int(11) NOT NULL,
  `is_lock` int(11) NOT NULL,
  `lock_days` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `state` int(11) NOT NULL,
  `card_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `red_envelope`
--

CREATE TABLE `red_envelope` (
  `id` bigint(20) NOT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `detail` text,
  `envelope_no` varchar(255) NOT NULL,
  `expired_hours` int(11) NOT NULL,
  `invite` int(11) NOT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `max_rand` decimal(18,8) DEFAULT NULL COMMENT '最大随机领取额',
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `plateform` int(11) NOT NULL,
  `receive_amount` decimal(18,8) DEFAULT NULL COMMENT '领取总额',
  `receive_count` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '红包总额',
  `type` int(11) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `invite_user` varchar(255) DEFAULT NULL,
  `invite_user_avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `red_envelope_detail`
--

CREATE TABLE `red_envelope_detail` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '领取数额',
  `cate` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `envelope_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `user_identify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `reward_activity_setting`
--

CREATE TABLE `reward_activity_setting` (
  `id` bigint(20) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `reward_promotion_setting`
--

CREATE TABLE `reward_promotion_setting` (
  `id` bigint(20) NOT NULL,
  `effective_time` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `reward_promotion_setting`
--

INSERT INTO `reward_promotion_setting` (`id`, `effective_time`, `info`, `status`, `type`, `update_time`, `admin_id`, `coin_id`) VALUES
(1, 180, '{\"one\":20,\"two\":5}', 1, 2, '2019-07-19 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `reward_record`
--

CREATE TABLE `reward_record` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '数目',
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sign`
--

CREATE TABLE `sign` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sys_advertise`
--

CREATE TABLE `sys_advertise` (
  `serial_number` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `end_time` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_advertise_location` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sys_advertise`
--

INSERT INTO `sys_advertise` (`serial_number`, `author`, `content`, `create_time`, `end_time`, `link_url`, `name`, `remark`, `sort`, `start_time`, `status`, `sys_advertise_location`, `url`, `lang`) VALUES
('03188EC528C54B129BB04B1C9472C0D9', NULL, NULL, NULL, '2019-07-06 00:00:00', '', '为你严选', '', 11, '2019-06-29 00:00:00', 0, 1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/07/03/502855f1-e242-4625-bfe6-f4528adda85b.jpg', 'CN'),
('17226A7C634D420081FE40E38659A4F1', NULL, NULL, NULL, '2019-07-03 00:00:00', '', '做市商招募计划', '', 6, '2019-06-30 00:00:00', 0, 1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/10/15/9fa9e307-04c2-4e2c-b807-60213fdd8bc8.jpg', 'CN'),
('1A0618E4A71B472A876803D9EF65E1A7', NULL, NULL, NULL, '2019-07-31 00:00:00', '', '2', '', 26, '2019-07-11 00:00:00', 0, 1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/09/09/206fd701-9320-497d-a975-1dc330971edf.jpg', 'EN'),
('29F375FE060A4696B1E256685D638C6A', NULL, NULL, NULL, '2021-08-31 00:00:00', '', 'app', '', 32, '2019-08-01 00:00:00', 0, 1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/09/09/f4555403-6949-46b6-ac01-27890a9a6271.jpg', 'EN'),
('7EFE26EC06C44B8CB017DAB991F73B5A', NULL, NULL, NULL, '2021-08-31 00:00:00', 'https://www.bizzan.com/announcement/118930', '平台币首发', '', 1, '2019-08-01 00:00:00', 0, 1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/10/22/deca564f-8231-4aaf-a956-30fb1001be15.jpg', 'CN'),
('A35B7F4FE9E447AFA63271E65C2580F2', NULL, NULL, NULL, '2020-08-25 00:00:00', '', '公测结束(EN)', '', 30, '2019-08-01 00:00:00', 0, 1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/09/09/843a8ab1-a566-44f7-a780-f6d2ad199fba.jpg', 'EN'),
('B432AB3F4C0D4ED4BD58E68AFD08DE99', NULL, NULL, NULL, '2020-09-25 00:00:00', '', 'app上线', '', 12, '2019-08-01 00:00:00', 0, 1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/09/09/cfc70e20-3f4b-45ed-8d7e-130dd144a426.jpg', 'CN'),
('FD1BF7B6EFF943BCA559BA6756136BB0', NULL, NULL, NULL, '2019-07-26 00:00:00', '', '1', '', 29, '2019-07-11 00:00:00', 0, 1, 'https://bizzan.oss-cn-hangzhou.aliyuncs.com/2019/07/11/86a43a67-d533-4f03-9b80-4bc1ffa6fc68.jpg', 'EN');

-- --------------------------------------------------------

--
-- 表的结构 `sys_help`
--

CREATE TABLE `sys_help` (
  `id` bigint(20) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `is_top` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_help_classification` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sys_help`
--
-- --------------------------------------------------------

--
-- 表的结构 `tb_sms`
--

CREATE TABLE `tb_sms` (
  `id` bigint(20) NOT NULL,
  `key_id` varchar(255) DEFAULT NULL,
  `key_secret` varchar(255) DEFAULT NULL,
  `sign_id` varchar(255) DEFAULT NULL,
  `sms_name` varchar(255) DEFAULT NULL,
  `sms_status` varchar(255) DEFAULT NULL,
  `template_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_sms`
--

INSERT INTO `tb_sms` (`id`, `key_id`, `key_secret`, `sign_id`, `sms_name`, `sms_status`, `template_id`) VALUES
(1, '18994118516', '4901B0E56BD8CB679D8CA39822F8', '币严BIZZAN', 'diyi', '0', 'verifymessage');

-- --------------------------------------------------------

--
-- 表的结构 `transfer_address`
--

CREATE TABLE `transfer_address` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `min_amount` decimal(18,2) DEFAULT NULL COMMENT '最低转账数目',
  `status` int(11) DEFAULT NULL,
  `transfer_fee` decimal(18,6) DEFAULT NULL COMMENT '转账手续费率',
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `transfer_record`
--

CREATE TABLE `transfer_record` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `member_id` bigint(20) DEFAULT NULL,
  `order_sn` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `website_information`
--

CREATE TABLE `website_information` (
  `id` bigint(20) NOT NULL,
  `address_icon` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `other_information` text,
  `postcode` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `withdraw_record`
--

CREATE TABLE `withdraw_record` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `arrived_amount` decimal(18,8) DEFAULT NULL COMMENT '预计到账数量',
  `can_auto_withdraw` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `is_auto` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `transaction_number` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `activity_order`
--
ALTER TABLE `activity_order`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_gfn44sntic2k93auag97juyij` (`username`) USING BTREE,
  ADD KEY `FKibjnyhe6m46qfkc6vgbir1ucq` (`department_id`) USING BTREE;

--
-- 表的索引 `admin_access_log`
--
ALTER TABLE `admin_access_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_permission`
--
ALTER TABLE `admin_permission`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_role_permission`
--
ALTER TABLE `admin_role_permission`
  ADD UNIQUE KEY `UKplesprlvm1sob8nl9yc5rgh3m` (`role_id`,`rule_id`),
  ADD KEY `FK52rddd3qje4p49iubt08gplb5` (`role_id`) USING BTREE,
  ADD KEY `FKqf3fhgl5mjqqb0jeupx7yafh0` (`rule_id`) USING BTREE;

--
-- 表的索引 `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK75rse9iecdnimf8ugtf20c43l` (`coin_id`),
  ADD KEY `FK9lueh92242ckyajg17xr9tcie` (`country`),
  ADD KEY `FKspoip5yq9ednwwondsga9c9k6` (`member_id`);

--
-- 表的索引 `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `appeal`
--
ALTER TABLE `appeal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_todwxorutclquf69bwow70kml` (`order_id`),
  ADD KEY `FKanmcnj859x2tv3y0pv7u05cqa` (`admin_id`);

--
-- 表的索引 `app_revision`
--
ALTER TABLE `app_revision`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `business_auth_apply`
--
ALTER TABLE `business_auth_apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKds72omottejlk5isd34ha5i10` (`business_auth_deposit_id`),
  ADD KEY `FKdghp8ri44t77ntuw06gicphuu` (`member_id`);

--
-- 表的索引 `business_auth_deposit`
--
ALTER TABLE `business_auth_deposit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfj3hxtr3ae1yma9bxeuqc29pj` (`admin_id`),
  ADD KEY `FKjx7799a3pwdtnu43fkpn27kj6` (`coin_id`);

--
-- 表的索引 `bussiness_cancel_apply`
--
ALTER TABLE `bussiness_cancel_apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbwtwtm0jd1eqa8dh7e8ychcx1` (`member_id`);

--
-- 表的索引 `coin`
--
ALTER TABLE `coin`
  ADD PRIMARY KEY (`name`);

--
-- 表的索引 `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`zh_name`);

--
-- 表的索引 `ctc_acceptor`
--
ALTER TABLE `ctc_acceptor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk3nfn54patdd6rwa0skk70tq6` (`member_id`);

--
-- 表的索引 `ctc_order`
--
ALTER TABLE `ctc_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_t212u5lpa982v4yc0ue7c3eab` (`order_sn`),
  ADD KEY `FKgk8nq4d3ouoj9eyo1kfqtw0wq` (`acceptor_id`),
  ADD KEY `FK419ewpncecgofa3j1338d6ma6` (`member_id`);

--
-- 表的索引 `data_dictionary`
--
ALTER TABLE `data_dictionary`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_1t68827l97cwyxo9r1u6t4p7d` (`name`);

--
-- 表的索引 `deposit_record`
--
ALTER TABLE `deposit_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7x5q0lmqqtty5i0w5mq09o8r7` (`coin_id`),
  ADD KEY `FKji8p5uoc1ad45npyf72rgf2lx` (`member_id`);

--
-- 表的索引 `dividend_start_record`
--
ALTER TABLE `dividend_start_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK226c1iy2t1dt9tjjo20pum39d` (`admin_id`);

--
-- 表的索引 `exchange_coin`
--
ALTER TABLE `exchange_coin`
  ADD PRIMARY KEY (`symbol`);

--
-- 表的索引 `exchange_favor_symbol`
--
ALTER TABLE `exchange_favor_symbol`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `exchange_order`
--
ALTER TABLE `exchange_order`
  ADD PRIMARY KEY (`order_id`);

--
-- 表的索引 `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmonjtjt92g6gruqyfumtmg8m8` (`member_id`);

--
-- 表的索引 `financial_item`
--
ALTER TABLE `financial_item`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `financial_order`
--
ALTER TABLE `financial_order`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `hot_transfer_record`
--
ALTER TABLE `hot_transfer_record`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `init_plate`
--
ALTER TABLE `init_plate`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `legal_wallet_recharge`
--
ALTER TABLE `legal_wallet_recharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtfjvrkn1oe0yu2tfjh6qcms73` (`admin_id`),
  ADD KEY `FKsdtoqyvbjpd0bmw4n41ijc0kk` (`coin_name`),
  ADD KEY `FK170xpb7hoxqoj5ovdrcibs9gn` (`member_id`);

--
-- 表的索引 `legal_wallet_withdraw`
--
ALTER TABLE `legal_wallet_withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe95o0059kwsgmsxxv3amdb0d2` (`admin_id`),
  ADD KEY `FKbilsav1ug8vjtn4ffghrlogqx` (`coin_name`),
  ADD KEY `FKcpw5k7o3tchlifu1wqmjhku9t` (`member_id`);

--
-- 表的索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_gc3jmn7c2abyo3wf6syln5t2i` (`username`),
  ADD UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`),
  ADD UNIQUE KEY `UK_10ixebfiyeqolglpuye0qb49u` (`mobile_phone`),
  ADD KEY `FKbt72vgf5myy3uhygc90xna65j` (`local`);

--
-- 表的索引 `member_address`
--
ALTER TABLE `member_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhcqqqntcf8hqmoa6dpo95okyh` (`coin_id`);

--
-- 表的索引 `member_application`
--
ALTER TABLE `member_application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2djx7q0j54th0cgj7153qfbl1` (`member_id`);

--
-- 表的索引 `member_application_config`
--
ALTER TABLE `member_application_config`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `member_bonus`
--
ALTER TABLE `member_bonus`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `member_deposit`
--
ALTER TABLE `member_deposit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKl2ibi99fuxplt8qt3rrpb0q4w` (`txid`,`address`);

--
-- 表的索引 `member_invite_stastic`
--
ALTER TABLE `member_invite_stastic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_id` (`member_id`),
  ADD UNIQUE KEY `UK4o6jykp20ax1pybxgxcwsxq01` (`member_id`);

--
-- 表的索引 `member_invite_stastic_rank`
--
ALTER TABLE `member_invite_stastic_rank`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `member_level`
--
ALTER TABLE `member_level`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `member_promotion`
--
ALTER TABLE `member_promotion`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `member_sign_record`
--
ALTER TABLE `member_sign_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7qa42qkaoqxlyvwhxwdstclic` (`coin_name`),
  ADD KEY `FK2r4i90tejcbf85vhk0d8besle` (`member_id`),
  ADD KEY `FKq1926wgosqk7ka4kvw8rtxew` (`sign_id`);

--
-- 表的索引 `member_transaction`
--
ALTER TABLE `member_transaction`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `member_wallet`
--
ALTER TABLE `member_wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKm68bscpof0bpnxocxl4qdnvbe` (`member_id`,`coin_id`),
  ADD KEY `FKf9tgbp9y9py8t9c5xj0lllcib` (`coin_id`);

--
-- 表的索引 `member_wallet_history`
--
ALTER TABLE `member_wallet_history`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mining_order`
--
ALTER TABLE `mining_order`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mining_order_detail`
--
ALTER TABLE `mining_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `otc_coin`
--
ALTER TABLE `otc_coin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `otc_order`
--
ALTER TABLE `otc_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_qmfpakgu6mowmslv4m5iy43t9` (`order_sn`),
  ADD KEY `FKjh47nnmiehmu15wqjfwnh8a6u` (`coin_id`);

--
-- 表的索引 `promotion_card`
--
ALTER TABLE `promotion_card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_3781uubel3iuh86ht6yv0n0r7` (`card_no`),
  ADD KEY `FKem2r42s1av7tfni612176gt9f` (`coin_id`);

--
-- 表的索引 `promotion_card_order`
--
ALTER TABLE `promotion_card_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1e6ykywfbw68oodq33no4ao8u` (`card_id`);

--
-- 表的索引 `red_envelope`
--
ALTER TABLE `red_envelope`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_kpc525u446ufbpp8a8wxq6b93` (`envelope_no`);

--
-- 表的索引 `red_envelope_detail`
--
ALTER TABLE `red_envelope_detail`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `reward_activity_setting`
--
ALTER TABLE `reward_activity_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKra9w7qwgbxti55cmkb6kycau7` (`admin_id`),
  ADD KEY `FKmxq57nrqt4lb9lqpxwc095h1h` (`coin_id`);

--
-- 表的索引 `reward_promotion_setting`
--
ALTER TABLE `reward_promotion_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7fl96plmj12crmepem7t876u3` (`admin_id`),
  ADD KEY `FKfhtlsn9g8lj5qecbo596ymhey` (`coin_id`);

--
-- 表的索引 `reward_record`
--
ALTER TABLE `reward_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtm2ha75hh60am8n7lco838nmo` (`coin_id`),
  ADD KEY `FK9m2bd6gjgad67vb6of4waxtov` (`member_id`);

--
-- 表的索引 `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK58kn2gi7nvswa8hb76h87wtdl` (`coin_name`);

--
-- 表的索引 `sys_advertise`
--
ALTER TABLE `sys_advertise`
  ADD PRIMARY KEY (`serial_number`);

--
-- 表的索引 `sys_help`
--
ALTER TABLE `sys_help`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tb_sms`
--
ALTER TABLE `tb_sms`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `transfer_address`
--
ALTER TABLE `transfer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7iv0cmmj36ncaw1nx92x15vtu` (`coin_id`);

--
-- 表的索引 `transfer_record`
--
ALTER TABLE `transfer_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkrlf3bglmf2c51sorq9fpue0g` (`coin_id`);

--
-- 表的索引 `website_information`
--
ALTER TABLE `website_information`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `withdraw_record`
--
ALTER TABLE `withdraw_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2lmq6bcbk4nl3hmqcxbnx2kuc` (`admin_id`),
  ADD KEY `FK6drad9oqabujy0jsre3minxi` (`coin_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `activity`
--
ALTER TABLE `activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14538;

--
-- 使用表AUTO_INCREMENT `activity_order`
--
ALTER TABLE `activity_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- 使用表AUTO_INCREMENT `admin_access_log`
--
ALTER TABLE `admin_access_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- 使用表AUTO_INCREMENT `admin_permission`
--
ALTER TABLE `admin_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- 使用表AUTO_INCREMENT `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- 使用表AUTO_INCREMENT `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118949;

--
-- 使用表AUTO_INCREMENT `appeal`
--
ALTER TABLE `appeal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `app_revision`
--
ALTER TABLE `app_revision`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `business_auth_apply`
--
ALTER TABLE `business_auth_apply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `business_auth_deposit`
--
ALTER TABLE `business_auth_deposit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `bussiness_cancel_apply`
--
ALTER TABLE `bussiness_cancel_apply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ctc_acceptor`
--
ALTER TABLE `ctc_acceptor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `ctc_order`
--
ALTER TABLE `ctc_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `data_dictionary`
--
ALTER TABLE `data_dictionary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `dividend_start_record`
--
ALTER TABLE `dividend_start_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `exchange_favor_symbol`
--
ALTER TABLE `exchange_favor_symbol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用表AUTO_INCREMENT `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `financial_item`
--
ALTER TABLE `financial_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `financial_order`
--
ALTER TABLE `financial_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `hot_transfer_record`
--
ALTER TABLE `hot_transfer_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `init_plate`
--
ALTER TABLE `init_plate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `legal_wallet_recharge`
--
ALTER TABLE `legal_wallet_recharge`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `legal_wallet_withdraw`
--
ALTER TABLE `legal_wallet_withdraw`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_address`
--
ALTER TABLE `member_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_application`
--
ALTER TABLE `member_application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_application_config`
--
ALTER TABLE `member_application_config`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_bonus`
--
ALTER TABLE `member_bonus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_deposit`
--
ALTER TABLE `member_deposit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_invite_stastic`
--
ALTER TABLE `member_invite_stastic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_invite_stastic_rank`
--
ALTER TABLE `member_invite_stastic_rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_level`
--
ALTER TABLE `member_level`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_promotion`
--
ALTER TABLE `member_promotion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_sign_record`
--
ALTER TABLE `member_sign_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_transaction`
--
ALTER TABLE `member_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_wallet`
--
ALTER TABLE `member_wallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `member_wallet_history`
--
ALTER TABLE `member_wallet_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1338;

--
-- 使用表AUTO_INCREMENT `mining_order`
--
ALTER TABLE `mining_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mining_order_detail`
--
ALTER TABLE `mining_order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `otc_coin`
--
ALTER TABLE `otc_coin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `otc_order`
--
ALTER TABLE `otc_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `promotion_card`
--
ALTER TABLE `promotion_card`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `promotion_card_order`
--
ALTER TABLE `promotion_card_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `red_envelope`
--
ALTER TABLE `red_envelope`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `red_envelope_detail`
--
ALTER TABLE `red_envelope_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `reward_activity_setting`
--
ALTER TABLE `reward_activity_setting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `reward_promotion_setting`
--
ALTER TABLE `reward_promotion_setting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `reward_record`
--
ALTER TABLE `reward_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sign`
--
ALTER TABLE `sign`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sys_help`
--
ALTER TABLE `sys_help`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323255;

--
-- 使用表AUTO_INCREMENT `tb_sms`
--
ALTER TABLE `tb_sms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `transfer_address`
--
ALTER TABLE `transfer_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `transfer_record`
--
ALTER TABLE `transfer_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `withdraw_record`
--
ALTER TABLE `withdraw_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `FKnmmt6f2kg0oaxr11uhy7qqf3w` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `admin_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- 限制表 `admin_role_permission`
--
ALTER TABLE `admin_role_permission`
  ADD CONSTRAINT `FK52rddd3qje4p49iubt08gplb5` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  ADD CONSTRAINT `FKqf3fhgl5mjqqb0jeupx7yafh0` FOREIGN KEY (`rule_id`) REFERENCES `admin_permission` (`id`),
  ADD CONSTRAINT `admin_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  ADD CONSTRAINT `admin_role_permission_ibfk_2` FOREIGN KEY (`rule_id`) REFERENCES `admin_permission` (`id`),
  ADD CONSTRAINT `admin_role_permission_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  ADD CONSTRAINT `admin_role_permission_ibfk_4` FOREIGN KEY (`rule_id`) REFERENCES `admin_permission` (`id`);

--
-- 限制表 `advertise`
--
ALTER TABLE `advertise`
  ADD CONSTRAINT `FK75rse9iecdnimf8ugtf20c43l` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`),
  ADD CONSTRAINT `FK9lueh92242ckyajg17xr9tcie` FOREIGN KEY (`country`) REFERENCES `country` (`zh_name`),
  ADD CONSTRAINT `FKspoip5yq9ednwwondsga9c9k6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- 限制表 `appeal`
--
ALTER TABLE `appeal`
  ADD CONSTRAINT `FKanmcnj859x2tv3y0pv7u05cqa` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `FKs3vo8h01sq39icylq1qdwekn1` FOREIGN KEY (`order_id`) REFERENCES `otc_order` (`id`);

--
-- 限制表 `business_auth_apply`
--
ALTER TABLE `business_auth_apply`
  ADD CONSTRAINT `FKdghp8ri44t77ntuw06gicphuu` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `FKds72omottejlk5isd34ha5i10` FOREIGN KEY (`business_auth_deposit_id`) REFERENCES `business_auth_deposit` (`id`);

--
-- 限制表 `business_auth_deposit`
--
ALTER TABLE `business_auth_deposit`
  ADD CONSTRAINT `FKfj3hxtr3ae1yma9bxeuqc29pj` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `FKjx7799a3pwdtnu43fkpn27kj6` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);

--
-- 限制表 `bussiness_cancel_apply`
--
ALTER TABLE `bussiness_cancel_apply`
  ADD CONSTRAINT `FKbwtwtm0jd1eqa8dh7e8ychcx1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- 限制表 `ctc_acceptor`
--
ALTER TABLE `ctc_acceptor`
  ADD CONSTRAINT `FKk3nfn54patdd6rwa0skk70tq6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- 限制表 `ctc_order`
--
ALTER TABLE `ctc_order`
  ADD CONSTRAINT `FK419ewpncecgofa3j1338d6ma6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `FKgk8nq4d3ouoj9eyo1kfqtw0wq` FOREIGN KEY (`acceptor_id`) REFERENCES `member` (`id`);

--
-- 限制表 `deposit_record`
--
ALTER TABLE `deposit_record`
  ADD CONSTRAINT `FK7x5q0lmqqtty5i0w5mq09o8r7` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  ADD CONSTRAINT `FKji8p5uoc1ad45npyf72rgf2lx` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- 限制表 `dividend_start_record`
--
ALTER TABLE `dividend_start_record`
  ADD CONSTRAINT `FK226c1iy2t1dt9tjjo20pum39d` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- 限制表 `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `FKmonjtjt92g6gruqyfumtmg8m8` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- 限制表 `legal_wallet_recharge`
--
ALTER TABLE `legal_wallet_recharge`
  ADD CONSTRAINT `FK170xpb7hoxqoj5ovdrcibs9gn` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `FKsdtoqyvbjpd0bmw4n41ijc0kk` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  ADD CONSTRAINT `FKtfjvrkn1oe0yu2tfjh6qcms73` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- 限制表 `legal_wallet_withdraw`
--
ALTER TABLE `legal_wallet_withdraw`
  ADD CONSTRAINT `FKbilsav1ug8vjtn4ffghrlogqx` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  ADD CONSTRAINT `FKcpw5k7o3tchlifu1wqmjhku9t` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `FKe95o0059kwsgmsxxv3amdb0d2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- 限制表 `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `FKbt72vgf5myy3uhygc90xna65j` FOREIGN KEY (`local`) REFERENCES `country` (`zh_name`);

--
-- 限制表 `member_address`
--
ALTER TABLE `member_address`
  ADD CONSTRAINT `FKhcqqqntcf8hqmoa6dpo95okyh` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);

--
-- 限制表 `member_application`
--
ALTER TABLE `member_application`
  ADD CONSTRAINT `FK2djx7q0j54th0cgj7153qfbl1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- 限制表 `member_sign_record`
--
ALTER TABLE `member_sign_record`
  ADD CONSTRAINT `FK2r4i90tejcbf85vhk0d8besle` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `FK7qa42qkaoqxlyvwhxwdstclic` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`),
  ADD CONSTRAINT `FKq1926wgosqk7ka4kvw8rtxew` FOREIGN KEY (`sign_id`) REFERENCES `sign` (`id`);

--
-- 限制表 `member_wallet`
--
ALTER TABLE `member_wallet`
  ADD CONSTRAINT `FKf9tgbp9y9py8t9c5xj0lllcib` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);

--
-- 限制表 `otc_order`
--
ALTER TABLE `otc_order`
  ADD CONSTRAINT `FKjh47nnmiehmu15wqjfwnh8a6u` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`);

--
-- 限制表 `promotion_card`
--
ALTER TABLE `promotion_card`
  ADD CONSTRAINT `FKem2r42s1av7tfni612176gt9f` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);

--
-- 限制表 `promotion_card_order`
--
ALTER TABLE `promotion_card_order`
  ADD CONSTRAINT `FK1e6ykywfbw68oodq33no4ao8u` FOREIGN KEY (`card_id`) REFERENCES `promotion_card` (`id`);

--
-- 限制表 `reward_activity_setting`
--
ALTER TABLE `reward_activity_setting`
  ADD CONSTRAINT `FKmxq57nrqt4lb9lqpxwc095h1h` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`),
  ADD CONSTRAINT `FKra9w7qwgbxti55cmkb6kycau7` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- 限制表 `reward_promotion_setting`
--
ALTER TABLE `reward_promotion_setting`
  ADD CONSTRAINT `FK7fl96plmj12crmepem7t876u3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `FKfhtlsn9g8lj5qecbo596ymhey` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);

--
-- 限制表 `reward_record`
--
ALTER TABLE `reward_record`
  ADD CONSTRAINT `FK9m2bd6gjgad67vb6of4waxtov` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `FKtm2ha75hh60am8n7lco838nmo` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);

--
-- 限制表 `sign`
--
ALTER TABLE `sign`
  ADD CONSTRAINT `FK58kn2gi7nvswa8hb76h87wtdl` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`);

--
-- 限制表 `transfer_address`
--
ALTER TABLE `transfer_address`
  ADD CONSTRAINT `FK7iv0cmmj36ncaw1nx92x15vtu` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);

--
-- 限制表 `transfer_record`
--
ALTER TABLE `transfer_record`
  ADD CONSTRAINT `FKkrlf3bglmf2c51sorq9fpue0g` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);

--
-- 限制表 `withdraw_record`
--
ALTER TABLE `withdraw_record`
  ADD CONSTRAINT `FK2lmq6bcbk4nl3hmqcxbnx2kuc` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `FK6drad9oqabujy0jsre3minxi` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
