-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `olap_cube_dimensions`
--

DROP TABLE IF EXISTS `olap_cube_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `olap_cube_dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dimension` varchar(100) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `table_parent` varchar(255) NOT NULL,
  `table_join` text,
  `table_field` text,
  `table_group` text,
  `olap_cube_id` int(11) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `order` int(3) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `olap_cube_id` (`olap_cube_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `olap_cube_dimensions`
--

LOCK TABLES `olap_cube_dimensions` WRITE;
/*!40000 ALTER TABLE `olap_cube_dimensions` DISABLE KEYS */;
INSERT INTO `olap_cube_dimensions` VALUES (1,'Education System','EducationSystem','CensusStudent','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStudent.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_programmes\',\n	\'alias\' => \'InstitutionSiteProgramme\',\n	\'conditions\' => array(\'InstitutionSite.id = InstitutionSiteProgramme.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_programmes\',\n	\'alias\' => \'EducationProgramme\',\n	\'conditions\' => array(\'EducationProgramme.id = InstitutionSiteProgramme.education_programme_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_cycles\',\n	\'alias\' => \'EducationCycle\',\n	\'conditions\' => array(\'EducationCycle.id = EducationProgramme.education_cycle_id\', \'EducationCycle.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_levels\',\n	\'alias\' => \'EducationLevel\',\n	\'conditions\' => array(\'EducationLevel.id = EducationCycle.education_level_id\', \'EducationLevel.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_systems\',\n	\'alias\' => \'EducationSystem\',\n	\'conditions\' => array(\'EducationSystem.id = EducationLevel.education_system_id\')\n)','EducationSystem.name','EducationSystem.id',1,1,1,NULL,NULL,1,'2014-03-28 00:00:00'),(2,'Institution','Institution','CensusStudent','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStudent.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n)','Institution.name','Institution.id',1,1,2,NULL,NULL,1,'2014-03-28 00:00:00'),(3,'Institution Provider','InstitutionProvider','CensusStudent','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStudent.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_providers\',\n	\'alias\' => \'InstitutionProvider\',\n	\'conditions\' => array(\'Institution.institution_provider_id = InstitutionProvider.id\')\n)','InstitutionProvider.name','InstitutionProvider.id',1,1,3,NULL,NULL,1,'2014-04-03 00:00:00'),(4,'Institution Site','InstitutionSite','CensusStudent','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStudent.institution_site_id = InstitutionSite.id\')\n)','InstitutionSite.name','InstitutionSite.id',1,1,4,NULL,NULL,1,'2014-04-03 00:00:00'),(5,'Institution Site Type','InstitutionSiteType','CensusStudent','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStudent.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_types\',\n	\'alias\' => \'InstitutionSiteType\',\n	\'conditions\' => array(\'InstitutionSite.institution_site_type_id = InstitutionSiteType.id\')\n)','InstitutionSiteType.name','InstitutionSiteType.id',1,1,5,NULL,NULL,1,'2014-04-03 00:00:00'),(6,'Year','SchoolYear','CensusStudent','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStudent.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_classes\',\n	\'alias\' => \'InstitutionSiteClass\',\n	\'conditions\' => array(\'InstitutionSite.id = InstitutionSiteClass.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'school_years\',\n	\'alias\' => \'SchoolYear\',\n	\'conditions\' => array(\'SchoolYear.id = InstitutionSiteClass.school_year_id\')\n)','SchoolYear.name','SchoolYear.id',1,1,6,NULL,NULL,1,'2014-04-03 00:00:00'),(7,'Category','StudentCategory','CensusStudent','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'student_categories\',\n	\'alias\' => \'StudentCategory\',\n	\'conditions\' => array(\'StudentCategory.id = CensusStudent.student_category_id\')\n)','StudentCategory.name','StudentCategory.id',1,1,7,NULL,NULL,1,'2014-04-03 00:00:00'),(8,'Gender','CensusStudent','CensusStudent',NULL,'CensusStudent.male','CensusStudent.male',1,1,8,NULL,NULL,1,'2014-04-03 00:00:00'),(9,'Age','CensusStudent','CensusStudent',NULL,'CensusStudent.age','CensusStudent.age',1,1,9,NULL,NULL,1,'2014-04-03 00:00:00'),(10,'Education System','EducationSystem','CensusTeacher','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTeacher.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_programmes\',\n	\'alias\' => \'InstitutionSiteProgramme\',\n	\'conditions\' => array(\'InstitutionSite.id = InstitutionSiteProgramme.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_programmes\',\n	\'alias\' => \'EducationProgramme\',\n	\'conditions\' => array(\'EducationProgramme.id = InstitutionSiteProgramme.education_programme_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_cycles\',\n	\'alias\' => \'EducationCycle\',\n	\'conditions\' => array(\'EducationCycle.id = EducationProgramme.education_cycle_id\', \'EducationCycle.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_levels\',\n	\'alias\' => \'EducationLevel\',\n	\'conditions\' => array(\'EducationLevel.id = EducationCycle.education_level_id\', \'EducationLevel.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_systems\',\n	\'alias\' => \'EducationSystem\',\n	\'conditions\' => array(\'EducationSystem.id = EducationLevel.education_system_id\')\n)','EducationSystem.name','EducationSystem.id',2,1,1,NULL,NULL,1,'2014-04-03 00:00:00'),(11,'Institution','Institution','CensusTeacher','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTeacher.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n)','Institution.name','Institution.id',2,1,2,NULL,NULL,1,'2014-04-03 00:00:00'),(12,'Institution Provider','InstitutionProvider','CensusTeacher','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTeacher.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_providers\',\n	\'alias\' => \'InstitutionProvider\',\n	\'conditions\' => array(\'Institution.institution_provider_id = InstitutionProvider.id\')\n)','InstitutionProvider.name','InstitutionProvider.id',2,1,3,NULL,NULL,1,'2014-04-03 00:00:00'),(13,'Institution Site','InstitutionSite','CensusTeacher','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTeacher.institution_site_id = InstitutionSite.id\')\n)','InstitutionSite.name','InstitutionSite.id',2,1,4,NULL,NULL,1,'2014-04-03 00:00:00'),(14,'Institution Site Type','InstitutionSiteType','CensusTeacher','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTeacher.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_types\',\n	\'alias\' => \'InstitutionSiteType\',\n	\'conditions\' => array(\'InstitutionSite.institution_site_type_id = InstitutionSiteType.id\')\n)','InstitutionSiteType.name','InstitutionSiteType.id',2,1,4,NULL,NULL,1,'2014-04-03 00:00:00'),(15,'Year','SchoolYear','CensusTeacher','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'school_years\',\n	\'alias\' => \'SchoolYear\',\n	\'conditions\' => array(\'SchoolYear.id = CensusTeacher.school_year_id\')\n)','SchoolYear.name','SchoolYear.id',2,1,5,NULL,NULL,1,'2014-04-03 00:00:00'),(16,'Category','TeacherCategory','CensusTeacher','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_teachers\',\n	\'alias\' => \'InstitutionSiteTeacher\',\n	\'conditions\' => array(\'InstitutionSiteTeacher.institution_site_id = CensusTeacher.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'teacher_categories\',\n	\'alias\' => \'TeacherCategory\',\n	\'conditions\' => array(\'TeacherCategory.id = InstitutionSiteTeacher.teacher_category_id\')\n)','TeacherCategory.name','TeacherCategory.id',2,1,7,NULL,NULL,1,'2014-04-03 00:00:00'),(17,'Gender','CensusTeacher','CensusTeacher',NULL,'CensusTeacher.male','CensusTeacher.male',2,1,8,NULL,NULL,1,'2014-04-03 00:00:00'),(18,'Education System','EducationSystem','CensusStaff','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStaff.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_programmes\',\n	\'alias\' => \'InstitutionSiteProgramme\',\n	\'conditions\' => array(\'InstitutionSite.id = InstitutionSiteProgramme.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_programmes\',\n	\'alias\' => \'EducationProgramme\',\n	\'conditions\' => array(\'EducationProgramme.id = InstitutionSiteProgramme.education_programme_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_cycles\',\n	\'alias\' => \'EducationCycle\',\n	\'conditions\' => array(\'EducationCycle.id = EducationProgramme.education_cycle_id\', \'EducationCycle.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_levels\',\n	\'alias\' => \'EducationLevel\',\n	\'conditions\' => array(\'EducationLevel.id = EducationCycle.education_level_id\', \'EducationLevel.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_systems\',\n	\'alias\' => \'EducationSystem\',\n	\'conditions\' => array(\'EducationSystem.id = EducationLevel.education_system_id\')\n)','EducationSystem.name','EducationSystem.id',3,1,1,NULL,NULL,1,'2014-04-03 00:00:00'),(19,'Institution','Institution','CensusStaff','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStaff.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n)','Institution.name','Institution.id',3,1,2,NULL,NULL,1,'2014-04-03 00:00:00'),(20,'Institution Provider','InstitutionProvider','CensusStaff','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStaff.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_providers\',\n	\'alias\' => \'InstitutionProvider\',\n	\'conditions\' => array(\'Institution.institution_provider_id = InstitutionProvider.id\')\n)','InstitutionProvider.name','InstitutionProvider.id',3,1,3,NULL,NULL,1,'2014-04-03 00:00:00'),(21,'Institution Site','InstitutionSite','CensusStaff','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStaff.institution_site_id = InstitutionSite.id\')\n)','InstitutionSite.name','InstitutionSite.id',3,1,4,NULL,NULL,1,'2014-04-03 00:00:00'),(22,'Institution Site Type','InstitutionSiteType','CensusStaff','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusStaff.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_types\',\n	\'alias\' => \'InstitutionSiteType\',\n	\'conditions\' => array(\'InstitutionSite.institution_site_type_id = InstitutionSiteType.id\')\n)','InstitutionSiteType.name','InstitutionSiteType.id',3,1,5,NULL,NULL,1,'2014-04-03 00:00:00'),(23,'Year','SchoolYear','CensusStaff','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'school_years\',\n	\'alias\' => \'SchoolYear\',\n	\'conditions\' => array(\'SchoolYear.id = CensusStaff.school_year_id\')\n)','SchoolYear.name','SchoolYear.id',3,1,6,NULL,NULL,1,'2014-04-03 00:00:00'),(24,'Category','StaffCategory','CensusStaff','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_staff\',\n	\'alias\' => \'InstitutionSiteStaff\',\n	\'conditions\' => array(\'InstitutionSiteStaff.institution_site_id = CensusStaff.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'staff_categories\',\n	\'alias\' => \'StaffCategory\',\n	\'conditions\' => array(\'StaffCategory.id = InstitutionSiteStaff.staff_category_id\')\n)','StaffCategory.name','StaffCategory.id',3,1,7,NULL,NULL,1,'2014-04-04 00:00:00'),(25,'Gender','CensusStaff','CensusStaff',NULL,'CensusStaff.male','CensusStaff.male',3,1,8,NULL,NULL,1,'2014-04-03 00:00:00'),(26,'Education System','EducationSystem','CensusClass','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusClass.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_programmes\',\n	\'alias\' => \'InstitutionSiteProgramme\',\n	\'conditions\' => array(\'InstitutionSite.id = InstitutionSiteProgramme.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_programmes\',\n	\'alias\' => \'EducationProgramme\',\n	\'conditions\' => array(\'EducationProgramme.id = InstitutionSiteProgramme.education_programme_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_cycles\',\n	\'alias\' => \'EducationCycle\',\n	\'conditions\' => array(\'EducationCycle.id = EducationProgramme.education_cycle_id\', \'EducationCycle.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_levels\',\n	\'alias\' => \'EducationLevel\',\n	\'conditions\' => array(\'EducationLevel.id = EducationCycle.education_level_id\', \'EducationLevel.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_systems\',\n	\'alias\' => \'EducationSystem\',\n	\'conditions\' => array(\'EducationSystem.id = EducationLevel.education_system_id\')\n)','EducationSystem.name','EducationSystem.id',4,1,1,NULL,NULL,1,'2014-04-03 00:00:00'),(27,'Institution','Institution','CensusClass','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusClass.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n)','Institution.name','Institution.id',4,1,2,NULL,NULL,1,'2014-04-03 00:00:00'),(28,'Institution Provider','InstitutionProvider','CensusClass','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusClass.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_providers\',\n	\'alias\' => \'InstitutionProvider\',\n	\'conditions\' => array(\'Institution.institution_provider_id = InstitutionProvider.id\')\n)','InstitutionProvider.name','InstitutionProvider.id',4,1,3,NULL,NULL,1,'2014-04-03 00:00:00'),(29,'Institution Site','InstitutionSite','CensusClass','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusClass.institution_site_id = InstitutionSite.id\')\n)','InstitutionSite.name','InstitutionSite.id',4,1,4,NULL,NULL,1,'2014-04-03 00:00:00'),(30,'Institution Site Type','InstitutionSiteType','CensusClass','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusClass.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_types\',\n	\'alias\' => \'InstitutionSiteType\',\n	\'conditions\' => array(\'InstitutionSite.institution_site_type_id = InstitutionSiteType.id\')\n)','InstitutionSiteType.name','InstitutionSiteType.id',4,1,5,NULL,NULL,1,'2014-04-03 00:00:00'),(31,'Year','SchoolYear','CensusClass','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'school_years\',\n	\'alias\' => \'SchoolYear\',\n	\'conditions\' => array(\'SchoolYear.id = CensusClass.school_year_id\')\n)','SchoolYear.name','SchoolYear.id',4,1,6,NULL,NULL,1,'2014-04-03 00:00:00'),(32,'Seats','Seats','CensusClass',NULL,'CensusClass.seats','CensusClass.id',4,1,7,NULL,NULL,1,'2014-04-03 00:00:00'),(33,'Multi-Grade','MultiGrade','CensusClass',NULL,'Multigrade.name','Multigrade.id',4,1,8,NULL,NULL,1,'2014-04-03 00:00:00'),(34,'Education System','EducationSystem','CensusTextBook','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTextbook.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_programmes\',\n	\'alias\' => \'InstitutionSiteProgramme\',\n	\'conditions\' => array(\'InstitutionSite.id = InstitutionSiteProgramme.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_programmes\',\n	\'alias\' => \'EducationProgramme\',\n	\'conditions\' => array(\'EducationProgramme.id = InstitutionSiteProgramme.education_programme_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_cycles\',\n	\'alias\' => \'EducationCycle\',\n	\'conditions\' => array(\'EducationCycle.id = EducationProgramme.education_cycle_id\', \'EducationCycle.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_levels\',\n	\'alias\' => \'EducationLevel\',\n	\'conditions\' => array(\'EducationLevel.id = EducationCycle.education_level_id\', \'EducationLevel.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_systems\',\n	\'alias\' => \'EducationSystem\',\n	\'conditions\' => array(\'EducationSystem.id = EducationLevel.education_system_id\')\n)','EducationSystem.name','EducationSystem.id',5,1,1,NULL,NULL,1,'2014-04-03 00:00:00'),(35,'Institution','Institution','CensusTextBook','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTextbook.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n)','Institution.name','Institution.id',5,1,2,NULL,NULL,1,'2014-04-03 00:00:00'),(36,'InstitutionProvider','InstitutionProvider','CensusTextBook','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTextbooj.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_providers\',\n	\'alias\' => \'InstitutionProvider\',\n	\'conditions\' => array(\'Institution.institution_provider_id = InstitutionProvider.id\')\n)','InstitutionProvider.name','InstitutionProvider.id',5,1,3,NULL,NULL,1,'2014-04-04 00:00:00'),(37,'Institution Site Type','InstitutionSiteType','CensusTextBook','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusTextbook.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_types\',\n	\'alias\' => \'InstitutionSiteType\',\n	\'conditions\' => array(\'InstitutionSite.institution_site_type_id = InstitutionSiteType.id\')\n)','InstitutionSiteType.name','InstitutionSiteType.id',5,1,4,NULL,NULL,1,'2014-04-03 00:00:00'),(38,'Subjects','Subjects','CensusTextBook','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_grade_subjects\',\n	\'alias\' => \'EducationGradeSubject\',\n	\'conditions\' => array(\'CensusTextbook.education_grade_subject_id = EducationGradeSubject.id\')\n),','EducationGradeSubject.name','EducationGradeSubject.id',5,1,5,NULL,NULL,1,'2014-04-03 00:00:00'),(39,'Education System','EducationSystem','CensusBuilding','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusBuilding.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_programmes\',\n	\'alias\' => \'InstitutionSiteProgramme\',\n	\'conditions\' => array(\'InstitutionSite.id = InstitutionSiteProgramme.institution_site_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_programmes\',\n	\'alias\' => \'EducationProgramme\',\n	\'conditions\' => array(\'EducationProgramme.id = InstitutionSiteProgramme.education_programme_id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_cycles\',\n	\'alias\' => \'EducationCycle\',\n	\'conditions\' => array(\'EducationCycle.id = EducationProgramme.education_cycle_id\', \'EducationCycle.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_levels\',\n	\'alias\' => \'EducationLevel\',\n	\'conditions\' => array(\'EducationLevel.id = EducationCycle.education_level_id\', \'EducationLevel.visible = 1\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'education_systems\',\n	\'alias\' => \'EducationSystem\',\n	\'conditions\' => array(\'EducationSystem.id = EducationLevel.education_system_id\')\n)','EducationSystem.name','EducationSystem.id',6,1,1,NULL,NULL,1,'2014-04-03 00:00:00'),(40,'Institution','Institution','CensusBuilding','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensuBuilding.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n)','Institution.name','Institution.id',6,1,2,NULL,NULL,1,'2014-04-03 00:00:00'),(41,'Institution Provider','InstitutionProvider','CensusBuilding','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusBuilding.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institutions\',\n	\'alias\' => \'Institution\',\n	\'conditions\' => array(\'InstitutionSite.institution_id = Institution.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_providers\',\n	\'alias\' => \'InstitutionProvider\',\n	\'conditions\' => array(\'Institution.institution_provider_id = InstitutionProvider.id\')\n)','InstitutionProvider.name','InstitutionProvider.id',6,1,3,NULL,NULL,1,'2014-04-03 00:00:00'),(42,'Institution Site','InstitutionSite','CensusBuilding','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusBuilding.institution_site_id = InstitutionSite.id\')\n)','InstitutionSite.name','InstitutionSite.id',6,1,4,NULL,NULL,1,'2014-04-03 00:00:00'),(43,'Institution Site Type','InstitutionSiteType','CensusBuilding','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_sites\',\n	\'alias\' => \'InstitutionSite\',\n	\'conditions\' => array(\'CensusClass.institution_site_id = InstitutionSite.id\')\n),\narray(\n	\'type\' => \'LEFT\',\n	\'table\' => \'institution_site_types\',\n	\'alias\' => \'InstitutionSiteType\',\n	\'conditions\' => array(\'InstitutionSite.institution_site_type_id = InstitutionSiteType.id\')\n)','InstitutionSiteType.name','InstitutionSiteType.id',6,1,5,NULL,NULL,1,'2014-04-03 00:00:00'),(44,'Year','Year','CensusBuilding','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'school_years\',\n	\'alias\' => \'SchoolYear\',\n	\'conditions\' => array(\'SchoolYear.id = CensusBuilding.school_year_id\')\n)','SchoolYear.name','SchoolYear.id',6,1,6,NULL,NULL,1,'2014-04-03 00:00:00'),(45,'Category','Category','CensusBuilding','array(\n	\'type\' => \'LEFT\',\n	\'table\' => \'infrastructure_buildings\',\n	\'alias\' => \'InfrastructureBuilding\',\n	\'conditions\' => array(\'InfrastructureBuilding.id = CensusBuilding.infrastructure_building_id\')\n)','InfrastructureBuilding.name','InfrastructureBuilding.id',6,1,7,NULL,NULL,1,'2014-04-03 00:00:00');
/*!40000 ALTER TABLE `olap_cube_dimensions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:50
