-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `config_attachments`
--

DROP TABLE IF EXISTS `config_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `file_name` varchar(250) NOT NULL,
  `file_content` longblob NOT NULL,
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '0',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_attachments`
--

LOCK TABLES `config_attachments` WRITE;
/*!40000 ALTER TABLE `config_attachments` DISABLE KEYS */;
INSERT INTO `config_attachments` VALUES (1,'Kord IT',' ','partner','kordit_logo.png',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0T\0\0b\0\0\0&ӷR\0\0\0tEXtSoftware\0Adobe ImageReadyq\�e<\0\0&IDATx\�\�\�\�R\Z`]��O	xB#JU��*/E�oȋ0��X!�*�4\"\�q�\�\�og��X�?zzF�\����:\�\�\��\�\�\�\�\�y�\�.`\���]\0\�?�\�۽{��\0&? ��\�����j?`�\����\�?��&? ��\�����j?`�\����\�??\��0�\�\�~�\��P��~@\�L~@��0�\�\�~�\��P��~@\��~@\�L~@��0�\��p\�����j?`�\����\�?��&? ��\������\�����j?`�\����\�?��&? ��\�����j?`�\����\�?��&?? ��k~�\��P��~@\�L~@��0�\�\�~�\��P��~@\�L~@�A\�W��\��P��~@\�L~@�\�\\�&? ��\�����j?`�\����\�?��&??��&? ��\�����j?`�\����\�?��&? ��\�����\��\�L~@�A\�W��\��P��~@\�L~@��0�\�\�~�\��P��~@\�L~@��0�\��0�\�\�~�\��~�5��\�}}\�~�m�c^�~��\�ǂ��!����X`f\�b\����\�G�Y��\�\�\��ߕ��XT��\�K��\�p\����7/�\�o�{��y8^�|��1��g3lKH\�q\�Ҋs\�ĉ\�Ǐ�I�\Z\�m=&Vonn\�ٳg�\r)~��\�d���?^��\�z\��ku\�\�_]XX(x�\�\�\�\�\�X\��\�xJ�\�k׮	�V)?��Ӧ�_0�b\�G<�%b�� �={vvvvS���N�ahh(999��.\�\�k\�\�v\�p��퉉�\��	��[��M�\���\�	�\��ӕ+W��<�����7o޴]T�$���\�w�-qֈ�\�$Xz!Ѝ�~���^�\Z��\�	�\�m�\�<y233������rïS��d�CA$\"�q\�\�a�[b9��\n���*t\�ҥ\�\�&$E�\�M\�^\�!���W\�\�\�(.N~�$�K\�e۶���\\l\�/��\�T�{Ե\"��\�s\�߿???�\�ޮ=��K�X���EvW�����w�\��Ç\�\�\���]��T�w�\�\�?��O�\�\�\\A}\�F�[\�?C\�._�j�\�?toO~��\�.�ܨkI~\�8d�����\�7oZ�.��S�N\�\nT��s\r\�+}L�L��+Y������q��\�_g�j�M}cojj��\�7\�~f9��Ǐ/..���q\�طo_\�\��\�\�Ѓ*\��\�߿|�r�߿x�\"�\�\�ŋ�\������������\r������^^k\�\�\�w�M�M�#>\�-#�3�yd�\�w�ˉ�E}h;�\�t0::Z:`�;V-�\��W/��D\�)SvV\Z�>}\Z�?w\�\\\�i7�N\��488x���\�\�ܾ}���Cc\rj��\��u%W\�X\�\�}\�䷲111Qz>j�5šs\�G\��\�d�\Z$�7Nv[\�Zcu�oܸQ��{��t!j�kT���Ƙ*n��\�4N\"\�\���\�\�Ç/\\�P�Z\�\�+왂W/M~���`=+6!�Y�\�\�<�\�7\�T��C���=A\�Xf[\��gE\�Ϝ9�yd\�>Ҙydi�c�\�Uw���>��\�\�\�K�\�[�!b�f\�\�+�u�?�8\�cV\'�YzI��ե��\�2�\�\�W�\\ɜ�j�Bd�\�l�ۈڟ���`D�\�\0}��er\�޾}[���e�t\�q\�[��1T�\�ٓY��YZZZ��}\�\��ņ\�u\�^7޿\�ʛ��\�ܑN\�_�f\nv�2\�C�/��\�>]��n�\��\���%��;\��Q�e\�78\��\�\�ɓ�G�w�{���\�333��V\�\�ٛ-u��6���w\�V\�\��\�\�\����`L~��K\��8\��?���C2����\�ŋⷯ��o9]\�	q\�����nze^��\�\�m\�Z_mi>|\�Җ\�ٳ����\�\�o�ڟ|�\�_�\�\�S1\�bܕF�\�s;�O\�\�x[n�h�>�\�[nb3\�ݻ7;;[�\�X����(;=\���߶H�1w8ᯘ����L�\�(��ہ�H\'�P\�\�v\�O�Ŗ޹s\'S\�\�d�\�ݲ\�ח�v#j�-+���\�)Ϟ=�AWz �>��~@\��\�ѣ\�MSz�x��m���\�;ϱ\�\�o�?edd$����`U3�����\�\�\�\���\"��G��z{\�\'d8p\��\�\�-����\� �ǔ��ji\�\�3\���\�7�2_&Ǫ�ל��\0^}�}8s\�~\�ĉ�o\�O\�\� \�YhYZZ�eD�)}Xl\�F\�Ş,�\��jm�?�����ϟ?�~p�1��\�\�P�s��\\���w\�\�\�aZ��x\�\�\�XT\�\�,jEf\�\�s\�ފ�p\��ɓ\'�\�)���k\�j\�\�m�e�\�\�\�uY/�\�\��\�~\�\�\�z��q\�!Ꮓ�4~q�#k}��,EzK/.\\�\�tL\�XB�c-��Xf&�͕�k?D�c�3!���\��\�ݻz������\�ߔq�\n/4��3a8w\�\�ݻwלA\�H�\�f~\�\�@C��z^�|k��\n\r<�Ffn�n:�\�߻��6�8�O�<yX��>��矻\�Y*�\�6�؉M>u\�Tf�\'�I]\'\�O����ۿӇ\�\�k����^��C�K\�K�\�׾\��>|ȴ�\��g\�\�\�T\��+\�_��\�04\�ۧw\�J5���h\�u�K.9�[	:��9����M�����O�<xpppp}\�=z˯�\�F��￻�&�\�\�\�h�{�\�-~��#G:\�\�Xƙ(�4\�\�|\�{��ߘM�3gδ�A�kzz��\�\ZK�\�Dz0l�;\�[�8�LNN�\�/�_X�\�=��Q���\�\�\�chW;4\�x\�b9=\�\�W\r����F]^lcԥH���U��vA�\�?R]ڄw5~\�\���|\�oJ5Kld�\�ѣљ#6��\�.7,--���W�g\�Wq\��v\��c�\"\�\��&O:�\�/���\�\����+��>ó\�~��y�aW\�M/��\�ۿ��O�6ߺ�z�m\�Z𻀒L\�\�\�ɼ\��*n{wv\�Im�kҍeV܇������k~@\�L~@��0�\�\�~�\��P��~@\�L~@��0�\�\�~�\��P��\��P��~@\�L~@�\�\\�&? ��\�����j?`�\����\�?��&??��&? ��\�����j?`�\����\�?��&? ��\�����\��\�L~@��L~@��0�\�\�~�\��P��~@\�L~@��0�\�\�~�\��P��~P��~@\�L~@�\�\\�&? ��\�����j?`�\����\�?��&? ��\�;\�\0�2F\�^\�8\0\0\0\0IEND�B`�',1,1,1,NULL,NULL,1,'2017-12-13 00:00:00');
/*!40000 ALTER TABLE `config_attachments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23 12:35:25
