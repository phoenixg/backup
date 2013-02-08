/*
SQLyog Ultimate v8.71 
MySQL - 5.1.66 : Database - backendpro061
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`backendpro061` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `backendpro061`;

/*Table structure for table `be_acl_actions` */

DROP TABLE IF EXISTS `be_acl_actions`;

CREATE TABLE `be_acl_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `be_acl_actions` */

/*Table structure for table `be_acl_groups` */

DROP TABLE IF EXISTS `be_acl_groups`;

CREATE TABLE `be_acl_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned NOT NULL DEFAULT '0',
  `rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `link` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `be_acl_groups` */

insert  into `be_acl_groups`(`id`,`lft`,`rgt`,`name`,`link`) values (1,1,4,'Member',NULL),(2,2,3,'Administrator',NULL);

/*Table structure for table `be_acl_permission_actions` */

DROP TABLE IF EXISTS `be_acl_permission_actions`;

CREATE TABLE `be_acl_permission_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_id` int(10) unsigned NOT NULL DEFAULT '0',
  `axo_id` int(10) unsigned NOT NULL DEFAULT '0',
  `allow` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `access_id` (`access_id`),
  KEY `axo_id` (`axo_id`),
  CONSTRAINT `be_acl_permission_actions_ibfk_1` FOREIGN KEY (`access_id`) REFERENCES `be_acl_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `be_acl_permission_actions_ibfk_2` FOREIGN KEY (`axo_id`) REFERENCES `be_acl_actions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `be_acl_permission_actions` */

/*Table structure for table `be_acl_permissions` */

DROP TABLE IF EXISTS `be_acl_permissions`;

CREATE TABLE `be_acl_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aco_id` int(10) unsigned NOT NULL DEFAULT '0',
  `allow` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aro_id` (`aro_id`),
  KEY `aco_id` (`aco_id`),
  CONSTRAINT `be_acl_permissions_ibfk_1` FOREIGN KEY (`aro_id`) REFERENCES `be_acl_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `be_acl_permissions_ibfk_2` FOREIGN KEY (`aco_id`) REFERENCES `be_acl_resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `be_acl_permissions` */

insert  into `be_acl_permissions`(`id`,`aro_id`,`aco_id`,`allow`) values (1,2,1,'Y');

/*Table structure for table `be_acl_resources` */

DROP TABLE IF EXISTS `be_acl_resources`;

CREATE TABLE `be_acl_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned NOT NULL DEFAULT '0',
  `rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `link` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `be_acl_resources` */

insert  into `be_acl_resources`(`id`,`lft`,`rgt`,`name`,`link`) values (1,1,22,'Site',NULL),(2,2,21,'Control Panel',NULL),(3,3,20,'System',NULL),(4,14,15,'Members',NULL),(5,4,13,'Access Control',NULL),(6,16,17,'Settings',NULL),(7,18,19,'Utilities',NULL),(8,11,12,'Permissions',NULL),(9,9,10,'Groups',NULL),(10,7,8,'Resources',NULL),(11,5,6,'Actions',NULL);

/*Table structure for table `be_groups` */

DROP TABLE IF EXISTS `be_groups`;

CREATE TABLE `be_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `be_groups_ibfk_1` FOREIGN KEY (`id`) REFERENCES `be_acl_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `be_groups` */

insert  into `be_groups`(`id`,`locked`,`disabled`) values (1,1,0),(2,1,0);

/*Table structure for table `be_preferences` */

DROP TABLE IF EXISTS `be_preferences`;

CREATE TABLE `be_preferences` (
  `name` varchar(254) CHARACTER SET latin1 NOT NULL,
  `value` text CHARACTER SET latin1 NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `be_preferences` */

insert  into `be_preferences`(`name`,`value`) values ('default_user_group','1'),('smtp_host',''),('keep_error_logs_for','30'),('email_protocol','sendmail'),('use_registration_captcha','0'),('page_debug','0'),('automated_from_name','BackendPro'),('allow_user_registration','1'),('use_login_captcha','0'),('site_name','BackendPro'),('automated_from_email','noreply@backendpro.co.uk'),('account_activation_time','7'),('allow_user_profiles','0'),('activation_method','email'),('autologin_period','30'),('min_password_length','8'),('smtp_user',''),('smtp_pass',''),('email_mailpath','/usr/sbin/sendmail'),('smtp_port','25'),('smtp_timeout','5'),('email_wordwrap','1'),('email_wrapchars','76'),('email_mailtype','text'),('email_charset','utf-8'),('bcc_batch_mode','0'),('bcc_batch_size','200'),('login_field','email');

/*Table structure for table `be_resources` */

DROP TABLE IF EXISTS `be_resources`;

CREATE TABLE `be_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `be_resources_ibfk_1` FOREIGN KEY (`id`) REFERENCES `be_acl_resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `be_resources` */

insert  into `be_resources`(`id`,`locked`) values (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1);

/*Table structure for table `be_user_profiles` */

DROP TABLE IF EXISTS `be_user_profiles`;

CREATE TABLE `be_user_profiles` (
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `be_user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `be_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `be_user_profiles` */

insert  into `be_user_profiles`(`user_id`) values (1);

/*Table structure for table `be_users` */

DROP TABLE IF EXISTS `be_users`;

CREATE TABLE `be_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(254) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group` int(10) unsigned DEFAULT NULL,
  `activation_key` varchar(32) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `password` (`password`),
  KEY `group` (`group`),
  CONSTRAINT `be_users_ibfk_1` FOREIGN KEY (`group`) REFERENCES `be_acl_groups` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `be_users` */

insert  into `be_users`(`id`,`username`,`password`,`email`,`active`,`group`,`activation_key`,`last_visit`,`created`,`modified`) values (1,'admin','28b2c3dea7b1fda2e110c827f9c2b16b2c9b4c91','306761352@qq.com',1,2,NULL,'2012-08-17 09:33:12','2012-03-28 23:51:13',NULL);

/*Table structure for table `ci_sessions` */

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `user_agent` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_data` text NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ci_sessions` */

insert  into `ci_sessions`(`session_id`,`ip_address`,`user_agent`,`user_data`,`last_activity`) values ('c4f7c6e2e84bedc999315d057bbe4752','116.247.85.130','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko','a:10:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:16:\"306761352@qq.com\";s:8:\"password\";s:40:\"28b2c3dea7b1fda2e110c827f9c2b16b2c9b4c91\";s:6:\"active\";s:1:\"1\";s:10:\"last_visit\";s:19:\"2012-04-16 11:51:42\";s:7:\"created\";s:19:\"2012-03-28 23:51:13\";s:8:\"modified\";s:0:\"\";s:5:\"group\";s:13:\"Administrator\";s:8:\"group_id\";s:1:\"2\";}',1335510968),('aa830f6851944cc90d6391f61994ec8c','116.247.85.130','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko','',1334914778),('1db468521ae2edb2e38bb428d5499095','116.247.85.130','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko','a:10:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:16:\"306761352@qq.com\";s:8:\"password\";s:40:\"28b2c3dea7b1fda2e110c827f9c2b16b2c9b4c91\";s:6:\"active\";s:1:\"1\";s:10:\"last_visit\";s:19:\"2012-04-27 15:16:49\";s:7:\"created\";s:19:\"2012-03-28 23:51:13\";s:8:\"modified\";s:0:\"\";s:5:\"group\";s:13:\"Administrator\";s:8:\"group_id\";s:1:\"2\";}',1345167173);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
