/*
SQLyog Ultimate v8.71 
MySQL - 5.1.66 : Database - fitness
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fitness` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fitness`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `be_acl_groups` */

insert  into `be_acl_groups`(`id`,`lft`,`rgt`,`name`,`link`) values (1,1,6,'Member',NULL),(2,4,5,'Administrator',NULL),(3,2,3,'demoadmin',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `be_acl_permissions` */

insert  into `be_acl_permissions`(`id`,`aro_id`,`aco_id`,`allow`) values (1,2,1,'Y'),(3,1,24,'Y'),(4,1,27,'N'),(5,1,6,'N'),(6,1,3,'N'),(7,1,12,'N'),(8,3,24,'Y'),(9,3,12,'N'),(10,3,28,'Y'),(11,3,36,'Y');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `be_acl_resources` */

insert  into `be_acl_resources`(`id`,`lft`,`rgt`,`name`,`link`) values (1,1,70,'Site',NULL),(2,50,69,'Control Panel',NULL),(3,51,68,'System',NULL),(4,62,63,'Members',NULL),(5,52,61,'Access Control',NULL),(6,64,65,'Settings',NULL),(7,66,67,'Utilities',NULL),(8,59,60,'Permissions',NULL),(9,57,58,'Groups',NULL),(10,55,56,'Resources',NULL),(11,53,54,'Actions',NULL),(12,26,49,'General',0),(13,47,48,'Calendar',0),(14,45,46,'Categories',0),(15,43,44,'Customers',0),(16,41,42,'Menus',0),(17,39,40,'Messages',0),(18,37,38,'Orders',0),(19,35,36,'Pages',0),(20,33,34,'Products',0),(21,31,32,'Subscribers',0),(22,29,30,'Admins',0),(23,27,28,'Filemanager',0),(24,18,25,'Customer Support',0),(25,23,24,'Purchase Support',0),(26,21,22,'Customer Record',0),(27,19,20,'Customers Admin',0),(28,12,17,'Project Panel',0),(29,15,16,'Project Spec',0),(30,13,14,'Project Home',0),(32,9,10,'Customer booking',0),(33,7,8,'Bookings',0),(34,3,4,'Courses',0),(35,5,6,'Trainers',0),(36,2,11,'Fitness',0);

/*Table structure for table `be_groups` */

DROP TABLE IF EXISTS `be_groups`;

CREATE TABLE `be_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `be_groups_ibfk_1` FOREIGN KEY (`id`) REFERENCES `be_acl_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `be_groups` */

insert  into `be_groups`(`id`,`locked`,`disabled`) values (1,1,0),(2,1,0),(3,0,0);

/*Table structure for table `be_preferences` */

DROP TABLE IF EXISTS `be_preferences`;

CREATE TABLE `be_preferences` (
  `name` varchar(254) CHARACTER SET latin1 NOT NULL,
  `value` text CHARACTER SET latin1 NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `be_preferences` */

insert  into `be_preferences`(`name`,`value`) values ('default_user_group','1'),('smtp_host',''),('keep_error_logs_for','30'),('email_protocol','mail'),('use_registration_captcha','0'),('page_debug','0'),('automated_from_name','BackendPro'),('allow_user_registration','0'),('use_login_captcha','0'),('site_name','Codeigniter Application Demos'),('automated_from_email','noreply@backendpro.co.uk'),('account_activation_time','7'),('allow_user_profiles','1'),('activation_method','email'),('autologin_period','30'),('min_password_length','4'),('smtp_user',''),('smtp_pass',''),('email_mailpath','/usr/sbin/sendmail -t -i'),('smtp_port','25'),('smtp_timeout','5'),('email_wordwrap','1'),('email_wrapchars','76'),('email_mailtype','text'),('email_charset','utf-8'),('bcc_batch_mode','0'),('bcc_batch_size','200'),('login_field','email'),('main_nav_parent_id','107'),('categories_parent_id','1'),('admin_email','admin@gmail.com'),('webshop_slideshow','nivoslider'),('slideshow_two','none');

/*Table structure for table `be_resources` */

DROP TABLE IF EXISTS `be_resources`;

CREATE TABLE `be_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `be_resources_ibfk_1` FOREIGN KEY (`id`) REFERENCES `be_acl_resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `be_resources` */

insert  into `be_resources`(`id`,`locked`) values (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0),(23,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(32,0),(33,0),(34,0),(35,0),(36,0);

/*Table structure for table `be_user_profiles` */

DROP TABLE IF EXISTS `be_user_profiles`;

CREATE TABLE `be_user_profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `web_address` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `post_code` int(10) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `be_user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `be_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `be_user_profiles` */

insert  into `be_user_profiles`(`user_id`,`company_name`,`full_name`,`web_address`,`phone_number`,`address`,`city`,`post_code`) values (1,'','','','','','',0),(2,'4children','Anne Will','http://yahoo.com','','','',0),(3,'Tonje Design','Tonje Smith','http://www.google.com','','','',0),(4,'','','','','','',0),(5,'','','','','','',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `be_users` */

insert  into `be_users`(`id`,`username`,`password`,`email`,`active`,`group`,`activation_key`,`last_visit`,`created`,`modified`) values (1,'shin','6dd49f45771cd4f9893b88f81eb98944324e16b8','306761352@qq.com',1,2,NULL,'2012-04-17 14:53:51','2010-04-09 23:43:52','2012-04-16 11:32:41'),(2,'anne','a0e865768dc0578a302aadcb5d83a9d8b7148ec1','cus7@gmail.com',1,1,NULL,'2010-11-07 16:41:52','2010-08-04 21:29:28','2010-10-27 08:11:53'),(3,'tonje','74f4ad851b36a00062be49add78fa8b25eb2c3ac','cus2@gmail.com',1,1,NULL,'2010-11-05 11:21:19','2010-08-04 21:30:39',NULL),(4,'demoadmin','7209eff04cacade182becf6600f6cec0a4a2db37','admin@gmail.com',1,3,NULL,'2010-11-07 16:23:44','2010-10-26 22:10:44','2010-10-30 22:22:57'),(5,'superadmin','3fa578837fc3e1d619c3ea4f7d3e4eb4e79a6929','shinichi.okada@sfjbb.net',1,2,NULL,NULL,'2010-11-07 13:11:28',NULL);

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

insert  into `ci_sessions`(`session_id`,`ip_address`,`user_agent`,`user_data`,`last_activity`) values ('460b5fb83aa24e35fd6375cbd063dd46','116.247.85.130','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53','',1334715021),('94689d314207ff5680c7ebb1597d1c22','116.247.85.130','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko','',1334913846),('53f84744c83551422cea2aec6276fb8b','116.247.85.130','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53','a:10:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:4:\"shin\";s:5:\"email\";s:16:\"306761352@qq.com\";s:8:\"password\";s:40:\"6dd49f45771cd4f9893b88f81eb98944324e16b8\";s:6:\"active\";s:1:\"1\";s:10:\"last_visit\";s:19:\"2012-04-16 11:32:09\";s:7:\"created\";s:19:\"2010-04-09 23:43:52\";s:8:\"modified\";s:19:\"2012-04-16 11:32:41\";s:5:\"group\";s:13:\"Administrator\";s:8:\"group_id\";s:1:\"2\";}',1334648052);

/*Table structure for table `omc_bookings` */

DROP TABLE IF EXISTS `omc_bookings`;

CREATE TABLE `omc_bookings` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date_enroll` date NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

/*Data for the table `omc_bookings` */

insert  into `omc_bookings`(`booking_id`,`customer_id`,`course_id`,`date_enroll`) values (73,2,11,'2010-10-22'),(67,4,9,'2010-10-22'),(66,4,11,'2010-10-22'),(71,2,18,'2010-10-22'),(65,4,1,'2010-10-22'),(64,4,22,'2010-10-22'),(68,2,2,'2010-10-22'),(69,2,14,'2010-10-22'),(62,4,37,'2010-10-22'),(74,2,9,'2010-10-22'),(72,2,1,'2010-10-22'),(63,4,21,'2010-10-22'),(61,4,2,'2010-10-22'),(70,2,4,'2010-10-22'),(60,3,9,'2010-10-22'),(75,2,37,'2010-10-22'),(76,4,18,'2010-10-22'),(77,3,18,'2010-10-22'),(78,3,14,'2010-10-22'),(79,3,2,'2010-10-22'),(80,3,19,'2010-10-22'),(81,4,3,'2010-10-22'),(82,2,3,'2010-10-22');

/*Table structure for table `omc_courses` */

DROP TABLE IF EXISTS `omc_courses`;

CREATE TABLE `omc_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_id` int(10) DEFAULT NULL,
  `time` time NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `trainer_id` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) DEFAULT NULL,
  `booked` int(5) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `omc_courses` */

insert  into `omc_courses`(`id`,`date_id`,`time`,`course_name`,`trainer_id`,`desc`,`capacity`,`active`,`order`,`booked`,`type`) values (1,5,'10:00:00','High Energy2',1,'Desc of Eric ',2,1,0,2,'green'),(2,1,'11:00:00','Nets Pilates',2,'Nets Pilates tada',3,1,2,3,'green'),(3,1,'13:00:00','Spin',5,'Description for Spin',2,1,3,2,'red'),(4,1,'16:00:00','Sirkel30',5,'Description for Sirkel30',2,1,4,1,'yellow'),(5,1,'16:00:00','Sirkel30',5,'Desc of Diana Krall. n arcu ut nisi sit auctor, enim. Phasellus, elementum mid, pulvinar, duis mus scelerisque? Ac eros? Augue penatibus quis aliquam odio augue! Duis dis sit integer tortor et, cras porttitor.',2,1,0,0,'green'),(9,7,'11:00:00','High Energy',6,'Description for High energy',3,1,1,3,'red'),(11,6,'11:00:00','Spin',8,'Description for Spin',2,1,1,2,'blue'),(12,6,'13:00:00','High Energy',2,'Desc of High energy',2,1,2,0,'yellow'),(13,6,'14:00:00','Spin',8,'',2,1,0,0,'red'),(14,3,'11:00:00','High Energy2',9,'desc of tal tada',3,1,0,2,'yellow'),(15,8,'11:00:00','Rowing High',9,'Desc of Rowing High',1,1,0,0,'green'),(16,9,'09:00:00','Jogging Rabbits',6,'Desc of Jogging Rabbits',1,1,0,0,'blue'),(17,15,'09:00:00','Jogging Rabbits',2,'Desc of Jogging Rabbits',1,1,0,0,'green'),(18,4,'10:00:00','Top speeds',8,'Desc about Top speed by fourplay',2,1,0,3,'red'),(19,5,'10:00:00','High Energy2',9,'Desc about High Energy 2 by Tal',1,1,0,1,'yellow'),(20,23,'10:00:00','High Energy2',9,'Desc of High energy 2 by Tal',1,1,0,0,'yellow'),(21,3,'14:00:00','Nets Pilates',2,'Desc of Nets Pilates by Santana.',2,1,0,1,'green'),(22,4,'15:00:00','Nets Pilates',2,'Desc of Nets Pilates by santana.',2,1,0,1,'green'),(37,2,'08:00:00','High Energy2',1,'',3,1,0,2,'green');

/*Table structure for table `omc_date` */

DROP TABLE IF EXISTS `omc_date`;

CREATE TABLE `omc_date` (
  `date_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `week_id` int(10) NOT NULL,
  PRIMARY KEY (`date_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `omc_date` */

insert  into `omc_date`(`date_id`,`date`,`week_id`) values (1,'2010-10-11',1),(2,'2010-10-12',1),(3,'2010-10-13',1),(4,'2010-10-14',1),(5,'2010-10-15',1),(6,'2010-10-16',1),(7,'2010-10-17',1),(8,'2010-10-18',2),(9,'2010-10-19',2),(10,'2010-10-20',2),(11,'2010-10-21',2),(12,'2010-10-22',2),(13,'2010-10-23',2),(14,'2010-10-24',2),(15,'2010-10-25',3),(16,'2010-10-26',3),(18,'2010-10-28',3),(19,'2010-10-27',3),(20,'2010-10-29',3),(21,'2010-10-30',3),(22,'2010-10-31',3),(23,'2010-11-01',4),(24,'2010-11-02',4),(25,'2010-11-03',4),(26,'2010-11-04',4),(27,'2010-11-05',4),(28,'2010-11-06',4),(29,'2010-11-07',4);

/*Table structure for table `omc_trainer` */

DROP TABLE IF EXISTS `omc_trainer`;

CREATE TABLE `omc_trainer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trainer_name` varchar(50) NOT NULL,
  `trainer_image` varchar(100) NOT NULL,
  `video_url` text NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `omc_trainer` */

insert  into `omc_trainer`(`id`,`trainer_name`,`trainer_image`,`video_url`,`desc`) values (1,'Eric Clapton Jr.','','http://www.youtube.com/watch?v=AscPOozwYA8','Desc of Eric '),(2,'Sussan Santana','','http://www.youtube.com/watch?v=ACdwCIld3kE&feature=related','Desc of Santana'),(6,'Joe Cocker','','http://www.youtube.com/watch?v=wlDmslyGmGI','Trainer 6\'s desc. Trainer is Joe cocker'),(7,'Jeff Beck','','http://www.youtube.com/watch?v=VC02wGj5gPw','Desc of Jeff Beck. mattis? Mus est? Porttitor nascetur urna integer a, adipiscing rhoncus! Elementum ut sed eros platea et proin et elementum augue in. In nunc magnis augue tincidunt? Tempor et odio et odio tempor lorem sed, aliquam, adipisc'),(5,'Diana Krall','','http://www.youtube.com/watch?v=it1NaXrIN9I','Desc of Diana Krall. n arcu ut nisi sit auctor, enim. Phasellus, elementum mid, pulvinar, duis mus scelerisque? Ac eros? Augue penatibus quis aliquam odio augue! Duis dis sit integer tortor et, cras porttitor.'),(8,'Fourplay','','http://www.youtube.com/watch?v=wXNK2refwpY&feature=related','Desc of Fourplay. por lorem sed, aliquam, adipiscing non non! Enim massa. Etiam enim sed! Rhoncus diam porttitor nisi, ac tri'),(9,'Tal Wilkenfeld ','','http://www.youtube.com/watch?v=6qQvNhvAByM&feature=related','Desc of Tal wilkenfeld.  tempor lorem sed, aliquam, adipiscing non non! Enim massa. Etiam enim sed! Rhoncus diam porttitor nisi, ac tri');

/*Table structure for table `omc_week` */

DROP TABLE IF EXISTS `omc_week`;

CREATE TABLE `omc_week` (
  `week_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`week_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `omc_week` */

insert  into `omc_week`(`week_id`,`name`) values (1,'Uke 41'),(2,'Uke 42'),(3,'Uke 43'),(4,'Uke 44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
