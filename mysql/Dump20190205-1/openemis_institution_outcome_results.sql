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
-- Table structure for table `institution_outcome_results`
--

DROP TABLE IF EXISTS `institution_outcome_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_outcome_results` (
  `id` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outcome_grading_option_id` int(11) NOT NULL COMMENT 'links to outcome_grading_options.id',
  `student_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `outcome_template_id` int(11) NOT NULL COMMENT 'links to outcome_templates.id',
  `outcome_period_id` int(11) NOT NULL COMMENT 'links to outcome_periods.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `education_subject_id` int(11) NOT NULL COMMENT 'links to education_subjects.id',
  `outcome_criteria_id` int(11) NOT NULL COMMENT 'links to outcome_criterias.id',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`student_id`,`outcome_template_id`,`outcome_period_id`,`education_grade_id`,`education_subject_id`,`outcome_criteria_id`,`institution_id`,`academic_period_id`),
  KEY `id` (`id`),
  KEY `outcome_grading_option_id` (`outcome_grading_option_id`),
  KEY `student_id` (`student_id`),
  KEY `outcome_template_id` (`outcome_template_id`),
  KEY `outcome_period_id` (`outcome_period_id`),
  KEY `education_grade_id` (`education_grade_id`),
  KEY `education_subject_id` (`education_subject_id`),
  KEY `outcome_criteria_id` (`outcome_criteria_id`),
  KEY `institution_id` (`institution_id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains all the outcome results for an individual student in an institution';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_outcome_results`
--

LOCK TABLES `institution_outcome_results` WRITE;
/*!40000 ALTER TABLE `institution_outcome_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_outcome_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 16:33:53
