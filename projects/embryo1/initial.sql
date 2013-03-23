-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 03 月 23 日 16:47
-- 服务器版本: 5.5.29
-- PHP 版本: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `embryo`
--

-- --------------------------------------------------------

--
-- 表的结构 `user_reg`
--

CREATE TABLE IF NOT EXISTS `user_reg` (
  `username` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `registration_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_reg`
--

INSERT INTO `user_reg` (`username`, `nickname`, `password`, `email`, `registration_date`) VALUES
('2', '2', 'da4b9237bacccdf19c0760cab7aec4a8359010b0', '2', '2010-08-31 00:04:25'),
('3', '3', '77de68daecd823babbb58edb1c8e14d7106e83bb', '4', '2010-08-31 00:04:30'),
('33', '3', '77de68daecd823babbb58edb1c8e14d7106e83bb', '3', '2010-08-31 00:23:12'),
('4', '4', '1b6453892473a467d07372d45eb05abc2031647a', '4', '2010-08-31 00:04:35'),
('43', '4', '1b6453892473a467d07372d45eb05abc2031647a', '44', '2010-08-31 01:44:27'),
('5', '5', 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', '5', '2010-08-31 00:04:40'),
('6', '6', 'c1dfd96eea8cc2b62785275bca38ac261256e278', '6', '2010-08-31 00:04:46'),
('7', '7', '902ba3cda1883801594b6e1b452790cc53948fda', '7', '2010-08-31 00:04:51'),
('8', '8', 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', '8', '2010-08-31 00:04:56'),
('ad', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'a', '2010-08-31 00:23:46'),
('e', 'e', '58e6b3a414a1e090dfc6029add0f3555ccba127f', 'e', '2010-08-31 00:23:25'),
('ew', 'e', '58e6b3a414a1e090dfc6029add0f3555ccba127f', 'e', '2010-08-31 00:38:28'),
('f', 'fd', '4a0a19218e082a343a1b17e5333409af9d98f0f5', 'd', '2010-08-31 00:23:39'),
('fg', 'ff', '23fa12c6b4e9e3805a5e9d5dded3e78665fc1899', 'gf', '2010-08-31 01:47:41'),
('g', 'gae', '54fd1711209fb1c0781092374132c66e79e2241b', 'g', '2010-08-31 00:05:13'),
('gg', 'g', 'f3226f91f77a87d909b8920adc91f9a301a7316b', 'g', '2010-08-31 00:23:19'),
('ggr', 'rr', 'f3226f91f77a87d909b8920adc91f9a301a7316b', 'rr', '2010-08-31 01:43:55'),
('hhh', 'hhh', 'effdb5f96a28acd2eb19dcb15d8f43af762bd0ae', 'hhh', '2010-08-31 01:41:33'),
('jy', 'yy', '7323a5431d1c31072983a6a5bf23745b655ddf59', 'jyjy', '2010-08-31 01:49:33'),
('mm', 'm', '6b0d31c0d563223024da45691584643ac78c96e8', 'm', '2010-08-31 00:23:53'),
('q', 'q', '22ea1c649c82946aa6e479e1ffd321e4a318b1b0', 'qs', '2010-08-31 00:05:07'),
('rg', 'r', '4dc7c9ec434ed06502767136789763ec11d2c4b7', 'r', '2010-08-31 01:52:42'),
('rr', 'rr', '843cbacc61c8fe45886819ff1516e2e179374496', 'rr', '2010-08-31 00:22:52'),
('rre', 'rrr', '8578173555a47d4ea49e697badfda270dee0858f', 'rr', '2010-08-31 00:23:00'),
('s', 'ss', 'a0f1490a20d0211c997b44bc357e1972deab8ae3', 's', '2010-08-31 00:24:01'),
('v', 'v', '7a38d8cbd20d9932ba948efaa364bb62651d5ad4', 'v', '2010-08-31 00:05:34'),
('ww', 'ww', '1c4f0c6eb8bf8bbf11cc2ae1cdcc5c5d1f3a3c16', 'ww', '2010-08-31 00:23:06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
