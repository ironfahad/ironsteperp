# MySQL dump of database 'bloo_systechUnicon' on host 'localhost'
# Backup Date and Time: 2021-04-03 13:31
# Built by Ironstep Design ERP 2.4.7
# http://www.ironstepdesign.com
# Company: Nawaz Foods
# User: Administrator

# Compatibility: 2.4.1



### Structure of table `0_areas` ###

DROP TABLE IF EXISTS `0_areas`;

CREATE TABLE `0_areas` (
  `area_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`area_code`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_areas` ###

INSERT INTO `0_areas` VALUES
('1', 'Global', '1'),
('2', 'islamabad', '1'),
('4', 'F10 Markaz', '0');

### Structure of table `0_attachments` ###

DROP TABLE IF EXISTS `0_attachments`;

CREATE TABLE `0_attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_no` int(11) NOT NULL DEFAULT 0,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `unique_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `filename` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `filetype` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_no` (`type_no`,`trans_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_attachments` ###


### Structure of table `0_attendance` ###

DROP TABLE IF EXISTS `0_attendance`;

CREATE TABLE `0_attendance` (
  `emp_id` int(11) NOT NULL,
  `overtime_id` int(11) NOT NULL,
  `hours_no` float NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 1,
  `att_date` date NOT NULL,
  PRIMARY KEY (`emp_id`,`overtime_id`,`att_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_attendance` ###


### Structure of table `0_audit_trail` ###

DROP TABLE IF EXISTS `0_audit_trail`;

CREATE TABLE `0_audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) unsigned NOT NULL DEFAULT 0,
  `trans_no` int(11) unsigned NOT NULL DEFAULT 0,
  `user` smallint(6) unsigned NOT NULL DEFAULT 0,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fiscal_year` int(11) NOT NULL DEFAULT 0,
  `gl_date` date NOT NULL DEFAULT '0000-00-00',
  `gl_seq` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Seq` (`fiscal_year`,`gl_date`,`gl_seq`),
  KEY `Type_and_Number` (`type`,`trans_no`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_audit_trail` ###

INSERT INTO `0_audit_trail` VALUES
('12', '18', '3', '1', '2021-03-03 01:01:58', NULL, '1', '2018-12-31', '0'),
('13', '25', '1', '1', '2021-03-03 19:41:24', NULL, '1', '2018-12-31', NULL),
('14', '20', '1', '1', '2021-03-03 19:40:57', NULL, '1', '2018-12-31', NULL),
('15', '22', '1', '1', '2021-03-03 19:41:12', NULL, '1', '2018-12-31', NULL),
('16', '18', '4', '1', '2021-03-03 01:40:47', NULL, '1', '2018-12-31', '0'),
('17', '25', '2', '1', '2021-03-03 19:41:28', NULL, '1', '2018-12-31', NULL),
('18', '20', '1', '1', '2021-03-03 19:40:57', 'Voided.\n', '1', '2018-12-31', '0'),
('19', '22', '1', '1', '2021-03-03 19:41:12', 'Voided.\n', '1', '2018-12-31', '0'),
('20', '25', '1', '1', '2021-03-03 19:41:24', 'Voided.\n', '1', '2018-12-31', '0'),
('21', '25', '2', '1', '2021-03-03 19:41:28', 'Voided.\n', '1', '2018-12-31', '0'),
('22', '17', '1', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '1'),
('23', '0', '1', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '2'),
('24', '17', '2', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '3'),
('25', '0', '2', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '4'),
('26', '17', '3', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '5'),
('27', '0', '3', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '6'),
('28', '17', '4', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '7'),
('29', '0', '4', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '8'),
('30', '20', '2', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '9'),
('31', '20', '3', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '10'),
('32', '20', '4', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '11'),
('33', '20', '5', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '12'),
('34', '17', '5', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '13'),
('35', '0', '5', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '14'),
('36', '17', '6', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '15'),
('37', '20', '6', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '16'),
('38', '20', '7', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '17'),
('39', '0', '6', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '18'),
('40', '0', '7', '1', '2021-03-08 00:24:31', NULL, '3', '2020-12-31', '19'),
('41', '30', '1', '1', '2021-03-08 01:00:21', NULL, '4', '2021-03-08', '0'),
('42', '13', '1', '1', '2021-03-08 01:00:21', NULL, '4', '2021-03-08', '0'),
('43', '10', '1', '1', '2021-03-08 01:00:21', NULL, '4', '2021-03-08', '0'),
('44', '12', '1', '1', '2021-03-08 01:00:21', NULL, '4', '2021-03-08', '0'),
('45', '30', '2', '2', '2021-03-11 00:36:34', NULL, '4', '2021-03-06', '0'),
('46', '13', '2', '2', '2021-03-11 00:36:34', NULL, '4', '2021-03-06', '0'),
('47', '10', '2', '2', '2021-03-11 00:36:34', NULL, '4', '2021-03-06', '0'),
('48', '12', '2', '2', '2021-03-11 00:36:34', NULL, '4', '2021-03-06', '0'),
('49', '30', '3', '2', '2021-03-11 00:42:19', NULL, '4', '2021-03-06', '0'),
('50', '13', '3', '2', '2021-03-11 00:42:19', NULL, '4', '2021-03-06', '0'),
('51', '10', '3', '2', '2021-03-11 00:42:19', NULL, '4', '2021-03-06', '0'),
('52', '12', '3', '2', '2021-03-11 00:42:19', NULL, '4', '2021-03-06', '0'),
('53', '30', '4', '2', '2021-03-11 00:44:49', NULL, '4', '2021-03-06', '0'),
('54', '13', '4', '2', '2021-03-11 00:44:49', NULL, '4', '2021-03-06', '0'),
('55', '10', '4', '2', '2021-03-11 00:44:49', NULL, '4', '2021-03-06', '0'),
('56', '12', '4', '2', '2021-03-11 00:44:49', NULL, '4', '2021-03-06', '0'),
('57', '30', '5', '2', '2021-03-11 00:45:49', NULL, '4', '2021-03-10', '0'),
('58', '13', '5', '2', '2021-03-11 00:45:49', NULL, '4', '2021-03-10', '0'),
('59', '10', '5', '2', '2021-03-11 00:45:49', NULL, '4', '2021-03-10', '0'),
('60', '12', '5', '2', '2021-03-11 00:45:49', NULL, '4', '2021-03-10', '0'),
('61', '30', '6', '2', '2021-03-11 00:49:53', NULL, '4', '2021-03-06', '0'),
('62', '13', '6', '2', '2021-03-11 00:49:53', NULL, '4', '2021-03-06', '0'),
('63', '10', '6', '2', '2021-03-11 00:49:53', NULL, '4', '2021-03-06', '0'),
('64', '12', '6', '2', '2021-03-11 00:49:53', NULL, '4', '2021-03-06', '0'),
('65', '30', '7', '2', '2021-03-11 00:51:01', NULL, '4', '2021-03-06', '0'),
('66', '13', '7', '2', '2021-03-11 00:51:01', NULL, '4', '2021-03-06', '0'),
('67', '10', '7', '2', '2021-03-11 00:51:01', NULL, '4', '2021-03-06', '0'),
('68', '12', '7', '2', '2021-03-11 00:51:01', NULL, '4', '2021-03-06', '0'),
('69', '30', '8', '2', '2021-03-11 00:55:32', NULL, '4', '2021-03-06', '0'),
('70', '13', '8', '2', '2021-03-11 00:55:32', NULL, '4', '2021-03-06', '0'),
('71', '10', '8', '2', '2021-03-11 00:55:32', NULL, '4', '2021-03-06', '0'),
('72', '12', '8', '2', '2021-03-11 00:55:32', NULL, '4', '2021-03-06', '0'),
('73', '30', '9', '2', '2021-03-11 00:56:26', NULL, '4', '2021-03-06', '0'),
('74', '13', '9', '2', '2021-03-11 00:56:26', NULL, '4', '2021-03-06', '0'),
('75', '10', '9', '2', '2021-03-11 00:56:26', NULL, '4', '2021-03-06', '0'),
('76', '12', '9', '2', '2021-03-11 00:56:26', NULL, '4', '2021-03-06', '0'),
('77', '30', '10', '2', '2021-03-11 22:46:59', NULL, '4', '2021-03-07', '0'),
('78', '13', '10', '2', '2021-03-11 22:46:59', NULL, '4', '2021-03-07', '0'),
('79', '10', '10', '2', '2021-03-11 22:46:59', NULL, '4', '2021-03-07', '0'),
('80', '12', '10', '2', '2021-03-11 22:46:59', NULL, '4', '2021-03-07', '0'),
('81', '30', '11', '2', '2021-03-11 22:50:03', NULL, '4', '2021-03-07', '0'),
('82', '13', '11', '2', '2021-03-11 22:50:03', NULL, '4', '2021-03-07', '0'),
('83', '10', '11', '2', '2021-03-11 22:50:03', NULL, '4', '2021-03-07', '0'),
('84', '12', '11', '2', '2021-03-11 22:50:04', NULL, '4', '2021-03-07', '0'),
('85', '30', '12', '2', '2021-03-11 22:50:59', NULL, '4', '2021-03-07', '0'),
('86', '13', '12', '2', '2021-03-11 22:50:59', NULL, '4', '2021-03-07', '0'),
('87', '10', '12', '2', '2021-03-11 22:50:59', NULL, '4', '2021-03-07', '0'),
('88', '12', '12', '2', '2021-03-11 22:50:59', NULL, '4', '2021-03-07', '0'),
('89', '30', '13', '2', '2021-03-11 22:57:05', NULL, '4', '2021-03-08', '0'),
('90', '13', '13', '2', '2021-03-11 22:57:05', NULL, '4', '2021-03-08', '0'),
('91', '10', '13', '2', '2021-03-11 22:57:05', NULL, '4', '2021-03-08', '0'),
('92', '12', '13', '2', '2021-03-11 22:57:05', NULL, '4', '2021-03-08', '0'),
('93', '30', '14', '2', '2021-03-11 23:11:38', NULL, '4', '2021-03-08', '0'),
('94', '13', '14', '2', '2021-03-11 23:11:38', NULL, '4', '2021-03-08', '0'),
('95', '10', '14', '2', '2021-03-11 23:11:38', NULL, '4', '2021-03-08', '0'),
('96', '12', '14', '2', '2021-03-11 23:11:38', NULL, '4', '2021-03-08', '0'),
('97', '30', '15', '2', '2021-03-11 23:23:03', NULL, '4', '2021-03-08', '0'),
('98', '13', '15', '2', '2021-03-11 23:23:03', NULL, '4', '2021-03-08', '0'),
('99', '10', '15', '2', '2021-03-11 23:23:03', NULL, '4', '2021-03-08', '0'),
('100', '12', '15', '2', '2021-03-11 23:23:03', NULL, '4', '2021-03-08', '0'),
('101', '30', '16', '2', '2021-03-11 23:24:26', NULL, '4', '2021-03-08', '0'),
('102', '13', '16', '2', '2021-03-11 23:24:26', NULL, '4', '2021-03-08', '0'),
('103', '10', '16', '2', '2021-03-11 23:24:26', NULL, '4', '2021-03-08', '0'),
('104', '12', '16', '2', '2021-03-11 23:24:26', NULL, '4', '2021-03-08', '0'),
('105', '30', '17', '2', '2021-03-11 23:29:41', NULL, '4', '2021-03-08', '0'),
('106', '13', '17', '2', '2021-03-11 23:29:41', NULL, '4', '2021-03-08', '0'),
('107', '10', '17', '2', '2021-03-11 23:29:41', NULL, '4', '2021-03-08', '0'),
('108', '12', '17', '2', '2021-03-11 23:29:41', NULL, '4', '2021-03-08', '0'),
('109', '30', '18', '2', '2021-03-11 23:32:22', NULL, '4', '2021-03-08', '0'),
('110', '13', '18', '2', '2021-03-12 20:13:47', NULL, '4', '2021-03-08', NULL),
('111', '10', '18', '2', '2021-03-12 20:13:47', NULL, '4', '2021-03-08', NULL),
('112', '12', '18', '2', '2021-03-11 23:32:22', NULL, '4', '2021-03-08', '0'),
('113', '30', '19', '2', '2021-03-11 23:34:38', NULL, '4', '2021-03-08', '0'),
('114', '13', '19', '2', '2021-03-12 20:13:30', NULL, '4', '2021-03-08', NULL),
('115', '10', '19', '2', '2021-03-12 20:13:30', NULL, '4', '2021-03-08', NULL),
('116', '12', '19', '2', '2021-03-11 23:34:38', NULL, '4', '2021-03-08', '0'),
('117', '13', '19', '2', '2021-03-12 20:13:30', 'Voided.', '4', '2021-03-12', '0'),
('118', '10', '19', '2', '2021-03-12 20:13:30', 'Voided.\n', '4', '2021-03-12', '0'),
('119', '13', '18', '2', '2021-03-12 20:13:47', 'Voided.', '4', '2021-03-12', '0'),
('120', '10', '18', '2', '2021-03-12 20:13:47', 'Voided.\n', '4', '2021-03-12', '0'),
('121', '30', '20', '2', '2021-03-12 20:25:48', NULL, '4', '2021-03-09', '0'),
('122', '13', '20', '2', '2021-03-12 20:25:48', NULL, '4', '2021-03-09', '0'),
('123', '10', '20', '2', '2021-03-12 20:25:48', NULL, '4', '2021-03-09', '0'),
('124', '12', '20', '2', '2021-03-12 23:43:55', NULL, '4', '2021-03-09', NULL),
('125', '30', '21', '2', '2021-03-12 20:26:59', NULL, '4', '2021-03-09', '0'),
('126', '13', '21', '2', '2021-03-12 20:26:59', NULL, '4', '2021-03-09', '0'),
('127', '10', '21', '2', '2021-03-12 20:26:59', NULL, '4', '2021-03-09', '0'),
('128', '12', '21', '2', '2021-03-12 23:43:41', NULL, '4', '2021-03-09', NULL),
('129', '30', '22', '2', '2021-03-12 20:28:25', NULL, '4', '2021-03-09', '0'),
('130', '13', '22', '2', '2021-03-12 20:28:25', NULL, '4', '2021-03-09', '0'),
('131', '10', '22', '2', '2021-03-12 20:28:25', NULL, '4', '2021-03-09', '0'),
('132', '12', '22', '2', '2021-03-12 20:28:25', NULL, '4', '2021-03-09', '0'),
('133', '30', '23', '2', '2021-03-12 20:29:59', NULL, '4', '2021-03-09', '0'),
('134', '13', '23', '2', '2021-03-12 20:29:59', NULL, '4', '2021-03-09', '0'),
('135', '10', '23', '2', '2021-03-12 20:29:59', NULL, '4', '2021-03-09', '0'),
('136', '12', '23', '2', '2021-03-12 20:29:59', NULL, '4', '2021-03-09', '0'),
('137', '30', '24', '2', '2021-03-12 20:34:10', NULL, '4', '2021-03-10', '0'),
('138', '13', '24', '2', '2021-03-12 20:34:10', NULL, '4', '2021-03-10', '0'),
('139', '10', '24', '2', '2021-03-12 20:34:10', NULL, '4', '2021-03-10', '0'),
('140', '12', '24', '2', '2021-03-12 20:34:10', NULL, '4', '2021-03-10', '0'),
('141', '30', '25', '2', '2021-03-12 20:37:22', NULL, '4', '2021-03-10', '0'),
('142', '13', '25', '2', '2021-03-12 20:37:22', NULL, '4', '2021-03-10', '0'),
('143', '10', '25', '2', '2021-03-12 20:37:22', NULL, '4', '2021-03-10', '0'),
('144', '12', '25', '2', '2021-03-12 20:37:22', NULL, '4', '2021-03-10', '0'),
('145', '30', '26', '2', '2021-03-12 21:01:23', NULL, '4', '2021-03-10', '0'),
('146', '13', '26', '2', '2021-03-12 21:01:23', NULL, '4', '2021-03-10', '0'),
('147', '10', '26', '2', '2021-03-12 21:01:23', NULL, '4', '2021-03-10', '0'),
('148', '12', '26', '2', '2021-03-12 21:01:23', NULL, '4', '2021-03-10', '0'),
('149', '30', '27', '2', '2021-03-12 21:03:45', NULL, '4', '2021-03-10', '0'),
('150', '13', '27', '2', '2021-03-12 21:03:45', NULL, '4', '2021-03-10', '0'),
('151', '10', '27', '2', '2021-03-12 21:03:45', NULL, '4', '2021-03-10', '0'),
('152', '12', '27', '2', '2021-03-12 21:03:45', NULL, '4', '2021-03-10', '0'),
('153', '30', '28', '2', '2021-03-12 21:06:57', NULL, '4', '2021-03-10', '0'),
('154', '13', '28', '2', '2021-03-12 21:06:57', NULL, '4', '2021-03-10', '0'),
('155', '10', '28', '2', '2021-03-12 21:06:57', NULL, '4', '2021-03-10', '0'),
('156', '12', '28', '2', '2021-03-12 21:06:57', NULL, '4', '2021-03-10', '0'),
('157', '30', '29', '2', '2021-03-12 21:07:57', NULL, '4', '2021-03-11', '0'),
('158', '13', '29', '2', '2021-03-12 21:07:57', NULL, '4', '2021-03-11', '0'),
('159', '10', '29', '2', '2021-03-12 21:07:57', NULL, '4', '2021-03-11', '0'),
('160', '12', '29', '2', '2021-03-12 21:07:57', NULL, '4', '2021-03-11', '0'),
('161', '30', '30', '2', '2021-03-12 21:13:21', NULL, '4', '2021-03-11', '0'),
('162', '13', '30', '2', '2021-03-12 21:13:21', NULL, '4', '2021-03-11', '0'),
('163', '10', '30', '2', '2021-03-12 21:13:21', NULL, '4', '2021-03-11', '0'),
('164', '12', '30', '2', '2021-03-12 21:13:21', NULL, '4', '2021-03-11', '0'),
('165', '30', '31', '2', '2021-03-12 21:15:10', NULL, '4', '2021-03-11', '0'),
('166', '13', '31', '2', '2021-03-12 21:15:10', NULL, '4', '2021-03-11', '0'),
('167', '10', '31', '2', '2021-03-12 21:15:10', NULL, '4', '2021-03-11', '0'),
('168', '12', '31', '2', '2021-03-12 21:15:10', NULL, '4', '2021-03-11', '0'),
('169', '30', '32', '2', '2021-03-12 21:16:45', NULL, '4', '2021-03-11', '0'),
('170', '13', '32', '2', '2021-03-12 21:16:45', NULL, '4', '2021-03-11', '0'),
('171', '10', '32', '2', '2021-03-12 21:16:45', NULL, '4', '2021-03-11', '0'),
('172', '12', '32', '2', '2021-03-12 21:16:45', NULL, '4', '2021-03-11', '0'),
('173', '12', '21', '2', '2021-03-12 23:43:41', 'Voided.\n', '4', '2021-03-12', '0'),
('174', '12', '20', '2', '2021-03-12 23:43:55', 'Voided.\n', '4', '2021-03-12', '0'),
('175', '30', '33', '2', '2021-03-13 00:06:51', NULL, '4', '2021-03-11', '0'),
('176', '13', '33', '2', '2021-03-13 00:06:51', NULL, '4', '2021-03-11', '0'),
('177', '10', '33', '2', '2021-03-13 00:06:51', NULL, '4', '2021-03-11', '0'),
('178', '12', '33', '2', '2021-03-13 00:06:51', NULL, '4', '2021-03-11', '0'),
('179', '30', '34', '2', '2021-03-13 00:11:05', NULL, '4', '2021-03-12', '0'),
('180', '13', '34', '2', '2021-03-13 00:11:05', NULL, '4', '2021-03-12', '0'),
('181', '10', '34', '2', '2021-03-13 00:11:05', NULL, '4', '2021-03-12', '0'),
('182', '12', '34', '2', '2021-03-13 00:11:05', NULL, '4', '2021-03-12', '0'),
('183', '30', '35', '2', '2021-03-13 00:13:35', NULL, '4', '2021-03-12', '0'),
('184', '13', '35', '2', '2021-03-13 00:13:35', NULL, '4', '2021-03-12', '0'),
('185', '10', '35', '2', '2021-03-13 00:13:35', NULL, '4', '2021-03-12', '0'),
('186', '12', '35', '2', '2021-03-13 00:13:35', NULL, '4', '2021-03-12', '0'),
('187', '30', '36', '2', '2021-03-14 17:41:34', NULL, '4', '2021-03-14', '0'),
('188', '13', '36', '2', '2021-03-14 17:41:34', NULL, '4', '2021-03-14', '0'),
('189', '10', '36', '2', '2021-03-14 17:41:34', NULL, '4', '2021-03-14', '0'),
('190', '12', '36', '2', '2021-03-14 17:41:34', NULL, '4', '2021-03-14', '0'),
('191', '30', '37', '2', '2021-03-14 17:44:34', NULL, '4', '2021-03-14', '0'),
('192', '13', '37', '2', '2021-03-14 17:44:34', NULL, '4', '2021-03-14', '0'),
('193', '10', '37', '2', '2021-03-14 17:44:34', NULL, '4', '2021-03-14', '0'),
('194', '12', '37', '2', '2021-03-14 17:44:35', NULL, '4', '2021-03-14', '0'),
('195', '30', '38', '2', '2021-03-14 17:50:44', NULL, '4', '2021-03-14', '0'),
('196', '13', '38', '2', '2021-03-14 17:50:44', NULL, '4', '2021-03-14', '0'),
('197', '10', '38', '2', '2021-03-14 17:50:44', NULL, '4', '2021-03-14', '0'),
('198', '12', '38', '2', '2021-03-14 17:50:44', NULL, '4', '2021-03-14', '0'),
('199', '30', '39', '2', '2021-03-14 18:09:59', NULL, '4', '2021-03-14', '0'),
('200', '13', '39', '2', '2021-03-14 18:09:59', NULL, '4', '2021-03-14', '0'),
('201', '10', '39', '2', '2021-03-14 18:09:59', NULL, '4', '2021-03-14', '0'),
('202', '12', '39', '2', '2021-03-14 18:09:59', NULL, '4', '2021-03-14', '0'),
('203', '18', '5', '2', '2021-03-14 18:36:42', NULL, '4', '2021-03-14', '0'),
('204', '25', '3', '2', '2021-03-14 18:36:42', NULL, '4', '2021-03-14', '0'),
('205', '20', '8', '2', '2021-03-14 18:45:06', NULL, '4', '2021-03-14', '0'),
('206', '18', '6', '2', '2021-03-14 19:00:05', NULL, '4', '2021-03-14', '0'),
('207', '25', '4', '2', '2021-03-14 19:00:05', NULL, '4', '2021-03-14', '0'),
('208', '20', '9', '2', '2021-03-15 15:53:02', NULL, '4', '2021-03-15', '0'),
('209', '1', '1', '2', '2021-03-15 16:07:41', NULL, '4', '2021-03-15', '0'),
('210', '1', '2', '2', '2021-03-15 17:04:20', NULL, '4', '2021-03-15', NULL),
('211', '30', '40', '2', '2021-03-15 16:47:22', NULL, '4', '2021-03-15', '0'),
('212', '13', '40', '2', '2021-03-15 16:47:22', NULL, '4', '2021-03-15', '0'),
('213', '10', '40', '2', '2021-03-15 16:47:22', NULL, '4', '2021-03-15', '0'),
('214', '12', '40', '2', '2021-03-15 16:47:22', NULL, '4', '2021-03-15', '0'),
('215', '1', '3', '2', '2021-03-15 16:51:45', NULL, '4', '2021-03-15', '0'),
('216', '1', '4', '2', '2021-03-15 17:04:20', NULL, '4', '2021-03-15', '0'),
('217', '1', '2', '2', '2021-03-15 17:04:20', 'Voided.\nDocument reentered.', '4', '2021-03-15', '0'),
('218', '1', '5', '2', '2021-03-15 17:06:38', NULL, '4', '2021-03-15', '0'),
('219', '1', '6', '2', '2021-03-15 17:12:19', NULL, '4', '2021-03-15', '0'),
('220', '30', '41', '1', '2021-03-18 13:37:46', NULL, '4', '2021-03-18', '0'),
('221', '13', '41', '1', '2021-03-18 13:37:46', NULL, '4', '2021-03-18', '0'),
('222', '10', '41', '1', '2021-03-18 13:37:46', NULL, '4', '2021-03-18', '0'),
('223', '12', '41', '1', '2021-03-18 13:37:46', NULL, '4', '2021-03-18', '0');

### Structure of table `0_bank_accounts` ###

DROP TABLE IF EXISTS `0_bank_accounts`;

CREATE TABLE `0_bank_accounts` (
  `account_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` smallint(6) NOT NULL DEFAULT 0,
  `bank_account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_account_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_address` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_curr_act` tinyint(1) NOT NULL DEFAULT 0,
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `bank_charge_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_reconciled_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ending_reconcile_balance` double NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `bank_account_name` (`bank_account_name`),
  KEY `bank_account_number` (`bank_account_number`),
  KEY `account_code` (`account_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_bank_accounts` ###

INSERT INTO `0_bank_accounts` VALUES
('1060', '1', 'YASIR HASHMI MEEZAN BANK', '0827 0102582612', 'MEEZAN BANK', 'TENCH BATA (0827)', 'PKR', '0', '1', '5690', '0000-00-00 00:00:00', '0', '0'),
('1065', '3', 'Petty Cash account', 'N/A', 'N/A', NULL, 'USD', '0', '2', '5690', '0000-00-00 00:00:00', '0', '0'),
('1215', '3', 'Cash Account ', '1234567', 'MEN&#039;S WEAR LAWRENCEPUR ', NULL, 'PKR', '1', '3', '5690', '0000-00-00 00:00:00', '0', '0');

### Structure of table `0_bank_trans` ###

DROP TABLE IF EXISTS `0_bank_trans`;

CREATE TABLE `0_bank_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `bank_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_date` date NOT NULL DEFAULT '0000-00-00',
  `amount` double DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  `person_type_id` int(11) NOT NULL DEFAULT 0,
  `person_id` tinyblob DEFAULT NULL,
  `reconciled` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_act` (`bank_act`,`ref`),
  KEY `type` (`type`,`trans_no`),
  KEY `bank_act_2` (`bank_act`,`reconciled`),
  KEY `bank_act_3` (`bank_act`,`trans_date`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_bank_trans` ###

INSERT INTO `0_bank_trans` VALUES
('1', '22', '1', '2', '001/2018', '2018-12-31', '0', '0', '0', '3', '1', NULL),
('2', '12', '1', '3', '001/2021', '2021-03-08', '17900', '0', '0', '2', '12', NULL),
('3', '12', '2', '3', '002/2021', '2021-03-06', '7200', '0', '0', '2', '12', NULL),
('4', '12', '3', '3', '003/2021', '2021-03-06', '14000', '0', '0', '2', '12', NULL),
('5', '12', '4', '3', '004/2021', '2021-03-06', '10000', '0', '0', '2', '12', NULL),
('6', '12', '5', '3', '005/2021', '2021-03-10', '3200', '0', '0', '2', '12', NULL),
('7', '12', '6', '3', '006/2021', '2021-03-06', '6000', '0', '0', '2', '12', NULL),
('8', '12', '7', '3', '007/2021', '2021-03-06', '3500', '0', '0', '2', '12', NULL),
('9', '12', '8', '3', '008/2021', '2021-03-06', '8200', '0', '0', '2', '12', NULL),
('10', '12', '9', '3', '009/2021', '2021-03-06', '3500', '0', '0', '2', '12', NULL),
('11', '12', '10', '3', '010/2021', '2021-03-07', '3500', '0', '0', '2', '12', NULL),
('12', '12', '11', '3', '011/2021', '2021-03-07', '5400', '0', '0', '2', '12', NULL),
('13', '12', '12', '3', '012/2021', '2021-03-07', '3500', '0', '0', '2', '12', NULL),
('14', '12', '13', '3', '013/2021', '2021-03-08', '15999.75', '0', '0', '2', '12', NULL),
('15', '12', '14', '3', '014/2021', '2021-03-08', '14000', '0', '0', '2', '12', NULL),
('16', '12', '15', '3', '015/2021', '2021-03-08', '19998', '0', '0', '2', '12', NULL),
('17', '12', '16', '3', '016/2021', '2021-03-08', '5400', '0', '0', '2', '12', NULL),
('18', '12', '17', '3', '017/2021', '2021-03-08', '27800', '0', '0', '2', '12', NULL),
('19', '12', '18', '3', '018/2021', '2021-03-08', '3600', '0', '0', '2', '12', NULL),
('20', '12', '19', '3', '019/2021', '2021-03-08', '3800', '0', '0', '2', '12', NULL),
('21', '12', '20', '3', '020/2021', '2021-03-09', '0', '0', '0', '2', '12', NULL),
('22', '12', '21', '3', '021/2021', '2021-03-09', '0', '0', '0', '2', '12', NULL),
('23', '12', '22', '3', '022/2021', '2021-03-09', '5400', '0', '0', '2', '12', NULL),
('24', '12', '23', '3', '023/2021', '2021-03-09', '4200', '0', '0', '2', '12', NULL),
('25', '12', '24', '3', '024/2021', '2021-03-10', '14600', '0', '0', '2', '12', NULL),
('26', '12', '25', '3', '025/2021', '2021-03-10', '14000', '0', '0', '2', '12', NULL),
('27', '12', '26', '3', '026/2021', '2021-03-10', '17200', '0', '0', '2', '12', NULL),
('28', '12', '27', '3', '027/2021', '2021-03-10', '9600', '0', '0', '2', '12', NULL),
('29', '12', '28', '3', '028/2021', '2021-03-10', '5000', '0', '0', '2', '12', NULL),
('30', '12', '29', '3', '029/2021', '2021-03-11', '5240', '0', '0', '2', '12', NULL),
('31', '12', '30', '3', '030/2021', '2021-03-11', '10000', '0', '0', '2', '12', NULL),
('32', '12', '31', '3', '031/2021', '2021-03-11', '7200', '0', '0', '2', '12', NULL),
('33', '12', '32', '3', '032/2021', '2021-03-11', '8000', '0', '0', '2', '12', NULL),
('34', '12', '33', '3', '033/2021', '2021-03-11', '49950', '0', '0', '2', '12', NULL),
('35', '12', '34', '3', '034/2021', '2021-03-12', '17270', '0', '0', '2', '12', NULL),
('36', '12', '35', '3', '035/2021', '2021-03-12', '3200', '0', '0', '2', '12', NULL),
('37', '12', '36', '3', '036/2021', '2021-03-14', '4500', '0', '0', '2', '12', NULL),
('38', '12', '37', '3', '037/2021', '2021-03-14', '11500', '0', '0', '2', '12', NULL),
('39', '12', '38', '3', '038/2021', '2021-03-14', '31000', '0', '0', '2', '12', NULL),
('40', '12', '39', '3', '039/2021', '2021-03-14', '6250', '0', '0', '2', '12', NULL),
('41', '1', '1', '3', '001/2021', '2021-03-15', '-40975', '0', '0', '0', NULL, NULL),
('42', '1', '2', '3', '002/2021', '2021-03-15', '0', '0', '0', '0', NULL, NULL),
('43', '12', '40', '3', '040/2021', '2021-03-15', '5400', '0', '0', '2', '12', NULL),
('44', '1', '3', '3', '003/2021', '2021-03-15', '-3540', '0', '0', '0', NULL, NULL),
('45', '1', '4', '3', '002/2021', '2021-03-15', '-600', '0', '0', '0', NULL, NULL),
('46', '1', '5', '3', '004/2021', '2021-03-15', '-664', '0', '0', '0', NULL, NULL),
('47', '1', '6', '3', '005/2021', '2021-03-15', '-1500', '0', '0', '0', NULL, NULL),
('48', '12', '41', '3', '041/2021', '2021-03-18', '200', '0', '0', '2', '12', NULL);

### Structure of table `0_bom` ###

DROP TABLE IF EXISTS `0_bom`;

CREATE TABLE `0_bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workcentre_added` int(11) NOT NULL DEFAULT 0,
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`parent`,`component`,`workcentre_added`,`loc_code`),
  KEY `component` (`component`),
  KEY `id` (`id`),
  KEY `loc_code` (`loc_code`),
  KEY `parent` (`parent`,`loc_code`),
  KEY `workcentre_added` (`workcentre_added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_bom` ###


### Structure of table `0_budget_trans` ###

DROP TABLE IF EXISTS `0_budget_trans`;

CREATE TABLE `0_budget_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `dimension_id` int(11) DEFAULT 0,
  `dimension2_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Account` (`account`,`tran_date`,`dimension_id`,`dimension2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_budget_trans` ###


### Structure of table `0_chart_class` ###

DROP TABLE IF EXISTS `0_chart_class`;

CREATE TABLE `0_chart_class` (
  `cid` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `class_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ctype` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_chart_class` ###

INSERT INTO `0_chart_class` VALUES
('1', 'Assets', '1', '0'),
('2', 'Liabilities', '2', '0'),
('3', 'Income', '4', '0'),
('4', 'Costs', '6', '0');

### Structure of table `0_chart_master` ###

DROP TABLE IF EXISTS `0_chart_master`;

CREATE TABLE `0_chart_master` (
  `account_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_code2` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_code`),
  KEY `account_name` (`account_name`),
  KEY `accounts_by_type` (`account_type`,`account_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_chart_master` ###

INSERT INTO `0_chart_master` VALUES
('1060', '', 'Checking Account', '1', '0'),
('1065', '', 'Petty Cash', '1', '0'),
('1200', '', 'Accounts Receivables', '1', '0'),
('1205', '', 'Allowance for doubtful accounts', '1', '0'),
('1215', '', 'Cash Account', '1', '0'),
('1510', '', 'Inventory', '2', '0'),
('1520', '', 'Stocks of Raw Materials', '2', '0'),
('1530', '', 'Stocks of Work In Progress', '2', '0'),
('1540', '', 'Stocks of Finished Goods', '2', '0'),
('1550', '', 'Goods Received Clearing account', '2', '0'),
('1820', '', 'Office Furniture &amp; Equipment', '3', '0'),
('1825', '', 'Accum. Amort. -Furn. &amp; Equip.', '3', '0'),
('1840', '', 'Vehicle', '3', '0'),
('1845', '', 'Accum. Amort. -Vehicle', '3', '0'),
('2100', '', 'Accounts Payable', '4', '0'),
('2105', '', 'Deferred Income', '4', '0'),
('2110', '', 'Accrued Income Tax - Federal', '4', '0'),
('2120', '', 'Accrued Income Tax - State', '4', '0'),
('2130', '', 'Accrued Franchise Tax', '4', '0'),
('2140', '', 'Accrued Real &amp; Personal Prop Tax', '4', '0'),
('2150', '', 'Sales Tax', '4', '0'),
('2160', '', 'Accrued Use Tax Payable', '4', '0'),
('2210', '', 'Accrued Wages', '4', '0'),
('2220', '', 'Accrued Comp Time', '4', '0'),
('2230', '', 'Accrued Holiday Pay', '4', '0'),
('2240', '', 'Accrued Vacation Pay', '4', '0'),
('2310', '', 'Accr. Benefits - 401K', '4', '0'),
('2320', '', 'Accr. Benefits - Stock Purchase', '4', '0'),
('2330', '', 'Accr. Benefits - Med, Den', '4', '0'),
('2340', '', 'Accr. Benefits - Payroll Taxes', '4', '0'),
('2350', '', 'Accr. Benefits - Credit Union', '4', '0'),
('2360', '', 'Accr. Benefits - Savings Bond', '4', '0'),
('2370', '', 'Accr. Benefits - Garnish', '4', '0'),
('2380', '', 'Accr. Benefits - Charity Cont.', '4', '0'),
('2385', '', 'Accounts Payable - Others', '4', '0'),
('2620', '', 'Bank Loans', '5', '0'),
('2680', '', 'Loans from Shareholders', '5', '0'),
('3350', '', 'Common Shares', '6', '0'),
('3360', '', 'YASIR HASHMI ', '6', '0'),
('3590', '', 'Retained Earnings - prior years', '7', '0'),
('4010', '', 'Sales', '8', '0'),
('4430', '', 'Shipping &amp; Handling', '9', '0'),
('4440', '', 'Interest', '9', '0'),
('4450', '', 'Foreign Exchange Gain', '9', '0'),
('4500', '', 'Prompt Payment Discounts', '9', '0'),
('4510', '', 'Discounts Given', '9', '0'),
('5010', '', 'Cost of Goods Sold - Retail', '10', '0'),
('5020', '', 'Material Usage Varaiance', '10', '0'),
('5030', '', 'Consumable Materials', '10', '0'),
('5040', '', 'Purchase price Variance', '10', '0'),
('5050', '', 'Purchases of materials', '10', '0'),
('5060', '', 'Discounts Received', '10', '0'),
('5100', '', 'Freight', '10', '0'),
('5410', '', 'Wages &amp; Salaries', '11', '0'),
('5420', '', 'Wages - Overtime', '11', '0'),
('5430', '', 'Benefits - Comp Time', '11', '0'),
('5440', '', 'Benefits - Payroll Taxes', '11', '0'),
('5450', '', 'Benefits - Workers Comp', '11', '0'),
('5460', '', 'Benefits - Pension', '11', '0'),
('5470', '', 'Benefits - General Benefits', '11', '0'),
('5510', '', 'Inc Tax Exp - Federal', '11', '0'),
('5520', '', 'Inc Tax Exp - State', '11', '0'),
('5530', '', 'Taxes - Real Estate', '11', '0'),
('5540', '', 'Taxes - Personal Property', '11', '0'),
('5550', '', 'Taxes - Franchise', '11', '0'),
('5560', '', 'Taxes - Foreign Withholding', '11', '0'),
('5610', '', 'Accounting &amp; Legal', '12', '0'),
('5615', '', 'Advertising &amp; Promotions', '12', '0'),
('5620', '', 'Bad Debts', '12', '0'),
('5660', '', 'Amortization Expense', '12', '0'),
('5685', '', 'Insurance', '12', '0'),
('5690', '', 'Interest &amp; Bank Charges', '12', '0'),
('5700', '', 'Office Supplies', '12', '0'),
('5760', '', 'Rent', '12', '0'),
('5765', '', 'Repair &amp; Maintenance', '12', '0'),
('5780', '', 'Telephone', '12', '0'),
('5785', '', 'Travel &amp; Entertainment', '12', '0'),
('5790', '', 'Utilities', '12', '0'),
('5795', '', 'Registrations', '12', '0'),
('5800', '', 'Licenses', '12', '0'),
('5810', '', 'Foreign Exchange Loss', '12', '0'),
('9990', '', 'Year Profit/Loss', '12', '0');

### Structure of table `0_chart_types` ###

DROP TABLE IF EXISTS `0_chart_types`;

CREATE TABLE `0_chart_types` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_id` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_chart_types` ###

INSERT INTO `0_chart_types` VALUES
('1', 'Current Assets', '1', '', '0'),
('10', 'Cost of Goods Sold', '4', '', '0'),
('11', 'Payroll Expenses', '4', '', '0'),
('12', 'General &amp; Administrative expenses', '4', '', '0'),
('2', 'Inventory Assets', '1', '', '0'),
('3', 'Capital Assets', '1', '', '0'),
('4', 'Current Liabilities', '2', '', '0'),
('5', 'Long Term Liabilities', '2', '', '0'),
('6', 'Share Capital', '2', '', '0'),
('7', 'Retained Earnings', '2', '', '0'),
('8', 'Sales Revenue', '3', '', '0'),
('9', 'Other Revenue', '3', '', '0');

### Structure of table `0_comments` ###

DROP TABLE IF EXISTS `0_comments`;

CREATE TABLE `0_comments` (
  `type` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL DEFAULT 0,
  `date_` date DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `type_and_id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_comments` ###

INSERT INTO `0_comments` VALUES
('22', '1', '2018-12-31', 'Payment for:494 (PI1)'),
('17', '1', '2020-12-31', 'OPENING BALANCE STOCK '),
('0', '1', '2020-12-31', 'opening stock till LFHK4'),
('20', '3', '2020-12-31', 'opening balance'),
('20', '4', '2020-12-31', 'opening balances till 6th march'),
('20', '5', '2020-12-31', 'OPENING BALANCE TILL 6TH MARCH'),
('20', '6', '2020-12-31', 'OPENING BALANCE TILL 7TH MARCH'),
('0', '6', '2020-12-31', 'FINAL OPENING BALANCE ENTRY'),
('0', '7', '2020-12-31', 'NEGETIVE STOCK REVERSE ENTRY'),
('13', '1', '2021-03-08', '1000 REMAINING'),
('10', '1', '2021-03-08', '1000 REMAINING'),
('12', '1', '2021-03-08', 'Default #1'),
('12', '2', '2021-03-06', 'Default #2'),
('12', '3', '2021-03-06', 'Default #3'),
('12', '4', '2021-03-06', 'Default #4'),
('12', '5', '2021-03-10', 'Default #5'),
('12', '6', '2021-03-06', 'Default #6'),
('12', '7', '2021-03-06', 'Default #7'),
('12', '8', '2021-03-06', 'Default #8'),
('12', '9', '2021-03-06', 'Default #9'),
('12', '10', '2021-03-07', 'Default #10'),
('12', '11', '2021-03-07', 'Default #11'),
('12', '12', '2021-03-07', 'Default #12'),
('12', '13', '2021-03-08', 'Default #13'),
('12', '14', '2021-03-08', 'Default #14'),
('12', '15', '2021-03-08', 'Default #15'),
('12', '16', '2021-03-08', 'Default #16'),
('12', '17', '2021-03-08', 'Default #17'),
('12', '18', '2021-03-08', 'Default #18'),
('12', '19', '2021-03-08', 'Default #19'),
('12', '20', '2021-03-09', 'Default #20'),
('12', '21', '2021-03-09', 'Default #21'),
('12', '22', '2021-03-09', 'Default #22'),
('12', '23', '2021-03-09', 'Default #23'),
('12', '24', '2021-03-10', 'Default #24'),
('12', '25', '2021-03-10', 'Default #25'),
('12', '26', '2021-03-10', 'Default #26'),
('12', '27', '2021-03-10', 'Default #27'),
('12', '28', '2021-03-10', 'Default #28'),
('12', '29', '2021-03-11', 'Default #29'),
('13', '30', '2021-03-11', '1068 ADV 5000 BL5000 NAME TASWAR'),
('10', '30', '2021-03-11', '1068 ADV 5000 BL5000 NAME TASWAR'),
('12', '30', '2021-03-11', 'Default #30'),
('12', '31', '2021-03-11', 'Default #31'),
('12', '32', '2021-03-11', 'Default #32'),
('12', '33', '2021-03-11', 'Default #33'),
('12', '34', '2021-03-12', 'Default #34'),
('12', '35', '2021-03-12', 'Default #35'),
('12', '36', '2021-03-14', 'Default #36'),
('12', '37', '2021-03-14', 'Default #37'),
('12', '38', '2021-03-14', 'Default #38'),
('12', '39', '2021-03-14', 'Default #39'),
('1', '1', '2021-03-15', 'ELECTRICITY BILL'),
('12', '40', '2021-03-15', 'Default #40'),
('1', '3', '2021-03-15', 'ptcl bill'),
('12', '41', '2021-03-18', 'Default #41');

### Structure of table `0_credit_status` ###

DROP TABLE IF EXISTS `0_credit_status`;

CREATE TABLE `0_credit_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_description` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dissallow_invoices` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reason_description` (`reason_description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_credit_status` ###

INSERT INTO `0_credit_status` VALUES
('1', 'Good History', '0', '0'),
('3', 'No more work until payment received', '1', '0'),
('4', 'In liquidation', '1', '0');

### Structure of table `0_crm_categories` ###

DROP TABLE IF EXISTS `0_crm_categories`;

CREATE TABLE `0_crm_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pure technical key',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'contact type e.g. customer',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'detailed usage e.g. department',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'for category selector',
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'usage description',
  `system` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'nonzero for core system usage',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`action`),
  UNIQUE KEY `type_2` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_crm_categories` ###

INSERT INTO `0_crm_categories` VALUES
('1', 'cust_branch', 'general', 'General', 'General contact data for customer branch (overrides company setting)', '1', '0'),
('2', 'cust_branch', 'invoice', 'Invoices', 'Invoice posting (overrides company setting)', '1', '0'),
('3', 'cust_branch', 'order', 'Orders', 'Order confirmation (overrides company setting)', '1', '0'),
('4', 'cust_branch', 'delivery', 'Deliveries', 'Delivery coordination (overrides company setting)', '1', '0'),
('5', 'customer', 'general', 'General', 'General contact data for customer', '1', '0'),
('6', 'customer', 'order', 'Orders', 'Order confirmation', '1', '0'),
('7', 'customer', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('8', 'customer', 'invoice', 'Invoices', 'Invoice posting', '1', '0'),
('9', 'supplier', 'general', 'General', 'General contact data for supplier', '1', '0'),
('10', 'supplier', 'order', 'Orders', 'Order confirmation', '1', '0'),
('11', 'supplier', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('12', 'supplier', 'invoice', 'Invoices', 'Invoice posting', '1', '0');

### Structure of table `0_crm_contacts` ###

DROP TABLE IF EXISTS `0_crm_contacts`;

CREATE TABLE `0_crm_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL DEFAULT 0 COMMENT 'foreign key to crm_persons',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `entity_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'entity id in related class table',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_crm_contacts` ###

INSERT INTO `0_crm_contacts` VALUES
('1', '1', 'supplier', 'general', '1'),
('2', '2', 'supplier', 'general', '2'),
('3', '3', 'supplier', 'general', '3'),
('4', '4', 'supplier', 'general', '4'),
('5', '5', 'supplier', 'general', '5'),
('6', '6', 'supplier', 'general', '6'),
('7', '7', 'supplier', 'general', '7'),
('8', '8', 'supplier', 'general', '8'),
('9', '9', 'supplier', 'general', '9'),
('10', '10', 'supplier', 'general', '10'),
('11', '11', 'supplier', 'general', '11'),
('12', '12', 'supplier', 'general', '12'),
('13', '13', 'cust_branch', 'general', '1'),
('14', '13', 'customer', 'general', '12');

### Structure of table `0_crm_persons` ###

DROP TABLE IF EXISTS `0_crm_persons`;

CREATE TABLE `0_crm_persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name2` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ref` (`ref`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_crm_persons` ###

INSERT INTO `0_crm_persons` VALUES
('1', 'BP', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('2', 'HK', 'SAHIR KHAN', NULL, NULL, '03465655001', NULL, NULL, NULL, NULL, '', '0'),
('3', 'TS', 'TARIQ SAHAB', NULL, NULL, '03005174345', NULL, NULL, NULL, NULL, '', '0'),
('4', 'AW', 'ABDUL WAHEED', NULL, NULL, '03009353023', NULL, NULL, NULL, NULL, '', '0'),
('5', 'AQ', 'AQEEL AHMAD', NULL, NULL, '03350978337', NULL, NULL, NULL, NULL, '', '0'),
('6', 'MNT', 'M.NAUMAN TAYYAB SHEIKH', NULL, NULL, '03017130784', NULL, NULL, NULL, NULL, '', '0'),
('7', 'SS', 'SHAHID SAHAB ', NULL, NULL, '0515537535', NULL, NULL, NULL, NULL, '', '0'),
('8', 'DF', 'FAREED KHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('9', 'DK', 'DILAWAR KHAN', NULL, NULL, '03459325198', NULL, NULL, NULL, NULL, '', '0'),
('10', 'SK', 'SHEIKH KAMRAN ', NULL, NULL, '03335554499', NULL, NULL, NULL, NULL, '', '0'),
('11', 'IBR', 'IBRAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('12', 'HI', 'HARRIS IRFAN', NULL, NULL, '03005532262', NULL, NULL, NULL, NULL, '', '0'),
('13', 'WalkIn', 'WalkIn Customer', NULL, '123', NULL, NULL, NULL, NULL, NULL, '', '0');

### Structure of table `0_currencies` ###

DROP TABLE IF EXISTS `0_currencies`;

CREATE TABLE `0_currencies` (
  `currency` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_abrev` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hundreds_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auto_update` tinyint(1) NOT NULL DEFAULT 1,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`curr_abrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_currencies` ###

INSERT INTO `0_currencies` VALUES
('Pak Rupees', 'PKR', 'Rs.', 'Pakistan', 'Paisas', '1', '0'),
('US Dollars', 'USD', '$', 'United States', 'Cents', '1', '0');

### Structure of table `0_cust_allocations` ###

DROP TABLE IF EXISTS `0_cust_allocations`;

CREATE TABLE `0_cust_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_cust_allocations` ###

INSERT INTO `0_cust_allocations` VALUES
('1', '12', '17900', '2021-03-08', '1', '12', '1', '10'),
('2', '12', '7200', '2021-03-06', '2', '12', '2', '10'),
('3', '12', '14000', '2021-03-06', '3', '12', '3', '10'),
('4', '12', '10000', '2021-03-06', '4', '12', '4', '10'),
('5', '12', '3200', '2021-03-10', '5', '12', '5', '10'),
('6', '12', '6000', '2021-03-06', '6', '12', '6', '10'),
('7', '12', '3500', '2021-03-06', '7', '12', '7', '10'),
('8', '12', '8200', '2021-03-06', '8', '12', '8', '10'),
('9', '12', '3500', '2021-03-06', '9', '12', '9', '10'),
('10', '12', '3500', '2021-03-07', '10', '12', '10', '10'),
('11', '12', '5400', '2021-03-07', '11', '12', '11', '10'),
('12', '12', '3500', '2021-03-07', '12', '12', '12', '10'),
('13', '12', '15999.75', '2021-03-08', '13', '12', '13', '10'),
('14', '12', '14000', '2021-03-08', '14', '12', '14', '10'),
('15', '12', '19998', '2021-03-08', '15', '12', '15', '10'),
('16', '12', '5400', '2021-03-08', '16', '12', '16', '10'),
('17', '12', '27800', '2021-03-08', '17', '12', '17', '10'),
('22', '12', '5400', '2021-03-09', '22', '12', '22', '10'),
('23', '12', '4200', '2021-03-09', '23', '12', '23', '10'),
('24', '12', '14600', '2021-03-10', '24', '12', '24', '10'),
('25', '12', '14000', '2021-03-10', '25', '12', '25', '10'),
('26', '12', '17200', '2021-03-10', '26', '12', '26', '10'),
('27', '12', '9600', '2021-03-10', '27', '12', '27', '10'),
('28', '12', '5000', '2021-03-10', '28', '12', '28', '10'),
('29', '12', '5240', '2021-03-11', '29', '12', '29', '10'),
('30', '12', '10000', '2021-03-11', '30', '12', '30', '10'),
('31', '12', '7200', '2021-03-11', '31', '12', '31', '10'),
('32', '12', '8000', '2021-03-11', '32', '12', '32', '10'),
('33', '12', '49950', '2021-03-11', '33', '12', '33', '10'),
('34', '12', '17270', '2021-03-12', '34', '12', '34', '10'),
('35', '12', '3200', '2021-03-12', '35', '12', '35', '10'),
('36', '12', '4500', '2021-03-14', '36', '12', '36', '10'),
('37', '12', '11500', '2021-03-14', '37', '12', '37', '10'),
('38', '12', '31000', '2021-03-14', '38', '12', '38', '10'),
('39', '12', '6250', '2021-03-14', '39', '12', '39', '10'),
('40', '12', '5400', '2021-03-15', '40', '12', '40', '10'),
('41', '12', '200', '2021-03-18', '41', '12', '41', '10');

### Structure of table `0_cust_branch` ###

DROP TABLE IF EXISTS `0_cust_branch`;

CREATE TABLE `0_cust_branch` (
  `branch_code` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_no` int(11) NOT NULL DEFAULT 0,
  `br_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `branch_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `br_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `area` int(11) DEFAULT NULL,
  `salesman` int(11) NOT NULL DEFAULT 0,
  `default_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_group_id` int(11) DEFAULT NULL,
  `sales_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `receivables_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default_ship_via` int(11) NOT NULL DEFAULT 1,
  `br_post_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `group_no` int(11) NOT NULL DEFAULT 0,
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `bank_account` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`branch_code`,`debtor_no`),
  KEY `branch_ref` (`branch_ref`),
  KEY `group_no` (`group_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_cust_branch` ###

INSERT INTO `0_cust_branch` VALUES
('1', '12', 'WalkIn Customer', 'WalkIn', '123', '4', '1', 'DEF', '2', '', '4510', '1200', '4500', '1', '123', '0', '', NULL, '0');

### Structure of table `0_debtor_trans` ###

DROP TABLE IF EXISTS `0_debtor_trans`;

CREATE TABLE `0_debtor_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT 0,
  `type` smallint(6) unsigned NOT NULL DEFAULT 0,
  `version` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `debtor_no` int(11) unsigned NOT NULL,
  `branch_code` int(11) NOT NULL DEFAULT -1,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tpe` int(11) NOT NULL DEFAULT 0,
  `order_` int(11) NOT NULL DEFAULT 0,
  `ov_amount` double NOT NULL DEFAULT 0,
  `ov_gst` double NOT NULL DEFAULT 0,
  `ov_freight` double NOT NULL DEFAULT 0,
  `ov_freight_tax` double NOT NULL DEFAULT 0,
  `ov_discount` double NOT NULL DEFAULT 0,
  `alloc` double NOT NULL DEFAULT 0,
  `prep_amount` double NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 1,
  `ship_via` int(11) DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`type`,`trans_no`,`debtor_no`),
  KEY `debtor_no` (`debtor_no`,`branch_code`),
  KEY `tran_date` (`tran_date`),
  KEY `order_` (`order_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_debtor_trans` ###

INSERT INTO `0_debtor_trans` VALUES
('1', '10', '0', '12', '1', '2021-03-08', '2021-03-08', '001/2021', '4', '1', '17900', '0', '0', '0', '0', '17900', '0', '1', '1', '0', '0', '4', '0'),
('2', '10', '0', '12', '1', '2021-03-06', '2021-03-06', '002/2021', '4', '2', '7200', '0', '0', '0', '0', '7200', '0', '1', '1', '0', '0', '4', '0'),
('3', '10', '0', '12', '1', '2021-03-06', '2021-03-06', '003/2021', '4', '3', '14000', '0', '0', '0', '0', '14000', '0', '1', '1', '0', '0', '4', '0'),
('4', '10', '0', '12', '1', '2021-03-06', '2021-03-06', '004/2021', '4', '4', '10000', '0', '0', '0', '0', '10000', '0', '1', '1', '0', '0', '4', '0'),
('5', '10', '0', '12', '1', '2021-03-10', '2021-03-10', '005/2021', '4', '5', '3200', '0', '0', '0', '0', '3200', '0', '1', '1', '0', '0', '4', '0'),
('6', '10', '0', '12', '1', '2021-03-06', '2021-03-06', '006/2021', '4', '6', '6000', '0', '0', '0', '0', '6000', '0', '1', '1', '0', '0', '4', '0'),
('7', '10', '0', '12', '1', '2021-03-06', '2021-03-06', '007/2021', '4', '7', '3500', '0', '0', '0', '0', '3500', '0', '1', '1', '0', '0', '4', '0'),
('8', '10', '0', '12', '1', '2021-03-06', '2021-03-06', '008/2021', '4', '8', '8202.5', '0', '-2.5', '0', '0', '8200', '0', '1', '1', '0', '0', '4', '0'),
('9', '10', '0', '12', '1', '2021-03-06', '2021-03-06', '009/2021', '4', '9', '3500', '0', '0', '0', '0', '3500', '0', '1', '1', '0', '0', '4', '0'),
('10', '10', '0', '12', '1', '2021-03-07', '2021-03-07', '010/2021', '4', '10', '3500', '0', '0', '0', '0', '3500', '0', '1', '1', '0', '0', '4', '0'),
('11', '10', '0', '12', '1', '2021-03-07', '2021-03-07', '011/2021', '4', '11', '5400', '0', '0', '0', '0', '5400', '0', '1', '1', '0', '0', '4', '0'),
('12', '10', '0', '12', '1', '2021-03-07', '2021-03-07', '012/2021', '4', '12', '3500', '0', '0', '0', '0', '3500', '0', '1', '1', '0', '0', '4', '0'),
('13', '10', '0', '12', '1', '2021-03-08', '2021-03-08', '013/2021', '4', '13', '15999.75', '0', '0', '0', '0', '15999.75', '0', '1', '1', '0', '0', '4', '0'),
('14', '10', '0', '12', '1', '2021-03-08', '2021-03-08', '014/2021', '4', '14', '14000', '0', '0', '0', '0', '14000', '0', '1', '1', '0', '0', '4', '0'),
('15', '10', '0', '12', '1', '2021-03-08', '2021-03-08', '015/2021', '4', '15', '19998', '0', '0', '0', '0', '19998', '0', '1', '1', '0', '0', '4', '0'),
('16', '10', '0', '12', '1', '2021-03-08', '2021-03-08', '016/2021', '4', '16', '5400', '0', '0', '0', '0', '5400', '0', '1', '1', '0', '0', '4', '0'),
('17', '10', '0', '12', '1', '2021-03-08', '2021-03-08', '017/2021', '4', '17', '27800', '0', '0', '0', '0', '27800', '0', '1', '1', '0', '0', '4', '0'),
('18', '10', '2', '12', '1', '2021-03-08', '2021-03-08', '018/2021', '4', '18', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('19', '10', '2', '12', '1', '2021-03-08', '2021-03-08', '019/2021', '4', '19', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('20', '10', '0', '12', '1', '2021-03-09', '2021-03-09', '018/2021', '4', '20', '3600', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('21', '10', '0', '12', '1', '2021-03-09', '2021-03-09', '019/2021', '4', '21', '3800', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('22', '10', '0', '12', '1', '2021-03-09', '2021-03-09', '020/2021', '4', '22', '5400', '0', '0', '0', '0', '5400', '0', '1', '1', '0', '0', '4', '0'),
('23', '10', '0', '12', '1', '2021-03-09', '2021-03-09', '021/2021', '4', '23', '4200', '0', '0', '0', '0', '4200', '0', '1', '1', '0', '0', '4', '0'),
('24', '10', '0', '12', '1', '2021-03-10', '2021-03-10', '022/2021', '4', '24', '14600', '0', '0', '0', '0', '14600', '0', '1', '1', '0', '0', '4', '0'),
('25', '10', '0', '12', '1', '2021-03-10', '2021-03-10', '023/2021', '4', '25', '14000', '0', '0', '0', '0', '14000', '0', '1', '1', '0', '0', '4', '0'),
('26', '10', '0', '12', '1', '2021-03-10', '2021-03-10', '024/2021', '4', '26', '17200', '0', '0', '0', '0', '17200', '0', '1', '1', '0', '0', '4', '0'),
('27', '10', '0', '12', '1', '2021-03-10', '2021-03-10', '025/2021', '4', '27', '9600', '0', '0', '0', '0', '9600', '0', '1', '1', '0', '0', '4', '0'),
('28', '10', '0', '12', '1', '2021-03-10', '2021-03-10', '026/2021', '4', '28', '4999.5', '0', '0.5', '0', '0', '5000', '0', '1', '1', '0', '0', '4', '0'),
('29', '10', '0', '12', '1', '2021-03-11', '2021-03-11', '027/2021', '4', '29', '5240', '0', '0', '0', '0', '5240', '0', '1', '1', '0', '0', '4', '0'),
('30', '10', '0', '12', '1', '2021-03-11', '2021-03-11', '028/2021', '4', '30', '9999.5', '0', '0.5', '0', '0', '10000', '0', '1', '1', '0', '0', '4', '0'),
('31', '10', '0', '12', '1', '2021-03-11', '2021-03-11', '029/2021', '4', '31', '7200', '0', '0', '0', '0', '7200', '0', '1', '1', '0', '0', '4', '0'),
('32', '10', '0', '12', '1', '2021-03-11', '2021-03-11', '030/2021', '4', '32', '7998', '0', '2', '0', '0', '8000', '0', '1', '1', '0', '0', '4', '0'),
('33', '10', '0', '12', '1', '2021-03-11', '2021-03-11', '031/2021', '4', '33', '49948', '0', '2', '0', '0', '49950', '0', '1', '1', '0', '0', '4', '0'),
('34', '10', '0', '12', '1', '2021-03-12', '2021-03-12', '032/2021', '4', '34', '17270', '0', '0', '0', '0', '17270', '0', '1', '1', '0', '0', '4', '0'),
('35', '10', '0', '12', '1', '2021-03-12', '2021-03-12', '033/2021', '4', '35', '3200', '0', '0', '0', '0', '3200', '0', '1', '1', '0', '0', '4', '0'),
('36', '10', '0', '12', '1', '2021-03-14', '2021-03-14', '034/2021', '4', '36', '4500', '0', '0', '0', '0', '4500', '0', '1', '1', '0', '0', '4', '0'),
('37', '10', '0', '12', '1', '2021-03-14', '2021-03-14', '035/2021', '4', '37', '11500', '0', '0', '0', '0', '11500', '0', '1', '1', '0', '0', '4', '0'),
('38', '10', '0', '12', '1', '2021-03-14', '2021-03-14', '036/2021', '4', '38', '30992', '0', '8', '0', '0', '31000', '0', '1', '1', '0', '0', '4', '0'),
('39', '10', '0', '12', '1', '2021-03-14', '2021-03-14', '037/2021', '4', '39', '6250', '0', '0', '0', '0', '6250', '0', '1', '1', '0', '0', '4', '0'),
('40', '10', '0', '12', '1', '2021-03-15', '2021-03-15', '038/2021', '4', '40', '5400', '0', '0', '0', '0', '5400', '0', '1', '1', '0', '0', '4', '0'),
('41', '10', '0', '12', '1', '2021-03-18', '2021-03-18', '039/2021', '4', '41', '200', '0', '0', '0', '0', '200', '0', '1', '1', '0', '0', '4', '0'),
('1', '12', '0', '12', '1', '2021-03-08', '0000-00-00', '001/2021', '0', '0', '17900', '0', '0', '0', '0', '17900', '0', '1', '0', '0', '0', NULL, '0'),
('2', '12', '0', '12', '1', '2021-03-06', '0000-00-00', '002/2021', '0', '0', '7200', '0', '0', '0', '0', '7200', '0', '1', '0', '0', '0', NULL, '0'),
('3', '12', '0', '12', '1', '2021-03-06', '0000-00-00', '003/2021', '0', '0', '14000', '0', '0', '0', '0', '14000', '0', '1', '0', '0', '0', NULL, '0'),
('4', '12', '0', '12', '1', '2021-03-06', '0000-00-00', '004/2021', '0', '0', '10000', '0', '0', '0', '0', '10000', '0', '1', '0', '0', '0', NULL, '0'),
('5', '12', '0', '12', '1', '2021-03-10', '0000-00-00', '005/2021', '0', '0', '3200', '0', '0', '0', '0', '3200', '0', '1', '0', '0', '0', NULL, '0'),
('6', '12', '0', '12', '1', '2021-03-06', '0000-00-00', '006/2021', '0', '0', '6000', '0', '0', '0', '0', '6000', '0', '1', '0', '0', '0', NULL, '0'),
('7', '12', '0', '12', '1', '2021-03-06', '0000-00-00', '007/2021', '0', '0', '3500', '0', '0', '0', '0', '3500', '0', '1', '0', '0', '0', NULL, '0'),
('8', '12', '0', '12', '1', '2021-03-06', '0000-00-00', '008/2021', '0', '0', '8200', '0', '0', '0', '0', '8200', '0', '1', '0', '0', '0', NULL, '0'),
('9', '12', '0', '12', '1', '2021-03-06', '0000-00-00', '009/2021', '0', '0', '3500', '0', '0', '0', '0', '3500', '0', '1', '0', '0', '0', NULL, '0'),
('10', '12', '0', '12', '1', '2021-03-07', '0000-00-00', '010/2021', '0', '0', '3500', '0', '0', '0', '0', '3500', '0', '1', '0', '0', '0', NULL, '0'),
('11', '12', '0', '12', '1', '2021-03-07', '0000-00-00', '011/2021', '0', '0', '5400', '0', '0', '0', '0', '5400', '0', '1', '0', '0', '0', NULL, '0'),
('12', '12', '0', '12', '1', '2021-03-07', '0000-00-00', '012/2021', '0', '0', '3500', '0', '0', '0', '0', '3500', '0', '1', '0', '0', '0', NULL, '0'),
('13', '12', '0', '12', '1', '2021-03-08', '0000-00-00', '013/2021', '0', '0', '15999.75', '0', '0', '0', '0', '15999.75', '0', '1', '0', '0', '0', NULL, '0'),
('14', '12', '0', '12', '1', '2021-03-08', '0000-00-00', '014/2021', '0', '0', '14000', '0', '0', '0', '0', '14000', '0', '1', '0', '0', '0', NULL, '0'),
('15', '12', '0', '12', '1', '2021-03-08', '0000-00-00', '015/2021', '0', '0', '19998', '0', '0', '0', '0', '19998', '0', '1', '0', '0', '0', NULL, '0'),
('16', '12', '0', '12', '1', '2021-03-08', '0000-00-00', '016/2021', '0', '0', '5400', '0', '0', '0', '0', '5400', '0', '1', '0', '0', '0', NULL, '0'),
('17', '12', '0', '12', '1', '2021-03-08', '0000-00-00', '017/2021', '0', '0', '27800', '0', '0', '0', '0', '27800', '0', '1', '0', '0', '0', NULL, '0'),
('18', '12', '0', '12', '1', '2021-03-08', '0000-00-00', '018/2021', '0', '0', '3600', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL, '0'),
('19', '12', '0', '12', '1', '2021-03-08', '0000-00-00', '019/2021', '0', '0', '3800', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL, '0'),
('20', '12', '2', '12', '1', '2021-03-09', '0000-00-00', '020/2021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL, '0'),
('21', '12', '2', '12', '1', '2021-03-09', '0000-00-00', '021/2021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL, '0'),
('22', '12', '0', '12', '1', '2021-03-09', '0000-00-00', '022/2021', '0', '0', '5400', '0', '0', '0', '0', '5400', '0', '1', '0', '0', '0', NULL, '0'),
('23', '12', '0', '12', '1', '2021-03-09', '0000-00-00', '023/2021', '0', '0', '4200', '0', '0', '0', '0', '4200', '0', '1', '0', '0', '0', NULL, '0'),
('24', '12', '0', '12', '1', '2021-03-10', '0000-00-00', '024/2021', '0', '0', '14600', '0', '0', '0', '0', '14600', '0', '1', '0', '0', '0', NULL, '0'),
('25', '12', '0', '12', '1', '2021-03-10', '0000-00-00', '025/2021', '0', '0', '14000', '0', '0', '0', '0', '14000', '0', '1', '0', '0', '0', NULL, '0'),
('26', '12', '0', '12', '1', '2021-03-10', '0000-00-00', '026/2021', '0', '0', '17200', '0', '0', '0', '0', '17200', '0', '1', '0', '0', '0', NULL, '0'),
('27', '12', '0', '12', '1', '2021-03-10', '0000-00-00', '027/2021', '0', '0', '9600', '0', '0', '0', '0', '9600', '0', '1', '0', '0', '0', NULL, '0'),
('28', '12', '0', '12', '1', '2021-03-10', '0000-00-00', '028/2021', '0', '0', '5000', '0', '0', '0', '0', '5000', '0', '1', '0', '0', '0', NULL, '0'),
('29', '12', '0', '12', '1', '2021-03-11', '0000-00-00', '029/2021', '0', '0', '5240', '0', '0', '0', '0', '5240', '0', '1', '0', '0', '0', NULL, '0'),
('30', '12', '0', '12', '1', '2021-03-11', '0000-00-00', '030/2021', '0', '0', '10000', '0', '0', '0', '0', '10000', '0', '1', '0', '0', '0', NULL, '0'),
('31', '12', '0', '12', '1', '2021-03-11', '0000-00-00', '031/2021', '0', '0', '7200', '0', '0', '0', '0', '7200', '0', '1', '0', '0', '0', NULL, '0'),
('32', '12', '0', '12', '1', '2021-03-11', '0000-00-00', '032/2021', '0', '0', '8000', '0', '0', '0', '0', '8000', '0', '1', '0', '0', '0', NULL, '0'),
('33', '12', '0', '12', '1', '2021-03-11', '0000-00-00', '033/2021', '0', '0', '49950', '0', '0', '0', '0', '49950', '0', '1', '0', '0', '0', NULL, '0'),
('34', '12', '0', '12', '1', '2021-03-12', '0000-00-00', '034/2021', '0', '0', '17270', '0', '0', '0', '0', '17270', '0', '1', '0', '0', '0', NULL, '0'),
('35', '12', '0', '12', '1', '2021-03-12', '0000-00-00', '035/2021', '0', '0', '3200', '0', '0', '0', '0', '3200', '0', '1', '0', '0', '0', NULL, '0'),
('36', '12', '0', '12', '1', '2021-03-14', '0000-00-00', '036/2021', '0', '0', '4500', '0', '0', '0', '0', '4500', '0', '1', '0', '0', '0', NULL, '0'),
('37', '12', '0', '12', '1', '2021-03-14', '0000-00-00', '037/2021', '0', '0', '11500', '0', '0', '0', '0', '11500', '0', '1', '0', '0', '0', NULL, '0'),
('38', '12', '0', '12', '1', '2021-03-14', '0000-00-00', '038/2021', '0', '0', '31000', '0', '0', '0', '0', '31000', '0', '1', '0', '0', '0', NULL, '0'),
('39', '12', '0', '12', '1', '2021-03-14', '0000-00-00', '039/2021', '0', '0', '6250', '0', '0', '0', '0', '6250', '0', '1', '0', '0', '0', NULL, '0'),
('40', '12', '0', '12', '1', '2021-03-15', '0000-00-00', '040/2021', '0', '0', '5400', '0', '0', '0', '0', '5400', '0', '1', '0', '0', '0', NULL, '0'),
('41', '12', '0', '12', '1', '2021-03-18', '0000-00-00', '041/2021', '0', '0', '200', '0', '0', '0', '0', '200', '0', '1', '0', '0', '0', NULL, '0'),
('1', '13', '1', '12', '1', '2021-03-08', '2021-03-08', 'auto', '4', '1', '17900', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('2', '13', '1', '12', '1', '2021-03-06', '2021-03-06', 'auto', '4', '2', '7200', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('3', '13', '1', '12', '1', '2021-03-06', '2021-03-06', 'auto', '4', '3', '14000', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('4', '13', '1', '12', '1', '2021-03-06', '2021-03-06', 'auto', '4', '4', '10000', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('5', '13', '1', '12', '1', '2021-03-10', '2021-03-10', 'auto', '4', '5', '3200', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('6', '13', '1', '12', '1', '2021-03-06', '2021-03-06', 'auto', '4', '6', '6000', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('7', '13', '1', '12', '1', '2021-03-06', '2021-03-06', 'auto', '4', '7', '3500', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('8', '13', '1', '12', '1', '2021-03-06', '2021-03-06', 'auto', '4', '8', '8202.5', '0', '-2.5', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('9', '13', '1', '12', '1', '2021-03-06', '2021-03-06', 'auto', '4', '9', '3500', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('10', '13', '1', '12', '1', '2021-03-07', '2021-03-07', 'auto', '4', '10', '3500', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('11', '13', '1', '12', '1', '2021-03-07', '2021-03-07', 'auto', '4', '11', '5400', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('12', '13', '1', '12', '1', '2021-03-07', '2021-03-07', 'auto', '4', '12', '3500', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('13', '13', '1', '12', '1', '2021-03-08', '2021-03-08', 'auto', '4', '13', '15999.75', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('14', '13', '1', '12', '1', '2021-03-08', '2021-03-08', 'auto', '4', '14', '14000', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('15', '13', '1', '12', '1', '2021-03-08', '2021-03-08', 'auto', '4', '15', '19998', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('16', '13', '1', '12', '1', '2021-03-08', '2021-03-08', 'auto', '4', '16', '5400', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('17', '13', '1', '12', '1', '2021-03-08', '2021-03-08', 'auto', '4', '17', '27800', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('18', '13', '2', '12', '1', '2021-03-08', '2021-03-08', 'auto', '4', '18', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('19', '13', '2', '12', '1', '2021-03-08', '2021-03-08', 'auto', '4', '19', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('20', '13', '1', '12', '1', '2021-03-09', '2021-03-09', 'auto', '4', '20', '3600', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('21', '13', '1', '12', '1', '2021-03-09', '2021-03-09', 'auto', '4', '21', '3800', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('22', '13', '1', '12', '1', '2021-03-09', '2021-03-09', 'auto', '4', '22', '5400', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('23', '13', '1', '12', '1', '2021-03-09', '2021-03-09', 'auto', '4', '23', '4200', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('24', '13', '1', '12', '1', '2021-03-10', '2021-03-10', 'auto', '4', '24', '14600', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('25', '13', '1', '12', '1', '2021-03-10', '2021-03-10', 'auto', '4', '25', '14000', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('26', '13', '1', '12', '1', '2021-03-10', '2021-03-10', 'auto', '4', '26', '17200', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('27', '13', '1', '12', '1', '2021-03-10', '2021-03-10', 'auto', '4', '27', '9600', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('28', '13', '1', '12', '1', '2021-03-10', '2021-03-10', 'auto', '4', '28', '4999.5', '0', '0.5', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('29', '13', '1', '12', '1', '2021-03-11', '2021-03-11', 'auto', '4', '29', '5240', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('30', '13', '1', '12', '1', '2021-03-11', '2021-03-11', 'auto', '4', '30', '9999.5', '0', '0.5', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('31', '13', '1', '12', '1', '2021-03-11', '2021-03-11', 'auto', '4', '31', '7200', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('32', '13', '1', '12', '1', '2021-03-11', '2021-03-11', 'auto', '4', '32', '7998', '0', '2', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('33', '13', '1', '12', '1', '2021-03-11', '2021-03-11', 'auto', '4', '33', '49948', '0', '2', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('34', '13', '1', '12', '1', '2021-03-12', '2021-03-12', 'auto', '4', '34', '17270', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('35', '13', '1', '12', '1', '2021-03-12', '2021-03-12', 'auto', '4', '35', '3200', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('36', '13', '1', '12', '1', '2021-03-14', '2021-03-14', 'auto', '4', '36', '4500', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('37', '13', '1', '12', '1', '2021-03-14', '2021-03-14', 'auto', '4', '37', '11500', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('38', '13', '1', '12', '1', '2021-03-14', '2021-03-14', 'auto', '4', '38', '30992', '0', '8', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('39', '13', '1', '12', '1', '2021-03-14', '2021-03-14', 'auto', '4', '39', '6250', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('40', '13', '1', '12', '1', '2021-03-15', '2021-03-15', 'auto', '4', '40', '5400', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0'),
('41', '13', '1', '12', '1', '2021-03-18', '2021-03-18', 'auto', '4', '41', '200', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '0');

### Structure of table `0_debtor_trans_details` ###

DROP TABLE IF EXISTS `0_debtor_trans_details`;

CREATE TABLE `0_debtor_trans_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_trans_no` int(11) DEFAULT NULL,
  `debtor_trans_type` int(11) DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double NOT NULL DEFAULT 0,
  `unit_tax` double NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `discount_percent` double NOT NULL DEFAULT 0,
  `standard_cost` double NOT NULL DEFAULT 0,
  `qty_done` double NOT NULL DEFAULT 0,
  `src_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`debtor_trans_type`,`debtor_trans_no`),
  KEY `src_id` (`src_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_debtor_trans_details` ###

INSERT INTO `0_debtor_trans_details` VALUES
('1', '1', '13', '40', 'BRILLIANT 79 BOX', '5200', '0', '2', '0', '3500', '2', '1'),
('2', '1', '13', 'LFDK', 'SUPER SIKLA ', '2500', '0', '3', '0', '700', '3', '2'),
('3', '1', '10', '40', 'BRILLIANT 79 BOX', '5200', '0', '2', '0', '3500', '0', '1'),
('4', '1', '10', 'LFDK', 'SUPER SIKLA ', '2500', '0', '3', '0', '700', '0', '2'),
('5', '2', '13', '41', 'ITALIAN BOX ', '2100', '0', '2', '0', '2000', '2', '3'),
('6', '2', '13', 'LFSK2', 'ROYAL SOFT', '750', '0', '4', '0', '450', '4', '4'),
('7', '2', '10', '41', 'ITALIAN BOX ', '2100', '0', '2', '0', '2000', '0', '5'),
('8', '2', '10', 'LFSK2', 'ROYAL SOFT', '750', '0', '4', '0', '450', '0', '6'),
('9', '3', '13', 'LFBP1', 'TAURUS DEW', '900', '0', '8', '0', '650', '8', '5'),
('10', '3', '13', 'LFSK2', 'ROYAL SOFT', '800', '0', '4', '0', '450', '4', '6'),
('11', '3', '13', 'LFSK3', 'ITALLIAN GOLD ', '900', '0', '4', '0', '400', '4', '7'),
('12', '3', '10', 'LFBP1', 'TAURUS DEW', '900', '0', '8', '0', '650', '0', '9'),
('13', '3', '10', 'LFSK2', 'ROYAL SOFT', '800', '0', '4', '0', '450', '0', '10'),
('14', '3', '10', 'LFSK3', 'ITALLIAN GOLD ', '900', '0', '4', '0', '400', '0', '11'),
('15', '4', '13', 'LFDK', 'SUPER SIKLA ', '2500', '0', '4', '0', '700', '4', '8'),
('16', '4', '10', 'LFDK', 'SUPER SIKLA ', '2500', '0', '4', '0', '700', '0', '15'),
('17', '5', '13', 'LFSK3', 'ITALLIAN GOLD ', '800', '0', '4', '0', '400', '4', '9'),
('18', '5', '10', 'LFSK3', 'ITALLIAN GOLD ', '800', '0', '4', '0', '400', '0', '17'),
('19', '6', '13', 'LFAQL', 'WOOLTOUCH', '2000', '0', '3', '0', '800', '3', '10'),
('20', '6', '10', 'LFAQL', 'WOOLTOUCH', '2000', '0', '3', '0', '800', '0', '19'),
('21', '7', '13', 'LFSK2', 'ROYAL SOFT', '875', '0', '4', '0', '450', '4', '11'),
('22', '7', '10', 'LFSK2', 'ROYAL SOFT', '875', '0', '4', '0', '450', '0', '21'),
('23', '8', '13', 'LFBP8', 'PREMIUM PLUS LOOSE FABRIC', '1045', '0', '4.5', '0', '830', '4.5', '12'),
('24', '8', '13', 'LFHK2', 'BIELLA ITALIA', '3500', '0', '1', '0', '2100', '1', '13'),
('25', '8', '10', 'LFBP8', 'PREMIUM PLUS LOOSE FABRIC', '1045', '0', '4.5', '0', '830', '0', '23'),
('26', '8', '10', 'LFHK2', 'BIELLA ITALIA', '3500', '0', '1', '0', '2100', '0', '24'),
('27', '9', '13', 'LFSK2', 'ROYAL SOFT', '875', '0', '4', '0', '450', '4', '14'),
('28', '9', '10', 'LFSK2', 'ROYAL SOFT', '875', '0', '4', '0', '450', '0', '27'),
('29', '10', '13', 'LFSK2', 'ROYAL SOFT', '875', '0', '4', '0', '450', '4', '15'),
('30', '10', '10', 'LFSK2', 'ROYAL SOFT', '875', '0', '4', '0', '450', '0', '29'),
('31', '11', '13', 'LFDK2', 'TOYOBO', '1350', '0', '4', '0', '650', '4', '16'),
('32', '11', '10', 'LFDK2', 'TOYOBO', '1350', '0', '4', '0', '650', '0', '31'),
('33', '12', '13', 'LFSK2', 'ROYAL SOFT', '875', '0', '4', '0', '450', '4', '17'),
('34', '12', '10', 'LFSK2', 'ROYAL SOFT', '875', '0', '4', '0', '450', '0', '33'),
('35', '13', '13', 'LFHK3', 'GUABELLO', '5333.25', '0', '3', '0', '2100', '3', '18'),
('36', '13', '10', 'LFHK3', 'GUABELLO', '5333.25', '0', '3', '0', '2100', '0', '35'),
('37', '14', '13', 'LFSK3', 'ITALLIAN GOLD ', '1000', '0', '4', '0', '400', '4', '19'),
('38', '14', '13', 'LFBP1', 'TAURUS DEW', '900', '0', '8', '0', '650', '8', '20'),
('39', '14', '13', 'LFMNT6', 'ORIEL SUPER COMMANDER ', '700', '0', '4', '0', '500', '4', '21'),
('40', '14', '10', 'LFSK3', 'ITALLIAN GOLD ', '1000', '0', '4', '0', '400', '0', '37'),
('41', '14', '10', 'LFBP1', 'TAURUS DEW', '900', '0', '8', '0', '650', '0', '38'),
('42', '14', '10', 'LFMNT6', 'ORIEL SUPER COMMANDER ', '700', '0', '4', '0', '500', '0', '39'),
('43', '15', '13', 'LFDK2', 'TOYOBO', '2222', '0', '4.5', '0', '650', '4.5', '22'),
('44', '15', '13', 'LFSK1', 'BRILLIANT 79 ', '1111', '0', '9', '0', '630', '9', '23'),
('45', '15', '10', 'LFDK2', 'TOYOBO', '2222', '0', '4.5', '0', '650', '0', '43'),
('46', '15', '10', 'LFSK1', 'BRILLIANT 79 ', '1111', '0', '9', '0', '630', '0', '44'),
('47', '16', '13', 'LFSK1', 'BRILLIANT 79 ', '1200', '0', '4.5', '0', '630', '4.5', '24'),
('48', '16', '10', 'LFSK1', 'BRILLIANT 79 ', '1200', '0', '4.5', '0', '630', '0', '47'),
('49', '17', '13', '41', 'ITALIAN BOX ', '3200', '0', '6', '0', '2000', '6', '25'),
('50', '17', '13', 'LFSK1', 'BRILLIANT 79 ', '1200', '0', '4.5', '0', '630', '4.5', '26'),
('51', '17', '13', 'LFSK3', 'ITALLIAN GOLD ', '800', '0', '4', '0', '400', '4', '27'),
('52', '17', '10', '41', 'ITALIAN BOX ', '3200', '0', '6', '0', '2000', '0', '49'),
('53', '17', '10', 'LFSK1', 'BRILLIANT 79 ', '1200', '0', '4.5', '0', '630', '0', '50'),
('54', '17', '10', 'LFSK3', 'ITALLIAN GOLD ', '800', '0', '4', '0', '400', '0', '51'),
('55', '18', '13', 'LFSS11', 'JOHN COPPER ', '0', '0', '0', '0', '0', '4', '0'),
('56', '18', '10', 'LFSS11', 'JOHN COPPER ', '0', '0', '0', '0', '0', '0', '0'),
('57', '19', '13', 'LFAQL', 'WOOLTOUCH', '0', '0', '0', '0', '0', '2', '0'),
('58', '19', '10', 'LFAQL', 'WOOLTOUCH', '0', '0', '0', '0', '0', '0', '0'),
('59', '20', '13', 'LFSS11', 'JOHN COPPER ', '900', '0', '4', '0', '500', '4', '30'),
('60', '20', '10', 'LFSS11', 'JOHN COPPER ', '900', '0', '4', '0', '500', '0', '59'),
('61', '21', '13', 'LFAQL', 'WOOLTOUCH', '1900', '0', '2', '0', '800', '2', '31'),
('62', '21', '10', 'LFAQL', 'WOOLTOUCH', '1900', '0', '2', '0', '800', '0', '61'),
('63', '22', '13', 'LFSK1', 'BRILLIANT 79 ', '1200', '0', '4.5', '0', '630', '4.5', '32'),
('64', '22', '10', 'LFSK1', 'BRILLIANT 79 ', '1200', '0', '4.5', '0', '630', '0', '63'),
('65', '23', '13', 'LFSK2', 'ROYAL SOFT', '1050', '0', '4', '0', '450', '4', '33'),
('66', '23', '10', 'LFSK2', 'ROYAL SOFT', '1050', '0', '4', '0', '450', '0', '65'),
('67', '24', '13', 'LFSK2', 'ROYAL SOFT', '750', '0', '12', '0', '450', '12', '34'),
('68', '24', '13', 'LFAQL1', 'LAWRENCEPUR TR ', '2800', '0', '2', '0', '900', '2', '35'),
('69', '24', '10', 'LFSK2', 'ROYAL SOFT', '750', '0', '12', '0', '450', '0', '67'),
('70', '24', '10', 'LFAQL1', 'LAWRENCEPUR TR ', '2800', '0', '2', '0', '900', '0', '68'),
('71', '25', '13', 'LFTS1', 'VENUS SHABBIR', '1250', '0', '8', '0', '750', '8', '36'),
('72', '25', '13', 'LFMNT4', 'BROTHER FUNLAND', '1000', '0', '4', '0', '500', '4', '37'),
('73', '25', '10', 'LFTS1', 'VENUS SHABBIR', '1250', '0', '8', '0', '750', '0', '71'),
('74', '25', '10', 'LFMNT4', 'BROTHER FUNLAND', '1000', '0', '4', '0', '500', '0', '72'),
('75', '26', '13', 'LFBP1', 'TAURUS DEW', '900', '0', '16', '0', '650', '16', '38'),
('76', '26', '13', 'LFMNT12', 'NOYAAN ORIEL ', '700', '0', '4', '0', '450', '4', '39'),
('77', '26', '10', 'LFBP1', 'TAURUS DEW', '900', '0', '16', '0', '650', '0', '75'),
('78', '26', '10', 'LFMNT12', 'NOYAAN ORIEL ', '700', '0', '4', '0', '450', '0', '76'),
('79', '27', '13', 'LFDK', 'SUPER SIKLA ', '3200', '0', '3', '0', '700', '3', '40'),
('80', '27', '10', 'LFDK', 'SUPER SIKLA ', '3200', '0', '3', '0', '700', '0', '79'),
('81', '28', '13', 'LFSK1', 'BRILLIANT 79 ', '1111', '0', '4.5', '0', '630', '4.5', '41'),
('82', '28', '10', 'LFSK1', 'BRILLIANT 79 ', '1111', '0', '4.5', '0', '630', '0', '81'),
('83', '29', '13', '02', 'Four Season plus ', '5240', '0', '1', '0', '4500', '1', '42'),
('84', '29', '10', '02', 'Four Season plus ', '5240', '0', '1', '0', '4500', '0', '83'),
('85', '30', '13', 'LFAQL', 'WOOLTOUCH', '2857', '0', '3.5', '0', '800', '3.5', '43'),
('86', '30', '10', 'LFAQL', 'WOOLTOUCH', '2857', '0', '3.5', '0', '800', '0', '85'),
('87', '31', '13', 'LFBP1', 'TAURUS DEW', '900', '0', '8', '0', '650', '8', '44'),
('88', '31', '10', 'LFBP1', 'TAURUS DEW', '900', '0', '8', '0', '650', '0', '87'),
('89', '32', '13', 'LFDK', 'SUPER SIKLA ', '2666', '0', '3', '0', '700', '3', '45'),
('90', '32', '10', 'LFDK', 'SUPER SIKLA ', '2666', '0', '3', '0', '700', '0', '89'),
('91', '33', '13', 'LFHK4', 'BARZATTO', '5500', '0', '1', '0', '2100', '1', '46'),
('92', '33', '13', 'LFDK', 'SUPER SIKLA ', '2500', '0', '10', '0', '700', '10', '47'),
('93', '33', '13', 'LFBP8', 'PREMIUM PLUS LOOSE FABRIC', '1044', '0', '4.5', '0', '830', '4.5', '48'),
('94', '33', '13', 'LFDK2', 'TOYOBO', '1000', '0', '3.5', '0', '650', '3.5', '49'),
('95', '33', '13', 'LFAQL', 'WOOLTOUCH', '2500', '0', '2.25', '0', '800', '2.25', '50'),
('96', '33', '13', 'LFABD3', 'SUITING TR', '2500', '0', '2.25', '0', '650', '2.25', '51'),
('97', '33', '10', 'LFHK4', 'BARZATTO', '5500', '0', '1', '0', '2100', '0', '91'),
('98', '33', '10', 'LFDK', 'SUPER SIKLA ', '2500', '0', '10', '0', '700', '0', '92'),
('99', '33', '10', 'LFBP8', 'PREMIUM PLUS LOOSE FABRIC', '1044', '0', '4.5', '0', '830', '0', '93'),
('100', '33', '10', 'LFDK2', 'TOYOBO', '1000', '0', '3.5', '0', '650', '0', '94'),
('101', '33', '10', 'LFAQL', 'WOOLTOUCH', '2500', '0', '2.25', '0', '800', '0', '95'),
('102', '33', '10', 'LFABD3', 'SUITING TR', '2500', '0', '2.25', '0', '650', '0', '96'),
('103', '34', '13', '06', 'Platinum Plus Pasha ', '7640', '0', '1', '0', '6400', '1', '52'),
('104', '34', '13', '07', 'Platinum Texture ', '9630', '0', '1', '0', '8100', '1', '53'),
('105', '34', '10', '06', 'Platinum Plus Pasha ', '7640', '0', '1', '0', '6400', '0', '103'),
('106', '34', '10', '07', 'Platinum Texture ', '9630', '0', '1', '0', '8100', '0', '104'),
('107', '35', '13', 'LFSK3', 'ITALLIAN GOLD ', '800', '0', '4', '0', '400', '4', '54'),
('108', '35', '10', 'LFSK3', 'ITALLIAN GOLD ', '800', '0', '4', '0', '400', '0', '107'),
('109', '36', '13', 'LFMNT11', 'DUBAN COTTON GACE', '1000', '0', '4.5', '0', '750', '4.5', '55'),
('110', '36', '10', 'LFMNT11', 'DUBAN COTTON GACE', '1000', '0', '4.5', '0', '750', '0', '109'),
('111', '37', '13', 'LFSK2', 'ROYAL SOFT', '1050', '0', '4', '0', '450', '4', '56'),
('112', '37', '13', 'LFBP1', 'TAURUS DEW', '950', '0', '4', '0', '650', '4', '57'),
('113', '37', '13', 'LFMNT12', 'NOYAAN ORIEL ', '875', '0', '4', '0', '450', '4', '58'),
('114', '37', '10', 'LFSK2', 'ROYAL SOFT', '1050', '0', '4', '0', '450', '0', '111'),
('115', '37', '10', 'LFBP1', 'TAURUS DEW', '950', '0', '4', '0', '650', '0', '112'),
('116', '37', '10', 'LFMNT12', 'NOYAAN ORIEL ', '875', '0', '4', '0', '450', '0', '113'),
('117', '38', '13', 'LFDK', 'SUPER SIKLA ', '2384', '0', '9.5', '0', '700', '9.5', '59'),
('118', '38', '13', 'LFABD3', 'SUITING TR', '2384', '0', '3.5', '0', '650', '3.5', '60'),
('119', '38', '10', 'LFDK', 'SUPER SIKLA ', '2384', '0', '9.5', '0', '700', '0', '117'),
('120', '38', '10', 'LFABD3', 'SUITING TR', '2384', '0', '3.5', '0', '650', '0', '118'),
('121', '39', '13', 'LFAQL', 'WOOLTOUCH', '2500', '0', '2.5', '0', '800', '2.5', '61'),
('122', '39', '10', 'LFAQL', 'WOOLTOUCH', '2500', '0', '2.5', '0', '800', '0', '121'),
('123', '40', '13', 'LFMNT9', 'WIND COTTON GRACE ', '1200', '0', '4.5', '0', '850', '4.5', '62'),
('124', '40', '10', 'LFMNT9', 'WIND COTTON GRACE ', '1200', '0', '4.5', '0', '850', '0', '123'),
('125', '41', '13', 'NG-01', 'Chicken Nuggets (Dilnawaz Foods)', '200', '0', '1', '0', '0', '1', '63'),
('126', '41', '10', 'NG-01', 'Chicken Nuggets (Dilnawaz Foods)', '200', '0', '1', '0', '0', '0', '125');

### Structure of table `0_debtors_master` ###

DROP TABLE IF EXISTS `0_debtors_master`;

CREATE TABLE `0_debtors_master` (
  `debtor_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `debtor_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_type` int(11) NOT NULL DEFAULT 1,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  `credit_status` int(11) NOT NULL DEFAULT 0,
  `payment_terms` int(11) DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `pymt_discount` double NOT NULL DEFAULT 0,
  `credit_limit` float NOT NULL DEFAULT 1000,
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`debtor_no`),
  UNIQUE KEY `debtor_ref` (`debtor_ref`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_debtors_master` ###

INSERT INTO `0_debtors_master` VALUES
('12', 'WalkIn Customer', 'WalkIn', '123', '', 'PKR', '4', '0', '0', '1', '4', '0', '0', '1000', '', '0');

### Structure of table `0_department` ###

DROP TABLE IF EXISTS `0_department`;

CREATE TABLE `0_department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_department` ###

INSERT INTO `0_department` VALUES
('1', 'Sales', '0');

### Structure of table `0_dimensions` ###

DROP TABLE IF EXISTS `0_dimensions`;

CREATE TABLE `0_dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_` tinyint(1) NOT NULL DEFAULT 1,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`),
  KEY `date_` (`date_`),
  KEY `due_date` (`due_date`),
  KEY `type_` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_dimensions` ###


### Structure of table `0_employee` ###

DROP TABLE IF EXISTS `0_employee`;

CREATE TABLE `0_employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `emp_address` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_birthdate` date NOT NULL,
  `emp_notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `emp_hiredate` date DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `salary_scale_id` int(11) NOT NULL DEFAULT 0,
  `emp_releasedate` date DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`emp_id`),
  KEY `salary_scale_id` (`salary_scale_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_employee` ###


### Structure of table `0_employee_trans` ###

DROP TABLE IF EXISTS `0_employee_trans`;

CREATE TABLE `0_employee_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `payslip_no` int(11) NOT NULL,
  `pay_date` date NOT NULL,
  `to_the_order_of` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pay_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_employee_trans` ###


### Structure of table `0_exchange_rates` ###

DROP TABLE IF EXISTS `0_exchange_rates`;

CREATE TABLE `0_exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate_buy` double NOT NULL DEFAULT 0,
  `rate_sell` double NOT NULL DEFAULT 0,
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `curr_code` (`curr_code`,`date_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_exchange_rates` ###


### Structure of table `0_fiscal_year` ###

DROP TABLE IF EXISTS `0_fiscal_year`;

CREATE TABLE `0_fiscal_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT '0000-00-00',
  `end` date DEFAULT '0000-00-00',
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `begin` (`begin`),
  UNIQUE KEY `end` (`end`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_fiscal_year` ###

INSERT INTO `0_fiscal_year` VALUES
('1', '2018-01-01', '2018-12-31', '1'),
('2', '2019-01-01', '2019-12-31', '1'),
('3', '2020-01-01', '2020-12-31', '1'),
('4', '2021-01-01', '2021-12-31', '0');

### Structure of table `0_gl_trans` ###

DROP TABLE IF EXISTS `0_gl_trans`;

CREATE TABLE `0_gl_trans` (
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `type_no` int(11) NOT NULL DEFAULT 0,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  `person_type_id` int(11) DEFAULT NULL,
  `person_id` tinyblob DEFAULT NULL,
  PRIMARY KEY (`counter`),
  KEY `Type_and_Number` (`type`,`type_no`),
  KEY `dimension_id` (`dimension_id`),
  KEY `dimension2_id` (`dimension2_id`),
  KEY `tran_date` (`tran_date`),
  KEY `account_and_tran_date` (`account`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_gl_trans` ###

INSERT INTO `0_gl_trans` VALUES
('1', '25', '1', '2018-12-31', '1540', '01', '0', '0', '0', NULL, NULL),
('2', '25', '1', '2018-12-31', '1550', '', '0', '0', '0', NULL, NULL),
('3', '20', '1', '2018-12-31', '2150', '', '0', '0', '0', NULL, NULL),
('4', '20', '1', '2018-12-31', '2100', '', '0', '0', '0', '3', '1'),
('5', '20', '1', '2018-12-31', '1550', '', '0', '0', '0', NULL, NULL),
('6', '22', '1', '2018-12-31', '2100', '', '0', '0', '0', '3', '1'),
('7', '22', '1', '2018-12-31', '1065', '', '0', '0', '0', NULL, NULL),
('8', '25', '2', '2018-12-31', '1540', '02', '0', '0', '0', NULL, NULL),
('9', '25', '2', '2018-12-31', '1550', '', '0', '0', '0', NULL, NULL),
('10', '25', '2', '2018-12-31', '1540', 'GRN Removal', '0', '0', '0', NULL, NULL),
('11', '25', '2', '2018-12-31', '1550', 'GRN Removal', '0', '0', '0', NULL, NULL),
('12', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-36500', '0', '0', NULL, NULL),
('13', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '36500', '0', '0', NULL, NULL),
('14', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-45000', '0', '0', NULL, NULL),
('15', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '45000', '0', '0', NULL, NULL),
('16', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-102900', '0', '0', NULL, NULL),
('17', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '102900', '0', '0', NULL, NULL),
('18', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-37100', '0', '0', NULL, NULL),
('19', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '37100', '0', '0', NULL, NULL),
('20', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-33000', '0', '0', NULL, NULL),
('21', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '33000', '0', '0', NULL, NULL),
('22', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-83200', '0', '0', NULL, NULL),
('23', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '83200', '0', '0', NULL, NULL),
('24', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-8100', '0', '0', NULL, NULL),
('25', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '8100', '0', '0', NULL, NULL),
('26', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-2400', '0', '0', NULL, NULL),
('27', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '2400', '0', '0', NULL, NULL),
('28', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-7650', '0', '0', NULL, NULL),
('29', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '7650', '0', '0', NULL, NULL),
('30', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-3200', '0', '0', NULL, NULL),
('31', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '3200', '0', '0', NULL, NULL),
('32', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-33800', '0', '0', NULL, NULL),
('33', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '33800', '0', '0', NULL, NULL),
('34', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-18250', '0', '0', NULL, NULL),
('35', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '18250', '0', '0', NULL, NULL),
('36', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-36000', '0', '0', NULL, NULL),
('37', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '36000', '0', '0', NULL, NULL),
('38', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-6200', '0', '0', NULL, NULL),
('39', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '6200', '0', '0', NULL, NULL),
('40', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-3200', '0', '0', NULL, NULL),
('41', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '3200', '0', '0', NULL, NULL),
('42', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-11200', '0', '0', NULL, NULL),
('43', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '11200', '0', '0', NULL, NULL),
('44', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-22000', '0', '0', NULL, NULL),
('45', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '22000', '0', '0', NULL, NULL),
('46', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-522900', '0', '0', NULL, NULL),
('47', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '522900', '0', '0', NULL, NULL),
('48', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-182700', '0', '0', NULL, NULL),
('49', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '182700', '0', '0', NULL, NULL),
('50', '17', '1', '2020-12-31', '5040', 'OPENING BALANCE STOCK ', '-114450', '0', '0', NULL, NULL),
('51', '17', '1', '2020-12-31', '1540', 'OPENING BALANCE STOCK ', '114450', '0', '0', NULL, NULL),
('52', '0', '1', '2020-12-31', '5040', 'Opening Stock', '1309750', '0', '0', NULL, NULL),
('53', '0', '1', '2020-12-31', '1540', 'Opening Stock', '-1309750', '0', '0', NULL, NULL),
('54', '17', '2', '2020-12-31', '5040', '', '-180600', '0', '0', NULL, NULL),
('55', '17', '2', '2020-12-31', '1540', '', '180600', '0', '0', NULL, NULL),
('56', '17', '2', '2020-12-31', '5040', '', '-148750', '0', '0', NULL, NULL),
('57', '17', '2', '2020-12-31', '1540', '', '148750', '0', '0', NULL, NULL),
('58', '17', '2', '2020-12-31', '5040', '', '-35000', '0', '0', NULL, NULL),
('59', '17', '2', '2020-12-31', '1540', '', '35000', '0', '0', NULL, NULL),
('60', '17', '2', '2020-12-31', '5040', '', '-184000', '0', '0', NULL, NULL),
('61', '17', '2', '2020-12-31', '1540', '', '184000', '0', '0', NULL, NULL),
('62', '17', '2', '2020-12-31', '5040', '', '-145000', '0', '0', NULL, NULL),
('63', '17', '2', '2020-12-31', '1540', '', '145000', '0', '0', NULL, NULL),
('64', '17', '2', '2020-12-31', '5040', '', '-77350', '0', '0', NULL, NULL),
('65', '17', '2', '2020-12-31', '1540', '', '77350', '0', '0', NULL, NULL),
('66', '17', '2', '2020-12-31', '5040', '', '-28350', '0', '0', NULL, NULL),
('67', '17', '2', '2020-12-31', '1540', '', '28350', '0', '0', NULL, NULL),
('68', '17', '2', '2020-12-31', '5040', '', '-245000', '0', '0', NULL, NULL),
('69', '17', '2', '2020-12-31', '1540', '', '245000', '0', '0', NULL, NULL),
('70', '17', '2', '2020-12-31', '5040', '', '-105525', '0', '0', NULL, NULL),
('71', '17', '2', '2020-12-31', '1540', '', '105525', '0', '0', NULL, NULL),
('72', '0', '2', '2020-12-31', '5040', 'opening balance till LFAQL1', '1149575', '0', '0', NULL, NULL),
('73', '0', '2', '2020-12-31', '1540', 'OPENING BALANCE TILL LFAQL1', '-1149575', '0', '0', NULL, NULL),
('74', '17', '3', '2020-12-31', '5040', '', '-17637.5', '0', '0', NULL, NULL),
('75', '17', '3', '2020-12-31', '1540', '', '17637.5', '0', '0', NULL, NULL),
('76', '17', '3', '2020-12-31', '5040', '', '-51300', '0', '0', NULL, NULL),
('77', '17', '3', '2020-12-31', '1540', '', '51300', '0', '0', NULL, NULL),
('78', '0', '3', '2020-12-31', '5040', 'OPENING BALANCE TILL LFMNT2', '68937.5', '0', '0', NULL, NULL),
('79', '0', '3', '2020-12-31', '1540', 'OPENING BALANCE TILL LFMNT2', '-68937.5', '0', '0', NULL, NULL),
('80', '17', '4', '2020-12-31', '5040', '', '-33750', '0', '0', NULL, NULL),
('81', '17', '4', '2020-12-31', '1540', '', '33750', '0', '0', NULL, NULL),
('82', '17', '4', '2020-12-31', '5040', '', '-30500', '0', '0', NULL, NULL),
('83', '17', '4', '2020-12-31', '1540', '', '30500', '0', '0', NULL, NULL),
('84', '17', '4', '2020-12-31', '5040', '', '-25500', '0', '0', NULL, NULL),
('85', '17', '4', '2020-12-31', '1540', '', '25500', '0', '0', NULL, NULL),
('86', '17', '4', '2020-12-31', '5040', '', '-3200', '0', '0', NULL, NULL),
('87', '17', '4', '2020-12-31', '1540', '', '3200', '0', '0', NULL, NULL),
('88', '17', '4', '2020-12-31', '5040', '', '-13275', '0', '0', NULL, NULL),
('89', '17', '4', '2020-12-31', '1540', '', '13275', '0', '0', NULL, NULL),
('90', '17', '4', '2020-12-31', '5040', '', '-21200', '0', '0', NULL, NULL),
('91', '17', '4', '2020-12-31', '1540', '', '21200', '0', '0', NULL, NULL),
('92', '17', '4', '2020-12-31', '5040', '', '-22750', '0', '0', NULL, NULL),
('93', '17', '4', '2020-12-31', '1540', '', '22750', '0', '0', NULL, NULL),
('94', '17', '4', '2020-12-31', '5040', '', '-23800', '0', '0', NULL, NULL),
('95', '17', '4', '2020-12-31', '1540', '', '23800', '0', '0', NULL, NULL),
('96', '17', '4', '2020-12-31', '5040', '', '-10350', '0', '0', NULL, NULL),
('97', '17', '4', '2020-12-31', '1540', '', '10350', '0', '0', NULL, NULL),
('98', '17', '4', '2020-12-31', '5040', '', '-33615', '0', '0', NULL, NULL),
('99', '17', '4', '2020-12-31', '1540', '', '33615', '0', '0', NULL, NULL),
('100', '17', '4', '2020-12-31', '5040', '', '-3000', '0', '0', NULL, NULL),
('101', '17', '4', '2020-12-31', '1540', '', '3000', '0', '0', NULL, NULL),
('102', '17', '4', '2020-12-31', '5040', '', '-25850', '0', '0', NULL, NULL),
('103', '17', '4', '2020-12-31', '1540', '', '25850', '0', '0', NULL, NULL),
('104', '17', '4', '2020-12-31', '5040', '', '-14500', '0', '0', NULL, NULL),
('105', '17', '4', '2020-12-31', '1540', '', '14500', '0', '0', NULL, NULL),
('106', '17', '4', '2020-12-31', '5040', '', '-26350', '0', '0', NULL, NULL),
('107', '17', '4', '2020-12-31', '1540', '', '26350', '0', '0', NULL, NULL),
('108', '17', '4', '2020-12-31', '5040', '', '-14600', '0', '0', NULL, NULL),
('109', '17', '4', '2020-12-31', '1540', '', '14600', '0', '0', NULL, NULL),
('110', '17', '4', '2020-12-31', '5040', '', '-6400', '0', '0', NULL, NULL),
('111', '17', '4', '2020-12-31', '1540', '', '6400', '0', '0', NULL, NULL),
('112', '17', '4', '2020-12-31', '5040', '', '-22950', '0', '0', NULL, NULL),
('113', '17', '4', '2020-12-31', '1540', '', '22950', '0', '0', NULL, NULL),
('114', '17', '4', '2020-12-31', '5040', '', '-27500', '0', '0', NULL, NULL),
('115', '17', '4', '2020-12-31', '1540', '', '27500', '0', '0', NULL, NULL),
('116', '17', '4', '2020-12-31', '5040', '', '-19000', '0', '0', NULL, NULL),
('117', '17', '4', '2020-12-31', '1540', '', '19000', '0', '0', NULL, NULL),
('118', '17', '4', '2020-12-31', '5040', '', '-16200', '0', '0', NULL, NULL),
('119', '17', '4', '2020-12-31', '1540', '', '16200', '0', '0', NULL, NULL),
('120', '17', '4', '2020-12-31', '5040', '', '-55000', '0', '0', NULL, NULL),
('121', '17', '4', '2020-12-31', '1540', '', '55000', '0', '0', NULL, NULL),
('122', '17', '4', '2020-12-31', '5040', '', '-25500', '0', '0', NULL, NULL),
('123', '17', '4', '2020-12-31', '1540', '', '25500', '0', '0', NULL, NULL),
('124', '17', '4', '2020-12-31', '5040', '', '-6825', '0', '0', NULL, NULL),
('125', '17', '4', '2020-12-31', '1540', '', '6825', '0', '0', NULL, NULL),
('126', '17', '4', '2020-12-31', '5040', '', '-4500', '0', '0', NULL, NULL),
('127', '17', '4', '2020-12-31', '1540', '', '4500', '0', '0', NULL, NULL),
('128', '17', '4', '2020-12-31', '5040', '', '-25200', '0', '0', NULL, NULL),
('129', '17', '4', '2020-12-31', '1540', '', '25200', '0', '0', NULL, NULL),
('130', '17', '4', '2020-12-31', '5040', '', '-9030', '0', '0', NULL, NULL),
('131', '17', '4', '2020-12-31', '1540', '', '9030', '0', '0', NULL, NULL),
('132', '17', '4', '2020-12-31', '5040', '', '-5400', '0', '0', NULL, NULL),
('133', '17', '4', '2020-12-31', '1540', '', '5400', '0', '0', NULL, NULL),
('134', '17', '4', '2020-12-31', '5040', '', '-7650', '0', '0', NULL, NULL),
('135', '17', '4', '2020-12-31', '1540', '', '7650', '0', '0', NULL, NULL),
('136', '17', '4', '2020-12-31', '5040', '', '-3600', '0', '0', NULL, NULL),
('137', '17', '4', '2020-12-31', '1540', '', '3600', '0', '0', NULL, NULL),
('138', '17', '4', '2020-12-31', '5040', '', '-18900', '0', '0', NULL, NULL),
('139', '17', '4', '2020-12-31', '1540', '', '18900', '0', '0', NULL, NULL),
('140', '17', '4', '2020-12-31', '5040', '', '-10000', '0', '0', NULL, NULL),
('141', '17', '4', '2020-12-31', '1540', '', '10000', '0', '0', NULL, NULL),
('142', '17', '4', '2020-12-31', '5040', '', '-21000', '0', '0', NULL, NULL),
('143', '17', '4', '2020-12-31', '1540', '', '21000', '0', '0', NULL, NULL),
('144', '17', '4', '2020-12-31', '5040', '', '-12600', '0', '0', NULL, NULL),
('145', '17', '4', '2020-12-31', '1540', '', '12600', '0', '0', NULL, NULL),
('146', '17', '4', '2020-12-31', '5040', '', '-29500', '0', '0', NULL, NULL),
('147', '17', '4', '2020-12-31', '1540', '', '29500', '0', '0', NULL, NULL),
('148', '17', '4', '2020-12-31', '5040', '', '-168875', '0', '0', NULL, NULL),
('149', '17', '4', '2020-12-31', '1540', '', '168875', '0', '0', NULL, NULL),
('150', '17', '4', '2020-12-31', '5040', '', '-161595', '0', '0', NULL, NULL),
('151', '17', '4', '2020-12-31', '1540', '', '161595', '0', '0', NULL, NULL),
('152', '17', '4', '2020-12-31', '5040', '', '-41600', '0', '0', NULL, NULL),
('153', '17', '4', '2020-12-31', '1540', '', '41600', '0', '0', NULL, NULL),
('154', '17', '4', '2020-12-31', '5040', '', '-57600', '0', '0', NULL, NULL),
('155', '17', '4', '2020-12-31', '1540', '', '57600', '0', '0', NULL, NULL),
('156', '17', '4', '2020-12-31', '5040', '', '-2500', '0', '0', NULL, NULL),
('157', '17', '4', '2020-12-31', '1540', '', '2500', '0', '0', NULL, NULL),
('158', '17', '4', '2020-12-31', '5040', '', '-73500', '0', '0', NULL, NULL),
('159', '17', '4', '2020-12-31', '1540', '', '73500', '0', '0', NULL, NULL),
('160', '17', '4', '2020-12-31', '5040', '', '-28000', '0', '0', NULL, NULL),
('161', '17', '4', '2020-12-31', '1540', '', '28000', '0', '0', NULL, NULL),
('162', '17', '4', '2020-12-31', '5040', '', '-55500', '0', '0', NULL, NULL),
('163', '17', '4', '2020-12-31', '1540', '', '55500', '0', '0', NULL, NULL),
('164', '17', '4', '2020-12-31', '5040', '', '-121500', '0', '0', NULL, NULL),
('165', '17', '4', '2020-12-31', '1540', '', '121500', '0', '0', NULL, NULL),
('166', '17', '4', '2020-12-31', '5040', '', '-31050', '0', '0', NULL, NULL),
('167', '17', '4', '2020-12-31', '1540', '', '31050', '0', '0', NULL, NULL),
('168', '17', '4', '2020-12-31', '5040', '', '-133875', '0', '0', NULL, NULL),
('169', '17', '4', '2020-12-31', '1540', '', '133875', '0', '0', NULL, NULL),
('170', '17', '4', '2020-12-31', '5040', '', '-185625', '0', '0', NULL, NULL),
('171', '17', '4', '2020-12-31', '1540', '', '185625', '0', '0', NULL, NULL),
('172', '17', '4', '2020-12-31', '5040', '', '-172125', '0', '0', NULL, NULL),
('173', '17', '4', '2020-12-31', '1540', '', '172125', '0', '0', NULL, NULL),
('174', '17', '4', '2020-12-31', '5040', '', '-289250', '0', '0', NULL, NULL),
('175', '17', '4', '2020-12-31', '1540', '', '289250', '0', '0', NULL, NULL),
('176', '17', '4', '2020-12-31', '5040', '', '-56025', '0', '0', NULL, NULL),
('177', '17', '4', '2020-12-31', '1540', '', '56025', '0', '0', NULL, NULL),
('178', '17', '4', '2020-12-31', '5040', '', '-93555', '0', '0', NULL, NULL),
('179', '17', '4', '2020-12-31', '1540', '', '93555', '0', '0', NULL, NULL),
('180', '17', '4', '2020-12-31', '5040', '', '-6480', '0', '0', NULL, NULL),
('181', '17', '4', '2020-12-31', '1540', '', '6480', '0', '0', NULL, NULL),
('182', '17', '4', '2020-12-31', '5040', '', '-9990', '0', '0', NULL, NULL),
('183', '17', '4', '2020-12-31', '1540', '', '9990', '0', '0', NULL, NULL),
('184', '17', '4', '2020-12-31', '5040', '', '-6660', '0', '0', NULL, NULL),
('185', '17', '4', '2020-12-31', '1540', '', '6660', '0', '0', NULL, NULL),
('186', '17', '4', '2020-12-31', '5040', '', '-78435', '0', '0', NULL, NULL),
('187', '17', '4', '2020-12-31', '1540', '', '78435', '0', '0', NULL, NULL),
('188', '17', '4', '2020-12-31', '5040', '', '-117040', '0', '0', NULL, NULL),
('189', '17', '4', '2020-12-31', '1540', '', '117040', '0', '0', NULL, NULL),
('190', '17', '4', '2020-12-31', '5040', '', '-70312.5', '0', '0', NULL, NULL),
('191', '17', '4', '2020-12-31', '1540', '', '70312.5', '0', '0', NULL, NULL),
('192', '17', '4', '2020-12-31', '5040', '', '-79950', '0', '0', NULL, NULL),
('193', '17', '4', '2020-12-31', '1540', '', '79950', '0', '0', NULL, NULL),
('194', '17', '4', '2020-12-31', '5040', '', '-40300', '0', '0', NULL, NULL),
('195', '17', '4', '2020-12-31', '1540', '', '40300', '0', '0', NULL, NULL),
('196', '0', '4', '2020-12-31', '5040', 'OPENING BALANCE TILL LFDK2', '2710337.5', '0', '0', NULL, NULL),
('197', '0', '4', '2020-12-31', '1540', 'OPENING BALANCE TILL LFDK2', '-2710337.5', '0', '0', NULL, NULL),
('198', '20', '2', '2020-12-31', '2100', '', '-223640', '0', '0', '3', '4'),
('199', '20', '2', '2020-12-31', '2100', 'OB ', '223640', '0', '0', '3', '4'),
('200', '20', '3', '2020-12-31', '2100', '', '-470015', '0', '0', '3', '10'),
('201', '20', '3', '2020-12-31', '2100', 'OB ', '470015', '0', '0', '3', '10'),
('202', '20', '4', '2020-12-31', '2100', '', '-64440', '0', '0', '3', '5'),
('203', '20', '4', '2020-12-31', '2100', 'OB ', '64440', '0', '0', '3', '5'),
('204', '20', '5', '2020-12-31', '2100', '', '-726934', '0', '0', '3', '1'),
('205', '20', '5', '2020-12-31', '2100', 'OB ', '726934', '0', '0', '3', '1'),
('206', '17', '5', '2020-12-31', '5040', '', '-31237.5', '0', '0', NULL, NULL),
('207', '17', '5', '2020-12-31', '1540', '', '31237.5', '0', '0', NULL, NULL),
('208', '17', '5', '2020-12-31', '5040', '', '-14700', '0', '0', NULL, NULL),
('209', '17', '5', '2020-12-31', '1540', '', '14700', '0', '0', NULL, NULL),
('210', '17', '5', '2020-12-31', '5040', '', '-10937.5', '0', '0', NULL, NULL),
('211', '17', '5', '2020-12-31', '1540', '', '10937.5', '0', '0', NULL, NULL),
('212', '0', '5', '2020-12-31', '5040', 'OPENING BALANCE TILL LFTS9', '56875', '0', '0', NULL, NULL),
('213', '0', '5', '2020-12-31', '1540', 'OPENING BALANCE TILL LFTS9', '-56875', '0', '0', NULL, NULL),
('214', '17', '6', '2020-12-31', '5040', '', '17220', '0', '0', NULL, NULL),
('215', '17', '6', '2020-12-31', '1540', '', '-17220', '0', '0', NULL, NULL),
('216', '20', '6', '2020-12-31', '2100', '', '-742323', '0', '0', '3', '6'),
('217', '20', '6', '2020-12-31', '2100', 'OB ', '742323', '0', '0', '3', '6'),
('218', '20', '7', '2020-12-31', '2100', '', '-155274', '0', '0', '3', '9'),
('219', '20', '7', '2020-12-31', '2100', 'OB ', '155274', '0', '0', '3', '9'),
('220', '0', '6', '2020-12-31', '1540', '', '5278255', '0', '0', NULL, NULL),
('221', '0', '6', '2020-12-31', '2385', '', '-2382626', '0', '0', NULL, NULL),
('222', '0', '6', '2020-12-31', '3590', '', '-2895629', '0', '0', NULL, NULL),
('223', '0', '7', '2020-12-31', '1540', '', '17220', '0', '0', NULL, NULL),
('224', '0', '7', '2020-12-31', '5040', '', '-17220', '0', '0', NULL, NULL),
('225', '13', '1', '2021-03-08', '5010', '', '7000', '0', '0', NULL, NULL),
('226', '13', '1', '2021-03-08', '1540', '', '-7000', '0', '0', NULL, NULL),
('227', '13', '1', '2021-03-08', '5010', '', '2100', '0', '0', NULL, NULL),
('228', '13', '1', '2021-03-08', '1540', '', '-2100', '0', '0', NULL, NULL),
('229', '10', '1', '2021-03-08', '4010', '', '-10400', '0', '0', NULL, NULL),
('230', '10', '1', '2021-03-08', '4010', '', '-7500', '0', '0', NULL, NULL),
('231', '10', '1', '2021-03-08', '1200', '', '17900', '0', '0', '2', '12'),
('232', '12', '1', '2021-03-08', '1215', '', '17900', '0', '0', NULL, NULL),
('233', '12', '1', '2021-03-08', '1200', '', '-17900', '0', '0', '2', '12'),
('234', '13', '2', '2021-03-06', '5010', '', '4000', '0', '0', NULL, NULL),
('235', '13', '2', '2021-03-06', '1540', '', '-4000', '0', '0', NULL, NULL),
('236', '13', '2', '2021-03-06', '5010', '', '1800', '0', '0', NULL, NULL),
('237', '13', '2', '2021-03-06', '1540', '', '-1800', '0', '0', NULL, NULL),
('238', '10', '2', '2021-03-06', '4010', '', '-4200', '0', '0', NULL, NULL),
('239', '10', '2', '2021-03-06', '4010', '', '-3000', '0', '0', NULL, NULL),
('240', '10', '2', '2021-03-06', '1200', '', '7200', '0', '0', '2', '12'),
('241', '12', '2', '2021-03-06', '1215', '', '7200', '0', '0', NULL, NULL),
('242', '12', '2', '2021-03-06', '1200', '', '-7200', '0', '0', '2', '12'),
('243', '13', '3', '2021-03-06', '5010', '', '5200', '0', '0', NULL, NULL),
('244', '13', '3', '2021-03-06', '1540', '', '-5200', '0', '0', NULL, NULL),
('245', '13', '3', '2021-03-06', '5010', '', '1800', '0', '0', NULL, NULL),
('246', '13', '3', '2021-03-06', '1540', '', '-1800', '0', '0', NULL, NULL),
('247', '13', '3', '2021-03-06', '5010', '', '1600', '0', '0', NULL, NULL),
('248', '13', '3', '2021-03-06', '1540', '', '-1600', '0', '0', NULL, NULL),
('249', '10', '3', '2021-03-06', '4010', '', '-7200', '0', '0', NULL, NULL),
('250', '10', '3', '2021-03-06', '4010', '', '-3200', '0', '0', NULL, NULL),
('251', '10', '3', '2021-03-06', '4010', '', '-3600', '0', '0', NULL, NULL),
('252', '10', '3', '2021-03-06', '1200', '', '14000', '0', '0', '2', '12'),
('253', '12', '3', '2021-03-06', '1215', '', '14000', '0', '0', NULL, NULL),
('254', '12', '3', '2021-03-06', '1200', '', '-14000', '0', '0', '2', '12'),
('255', '13', '4', '2021-03-06', '5010', '', '2800', '0', '0', NULL, NULL),
('256', '13', '4', '2021-03-06', '1540', '', '-2800', '0', '0', NULL, NULL),
('257', '10', '4', '2021-03-06', '4010', '', '-10000', '0', '0', NULL, NULL),
('258', '10', '4', '2021-03-06', '1200', '', '10000', '0', '0', '2', '12'),
('259', '12', '4', '2021-03-06', '1215', '', '10000', '0', '0', NULL, NULL),
('260', '12', '4', '2021-03-06', '1200', '', '-10000', '0', '0', '2', '12'),
('261', '13', '5', '2021-03-10', '5010', '', '1600', '0', '0', NULL, NULL),
('262', '13', '5', '2021-03-10', '1540', '', '-1600', '0', '0', NULL, NULL),
('263', '10', '5', '2021-03-10', '4010', '', '-3200', '0', '0', NULL, NULL),
('264', '10', '5', '2021-03-10', '1200', '', '3200', '0', '0', '2', '12'),
('265', '12', '5', '2021-03-10', '1215', '', '3200', '0', '0', NULL, NULL),
('266', '12', '5', '2021-03-10', '1200', '', '-3200', '0', '0', '2', '12'),
('267', '13', '6', '2021-03-06', '5010', '', '2400', '0', '0', NULL, NULL),
('268', '13', '6', '2021-03-06', '1540', '', '-2400', '0', '0', NULL, NULL),
('269', '10', '6', '2021-03-06', '4010', '', '-6000', '0', '0', NULL, NULL),
('270', '10', '6', '2021-03-06', '1200', '', '6000', '0', '0', '2', '12'),
('271', '12', '6', '2021-03-06', '1215', '', '6000', '0', '0', NULL, NULL),
('272', '12', '6', '2021-03-06', '1200', '', '-6000', '0', '0', '2', '12'),
('273', '13', '7', '2021-03-06', '5010', '', '1800', '0', '0', NULL, NULL),
('274', '13', '7', '2021-03-06', '1540', '', '-1800', '0', '0', NULL, NULL),
('275', '10', '7', '2021-03-06', '4010', '', '-3500', '0', '0', NULL, NULL),
('276', '10', '7', '2021-03-06', '1200', '', '3500', '0', '0', '2', '12'),
('277', '12', '7', '2021-03-06', '1215', '', '3500', '0', '0', NULL, NULL),
('278', '12', '7', '2021-03-06', '1200', '', '-3500', '0', '0', '2', '12'),
('279', '13', '8', '2021-03-06', '5010', '', '3735', '0', '0', NULL, NULL),
('280', '13', '8', '2021-03-06', '1540', '', '-3735', '0', '0', NULL, NULL),
('281', '13', '8', '2021-03-06', '5010', '', '2100', '0', '0', NULL, NULL),
('282', '13', '8', '2021-03-06', '1540', '', '-2100', '0', '0', NULL, NULL),
('283', '10', '8', '2021-03-06', '4010', '', '-4702.5', '0', '0', NULL, NULL),
('284', '10', '8', '2021-03-06', '4010', '', '-3500', '0', '0', NULL, NULL),
('285', '10', '8', '2021-03-06', '1200', '', '8200', '0', '0', '2', '12'),
('286', '10', '8', '2021-03-06', '4430', '', '2.5', '0', '0', NULL, NULL),
('287', '12', '8', '2021-03-06', '1215', '', '8200', '0', '0', NULL, NULL),
('288', '12', '8', '2021-03-06', '1200', '', '-8200', '0', '0', '2', '12'),
('289', '13', '9', '2021-03-06', '5010', '', '1800', '0', '0', NULL, NULL),
('290', '13', '9', '2021-03-06', '1540', '', '-1800', '0', '0', NULL, NULL),
('291', '10', '9', '2021-03-06', '4010', '', '-3500', '0', '0', NULL, NULL),
('292', '10', '9', '2021-03-06', '1200', '', '3500', '0', '0', '2', '12'),
('293', '12', '9', '2021-03-06', '1215', '', '3500', '0', '0', NULL, NULL),
('294', '12', '9', '2021-03-06', '1200', '', '-3500', '0', '0', '2', '12'),
('295', '13', '10', '2021-03-07', '5010', '', '1800', '0', '0', NULL, NULL),
('296', '13', '10', '2021-03-07', '1540', '', '-1800', '0', '0', NULL, NULL),
('297', '10', '10', '2021-03-07', '4010', '', '-3500', '0', '0', NULL, NULL),
('298', '10', '10', '2021-03-07', '1200', '', '3500', '0', '0', '2', '12'),
('299', '12', '10', '2021-03-07', '1215', '', '3500', '0', '0', NULL, NULL),
('300', '12', '10', '2021-03-07', '1200', '', '-3500', '0', '0', '2', '12'),
('301', '13', '11', '2021-03-07', '5010', '', '2600', '0', '0', NULL, NULL),
('302', '13', '11', '2021-03-07', '1540', '', '-2600', '0', '0', NULL, NULL),
('303', '10', '11', '2021-03-07', '4010', '', '-5400', '0', '0', NULL, NULL),
('304', '10', '11', '2021-03-07', '1200', '', '5400', '0', '0', '2', '12'),
('305', '12', '11', '2021-03-07', '1215', '', '5400', '0', '0', NULL, NULL),
('306', '12', '11', '2021-03-07', '1200', '', '-5400', '0', '0', '2', '12'),
('307', '13', '12', '2021-03-07', '5010', '', '1800', '0', '0', NULL, NULL),
('308', '13', '12', '2021-03-07', '1540', '', '-1800', '0', '0', NULL, NULL),
('309', '10', '12', '2021-03-07', '4010', '', '-3500', '0', '0', NULL, NULL),
('310', '10', '12', '2021-03-07', '1200', '', '3500', '0', '0', '2', '12'),
('311', '12', '12', '2021-03-07', '1215', '', '3500', '0', '0', NULL, NULL),
('312', '12', '12', '2021-03-07', '1200', '', '-3500', '0', '0', '2', '12'),
('313', '13', '13', '2021-03-08', '5010', '', '6300', '0', '0', NULL, NULL),
('314', '13', '13', '2021-03-08', '1540', '', '-6300', '0', '0', NULL, NULL),
('315', '10', '13', '2021-03-08', '4010', '', '-15999.75', '0', '0', NULL, NULL),
('316', '10', '13', '2021-03-08', '1200', '', '15999.75', '0', '0', '2', '12'),
('317', '12', '13', '2021-03-08', '1215', '', '15999.75', '0', '0', NULL, NULL),
('318', '12', '13', '2021-03-08', '1200', '', '-15999.75', '0', '0', '2', '12'),
('319', '13', '14', '2021-03-08', '5010', '', '1600', '0', '0', NULL, NULL),
('320', '13', '14', '2021-03-08', '1540', '', '-1600', '0', '0', NULL, NULL),
('321', '13', '14', '2021-03-08', '5010', '', '5200', '0', '0', NULL, NULL),
('322', '13', '14', '2021-03-08', '1540', '', '-5200', '0', '0', NULL, NULL),
('323', '13', '14', '2021-03-08', '5010', '', '2000', '0', '0', NULL, NULL),
('324', '13', '14', '2021-03-08', '1540', '', '-2000', '0', '0', NULL, NULL),
('325', '10', '14', '2021-03-08', '4010', '', '-4000', '0', '0', NULL, NULL),
('326', '10', '14', '2021-03-08', '4010', '', '-7200', '0', '0', NULL, NULL),
('327', '10', '14', '2021-03-08', '4010', '', '-2800', '0', '0', NULL, NULL),
('328', '10', '14', '2021-03-08', '1200', '', '14000', '0', '0', '2', '12'),
('329', '12', '14', '2021-03-08', '1215', '', '14000', '0', '0', NULL, NULL),
('330', '12', '14', '2021-03-08', '1200', '', '-14000', '0', '0', '2', '12'),
('331', '13', '15', '2021-03-08', '5010', '', '2925', '0', '0', NULL, NULL),
('332', '13', '15', '2021-03-08', '1540', '', '-2925', '0', '0', NULL, NULL),
('333', '13', '15', '2021-03-08', '5010', '', '5670', '0', '0', NULL, NULL),
('334', '13', '15', '2021-03-08', '1540', '', '-5670', '0', '0', NULL, NULL),
('335', '10', '15', '2021-03-08', '4010', '', '-9999', '0', '0', NULL, NULL),
('336', '10', '15', '2021-03-08', '4010', '', '-9999', '0', '0', NULL, NULL),
('337', '10', '15', '2021-03-08', '1200', '', '19998', '0', '0', '2', '12'),
('338', '12', '15', '2021-03-08', '1215', '', '19998', '0', '0', NULL, NULL),
('339', '12', '15', '2021-03-08', '1200', '', '-19998', '0', '0', '2', '12'),
('340', '13', '16', '2021-03-08', '5010', '', '2835', '0', '0', NULL, NULL),
('341', '13', '16', '2021-03-08', '1540', '', '-2835', '0', '0', NULL, NULL),
('342', '10', '16', '2021-03-08', '4010', '', '-5400', '0', '0', NULL, NULL),
('343', '10', '16', '2021-03-08', '1200', '', '5400', '0', '0', '2', '12'),
('344', '12', '16', '2021-03-08', '1215', '', '5400', '0', '0', NULL, NULL),
('345', '12', '16', '2021-03-08', '1200', '', '-5400', '0', '0', '2', '12'),
('346', '13', '17', '2021-03-08', '5010', '', '12000', '0', '0', NULL, NULL),
('347', '13', '17', '2021-03-08', '1540', '', '-12000', '0', '0', NULL, NULL),
('348', '13', '17', '2021-03-08', '5010', '', '2835', '0', '0', NULL, NULL),
('349', '13', '17', '2021-03-08', '1540', '', '-2835', '0', '0', NULL, NULL),
('350', '13', '17', '2021-03-08', '5010', '', '1600', '0', '0', NULL, NULL),
('351', '13', '17', '2021-03-08', '1540', '', '-1600', '0', '0', NULL, NULL),
('352', '10', '17', '2021-03-08', '4010', '', '-19200', '0', '0', NULL, NULL),
('353', '10', '17', '2021-03-08', '4010', '', '-5400', '0', '0', NULL, NULL),
('354', '10', '17', '2021-03-08', '4010', '', '-3200', '0', '0', NULL, NULL),
('355', '10', '17', '2021-03-08', '1200', '', '27800', '0', '0', '2', '12'),
('356', '12', '17', '2021-03-08', '1215', '', '27800', '0', '0', NULL, NULL),
('357', '12', '17', '2021-03-08', '1200', '', '-27800', '0', '0', '2', '12'),
('358', '13', '18', '2021-03-08', '5010', '', '0', '0', '0', NULL, NULL),
('359', '13', '18', '2021-03-08', '1540', '', '0', '0', '0', NULL, NULL),
('360', '10', '18', '2021-03-08', '4010', '', '0', '0', '0', NULL, NULL),
('361', '10', '18', '2021-03-08', '1200', '', '0', '0', '0', '2', '12'),
('362', '12', '18', '2021-03-08', '1215', '', '3600', '0', '0', NULL, NULL),
('363', '12', '18', '2021-03-08', '1200', '', '-3600', '0', '0', '2', '12'),
('364', '13', '19', '2021-03-08', '5010', '', '0', '0', '0', NULL, NULL),
('365', '13', '19', '2021-03-08', '1540', '', '0', '0', '0', NULL, NULL),
('366', '10', '19', '2021-03-08', '4010', '', '0', '0', '0', NULL, NULL),
('367', '10', '19', '2021-03-08', '1200', '', '0', '0', '0', '2', '12'),
('368', '12', '19', '2021-03-08', '1215', '', '3800', '0', '0', NULL, NULL),
('369', '12', '19', '2021-03-08', '1200', '', '-3800', '0', '0', '2', '12'),
('370', '13', '20', '2021-03-09', '5010', '', '2000', '0', '0', NULL, NULL),
('371', '13', '20', '2021-03-09', '1540', '', '-2000', '0', '0', NULL, NULL),
('372', '10', '20', '2021-03-09', '4010', '', '-3600', '0', '0', NULL, NULL),
('373', '10', '20', '2021-03-09', '1200', '', '3600', '0', '0', '2', '12'),
('374', '12', '20', '2021-03-09', '1215', '', '0', '0', '0', NULL, NULL),
('375', '12', '20', '2021-03-09', '1200', '', '0', '0', '0', '2', '12'),
('376', '13', '21', '2021-03-09', '5010', '', '1600', '0', '0', NULL, NULL),
('377', '13', '21', '2021-03-09', '1540', '', '-1600', '0', '0', NULL, NULL),
('378', '10', '21', '2021-03-09', '4010', '', '-3800', '0', '0', NULL, NULL),
('379', '10', '21', '2021-03-09', '1200', '', '3800', '0', '0', '2', '12'),
('380', '12', '21', '2021-03-09', '1215', '', '0', '0', '0', NULL, NULL),
('381', '12', '21', '2021-03-09', '1200', '', '0', '0', '0', '2', '12'),
('382', '13', '22', '2021-03-09', '5010', '', '2835', '0', '0', NULL, NULL),
('383', '13', '22', '2021-03-09', '1540', '', '-2835', '0', '0', NULL, NULL),
('384', '10', '22', '2021-03-09', '4010', '', '-5400', '0', '0', NULL, NULL),
('385', '10', '22', '2021-03-09', '1200', '', '5400', '0', '0', '2', '12'),
('386', '12', '22', '2021-03-09', '1215', '', '5400', '0', '0', NULL, NULL),
('387', '12', '22', '2021-03-09', '1200', '', '-5400', '0', '0', '2', '12'),
('388', '13', '23', '2021-03-09', '5010', '', '1800', '0', '0', NULL, NULL),
('389', '13', '23', '2021-03-09', '1540', '', '-1800', '0', '0', NULL, NULL),
('390', '10', '23', '2021-03-09', '4010', '', '-4200', '0', '0', NULL, NULL),
('391', '10', '23', '2021-03-09', '1200', '', '4200', '0', '0', '2', '12'),
('392', '12', '23', '2021-03-09', '1215', '', '4200', '0', '0', NULL, NULL),
('393', '12', '23', '2021-03-09', '1200', '', '-4200', '0', '0', '2', '12'),
('394', '13', '24', '2021-03-10', '5010', '', '5400', '0', '0', NULL, NULL),
('395', '13', '24', '2021-03-10', '1540', '', '-5400', '0', '0', NULL, NULL),
('396', '13', '24', '2021-03-10', '5010', '', '1800', '0', '0', NULL, NULL),
('397', '13', '24', '2021-03-10', '1540', '', '-1800', '0', '0', NULL, NULL),
('398', '10', '24', '2021-03-10', '4010', '', '-9000', '0', '0', NULL, NULL),
('399', '10', '24', '2021-03-10', '4010', '', '-5600', '0', '0', NULL, NULL),
('400', '10', '24', '2021-03-10', '1200', '', '14600', '0', '0', '2', '12'),
('401', '12', '24', '2021-03-10', '1215', '', '14600', '0', '0', NULL, NULL),
('402', '12', '24', '2021-03-10', '1200', '', '-14600', '0', '0', '2', '12'),
('403', '13', '25', '2021-03-10', '5010', '', '6000', '0', '0', NULL, NULL),
('404', '13', '25', '2021-03-10', '1540', '', '-6000', '0', '0', NULL, NULL),
('405', '13', '25', '2021-03-10', '5010', '', '2000', '0', '0', NULL, NULL),
('406', '13', '25', '2021-03-10', '1540', '', '-2000', '0', '0', NULL, NULL),
('407', '10', '25', '2021-03-10', '4010', '', '-10000', '0', '0', NULL, NULL),
('408', '10', '25', '2021-03-10', '4010', '', '-4000', '0', '0', NULL, NULL),
('409', '10', '25', '2021-03-10', '1200', '', '14000', '0', '0', '2', '12'),
('410', '12', '25', '2021-03-10', '1215', '', '14000', '0', '0', NULL, NULL),
('411', '12', '25', '2021-03-10', '1200', '', '-14000', '0', '0', '2', '12'),
('412', '13', '26', '2021-03-10', '5010', '', '10400', '0', '0', NULL, NULL),
('413', '13', '26', '2021-03-10', '1540', '', '-10400', '0', '0', NULL, NULL),
('414', '13', '26', '2021-03-10', '5010', '', '1800', '0', '0', NULL, NULL),
('415', '13', '26', '2021-03-10', '1540', '', '-1800', '0', '0', NULL, NULL),
('416', '10', '26', '2021-03-10', '4010', '', '-14400', '0', '0', NULL, NULL),
('417', '10', '26', '2021-03-10', '4010', '', '-2800', '0', '0', NULL, NULL),
('418', '10', '26', '2021-03-10', '1200', '', '17200', '0', '0', '2', '12'),
('419', '12', '26', '2021-03-10', '1215', '', '17200', '0', '0', NULL, NULL),
('420', '12', '26', '2021-03-10', '1200', '', '-17200', '0', '0', '2', '12'),
('421', '13', '27', '2021-03-10', '5010', '', '2100', '0', '0', NULL, NULL),
('422', '13', '27', '2021-03-10', '1540', '', '-2100', '0', '0', NULL, NULL),
('423', '10', '27', '2021-03-10', '4010', '', '-9600', '0', '0', NULL, NULL),
('424', '10', '27', '2021-03-10', '1200', '', '9600', '0', '0', '2', '12'),
('425', '12', '27', '2021-03-10', '1215', '', '9600', '0', '0', NULL, NULL),
('426', '12', '27', '2021-03-10', '1200', '', '-9600', '0', '0', '2', '12'),
('427', '13', '28', '2021-03-10', '5010', '', '2835', '0', '0', NULL, NULL),
('428', '13', '28', '2021-03-10', '1540', '', '-2835', '0', '0', NULL, NULL),
('429', '10', '28', '2021-03-10', '4010', '', '-4999.5', '0', '0', NULL, NULL),
('430', '10', '28', '2021-03-10', '1200', '', '5000', '0', '0', '2', '12'),
('431', '10', '28', '2021-03-10', '4430', '', '-0.5', '0', '0', NULL, NULL),
('432', '12', '28', '2021-03-10', '1215', '', '5000', '0', '0', NULL, NULL),
('433', '12', '28', '2021-03-10', '1200', '', '-5000', '0', '0', '2', '12'),
('434', '13', '29', '2021-03-11', '5010', '', '4500', '0', '0', NULL, NULL),
('435', '13', '29', '2021-03-11', '1540', '', '-4500', '0', '0', NULL, NULL),
('436', '10', '29', '2021-03-11', '4010', '', '-5240', '0', '0', NULL, NULL),
('437', '10', '29', '2021-03-11', '1200', '', '5240', '0', '0', '2', '12'),
('438', '12', '29', '2021-03-11', '1215', '', '5240', '0', '0', NULL, NULL),
('439', '12', '29', '2021-03-11', '1200', '', '-5240', '0', '0', '2', '12'),
('440', '13', '30', '2021-03-11', '5010', '', '2800', '0', '0', NULL, NULL),
('441', '13', '30', '2021-03-11', '1540', '', '-2800', '0', '0', NULL, NULL),
('442', '10', '30', '2021-03-11', '4010', '', '-9999.5', '0', '0', NULL, NULL),
('443', '10', '30', '2021-03-11', '1200', '', '10000', '0', '0', '2', '12'),
('444', '10', '30', '2021-03-11', '4430', '', '-0.5', '0', '0', NULL, NULL),
('445', '12', '30', '2021-03-11', '1215', '', '10000', '0', '0', NULL, NULL),
('446', '12', '30', '2021-03-11', '1200', '', '-10000', '0', '0', '2', '12'),
('447', '13', '31', '2021-03-11', '5010', '', '5200', '0', '0', NULL, NULL),
('448', '13', '31', '2021-03-11', '1540', '', '-5200', '0', '0', NULL, NULL),
('449', '10', '31', '2021-03-11', '4010', '', '-7200', '0', '0', NULL, NULL),
('450', '10', '31', '2021-03-11', '1200', '', '7200', '0', '0', '2', '12'),
('451', '12', '31', '2021-03-11', '1215', '', '7200', '0', '0', NULL, NULL),
('452', '12', '31', '2021-03-11', '1200', '', '-7200', '0', '0', '2', '12'),
('453', '13', '32', '2021-03-11', '5010', '', '2100', '0', '0', NULL, NULL),
('454', '13', '32', '2021-03-11', '1540', '', '-2100', '0', '0', NULL, NULL),
('455', '10', '32', '2021-03-11', '4010', '', '-7998', '0', '0', NULL, NULL),
('456', '10', '32', '2021-03-11', '1200', '', '8000', '0', '0', '2', '12'),
('457', '10', '32', '2021-03-11', '4430', '', '-2', '0', '0', NULL, NULL),
('458', '12', '32', '2021-03-11', '1215', '', '8000', '0', '0', NULL, NULL),
('459', '12', '32', '2021-03-11', '1200', '', '-8000', '0', '0', '2', '12'),
('460', '13', '33', '2021-03-11', '5010', '', '2100', '0', '0', NULL, NULL),
('461', '13', '33', '2021-03-11', '1540', '', '-2100', '0', '0', NULL, NULL),
('462', '13', '33', '2021-03-11', '5010', '', '7000', '0', '0', NULL, NULL),
('463', '13', '33', '2021-03-11', '1540', '', '-7000', '0', '0', NULL, NULL),
('464', '13', '33', '2021-03-11', '5010', '', '3735', '0', '0', NULL, NULL),
('465', '13', '33', '2021-03-11', '1540', '', '-3735', '0', '0', NULL, NULL),
('466', '13', '33', '2021-03-11', '5010', '', '2275', '0', '0', NULL, NULL),
('467', '13', '33', '2021-03-11', '1540', '', '-2275', '0', '0', NULL, NULL),
('468', '13', '33', '2021-03-11', '5010', '', '1800', '0', '0', NULL, NULL),
('469', '13', '33', '2021-03-11', '1540', '', '-1800', '0', '0', NULL, NULL),
('470', '13', '33', '2021-03-11', '5010', '', '1462.5', '0', '0', NULL, NULL),
('471', '13', '33', '2021-03-11', '1540', '', '-1462.5', '0', '0', NULL, NULL),
('472', '10', '33', '2021-03-11', '4010', '', '-5500', '0', '0', NULL, NULL),
('473', '10', '33', '2021-03-11', '4010', '', '-25000', '0', '0', NULL, NULL),
('474', '10', '33', '2021-03-11', '4010', '', '-4698', '0', '0', NULL, NULL),
('475', '10', '33', '2021-03-11', '4010', '', '-3500', '0', '0', NULL, NULL),
('476', '10', '33', '2021-03-11', '4010', '', '-5625', '0', '0', NULL, NULL),
('477', '10', '33', '2021-03-11', '4010', '', '-5625', '0', '0', NULL, NULL),
('478', '10', '33', '2021-03-11', '1200', '', '49950', '0', '0', '2', '12'),
('479', '10', '33', '2021-03-11', '4430', '', '-2', '0', '0', NULL, NULL),
('480', '12', '33', '2021-03-11', '1215', '', '49950', '0', '0', NULL, NULL),
('481', '12', '33', '2021-03-11', '1200', '', '-49950', '0', '0', '2', '12'),
('482', '13', '34', '2021-03-12', '5010', '', '6400', '0', '0', NULL, NULL),
('483', '13', '34', '2021-03-12', '1540', '', '-6400', '0', '0', NULL, NULL),
('484', '13', '34', '2021-03-12', '5010', '', '8100', '0', '0', NULL, NULL),
('485', '13', '34', '2021-03-12', '1540', '', '-8100', '0', '0', NULL, NULL),
('486', '10', '34', '2021-03-12', '4010', '', '-7640', '0', '0', NULL, NULL),
('487', '10', '34', '2021-03-12', '4010', '', '-9630', '0', '0', NULL, NULL),
('488', '10', '34', '2021-03-12', '1200', '', '17270', '0', '0', '2', '12'),
('489', '12', '34', '2021-03-12', '1215', '', '17270', '0', '0', NULL, NULL),
('490', '12', '34', '2021-03-12', '1200', '', '-17270', '0', '0', '2', '12'),
('491', '13', '35', '2021-03-12', '5010', '', '1600', '0', '0', NULL, NULL),
('492', '13', '35', '2021-03-12', '1540', '', '-1600', '0', '0', NULL, NULL),
('493', '10', '35', '2021-03-12', '4010', '', '-3200', '0', '0', NULL, NULL),
('494', '10', '35', '2021-03-12', '1200', '', '3200', '0', '0', '2', '12'),
('495', '12', '35', '2021-03-12', '1215', '', '3200', '0', '0', NULL, NULL),
('496', '12', '35', '2021-03-12', '1200', '', '-3200', '0', '0', '2', '12'),
('497', '13', '36', '2021-03-14', '5010', '', '3375', '0', '0', NULL, NULL),
('498', '13', '36', '2021-03-14', '1540', '', '-3375', '0', '0', NULL, NULL),
('499', '10', '36', '2021-03-14', '4010', '', '-4500', '0', '0', NULL, NULL),
('500', '10', '36', '2021-03-14', '1200', '', '4500', '0', '0', '2', '12'),
('501', '12', '36', '2021-03-14', '1215', '', '4500', '0', '0', NULL, NULL),
('502', '12', '36', '2021-03-14', '1200', '', '-4500', '0', '0', '2', '12'),
('503', '13', '37', '2021-03-14', '5010', '', '1800', '0', '0', NULL, NULL),
('504', '13', '37', '2021-03-14', '1540', '', '-1800', '0', '0', NULL, NULL),
('505', '13', '37', '2021-03-14', '5010', '', '2600', '0', '0', NULL, NULL),
('506', '13', '37', '2021-03-14', '1540', '', '-2600', '0', '0', NULL, NULL),
('507', '13', '37', '2021-03-14', '5010', '', '1800', '0', '0', NULL, NULL),
('508', '13', '37', '2021-03-14', '1540', '', '-1800', '0', '0', NULL, NULL),
('509', '10', '37', '2021-03-14', '4010', '', '-4200', '0', '0', NULL, NULL),
('510', '10', '37', '2021-03-14', '4010', '', '-3800', '0', '0', NULL, NULL),
('511', '10', '37', '2021-03-14', '4010', '', '-3500', '0', '0', NULL, NULL),
('512', '10', '37', '2021-03-14', '1200', '', '11500', '0', '0', '2', '12'),
('513', '12', '37', '2021-03-14', '1215', '', '11500', '0', '0', NULL, NULL),
('514', '12', '37', '2021-03-14', '1200', '', '-11500', '0', '0', '2', '12'),
('515', '13', '38', '2021-03-14', '5010', '', '6650', '0', '0', NULL, NULL),
('516', '13', '38', '2021-03-14', '1540', '', '-6650', '0', '0', NULL, NULL),
('517', '13', '38', '2021-03-14', '5010', '', '2275', '0', '0', NULL, NULL),
('518', '13', '38', '2021-03-14', '1540', '', '-2275', '0', '0', NULL, NULL),
('519', '10', '38', '2021-03-14', '4010', '', '-22648', '0', '0', NULL, NULL),
('520', '10', '38', '2021-03-14', '4010', '', '-8344', '0', '0', NULL, NULL),
('521', '10', '38', '2021-03-14', '1200', '', '31000', '0', '0', '2', '12'),
('522', '10', '38', '2021-03-14', '4430', '', '-8', '0', '0', NULL, NULL),
('523', '12', '38', '2021-03-14', '1215', '', '31000', '0', '0', NULL, NULL),
('524', '12', '38', '2021-03-14', '1200', '', '-31000', '0', '0', '2', '12'),
('525', '13', '39', '2021-03-14', '5010', '', '2000', '0', '0', NULL, NULL),
('526', '13', '39', '2021-03-14', '1540', '', '-2000', '0', '0', NULL, NULL),
('527', '10', '39', '2021-03-14', '4010', '', '-6250', '0', '0', NULL, NULL),
('528', '10', '39', '2021-03-14', '1200', '', '6250', '0', '0', '2', '12'),
('529', '12', '39', '2021-03-14', '1215', '', '6250', '0', '0', NULL, NULL),
('530', '12', '39', '2021-03-14', '1200', '', '-6250', '0', '0', '2', '12'),
('531', '25', '3', '2021-03-14', '1540', 'LFBP1', '154700', '0', '0', NULL, NULL),
('532', '25', '3', '2021-03-14', '1550', '', '-154700', '0', '0', NULL, NULL),
('533', '20', '8', '2021-03-14', '2100', '', '-154700', '0', '0', '3', '1'),
('534', '20', '8', '2021-03-14', '1550', '', '154700', '0', '0', NULL, NULL),
('535', '25', '4', '2021-03-14', '1540', 'LFBP12', '29700', '0', '0', NULL, NULL),
('536', '25', '4', '2021-03-14', '1550', '', '-29700', '0', '0', NULL, NULL),
('537', '20', '9', '2021-03-15', '2100', '', '-29700', '0', '0', '3', '1'),
('538', '20', '9', '2021-03-15', '1550', '', '29700', '0', '0', NULL, NULL),
('539', '1', '1', '2021-03-15', '5790', '', '40975', '0', '0', NULL, NULL),
('540', '1', '1', '2021-03-15', '1215', 'ELECTRICITY BILL', '-40975', '0', '0', NULL, NULL),
('541', '1', '2', '2021-03-15', '5700', '', '0', '0', '0', NULL, NULL),
('542', '1', '2', '2021-03-15', '1215', '', '0', '0', '0', NULL, NULL),
('543', '13', '40', '2021-03-15', '5010', '', '3825', '0', '0', NULL, NULL),
('544', '13', '40', '2021-03-15', '1540', '', '-3825', '0', '0', NULL, NULL),
('545', '10', '40', '2021-03-15', '4010', '', '-5400', '0', '0', NULL, NULL),
('546', '10', '40', '2021-03-15', '1200', '', '5400', '0', '0', '2', '12'),
('547', '12', '40', '2021-03-15', '1215', '', '5400', '0', '0', NULL, NULL),
('548', '12', '40', '2021-03-15', '1200', '', '-5400', '0', '0', '2', '12'),
('549', '1', '3', '2021-03-15', '5780', '', '3540', '0', '0', NULL, NULL),
('550', '1', '3', '2021-03-15', '1215', 'ptcl bill', '-3540', '0', '0', NULL, NULL),
('551', '1', '4', '2021-03-15', '5785', 'khana &amp; chaya', '600', '0', '0', NULL, NULL),
('552', '1', '4', '2021-03-15', '1215', '', '-600', '0', '0', NULL, NULL),
('553', '1', '5', '2021-03-15', '5790', 'IESCO', '664', '0', '0', NULL, NULL),
('554', '1', '5', '2021-03-15', '1215', '', '-664', '0', '0', NULL, NULL),
('555', '1', '6', '2021-03-15', '5785', 'TAXI RENT', '1500', '0', '0', NULL, NULL),
('556', '1', '6', '2021-03-15', '1215', '', '-1500', '0', '0', NULL, NULL),
('557', '10', '41', '2021-03-18', '4010', '', '-200', '0', '0', NULL, NULL),
('558', '10', '41', '2021-03-18', '1200', '', '200', '0', '0', '2', '12'),
('559', '12', '41', '2021-03-18', '1215', '', '200', '0', '0', NULL, NULL),
('560', '12', '41', '2021-03-18', '1200', '', '-200', '0', '0', '2', '12');

### Structure of table `0_grn_batch` ###

DROP TABLE IF EXISTS `0_grn_batch`;

CREATE TABLE `0_grn_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `purch_order_no` int(11) DEFAULT NULL,
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `loc_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` double DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `delivery_date` (`delivery_date`),
  KEY `purch_order_no` (`purch_order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_grn_batch` ###

INSERT INTO `0_grn_batch` VALUES
('1', '1', '3', 'auto', '2018-12-31', 'DEF', '1'),
('2', '1', '4', '001/2018', '2018-12-31', 'DEF', '1'),
('3', '1', '5', '001/2021', '2021-03-14', 'DEF', '1'),
('4', '1', '6', '002/2021', '2021-03-14', 'DEF', '1');

### Structure of table `0_grn_items` ###

DROP TABLE IF EXISTS `0_grn_items`;

CREATE TABLE `0_grn_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grn_batch_id` int(11) DEFAULT NULL,
  `po_detail_item` int(11) NOT NULL DEFAULT 0,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty_recd` double NOT NULL DEFAULT 0,
  `quantity_inv` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `grn_batch_id` (`grn_batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_grn_items` ###

INSERT INTO `0_grn_items` VALUES
('1', '1', '24', '01', 'PB', '0', '0'),
('2', '2', '25', '02', 'PB', '0', '0'),
('3', '3', '26', 'LFBP1', 'TAURUS DEW', '238', '238'),
('4', '4', '27', 'LFBP12', 'TAURUS COMFORT', '54', '54');

### Structure of table `0_groups` ###

DROP TABLE IF EXISTS `0_groups`;

CREATE TABLE `0_groups` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_groups` ###

INSERT INTO `0_groups` VALUES
('1', 'Small', '0'),
('2', 'Medium', '0'),
('3', 'Large', '0');

### Structure of table `0_item_codes` ###

DROP TABLE IF EXISTS `0_item_codes`;

CREATE TABLE `0_item_codes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` smallint(6) unsigned NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `is_foreign` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stock_id` (`stock_id`,`item_code`),
  KEY `item_code` (`item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_item_codes` ###

INSERT INTO `0_item_codes` VALUES
('1', '01', '01', 'Silver Storm`', '5', '1', '0', '0'),
('2', '02', '02', 'Four Season plus ', '5', '1', '0', '0'),
('3', '03', '03', 'Premium Plus ', '5', '1', '0', '0'),
('4', '04', '04', 'Brilliant Pasha ', '5', '1', '0', '0'),
('5', '05', '05', 'Ultima Pasha ', '5', '1', '0', '0'),
('6', '06', '06', 'Platinum Plus Pasha ', '5', '1', '0', '0'),
('7', '07', '07', 'Platinum Texture ', '5', '1', '0', '0'),
('8', '16', '16', 'TAURUS COMFORT', '6', '1', '0', '0'),
('14', '17', '17', 'TAURUS GRAND', '6', '1', '0', '0'),
('15', '18', '18', 'TAURUS GLOW', '6', '1', '0', '0'),
('16', '19', '19', 'TAURUS SIGNATURE', '6', '1', '0', '0'),
('17', '20', '20', 'SILK KARANDI', '6', '1', '0', '0'),
('19', '21', '21', 'PREMIUM COTTON', '6', '1', '0', '0'),
('20', '22', '22', 'TAURUS RAKAPOSHI ', '6', '1', '0', '0'),
('21', '23', '23', 'TAURUS KARAKORAM', '6', '1', '0', '0'),
('26', 'LFAQL', 'LFAQL', 'WOOLTOUCH', '7', '1', '0', '0'),
('27', 'LFDK', 'LFDK', 'SUPER SIKLA ', '7', '1', '0', '0'),
('29', 'LFIBR', 'LFIBR', 'MARCIANO', '7', '1', '0', '0'),
('30', 'LFHK1', 'LFHK1', 'WORSTED BLUE', '7', '1', '0', '0'),
('31', 'LFHK2', 'LFHK2', 'BIELLA ITALIA', '7', '1', '0', '0'),
('32', 'LFHK3', 'LFHK3', 'GUABELLO', '7', '1', '0', '0'),
('33', 'LFHK4', 'LFHK4', 'BARZATTO', '7', '1', '0', '0'),
('34', 'LFHK5', 'LFHK5', 'ANGLOC ZONONI', '7', '1', '0', '0'),
('35', 'LFHK6', 'LFHK6', 'VITALE BURBERIS CANONICO', '7', '1', '0', '0'),
('36', 'LFABD1', 'LFABD1', 'ULTRA FINE', '7', '1', '0', '0'),
('37', 'LFABD2', 'LFABD2', 'EXTRA FINE CHECK', '7', '1', '0', '0'),
('38', '30', '30', 'ELITE GOLD', '8', '1', '0', '0'),
('39', 'LFAQL1', 'LFAQL1', 'LAWRENCEPUR TR ', '7', '1', '0', '0'),
('40', 'LFMNT', 'LFMNT', 'ZEQON PENANG', '7', '1', '0', '0'),
('41', 'LFMNT1', 'LFMNT1', 'SHAFFER CASANOVA', '7', '1', '0', '0'),
('42', 'LFMNT2', 'LFMNT2', 'NAYA THOHFA GRACE', '7', '1', '0', '0'),
('43', 'LFMNT3', 'LFMNT3', 'ORIEL WARIOR', '7', '1', '0', '0'),
('44', 'LFMNT4', 'LFMNT4', 'BROTHER FUNLAND', '7', '1', '0', '0'),
('46', 'LFMNT5', 'LFMNT5', 'GRACE JAKSON', '7', '1', '0', '0'),
('48', 'LFTS1', 'LFTS1', 'VENUS SHABBIR', '7', '1', '0', '0'),
('49', 'LFTS2', 'LFTS2', 'EMPORIO NARKINS', '7', '1', '0', '0'),
('50', 'LFTS3', 'LFTS3', 'SHABEER CLASSIC BANNU ', '7', '1', '0', '0'),
('51', 'LFTS4', 'LFTS4', 'BLOSSOM NARKINS ', '7', '1', '0', '0'),
('52', 'LFTS5', 'LFTS5', 'CLIPPER ', '7', '1', '0', '0'),
('53', 'LFTS6', 'LFTS6', 'NARKINS DOWN TOWN ', '7', '1', '0', '0'),
('54', 'LFTS7', 'LFTS7', 'COPPER SHABEER ', '7', '1', '0', '0'),
('56', 'LFTS8', 'LFTS8', 'MONT BLINK SHABEER ', '7', '1', '0', '0'),
('57', 'LFSS1', 'LFSS1', 'CHAN 4 IMAGINATION', '7', '1', '0', '0'),
('58', 'LFSS2', 'LFSS2', 'OBLGE GLAMOUR', '7', '1', '0', '0'),
('59', 'LFSS3', 'LFSS3', 'LIFESTYLE SHABEER ', '7', '1', '0', '0'),
('60', 'LFSS4', 'LFSS4', 'WEX FORD', '7', '1', '0', '0'),
('61', 'LFSS5', 'LFSS5', 'COOL AIR ', '7', '1', '0', '0'),
('62', 'LFSS6', 'LFSS6', 'BASKIN ROBIN', '7', '1', '0', '0'),
('63', 'LFSS7', 'LFSS7', 'SUPREME ', '7', '1', '0', '0'),
('64', 'LFSS8', 'LFSS8', 'WONDER WOOL ', '7', '1', '0', '0'),
('65', 'LFSS9', 'LFSS9', 'HYPER STAR', '7', '1', '0', '0'),
('66', 'LFSS10', 'LFSS10', 'ABRAJ ', '7', '1', '0', '0'),
('67', 'LFSS11', 'LFSS11', 'JOHN COPPER ', '7', '1', '0', '0'),
('68', 'LFSS12', 'LFSS12', 'SELECTION DRESS', '7', '1', '0', '0'),
('69', 'LFSS13', 'LFSS13', 'SARA WORSTED ', '7', '1', '0', '0'),
('70', 'LFSS14', 'LFSS14', 'ROYAL ITLEY', '7', '1', '0', '0'),
('71', 'LFSS15', 'LFSS15', 'CANVES ', '7', '1', '0', '0'),
('72', 'LFSS16', 'LFSS16', 'VELI FABRICS ', '7', '1', '0', '0'),
('73', 'LFSS17', 'LFSS17', 'DINAR ', '7', '1', '0', '0'),
('74', 'LFSS18', 'LFSS18', 'KASHMIR SIR ', '7', '1', '0', '0'),
('75', 'LFSS19', 'LFSS19', 'SILVER CALVIER ', '7', '1', '0', '0'),
('76', 'LFSS20', 'LFSS20', 'SHANGREELA ', '7', '1', '0', '0'),
('77', 'LFSS21', 'LFSS21', 'THAI DRESS', '7', '1', '0', '0'),
('78', 'LFSS22', 'LFSS22', 'DYED HEARD ', '7', '1', '0', '0'),
('79', 'LFSS23', 'LFSS23', 'DELIGHT DAY ', '7', '1', '0', '0'),
('80', 'LFDF', 'LFDF', 'DADA FABRICS COTTON ', '7', '1', '0', '0'),
('81', 'LFSK1', 'LFSK1', 'BRILLIANT 79 ', '10', '1', '0', '0'),
('82', 'LFSK2', 'LFSK2', 'ROYAL SOFT', '10', '1', '0', '0'),
('83', 'LFSK3', 'LFSK3', 'ITALLIAN GOLD ', '10', '1', '0', '0'),
('84', '40', '40', 'BRILLIANT 79 BOX', '9', '1', '0', '0'),
('86', '41', '41', 'ITALIAN BOX ', '9', '1', '0', '0'),
('87', '42', '42', 'GIZA BOX ', '9', '1', '0', '0'),
('88', 'LFMNT6', 'LFMNT6', 'ORIEL SUPER COMMANDER ', '7', '1', '0', '0'),
('89', 'LFMNT7', 'LFMNT7', 'ROYAL SELECTION GRACE COTTON', '7', '1', '0', '0'),
('90', 'LFMNT8', 'LFMNT8', 'SILVER STONE ', '7', '1', '0', '0'),
('91', 'LFMNT9', 'LFMNT9', 'WIND COTTON GRACE ', '7', '1', '0', '0'),
('92', 'LFMNT10', 'LFMNT10', 'GULSHAN COTTON GRACE ', '7', '1', '0', '0'),
('93', 'LFMNT11', 'LFMNT11', 'DUBAN COTTON GACE', '7', '1', '0', '0'),
('94', 'LFBP1', 'LFBP1', 'TAURUS DEW', '7', '1', '0', '0'),
('95', 'LFBP2', 'LFBP2', 'TAURUS ELEGANCE ', '7', '1', '0', '0'),
('96', 'LFBP3', 'LFBP3', 'TAURUS GRAND', '7', '1', '0', '0'),
('97', 'LFBP4', 'LFBP4', 'TAURUS INDUS ', '7', '1', '0', '0'),
('98', 'LFBP5', 'LFBP5', 'TAURUS ORCHID ', '7', '1', '0', '0'),
('99', 'LFBP6', 'LFBP6', 'TAURUS PREMIUM LATHA ', '7', '1', '0', '0'),
('100', 'LFBP7', 'LFBP7', 'TAURUS VENTILE ', '7', '1', '0', '0'),
('101', 'LFBP8', 'LFBP8', 'PREMIUM PLUS LOOSE FABRIC', '7', '1', '0', '0'),
('102', 'LFBP9', 'LFBP9', 'RAKAPOSHI ', '7', '1', '0', '0'),
('103', 'LFBP10', 'LFBP10', 'KARAKORAM', '7', '1', '0', '0'),
('104', 'LFBP11', 'LFBP11', 'GLOW SHINE COTTON', '7', '1', '0', '0'),
('105', 'LFMNT12', 'LFMNT12', 'NOYAAN ORIEL ', '7', '1', '0', '0'),
('107', 'LFHK7', 'LFHK7', 'KASHMIRA WOOL', '7', '1', '0', '0'),
('108', 'LFDK2', 'LFDK2', 'TOYOBO', '7', '1', '0', '0'),
('109', 'LFABD3', 'LFABD3', 'SUITING TR', '7', '1', '0', '0'),
('110', 'LFHI1', 'LFHI1', 'JAMAWAR SILK', '7', '1', '0', '0'),
('111', 'LFSS24', 'LFSS24', 'AW KARANDI', '7', '1', '0', '0'),
('112', 'LFTS9', 'LFTS9', 'NARKINS LATHA ', '7', '1', '0', '0'),
('113', 'LFBP12', 'LFBP12', 'TAURUS COMFORT', '7', '1', '0', '0'),
('114', 'NG-01', 'NG-01', 'Chicken Nuggets (Dilnawaz Foods)', '4', '1', '0', '0');

### Structure of table `0_item_tax_type_exemptions` ###

DROP TABLE IF EXISTS `0_item_tax_type_exemptions`;

CREATE TABLE `0_item_tax_type_exemptions` (
  `item_tax_type_id` int(11) NOT NULL DEFAULT 0,
  `tax_type_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_tax_type_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_item_tax_type_exemptions` ###


### Structure of table `0_item_tax_types` ###

DROP TABLE IF EXISTS `0_item_tax_types`;

CREATE TABLE `0_item_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `exempt` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_item_tax_types` ###

INSERT INTO `0_item_tax_types` VALUES
('1', 'Regular', '0', '0');

### Structure of table `0_item_units` ###

DROP TABLE IF EXISTS `0_item_units`;

CREATE TABLE `0_item_units` (
  `abbr` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `decimals` tinyint(2) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`abbr`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_item_units` ###

INSERT INTO `0_item_units` VALUES
('Box ', 'Box', '-1', '0'),
('each', 'Each', '0', '0'),
('hr', 'Hours', '0', '0'),
('LF', 'LF', '-1', '0'),
('METER', 'METER', '-1', '0');

### Structure of table `0_journal` ###

DROP TABLE IF EXISTS `0_journal`;

CREATE TABLE `0_journal` (
  `type` smallint(6) NOT NULL DEFAULT 0,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `tran_date` date DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_ref` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_date` date DEFAULT '0000-00-00',
  `doc_date` date NOT NULL DEFAULT '0000-00-00',
  `currency` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`type`,`trans_no`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_journal` ###

INSERT INTO `0_journal` VALUES
('0', '1', '2020-12-31', '001/2020', '22346', '2020-12-31', '2020-12-31', 'PKR', '1309750', '1'),
('0', '2', '2020-12-31', '002/2020', '', '2021-03-03', '2021-03-03', 'PKR', '1149575', '1'),
('0', '3', '2020-12-31', '003/2020', '', '2021-03-03', '2021-03-03', 'PKR', '68937.5', '1'),
('0', '4', '2020-12-31', '004/2020', '', '2021-03-05', '2021-03-05', 'PKR', '2710337.5', '1'),
('0', '5', '2020-12-31', '005/2020', '', '2021-03-05', '2021-03-05', 'PKR', '56875', '1'),
('0', '6', '2020-12-31', '006/2020', 'OPENING BALANCE', '2020-12-31', '2020-12-31', 'PKR', '5278255', '1'),
('0', '7', '2020-12-31', '007/2020', '', '2020-12-31', '2020-12-31', 'PKR', '17220', '1');

### Structure of table `0_loc_stock` ###

DROP TABLE IF EXISTS `0_loc_stock`;

CREATE TABLE `0_loc_stock` (
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reorder_level` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`loc_code`,`stock_id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_loc_stock` ###

INSERT INTO `0_loc_stock` VALUES
('DEF', '01', '0'),
('DEF', '02', '0'),
('DEF', '03', '0'),
('DEF', '04', '0'),
('DEF', '05', '0'),
('DEF', '06', '0'),
('DEF', '07', '0'),
('DEF', '16', '0'),
('DEF', '17', '0'),
('DEF', '18', '0'),
('DEF', '19', '0'),
('DEF', '20', '0'),
('DEF', '21', '0'),
('DEF', '22', '0'),
('DEF', '23', '0'),
('DEF', '30', '0'),
('DEF', '40', '0'),
('DEF', '41', '0'),
('DEF', '42', '0'),
('DEF', 'LFABD1', '0'),
('DEF', 'LFABD2', '0'),
('DEF', 'LFABD3', '0'),
('DEF', 'LFAQL', '0'),
('DEF', 'LFAQL1', '0'),
('DEF', 'LFBP1', '0'),
('DEF', 'LFBP10', '0'),
('DEF', 'LFBP11', '0'),
('DEF', 'LFBP12', '0'),
('DEF', 'LFBP2', '0'),
('DEF', 'LFBP3', '0'),
('DEF', 'LFBP4', '0'),
('DEF', 'LFBP5', '0'),
('DEF', 'LFBP6', '0'),
('DEF', 'LFBP7', '0'),
('DEF', 'LFBP8', '0'),
('DEF', 'LFBP9', '0'),
('DEF', 'LFDF', '0'),
('DEF', 'LFDK', '0'),
('DEF', 'LFDK2', '0'),
('DEF', 'LFHI1', '0'),
('DEF', 'LFHK1', '0'),
('DEF', 'LFHK2', '0'),
('DEF', 'LFHK3', '0'),
('DEF', 'LFHK4', '0'),
('DEF', 'LFHK5', '0'),
('DEF', 'LFHK6', '0'),
('DEF', 'LFHK7', '0'),
('DEF', 'LFIBR', '0'),
('DEF', 'LFMNT', '0'),
('DEF', 'LFMNT1', '0'),
('DEF', 'LFMNT10', '0'),
('DEF', 'LFMNT11', '0'),
('DEF', 'LFMNT12', '0'),
('DEF', 'LFMNT2', '0'),
('DEF', 'LFMNT3', '0'),
('DEF', 'LFMNT4', '0'),
('DEF', 'LFMNT5', '0'),
('DEF', 'LFMNT6', '0'),
('DEF', 'LFMNT7', '0'),
('DEF', 'LFMNT8', '0'),
('DEF', 'LFMNT9', '0'),
('DEF', 'LFSK1', '0'),
('DEF', 'LFSK2', '0'),
('DEF', 'LFSK3', '0'),
('DEF', 'LFSS1', '0'),
('DEF', 'LFSS10', '0'),
('DEF', 'LFSS11', '0'),
('DEF', 'LFSS12', '0'),
('DEF', 'LFSS13', '0'),
('DEF', 'LFSS14', '0'),
('DEF', 'LFSS15', '0'),
('DEF', 'LFSS16', '0'),
('DEF', 'LFSS17', '0'),
('DEF', 'LFSS18', '0'),
('DEF', 'LFSS19', '0'),
('DEF', 'LFSS2', '0'),
('DEF', 'LFSS20', '0'),
('DEF', 'LFSS21', '0'),
('DEF', 'LFSS22', '0'),
('DEF', 'LFSS23', '0'),
('DEF', 'LFSS24', '0'),
('DEF', 'LFSS3', '0'),
('DEF', 'LFSS4', '0'),
('DEF', 'LFSS5', '0'),
('DEF', 'LFSS6', '0'),
('DEF', 'LFSS7', '0'),
('DEF', 'LFSS8', '0'),
('DEF', 'LFSS9', '0'),
('DEF', 'LFTS1', '0'),
('DEF', 'LFTS2', '0'),
('DEF', 'LFTS3', '0'),
('DEF', 'LFTS4', '0'),
('DEF', 'LFTS5', '0'),
('DEF', 'LFTS6', '0'),
('DEF', 'LFTS7', '0'),
('DEF', 'LFTS8', '0'),
('DEF', 'LFTS9', '0'),
('DEF', 'NG-01', '0');

### Structure of table `0_locations` ###

DROP TABLE IF EXISTS `0_locations`;

CREATE TABLE `0_locations` (
  `loc_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `location_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fixed_asset` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`loc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_locations` ###

INSERT INTO `0_locations` VALUES
('DEF', 'Default', 'N/A', '', '', '', '', '', '0', '0');

### Structure of table `0_overtime` ###

DROP TABLE IF EXISTS `0_overtime`;

CREATE TABLE `0_overtime` (
  `overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `overtime_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `overtime_rate` float NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`overtime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_overtime` ###


### Structure of table `0_payment_terms` ###

DROP TABLE IF EXISTS `0_payment_terms`;

CREATE TABLE `0_payment_terms` (
  `terms_indicator` int(11) NOT NULL AUTO_INCREMENT,
  `terms` char(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `days_before_due` smallint(6) NOT NULL DEFAULT 0,
  `day_in_following_month` smallint(6) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`terms_indicator`),
  UNIQUE KEY `terms` (`terms`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_payment_terms` ###

INSERT INTO `0_payment_terms` VALUES
('1', 'Due 15th Of the Following Month', '0', '17', '0'),
('2', 'Due By End Of The Following Month', '0', '30', '0'),
('3', 'Payment due within 10 days', '10', '0', '0'),
('4', 'Cash Only', '0', '0', '0'),
('5', 'Prepaid', '-1', '0', '0');

### Structure of table `0_payroll_account` ###

DROP TABLE IF EXISTS `0_payroll_account`;

CREATE TABLE `0_payroll_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_code` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_payroll_account` ###

INSERT INTO `0_payroll_account` VALUES
('1', '5410');

### Structure of table `0_payroll_structure` ###

DROP TABLE IF EXISTS `0_payroll_structure`;

CREATE TABLE `0_payroll_structure` (
  `salary_scale_id` int(11) NOT NULL,
  `payroll_rule` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `salary_scale_id` (`salary_scale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_payroll_structure` ###


### Structure of table `0_payslip` ###

DROP TABLE IF EXISTS `0_payslip`;

CREATE TABLE `0_payslip` (
  `payslip_no` int(11) NOT NULL AUTO_INCREMENT,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `emp_id` int(11) NOT NULL,
  `generated_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `leaves` int(11) NOT NULL,
  `deductable_leaves` int(11) NOT NULL,
  `payable_amount` double NOT NULL DEFAULT 0,
  `salary_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`payslip_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_payslip` ###


### Structure of table `0_payslip_details` ###

DROP TABLE IF EXISTS `0_payslip_details`;

CREATE TABLE `0_payslip_details` (
  `payslip_no` int(11) NOT NULL AUTO_INCREMENT,
  `detail` int(11) NOT NULL DEFAULT 0,
  `amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`payslip_no`,`detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_payslip_details` ###


### Structure of table `0_prices` ###

DROP TABLE IF EXISTS `0_prices`;

CREATE TABLE `0_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_type_id` int(11) NOT NULL DEFAULT 0,
  `curr_abrev` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_prices` ###

INSERT INTO `0_prices` VALUES
('1', '01', '1', 'PKR', '4140'),
('2', '02', '1', 'PKR', '5240'),
('3', '03', '1', 'PKR', '5920'),
('4', '04', '1', 'PKR', '6200'),
('5', '05', '1', 'PKR', '6440'),
('6', '06', '1', 'PKR', '7640'),
('7', '07', '1', 'PKR', '9630'),
('8', '16', '1', 'PKR', '2950'),
('14', '17', '1', 'PKR', '2895'),
('15', '18', '1', 'PKR', '3690'),
('16', '19', '1', 'PKR', '3245'),
('17', '20', '1', 'PKR', '4565'),
('19', '21', '1', 'PKR', '3750'),
('20', '22', '1', 'PKR', '3850'),
('21', '23', '1', 'PKR', '3995'),
('22', 'LFBP12', '2', 'PKR', '650');

### Structure of table `0_print_profiles` ###

DROP TABLE IF EXISTS `0_print_profiles`;

CREATE TABLE `0_print_profiles` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `profile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `report` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile` (`profile`,`report`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_print_profiles` ###

INSERT INTO `0_print_profiles` VALUES
('1', 'Out of office', NULL, '0'),
('2', 'Sales Department', NULL, '0'),
('3', 'Central', NULL, '2'),
('4', 'Sales Department', '104', '2'),
('5', 'Sales Department', '105', '2'),
('6', 'Sales Department', '107', '2'),
('7', 'Sales Department', '109', '2'),
('8', 'Sales Department', '110', '2'),
('9', 'Sales Department', '201', '2');

### Structure of table `0_printers` ###

DROP TABLE IF EXISTS `0_printers`;

CREATE TABLE `0_printers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `queue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `port` smallint(11) unsigned NOT NULL,
  `timeout` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_printers` ###

INSERT INTO `0_printers` VALUES
('1', 'QL500', 'Label printer', 'QL500', 'server', '127', '20'),
('2', 'Samsung', 'Main network printer', 'scx4521F', 'server', '515', '5'),
('3', 'Local', 'Local print server at user IP', 'lp', '', '515', '10');

### Structure of table `0_purch_data` ###

DROP TABLE IF EXISTS `0_purch_data`;

CREATE TABLE `0_purch_data` (
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT 0,
  `suppliers_uom` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `conversion_factor` double NOT NULL DEFAULT 1,
  `supplier_description` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`supplier_id`,`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_purch_data` ###

INSERT INTO `0_purch_data` VALUES
('1', '01', '3650', 'Box', '1', 'PB'),
('1', '02', '4500', 'BOX', '1', 'PB'),
('1', '03', '4900', 'BOX', '1', 'PREMIUM PLUS'),
('1', '04', '5300', 'BOX', '1', 'Brilliant Pasha'),
('1', '05', '5500', 'BOX', '1', 'Ultima Pasha'),
('1', '06', '6400', 'BOX', '1', 'Platinum Plus Pasha'),
('1', '07', '8100', 'BOX', '1', 'Platinum Texture'),
('1', '16', '2400', 'BOX', '1', 'TAURUS COMFORT'),
('1', '17', '2550', 'BOX', '1', 'TAURUS GRAND'),
('1', '18', '3200', 'BOX', '1', 'TAURUS GLOW'),
('1', '19', '2600', 'BOX', '1', 'TAURUS SIGNATURE'),
('1', '20', '3650', 'BOX', '1', 'SILK KARANDI'),
('1', '21', '3000', 'BOX', '1', 'PREMIUM COTTON'),
('1', '22', '3100', 'BOX', '1', 'TAURUS RAKAPOSHI'),
('1', '23', '3200', 'BOX', '1', 'TAURUS KARAKORAM'),
('1', 'LFBP1', '650', 'METER', '1', 'TAURUS DEW'),
('1', 'LFBP10', '740', 'METER', '1', 'KARAKORAM'),
('1', 'LFBP11', '740', 'METER', '1', 'GLOW SHINE COTTON'),
('1', 'LFBP12', '550', '', '1', 'TAURUS COMFORT'),
('1', 'LFBP2', '625', 'METER', '1', 'TAURUS ELEGANCE'),
('1', 'LFBP3', '640', 'METER', '1', 'TAURUS GRAND'),
('1', 'LFBP4', '600', 'METER', '1', 'TAURUS INDUS'),
('1', 'LFBP5', '700', 'METER', '1', 'TAURUS ORCHID'),
('1', 'LFBP6', '665', 'METER', '1', 'TAURUS PREMIUM LATHA'),
('1', 'LFBP7', '1155', 'METER', '1', 'TAURUS VENTILE'),
('1', 'LFBP8', '830', 'METER', '1', 'PREMIUM PLUS LOOSE FABRIC'),
('1', 'LFBP9', '720', 'METER', '1', 'RAKAPOSHI'),
('2', 'LFHK1', '1000', 'METER', '1', 'WORSTED BULE'),
('2', 'LFHK2', '2100', 'METER', '1', 'BIELLA ITALIA'),
('2', 'LFHK7', '1500', 'METER', '1', 'KASHMIRA WOOL'),
('3', '30', '5600', 'BOX', '1', 'TAQI SAHAB'),
('3', 'LFTS1', '750', 'METER', '1', 'VENUS SHABBIR'),
('3', 'LFTS2', '800', 'METER', '1', 'EMPORIO NARKINS'),
('3', 'LFTS3', '530', 'METER', '1', 'SHABEER CLASSIC BANNU'),
('3', 'LFTS4', '400', 'METER', '1', 'BLOSSOM NARKINS'),
('3', 'LFTS5', '415', 'METER', '1', 'CLIPPER'),
('3', 'LFTS6', '375', 'METER', '1', 'NARKINS DOWN TOWN'),
('3', 'LFTS7', '430', 'METER', '1', 'COPPER SHABEER'),
('3', 'LFTS8', '420', 'METER', '1', 'MONT BLINK SHABEER'),
('3', 'LFTS9', '350', 'METER', '1', 'NARKINS LATHA'),
('4', 'LFABD1', '2100', 'METER', '1', 'ULTRA FINE'),
('4', 'LFABD2', '2500', 'METER', '1', 'EXTRA FINE CHECK'),
('4', 'LFABD3', '650', 'METER', '1', 'SUITING TR'),
('5', 'LFAQL', '800', 'METER', '1', 'WOOL TOUCH'),
('5', 'LFAQL1', '900', 'METER', '1', 'LARENCEPUR TR'),
('6', 'LFMNT', '1000', 'METER', '1', 'ZEQON PENANG'),
('6', 'LFMNT1', '850', 'METER', '1', 'SHAFFER CASANOVA'),
('6', 'LFMNT10', '750', 'METER', '1', 'GULSHAN COTTON GRACE'),
('6', 'LFMNT11', '750', 'METER', '1', 'DUBAN COTTON GRACE'),
('6', 'LFMNT12', '450', 'METER', '1', 'NOYAAN ORIEL'),
('6', 'LFMNT2', '450', 'METER', '1', 'NAYA THOHFA GRACE'),
('6', 'LFMNT3', '500', 'METER', '1', 'ORIAL WARIOR'),
('6', 'LFMNT4', '500', 'METER', '1', 'BROTHER FUNLAND'),
('6', 'LFMNT5', '500', 'METER', '1', 'GRACE JAKSON'),
('6', 'LFMNT6', '500', 'METER', '1', 'ORIEL SUPER COMMANDER'),
('6', 'LFMNT7', '750', 'METER', '1', 'ROYAL SELECION GRACE COTTON'),
('6', 'LFMNT8', '575', 'METER', '1', 'SILVER STONE'),
('6', 'LFMNT9', '850', 'METER', '1', 'WIND COTTON GRACE'),
('7', 'LFSS1', '450', 'METER', '1', 'CHAN 4 IMAGINATION'),
('7', 'LFSS10', '500', 'METER', '1', 'ABRAJ'),
('7', 'LFSS11', '500', 'METER', '1', 'JOHN COPPER'),
('7', 'LFSS12', '450', 'METER', '1', 'SELECTION DRESS'),
('7', 'LFSS13', '500', 'METER', '1', 'SARA WORSTED'),
('7', 'LFSS14', '525', 'METER', '1', 'ROYAL ITLEY'),
('7', 'LFSS15', '375', 'METER', '1', 'CANVES'),
('7', 'LFSS16', '400', 'METER', '1', 'VELI FABRICS'),
('7', 'LFSS17', '450', 'METER', '1', 'DEENAR'),
('7', 'LFSS18', '450', 'METER', '1', 'KASHMIIR SIR'),
('7', 'LFSS19', '450', 'METER', '1', 'SILVER COIN'),
('7', 'LFSS2', '500', 'METER', '1', 'OBLGE GLAMOUR'),
('7', 'LFSS20', '400', 'METER', '1', 'SHANGREELA'),
('7', 'LFSS21', '375', 'METER', '1', 'THAI DRES'),
('7', 'LFSS22', '450', 'METER', '1', 'DYED HEARD'),
('7', 'LFSS23', '500', 'METER', '1', 'DELIGHT DAY'),
('7', 'LFSS24', '350', 'METER', '1', 'AW KARANDI'),
('7', 'LFSS3', '575', 'METER', '1', 'LIFESTYLE SHABEER'),
('7', 'LFSS4', '550', 'METER', '1', 'WEX FORD'),
('7', 'LFSS5', '500', 'METER', '1', 'COOL AIR'),
('7', 'LFSS6', '425', 'METER', '1', 'BASKIN ROBIN'),
('7', 'LFSS7', '400', 'METER', '1', 'SUPREME'),
('7', 'LFSS8', '400', 'METER', '1', 'WONDER WOOL'),
('7', 'LFSS9', '450', 'METER', '1', 'HYPER STAR'),
('8', 'LFDF', '350', 'METER', '1', 'DADA FABRICS COTTON'),
('9', 'LFDK', '700', 'METER', '1', 'SUPER SILKA'),
('9', 'LFDK2', '650', 'METER', '1', 'TOYOBO'),
('10', 'LFSK1', '630', 'METER', '1', 'BRILLIANT 79'),
('10', 'LFSK2', '450', 'METER', '1', 'ROYAL SOFT'),
('10', 'LFSK3', '400', 'METER', '1', 'ITALLIAN GOLD'),
('11', 'LFIBR', '2500', 'METER', '1', 'MARCIANO'),
('12', 'LFHI1', '350', 'METER', '1', 'JAMAWAR SILK');

### Structure of table `0_purch_order_details` ###

DROP TABLE IF EXISTS `0_purch_order_details`;

CREATE TABLE `0_purch_order_details` (
  `po_detail_item` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT 0,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `qty_invoiced` double NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `act_price` double NOT NULL DEFAULT 0,
  `std_cost_unit` double NOT NULL DEFAULT 0,
  `quantity_ordered` double NOT NULL DEFAULT 0,
  `quantity_received` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`po_detail_item`),
  KEY `order` (`order_no`,`po_detail_item`),
  KEY `itemcode` (`item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_purch_order_details` ###

INSERT INTO `0_purch_order_details` VALUES
('24', '3', '01', 'PB', '2018-12-31', '0', '3650', '3650', '3650', '11', '0'),
('25', '4', '02', 'PB', '2018-12-31', '0', '4500', '4500', '4500', '0', '0'),
('26', '5', 'LFBP1', 'TAURUS DEW', '2021-03-14', '238', '650', '650', '650', '238', '238'),
('27', '6', 'LFBP12', 'TAURUS COMFORT', '2021-03-14', '54', '550', '550', '550', '54', '54');

### Structure of table `0_purch_orders` ###

DROP TABLE IF EXISTS `0_purch_orders`;

CREATE TABLE `0_purch_orders` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `comments` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `requisition_no` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `into_stock_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `prep_amount` double NOT NULL DEFAULT 0,
  `alloc` double NOT NULL DEFAULT 0,
  `tax_included` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_no`),
  KEY `ord_date` (`ord_date`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_purch_orders` ###

INSERT INTO `0_purch_orders` VALUES
('3', '1', NULL, '2018-12-31', 'auto', '494', 'DEF', 'N/A', '42157.5', '0', '0', '0'),
('4', '1', NULL, '2018-12-31', 'auto', NULL, 'DEF', 'N/A', '4725', '0', '0', '0'),
('5', '1', NULL, '2021-03-14', 'auto', NULL, 'DEF', 'N/A', '154700', '0', '0', '0'),
('6', '1', NULL, '2021-03-14', 'auto', '575', 'DEF', 'N/A', '29700', '0', '0', '0');

### Structure of table `0_quick_entries` ###

DROP TABLE IF EXISTS `0_quick_entries`;

CREATE TABLE `0_quick_entries` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `usage` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_amount` double NOT NULL DEFAULT 0,
  `base_desc` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bal_type` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_quick_entries` ###

INSERT INTO `0_quick_entries` VALUES
('1', '1', 'Maintenance', NULL, '0', 'Amount', '0'),
('2', '4', 'Phone', NULL, '0', 'Amount', '0'),
('3', '2', 'Cash Sales', 'Retail sales without invoice', '0', 'Amount', '0');

### Structure of table `0_quick_entry_lines` ###

DROP TABLE IF EXISTS `0_quick_entry_lines`;

CREATE TABLE `0_quick_entry_lines` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `qid` smallint(6) unsigned NOT NULL,
  `amount` double DEFAULT 0,
  `memo` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `dest_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` smallint(6) unsigned DEFAULT NULL,
  `dimension2_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_quick_entry_lines` ###

INSERT INTO `0_quick_entry_lines` VALUES
('1', '1', '0', '', 't-', '1', '0', '0'),
('2', '2', '0', '', 't-', '1', '0', '0'),
('3', '3', '0', '', 't-', '1', '0', '0'),
('4', '3', '0', '', '=', '4010', '0', '0'),
('5', '1', '0', '', '=', '5765', '0', '0'),
('6', '2', '0', '', '=', '5780', '0', '0');

### Structure of table `0_recurrent_invoices` ###

DROP TABLE IF EXISTS `0_recurrent_invoices`;

CREATE TABLE `0_recurrent_invoices` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `order_no` int(11) unsigned NOT NULL,
  `debtor_no` int(11) unsigned DEFAULT NULL,
  `group_no` smallint(6) unsigned DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0,
  `monthly` int(11) NOT NULL DEFAULT 0,
  `begin` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `last_sent` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_recurrent_invoices` ###


### Structure of table `0_reflines` ###

DROP TABLE IF EXISTS `0_reflines`;

CREATE TABLE `0_reflines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` int(11) NOT NULL,
  `prefix` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pattern` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prefix` (`trans_type`,`prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_reflines` ###

INSERT INTO `0_reflines` VALUES
('1', '0', '', '{001}/{YYYY}', '', '1', '0'),
('2', '1', '', '{001}/{YYYY}', '', '1', '0'),
('3', '2', '', '{001}/{YYYY}', '', '1', '0'),
('4', '4', '', '{001}/{YYYY}', '', '1', '0'),
('5', '10', '', '{001}/{YYYY}', '', '1', '0'),
('6', '11', '', '{001}/{YYYY}', '', '1', '0'),
('7', '12', '', '{001}/{YYYY}', '', '1', '0'),
('8', '13', '', '{001}/{YYYY}', '', '1', '0'),
('9', '16', '', '{001}/{YYYY}', '', '1', '0'),
('10', '17', '', '{001}/{YYYY}', '', '1', '0'),
('11', '18', '', '{001}/{YYYY}', '', '1', '0'),
('12', '20', '', '{001}/{YYYY}', '', '1', '0'),
('13', '21', '', '{001}/{YYYY}', '', '1', '0'),
('14', '22', '', '{001}/{YYYY}', '', '1', '0'),
('15', '25', '', '{001}/{YYYY}', '', '1', '0'),
('16', '26', '', '{001}/{YYYY}', '', '1', '0'),
('17', '28', '', '{001}/{YYYY}', '', '1', '0'),
('18', '29', '', '{001}/{YYYY}', '', '1', '0'),
('19', '30', '', '{001}/{YYYY}', '', '1', '0'),
('20', '32', '', '{001}/{YYYY}', '', '1', '0'),
('21', '35', '', '{001}/{YYYY}', '', '1', '0'),
('22', '40', '', '{001}/{YYYY}', '', '1', '0');

### Structure of table `0_refs` ###

DROP TABLE IF EXISTS `0_refs`;

CREATE TABLE `0_refs` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`type`),
  KEY `Type_and_Reference` (`type`,`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_refs` ###

INSERT INTO `0_refs` VALUES
('1', '0', '001/2020'),
('2', '0', '002/2020'),
('3', '0', '003/2020'),
('4', '0', '004/2020'),
('5', '0', '005/2020'),
('6', '0', '006/2020'),
('7', '0', '007/2020'),
('1', '1', '001/2021'),
('2', '1', '002/2021'),
('4', '1', '002/2021'),
('3', '1', '003/2021'),
('5', '1', '004/2021'),
('6', '1', '005/2021'),
('1', '10', '001/2021'),
('2', '10', '002/2021'),
('3', '10', '003/2021'),
('4', '10', '004/2021'),
('5', '10', '005/2021'),
('6', '10', '006/2021'),
('7', '10', '007/2021'),
('8', '10', '008/2021'),
('9', '10', '009/2021'),
('10', '10', '010/2021'),
('11', '10', '011/2021'),
('12', '10', '012/2021'),
('13', '10', '013/2021'),
('14', '10', '014/2021'),
('15', '10', '015/2021'),
('16', '10', '016/2021'),
('17', '10', '017/2021'),
('18', '10', '018/2021'),
('20', '10', '018/2021'),
('19', '10', '019/2021'),
('21', '10', '019/2021'),
('22', '10', '020/2021'),
('23', '10', '021/2021'),
('24', '10', '022/2021'),
('25', '10', '023/2021'),
('26', '10', '024/2021'),
('27', '10', '025/2021'),
('28', '10', '026/2021'),
('29', '10', '027/2021'),
('30', '10', '028/2021'),
('31', '10', '029/2021'),
('32', '10', '030/2021'),
('33', '10', '031/2021'),
('34', '10', '032/2021'),
('35', '10', '033/2021'),
('36', '10', '034/2021'),
('37', '10', '035/2021'),
('38', '10', '036/2021'),
('39', '10', '037/2021'),
('40', '10', '038/2021'),
('41', '10', '039/2021'),
('1', '12', '001/2021'),
('2', '12', '002/2021'),
('3', '12', '003/2021'),
('4', '12', '004/2021'),
('5', '12', '005/2021'),
('6', '12', '006/2021'),
('7', '12', '007/2021'),
('8', '12', '008/2021'),
('9', '12', '009/2021'),
('10', '12', '010/2021'),
('11', '12', '011/2021'),
('12', '12', '012/2021'),
('13', '12', '013/2021'),
('14', '12', '014/2021'),
('15', '12', '015/2021'),
('16', '12', '016/2021'),
('17', '12', '017/2021'),
('18', '12', '018/2021'),
('19', '12', '019/2021'),
('20', '12', '020/2021'),
('21', '12', '021/2021'),
('22', '12', '022/2021'),
('23', '12', '023/2021'),
('24', '12', '024/2021'),
('25', '12', '025/2021'),
('26', '12', '026/2021'),
('27', '12', '027/2021'),
('28', '12', '028/2021'),
('29', '12', '029/2021'),
('30', '12', '030/2021'),
('31', '12', '031/2021'),
('32', '12', '032/2021'),
('33', '12', '033/2021'),
('34', '12', '034/2021'),
('35', '12', '035/2021'),
('36', '12', '036/2021'),
('37', '12', '037/2021'),
('38', '12', '038/2021'),
('39', '12', '039/2021'),
('40', '12', '040/2021'),
('41', '12', '041/2021'),
('1', '17', '001/2020'),
('2', '17', '002/2020'),
('3', '17', '003/2020'),
('4', '17', '004/2020'),
('5', '17', '005/2020'),
('6', '17', '006/2020'),
('1', '20', '001/2018'),
('2', '20', '001/2020'),
('8', '20', '001/2021'),
('3', '20', '002/2020'),
('9', '20', '002/2021'),
('4', '20', '003/2020'),
('5', '20', '004/2020'),
('6', '20', '005/2020'),
('7', '20', '006/2020'),
('1', '22', '001/2018'),
('2', '25', '001/2018'),
('3', '25', '001/2021'),
('4', '25', '002/2021');

### Structure of table `0_requisition_details` ###

DROP TABLE IF EXISTS `0_requisition_details`;

CREATE TABLE `0_requisition_details` (
  `requisition_detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `requisition_id` int(11) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `lpo_id` int(11) DEFAULT 0,
  `order_quantity` int(11) NOT NULL DEFAULT 0,
  `estimate_price` double NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `purpose` varchar(320) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`requisition_detail_id`),
  KEY `0_requisition_details_requisition_id` (`requisition_id`),
  KEY `0_requisition_details_item_code` (`item_code`),
  KEY `0_requisition_details_supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_requisition_details` ###


### Structure of table `0_requisitions` ###

DROP TABLE IF EXISTS `0_requisitions`;

CREATE TABLE `0_requisitions` (
  `requisition_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `point_of_use` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `narrative` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `completed` tinyint(4) NOT NULL DEFAULT 0,
  `processed` tinyint(4) NOT NULL DEFAULT 0,
  `inactive` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`requisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_requisitions` ###


### Structure of table `0_salary_structure` ###

DROP TABLE IF EXISTS `0_salary_structure`;

CREATE TABLE `0_salary_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `salary_scale_id` int(11) NOT NULL,
  `pay_rule_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `pay_amount` double NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0 for credit, 1 for debit',
  `is_basic` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_salary_structure` ###

INSERT INTO `0_salary_structure` VALUES
('1', '2021-03-05', '1', '5410', '15000', '1', '1');

### Structure of table `0_salaryscale` ###

DROP TABLE IF EXISTS `0_salaryscale`;

CREATE TABLE `0_salaryscale` (
  `scale_id` int(11) NOT NULL AUTO_INCREMENT,
  `scale_name` text COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  `pay_basis` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = monthly, 1 = daily',
  PRIMARY KEY (`scale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_salaryscale` ###

INSERT INTO `0_salaryscale` VALUES
('1', 'Primary', '0', '0');

### Structure of table `0_sales_order_details` ###

DROP TABLE IF EXISTS `0_sales_order_details`;

CREATE TABLE `0_sales_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT 0,
  `trans_type` smallint(6) NOT NULL DEFAULT 30,
  `stk_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty_sent` double NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `invoiced` double NOT NULL DEFAULT 0,
  `discount_percent` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sorder` (`trans_type`,`order_no`),
  KEY `stkcode` (`stk_code`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sales_order_details` ###

INSERT INTO `0_sales_order_details` VALUES
('1', '1', '30', '40', 'BRILLIANT 79 BOX', '2', '5200', '2', '0', '0'),
('2', '1', '30', 'LFDK', 'SUPER SIKLA ', '3', '2500', '3', '0', '0'),
('3', '2', '30', '41', 'ITALIAN BOX ', '2', '2100', '2', '0', '0'),
('4', '2', '30', 'LFSK2', 'ROYAL SOFT', '4', '750', '4', '0', '0'),
('5', '3', '30', 'LFBP1', 'TAURUS DEW', '8', '900', '8', '0', '0'),
('6', '3', '30', 'LFSK2', 'ROYAL SOFT', '4', '800', '4', '0', '0'),
('7', '3', '30', 'LFSK3', 'ITALLIAN GOLD ', '4', '900', '4', '0', '0'),
('8', '4', '30', 'LFDK', 'SUPER SIKLA ', '4', '2500', '4', '0', '0'),
('9', '5', '30', 'LFSK3', 'ITALLIAN GOLD ', '4', '800', '4', '0', '0'),
('10', '6', '30', 'LFAQL', 'WOOLTOUCH', '3', '2000', '3', '0', '0'),
('11', '7', '30', 'LFSK2', 'ROYAL SOFT', '4', '875', '4', '0', '0'),
('12', '8', '30', 'LFBP8', 'PREMIUM PLUS LOOSE FABRIC', '4.5', '1045', '4.5', '0', '0'),
('13', '8', '30', 'LFHK2', 'BIELLA ITALIA', '1', '3500', '1', '0', '0'),
('14', '9', '30', 'LFSK2', 'ROYAL SOFT', '4', '875', '4', '0', '0'),
('15', '10', '30', 'LFSK2', 'ROYAL SOFT', '4', '875', '4', '0', '0'),
('16', '11', '30', 'LFDK2', 'TOYOBO', '4', '1350', '4', '0', '0'),
('17', '12', '30', 'LFSK2', 'ROYAL SOFT', '4', '875', '4', '0', '0'),
('18', '13', '30', 'LFHK3', 'GUABELLO', '3', '5333.25', '3', '0', '0'),
('19', '14', '30', 'LFSK3', 'ITALLIAN GOLD ', '4', '1000', '4', '0', '0'),
('20', '14', '30', 'LFBP1', 'TAURUS DEW', '8', '900', '8', '0', '0'),
('21', '14', '30', 'LFMNT6', 'ORIEL SUPER COMMANDER ', '4', '700', '4', '0', '0'),
('22', '15', '30', 'LFDK2', 'TOYOBO', '4.5', '2222', '4.5', '0', '0'),
('23', '15', '30', 'LFSK1', 'BRILLIANT 79 ', '9', '1111', '9', '0', '0'),
('24', '16', '30', 'LFSK1', 'BRILLIANT 79 ', '4.5', '1200', '4.5', '0', '0'),
('25', '17', '30', '41', 'ITALIAN BOX ', '6', '3200', '6', '0', '0'),
('26', '17', '30', 'LFSK1', 'BRILLIANT 79 ', '4.5', '1200', '4.5', '0', '0'),
('27', '17', '30', 'LFSK3', 'ITALLIAN GOLD ', '4', '800', '4', '0', '0'),
('28', '18', '30', 'LFSS11', 'JOHN COPPER ', '0', '900', '0', '0', '0'),
('29', '19', '30', 'LFAQL', 'WOOLTOUCH', '0', '1900', '0', '0', '0'),
('30', '20', '30', 'LFSS11', 'JOHN COPPER ', '4', '900', '4', '0', '0'),
('31', '21', '30', 'LFAQL', 'WOOLTOUCH', '2', '1900', '2', '0', '0'),
('32', '22', '30', 'LFSK1', 'BRILLIANT 79 ', '4.5', '1200', '4.5', '0', '0'),
('33', '23', '30', 'LFSK2', 'ROYAL SOFT', '4', '1050', '4', '0', '0'),
('34', '24', '30', 'LFSK2', 'ROYAL SOFT', '12', '750', '12', '0', '0'),
('35', '24', '30', 'LFAQL1', 'LAWRENCEPUR TR ', '2', '2800', '2', '0', '0'),
('36', '25', '30', 'LFTS1', 'VENUS SHABBIR', '8', '1250', '8', '0', '0'),
('37', '25', '30', 'LFMNT4', 'BROTHER FUNLAND', '4', '1000', '4', '0', '0'),
('38', '26', '30', 'LFBP1', 'TAURUS DEW', '16', '900', '16', '0', '0'),
('39', '26', '30', 'LFMNT12', 'NOYAAN ORIEL ', '4', '700', '4', '0', '0'),
('40', '27', '30', 'LFDK', 'SUPER SIKLA ', '3', '3200', '3', '0', '0'),
('41', '28', '30', 'LFSK1', 'BRILLIANT 79 ', '4.5', '1111', '4.5', '0', '0'),
('42', '29', '30', '02', 'Four Season plus ', '1', '5240', '1', '0', '0'),
('43', '30', '30', 'LFAQL', 'WOOLTOUCH', '3.5', '2857', '3.5', '0', '0'),
('44', '31', '30', 'LFBP1', 'TAURUS DEW', '8', '900', '8', '0', '0'),
('45', '32', '30', 'LFDK', 'SUPER SIKLA ', '3', '2666', '3', '0', '0'),
('46', '33', '30', 'LFHK4', 'BARZATTO', '1', '5500', '1', '0', '0'),
('47', '33', '30', 'LFDK', 'SUPER SIKLA ', '10', '2500', '10', '0', '0'),
('48', '33', '30', 'LFBP8', 'PREMIUM PLUS LOOSE FABRIC', '4.5', '1044', '4.5', '0', '0'),
('49', '33', '30', 'LFDK2', 'TOYOBO', '3.5', '1000', '3.5', '0', '0'),
('50', '33', '30', 'LFAQL', 'WOOLTOUCH', '2.25', '2500', '2.25', '0', '0'),
('51', '33', '30', 'LFABD3', 'SUITING TR', '2.25', '2500', '2.25', '0', '0'),
('52', '34', '30', '06', 'Platinum Plus Pasha ', '1', '7640', '1', '0', '0'),
('53', '34', '30', '07', 'Platinum Texture ', '1', '9630', '1', '0', '0'),
('54', '35', '30', 'LFSK3', 'ITALLIAN GOLD ', '4', '800', '4', '0', '0'),
('55', '36', '30', 'LFMNT11', 'DUBAN COTTON GACE', '4.5', '1000', '4.5', '0', '0'),
('56', '37', '30', 'LFSK2', 'ROYAL SOFT', '4', '1050', '4', '0', '0'),
('57', '37', '30', 'LFBP1', 'TAURUS DEW', '4', '950', '4', '0', '0'),
('58', '37', '30', 'LFMNT12', 'NOYAAN ORIEL ', '4', '875', '4', '0', '0'),
('59', '38', '30', 'LFDK', 'SUPER SIKLA ', '9.5', '2384', '9.5', '0', '0'),
('60', '38', '30', 'LFABD3', 'SUITING TR', '3.5', '2384', '3.5', '0', '0'),
('61', '39', '30', 'LFAQL', 'WOOLTOUCH', '2.5', '2500', '2.5', '0', '0'),
('62', '40', '30', 'LFMNT9', 'WIND COTTON GRACE ', '4.5', '1200', '4.5', '0', '0'),
('63', '41', '30', 'NG-01', 'Chicken Nuggets (Dilnawaz Foods)', '1', '200', '1', '0', '0');

### Structure of table `0_sales_orders` ###

DROP TABLE IF EXISTS `0_sales_orders`;

CREATE TABLE `0_sales_orders` (
  `order_no` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT 30,
  `version` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `debtor_no` int(11) NOT NULL DEFAULT 0,
  `branch_code` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_ref` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comments` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `order_type` int(11) NOT NULL DEFAULT 0,
  `ship_via` int(11) NOT NULL DEFAULT 0,
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliver_to` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `freight_cost` double NOT NULL DEFAULT 0,
  `from_stk_loc` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `payment_terms` int(11) DEFAULT NULL,
  `total` double NOT NULL DEFAULT 0,
  `prep_amount` double NOT NULL DEFAULT 0,
  `alloc` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`trans_type`,`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sales_orders` ###

INSERT INTO `0_sales_orders` VALUES
('1', '30', '1', '0', '12', '1', 'auto', '', '1000 REMAINING', '2021-03-08', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-08', '4', '17900', '0', '0'),
('2', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-06', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-06', '4', '7200', '0', '0'),
('3', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-06', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-06', '4', '14000', '0', '0'),
('4', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-06', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-06', '4', '10000', '0', '0'),
('5', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-10', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-10', '4', '3200', '0', '0'),
('6', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-06', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-06', '4', '6000', '0', '0'),
('7', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-06', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-06', '4', '3500', '0', '0'),
('8', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-06', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '-2.5', 'DEF', '2021-03-06', '4', '8200', '0', '0'),
('9', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-06', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-06', '4', '3500', '0', '0'),
('10', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-07', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-07', '4', '3500', '0', '0'),
('11', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-07', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-07', '4', '5400', '0', '0'),
('12', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-07', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-07', '4', '3500', '0', '0'),
('13', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-08', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-08', '4', '15999.75', '0', '0'),
('14', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-08', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-08', '4', '14000', '0', '0'),
('15', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-08', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-08', '4', '19998', '0', '0'),
('16', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-08', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-08', '4', '5400', '0', '0'),
('17', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-08', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-08', '4', '27800', '0', '0'),
('18', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-08', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-08', '4', '3600', '0', '0'),
('19', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-08', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-08', '4', '3800', '0', '0'),
('20', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-09', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-09', '4', '3600', '0', '0'),
('21', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-09', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-09', '4', '3800', '0', '0'),
('22', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-09', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-09', '4', '5400', '0', '0'),
('23', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-09', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-09', '4', '4200', '0', '0'),
('24', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-10', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-10', '4', '14600', '0', '0'),
('25', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-10', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-10', '4', '14000', '0', '0'),
('26', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-10', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-10', '4', '17200', '0', '0'),
('27', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-10', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-10', '4', '9600', '0', '0'),
('28', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-10', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0.5', 'DEF', '2021-03-10', '4', '5000', '0', '0'),
('29', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-11', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-11', '4', '5240', '0', '0'),
('30', '30', '1', '0', '12', '1', 'auto', '', '1068 ADV 5000 BL5000 NAME TASWAR', '2021-03-11', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0.5', 'DEF', '2021-03-11', '4', '10000', '0', '0'),
('31', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-11', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-11', '4', '7200', '0', '0'),
('32', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-11', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '2', 'DEF', '2021-03-11', '4', '8000', '0', '0'),
('33', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-11', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '2', 'DEF', '2021-03-11', '4', '49950', '0', '0'),
('34', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-12', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-12', '4', '17270', '0', '0'),
('35', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-12', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-12', '4', '3200', '0', '0'),
('36', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-14', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-14', '4', '4500', '0', '0'),
('37', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-14', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-14', '4', '11500', '0', '0'),
('38', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-14', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '8', 'DEF', '2021-03-14', '4', '31000', '0', '0'),
('39', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-14', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-14', '4', '6250', '0', '0'),
('40', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-15', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-15', '4', '5400', '0', '0'),
('41', '30', '1', '0', '12', '1', 'auto', '', NULL, '2021-03-18', '4', '1', '123', NULL, NULL, 'WalkIn Customer', '0', 'DEF', '2021-03-18', '4', '200', '0', '0');

### Structure of table `0_sales_pos` ###

DROP TABLE IF EXISTS `0_sales_pos`;

CREATE TABLE `0_sales_pos` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cash_sale` tinyint(1) NOT NULL,
  `credit_sale` tinyint(1) NOT NULL,
  `pos_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pos_account` smallint(6) unsigned NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pos_name` (`pos_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sales_pos` ###

INSERT INTO `0_sales_pos` VALUES
('1', 'Default', '1', '1', 'DEF', '3', '0');

### Structure of table `0_sales_types` ###

DROP TABLE IF EXISTS `0_sales_types`;

CREATE TABLE `0_sales_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_type` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_included` int(1) NOT NULL DEFAULT 0,
  `factor` double NOT NULL DEFAULT 1,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_type` (`sales_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sales_types` ###

INSERT INTO `0_sales_types` VALUES
('1', 'Retail', '1', '1', '1'),
('2', 'Wholesale', '0', '0.7', '0'),
('4', 'Retail Price List', '0', '1', '0');

### Structure of table `0_salesman` ###

DROP TABLE IF EXISTS `0_salesman`;

CREATE TABLE `0_salesman` (
  `salesman_code` int(11) NOT NULL AUTO_INCREMENT,
  `salesman_name` char(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_phone` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_fax` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `provision` double NOT NULL DEFAULT 0,
  `break_pt` double NOT NULL DEFAULT 0,
  `provision2` double NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`salesman_code`),
  UNIQUE KEY `salesman_name` (`salesman_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_salesman` ###

INSERT INTO `0_salesman` VALUES
('1', 'Sales Person', '', '', '', '5', '1000', '4', '0');

### Structure of table `0_security_roles` ###

DROP TABLE IF EXISTS `0_security_roles`;

CREATE TABLE `0_security_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sections` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `areas` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_security_roles` ###

INSERT INTO `0_security_roles` VALUES
('1', 'Inquiries', 'Inquiries', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;773;774;2822;3073;3075;3076;3077;3329;3330;3331;3332;3333;3334;3335;5377;5633;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8450;8451;10497;10753;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15622;15623;15624;15625;15626;15873;15882;16129;16130;16131;16132;775', '0'),
('2', 'System Administrator', 'System Administrator', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;9472;9728;10496;10752;11008;13056;13312;15616;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;9217;9218;9220;9473;9474;9475;9476;9729;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;16129;16130;16131;16132;775', '0'),
('3', 'Salesman', 'Salesman', '768;3072;5632;8192;15872', '773;774;3073;3075;3081;5633;8194;15873;775', '0'),
('4', 'Stock Manager', 'Stock Manager', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '2818;2822;3073;3076;3077;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5889;5890;5891;8193;8194;8450;8451;10753;11009;11010;11012;13313;13315;15882;16129;16130;16131;16132;775', '0'),
('5', 'Production Manager', 'Production Manager', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', '0'),
('6', 'Purchase Officer', 'Purchase Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5635;5640;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', '0'),
('7', 'AR Officer', 'AR Officer', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;771;773;774;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5633;5634;5637;5638;5639;5640;5640;5889;5890;5891;8193;8194;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775', '0'),
('8', 'AP Officer', 'AP Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;769;770;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5635;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', '0'),
('9', 'Accountant', 'New Accountant', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775', '0'),
('10', 'Sub Admin', 'Sub Admin', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15873;15874;15876;15877;15878;15879;15880;15882;16129;16130;16131;16132;775', '0');

### Structure of table `0_shippers` ###

DROP TABLE IF EXISTS `0_shippers`;

CREATE TABLE `0_shippers` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`shipper_id`),
  UNIQUE KEY `name` (`shipper_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_shippers` ###

INSERT INTO `0_shippers` VALUES
('1', 'Default', '', '', '', '', '0');

### Structure of table `0_sql_trail` ###

DROP TABLE IF EXISTS `0_sql_trail`;

CREATE TABLE `0_sql_trail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sql` text COLLATE utf8_unicode_ci NOT NULL,
  `result` tinyint(1) NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sql_trail` ###


### Structure of table `0_stock_category` ###

DROP TABLE IF EXISTS `0_stock_category`;

CREATE TABLE `0_stock_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_tax_type` int(11) NOT NULL DEFAULT 1,
  `dflt_units` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'each',
  `dflt_mb_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'B',
  `dflt_sales_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_cogs_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_inventory_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_adjustment_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_wip_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_dim1` int(11) DEFAULT NULL,
  `dflt_dim2` int(11) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT 0,
  `dflt_no_purchase` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_stock_category` ###

INSERT INTO `0_stock_category` VALUES
('4', 'Services', '1', 'hr', 'D', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '0'),
('5', 'Pasha Box ', '1', 'Box ', 'M', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '0', '0'),
('6', 'Taurus Box ', '1', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '0', '0'),
('7', 'Loose Fabric', '1', 'LF', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '0', '0'),
('8', 'NARKINS WOODEN BOX ', '1', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '0', '0'),
('9', 'AL JAVED BOX', '1', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '0', '0'),
('10', 'AL JAVED LF', '1', 'Box ', 'M', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '0', '0'),
('11', 'TAURUS DEW', '1', 'METER', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '0');

### Structure of table `0_stock_fa_class` ###

DROP TABLE IF EXISTS `0_stock_fa_class`;

CREATE TABLE `0_stock_fa_class` (
  `fa_class_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `depreciation_rate` double NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fa_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_stock_fa_class` ###


### Structure of table `0_stock_master` ###

DROP TABLE IF EXISTS `0_stock_master`;

CREATE TABLE `0_stock_master` (
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT 0,
  `tax_type_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `units` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'each',
  `mb_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'B',
  `sales_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cogs_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inventory_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `adjustment_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wip_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` int(11) DEFAULT NULL,
  `dimension2_id` int(11) DEFAULT NULL,
  `purchase_cost` double NOT NULL DEFAULT 0,
  `material_cost` double NOT NULL DEFAULT 0,
  `labour_cost` double NOT NULL DEFAULT 0,
  `overhead_cost` double NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  `no_sale` tinyint(1) NOT NULL DEFAULT 0,
  `no_purchase` tinyint(1) NOT NULL DEFAULT 0,
  `editable` tinyint(1) NOT NULL DEFAULT 0,
  `depreciation_method` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `depreciation_rate` double NOT NULL DEFAULT 0,
  `depreciation_factor` double NOT NULL DEFAULT 1,
  `depreciation_start` date NOT NULL DEFAULT '0000-00-00',
  `depreciation_date` date NOT NULL DEFAULT '0000-00-00',
  `fa_class_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_stock_master` ###

INSERT INTO `0_stock_master` VALUES
('01', '5', '1', 'Silver Storm`', 'PB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '3650', '3650', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('02', '5', '1', 'Four Season plus ', 'PB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '4500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('03', '5', '1', 'Premium Plus ', 'PB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '4900', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('04', '5', '1', 'Brilliant Pasha ', 'PB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '5300', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('05', '5', '1', 'Ultima Pasha ', 'PB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '5500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('06', '5', '1', 'Platinum Plus Pasha ', 'PB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '6400', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('07', '5', '1', 'Platinum Texture ', 'PB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '8100', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('16', '6', '1', 'TAURUS COMFORT', 'TB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2400', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('17', '6', '1', 'TAURUS GRAND', 'PB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2550', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('18', '6', '1', 'TAURUS GLOW', 'TB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '3200', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('19', '6', '1', 'TAURUS SIGNATURE', 'TB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2600', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('20', '6', '1', 'SILK KARANDI', 'TB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '3650', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('21', '6', '1', 'PREMIUM COTTON', 'TB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '3000', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('22', '6', '1', 'TAURUS RAKAPOSHI ', 'TB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '3100', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('23', '6', '1', 'TAURUS KARAKORAM', 'TB', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '3200', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('30', '8', '1', 'ELITE GOLD', 'NARKINS WOODEN BOX  ', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '5600', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('40', '9', '1', 'BRILLIANT 79 BOX', 'AJ ', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '3500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('41', '9', '1', 'ITALIAN BOX ', 'AJ', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2000', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('42', '9', '1', 'GIZA BOX ', 'AJ ', 'Box ', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFABD1', '7', '1', 'ULTRA FINE', 'SUITING ABD', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2100', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFABD2', '7', '1', 'EXTRA FINE CHECK', 'SUITING ABD2', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFABD3', '7', '1', 'SUITING TR', 'SUITING', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '650', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFAQL', '7', '1', 'WOOLTOUCH', 'SUITING AQL', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '800', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFAQL1', '7', '1', 'LAWRENCEPUR TR ', 'SUITING TR LP', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '900', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP1', '7', '1', 'TAURUS DEW', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '650', '650', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP10', '7', '1', 'KARAKORAM', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '740', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP11', '7', '1', 'GLOW SHINE COTTON', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '740', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP12', '7', '1', 'TAURUS COMFORT', 'SHALWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '550', '550', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP2', '7', '1', 'TAURUS ELEGANCE ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '625', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP3', '7', '1', 'TAURUS GRAND', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '640', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP4', '7', '1', 'TAURUS INDUS ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '600', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP5', '7', '1', 'TAURUS ORCHID ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '700', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP6', '7', '1', 'TAURUS PREMIUM LATHA ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '665', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP7', '7', '1', 'TAURUS VENTILE ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '1155', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP8', '7', '1', 'PREMIUM PLUS LOOSE FABRIC', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '830', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFBP9', '7', '1', 'RAKAPOSHI ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '720', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFDF', '7', '1', 'DADA FABRICS COTTON ', 'SHIRTING &amp; COTTON ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '350', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFDK', '7', '1', 'SUPER SIKLA ', 'SUITING DK', 'LF', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '700', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFDK2', '7', '1', 'TOYOBO', 'kamee zsalwar ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '650', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFHI1', '7', '1', 'JAMAWAR SILK', 'SUITING HI', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '350', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFHK1', '7', '1', 'WORSTED BLUE', 'SUITING HK', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '1000', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFHK2', '7', '1', 'BIELLA ITALIA', 'SUITING HSK ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2100', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFHK3', '7', '1', 'GUABELLO', 'SUITING HK3', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2100', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFHK4', '7', '1', 'BARZATTO', 'SUITING HK4', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2100', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFHK5', '7', '1', 'ANGLOC ZONONI', 'SUITING HK5', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2100', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFHK6', '7', '1', 'VITALE BURBERIS CANONICO', 'SUITING HK6', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFHK7', '7', '1', 'KASHMIRA WOOL', 'TAWEED SUTTING', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '1500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFIBR', '7', '1', 'MARCIANO', 'SUITING IBR ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '2500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT', '7', '1', 'ZEQON PENANG', 'SUITING CHECK, M.NAUMAN ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '1000', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT1', '7', '1', 'SHAFFER CASANOVA', 'SHALWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '850', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT10', '7', '1', 'GULSHAN COTTON GRACE ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '750', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT11', '7', '1', 'DUBAN COTTON GACE', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '750', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT12', '7', '1', 'NOYAAN ORIEL ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT2', '7', '1', 'NAYA THOHFA GRACE', 'SHALWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT3', '7', '1', 'ORIEL WARIOR', 'SHAWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT4', '7', '1', 'BROTHER FUNLAND', 'SHALWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT5', '7', '1', 'GRACE JAKSON', 'SHALWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT6', '7', '1', 'ORIEL SUPER COMMANDER ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT7', '7', '1', 'ROYAL SELECTION GRACE COTTON', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '750', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT8', '7', '1', 'SILVER STONE ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '575', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFMNT9', '7', '1', 'WIND COTTON GRACE ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '850', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSK1', '10', '1', 'BRILLIANT 79 ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '630', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSK2', '10', '1', 'ROYAL SOFT', 'SHALWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSK3', '10', '1', 'ITALLIAN GOLD ', 'SHALWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '400', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS1', '7', '1', 'CHAN 4 IMAGINATION', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS10', '7', '1', 'ABRAJ ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS11', '7', '1', 'JOHN COPPER ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS12', '7', '1', 'SELECTION DRESS', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS13', '7', '1', 'SARA WORSTED ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS14', '7', '1', 'ROYAL ITLEY', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '525', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS15', '7', '1', 'CANVES ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '375', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS16', '7', '1', 'VELI FABRICS ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '400', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS17', '7', '1', 'DINAR ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS18', '7', '1', 'KASHMIR SIR ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS19', '7', '1', 'SILVER CALVIER ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS2', '7', '1', 'OBLGE GLAMOUR', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS20', '7', '1', 'SHANGREELA ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '400', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS21', '7', '1', 'THAI DRESS', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '375', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS22', '7', '1', 'DYED HEARD ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS23', '7', '1', 'DELIGHT DAY ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS24', '7', '1', 'AW KARANDI', 'SHALWAR KAMEEZ SS', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '350', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS3', '7', '1', 'LIFESTYLE SHABEER ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '575', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS4', '7', '1', 'WEX FORD', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '550', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS5', '7', '1', 'COOL AIR ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '500', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS6', '7', '1', 'BASKIN ROBIN', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '425', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS7', '7', '1', 'SUPREME ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '400', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS8', '7', '1', 'WONDER WOOL ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '400', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFSS9', '7', '1', 'HYPER STAR', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '450', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS1', '7', '1', 'VENUS SHABBIR', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '750', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS2', '7', '1', 'EMPORIO NARKINS', 'SHALWAR KAMEEZ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '800', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS3', '7', '1', 'SHABEER CLASSIC BANNU ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '530', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS4', '7', '1', 'BLOSSOM NARKINS ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '400', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS5', '7', '1', 'CLIPPER ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '415', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS6', '7', '1', 'NARKINS DOWN TOWN ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '375', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS7', '7', '1', 'COPPER SHABEER ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '430', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS8', '7', '1', 'MONT BLINK SHABEER ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '420', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('LFTS9', '7', '1', 'NARKINS LATHA ', 'SHALWAR KAMEEZ ', 'METER', 'B', '4010', '5010', '1540', '5040', '1530', '0', '0', '0', '350', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('NG-01', '4', '1', 'Chicken Nuggets (Dilnawaz Foods)', '', 'each', 'D', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', '');

### Structure of table `0_stock_moves` ###

DROP TABLE IF EXISTS `0_stock_moves`;

CREATE TABLE `0_stock_moves` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `price` double NOT NULL DEFAULT 0,
  `reference` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT 1,
  `standard_cost` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`trans_id`),
  KEY `type` (`type`,`trans_no`),
  KEY `Move` (`stock_id`,`loc_code`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_stock_moves` ###

INSERT INTO `0_stock_moves` VALUES
('4', '1', '01', '17', 'DEF', '2020-12-31', '0', '001/2020', '10', '3650'),
('5', '1', '02', '17', 'DEF', '2020-12-31', '0', '001/2020', '10', '4500'),
('6', '1', '03', '17', 'DEF', '2020-12-31', '0', '001/2020', '21', '4900'),
('7', '1', '04', '17', 'DEF', '2020-12-31', '0', '001/2020', '7', '5300'),
('8', '1', '05', '17', 'DEF', '2020-12-31', '0', '001/2020', '6', '5500'),
('9', '1', '06', '17', 'DEF', '2020-12-31', '0', '001/2020', '13', '6400'),
('10', '1', '07', '17', 'DEF', '2020-12-31', '0', '001/2020', '1', '8100'),
('11', '1', '16', '17', 'DEF', '2020-12-31', '0', '001/2020', '1', '2400'),
('12', '1', '17', '17', 'DEF', '2020-12-31', '0', '001/2020', '3', '2550'),
('13', '1', '18', '17', 'DEF', '2020-12-31', '0', '001/2020', '1', '3200'),
('14', '1', '19', '17', 'DEF', '2020-12-31', '0', '001/2020', '13', '2600'),
('15', '1', '20', '17', 'DEF', '2020-12-31', '0', '001/2020', '5', '3650'),
('16', '1', '21', '17', 'DEF', '2020-12-31', '0', '001/2020', '12', '3000'),
('17', '1', '22', '17', 'DEF', '2020-12-31', '0', '001/2020', '2', '3100'),
('18', '1', '23', '17', 'DEF', '2020-12-31', '0', '001/2020', '1', '3200'),
('19', '1', '30', '17', 'DEF', '2020-12-31', '0', '001/2020', '2', '5600'),
('20', '1', 'LFHK1', '17', 'DEF', '2020-12-31', '0', '001/2020', '22', '1000'),
('21', '1', 'LFHK2', '17', 'DEF', '2020-12-31', '0', '001/2020', '249', '2100'),
('22', '1', 'LFHK3', '17', 'DEF', '2020-12-31', '0', '001/2020', '87', '2100'),
('23', '1', 'LFHK4', '17', 'DEF', '2020-12-31', '0', '001/2020', '54.5', '2100'),
('24', '2', 'LFHK5', '17', 'DEF', '2020-12-31', '0', '002/2020', '86', '2100'),
('25', '2', 'LFHK6', '17', 'DEF', '2020-12-31', '0', '002/2020', '59.5', '2500'),
('26', '2', 'LFMNT', '17', 'DEF', '2020-12-31', '0', '002/2020', '35', '1000'),
('27', '2', 'LFAQL', '17', 'DEF', '2020-12-31', '0', '002/2020', '230', '800'),
('28', '2', 'LFIBR', '17', 'DEF', '2020-12-31', '0', '002/2020', '58', '2500'),
('29', '2', 'LFDK', '17', 'DEF', '2020-12-31', '0', '002/2020', '110.5', '700'),
('30', '2', 'LFABD1', '17', 'DEF', '2020-12-31', '0', '002/2020', '13.5', '2100'),
('31', '2', 'LFABD2', '17', 'DEF', '2020-12-31', '0', '002/2020', '98', '2500'),
('32', '2', 'LFAQL1', '17', 'DEF', '2020-12-31', '0', '002/2020', '117.25', '900'),
('33', '3', 'LFMNT1', '17', 'DEF', '2020-12-31', '0', '003/2020', '20.75', '850'),
('34', '3', 'LFMNT2', '17', 'DEF', '2020-12-31', '0', '003/2020', '114', '450'),
('35', '4', 'LFTS1', '17', 'DEF', '2020-12-31', '0', '004/2020', '45', '750'),
('36', '4', 'LFMNT3', '17', 'DEF', '2020-12-31', '0', '004/2020', '61', '500'),
('37', '4', 'LFMNT4', '17', 'DEF', '2020-12-31', '0', '004/2020', '51', '500'),
('38', '4', 'LFTS2', '17', 'DEF', '2020-12-31', '0', '004/2020', '4', '800'),
('39', '4', 'LFSS1', '17', 'DEF', '2020-12-31', '0', '004/2020', '29.5', '450'),
('40', '4', 'LFTS3', '17', 'DEF', '2020-12-31', '0', '004/2020', '40', '530'),
('41', '4', 'LFSS2', '17', 'DEF', '2020-12-31', '0', '004/2020', '45.5', '500'),
('42', '4', 'LFTS4', '17', 'DEF', '2020-12-31', '0', '004/2020', '59.5', '400'),
('43', '4', 'LFSS3', '17', 'DEF', '2020-12-31', '0', '004/2020', '18', '575'),
('44', '4', 'LFTS5', '17', 'DEF', '2020-12-31', '0', '004/2020', '81', '415'),
('45', '4', 'LFTS6', '17', 'DEF', '2020-12-31', '0', '004/2020', '8', '375'),
('46', '4', 'LFSS4', '17', 'DEF', '2020-12-31', '0', '004/2020', '47', '550'),
('47', '4', 'LFSS5', '17', 'DEF', '2020-12-31', '0', '004/2020', '29', '500'),
('48', '4', 'LFSS6', '17', 'DEF', '2020-12-31', '0', '004/2020', '62', '425'),
('49', '4', 'LFSS7', '17', 'DEF', '2020-12-31', '0', '004/2020', '36.5', '400'),
('50', '4', 'LFSS8', '17', 'DEF', '2020-12-31', '0', '004/2020', '16', '400'),
('51', '4', 'LFSS9', '17', 'DEF', '2020-12-31', '0', '004/2020', '51', '450'),
('52', '4', 'LFSS10', '17', 'DEF', '2020-12-31', '0', '004/2020', '55', '500'),
('53', '4', 'LFSS11', '17', 'DEF', '2020-12-31', '0', '004/2020', '38', '500'),
('54', '4', 'LFSS12', '17', 'DEF', '2020-12-31', '0', '004/2020', '36', '450'),
('55', '4', 'LFMNT5', '17', 'DEF', '2020-12-31', '0', '004/2020', '110', '500'),
('56', '4', 'LFSS13', '17', 'DEF', '2020-12-31', '0', '004/2020', '51', '500'),
('57', '4', 'LFSS14', '17', 'DEF', '2020-12-31', '0', '004/2020', '13', '525'),
('58', '4', 'LFSS15', '17', 'DEF', '2020-12-31', '0', '004/2020', '12', '375'),
('59', '4', 'LFSS16', '17', 'DEF', '2020-12-31', '0', '004/2020', '63', '400'),
('60', '4', 'LFTS7', '17', 'DEF', '2020-12-31', '0', '004/2020', '21', '430'),
('61', '4', 'LFSS17', '17', 'DEF', '2020-12-31', '0', '004/2020', '12', '450'),
('62', '4', 'LFSS18', '17', 'DEF', '2020-12-31', '0', '004/2020', '17', '450'),
('63', '4', 'LFSS19', '17', 'DEF', '2020-12-31', '0', '004/2020', '8', '450'),
('64', '4', 'LFTS8', '17', 'DEF', '2020-12-31', '0', '004/2020', '45', '420'),
('65', '4', 'LFSS20', '17', 'DEF', '2020-12-31', '0', '004/2020', '25', '400'),
('66', '4', 'LFSS21', '17', 'DEF', '2020-12-31', '0', '004/2020', '56', '375'),
('67', '4', 'LFSS22', '17', 'DEF', '2020-12-31', '0', '004/2020', '28', '450'),
('68', '4', 'LFSS23', '17', 'DEF', '2020-12-31', '0', '004/2020', '59', '500'),
('69', '4', 'LFDF', '17', 'DEF', '2020-12-31', '0', '004/2020', '482.5', '350'),
('70', '4', 'LFSK1', '17', 'DEF', '2020-12-31', '0', '004/2020', '256.5', '630'),
('71', '4', 'LFSK3', '17', 'DEF', '2020-12-31', '0', '004/2020', '104', '400'),
('72', '4', 'LFSK2', '17', 'DEF', '2020-12-31', '0', '004/2020', '128', '450'),
('73', '4', '42', '17', 'DEF', '2020-12-31', '0', '004/2020', '1', '2500'),
('74', '4', '40', '17', 'DEF', '2020-12-31', '0', '004/2020', '21', '3500'),
('75', '4', '41', '17', 'DEF', '2020-12-31', '0', '004/2020', '14', '2000'),
('76', '4', 'LFMNT6', '17', 'DEF', '2020-12-31', '0', '004/2020', '111', '500'),
('77', '4', 'LFMNT7', '17', 'DEF', '2020-12-31', '0', '004/2020', '162', '750'),
('78', '4', 'LFMNT8', '17', 'DEF', '2020-12-31', '0', '004/2020', '54', '575'),
('79', '4', 'LFMNT9', '17', 'DEF', '2020-12-31', '0', '004/2020', '157.5', '850'),
('80', '4', 'LFMNT10', '17', 'DEF', '2020-12-31', '0', '004/2020', '247.5', '750'),
('81', '4', 'LFMNT11', '17', 'DEF', '2020-12-31', '0', '004/2020', '229.5', '750'),
('82', '4', 'LFBP1', '17', 'DEF', '2020-12-31', '0', '004/2020', '445', '650'),
('83', '4', 'LFMNT12', '17', 'DEF', '2020-12-31', '0', '004/2020', '124.5', '450'),
('84', '4', 'LFBP7', '17', 'DEF', '2020-12-31', '0', '004/2020', '81', '1155'),
('85', '4', 'LFBP9', '17', 'DEF', '2020-12-31', '0', '004/2020', '9', '720'),
('86', '4', 'LFBP10', '17', 'DEF', '2020-12-31', '0', '004/2020', '13.5', '740'),
('87', '4', 'LFBP11', '17', 'DEF', '2020-12-31', '0', '004/2020', '9', '740'),
('88', '4', 'LFBP8', '17', 'DEF', '2020-12-31', '0', '004/2020', '94.5', '830'),
('89', '4', 'LFBP6', '17', 'DEF', '2020-12-31', '0', '004/2020', '176', '665'),
('90', '4', 'LFBP2', '17', 'DEF', '2020-12-31', '0', '004/2020', '112.5', '625'),
('91', '4', 'LFABD3', '17', 'DEF', '2020-12-31', '0', '004/2020', '123', '650'),
('92', '4', 'LFDK2', '17', 'DEF', '2020-12-31', '0', '004/2020', '62', '650'),
('93', '5', 'LFHI1', '17', 'DEF', '2020-12-31', '0', '005/2020', '89.25', '350'),
('94', '5', 'LFSS24', '17', 'DEF', '2020-12-31', '0', '005/2020', '42', '350'),
('95', '5', 'LFTS9', '17', 'DEF', '2020-12-31', '0', '005/2020', '31.25', '350'),
('96', '6', 'LFTS8', '17', 'DEF', '2020-12-31', '0', '006/2020', '-41', '420'),
('97', '1', '40', '13', 'DEF', '2021-03-08', '5200', 'auto', '-2', '3500'),
('98', '1', 'LFDK', '13', 'DEF', '2021-03-08', '2500', 'auto', '-3', '700'),
('99', '2', '41', '13', 'DEF', '2021-03-06', '2100', 'auto', '-2', '2000'),
('100', '2', 'LFSK2', '13', 'DEF', '2021-03-06', '750', 'auto', '-4', '450'),
('101', '3', 'LFBP1', '13', 'DEF', '2021-03-06', '900', 'auto', '-8', '650'),
('102', '3', 'LFSK2', '13', 'DEF', '2021-03-06', '800', 'auto', '-4', '450'),
('103', '3', 'LFSK3', '13', 'DEF', '2021-03-06', '900', 'auto', '-4', '400'),
('104', '4', 'LFDK', '13', 'DEF', '2021-03-06', '2500', 'auto', '-4', '700'),
('105', '5', 'LFSK3', '13', 'DEF', '2021-03-10', '800', 'auto', '-4', '400'),
('106', '6', 'LFAQL', '13', 'DEF', '2021-03-06', '2000', 'auto', '-3', '800'),
('107', '7', 'LFSK2', '13', 'DEF', '2021-03-06', '875', 'auto', '-4', '450'),
('108', '8', 'LFBP8', '13', 'DEF', '2021-03-06', '1045', 'auto', '-4.5', '830'),
('109', '8', 'LFHK2', '13', 'DEF', '2021-03-06', '3500', 'auto', '-1', '2100'),
('110', '9', 'LFSK2', '13', 'DEF', '2021-03-06', '875', 'auto', '-4', '450'),
('111', '10', 'LFSK2', '13', 'DEF', '2021-03-07', '875', 'auto', '-4', '450'),
('112', '11', 'LFDK2', '13', 'DEF', '2021-03-07', '1350', 'auto', '-4', '650'),
('113', '12', 'LFSK2', '13', 'DEF', '2021-03-07', '875', 'auto', '-4', '450'),
('114', '13', 'LFHK3', '13', 'DEF', '2021-03-08', '5333.25', 'auto', '-3', '2100'),
('115', '14', 'LFSK3', '13', 'DEF', '2021-03-08', '1000', 'auto', '-4', '400'),
('116', '14', 'LFBP1', '13', 'DEF', '2021-03-08', '900', 'auto', '-8', '650'),
('117', '14', 'LFMNT6', '13', 'DEF', '2021-03-08', '700', 'auto', '-4', '500'),
('118', '15', 'LFDK2', '13', 'DEF', '2021-03-08', '2222', 'auto', '-4.5', '650'),
('119', '15', 'LFSK1', '13', 'DEF', '2021-03-08', '1111', 'auto', '-9', '630'),
('120', '16', 'LFSK1', '13', 'DEF', '2021-03-08', '1200', 'auto', '-4.5', '630'),
('121', '17', '41', '13', 'DEF', '2021-03-08', '3200', 'auto', '-6', '2000'),
('122', '17', 'LFSK1', '13', 'DEF', '2021-03-08', '1200', 'auto', '-4.5', '630'),
('123', '17', 'LFSK3', '13', 'DEF', '2021-03-08', '800', 'auto', '-4', '400'),
('126', '20', 'LFSS11', '13', 'DEF', '2021-03-09', '900', 'auto', '-4', '500'),
('127', '21', 'LFAQL', '13', 'DEF', '2021-03-09', '1900', 'auto', '-2', '800'),
('128', '22', 'LFSK1', '13', 'DEF', '2021-03-09', '1200', 'auto', '-4.5', '630'),
('129', '23', 'LFSK2', '13', 'DEF', '2021-03-09', '1050', 'auto', '-4', '450'),
('130', '24', 'LFSK2', '13', 'DEF', '2021-03-10', '750', 'auto', '-12', '450'),
('131', '24', 'LFAQL1', '13', 'DEF', '2021-03-10', '2800', 'auto', '-2', '900'),
('132', '25', 'LFTS1', '13', 'DEF', '2021-03-10', '1250', 'auto', '-8', '750'),
('133', '25', 'LFMNT4', '13', 'DEF', '2021-03-10', '1000', 'auto', '-4', '500'),
('134', '26', 'LFBP1', '13', 'DEF', '2021-03-10', '900', 'auto', '-16', '650'),
('135', '26', 'LFMNT12', '13', 'DEF', '2021-03-10', '700', 'auto', '-4', '450'),
('136', '27', 'LFDK', '13', 'DEF', '2021-03-10', '3200', 'auto', '-3', '700'),
('137', '28', 'LFSK1', '13', 'DEF', '2021-03-10', '1111', 'auto', '-4.5', '630'),
('138', '29', '02', '13', 'DEF', '2021-03-11', '5240', 'auto', '-1', '4500'),
('139', '30', 'LFAQL', '13', 'DEF', '2021-03-11', '2857', 'auto', '-3.5', '800'),
('140', '31', 'LFBP1', '13', 'DEF', '2021-03-11', '900', 'auto', '-8', '650'),
('141', '32', 'LFDK', '13', 'DEF', '2021-03-11', '2666', 'auto', '-3', '700'),
('142', '33', 'LFHK4', '13', 'DEF', '2021-03-11', '5500', 'auto', '-1', '2100'),
('143', '33', 'LFDK', '13', 'DEF', '2021-03-11', '2500', 'auto', '-10', '700'),
('144', '33', 'LFBP8', '13', 'DEF', '2021-03-11', '1044', 'auto', '-4.5', '830'),
('145', '33', 'LFDK2', '13', 'DEF', '2021-03-11', '1000', 'auto', '-3.5', '650'),
('146', '33', 'LFAQL', '13', 'DEF', '2021-03-11', '2500', 'auto', '-2.25', '800'),
('147', '33', 'LFABD3', '13', 'DEF', '2021-03-11', '2500', 'auto', '-2.25', '650'),
('148', '34', '06', '13', 'DEF', '2021-03-12', '7640', 'auto', '-1', '6400'),
('149', '34', '07', '13', 'DEF', '2021-03-12', '9630', 'auto', '-1', '8100'),
('150', '35', 'LFSK3', '13', 'DEF', '2021-03-12', '800', 'auto', '-4', '400'),
('151', '36', 'LFMNT11', '13', 'DEF', '2021-03-14', '1000', 'auto', '-4.5', '750'),
('152', '37', 'LFSK2', '13', 'DEF', '2021-03-14', '1050', 'auto', '-4', '450'),
('153', '37', 'LFBP1', '13', 'DEF', '2021-03-14', '950', 'auto', '-4', '650'),
('154', '37', 'LFMNT12', '13', 'DEF', '2021-03-14', '875', 'auto', '-4', '450'),
('155', '38', 'LFDK', '13', 'DEF', '2021-03-14', '2384', 'auto', '-9.5', '700'),
('156', '38', 'LFABD3', '13', 'DEF', '2021-03-14', '2384', 'auto', '-3.5', '650'),
('157', '39', 'LFAQL', '13', 'DEF', '2021-03-14', '2500', 'auto', '-2.5', '800'),
('158', '3', 'LFBP1', '25', 'DEF', '2021-03-14', '650', '', '238', '650'),
('159', '4', 'LFBP12', '25', 'DEF', '2021-03-14', '550', '', '54', '550'),
('160', '40', 'LFMNT9', '13', 'DEF', '2021-03-15', '1200', 'auto', '-4.5', '850'),
('161', '41', 'NG-01', '13', 'DEF', '2021-03-18', '200', 'auto', '-1', '0');

### Structure of table `0_supp_allocations` ###

DROP TABLE IF EXISTS `0_supp_allocations`;

CREATE TABLE `0_supp_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_supp_allocations` ###


### Structure of table `0_supp_invoice_items` ###

DROP TABLE IF EXISTS `0_supp_invoice_items`;

CREATE TABLE `0_supp_invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_trans_no` int(11) DEFAULT NULL,
  `supp_trans_type` int(11) DEFAULT NULL,
  `gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grn_item_id` int(11) DEFAULT NULL,
  `po_detail_item_id` int(11) DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `unit_tax` double NOT NULL DEFAULT 0,
  `memo_` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT 0,
  `dimension2_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`supp_trans_type`,`supp_trans_no`,`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_supp_invoice_items` ###

INSERT INTO `0_supp_invoice_items` VALUES
('1', '1', '20', '0', '1', '24', '01', 'PB', '0', '0', '182.5', NULL, '0', '0'),
('2', '2', '20', '2100', '-1', '0', '', NULL, '0', '223640', '0', 'OB ', '0', '0'),
('3', '3', '20', '2100', '-1', '0', '', NULL, '0', '470015', '0', 'OB ', '0', '0'),
('4', '4', '20', '2100', '-1', '0', '', NULL, '0', '64440', '0', 'OB ', '0', '0'),
('5', '5', '20', '2100', '-1', '0', '', NULL, '0', '726934', '0', 'OB ', '0', '0'),
('6', '6', '20', '2100', '-1', '0', '', NULL, '0', '742323', '0', 'OB ', '0', '0'),
('7', '7', '20', '2100', '-1', '0', '', NULL, '0', '155274', '0', 'OB ', '0', '0'),
('8', '8', '20', '0', '3', '26', 'LFBP1', 'TAURUS DEW', '238', '650', '32.5', NULL, '0', '0'),
('9', '9', '20', '0', '4', '27', 'LFBP12', 'TAURUS COMFORT', '54', '550', '27.5', NULL, '0', '0');

### Structure of table `0_supp_trans` ###

DROP TABLE IF EXISTS `0_supp_trans`;

CREATE TABLE `0_supp_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT 0,
  `type` smallint(6) unsigned NOT NULL DEFAULT 0,
  `supplier_id` int(11) unsigned NOT NULL,
  `reference` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `supp_reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `ov_amount` double NOT NULL DEFAULT 0,
  `ov_discount` double NOT NULL DEFAULT 0,
  `ov_gst` double NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 1,
  `alloc` double NOT NULL DEFAULT 0,
  `tax_included` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`type`,`trans_no`,`supplier_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_supp_trans` ###

INSERT INTO `0_supp_trans` VALUES
('1', '20', '1', '001/2018', '494', '2018-12-31', '2018-12-31', '0', '0', '0', '1', '0', '0'),
('2', '20', '4', '001/2020', '3/6/2021', '2020-12-31', '2020-12-31', '223640', '0', '0', '1', '0', '0'),
('3', '20', '10', '002/2020', '3/6/2021', '2020-12-31', '2020-12-31', '470015', '0', '0', '1', '0', '1'),
('4', '20', '5', '003/2020', '3/6/2021', '2020-12-31', '2020-12-31', '64440', '0', '0', '1', '0', '0'),
('5', '20', '1', '004/2020', '3/6/2021', '2020-12-31', '2021-01-17', '726934', '0', '0', '1', '0', '0'),
('6', '20', '6', '005/2020', '3/7/2021', '2020-12-31', '2021-01-17', '742323', '0', '0', '1', '0', '0'),
('7', '20', '9', '006/2020', '3/7/2021', '2020-12-31', '2021-01-17', '155274', '0', '0', '1', '0', '1'),
('8', '20', '1', '001/2021', '575', '2021-03-14', '2021-03-14', '154700', '0', '0', '1', '0', '0'),
('9', '20', '1', '002/2021', '575B', '2021-03-15', '2021-03-15', '29700', '0', '0', '1', '0', '0'),
('1', '22', '1', '001/2018', '', '2018-12-31', '2018-12-31', '0', '0', '0', '1', '0', '0');

### Structure of table `0_suppliers` ###

DROP TABLE IF EXISTS `0_suppliers`;

CREATE TABLE `0_suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supp_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `supp_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `gst_no` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supp_account_no` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_account` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) NOT NULL DEFAULT 0,
  `dimension_id` int(11) DEFAULT 0,
  `dimension2_id` int(11) DEFAULT 0,
  `tax_group_id` int(11) DEFAULT NULL,
  `credit_limit` double NOT NULL DEFAULT 0,
  `purchase_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payable_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`supplier_id`),
  KEY `supp_ref` (`supp_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_suppliers` ###

INSERT INTO `0_suppliers` VALUES
('1', 'Bilal Paragon', 'BP', '', '', '494', '', '', '', 'Askari Bank - Malik Khurram', 'PKR', '1', '0', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('2', 'HASRAT KHAN ', 'HK', '', 'SAEHAD SUITING CENTER, NOSHERA', '', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '2', '0', '0', '0', '2', '0', '', '2100', '5060', 'UNLIMITED CREDIT LIMIT ', '0'),
('3', 'TAQI SAHAB ', 'TS', '', 'RAJA BAZAR FAISAL MARKET ', '035', '', '', '', '', 'PKR', '3', '1', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('4', 'ABDUL WAHEED ', 'AW', '', 'NOSHERA , SHIMALA CLOTH HOUSE ', '350', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '1', '0', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('5', 'AQEEL AHMAD ', 'AQ', '', 'AJMERI FABRICS, NOSHEHRA ', '122', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '1', '0', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('6', 'M.NAUMAN TAYYAB SHEIKH', 'MNT', '', 'AL-REHMAN TRADERS, MADINA MARKET RAJA BAZAR ', '331', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '1', '0', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('7', 'SHAHID SAHAB ', 'SS', '', 'A.R &amp; SONS JADDA MARKET RAJA BAZAR', '3430', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '1', '0', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('8', 'DADA FABRICS ', 'DF', '', 'DADA FABRICS, SHAD MAN LAHORE ', '561', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '1', '1', '0', '0', '1', '0', '', '2100', '5060', '', '0'),
('9', 'DILAWAR KHAN', 'DK', '', 'DILAWAR KHAN, NOSHEHRA ', '844', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '1', '1', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('10', 'SHEIKH KAMRAN ', 'SK', '', 'AL JAVEED FABRICS, FAISALABAD ', '103', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '1', '1', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('11', 'IBRAR', 'IBR', '', 'RWP', '10', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '2', '1', '0', '0', '2', '0', '', '2100', '5060', '', '0'),
('12', 'HARRIS IRFAN', 'HI', '', 'CHINA MARKET, COLLEGE ROAD, RAJA BAZAR RAWALPINDI ', '6417', '', '', '', 'MEEZAN BANK/ CASH', 'PKR', '1', '0', '0', '0', '2', '0', '', '2100', '5060', '', '0');

### Structure of table `0_sys_prefs` ###

DROP TABLE IF EXISTS `0_sys_prefs`;

CREATE TABLE `0_sys_prefs` (
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `length` smallint(6) DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_sys_prefs` ###

INSERT INTO `0_sys_prefs` VALUES
('accounts_alpha', 'glsetup.general', 'tinyint', '1', '0'),
('accumulate_shipping', 'glsetup.customer', 'tinyint', '1', '0'),
('add_pct', 'setup.company', 'int', '5', '-1'),
('allow_negative_prices', 'glsetup.inventory', 'tinyint', '1', '1'),
('allow_negative_stock', 'glsetup.inventory', 'tinyint', '1', '0'),
('alternative_tax_include_on_docs', 'setup.company', 'tinyint', '1', ''),
('auto_curr_reval', 'setup.company', 'smallint', '6', '1'),
('bank_charge_act', 'glsetup.general', 'varchar', '15', '5690'),
('barcodes_on_stock', 'setup.company', 'tinyint', '1', '0'),
('base_sales', 'setup.company', 'int', '11', '1'),
('bcc_email', 'setup.company', 'varchar', '100', ''),
('company_logo_report', 'setup.company', 'tinyint', '1', '1'),
('coy_logo', 'setup.company', 'varchar', '100', 'giga-mall-logo-resizes-04.jpg'),
('coy_name', 'setup.company', 'varchar', '60', 'MEN&#039;S WEAR LAWRENCEPUR '),
('coy_no', 'setup.company', 'varchar', '25', '0512809899'),
('creditors_act', 'glsetup.purchase', 'varchar', '15', '2100'),
('curr_default', 'setup.company', 'char', '3', 'PKR'),
('debtors_act', 'glsetup.sales', 'varchar', '15', '1200'),
('default_adj_act', 'glsetup.items', 'varchar', '15', '5040'),
('default_cogs_act', 'glsetup.items', 'varchar', '15', '5010'),
('default_credit_limit', 'glsetup.customer', 'int', '11', '1000'),
('default_delivery_required', 'glsetup.sales', 'smallint', '6', '1'),
('default_dim_required', 'glsetup.dims', 'int', '11', '20'),
('default_inv_sales_act', 'glsetup.items', 'varchar', '15', '4010'),
('default_inventory_act', 'glsetup.items', 'varchar', '15', '1510'),
('default_loss_on_asset_disposal_act', 'glsetup.items', 'varchar', '15', '5660'),
('default_prompt_payment_act', 'glsetup.sales', 'varchar', '15', '4500'),
('default_quote_valid_days', 'glsetup.sales', 'smallint', '6', '30'),
('default_receival_required', 'glsetup.purchase', 'smallint', '6', '10'),
('default_sales_act', 'glsetup.sales', 'varchar', '15', '4010'),
('default_sales_discount_act', 'glsetup.sales', 'varchar', '15', '4510'),
('default_wip_act', 'glsetup.items', 'varchar', '15', '1530'),
('default_workorder_required', 'glsetup.manuf', 'int', '11', '20'),
('deferred_income_act', 'glsetup.sales', 'varchar', '15', '2105'),
('depreciation_period', 'glsetup.company', 'tinyint', '1', '1'),
('domicile', 'setup.company', 'varchar', '55', 'ISLAMABAD '),
('email', 'setup.company', 'varchar', '100', 'YASIRHASHMI80@GMAIL.COM'),
('exchange_diff_act', 'glsetup.general', 'varchar', '15', '4450'),
('f_year', 'setup.company', 'int', '11', '4'),
('fax', 'setup.company', 'varchar', '30', ''),
('freight_act', 'glsetup.customer', 'varchar', '15', '4430'),
('gl_closing_date', 'setup.closing_date', 'date', '8', '2020-12-31'),
('grn_clearing_act', 'glsetup.purchase', 'varchar', '15', '1550'),
('gst_no', 'setup.company', 'varchar', '25', '6648971'),
('legal_text', 'glsetup.customer', 'tinytext', '0', ''),
('loc_notification', 'glsetup.inventory', 'tinyint', '1', '0'),
('login_tout', 'setup.company', 'smallint', '6', '600000'),
('no_customer_list', 'setup.company', 'tinyint', '1', '1'),
('no_item_list', 'setup.company', 'tinyint', '1', '1'),
('no_supplier_list', 'setup.company', 'tinyint', '1', '1'),
('no_zero_lines_amount', 'glsetup.sales', 'tinyint', '1', '1'),
('past_due_days', 'glsetup.general', 'int', '11', '30'),
('phone', 'setup.company', 'varchar', '30', '0512809899'),
('po_over_charge', 'glsetup.purchase', 'int', '11', '10'),
('po_over_receive', 'glsetup.purchase', 'int', '11', '10'),
('postal_address', 'setup.company', 'tinytext', '0', 'SHOP NO 8, UNIT 1/Q, AL-MUSTAFA MANTION, NEAR KF, F-10 MARKAZ, ISLAMABAD. '),
('print_dialog_direct', 'setup.company', 'tinyint', '1', '0'),
('print_invoice_no', 'glsetup.sales', 'tinyint', '1', '0'),
('print_item_images_on_quote', 'glsetup.inventory', 'tinyint', '1', '0'),
('profit_loss_year_act', 'glsetup.general', 'varchar', '15', '9990'),
('pyt_discount_act', 'glsetup.purchase', 'varchar', '15', '5060'),
('ref_no_auto_increase', 'setup.company', 'tinyint', '1', '1'),
('retained_earnings_act', 'glsetup.general', 'varchar', '15', '3590'),
('round_to', 'setup.company', 'int', '5', '1'),
('shortname_name_in_list', 'setup.company', 'tinyint', '1', ''),
('show_po_item_codes', 'glsetup.purchase', 'tinyint', '1', '0'),
('suppress_tax_rates', 'setup.company', 'tinyint', '1', ''),
('tax_algorithm', 'glsetup.customer', 'tinyint', '1', '1'),
('tax_last', 'setup.company', 'int', '11', '1'),
('tax_prd', 'setup.company', 'int', '11', '1'),
('time_zone', 'setup.company', 'tinyint', '1', '0'),
('use_dimension', 'setup.company', 'tinyint', '1', '1'),
('use_fixed_assets', 'setup.company', 'tinyint', '1', '1'),
('use_manufacturing', 'setup.company', 'tinyint', '1', '1'),
('version_id', 'system', 'varchar', '11', '2.4.1');

### Structure of table `0_tag_associations` ###

DROP TABLE IF EXISTS `0_tag_associations`;

CREATE TABLE `0_tag_associations` (
  `record_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tag_id` int(11) NOT NULL,
  UNIQUE KEY `record_id` (`record_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tag_associations` ###


### Structure of table `0_tags` ###

DROP TABLE IF EXISTS `0_tags`;

CREATE TABLE `0_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tags` ###


### Structure of table `0_tax_group_items` ###

DROP TABLE IF EXISTS `0_tax_group_items`;

CREATE TABLE `0_tax_group_items` (
  `tax_group_id` int(11) NOT NULL DEFAULT 0,
  `tax_type_id` int(11) NOT NULL DEFAULT 0,
  `tax_shipping` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tax_group_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tax_group_items` ###

INSERT INTO `0_tax_group_items` VALUES
('1', '1', '1');

### Structure of table `0_tax_groups` ###

DROP TABLE IF EXISTS `0_tax_groups`;

CREATE TABLE `0_tax_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tax_groups` ###

INSERT INTO `0_tax_groups` VALUES
('1', 'Tax', '0'),
('2', 'Tax Exempt', '0');

### Structure of table `0_tax_types` ###

DROP TABLE IF EXISTS `0_tax_types`;

CREATE TABLE `0_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL DEFAULT 0,
  `sales_gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchasing_gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_tax_types` ###

INSERT INTO `0_tax_types` VALUES
('1', '5', '2150', '2150', 'Tax', '0');

### Structure of table `0_trans_tax_details` ###

DROP TABLE IF EXISTS `0_trans_tax_details`;

CREATE TABLE `0_trans_tax_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `tran_date` date NOT NULL,
  `tax_type_id` int(11) NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 0,
  `ex_rate` double NOT NULL DEFAULT 1,
  `included_in_price` tinyint(1) NOT NULL DEFAULT 0,
  `net_amount` double NOT NULL DEFAULT 0,
  `amount` double NOT NULL DEFAULT 0,
  `memo` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Type_and_Number` (`trans_type`,`trans_no`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_trans_tax_details` ###

INSERT INTO `0_trans_tax_details` VALUES
('1', '20', '1', '2018-12-31', '1', '5', '1', '0', '0', '0', '494', '1'),
('2', '13', '1', '2021-03-08', '0', '0', '1', '0', '17900', '0', 'auto', NULL),
('3', '10', '1', '2021-03-08', '0', '0', '1', '0', '17900', '0', '001/2021', '0'),
('4', '13', '2', '2021-03-06', '0', '0', '1', '0', '7200', '0', 'auto', NULL),
('5', '10', '2', '2021-03-06', '0', '0', '1', '0', '7200', '0', '002/2021', '0'),
('6', '13', '3', '2021-03-06', '0', '0', '1', '0', '14000', '0', 'auto', NULL),
('7', '10', '3', '2021-03-06', '0', '0', '1', '0', '14000', '0', '003/2021', '0'),
('8', '13', '4', '2021-03-06', '0', '0', '1', '0', '10000', '0', 'auto', NULL),
('9', '10', '4', '2021-03-06', '0', '0', '1', '0', '10000', '0', '004/2021', '0'),
('10', '13', '5', '2021-03-10', '0', '0', '1', '0', '3200', '0', 'auto', NULL),
('11', '10', '5', '2021-03-10', '0', '0', '1', '0', '3200', '0', '005/2021', '0'),
('12', '13', '6', '2021-03-06', '0', '0', '1', '0', '6000', '0', 'auto', NULL),
('13', '10', '6', '2021-03-06', '0', '0', '1', '0', '6000', '0', '006/2021', '0'),
('14', '13', '7', '2021-03-06', '0', '0', '1', '0', '3500', '0', 'auto', NULL),
('15', '10', '7', '2021-03-06', '0', '0', '1', '0', '3500', '0', '007/2021', '0'),
('16', '13', '8', '2021-03-06', '0', '0', '1', '0', '8202.5', '0', 'auto', NULL),
('17', '10', '8', '2021-03-06', '0', '0', '1', '0', '8202.5', '0', '008/2021', '0'),
('18', '13', '9', '2021-03-06', '0', '0', '1', '0', '3500', '0', 'auto', NULL),
('19', '10', '9', '2021-03-06', '0', '0', '1', '0', '3500', '0', '009/2021', '0'),
('20', '13', '10', '2021-03-07', '0', '0', '1', '0', '3500', '0', 'auto', NULL),
('21', '10', '10', '2021-03-07', '0', '0', '1', '0', '3500', '0', '010/2021', '0'),
('22', '13', '11', '2021-03-07', '0', '0', '1', '0', '5400', '0', 'auto', NULL),
('23', '10', '11', '2021-03-07', '0', '0', '1', '0', '5400', '0', '011/2021', '0'),
('24', '13', '12', '2021-03-07', '0', '0', '1', '0', '3500', '0', 'auto', NULL),
('25', '10', '12', '2021-03-07', '0', '0', '1', '0', '3500', '0', '012/2021', '0'),
('26', '13', '13', '2021-03-08', '0', '0', '1', '0', '15999.75', '0', 'auto', NULL),
('27', '10', '13', '2021-03-08', '0', '0', '1', '0', '15999.75', '0', '013/2021', '0'),
('28', '13', '14', '2021-03-08', '0', '0', '1', '0', '14000', '0', 'auto', NULL),
('29', '10', '14', '2021-03-08', '0', '0', '1', '0', '14000', '0', '014/2021', '0'),
('30', '13', '15', '2021-03-08', '0', '0', '1', '0', '19998', '0', 'auto', NULL),
('31', '10', '15', '2021-03-08', '0', '0', '1', '0', '19998', '0', '015/2021', '0'),
('32', '13', '16', '2021-03-08', '0', '0', '1', '0', '5400', '0', 'auto', NULL),
('33', '10', '16', '2021-03-08', '0', '0', '1', '0', '5400', '0', '016/2021', '0'),
('34', '13', '17', '2021-03-08', '0', '0', '1', '0', '27800', '0', 'auto', NULL),
('35', '10', '17', '2021-03-08', '0', '0', '1', '0', '27800', '0', '017/2021', '0'),
('36', '13', '18', '2021-03-08', '0', '0', '1', '0', '0', '0', 'auto', NULL),
('37', '10', '18', '2021-03-08', '0', '0', '1', '0', '0', '0', '018/2021', '0'),
('38', '13', '19', '2021-03-08', '0', '0', '1', '0', '0', '0', 'auto', NULL),
('39', '10', '19', '2021-03-08', '0', '0', '1', '0', '0', '0', '019/2021', '0'),
('40', '13', '20', '2021-03-09', '0', '0', '1', '0', '3600', '0', 'auto', NULL),
('41', '10', '20', '2021-03-09', '0', '0', '1', '0', '3600', '0', '018/2021', '0'),
('42', '13', '21', '2021-03-09', '0', '0', '1', '0', '3800', '0', 'auto', NULL),
('43', '10', '21', '2021-03-09', '0', '0', '1', '0', '3800', '0', '019/2021', '0'),
('44', '13', '22', '2021-03-09', '0', '0', '1', '0', '5400', '0', 'auto', NULL),
('45', '10', '22', '2021-03-09', '0', '0', '1', '0', '5400', '0', '020/2021', '0'),
('46', '13', '23', '2021-03-09', '0', '0', '1', '0', '4200', '0', 'auto', NULL),
('47', '10', '23', '2021-03-09', '0', '0', '1', '0', '4200', '0', '021/2021', '0'),
('48', '13', '24', '2021-03-10', '0', '0', '1', '0', '14600', '0', 'auto', NULL),
('49', '10', '24', '2021-03-10', '0', '0', '1', '0', '14600', '0', '022/2021', '0'),
('50', '13', '25', '2021-03-10', '0', '0', '1', '0', '14000', '0', 'auto', NULL),
('51', '10', '25', '2021-03-10', '0', '0', '1', '0', '14000', '0', '023/2021', '0'),
('52', '13', '26', '2021-03-10', '0', '0', '1', '0', '17200', '0', 'auto', NULL),
('53', '10', '26', '2021-03-10', '0', '0', '1', '0', '17200', '0', '024/2021', '0'),
('54', '13', '27', '2021-03-10', '0', '0', '1', '0', '9600', '0', 'auto', NULL),
('55', '10', '27', '2021-03-10', '0', '0', '1', '0', '9600', '0', '025/2021', '0'),
('56', '13', '28', '2021-03-10', '0', '0', '1', '0', '4999.5', '0', 'auto', NULL),
('57', '10', '28', '2021-03-10', '0', '0', '1', '0', '4999.5', '0', '026/2021', '0'),
('58', '13', '29', '2021-03-11', '0', '0', '1', '0', '5240', '0', 'auto', NULL),
('59', '10', '29', '2021-03-11', '0', '0', '1', '0', '5240', '0', '027/2021', '0'),
('60', '13', '30', '2021-03-11', '0', '0', '1', '0', '9999.5', '0', 'auto', NULL),
('61', '10', '30', '2021-03-11', '0', '0', '1', '0', '9999.5', '0', '028/2021', '0'),
('62', '13', '31', '2021-03-11', '0', '0', '1', '0', '7200', '0', 'auto', NULL),
('63', '10', '31', '2021-03-11', '0', '0', '1', '0', '7200', '0', '029/2021', '0'),
('64', '13', '32', '2021-03-11', '0', '0', '1', '0', '7998', '0', 'auto', NULL),
('65', '10', '32', '2021-03-11', '0', '0', '1', '0', '7998', '0', '030/2021', '0'),
('66', '13', '33', '2021-03-11', '0', '0', '1', '0', '49948', '0', 'auto', NULL),
('67', '10', '33', '2021-03-11', '0', '0', '1', '0', '49948', '0', '031/2021', '0'),
('68', '13', '34', '2021-03-12', '0', '0', '1', '0', '17270', '0', 'auto', NULL),
('69', '10', '34', '2021-03-12', '0', '0', '1', '0', '17270', '0', '032/2021', '0'),
('70', '13', '35', '2021-03-12', '0', '0', '1', '0', '3200', '0', 'auto', NULL),
('71', '10', '35', '2021-03-12', '0', '0', '1', '0', '3200', '0', '033/2021', '0'),
('72', '13', '36', '2021-03-14', '0', '0', '1', '0', '4500', '0', 'auto', NULL),
('73', '10', '36', '2021-03-14', '0', '0', '1', '0', '4500', '0', '034/2021', '0'),
('74', '13', '37', '2021-03-14', '0', '0', '1', '0', '11500', '0', 'auto', NULL),
('75', '10', '37', '2021-03-14', '0', '0', '1', '0', '11500', '0', '035/2021', '0'),
('76', '13', '38', '2021-03-14', '0', '0', '1', '0', '30992', '0', 'auto', NULL),
('77', '10', '38', '2021-03-14', '0', '0', '1', '0', '30992', '0', '036/2021', '0'),
('78', '13', '39', '2021-03-14', '0', '0', '1', '0', '6250', '0', 'auto', NULL),
('79', '10', '39', '2021-03-14', '0', '0', '1', '0', '6250', '0', '037/2021', '0'),
('80', '20', '8', '2021-03-14', '0', '0', '1', '0', '154700', '0', '575', '1'),
('81', '20', '9', '2021-03-15', '0', '0', '1', '0', '29700', '0', '575B', '1'),
('82', '13', '40', '2021-03-15', '0', '0', '1', '0', '5400', '0', 'auto', NULL),
('83', '10', '40', '2021-03-15', '0', '0', '1', '0', '5400', '0', '038/2021', '0'),
('84', '13', '41', '2021-03-18', '0', '0', '1', '0', '200', '0', 'auto', NULL),
('85', '10', '41', '2021-03-18', '0', '0', '1', '0', '200', '0', '039/2021', '0');

### Structure of table `0_useronline` ###

DROP TABLE IF EXISTS `0_useronline`;

CREATE TABLE `0_useronline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(15) NOT NULL DEFAULT 0,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_useronline` ###


### Structure of table `0_users` ###

DROP TABLE IF EXISTS `0_users`;

CREATE TABLE `0_users` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_id` int(11) NOT NULL DEFAULT 1,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` tinyint(1) NOT NULL DEFAULT 0,
  `date_sep` tinyint(1) NOT NULL DEFAULT 0,
  `tho_sep` tinyint(1) NOT NULL DEFAULT 0,
  `dec_sep` tinyint(1) NOT NULL DEFAULT 0,
  `theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `page_size` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A4',
  `prices_dec` smallint(6) NOT NULL DEFAULT 2,
  `qty_dec` smallint(6) NOT NULL DEFAULT 2,
  `rates_dec` smallint(6) NOT NULL DEFAULT 4,
  `percent_dec` smallint(6) NOT NULL DEFAULT 1,
  `show_gl` tinyint(1) NOT NULL DEFAULT 1,
  `show_codes` tinyint(1) NOT NULL DEFAULT 0,
  `show_hints` tinyint(1) NOT NULL DEFAULT 0,
  `last_visit_date` datetime DEFAULT NULL,
  `query_size` tinyint(1) unsigned NOT NULL DEFAULT 10,
  `graphic_links` tinyint(1) DEFAULT 1,
  `pos` smallint(6) DEFAULT 1,
  `print_profile` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rep_popup` tinyint(1) DEFAULT 1,
  `sticky_doc_date` tinyint(1) DEFAULT 0,
  `startup_tab` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `transaction_days` smallint(6) NOT NULL DEFAULT 30,
  `save_report_selections` smallint(6) NOT NULL DEFAULT 0,
  `use_date_picker` tinyint(1) NOT NULL DEFAULT 1,
  `def_print_destination` tinyint(1) NOT NULL DEFAULT 0,
  `def_print_orientation` tinyint(1) NOT NULL DEFAULT 0,
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_users` ###

INSERT INTO `0_users` VALUES
('1', 'admin', '7c1ed55e575e5dbe04a26400e208f740', 'Administrator', '2', '', 'adm@example.com', 'C', '0', '0', '0', '0', 'canvas', 'Letter', '2', '2', '4', '1', '1', '0', '0', '2021-04-03 12:29:17', '10', '1', '1', '', '1', '0', 'orders', '30', '0', '1', '0', '0', '0'),
('2', 'hashmi007', 'cc78e879ad4af529badc372690c5b252', 'Yasir Hashmi ', '2', '03365467955', 'YASIRHASHMI80@GMAIL.COM', NULL, '0', '0', '0', '0', 'canvas', 'Letter', '2', '2', '4', '1', '1', '0', '0', '2021-03-30 21:12:28', '10', '1', '1', '', '1', '0', 'orders', '30', '0', '1', '0', '0', '0'),
('3', 'yasirtariq', 'c2bef417bdd06fb2c0e8daaf50a8c832', 'Yasir Tariq', '2', '03369959396', 'yasirtariq123@gmail.com', NULL, '0', '0', '0', '0', 'canvas', 'Letter', '2', '2', '4', '1', '1', '0', '0', NULL, '10', '1', '1', '', '1', '0', 'orders', '30', '0', '1', '0', '0', '0');

### Structure of table `0_voided` ###

DROP TABLE IF EXISTS `0_voided`;

CREATE TABLE `0_voided` (
  `type` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL DEFAULT 0,
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_voided` ###

INSERT INTO `0_voided` VALUES
('1', '2', '2021-03-15', 'Document reentered.'),
('10', '18', '2021-03-12', ''),
('10', '19', '2021-03-12', ''),
('12', '20', '2021-03-12', ''),
('12', '21', '2021-03-12', ''),
('13', '18', '2021-03-12', ''),
('13', '19', '2021-03-12', ''),
('20', '1', '2018-12-31', ''),
('22', '1', '2018-12-31', ''),
('25', '1', '2018-12-31', ''),
('25', '2', '2018-12-31', '');

### Structure of table `0_wo_costing` ###

DROP TABLE IF EXISTS `0_wo_costing`;

CREATE TABLE `0_wo_costing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT 0,
  `cost_type` tinyint(1) NOT NULL DEFAULT 0,
  `trans_type` int(11) NOT NULL DEFAULT 0,
  `trans_no` int(11) NOT NULL DEFAULT 0,
  `factor` double NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_costing` ###


### Structure of table `0_wo_issue_items` ###

DROP TABLE IF EXISTS `0_wo_issue_items`;

CREATE TABLE `0_wo_issue_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `qty_issued` double DEFAULT NULL,
  `unit_cost` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_issue_items` ###


### Structure of table `0_wo_issues` ###

DROP TABLE IF EXISTS `0_wo_issues`;

CREATE TABLE `0_wo_issues` (
  `issue_no` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `loc_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workcentre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`issue_no`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_issues` ###


### Structure of table `0_wo_manufacture` ###

DROP TABLE IF EXISTS `0_wo_manufacture`;

CREATE TABLE `0_wo_manufacture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT 0,
  `quantity` double NOT NULL DEFAULT 0,
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_manufacture` ###


### Structure of table `0_wo_requirements` ###

DROP TABLE IF EXISTS `0_wo_requirements`;

CREATE TABLE `0_wo_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT 0,
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workcentre` int(11) NOT NULL DEFAULT 0,
  `units_req` double NOT NULL DEFAULT 1,
  `unit_cost` double NOT NULL DEFAULT 0,
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `units_issued` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_wo_requirements` ###


### Structure of table `0_workcentres` ###

DROP TABLE IF EXISTS `0_workcentres`;

CREATE TABLE `0_workcentres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_workcentres` ###


### Structure of table `0_workorders` ###

DROP TABLE IF EXISTS `0_workorders`;

CREATE TABLE `0_workorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wo_ref` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `loc_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `units_reqd` double NOT NULL DEFAULT 1,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `required_by` date NOT NULL DEFAULT '0000-00-00',
  `released_date` date NOT NULL DEFAULT '0000-00-00',
  `units_issued` double NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `released` tinyint(1) NOT NULL DEFAULT 0,
  `additional_costs` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wo_ref` (`wo_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `0_workorders` ###
