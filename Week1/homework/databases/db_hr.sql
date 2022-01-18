# ************************************************************
# Sequel Ace SQL dump
# Version 20021
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 5.7.34)
# Database: db_hr
# Generation Time: 2022-01-18 21:58:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table emp_loca
# ------------------------------------------------------------

DROP TABLE IF EXISTS `emp_loca`;

CREATE TABLE `emp_loca` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `emp_loca` WRITE;
/*!40000 ALTER TABLE `emp_loca` DISABLE KEYS */;

INSERT INTO `emp_loca` (`id`, `emp_id`, `com_id`)
VALUES
	(1,1,2),
	(2,3,2),
	(3,2,1),
	(4,9,4),
	(5,4,1),
	(6,5,4),
	(7,6,2),
	(8,8,1),
	(9,10,2),
	(10,7,4);

/*!40000 ALTER TABLE `emp_loca` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `emp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `first_name` varchar(35) NOT NULL DEFAULT '',
  `last_name` varchar(35) NOT NULL DEFAULT '',
  `age` int(11) NOT NULL,
  `hire_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;

INSERT INTO `employees` (`emp_id`, `title`, `first_name`, `last_name`, `age`, `hire_date`)
VALUES
	(1,'Teacher','Hannah','Jakobsson',30,'2009-10-20'),
	(2,'Computer systems analyst','Märtha','Jönsson',40,'2019-12-11'),
	(3,'Contract cutter','Ryan','Eliasson',24,'2001-03-08'),
	(4,'Mechanical drafter','Daniella','Eliasson',30,'2001-03-08'),
	(5,'Production and planning','Emelia','Jonasson',40,'2018-04-09'),
	(6,'Life Guard','Angelica','Gustafsson',50,'2009-10-11'),
	(7,'Media outreach specialist','Gordon','Eliasson',46,'2008-02-01'),
	(8,'Power lineman','Michaela','Jakobsson',46,'2008-05-09'),
	(9,'Press relations specialist','Karin','Gunnarsson',46,'2009-01-08'),
	(10,'Continuous mining machine operator','Magdalena','Jonasson',35,'2018-01-03');

/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `com_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `com_name` varchar(55) NOT NULL DEFAULT '',
  `address` varchar(55) NOT NULL DEFAULT '',
  `zipe_code` int(11) NOT NULL,
  `city` varchar(55) NOT NULL DEFAULT '',
  `country` varchar(55) NOT NULL DEFAULT '',
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;

INSERT INTO `locations` (`com_id`, `com_name`, `address`, `zipe_code`, `city`, `country`)
VALUES
	(1,'Zany Brainy','Nöjesgatan 38',78051,'DALA-JÄRNA','Sweden'),
	(2,'Copeland Sports','Klinta 83',57032,'HJÄLTEVAD','Sweden'),
	(3,'American Wholesale Club','Backsippestigen 81',87990,'KÅLLERED','Sweden'),
	(4,'Disc Jockey','Gulleråsen Västabäcksgatu 69',37272,'KALLINGE','Sweden');

/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
