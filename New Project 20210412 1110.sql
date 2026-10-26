-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema malware
--

CREATE DATABASE IF NOT EXISTS malware;
USE malware;

--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`Id`,`username`,`email`,`password`,`status`) VALUES 
 (1,'sathish','sathish@gmail.com','Sandy@123','Blocked'),
 (2,'santhosh','sonsandy1993@gmail.com','Sandy@123','Approved'),
 (3,'jp','jp@gmail.com','Sandy@123','Approved');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `news_content` varchar(200) NOT NULL,
  `pred` varchar(45) NOT NULL,
  `userid` varchar(45) NOT NULL,
  `url` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`id`,`news_content`,`pred`,`userid`,`url`) VALUES 
 (1,'www.datacamp.com/','No Malicious','2','check this https://www.datacamp.com/'),
 (2,'www.pexels.com/','No Malicious','1','https://www.pexels.com/'),
 (3,'http://citeceramica.com/','Malicious','1','views this product website http://citeceramica.com/'),
 (4,'www.youtube.com/','No Malicious','3','https://www.youtube.com/'),
 (5,'www.youtube.com/','No Malicious','3','view this video https://www.youtube.com/  ');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
