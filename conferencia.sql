/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.6.24 : Database - conferencia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`conferencia` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `conferencia`;

/*Table structure for table `alumnos` */

DROP TABLE IF EXISTS `alumnos`;

CREATE TABLE `alumnos` (
  `cuenta_alumno` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `plan` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`cuenta_alumno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `alumnos` */

insert  into `alumnos`(`cuenta_alumno`,`nombre`,`plan`) values ('12545','ftdf','lia'),('13217','pedro','lia'),('1321787','oscar','lia'),('2424','loerot','eree4'),('2454','gchgc','hyhjyuf'),('425','jhj','hvjh'),('5475','nvmn','bvcb');

/*Table structure for table `conferencia` */

DROP TABLE IF EXISTS `conferencia`;

CREATE TABLE `conferencia` (
  `id_conferencia` varchar(10) CHARACTER SET utf8 NOT NULL,
  `n_cuenta` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `nombre` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lugar` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hora` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `depsrtamento` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_conferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `conferencia` */

/*Table structure for table `registro` */

DROP TABLE IF EXISTS `registro`;

CREATE TABLE `registro` (
  `cuenta_alumno` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `id_conferencia` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `entrada` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `salida` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  KEY `NewIndex1` (`cuenta_alumno`),
  KEY `NewIndex2` (`cuenta_alumno`),
  KEY `FK_registro` (`id_conferencia`),
  CONSTRAINT `FK_registro` FOREIGN KEY (`cuenta_alumno`) REFERENCES `alumnos` (`cuenta_alumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKregistro` FOREIGN KEY (`id_conferencia`) REFERENCES `conferencia` (`id_conferencia`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registro` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
