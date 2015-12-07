-- MySQL dump 10.13  Distrib 5.5.41, for Linux (x86_64)
--
-- Host: localhost    Database: bfoerdern
-- ------------------------------------------------------
-- Server version	5.5.41-cll-lve

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
-- Table structure for table `tl_article`
--

DROP TABLE IF EXISTS `tl_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `keywords` text,
  `showTeaser` char(1) NOT NULL DEFAULT '',
  `teaserCssID` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `printable` varchar(255) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published_sorting` (`pid`,`start`,`stop`,`published`,`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_article`
--

LOCK TABLES `tl_article` WRITE;
/*!40000 ALTER TABLE `tl_article` DISABLE KEYS */;
INSERT INTO `tl_article` VALUES (3,4,128,1391721164,'Beurteilen Und F√∂rdern','buf',1,'main',NULL,'','',NULL,'','',NULL,'','','','1','','',''),(8,7,128,1402652718,'Passwort vergessen','passwort-vergessen',3,'main',NULL,'','',NULL,'','',NULL,'','','','1','','',''),(9,8,128,1402671444,'passwort_reset_confirm','passwort_reset_confirm',3,'main',NULL,'','',NULL,'','',NULL,'','','','1','','','');
/*!40000 ALTER TABLE `tl_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar`
--

DROP TABLE IF EXISTS `tl_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(32) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar`
--

LOCK TABLES `tl_calendar` WRITE;
/*!40000 ALTER TABLE `tl_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar_events`
--

DROP TABLE IF EXISTS `tl_calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `addTime` char(1) NOT NULL DEFAULT '',
  `startTime` int(10) unsigned DEFAULT NULL,
  `endTime` int(10) unsigned DEFAULT NULL,
  `startDate` int(10) unsigned DEFAULT NULL,
  `endDate` int(10) unsigned DEFAULT NULL,
  `location` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `recurring` char(1) NOT NULL DEFAULT '',
  `repeatEach` varchar(64) NOT NULL DEFAULT '',
  `repeatEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `recurrences` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar_events`
--

LOCK TABLES `tl_calendar_events` WRITE;
/*!40000 ALTER TABLE `tl_calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar_feed`
--

DROP TABLE IF EXISTS `tl_calendar_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `calendars` blob,
  `format` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar_feed`
--

LOCK TABLES `tl_calendar_feed` WRITE;
/*!40000 ALTER TABLE `tl_calendar_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_class`
--

DROP TABLE IF EXISTS `tl_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_class`
--

LOCK TABLES `tl_class` WRITE;
/*!40000 ALTER TABLE `tl_class` DISABLE KEYS */;
INSERT INTO `tl_class` VALUES (3,'ISS 7.2',1436992949),(9,'ISS 9.1',1436992912),(10,'ISS 9.2',1436992920),(11,'ISS 7.1',1436992955),(40,'ISS 8.1',1436992940),(41,'ISS 8.2',1436992931);
/*!40000 ALTER TABLE `tl_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_comments`
--

DROP TABLE IF EXISTS `tl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `date` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(128) NOT NULL DEFAULT '',
  `comment` text,
  `addReply` char(1) NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` text,
  `published` char(1) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `notified` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `source` (`source`),
  KEY `parent` (`parent`),
  KEY `published` (`published`),
  KEY `source_parent_published` (`source`,`parent`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_comments`
--

LOCK TABLES `tl_comments` WRITE;
/*!40000 ALTER TABLE `tl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_comments_notify`
--

DROP TABLE IF EXISTS `tl_comments_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_comments_notify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `tokenConfirm` varchar(32) NOT NULL DEFAULT '',
  `tokenRemove` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `source` (`source`),
  KEY `parent` (`parent`),
  KEY `tokenConfirm` (`tokenConfirm`),
  KEY `tokenRemove` (`tokenRemove`),
  KEY `source_parent_tokenConfirm` (`source`,`parent`,`tokenConfirm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_comments_notify`
--

LOCK TABLES `tl_comments_notify` WRITE;
/*!40000 ALTER TABLE `tl_comments_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_comments_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_content`
--

DROP TABLE IF EXISTS `tl_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `ptable` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `html` mediumtext,
  `listtype` varchar(32) NOT NULL DEFAULT '',
  `listitems` blob,
  `tableitems` mediumblob,
  `summary` varchar(255) NOT NULL DEFAULT '',
  `thead` char(1) NOT NULL DEFAULT '',
  `tfoot` char(1) NOT NULL DEFAULT '',
  `tleft` char(1) NOT NULL DEFAULT '',
  `sortable` char(1) NOT NULL DEFAULT '',
  `sortIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `mooHeadline` varchar(255) NOT NULL DEFAULT '',
  `mooStyle` varchar(255) NOT NULL DEFAULT '',
  `mooClasses` varchar(255) NOT NULL DEFAULT '',
  `highlight` varchar(32) NOT NULL DEFAULT '',
  `shClass` varchar(255) NOT NULL DEFAULT '',
  `code` text,
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `titleText` varchar(255) NOT NULL DEFAULT '',
  `linkTitle` varchar(255) NOT NULL DEFAULT '',
  `embed` varchar(255) NOT NULL DEFAULT '',
  `rel` varchar(64) NOT NULL DEFAULT '',
  `useImage` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `perRow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortBy` varchar(32) NOT NULL DEFAULT '',
  `galleryTpl` varchar(64) NOT NULL DEFAULT '',
  `playerSRC` blob,
  `youtube` varchar(16) NOT NULL DEFAULT '',
  `posterSRC` binary(16) DEFAULT NULL,
  `playerSize` varchar(64) NOT NULL DEFAULT '',
  `autoplay` char(1) NOT NULL DEFAULT '',
  `sliderDelay` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderSpeed` int(10) unsigned NOT NULL DEFAULT '300',
  `sliderStartSlide` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sliderContinuous` char(1) NOT NULL DEFAULT '',
  `cteAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `articleAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `article` int(10) unsigned NOT NULL DEFAULT '0',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `module` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `invisible` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `metaIgnore` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `pid_ptable_invisible_sorting` (`pid`,`ptable`,`invisible`,`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_content`
--

LOCK TABLES `tl_content` WRITE;
/*!40000 ALTER TABLE `tl_content` DISABLE KEYS */;
INSERT INTO `tl_content` VALUES (8,3,'tl_article',128,1392995055,'module','',NULL,'',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,4,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','',''),(25,8,'tl_article',128,1402672944,'headline','a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:22:\"Passwort zur√ºcksetzen\";}',NULL,'',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','',''),(26,8,'tl_article',256,1402652799,'module','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:24:\"Neues Passwort anfordern\";}',NULL,'',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,7,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','',''),(27,9,'tl_article',128,1402672057,'text','a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:23:\"Passwort zur√ºckgesetzt\";}','<p>In K√ºrze wirst du eine email mit dem Aktivierungslink erhalten.<br>Bitte folge den Anweisungen, um dein Passwort zur√ºckzusetzen.<br>Liebe Gr√ºsse</p>\n<p>Marko</p>','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','',''),(28,8,'tl_article',384,1402816045,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p><strong>Hinweise zur Passwortr√ºcksetzung:<br></strong>Der <strong>Benutzername</strong> besteht aus deinem Vor- und Nachnamen (alles kleingeschrieben und ohne Leerschlag).<br>Als <strong>E-Mail-Adresse</strong> dient standardm√§ssig die educanet2 Adresse.</p>','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,7,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','');
/*!40000 ALTER TABLE `tl_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_cron`
--

DROP TABLE IF EXISTS `tl_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `value` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_cron`
--

LOCK TABLES `tl_cron` WRITE;
/*!40000 ALTER TABLE `tl_cron` DISABLE KEYS */;
INSERT INTO `tl_cron` VALUES (1,'lastrun','1438157820'),(2,'monthly','201507'),(3,'weekly','201531'),(4,'daily','20150729'),(5,'hourly','0'),(6,'minutely','0');
/*!40000 ALTER TABLE `tl_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_extension`
--

DROP TABLE IF EXISTS `tl_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_extension` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) NOT NULL DEFAULT '',
  `folder` varchar(48) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `copyright` varchar(128) NOT NULL DEFAULT '',
  `package` varchar(64) NOT NULL DEFAULT '',
  `license` varchar(64) NOT NULL DEFAULT '',
  `addBeMod` char(1) NOT NULL DEFAULT '',
  `beClasses` varchar(255) NOT NULL DEFAULT '',
  `beTables` varchar(255) NOT NULL DEFAULT '',
  `beTemplates` varchar(255) NOT NULL DEFAULT '',
  `addFeMod` char(1) NOT NULL DEFAULT '',
  `feClasses` varchar(255) NOT NULL DEFAULT '',
  `feTables` varchar(255) NOT NULL DEFAULT '',
  `feTemplates` varchar(255) NOT NULL DEFAULT '',
  `addLanguage` char(1) NOT NULL DEFAULT '',
  `languages` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_extension`
--

LOCK TABLES `tl_extension` WRITE;
/*!40000 ALTER TABLE `tl_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_faq`
--

DROP TABLE IF EXISTS `tl_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(12) NOT NULL DEFAULT '',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `pid_published_sorting` (`pid`,`published`,`sorting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_faq`
--

LOCK TABLES `tl_faq` WRITE;
/*!40000 ALTER TABLE `tl_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_faq_category`
--

DROP TABLE IF EXISTS `tl_faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_faq_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(16) NOT NULL DEFAULT '',
  `sortOrder` varchar(12) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_faq_category`
--

LOCK TABLES `tl_faq_category` WRITE;
/*!40000 ALTER TABLE `tl_faq_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_faq_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_files`
--

DROP TABLE IF EXISTS `tl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` binary(16) DEFAULT NULL,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `uuid` binary(16) DEFAULT NULL,
  `type` varchar(16) NOT NULL DEFAULT '',
  `path` varchar(1022) NOT NULL DEFAULT '',
  `extension` varchar(16) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `found` char(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `meta` blob,
  `importantPartX` int(10) NOT NULL DEFAULT '0',
  `importantPartY` int(10) NOT NULL DEFAULT '0',
  `importantPartWidth` int(10) NOT NULL DEFAULT '0',
  `importantPartHeight` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `pid` (`pid`),
  KEY `extension` (`extension`),
  KEY `path` (`path`(333))
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_files`
--

LOCK TABLES `tl_files` WRITE;
/*!40000 ALTER TABLE `tl_files` DISABLE KEYS */;
INSERT INTO `tl_files` VALUES (1,NULL,1390731602,'j”ZúÜs„îÈ\0%ê	W»','folder','files/music_academy','','6b19950b3b045d9cd7c0d5a05497c8c4','1','music_academy',NULL,0,0,0,0),(2,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'j”Z~Üs„îÈ\0%ê	W»','folder','files/music_academy/campus','','ad80e0071bea96273bd184fe24c8f6c0','1','campus',NULL,0,0,0,0),(3,'j”Z~Üs„îÈ\0%ê	W»',1390731602,'j”ZjÜs„îÈ\0%ê	W»','file','files/music_academy/campus/campus_building.jpg','jpg','a0ac423df6265537c7b1783ed9cbb698','1','campus_building.jpg',NULL,0,0,0,0),(4,'j”Z~Üs„îÈ\0%ê	W»',1390731602,'j”ZLÜs„îÈ\0%ê	W»','file','files/music_academy/campus/campus_hall.jpg','jpg','16074d6c3e3dfeb23d580715f486bff2','1','campus_hall.jpg',NULL,0,0,0,0),(5,'j”Z~Üs„îÈ\0%ê	W»',1390731602,'j”Z8Üs„îÈ\0%ê	W»','file','files/music_academy/campus/campus_library.jpg','jpg','1795dc0db4a1efcd2c390e3969ac3d3b','1','campus_library.jpg',NULL,0,0,0,0),(6,'j”Z~Üs„îÈ\0%ê	W»',1390731602,'j”Z\ZÜs„îÈ\0%ê	W»','file','files/music_academy/campus/campus_overview.jpg','jpg','12360a385a87413fa9914d9f4b0f3113','1','campus_overview.jpg',NULL,0,0,0,0),(7,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'j”Y¸Üs„îÈ\0%ê	W»','file','files/music_academy/admin.gif','gif','37173d258871c781db2c025060e4f8ab','1','admin.gif',NULL,0,0,0,0),(8,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'j”YËÜs„îÈ\0%ê	W»','file','files/music_academy/background.gif','gif','b2a05c65803733133c981a2d4e386968','1','background.gif',NULL,0,0,0,0),(9,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'j”Y Üs„îÈ\0%ê	W»','file','files/music_academy/frontendmodules.gif','gif','4f697b474f6d1e66f442c1c67d574a99','1','frontendmodules.gif',NULL,0,0,0,0),(10,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'j”YÑÜs„îÈ\0%ê	W»','file','files/music_academy/image.png','png','cb636d32a257f7b6337b7392afeab02d','1','image.png',NULL,0,0,0,0),(11,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'jﬁW:Üs„îÈ\0%ê	W»','file','files/music_academy/james-wilson.jpg','jpg','fd894d798786066577c9de8cbe9c1e38','1','james-wilson.jpg',NULL,0,0,0,0),(12,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'jﬁW&Üs„îÈ\0%ê	W»','file','files/music_academy/layout.gif','gif','ec5793c27e75e0426a69202d876733e2','1','layout.gif',NULL,0,0,0,0),(13,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'jﬁWÜs„îÈ\0%ê	W»','file','files/music_academy/modules.gif','gif','cefbcdcc5facb958977376f2c46367dc','1','modules.gif',NULL,0,0,0,0),(14,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'jﬁWÜs„îÈ\0%ê	W»','file','files/music_academy/news.gif','gif','ee4c7b3e72fb750033036036176feace','1','news.gif',NULL,0,0,0,0),(15,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'jﬁV˛Üs„îÈ\0%ê	W»','file','files/music_academy/pagemounts.gif','gif','1317e91c34333dfd9bad071dd43e9f39','1','pagemounts.gif',NULL,0,0,0,0),(16,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'jﬁVÍÜs„îÈ\0%ê	W»','file','files/music_academy/permissions.gif','gif','edc93c562d750ea9e0b20052298f4aa5','1','permissions.gif',NULL,0,0,0,0),(17,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'jﬁV‡Üs„îÈ\0%ê	W»','file','files/music_academy/protect.gif','gif','7d8c259b52dc2fe5ccd8b8ea7e8090fb','1','protect.gif',NULL,0,0,0,0),(18,'j”ZúÜs„îÈ\0%ê	W»',1390731602,'jﬁVÃÜs„îÈ\0%ê	W»','file','files/music_academy/screenshot.jpg','jpg','bc787a96a23265d4de60c9d1c8e21580','1','screenshot.jpg',NULL,0,0,0,0),(19,NULL,1390731602,'jﬁV¬Üs„îÈ\0%ê	W»','folder','files/tiny_templates','','3cb25412587bbaedd9901598abd93284','1','tiny_templates',NULL,0,0,0,0),(20,'jﬁV¬Üs„îÈ\0%ê	W»',1390731602,'jﬁVÜÜs„îÈ\0%ê	W»','file','files/tiny_templates/index.html','html','aeebec42dc0335ea1e0853f4393259b4','1','index.html',NULL,0,0,0,0),(21,NULL,1390731602,'jﬂ›DÜs„îÈ\0%ê	W»','file','files/tinymce.css','css','e6cfd2993ed50341da010e66be287d2d','1','tinymce.css',NULL,0,0,0,0),(45,'ˇØÖ£ß„á‚\0%ê	W»',1395693911,'1®g¬≥ï„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_24.sql','sql','cc130e90fb61e04d53942157b8658d27','1','mycontaobackup2014_03_24.sql',NULL,0,0,0,0),(46,'ˇØÖ£ß„á‚\0%ê	W»',1395731595,'Ó„˛≥Ï„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_25.sql','sql','cd46fa5fc39a5758874de041b86373f6','1','mycontaobackup2014_03_25.sql',NULL,0,0,0,0),(44,'ˇØÖ£ß„á‚\0%ê	W»',1395501561,'W‘ÿò±’„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_22.sql','sql','5fe587d0fe35f0886e75b83f16d60193','1','mycontaobackup2014_03_22.sql',NULL,0,0,0,0),(43,'ˇØÖ£ß„á‚\0%ê	W»',1394298160,'u.^¶„„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_08.sql','sql','8da73313aca4b44f23cde66b40c87f0b','1','mycontaobackup2014_03_08.sql',NULL,0,0,0,0),(42,'ˇØÖ£ß„á‚\0%ê	W»',1394235796,'AvÇ\Z¶R„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_07.sql','sql','338fe8c4a167b14ad2b0c50f477eec4b','1','mycontaobackup2014_03_07.sql',NULL,0,0,0,0),(41,'ˇØÖ£ß„á‚\0%ê	W»',1394095363,'H◊fH•„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_06.sql','sql','f6b20733ee6c5cfeaeb21f11e6aabd19','1','mycontaobackup2014_03_06.sql',NULL,0,0,0,0),(40,'ˇØÖ£ß„á‚\0%ê	W»',1394013373,'bœÍä§L„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_05.sql','sql','7d7306046452eafc9c92ebe1b6a97ff2','1','mycontaobackup2014_03_05.sql',NULL,0,0,0,0),(39,'ˇØÖ£ß„á‚\0%ê	W»',1393943198,'ˇTº|£®„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_04.sql','sql','d41d8cd98f00b204e9800998ecf8427e','1','mycontaobackup2014_03_04.sql',NULL,0,0,0,0),(38,NULL,1393942769,'ˇØÖ£ß„á‚\0%ê	W»','folder','files/mycontaobackup','','678f1ecd38a70a47b7d2d6c2d8baf75a','1','mycontaobackup',NULL,0,0,0,0),(37,NULL,1393941394,'\Z¸£§„á‚\0%ê	W»','file','files/Ettiswil.csv','csv','661e3b80e530309df4b15eb89bfb05aa','1','Ettiswil.csv',NULL,0,0,0,0),(47,'ˇØÖ£ß„á‚\0%ê	W»',1395827435,'TÌz¥Ã„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_26.sql','sql','d16c7c7490b4a451609c68eb82986674','1','mycontaobackup2014_03_26.sql',NULL,0,0,0,0),(48,'ˇØÖ£ß„á‚\0%ê	W»',1395895933,'ê]Î¢µk„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_27.sql','sql','b10a724d22d201e52f3b218bef3a5a4a','1','mycontaobackup2014_03_27.sql',NULL,0,0,0,0),(49,'ˇØÖ£ß„á‚\0%ê	W»',1395984180,'PÛî∂9„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_28.sql','sql','905f77b93f0e07c9f231fdca2361b087','1','mycontaobackup2014_03_28.sql',NULL,0,0,0,0),(50,'ˇØÖ£ß„á‚\0%ê	W»',1396081770,'?®Ò|∑„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_29.sql','sql','70a96c2d0819c470602ab567a42e144a','1','mycontaobackup2014_03_29.sql',NULL,0,0,0,0),(51,'ˇØÖ£ß„á‚\0%ê	W»',1396249723,'KÑJö∏£„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_03_31.sql','sql','377053911fcc1179c7841dc68d94e804','1','mycontaobackup2014_03_31.sql',NULL,0,0,0,0),(52,'ˇØÖ£ß„á‚\0%ê	W»',1396335446,'‚\Zâzπj„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_04_01.sql','sql','6e38ea6074700b8ced785a1bbef49ec5','1','mycontaobackup2014_04_01.sql',NULL,0,0,0,0),(53,'ˇØÖ£ß„á‚\0%ê	W»',1396417297,'tˇÏº∫)„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_04_02.sql','sql','2d8aa2d10924012d45b166a6e5e74123','1','mycontaobackup2014_04_02.sql',NULL,0,0,0,0),(54,'ˇØÖ£ß„á‚\0%ê	W»',1396686464,')ïq˙ºú„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_04_05.sql','sql','51e6f5a686e812c4bb2a15ad0e49ef2c','1','mycontaobackup2014_04_05.sql',NULL,0,0,0,0),(55,'ˇØÖ£ß„á‚\0%ê	W»',1397591723,'· ¸ƒ◊„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_04_15.sql','sql','409e3e0a10b9b24056378d45f3d754d4','1','mycontaobackup2014_04_15.sql',NULL,0,0,0,0),(56,'ˇØÖ£ß„á‚\0%ê	W»',1397626803,'éıU¨≈)„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_04_16.sql','sql','0d17456901c05fd5f69f381af5916749','1','mycontaobackup2014_04_16.sql',NULL,0,0,0,0),(57,'ˇØÖ£ß„á‚\0%ê	W»',1398591615,'Ô†ΩÕÔ„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_04_27.sql','sql','2dbb47a89558778c70d86d0d002b0c57','1','mycontaobackup2014_04_27.sql',NULL,0,0,0,0),(58,'ˇØÖ£ß„á‚\0%ê	W»',1399471411,'^À©’„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_07.sql','sql','fa2f785829490b6215d273837c229a18','1','mycontaobackup2014_05_07.sql',NULL,0,0,0,0),(59,'ˇØÖ£ß„á‚\0%ê	W»',1399536044,'€c˛¢÷Ü„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_08.sql','sql','eb63c85127cf3ef756f6829eab33ec8a','1','mycontaobackup2014_05_08.sql',NULL,0,0,0,0),(60,'ˇØÖ£ß„á‚\0%ê	W»',1399668544,'[Mﬁx◊ª„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_09.sql','sql','30d47ab45c38a42c5900a5a9e3450e3f','1','mycontaobackup2014_05_09.sql',NULL,0,0,0,0),(61,'ˇØÖ£ß„á‚\0%ê	W»',1399732173,'Åä-ÇÿO„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_10.sql','sql','011dc12bb008e29a44228adeccf6b0ea','1','mycontaobackup2014_05_10.sql',NULL,0,0,0,0),(62,'ˇØÖ£ß„á‚\0%ê	W»',1399803348,'8Ó$Bÿı„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_11.sql','sql','5275cfa344067880fc13fda53133b271','1','mycontaobackup2014_05_11.sql',NULL,0,0,0,0),(63,'ˇØÖ£ß„á‚\0%ê	W»',1399879406,'O\ZÄLŸ¶„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_12.sql','sql','26c517305826e2eb618789ba252b6d3f','1','mycontaobackup2014_05_12.sql',NULL,0,0,0,0),(64,'ˇØÖ£ß„á‚\0%ê	W»',1400067953,'M¬€]„á‚\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_14.sql','sql','bc01c8dee0ff3a3c2e9ba0c17b614dd7','1','mycontaobackup2014_05_14.sql',NULL,0,0,0,0),(65,'ˇØÖ£ß„á‚\0%ê	W»',1400529004,'≈∫jîﬂé„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_19.sql','sql','36f49e464b0b564c774890925eb90834','1','mycontaobackup2014_05_19.sql',NULL,0,0,0,0),(66,'ˇØÖ£ß„á‚\0%ê	W»',1400827122,'·Ñ‡∂‚D„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_23.sql','sql','575290706fd86987d0ccbb61fe5d11bd','1','mycontaobackup2014_05_23.sql',NULL,0,0,0,0),(67,'ˇØÖ£ß„á‚\0%ê	W»',1401031806,'r÷Ü|‰!„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_25.sql','sql','2050698089a49e7878a8b38d604c3f42','1','mycontaobackup2014_05_25.sql',NULL,0,0,0,0),(68,'ˇØÖ£ß„á‚\0%ê	W»',1401089095,'’Ò©‰¶„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_26.sql','sql','5296c92f845691a94a5f111b7d46ee0e','1','mycontaobackup2014_05_26.sql',NULL,0,0,0,0),(69,'ˇØÖ£ß„á‚\0%ê	W»',1401221881,'\0~M¥Â‹„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_27.sql','sql','11f49d65ac57ba90fcb823749a1a026a','1','mycontaobackup2014_05_27.sql',NULL,0,0,0,0),(70,'ˇØÖ£ß„á‚\0%ê	W»',1401255151,'v˙LòÊ)„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_05_28.sql','sql','9db18c06a806a6ff9b2aef8870ca5c59','1','mycontaobackup2014_05_28.sql',NULL,0,0,0,0),(71,'ˇØÖ£ß„á‚\0%ê	W»',1401891041,'æ6,ÎÚ„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_04.sql','sql','f4ec6bc4d4bf5fc2d5cb1f9c51a8c936','1','mycontaobackup2014_06_04.sql',NULL,0,0,0,0),(72,'ˇØÖ£ß„á‚\0%ê	W»',1401959543,'ÅH¥\nÏë„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_05.sql','sql','42a0d8cefbb89625e0084300ddd50de3','1','mycontaobackup2014_06_05.sql',NULL,0,0,0,0),(73,'ˇØÖ£ß„á‚\0%ê	W»',1402039215,'∑›\nÌK„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_06.sql','sql','0f4e7bb185ed3c8b1a75d2a0fc5625ea','1','mycontaobackup2014_06_06.sql',NULL,0,0,0,0),(74,'ˇØÖ£ß„á‚\0%ê	W»',1402294688,'”jmZÔù„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_09.sql','sql','aa09a018dbf81479c4266b44ac74861a','1','mycontaobackup2014_06_09.sql',NULL,0,0,0,0),(75,'ˇØÖ£ß„á‚\0%ê	W»',1402380693,'68ﬁf„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_10.sql','sql','92a0bd5ec4c9535a437fa026bb55c7b3','1','mycontaobackup2014_06_10.sql',NULL,0,0,0,0),(76,'ˇØÖ£ß„á‚\0%ê	W»',1402469060,'–ˆøÒ3„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_11.sql','sql','a297acb891c9dbb38a6f7769b1c17b6b','1','mycontaobackup2014_06_11.sql',NULL,0,0,0,0),(77,'ˇØÖ£ß„á‚\0%ê	W»',1402547382,',∂\Z<ÒÍ„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_12.sql','sql','a6f3a59433654b6b7b2eb83468dc4910','1','mycontaobackup2014_06_12.sql',NULL,0,0,0,0),(78,'ˇØÖ£ß„á‚\0%ê	W»',1402637144,'*—e¶Úª„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_13.sql','sql','b6a27350adc59b03c56170c567435328','1','mycontaobackup2014_06_13.sql',NULL,0,0,0,0),(79,'ˇØÖ£ß„á‚\0%ê	W»',1402738001,'˛JTéÛ•„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_14.sql','sql','f0d5c3bed246ac76223bd1053ede8672','1','mycontaobackup2014_06_14.sql',NULL,0,0,0,0),(80,'ˇØÖ£ß„á‚\0%ê	W»',1402815662,'œËBÙZ„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_15.sql','sql','47e8fee386d40f3cf93537dddb7a0fd5','1','mycontaobackup2014_06_15.sql',NULL,0,0,0,0),(81,'ˇØÖ£ß„á‚\0%ê	W»',1402896821,'∆B^tı„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_16.sql','sql','a6f81ee5d9b81dd695cf441d435e450b','1','mycontaobackup2014_06_16.sql',NULL,0,0,0,0),(82,'ˇØÖ£ß„á‚\0%ê	W»',1403017926,'æﬁÅVˆ1„ø)\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_17.sql','sql','e12eb8a4612649c5a40878694a941046','1','mycontaobackup2014_06_17.sql',NULL,0,0,0,0),(83,'ˇØÖ£ß„á‚\0%ê	W»',1404143334,'\nÂZ\0n‰™t\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_06_30.sql','sql','c53c49bb75c2273acbfe30d7aeac835e','1','mycontaobackup2014_06_30.sql',NULL,0,0,0,0),(84,'ˇØÖ£ß„á‚\0%ê	W»',1404227584,'2¯{Ã2‰âc\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_07_01.sql','sql','f606ff8da89536dd40e9d0445c6fc509','1','mycontaobackup2014_07_01.sql',NULL,0,0,0,0),(85,'ˇØÖ£ß„á‚\0%ê	W»',1405663495,'p∆|A‰¶2\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_07_18.sql','sql','9991138527eecfb4a4fa92b4783100c8','1','mycontaobackup2014_07_18.sql',NULL,0,0,0,0),(86,'ˇØÖ£ß„á‚\0%ê	W»',1405797273,'Ív˛x‰¶2\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_07_19.sql','sql','604b00f15eb4a5b1899efe0eb929ca8b','1','mycontaobackup2014_07_19.sql',NULL,0,0,0,0),(87,'ˇØÖ£ß„á‚\0%ê	W»',1407352000,'Ã%°Ùú‰™À\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_08_06.sql','sql','29a4321ec4fa3c9ff3582f51f3c71a13','1','mycontaobackup2014_08_06.sql',NULL,0,0,0,0),(88,'ˇØÖ£ß„á‚\0%ê	W»',1407416881,'‹S›3‰™À\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_08_07.sql','sql','02209e1fb8cf59cc33ab02385ca840b9','1','mycontaobackup2014_08_07.sql',NULL,0,0,0,0),(89,'ˇØÖ£ß„á‚\0%ê	W»',1407522983,'Â˘≠é*‰≤7\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_08_08.sql','sql','36d4cb5398082912ac35054be80ba5e6','1','mycontaobackup2014_08_08.sql',NULL,0,0,0,0),(90,'ˇØÖ£ß„á‚\0%ê	W»',1407588342,'»›t√‰≤7\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_08_09.sql','sql','2ad06d1af78139f0146f32b8a691b391','1','mycontaobackup2014_08_09.sql',NULL,0,0,0,0),(91,'ˇØÖ£ß„á‚\0%ê	W»',1407697162,'p©Ù ¿‰≤7\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_08_10.sql','sql','4d2ade48e07d6571834f7c61a219929f','1','mycontaobackup2014_08_10.sql',NULL,0,0,0,0),(92,'ˇØÖ£ß„á‚\0%ê	W»',1408129732,'òºé–$Ø‰≤7\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_08_15.sql','sql','20dcf673f687957c5c8cf6608481e307','1','mycontaobackup2014_08_15.sql',NULL,0,0,0,0),(93,'ˇØÖ£ß„á‚\0%ê	W»',1408451079,' Ql\'õ‰≤7\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_08_19.sql','sql','0bc2bb31d49b467a17ab80eed37ca4ac','1','mycontaobackup2014_08_19.sql',NULL,0,0,0,0),(94,'ˇØÖ£ß„á‚\0%ê	W»',1415872435,'˙˚&hk\Z‰•É\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_11_13.sql','sql','2a1b4adef7fb35197eed8d401c4cbfc3','1','mycontaobackup2014_11_13.sql',NULL,0,0,0,0),(95,'ˇØÖ£ß„á‚\0%ê	W»',1416066086,'€˚\0\\l›‰§N\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_11_15.sql','sql','c01326ffe07eeed338e8418e75d7d653','1','mycontaobackup2014_11_15.sql',NULL,0,0,0,0),(96,'ˇØÖ£ß„á‚\0%ê	W»',1416574297,'!•jÃq}‰§N\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_11_21.sql','sql','ae148c14a920304faac66800cb2e0b1e','1','mycontaobackup2014_11_21.sql',NULL,0,0,0,0),(97,'ˇØÖ£ß„á‚\0%ê	W»',1416985209,'€˚ÂÓu9‰§N\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_11_26.sql','sql','c65abd255fcf8f10775f8704f4ed6695','1','mycontaobackup2014_11_26.sql',NULL,0,0,0,0),(98,'ˇØÖ£ß„á‚\0%ê	W»',1417809293,'î6(\Z|∏‰åç\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_12_05.sql','sql','ceb8a423399e7da0600c121f029988d1','1','mycontaobackup2014_12_05.sql',NULL,0,0,0,0),(99,'ˇØÖ£ß„á‚\0%ê	W»',1418747042,'Ú≠©ÏÖ?‰∑“\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_12_16.sql','sql','0aa01d57a721b88611edc2e29719b0f2','1','mycontaobackup2014_12_16.sql',NULL,0,0,0,0),(100,'ˇØÖ£ß„á‚\0%ê	W»',1418803163,'ùW§tÖ¬‰∑“\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_12_17.sql','sql','3e7d95d3b0fe5a8c3410b8d109664e36','1','mycontaobackup2014_12_17.sql',NULL,0,0,0,0),(101,'ˇØÖ£ß„á‚\0%ê	W»',1419078385,'i˚\ZàC‰ÆQ\0%ê	W»','file','files/mycontaobackup/mycontaobackup2014_12_20.sql','sql','4844c932838997eb63d953504292858d','1','mycontaobackup2014_12_20.sql',NULL,0,0,0,0),(102,'ˇØÖ£ß„á‚\0%ê	W»',1419318126,'öÕ\'6äq‰≤ù\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2014_12_23.sql','sql','19729847abebc46ca0c8c361864ed099','1','mycontaobackup2014_12_23.sql',NULL,0,0,0,0),(103,'ˇØÖ£ß„á‚\0%ê	W»',1420190235,'$k.åí`‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_02.sql','sql','f03b11d9cf3c150ae909fa16477c0a17','1','mycontaobackup2015_01_02.sql',NULL,0,0,0,0),(104,'ˇØÖ£ß„á‚\0%ê	W»',1420298580,'gKõ.ì\\‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_03.sql','sql','6d573db1a20ece944cd1a636bd42f2d2','1','mycontaobackup2015_01_03.sql',NULL,0,0,0,0),(105,'ˇØÖ£ß„á‚\0%ê	W»',1420557576,'l√w}ï∑‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_06.sql','sql','71de5631d56fe2d20b84f246bc1c6cb7','1','mycontaobackup2015_01_06.sql',NULL,0,0,0,0),(106,'ˇØÖ£ß„á‚\0%ê	W»',1420983890,'óe\Zôò‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_11.sql','sql','7b2f2fb23b41c7413dfec97104a90e19','1','mycontaobackup2015_01_11.sql',NULL,0,0,0,0),(107,'ˇØÖ£ß„á‚\0%ê	W»',1421045399,':Àö\'‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_12.sql','sql','e34d440d8c8a8820d53a759c12cffc31','1','mycontaobackup2015_01_12.sql',NULL,0,0,0,0),(108,'ˇØÖ£ß„á‚\0%ê	W»',1421139921,'Mg≥äõ‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_13.sql','sql','c70c311d104970585e8e8de0ee79f703','1','mycontaobackup2015_01_13.sql',NULL,0,0,0,0),(109,'ˇØÖ£ß„á‚\0%ê	W»',1421224177,'zûíõ«‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_14.sql','sql','08a508e814acca2d54abaa607627660d','1','mycontaobackup2015_01_14.sql',NULL,0,0,0,0),(110,'ˇØÖ£ß„á‚\0%ê	W»',1421301435,'[1Úú{‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_15.sql','sql','6b75d53bac7f09a2bff85bcd82c66b19','1','mycontaobackup2015_01_15.sql',NULL,0,0,0,0),(111,'ˇØÖ£ß„á‚\0%ê	W»',1421394222,'d˜)∂ùS‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_16.sql','sql','a3ca6b6362adc0cd8acd6eb86962420e','1','mycontaobackup2015_01_16.sql',NULL,0,0,0,0),(112,'ˇØÖ£ß„á‚\0%ê	W»',1421489254,'®(˜û0‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_17.sql','sql','15204f0e5701e732452261db99e9c8b8','1','mycontaobackup2015_01_17.sql',NULL,0,0,0,0),(113,'ˇØÖ£ß„á‚\0%ê	W»',1421585164,'˜(hmü‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_18.sql','sql','e3e43fdc403aa4c7df3768c31ca4f445','1','mycontaobackup2015_01_18.sql',NULL,0,0,0,0),(114,'ˇØÖ£ß„á‚\0%ê	W»',1421656205,'^∞h°üµ‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_19.sql','sql','586f77004658a9de1e35712231104812','1','mycontaobackup2015_01_19.sql',NULL,0,0,0,0),(115,'ˇØÖ£ß„á‚\0%ê	W»',1421756230,'B‹e†û‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_20.sql','sql','ca429bf56331146afd4aec0bfacba77f','1','mycontaobackup2015_01_20.sql',NULL,0,0,0,0),(116,'ˇØÖ£ß„á‚\0%ê	W»',1421956397,'N÷y¢p‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_22.sql','sql','54ca1af5997d8b4c26f36a1cbdf8d017','1','mycontaobackup2015_01_22.sql',NULL,0,0,0,0),(117,'ˇØÖ£ß„á‚\0%ê	W»',1422016451,'\"P¯‘¢¸‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_23.sql','sql','3a02e56d39844f6240dadc68733c4595','1','mycontaobackup2015_01_23.sql',NULL,0,0,0,0),(118,'ˇØÖ£ß„á‚\0%ê	W»',1422255574,'‚ö;è•(‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_26.sql','sql','680306787477c155b56ec9f747f01a09','1','mycontaobackup2015_01_26.sql',NULL,0,0,0,0),(119,'ˇØÖ£ß„á‚\0%ê	W»',1422426088,'‰s‰ ¶µ‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_28.sql','sql','56b07c72a95c2e2b96e2b90de082993a','1','mycontaobackup2015_01_28.sql',NULL,0,0,0,0),(120,'ˇØÖ£ß„á‚\0%ê	W»',1422620443,'ià≠Ç®z‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_01_30.sql','sql','33475f2fe8434658ed4af0f42d4785a6','1','mycontaobackup2015_01_30.sql',NULL,0,0,0,0),(121,'ˇØÖ£ß„á‚\0%ê	W»',1423206875,'ŒDZé≠œ‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_02_06.sql','sql','e93dae9c761b8eb0cabd35d4f57a005d','1','mycontaobackup2015_02_06.sql',NULL,0,0,0,0),(122,'ˇØÖ£ß„á‚\0%ê	W»',1424507489,'∂Fπ§‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_02_21.sql','sql','b6855789cfe051bfb43faf12ba120b0d','1','mycontaobackup2015_02_21.sql',NULL,0,0,0,0),(123,'ˇØÖ£ß„á‚\0%ê	W»',1428247991,'[.€©‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_04_05.sql','sql','9d1b865f206629e7796d8f7233315d74','1','mycontaobackup2015_04_05.sql',NULL,0,0,0,0),(124,'ˇØÖ£ß„á‚\0%ê	W»',1428473540,'6Êo\'›∂‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_04_08.sql','sql','780e72a67c7e548cab6462e2e7c95097','1','mycontaobackup2015_04_08.sql',NULL,0,0,0,0),(125,'ˇØÖ£ß„á‚\0%ê	W»',1431059790,'ÀÚı;‰êê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_05_08.sql','sql','bf83dea16689581c971cc2f2a9a8e1c6','1','mycontaobackup2015_05_08.sql',NULL,0,0,0,0),(126,'ˇØÖ£ß„á‚\0%ê	W»',1432486842,'i_D6Âêê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_05_24.sql','sql','32000c58f1e709d7944fe666523b2868','1','mycontaobackup2015_05_24.sql',NULL,0,0,0,0),(127,'ˇØÖ£ß„á‚\0%ê	W»',1432827755,')Å^VPÂêê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_05_28.sql','sql','99114cbdadc909383b907decdf532639','1','mycontaobackup2015_05_28.sql',NULL,0,0,0,0),(128,'ˇØÖ£ß„á‚\0%ê	W»',1433061412,'0ñHpÂêê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_05_31.sql','sql','f0404dc601810f4c3f3be0a8e782de13','1','mycontaobackup2015_05_31.sql',NULL,0,0,0,0),(129,'ˇØÖ£ß„á‚\0%ê	W»',1433408508,'T˝˘\nòÂêê\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_04.sql','sql','fd63410974d143ec46eba1ae9b456f7c','1','mycontaobackup2015_06_04.sql',NULL,0,0,0,0),(130,'ˇØÖ£ß„á‚\0%ê	W»',1433593988,'/ßæHÂ†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_06.sql','sql','ec47752350a1c4c14321864deeb1a80d','1','mycontaobackup2015_06_06.sql',NULL,0,0,0,0),(131,'ˇØÖ£ß„á‚\0%ê	W»',1433745435,'Õy§ß\r®Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_08.sql','sql','8572a161add5c1510719ee5a31681e23','1','mycontaobackup2015_06_08.sql',NULL,0,0,0,0),(132,'ˇØÖ£ß„á‚\0%ê	W»',1433839926,'ŒvÎ\\ÑÂ†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_09.sql','sql','a2dfe21a47cc2c431fd50027e11a2ab0','1','mycontaobackup2015_06_09.sql',NULL,0,0,0,0),(133,'ˇØÖ£ß„á‚\0%ê	W»',1434100461,'ihMò„Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_12.sql','sql','df55b710264ac439712851c8a9fd0550','1','mycontaobackup2015_06_12.sql',NULL,0,0,0,0),(134,'ˇØÖ£ß„á‚\0%ê	W»',1434221804,'Ô¶y˝Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_13.sql','sql','5424f64d8fa84b3b8848edc632a07674','1','mycontaobackup2015_06_13.sql',NULL,0,0,0,0),(135,'ˇØÖ£ß„á‚\0%ê	W»',1434262710,'- —+]Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_14.sql','sql','a35ac5f132ae2ed5b83d3bad9a29efa5','1','mycontaobackup2015_06_14.sql',NULL,0,0,0,0),(136,'ˇØÖ£ß„á‚\0%ê	W»',1434354246,'LÚ¯Y2Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_15.sql','sql','b72158409a0802ce06375f345146975d','1','mycontaobackup2015_06_15.sql',NULL,0,0,0,0),(137,'ˇØÖ£ß„á‚\0%ê	W»',1434449035,'ˇπ>`Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_16.sql','sql','db336178c3df367283231cae0a73913b','1','mycontaobackup2015_06_16.sql',NULL,0,0,0,0),(138,'ˇØÖ£ß„á‚\0%ê	W»',1434518631,'\nqi±Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_17.sql','sql','5f6357de069a97488a84721ed25fbee4','1','mycontaobackup2015_06_17.sql',NULL,0,0,0,0),(139,'ˇØÖ£ß„á‚\0%ê	W»',1434605621,'îWT˚{Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_18.sql','sql','f9fc8dce7bbffc98269aa7e58b3d03d8','1','mycontaobackup2015_06_18.sql',NULL,0,0,0,0),(140,'ˇØÖ£ß„á‚\0%ê	W»',1434691694,'˚[‰0CÂ†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_19.sql','sql','e9c5edd6e25b0366b92bf41c0f12f3e0','1','mycontaobackup2015_06_19.sql',NULL,0,0,0,0),(141,'ˇØÖ£ß„á‚\0%ê	W»',1434788410,'+°Ç%Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_20.sql','sql','9bbb811162ba2a6935405c321b593dc3','1','mycontaobackup2015_06_20.sql',NULL,0,0,0,0),(142,'ˇØÖ£ß„á‚\0%ê	W»',1434959305,'&Àö≥Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_22.sql','sql','7efbd751a6e2ca62e3ecacc9ae3e8710','1','mycontaobackup2015_06_22.sql',NULL,0,0,0,0),(143,'ˇØÖ£ß„á‚\0%ê	W»',1435129887,':¡E\Z@Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_24.sql','sql','9c6f9b08977f5581fa65dc2ef8e0b170','1','mycontaobackup2015_06_24.sql',NULL,0,0,0,0),(144,'ˇØÖ£ß„á‚\0%ê	W»',1435319702,'-œ≤“˙Â†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_26.sql','sql','b7b10f79c888dc510cef488c8465236f','1','mycontaobackup2015_06_26.sql',NULL,0,0,0,0),(145,'ˇØÖ£ß„á‚\0%ê	W»',1435484378,'ò0ÖUyÂ†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_28.sql','sql','0f5a64c8e89f7e288a9c825d86483e82','1','mycontaobackup2015_06_28.sql',NULL,0,0,0,0),(146,'ˇØÖ£ß„á‚\0%ê	W»',1435588380,'æ(◊ﬁkÂ†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_06_29.sql','sql','c2339d7feed1ce019ccaa8026ddbe0be','1','mycontaobackup2015_06_29.sql',NULL,0,0,0,0),(147,'ˇØÖ£ß„á‚\0%ê	W»',1435854870,'6´Ol ÿÂ†P\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_07_02.sql','sql','f2cf93be823ccaa742488b926454be33','1','mycontaobackup2015_07_02.sql',NULL,0,0,0,0),(148,'ˇØÖ£ß„á‚\0%ê	W»',1436992730,'ÃÁ•+1Â∞,\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_07_15.sql','sql','7d8897b951ebb880508d369dc5c3ceb2','1','mycontaobackup2015_07_15.sql',NULL,0,0,0,0),(149,'ˇØÖ£ß„á‚\0%ê	W»',1437994001,'√Ï5;4LÂ∞,\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_07_27.sql','sql','3753ddd9f473ea7a91c9ccc25bbc65c1','1','mycontaobackup2015_07_27.sql',NULL,0,0,0,0),(150,'ˇØÖ£ß„á‚\0%ê	W»',1438157858,'F{H5 Â∞,\0%ê™q¸','file','files/mycontaobackup/mycontaobackup2015_07_29.sql','sql','7169c5b5f6d88b972de177b02f81960d','1','mycontaobackup2015_07_29.sql',NULL,0,0,0,0);
/*!40000 ALTER TABLE `tl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form`
--

DROP TABLE IF EXISTS `tl_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `sendViaEmail` char(1) NOT NULL DEFAULT '',
  `recipient` varchar(1022) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `format` varchar(12) NOT NULL DEFAULT '',
  `skipEmpty` char(1) NOT NULL DEFAULT '',
  `storeValues` char(1) NOT NULL DEFAULT '',
  `targetTable` varchar(64) NOT NULL DEFAULT '',
  `method` varchar(12) NOT NULL DEFAULT '',
  `novalidate` char(1) NOT NULL DEFAULT '',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `formID` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `allowTags` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form`
--

LOCK TABLES `tl_form` WRITE;
/*!40000 ALTER TABLE `tl_form` DISABLE KEYS */;
INSERT INTO `tl_form` VALUES (1,0,'','',0,'','','','raw','','','','POST','','','','','');
/*!40000 ALTER TABLE `tl_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form_field`
--

DROP TABLE IF EXISTS `tl_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `invisible` char(1) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `text` text,
  `html` text,
  `options` blob,
  `mandatory` char(1) NOT NULL DEFAULT '',
  `rgxp` varchar(32) NOT NULL DEFAULT '',
  `placeholder` varchar(255) NOT NULL DEFAULT '',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `size` varchar(255) NOT NULL DEFAULT '',
  `multiple` char(1) NOT NULL DEFAULT '',
  `mSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `storeFile` char(1) NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) NOT NULL DEFAULT '',
  `fsType` varchar(32) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addSubmit` char(1) NOT NULL DEFAULT '',
  `slabel` varchar(255) NOT NULL DEFAULT '',
  `imageSubmit` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form_field`
--

LOCK TABLES `tl_form_field` WRITE;
/*!40000 ALTER TABLE `tl_form_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_image_size`
--

DROP TABLE IF EXISTS `tl_image_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_image_size` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `sizes` varchar(255) NOT NULL DEFAULT '',
  `densities` varchar(255) NOT NULL DEFAULT '',
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `resizeMode` varchar(255) NOT NULL DEFAULT '',
  `zoom` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_image_size`
--

LOCK TABLES `tl_image_size` WRITE;
/*!40000 ALTER TABLE `tl_image_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_image_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_image_size_item`
--

DROP TABLE IF EXISTS `tl_image_size_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_image_size_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `media` varchar(255) NOT NULL DEFAULT '',
  `sizes` varchar(255) NOT NULL DEFAULT '',
  `densities` varchar(255) NOT NULL DEFAULT '',
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `resizeMode` varchar(255) NOT NULL DEFAULT '',
  `zoom` int(10) DEFAULT NULL,
  `invisible` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_image_size_item`
--

LOCK TABLES `tl_image_size_item` WRITE;
/*!40000 ALTER TABLE `tl_image_size_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_image_size_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_import_from_csv`
--

DROP TABLE IF EXISTS `tl_import_from_csv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_import_from_csv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `import_table` varchar(255) NOT NULL DEFAULT '',
  `field_separator` varchar(255) NOT NULL DEFAULT '',
  `field_enclosure` varchar(255) NOT NULL DEFAULT '',
  `import_mode` varchar(255) NOT NULL DEFAULT '',
  `selected_fields` varchar(1024) NOT NULL DEFAULT '',
  `fileSRC` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_import_from_csv`
--

LOCK TABLES `tl_import_from_csv` WRITE;
/*!40000 ALTER TABLE `tl_import_from_csv` DISABLE KEYS */;
INSERT INTO `tl_import_from_csv` VALUES (1,1393941961,'tl_student',';','','append_entries','a:4:{i:0;s:6:\"gender\";i:1;s:8:\"lastname\";i:2;s:9:\"firstname\";i:3;s:5:\"class\";}','\Z¸£§„á‚\0%ê	W»');
/*!40000 ALTER TABLE `tl_import_from_csv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_layout`
--

DROP TABLE IF EXISTS `tl_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `rows` varchar(8) NOT NULL DEFAULT '',
  `headerHeight` varchar(255) NOT NULL DEFAULT '',
  `footerHeight` varchar(255) NOT NULL DEFAULT '',
  `cols` varchar(8) NOT NULL DEFAULT '',
  `widthLeft` varchar(255) NOT NULL DEFAULT '',
  `widthRight` varchar(255) NOT NULL DEFAULT '',
  `sections` varchar(1022) NOT NULL DEFAULT '',
  `sPosition` varchar(32) NOT NULL DEFAULT '',
  `framework` varchar(255) NOT NULL DEFAULT '',
  `stylesheet` blob,
  `external` blob,
  `orderExt` blob,
  `newsfeeds` blob,
  `calendarfeeds` blob,
  `modules` blob,
  `template` varchar(64) NOT NULL DEFAULT '',
  `doctype` varchar(32) NOT NULL DEFAULT '',
  `webfonts` varchar(255) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `onload` varchar(255) NOT NULL DEFAULT '',
  `head` text,
  `addJQuery` char(1) NOT NULL DEFAULT '',
  `jSource` varchar(16) NOT NULL DEFAULT '',
  `jquery` text,
  `addMooTools` char(1) NOT NULL DEFAULT '',
  `mooSource` varchar(16) NOT NULL DEFAULT '',
  `mootools` text,
  `analytics` text,
  `script` text,
  `static` char(1) NOT NULL DEFAULT '',
  `width` varchar(255) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  `viewport` varchar(255) NOT NULL DEFAULT '',
  `titleTag` varchar(255) NOT NULL DEFAULT '',
  `loadingOrder` varchar(16) NOT NULL DEFAULT '',
  `picturefill` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_layout`
--

LOCK TABLES `tl_layout` WRITE;
/*!40000 ALTER TABLE `tl_layout` DISABLE KEYS */;
INSERT INTO `tl_layout` VALUES (1,1,1402671104,'default','3rw','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1cl','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','main','',NULL,NULL,'a:1:{i:0;s:0:\"\";}',NULL,NULL,'a:3:{i:0;a:3:{s:3:\"mod\";s:1:\"1\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";s:1:\"1\";}i:1;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";s:1:\"1\";}i:2;a:3:{s:3:\"mod\";s:1:\"2\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";s:1:\"1\";}}','fe_page','html5','','','','<meta content = \"width = 1040, initial-scale = 1.0\" name = \"viewport\" />','','j_googleapis','','1','moo_local','','','','','','center','','','','');
/*!40000 ALTER TABLE `tl_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_log`
--

DROP TABLE IF EXISTS `tl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `text` text,
  `func` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_log`
--

LOCK TABLES `tl_log` WRITE;
/*!40000 ALTER TABLE `tl_log` DISABLE KEYS */;
INSERT INTO `tl_log` VALUES (1,1436992821,'BE','CRON','administrator','Purged the system log','Contao\\Automator::purgeSystemLog','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(2,1436992821,'BE','CRON','administrator','Purged the page cache','Contao\\Automator::purgePageCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(3,1436992821,'BE','CRON','administrator','Purged the image cache','Contao\\Automator::purgeImageCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(4,1436992821,'BE','CRON','administrator','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(5,1436992821,'BE','CRON','administrator','Purged the page cache','Contao\\Automator::purgePageCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(6,1436992821,'BE','CRON','administrator','Purged the script cache','Contao\\Automator::purgeScriptCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(7,1436992821,'BE','CRON','administrator','Purged the page cache','Contao\\Automator::purgePageCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(8,1436992821,'BE','CRON','administrator','Purged the search cache','Contao\\Automator::purgeSearchCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(9,1436992821,'BE','CRON','administrator','Purged the internal cache','Contao\\Automator::purgeInternalCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(10,1436992821,'BE','CRON','administrator','Purged the temp folder','Contao\\Automator::purgeTempFolder','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(11,1436992821,'BE','CRON','administrator','Purged the page cache','Contao\\Automator::purgePageCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(12,1436992821,'BE','CRON','administrator','Regenerated the XML files','Contao\\Automator::generateXmlFiles','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(13,1436992832,'BE','CRON','administrator','Purged the internal cache','Contao\\Automator::purgeInternalCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(14,1436992832,'BE','CRON','administrator','Generated the config cache','Contao\\Automator::generateConfigCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(15,1436992833,'BE','CRON','administrator','Generated the DCA cache','Contao\\Automator::generateDcaCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(16,1436992834,'BE','CRON','administrator','Generated the language cache','Contao\\Automator::generateLanguageCache','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(17,1436992834,'BE','CRON','administrator','Generated the DCA extracts','Contao\\Automator::generateDcaExtracts','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(18,1436992891,'BE','GENERAL','administrator','A new version of record &quot;tl_class.id=11&quot; has been created','Contao\\DC_Table::edit','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(19,1436992901,'BE','GENERAL','administrator','A new version of record &quot;tl_class.id=3&quot; has been created','Contao\\DC_Table::edit','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(20,1436992912,'BE','GENERAL','administrator','A new version of record &quot;tl_class.id=9&quot; has been created','Contao\\DC_Table::edit','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(21,1436992920,'BE','GENERAL','administrator','A new version of record &quot;tl_class.id=10&quot; has been created','Contao\\DC_Table::edit','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(22,1436992931,'BE','GENERAL','administrator','A new version of record &quot;tl_class.id=41&quot; has been created','Contao\\DC_Table::edit','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(23,1436992940,'BE','GENERAL','administrator','A new version of record &quot;tl_class.id=40&quot; has been created','Contao\\DC_Table::edit','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(24,1436992949,'BE','GENERAL','administrator','A new version of record &quot;tl_class.id=3&quot; has been created','Contao\\DC_Table::edit','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(25,1436992955,'BE','GENERAL','administrator','A new version of record &quot;tl_class.id=11&quot; has been created','Contao\\DC_Table::edit','188.60.76.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36'),(26,1437994007,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.213.169.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(27,1437994007,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.213.169.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(28,1437994007,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.213.169.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(29,1437994007,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.213.169.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(30,1437994007,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.213.169.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(31,1437994008,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.213.169.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(32,1437994028,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.213.169.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(33,1437994510,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged out','Contao\\User::logout','213.213.169.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(34,1438157829,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(35,1438157829,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(36,1438157835,'BE','ACCESS','administrator','User &quot;administrator&quot; has logged in','Contao\\User::login','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(37,1438157838,'BE','CRON','administrator','Purged the internal cache','Contao\\Automator::purgeInternalCache','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(38,1438157848,'BE','CRON','administrator','Purged the internal cache','Contao\\Automator::purgeInternalCache','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(39,1438157848,'BE','CRON','administrator','Generated the config cache','Contao\\Automator::generateConfigCache','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(40,1438157848,'BE','CRON','administrator','Generated the DCA cache','Contao\\Automator::generateDcaCache','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(41,1438157849,'BE','CRON','administrator','Generated the language cache','Contao\\Automator::generateLanguageCache','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(42,1438157850,'BE','CRON','administrator','Generated the DCA extracts','Contao\\Automator::generateDcaExtracts','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),(43,1438157867,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','188.60.76.0','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36');
/*!40000 ALTER TABLE `tl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_member`
--

DROP TABLE IF EXISTS `tl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) NOT NULL DEFAULT '',
  `gender` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(64) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `mobile` varchar(64) NOT NULL DEFAULT '',
  `fax` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `groups` blob,
  `login` char(1) NOT NULL DEFAULT '',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(128) NOT NULL DEFAULT '',
  `assignDir` char(1) NOT NULL DEFAULT '',
  `homeDir` binary(16) DEFAULT NULL,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `session` blob,
  `autologin` varchar(32) DEFAULT NULL,
  `createdOn` int(10) unsigned NOT NULL DEFAULT '0',
  `activation` varchar(32) NOT NULL DEFAULT '',
  `newsletter` blob,
  `isTeacher` char(1) NOT NULL DEFAULT '',
  `class` int(10) unsigned DEFAULT NULL,
  `deviation` varchar(3) NOT NULL DEFAULT '',
  `isClassTeacher` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `autologin` (`autologin`),
  UNIQUE KEY `class` (`class`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `activation` (`activation`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member`
--

LOCK TABLES `tl_member` WRITE;
/*!40000 ALTER TABLE `tl_member` DISABLE KEYS */;
INSERT INTO `tl_member` VALUES (21,1421353849,'Ann√®ve','D√§twyler','','','','','','','','','','','','anneve.daetwyler@ettiswil.educanet2.ch','','',NULL,'1','annevedaetwyler','$6$b0de8078134af2e8$Vqe/KBvrJ3UBs.gcmFSClmaoxXlb.mpBde7FokH2gZMnlZZBQzjawfdlvCVyNq2c3WR.MrZ0zwnf.eF2PXOl40','',NULL,'','','',1393774266,1434354425,1434536123,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(22,1421353849,'Josef','Bieri','','','','','','','','','','','','josef.bieri@ettiswil.educanet2.ch','','',NULL,'1','josefbieri','$6$5972411d4ed91004$FbfEZ2fHxnZbLIwMMMYMWxzLBD6.tEg/Fsp8hniGG3FC0EWtDLUfyvyXQIYoGeec/gjT/misY5anEpE4mGt8F0','',NULL,'','','',1393774274,1434606515,1434698853,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:58:\"?isAjax=true&act=reset_table&class=9&subject=26&teacher=22\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(25,1421353849,'Romi','Waldisp√ºhl','','','','','','','','','','','','romi.waldispuehl@ettiswil.educanet2.ch','','',NULL,'1','romiwaldispuehl','$6$6437f258ce792931$Xl2SCAuaC8QsGshf0gvpOOr/JALtWY.eXX8PClaQmty67YWBjkSpRC9OANILKIf8b5O4YlNUHQiq4tFdLB0uY/','',NULL,'','','',1393774349,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(20,1421353849,'Angela','Hurni','','','','','','','','','','','','angela.hurni@ettiswil.educanet2.ch','','',NULL,'1','angelahurni','$6$2846fb51c111c86e$UOsjXlJat5GBqO8POnRqAXnfi1RvBSLdXiWTceOj72S1n0vcaFEFiEXmVMii6XXGmYtQ2FxYqh9iL9ZAVoweY.','',NULL,'','','',1393774235,1434534361,1434553060,3,1434110172,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(19,1421353849,'Regula','Lanicca','','','','','','','','','','','','regula.lanicca@ettiswil.educanet2.ch','','',NULL,'1','regulalanicca','$6$460dc055dac6a1ad$EsB0db81UgkSmPCdWHVeYUqstGIhckWLN9HaIRxbK5d1lTuPOf5MMhYt/L7FL0p5cJXvGKK6Ad5p5HNx1OUyo/','',NULL,'','','',1393774226,1434549429,1434963188,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxOVkVWdFl6TldhV0Z0Vm1wa1JEQXhTbTVTYkZsWFRtOWFXRWs1VFZSclBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(18,1421353849,'Alice','Lustenberger','','','','','','','','','','','','alice.lustenberger@ettiswil.educanet2.ch','','',NULL,'1','alicelustenberger','$6$ead6fe721119a033$bVrNyQittODcesZTD8qN7TVL6.8YtzdBE7hTDP4mMMfe6.nqtKSMYKbysVklr/0CAzrf2qjFiyQFOdfeh3g/q1','',NULL,'','','',1393774208,1434263421,1434553361,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:58:\"?isAjax=true&act=reset_table&class=9&subject=11&teacher=18\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(15,1421353849,'Daniela','Schwegler','','','','','','','','','','','','daniela.schwegler@ettiswil.educanet2.ch','','',NULL,'1','danielaschwegler','$6$df4e27ba2bcd3b8d$n4BXeSkZOuH9YpqIMYA/l2k6vkVQFMh1Ye64IoiqeJoAmPuJDVqN8WgMdA.m/Y1NKH4OGkodeY1XzJtKB8qOC/','',NULL,'','','',1393774172,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(17,1421353849,'Patrizia','Fink','','','','','','','','','','','','patrizia.fink@ettiswil.educanet2.ch','','',NULL,'1','patriziafink','$6$de07a8c4966aae21$fkQv71hTAtda8xQzEaSPS42vIG1Y.WakZtaMVwD2UMFaKxOl6hDeBAKkZCn7Cj8uXs/Yxt9iWiGu4P8orlaDo.','',NULL,'','','',1393774198,1433839939,1434551162,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(14,1421353849,'Margrit','Stocker','','','','','','','','','','','','margrit.stocker@ettiswil.educanet2.ch','','',NULL,'1','margritstocker','$6$dab7329fbafe86f8$5r1tVu0.svcipZI.s4mvqGM3dIKvIYWre1jDNPhYuVyMnpAgESe9rC3qHzn35vPvrnEFlQjB.AdYa6h/WzbxB/','',NULL,'','','',1393774162,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(12,1421353849,'Lisbeth','Wey','','','','','','','','','','','','lisbeth.wey@ettiswil.educanet2.ch','','',NULL,'1','lisbethwey','$6$1f10d76ac64e1b3f$CWjF8MQ9kdtG0/v9iNXByyvgKQbAKNkvcBrvdYYgcF5TaEOh8q/99uSGVgFHIb2xMQ.ziwIbyZrwg4m.aICAT0','',NULL,'','','',1393774124,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(13,1421353849,'Helga','Troxler','','','','','','','','','','','','helga.troxler@ettiswil.educanet2.ch','','',NULL,'1','helgatroxler','$6$f78aef670d8ca201$15v/MV4sKXlBPU1OEJxpWt9eiSxfDKIJWnL.vAdhmXNwKdspF/nHHvYodfaS14WXIdorHqJOWinnFukbCIwjU1','',NULL,'','','',1393774146,1421159970,1434545897,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(8,1421353849,'Giannina','Widmer','','','','','','','','','','','','giannina.widmer@ettiswil.educanet2.ch','','',NULL,'1','gianninawidmer','$6$90474a5d3f4fdd24$yAQIwa71acWdUeAcuJSKAuK0ncmbKrPDTyGu3PSfN3K6ITuaSNhzMDiTmmD4cRNaQzE.mpS3NgVIYstmB3ndU0','',NULL,'','','',1393772869,1434566235,1434624802,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(10,1421353849,'J√ºrg','Zihlmann','','','','','','','','','','','','juerg.zihlmann@ettiswil.educanet2.ch','','',NULL,'1','juergzihlmann','$6$d4bab53dee3940a7$iwI15sAy49dJrVzVfR0Y2FyZVmsk9bo94XMWTT8lsWuHDAmwyvLLisex6g09bajAS0OQguSkg8b5OLe7ardjX.','',NULL,'','','',1393774082,1434375961,1434959321,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxQVTFwNlpGZEtjVnBYVGpCUVZFazFTbTVTYkZsWFRtOWFXRWs1VFZSQlBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(6,1421677278,'Denise','Tschopp','','','','','','','','','','','','denise.tschopp@ettiswil.educanet2.ch','','',NULL,'1','denisetschopp','$2y$10$6d0715ae76f2e3cc2d64cuEKzQefV2.EjYR4gm9zmJfqWuysEMQKq','',NULL,'','','',1390755233,1434981241,1434981430,3,1434374544,'a:3:{s:7:\"referer\";a:2:{s:4:\"last\";s:28:\"?isAjax=true&act=tally_sheet\";s:7:\"current\";s:29:\"buf/do/print_tally_sheet.html\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:8;s:3:\"key\";s:33:\"ccf2a314124568db9d2ea700e09a0a551\";s:4:\"time\";i:1402920021;}s:16:\"setPasswordToken\";s:0:\"\";}',NULL,0,'','','1',40,'0','1'),(5,1421353849,'Mathias','Sch√§r','','','','','','','','','','','','mathias.schaer@ettiswil.educanet2.ch','','',NULL,'1','mathiasschaer','$6$df5332e8551b3b16$bF5BFQ3TWdnrn9jCWDcdesKXJFqXZPj9oOiRoEHf1WqEzuNWVQlj.suNE5vlGpnyIo/QG2esyt5w1xQIbKcXZ.','',NULL,'','','',1390755215,1434738270,1435326118,3,1402563483,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:28:\"?isAjax=true&act=tally_sheet\";s:7:\"current\";s:16:\"buf/do/menu.html\";}}',NULL,0,'','','1',41,'0.1','1'),(4,1421353849,'Toni','Waldisp√ºhl','','female','','','','','','','','','','toni.waldispuehl@ettiswil.educanet2.ch','','',NULL,'1','toniwaldispuehl','$2y$10$b0129938f3a101031b3d1ua6GK/C9kaxxVtZvQtXFxP2KG56dhi46','',NULL,'','','',1390755198,1434789117,1437994027,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:28:\"buf/do/start_new_voting.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',11,'0','1'),(3,1436992986,'Marko','Cupic','','male','','','','','','','','','','marko.cupic@ettiswil.educanet2.ch','','',NULL,'1','markocupic','$2y$10$e5f6da1d218bb44d67cc9uxW0YSr/YZBaHA34ykFxZI8mo5nPse7O','',NULL,'','','',1390755178,1435588389,1438157867,3,1393143729,'a:2:{s:7:\"referer\";a:2:{s:4:\"last\";s:122:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxOZVZwNlpGZEtjVnBYVGpCUVZGRnRaRWRXYUZreWFHeGphakI2YXVUelRWYk5taWpVaEhnRENWWWQ=\";s:7:\"current\";s:122:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxOZVZwNlpGZEtjVnBYVGpCUVZGRnRaRWRXYUZreWFHeGphakI2YXVUelRWYk5taWpVaEhnRENWWWQ=\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:13;s:3:\"key\";s:33:\"c29ad0b6f0ebdef77e8d74876f05906cb\";s:4:\"time\";i:1402652917;}}',NULL,0,'','','1',3,'1.1','1'),(2,1421353849,'Anita','Uka','','male','','','','','','','','','','anita.uka@ettiswil.educanet2.ch','','',NULL,'1','anitauka','$2y$10$8659f596f24df65e33e30ezxHnn45gNU0Guc/tLHxM7sBcNkzgyt6','',NULL,'','','',1390754929,1434980749,1434981206,3,1421337483,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:25:\"buf/do/average_table.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',10,'0','1'),(1,1421353849,'Heinz','Troxler','','male','','','','','','','','','','heinz.troxler@ettiswil.educanet2.ch','','',NULL,'1','heinztroxler','$6$0c67497a12e043fc$M7zUupW1pqEkwlB/p13o.AGPyAeqt7URSwkn1oOiONaQUW4r6F1CFqQa4FCiWRc7g2pJUHA6vNm/Y5KIsLwUn.','',NULL,'','','',1390754898,1434718475,1435319714,3,1402294905,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:25:\"buf/do/average_table.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',9,'0','1'),(29,1421353849,'Alena','G√ºnther','','','','','','','','','','','','alena.guenther@ettiswil.educanet2.ch','','',NULL,'1','alenaguenther','$2y$10$1f1822487c1ec9d9f99baOt.q7RhiPbNqD/8yRGc4Iv9v3Jujm9vK','',NULL,'','','',1418803381,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(33,1434989821,'Jeanette','Marti','','','','','','','','','','','','jeanette.marti@ettiswil.educanet2.ch','','',NULL,'1','jeanettemarti','$2y$10$702659771e14a3b65a08duZNRvYKS21d0PR9WpULfzzvN27PQ1g4a','',NULL,'','','',1434989816,0,1435129976,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:28:\"buf/do/start_new_voting.html\";s:7:\"current\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxPUkVGdFl6TldhV0Z0Vm1wa1JEQjRUWGxhTUZwWFJtcGhSMVo1VUZSTmVnPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}',NULL,0,'','','1',NULL,'0','');
/*!40000 ALTER TABLE `tl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_member_group`
--

DROP TABLE IF EXISTS `tl_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `redirect` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member_group`
--

LOCK TABLES `tl_member_group` WRITE;
/*!40000 ALTER TABLE `tl_member_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_module`
--

DROP TABLE IF EXISTS `tl_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `levelOffset` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardLimit` char(1) NOT NULL DEFAULT '',
  `showProtected` char(1) NOT NULL DEFAULT '',
  `defineRoot` char(1) NOT NULL DEFAULT '',
  `rootPage` int(10) unsigned NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) NOT NULL DEFAULT '',
  `pages` blob,
  `orderPages` blob,
  `showHidden` char(1) NOT NULL DEFAULT '',
  `customLabel` varchar(64) NOT NULL DEFAULT '',
  `autologin` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) NOT NULL DEFAULT '',
  `cols` varchar(32) NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `queryType` varchar(32) NOT NULL DEFAULT '',
  `fuzzy` char(1) NOT NULL DEFAULT '',
  `contextLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `totalLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `searchType` varchar(32) NOT NULL DEFAULT '',
  `searchTpl` varchar(64) NOT NULL DEFAULT '',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `skipFirst` smallint(5) unsigned NOT NULL DEFAULT '0',
  `loadFirst` char(1) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `transparent` char(1) NOT NULL DEFAULT '',
  `flashvars` varchar(255) NOT NULL DEFAULT '',
  `altContent` text,
  `source` varchar(32) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `interactive` char(1) NOT NULL DEFAULT '',
  `flashID` varchar(64) NOT NULL DEFAULT '',
  `flashJS` text,
  `imgSize` varchar(64) NOT NULL DEFAULT '',
  `useCaption` char(1) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `html` text,
  `rss_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `rss_feed` text,
  `rss_template` varchar(32) NOT NULL DEFAULT '',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) NOT NULL DEFAULT '',
  `reg_skipName` char(1) NOT NULL DEFAULT '',
  `reg_close` varchar(32) NOT NULL DEFAULT '',
  `reg_assignDir` char(1) NOT NULL DEFAULT '',
  `reg_homeDir` binary(16) DEFAULT NULL,
  `reg_activate` char(1) NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_text` text,
  `reg_password` text,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) unsigned NOT NULL DEFAULT '1',
  `cal_format` varchar(32) NOT NULL DEFAULT '',
  `cal_ignoreDynamic` char(1) NOT NULL DEFAULT '',
  `cal_order` varchar(32) NOT NULL DEFAULT '',
  `cal_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `cal_limit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_template` varchar(32) NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(32) NOT NULL DEFAULT '',
  `cal_showQuantity` char(1) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  `faq_categories` blob,
  `faq_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `list_table` varchar(64) NOT NULL DEFAULT '',
  `list_fields` varchar(255) NOT NULL DEFAULT '',
  `list_where` varchar(255) NOT NULL DEFAULT '',
  `list_search` varchar(255) NOT NULL DEFAULT '',
  `list_sort` varchar(255) NOT NULL DEFAULT '',
  `list_info` varchar(255) NOT NULL DEFAULT '',
  `list_info_where` varchar(255) NOT NULL DEFAULT '',
  `list_layout` varchar(32) NOT NULL DEFAULT '',
  `list_info_layout` varchar(32) NOT NULL DEFAULT '',
  `news_archives` blob,
  `news_featured` varchar(16) NOT NULL DEFAULT '',
  `news_jumpToCurrent` varchar(16) NOT NULL DEFAULT '',
  `news_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `news_metaFields` varchar(255) NOT NULL DEFAULT '',
  `news_template` varchar(32) NOT NULL DEFAULT '',
  `news_format` varchar(32) NOT NULL DEFAULT '',
  `news_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_order` varchar(255) NOT NULL DEFAULT '',
  `news_showQuantity` char(1) NOT NULL DEFAULT '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) NOT NULL DEFAULT '',
  `nl_subscribe` text,
  `nl_unsubscribe` text,
  `nl_template` varchar(32) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_module`
--

LOCK TABLES `tl_module` WRITE;
/*!40000 ALTER TABLE `tl_module` DISABLE KEYS */;
INSERT INTO `tl_module` VALUES (1,1,1397633789,'Header','','html',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,'<div id=\"subheader\">\n<div id=\"logged_user\">\n\n		<ul id=\"info_logged_user\" class=\"logged_user\">\n			<li class=\"icon_user\"><strong>Angemeldet als: {{user::firstname}} {{user::lastname}}</strong> </li>\n			<li class=\"icon_office\"><strong>Name Schule: {{buf::name_school}}</strong> </li>\n        </ul>\n</div>\n<div id=\"logout\">\n\n		<ul id=\"logout_user\" class=\"logout_user\">\n			<li class=\"logout_user\"><strong>{{buf::logout_user}}</strong></li>\n			<li class=\"logout_user\"><strong>{{buf::account_settings}}</strong></li>\n        </ul>\n</div>\n</div>',3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple',''),(2,1,1395950604,'Footer','','html',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,'<p id=\"p_footer_bottom\">¬© Marko Cupic, Oberkirch </p>\n<p style=\"float:right; margin-top:-4em; margin-right:1em;\">\n    <a href=\"http://users.skynet.be/mgueury/mozilla/\">\n        <img src=\"system/modules/buf/assets/images/icons/validation_label_html5.png\" alt=\"Validated by HTML Validator (based on Tidy)\">\n    </a>\n</p>',3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple',''),(4,1,1391721112,'Beurteilen Und Foerdern','','mod_beurteilen_und_foerdern',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple',''),(7,1,1402672465,'Passwort vergessen','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','lostPassword',0,0,'','','',0,'nav_default',NULL,NULL,'','','',8,'','2cl',NULL,'','1',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,'Hoi ##firstname##\nDu hast ein neues Passwort f√ºr ##domain## angefordert.\nBitte klicke auf ##link## um das neue Passwort festzulegen. Wenn du diese E-Mail nicht angefordert hast, kontaktiere mich bitte per mail (m.cupic@gmx.ch).\nE liebe Gruess\nMarko','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','');
/*!40000 ALTER TABLE `tl_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news`
--

DROP TABLE IF EXISTS `tl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `subheadline` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(12) NOT NULL DEFAULT '',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(12) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `featured` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news`
--

LOCK TABLES `tl_news` WRITE;
/*!40000 ALTER TABLE `tl_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news_archive`
--

DROP TABLE IF EXISTS `tl_news_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(16) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news_archive`
--

LOCK TABLES `tl_news_archive` WRITE;
/*!40000 ALTER TABLE `tl_news_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_news_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news_feed`
--

DROP TABLE IF EXISTS `tl_news_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `archives` blob,
  `format` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news_feed`
--

LOCK TABLES `tl_news_feed` WRITE;
/*!40000 ALTER TABLE `tl_news_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_news_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter`
--

DROP TABLE IF EXISTS `tl_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext,
  `text` mediumtext,
  `addFile` char(1) NOT NULL DEFAULT '',
  `files` blob,
  `template` varchar(32) NOT NULL DEFAULT '',
  `sendText` char(1) NOT NULL DEFAULT '',
  `externalImages` char(1) NOT NULL DEFAULT '',
  `sender` varchar(128) NOT NULL DEFAULT '',
  `senderName` varchar(128) NOT NULL DEFAULT '',
  `sent` char(1) NOT NULL DEFAULT '',
  `date` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter`
--

LOCK TABLES `tl_newsletter` WRITE;
/*!40000 ALTER TABLE `tl_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_channel`
--

DROP TABLE IF EXISTS `tl_newsletter_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `useSMTP` char(1) NOT NULL DEFAULT '',
  `smtpHost` varchar(64) NOT NULL DEFAULT '',
  `smtpUser` varchar(128) NOT NULL DEFAULT '',
  `smtpPass` varchar(32) NOT NULL DEFAULT '',
  `smtpEnc` varchar(3) NOT NULL DEFAULT '',
  `smtpPort` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_channel`
--

LOCK TABLES `tl_newsletter_channel` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_recipients`
--

DROP TABLE IF EXISTS `tl_newsletter_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT '',
  `confirmed` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_recipients`
--

LOCK TABLES `tl_newsletter_recipients` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_page`
--

DROP TABLE IF EXISTS `tl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `redirect` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `dns` varchar(255) NOT NULL DEFAULT '',
  `staticFiles` varchar(255) NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `adminEmail` varchar(255) NOT NULL DEFAULT '',
  `dateFormat` varchar(32) NOT NULL DEFAULT '',
  `timeFormat` varchar(32) NOT NULL DEFAULT '',
  `datimFormat` varchar(32) NOT NULL DEFAULT '',
  `createSitemap` char(1) NOT NULL DEFAULT '',
  `sitemapName` varchar(32) NOT NULL DEFAULT '',
  `useSSL` char(1) NOT NULL DEFAULT '',
  `autoforward` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `includeLayout` char(1) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `mobileLayout` int(10) unsigned NOT NULL DEFAULT '0',
  `includeCache` char(1) NOT NULL DEFAULT '',
  `cache` int(10) unsigned NOT NULL DEFAULT '0',
  `includeChmod` char(1) NOT NULL DEFAULT '',
  `cuser` int(10) unsigned NOT NULL DEFAULT '0',
  `cgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `chmod` varchar(255) NOT NULL DEFAULT '',
  `noSearch` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `sitemap` varchar(32) NOT NULL DEFAULT '',
  `hide` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`),
  KEY `type` (`type`),
  KEY `pid_type_start_stop_published` (`pid`,`type`,`start`,`stop`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_page`
--

LOCK TABLES `tl_page` WRITE;
/*!40000 ALTER TABLE `tl_page` DISABLE KEYS */;
INSERT INTO `tl_page` VALUES (1,0,128,1392995022,'Beurteilen und Foerdern','beurteilen-und-foerdern','root','','de','',NULL,'permanent',0,'','','','','','1','','','','','','','','','',NULL,'1',1,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','','','',0,'','1','',''),(7,1,224,1402674640,'Passwort vergessen?','reset_password','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','1','','map_default','','1',0,'','1','',''),(8,1,352,1402671916,'Passwort zur√ºcksetzen Best√§tigung','reset_password_confirmation','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','1','1',0,'','1','',''),(4,1,96,1393530447,'Beurteilen Und F√∂rdern','buf','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'1',1,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','');
/*!40000 ALTER TABLE `tl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_repository_installs`
--

DROP TABLE IF EXISTS `tl_repository_installs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_repository_installs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL DEFAULT '',
  `version` int(9) NOT NULL DEFAULT '0',
  `build` int(9) NOT NULL DEFAULT '0',
  `alpha` char(1) NOT NULL DEFAULT '',
  `beta` char(1) NOT NULL DEFAULT '',
  `rc` char(1) NOT NULL DEFAULT '',
  `stable` char(1) NOT NULL DEFAULT '1',
  `lickey` varchar(255) NOT NULL DEFAULT '',
  `delprot` char(1) NOT NULL DEFAULT '',
  `updprot` char(1) NOT NULL DEFAULT '',
  `error` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_repository_installs`
--

LOCK TABLES `tl_repository_installs` WRITE;
/*!40000 ALTER TABLE `tl_repository_installs` DISABLE KEYS */;
INSERT INTO `tl_repository_installs` VALUES (6,1421333275,'import_from_csv',10000019,30,'0','0','0','1','','','','');
/*!40000 ALTER TABLE `tl_repository_installs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_repository_instfiles`
--

DROP TABLE IF EXISTS `tl_repository_instfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_repository_instfiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filetype` char(1) NOT NULL DEFAULT 'F',
  `flag` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_repository_instfiles`
--

LOCK TABLES `tl_repository_instfiles` WRITE;
/*!40000 ALTER TABLE `tl_repository_instfiles` DISABLE KEYS */;
INSERT INTO `tl_repository_instfiles` VALUES (270,6,1421333273,'system/modules/import_from_csv/.gitattributes','F',''),(244,6,1393935860,'system/modules/import_from_csv/assets','D',''),(245,6,1393935860,'system/modules/import_from_csv','D',''),(246,6,1421333274,'system/modules/import_from_csv/assets/.htaccess','F',''),(247,6,1421333274,'system/modules/import_from_csv/assets/file-import-icon-16.png','F',''),(248,6,1421333274,'system/modules/import_from_csv/assets/import_from_csv.css','F',''),(249,6,1421333274,'system/modules/import_from_csv/assets/import_from_csv.js','F',''),(250,6,1421333274,'system/modules/import_from_csv/assets/manual.jpg','F',''),(251,6,1421333274,'system/modules/import_from_csv/assets/manual2.jpg','F',''),(252,6,1393935860,'system/modules/import_from_csv/classes','D',''),(253,6,1421333274,'system/modules/import_from_csv/classes/ImportFromCsv.php','F',''),(254,6,1393935860,'system/modules/import_from_csv/config','D',''),(255,6,1421333274,'system/modules/import_from_csv/config/autoload.ini','F',''),(256,6,1421333274,'system/modules/import_from_csv/config/autoload.php','F',''),(257,6,1421333274,'system/modules/import_from_csv/config/config.php','F',''),(258,6,1393935860,'system/modules/import_from_csv/csv','D',''),(259,6,1421333274,'system/modules/import_from_csv/csv/example_csv.csv','F',''),(260,6,1393935860,'system/modules/import_from_csv/dca','D',''),(261,6,1421333274,'system/modules/import_from_csv/dca/tl_import_from_csv.php','F',''),(262,6,1393935860,'system/modules/import_from_csv/languages/de','D',''),(263,6,1393935860,'system/modules/import_from_csv/languages','D',''),(264,6,1421333275,'system/modules/import_from_csv/languages/de/.htaccess','F',''),(265,6,1421333275,'system/modules/import_from_csv/languages/de/modules.php','F',''),(266,6,1421333275,'system/modules/import_from_csv/languages/de/tl_import_from_csv.php','F',''),(267,6,1393935860,'system/modules/import_from_csv/languages/en','D',''),(268,6,1421333275,'system/modules/import_from_csv/languages/en/modules.php','F',''),(269,6,1421333275,'system/modules/import_from_csv/languages/en/tl_import_from_csv.php','F',''),(271,6,1421333273,'system/modules/import_from_csv/.gitignore','F',''),(272,6,1421333274,'system/modules/import_from_csv/README.md','F',''),(273,6,1421333274,'system/modules/import_from_csv/classes/MyValidateImportFromCsvHook.php','F',''),(274,6,1421333274,'system/modules/import_from_csv/composer.json','F',''),(275,6,1421333275,'system/modules/import_from_csv/models','D',''),(276,6,1421333275,'system/modules/import_from_csv/models/ImportFromCsvModel.php','F','');
/*!40000 ALTER TABLE `tl_repository_instfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search`
--

DROP TABLE IF EXISTS `tl_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext,
  `filesize` double unsigned NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `language` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `url` (`url`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search`
--

LOCK TABLES `tl_search` WRITE;
/*!40000 ALTER TABLE `tl_search` DISABLE KEYS */;
INSERT INTO `tl_search` VALUES (1,4,1437994002,'Beurteilen Und F√∂rdern','buf/do/login.html','Beurteilen Und F√∂rdern Angemeldet als: Name Schule: ISS Schule Ettiswil Anmelden Hauptmen√º Benutzername Passwort Passwort vergessen? ¬© Marko Cupic, Oberkirch anmelden, , Passwort vergessen?, Validated by HTML Validator (based on Tidy)',3.69,'224f6497e181ce3a7c7edfeeb5efde81','','0','de');
/*!40000 ALTER TABLE `tl_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search_index`
--

DROP TABLE IF EXISTS `tl_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_search_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `word` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `word` (`word`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search_index`
--

LOCK TABLES `tl_search_index` WRITE;
/*!40000 ALTER TABLE `tl_search_index` DISABLE KEYS */;
INSERT INTO `tl_search_index` VALUES (1,1,'beurteilen',1,'de'),(2,1,'und',1,'de'),(3,1,'f√∂rdern',1,'de'),(4,1,'angemeldet',1,'de'),(5,1,'als',1,'de'),(6,1,'name',1,'de'),(7,1,'schule',2,'de'),(8,1,'iss',1,'de'),(9,1,'ettiswil',1,'de'),(10,1,'anmelden',2,'de'),(11,1,'hauptmen√º',1,'de'),(12,1,'benutzername',1,'de'),(13,1,'passwort',3,'de'),(14,1,'vergessen',2,'de'),(15,1,'marko',1,'de'),(16,1,'cupic',1,'de'),(17,1,'oberkirch',1,'de'),(18,1,'validated',1,'de'),(19,1,'by',1,'de'),(20,1,'html',1,'de'),(21,1,'validator',1,'de'),(22,1,'based',1,'de'),(23,1,'on',1,'de'),(24,1,'tidy',1,'de');
/*!40000 ALTER TABLE `tl_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_session`
--

DROP TABLE IF EXISTS `tl_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `sessionID` varchar(128) NOT NULL DEFAULT '',
  `hash` varchar(40) DEFAULT NULL,
  `ip` varchar(64) NOT NULL DEFAULT '',
  `su` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=634 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_session`
--

LOCK TABLES `tl_session` WRITE;
/*!40000 ALTER TABLE `tl_session` DISABLE KEYS */;
INSERT INTO `tl_session` VALUES (633,3,1438157910,'FE_USER_AUTH','5b4089a6083d2405d83a337cba556b43','75c8d038536c975d56a1ef9aecccf808d0ebd0da','188.60.76.204',''),(632,1,1438157910,'BE_USER_AUTH','5b4089a6083d2405d83a337cba556b43','e5842c4f677787ea1de5e0a33a458c7d83689cfe','188.60.76.204','');
/*!40000 ALTER TABLE `tl_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_student`
--

DROP TABLE IF EXISTS `tl_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gender` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `class` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_student`
--

LOCK TABLES `tl_student` WRITE;
/*!40000 ALTER TABLE `tl_student` DISABLE KEYS */;
INSERT INTO `tl_student` VALUES (1,1393111129,'female','Str√§ssle','Sina',3),(2,1393154405,'male','Duss','Jannick',3),(3,1393154424,'female','Heller','Ramona',3),(4,1393108135,'female','Meier','Jasmin',3),(21,1421332422,'male','H√§fliger','S√§mi',3),(22,1393111048,'male','L√ºthi','Pascal',3),(23,1393111048,'female','Ramseier','Fabienne',3),(24,1395949163,'female','Villiger','Johanna',3),(25,1393111048,'female','Ramseier','Olivia',3),(26,1393111048,'female','Stirnimann','Celina',3),(27,1393776168,'female','Anliker','C√©line',3),(28,1393111048,'female','Kunz','Sarina',3),(29,1393111048,'male','M√ºller','Tobias',3),(30,1395949159,'female','Wermelinger','Anja',3),(201,1437994444,'female','Metz','Vanessa',11),(200,1437994444,'female','Holzmann','Delia',11),(199,1437994444,'female','Greppmeier','Sarah Yasmin',11),(198,1437994444,'female','B√§ttig ','Nadine',11),(197,1437994444,'male','Wetterwald','Dario',11),(196,1437994444,'male','Sommer','Silvan',11),(195,1437994444,'male','Schwegler','Gabriel',11),(194,1437994444,'male','Retzlik','Leander Peter',11),(193,1437994444,'male','Korner','Mattis',11),(192,1437994444,'male','Gjoka','Agron',11),(191,1437994444,'male','Emmenegger','Corvin',11),(190,1437994444,'male','Egger','Philipp',11),(47,1393941961,'male','B√§ttig','Timo',10),(48,1393941961,'male','Beck','Kay',10),(49,1393941961,'male','Goller','Tobias',10),(50,1393941961,'male','Helfenstein','Severin',10),(51,1393941961,'male','Heller','Simon',10),(52,1393941961,'male','Schraner','Roman',10),(53,1393941961,'male','Schwyzer','Samuel',10),(54,1393941961,'female','Bisang','Aline',10),(55,1393941961,'female','Chandrakumar','Vaneka',10),(56,1393941961,'female','Felber','Anja',10),(57,1393941961,'female','H√§fliger','Samira',10),(58,1393941961,'female','Hodel','Sabrina',10),(59,1393941961,'female','St√∂ckli','Victoria',10),(60,1393941961,'female','Stojmirovic','Sara',10),(61,1393941961,'female','Wiederkehr','Romina',10),(62,1393941961,'female','Zeqiri','Aurela',10),(171,1417006388,'male','Amb√ºhl','Pirmin',41),(170,1415872970,'male','Dembrinski','Bruno',40),(169,1415872970,'female','Str√§ssle','Lea',40),(168,1415872970,'male','Wieland ','Michael',40),(167,1415872970,'male','Wespi ','Elias',40),(166,1421677401,'female','Schwyzer','Vivienne',40),(165,1415872970,'male','Scheiber ','Julian',40),(164,1434375789,'female','Roth','Cindy',40),(163,1415872970,'male','Peter ','Jo√´l',40),(162,1415872970,'male','Gehrig ','Cyrill',40),(161,1415872970,'male','Christen ','Thierry',40),(160,1415872970,'male','Bucher ','Sven',40),(159,1415872970,'male','Birrer ','Silvan',40),(158,1415872970,'male','B√§ttig ','Livio',40),(157,1415872970,'female','Arnold ','Vanessa',40),(83,1393941961,'male','Arnet','Simon',9),(84,1393941961,'male','Kurmann','Marsel',9),(85,1395999916,'male','Luternauer','Noel',9),(86,1393941961,'male','Nussbaumer','Michael',9),(87,1393941961,'male','Verovic','Luca',9),(88,1393941961,'male','Widmer','Roland',9),(89,1393941961,'female','Blum','Sarah',9),(90,1393941961,'female','Dahinden','Larissa',9),(91,1393941961,'female','Ferkovic','Klaudia',9),(92,1393941961,'female','Ferkovic','Marijana',9),(93,1393941961,'female','L√ºtolf','Jacqueline',9),(94,1393941961,'female','Marbacher','Lorena',9),(95,1393941961,'female','Meile','Alia',9),(96,1393941961,'female','Schmid','Patrizia',9),(97,1395999928,'female','Vonwyl','Laura',9),(98,1393941961,'female','Wieland','Deborah',9),(185,1418810486,'female','Fehr','Celine',9),(184,1417006388,'female','Z√†s','Jasmin',41),(183,1417006388,'female','M√ºller','Lena',41),(182,1417006388,'female','Kurmann','Nicole',41),(181,1417006388,'female','Heller','Lena',41),(180,1417006388,'male','Shala','Kristjan',41),(179,1417006388,'male','M√ºller','David',41),(178,1417006388,'male','Meier','Sven',41),(177,1417006388,'male','Lustenberger','Luca',41),(176,1417006388,'male','Kohler','Pablo',41),(175,1417006388,'male','Hodel','Sven',41),(174,1417006388,'male','Galliker','Nils',41),(173,1417006388,'male','Egli ','Ivan',41),(172,1417006388,'male','Duss','Pascal',41),(189,1434374092,'female','Sigrist','Michelle',9),(202,1437994444,'female','Steinmann','Carol',11),(203,1437994444,'female','Ziswiler','Sira',11);
/*!40000 ALTER TABLE `tl_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_style`
--

DROP TABLE IF EXISTS `tl_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_style` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `selector` varchar(1022) NOT NULL DEFAULT '',
  `category` varchar(32) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `size` char(1) NOT NULL DEFAULT '',
  `width` varchar(64) NOT NULL DEFAULT '',
  `height` varchar(64) NOT NULL DEFAULT '',
  `minwidth` varchar(64) NOT NULL DEFAULT '',
  `minheight` varchar(64) NOT NULL DEFAULT '',
  `maxwidth` varchar(64) NOT NULL DEFAULT '',
  `maxheight` varchar(64) NOT NULL DEFAULT '',
  `positioning` char(1) NOT NULL DEFAULT '',
  `trbl` varchar(128) NOT NULL DEFAULT '',
  `position` varchar(32) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `clear` varchar(32) NOT NULL DEFAULT '',
  `overflow` varchar(32) NOT NULL DEFAULT '',
  `display` varchar(32) NOT NULL DEFAULT '',
  `alignment` char(1) NOT NULL DEFAULT '',
  `margin` varchar(128) NOT NULL DEFAULT '',
  `padding` varchar(128) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  `verticalalign` varchar(32) NOT NULL DEFAULT '',
  `textalign` varchar(32) NOT NULL DEFAULT '',
  `whitespace` varchar(8) NOT NULL DEFAULT '',
  `background` char(1) NOT NULL DEFAULT '',
  `bgcolor` varchar(64) NOT NULL DEFAULT '',
  `bgimage` varchar(255) NOT NULL DEFAULT '',
  `bgposition` varchar(32) NOT NULL DEFAULT '',
  `bgrepeat` varchar(32) NOT NULL DEFAULT '',
  `shadowsize` varchar(128) NOT NULL DEFAULT '',
  `shadowcolor` varchar(64) NOT NULL DEFAULT '',
  `gradientAngle` varchar(32) NOT NULL DEFAULT '',
  `gradientColors` varchar(128) NOT NULL DEFAULT '',
  `border` char(1) NOT NULL DEFAULT '',
  `borderwidth` varchar(128) NOT NULL DEFAULT '',
  `borderstyle` varchar(32) NOT NULL DEFAULT '',
  `bordercolor` varchar(64) NOT NULL DEFAULT '',
  `borderradius` varchar(128) NOT NULL DEFAULT '',
  `bordercollapse` varchar(32) NOT NULL DEFAULT '',
  `borderspacing` varchar(64) NOT NULL DEFAULT '',
  `font` char(1) NOT NULL DEFAULT '',
  `fontfamily` varchar(255) NOT NULL DEFAULT '',
  `fontsize` varchar(64) NOT NULL DEFAULT '',
  `fontcolor` varchar(64) NOT NULL DEFAULT '',
  `lineheight` varchar(64) NOT NULL DEFAULT '',
  `fontstyle` varchar(255) NOT NULL DEFAULT '',
  `texttransform` varchar(32) NOT NULL DEFAULT '',
  `textindent` varchar(64) NOT NULL DEFAULT '',
  `letterspacing` varchar(64) NOT NULL DEFAULT '',
  `wordspacing` varchar(64) NOT NULL DEFAULT '',
  `list` char(1) NOT NULL DEFAULT '',
  `liststyletype` varchar(32) NOT NULL DEFAULT '',
  `liststyleimage` varchar(255) NOT NULL DEFAULT '',
  `own` text,
  `invisible` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_style`
--

LOCK TABLES `tl_style` WRITE;
/*!40000 ALTER TABLE `tl_style` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_style_sheet`
--

DROP TABLE IF EXISTS `tl_style_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_style_sheet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `disablePie` char(1) NOT NULL DEFAULT '',
  `embedImages` int(10) unsigned NOT NULL DEFAULT '0',
  `cc` varchar(32) NOT NULL DEFAULT '',
  `media` varchar(255) NOT NULL DEFAULT '',
  `mediaQuery` text,
  `vars` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_style_sheet`
--

LOCK TABLES `tl_style_sheet` WRITE;
/*!40000 ALTER TABLE `tl_style_sheet` DISABLE KEYS */;
INSERT INTO `tl_style_sheet` VALUES (1,1,1390732586,'Background_Replacement','',0,'','a:1:{i:0;s:3:\"all\";}','','a:0:{}');
/*!40000 ALTER TABLE `tl_style_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_subject`
--

DROP TABLE IF EXISTS `tl_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_subject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `acronym` (`acronym`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_subject`
--

LOCK TABLES `tl_subject` WRITE;
/*!40000 ALTER TABLE `tl_subject` DISABLE KEYS */;
INSERT INTO `tl_subject` VALUES (2,1390772956,'Sport M√§dchen','Tm'),(3,1390772980,'Mathematik','Mt'),(4,1390772993,'Deutsch','De'),(5,1390773002,'Franz√∂sisch','Fr'),(8,1393196329,'Sport Knaben','Tk'),(9,1393196347,'Lebenskunde','Lk'),(10,1393196375,'Technisches Gestalten &#40;Werken&#41;','TgW'),(11,1393196391,'Technisches Gestalten &#40;Handarbeit&#41;','TgH'),(12,1393196402,'Hauswirtschaft','Hw'),(13,1393196413,'Religionsunterricht','Rk'),(14,1393196425,'Projektunterricht','Pu'),(15,1393196438,'Mathematik Wahlfach','Mt W'),(16,1393196456,'Technisches Zeichnen','Tz'),(17,1393196466,'Musik','Mu'),(19,1393196499,'Naturlehre','Na'),(20,1393196506,'Geschichte','Gs'),(21,1393196517,'Tastaturschreiben','Ts'),(23,1393197227,'Geografie','Gg'),(24,1393884093,'Integrative F√∂rderung','If'),(25,1393884025,'Klassenlehrer-F√§cher','KLF'),(26,1393884080,'Bildnerisches Gestalten','Bg'),(28,1399908877,'Informatik','Info'),(29,1402414319,'Englisch','En');
/*!40000 ALTER TABLE `tl_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_theme`
--

DROP TABLE IF EXISTS `tl_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `folders` blob,
  `screenshot` binary(16) DEFAULT NULL,
  `templates` varchar(255) NOT NULL DEFAULT '',
  `vars` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_theme`
--

LOCK TABLES `tl_theme` WRITE;
/*!40000 ALTER TABLE `tl_theme` DISABLE KEYS */;
INSERT INTO `tl_theme` VALUES (1,1390734419,'Beurteilen und Foerdern','Marko Cupic','a:1:{i:0;s:16:\"Èˆ∂Üu„îÈ\0%ê	W»\";}',NULL,'','a:0:{}');
/*!40000 ALTER TABLE `tl_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_undo`
--

DROP TABLE IF EXISTS `tl_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_undo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `query` text,
  `affectedRows` smallint(5) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_undo`
--

LOCK TABLES `tl_undo` WRITE;
/*!40000 ALTER TABLE `tl_undo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_user`
--

DROP TABLE IF EXISTS `tl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `backendTheme` varchar(32) NOT NULL DEFAULT '',
  `uploader` varchar(32) NOT NULL DEFAULT '',
  `showHelp` char(1) NOT NULL DEFAULT '',
  `thumbnails` char(1) NOT NULL DEFAULT '',
  `useRTE` char(1) NOT NULL DEFAULT '',
  `useCE` char(1) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `pwChange` char(1) NOT NULL DEFAULT '',
  `admin` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `inherit` varchar(12) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `session` blob,
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_user`
--

LOCK TABLES `tl_user` WRITE;
/*!40000 ALTER TABLE `tl_user` DISABLE KEYS */;
INSERT INTO `tl_user` VALUES (1,1407590603,'administrator','Marko Cupic','m.cupic@gmx.ch','de','flexible','DropZone','1','1','1','1','$6$dcc599b3ac93f23d$TNTKMpxD9kBJWhGH2Exr4biw7xLUC2gAkJzMkEs0RKNklBHsZqWHu2ZsMj8DoFQJajDf2GnBHgqqUGO8qVOYt1','','1',NULL,'',NULL,NULL,'a:0:{}',NULL,'a:0:{}',NULL,NULL,NULL,'','','','a:25:{s:7:\"referer\";a:25:{s:8:\"8f512853\";a:3:{s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:4:\"last\";s:43:\"contao/main.php?do=maintenance&ref=4cde2d13\";s:7:\"current\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";}s:8:\"27b99fc7\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:80:\"contao/main.php?do=themes&bic=1&rt=d928096aeee89be6713f3446a76de192&ref=8f512853\";}s:8:\"06c9f88b\";a:3:{s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:4:\"last\";s:43:\"contao/main.php?do=maintenance&ref=4cde2d13\";s:7:\"current\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";}s:8:\"1ddb16a7\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"299bf95c\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"3cb6dd11\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"48d8ca64\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"b555aef1\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"89ca4365\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"9040a331\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"8f42d789\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"1e545604\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"ad35e346\";a:3:{s:4:\"last\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";}s:8:\"749e2b97\";a:3:{s:4:\"last\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=ad35e346\";}s:8:\"b9c50d94\";a:3:{s:4:\"last\";s:37:\"contao/main.php?do=class&ref=06c9f88b\";s:8:\"tl_theme\";s:38:\"contao/main.php?do=themes&ref=9e138ed3\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=ad35e346\";}s:8:\"d366af50\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"8d76ddb2\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:71:\"contao/main.php?&smo=1&rt=9606fa098771eb9ce818356973fed37c&ref=d366af50\";}s:8:\"b52691f3\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"20aea5dc\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:71:\"contao/main.php?&mmo=1&rt=9606fa098771eb9ce818356973fed37c&ref=b52691f3\";}s:8:\"8d7ecd1a\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}i:0;a:1:{s:4:\"last\";s:0:\"\";}i:1;a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:71:\"contao/main.php?&bic=1&rt=9606fa098771eb9ce818356973fed37c&ref=8d7ecd1a\";}s:8:\"23d7506d\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}i:2;a:1:{s:4:\"last\";s:0:\"\";}i:89978042;a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:39:\"contao/main.php?do=subject&ref=23d7506d\";}}s:22:\"style_sheet_update_all\";N;s:7:\"CURRENT\";a:3:{s:3:\"IDS\";a:23:{i:0;s:2:\"16\";i:1;s:2:\"10\";i:2;s:2:\"11\";i:3;s:2:\"21\";i:4;s:1:\"2\";i:5;s:1:\"8\";i:6;s:2:\"13\";i:7;s:2:\"14\";i:8;s:2:\"19\";i:9;s:2:\"17\";i:10;s:2:\"15\";i:11;s:1:\"3\";i:12;s:1:\"9\";i:13;s:2:\"25\";i:14;s:2:\"24\";i:15;s:2:\"28\";i:16;s:2:\"12\";i:17;s:2:\"20\";i:18;s:2:\"23\";i:19;s:1:\"5\";i:20;s:2:\"29\";i:21;s:1:\"4\";i:22;s:2:\"26\";}s:7:\"tl_page\";a:1:{i:0;s:6:\"layout\";}s:9:\"tl_member\";a:1:{i:0;s:9:\"isTeacher\";}}s:9:\"CLIPBOARD\";a:16:{s:8:\"tl_theme\";a:0:{}s:9:\"tl_layout\";a:0:{}s:9:\"tl_module\";a:0:{}s:7:\"tl_page\";a:0:{}s:14:\"tl_style_sheet\";a:0:{}s:8:\"tl_files\";a:0:{}s:10:\"tl_content\";a:0:{}s:8:\"tl_class\";a:0:{}s:10:\"tl_student\";a:0:{}s:9:\"tl_member\";a:0:{}s:9:\"tl_voting\";a:0:{}s:10:\"tl_subject\";a:0:{}s:7:\"tl_form\";a:0:{}s:10:\"tl_article\";a:0:{}s:18:\"tl_import_from_csv\";a:0:{}s:7:\"tl_user\";a:0:{}}s:11:\"new_records\";a:15:{s:8:\"tl_theme\";a:1:{i:0;i:1;}s:9:\"tl_layout\";a:1:{i:0;i:1;}s:9:\"tl_module\";a:6:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;}s:7:\"tl_page\";a:6:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;}s:14:\"tl_style_sheet\";a:1:{i:0;i:1;}s:10:\"tl_content\";a:18:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:8;i:6;i:9;i:7;i:10;i:8;i:11;i:9;i:12;i:10;i:13;i:11;i:14;i:12;i:15;i:13;i:16;i:14;i:17;i:15;i:24;i:16;i:27;i:17;i:28;}s:8:\"tl_class\";a:34:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;i:27;i:28;i:28;i:29;i:29;i:30;i:30;i:31;i:31;i:32;i:32;i:33;i:33;i:37;}s:10:\"tl_student\";a:40:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:33;i:8;i:34;i:9;i:114;i:10;i:115;i:11;i:116;i:12;i:122;i:13;i:123;i:14;i:124;i:15;i:125;i:16;i:126;i:17;i:127;i:18;i:133;i:19;i:134;i:20;i:135;i:21;i:136;i:22;i:137;i:23;i:138;i:24;i:139;i:25;i:140;i:26;i:141;i:27;i:142;i:28;i:143;i:29;i:144;i:30;i:145;i:31;i:146;i:32;i:147;i:33;i:148;i:34;i:149;i:35;i:150;i:36;i:151;i:37;i:152;i:38;i:153;i:39;i:154;}s:9:\"tl_member\";a:29:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;i:27;i:29;i:28;i:30;}s:9:\"tl_voting\";a:44:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:78178;i:4;i:78179;i:5;i:78180;i:6;i:78181;i:7;i:78182;i:8;i:78183;i:9;i:78184;i:10;i:78185;i:11;i:78186;i:12;i:78187;i:13;i:78188;i:14;i:78189;i:15;i:87159;i:16;i:87160;i:17;i:87161;i:18;i:87162;i:19;i:87163;i:20;i:87164;i:21;i:87165;i:22;i:87166;i:23;i:87167;i:24;i:87171;i:25;i:87172;i:26;i:87173;i:27;i:87174;i:28;i:87175;i:29;i:87176;i:30;i:87177;i:31;i:87178;i:32;i:87179;i:33;i:87180;i:34;i:87181;i:35;i:87182;i:36;i:87183;i:37;i:87184;i:38;i:87185;i:39;i:87186;i:40;i:87187;i:41;i:87188;i:42;i:87189;i:43;i:87191;}s:10:\"tl_subject\";a:27:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:6;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;}s:7:\"tl_form\";a:1:{i:0;i:1;}s:10:\"tl_article\";a:2:{i:0;i:4;i:1;i:7;}s:18:\"tl_import_from_csv\";a:1:{i:0;i:1;}s:7:\"tl_user\";a:2:{i:0;i:2;i:1;i:3;}}s:13:\"filePickerRef\";s:112:\"contao/page.php?do=themes&table=tl_module&field=jumpTo&act=show&id=7&value=4&rt=0364239fdc2001c968241475ae6bb03f\";s:10:\"CURRENT_ID\";s:1:\"8\";s:12:\"tl_page_tree\";a:8:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;}s:15:\"fieldset_states\";a:7:{s:7:\"tl_page\";a:5:{s:13:\"layout_legend\";i:1;s:16:\"protected_legend\";i:1;s:12:\"chmod_legend\";i:1;s:13:\"expert_legend\";i:1;s:13:\"tabnav_legend\";i:1;}s:9:\"tl_module\";a:3:{s:13:\"expert_legend\";i:1;s:15:\"template_legend\";i:1;s:12:\"email_legend\";i:1;}s:10:\"tl_content\";a:4:{s:13:\"expert_legend\";i:1;s:16:\"colheight_legend\";i:1;s:16:\"protected_legend\";i:1;s:16:\"invisible_legend\";i:1;}s:11:\"tl_settings\";a:7:{s:14:\"backend_legend\";i:1;s:17:\"repository_legend\";i:1;s:13:\"global_legend\";i:1;s:15:\"security_legend\";i:1;s:14:\"uploads_legend\";i:1;s:12:\"files_legend\";i:1;s:30:\"beurteilen_und_foerdern_legend\";i:1;}s:9:\"tl_member\";a:2:{s:14:\"account_legend\";i:0;s:12:\"login_legend\";i:1;}s:10:\"tl_article\";a:4:{s:14:\"publish_legend\";i:0;s:18:\"syndication_legend\";i:0;s:16:\"protected_legend\";i:1;s:13:\"expert_legend\";i:1;}s:9:\"tl_layout\";a:1:{s:13:\"expert_legend\";i:1;}}s:19:\"style_sheet_updater\";N;s:27:\"repository_catalog_settings\";a:8:{s:14:\"repository_tag\";s:0:\"\";s:15:\"repository_type\";s:0:\"\";s:19:\"repository_category\";s:0:\"\";s:16:\"repository_state\";s:0:\"\";s:17:\"repository_author\";s:0:\"\";s:16:\"repository_order\";s:7:\"popular\";s:15:\"repository_page\";s:1:\"0\";s:15:\"repository_find\";s:6:\"ptable\";}s:23:\"tree_tl_layout_external\";a:2:{s:32:\"39f4030dcb9136b054d571c7f217eae3\";i:1;s:32:\"1a0c4c4b105a110153b251e9418c21cb\";i:1;}s:12:\"tl_page_node\";s:1:\"0\";s:26:\"tl_article_tl_article_tree\";a:7:{i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:7;i:0;i:8;i:0;i:9;i:0;}s:21:\"tree_tl_module_jumpTo\";a:1:{i:1;i:1;}s:25:\"tree_tl_content_singleSRC\";a:2:{s:32:\"39f4030dcb9136b054d571c7f217eae3\";i:1;s:32:\"71e0446c1e980a135459458821cd471e\";i:1;}s:17:\"INVALID_TOKEN_URL\";s:84:\"contao/main.php?do=class&act=create&rt=e56c12710e6cceb169a4d3f7d5d15dca&ref=2d33d18b\";s:23:\"tl_article_tl_page_tree\";a:1:{i:1;i:1;}s:7:\"sorting\";a:3:{s:9:\"tl_voting\";s:6:\"tstamp\";s:9:\"tl_member\";s:8:\"username\";s:10:\"tl_student\";s:8:\"lastname\";}s:6:\"search\";a:3:{s:9:\"tl_voting\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:6:\"tstamp\";}s:9:\"tl_member\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:8:\"username\";}s:10:\"tl_student\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:5:\"class\";}}s:6:\"filter\";a:3:{s:9:\"tl_voting\";a:1:{s:5:\"limit\";s:3:\"all\";}s:9:\"tl_member\";a:1:{s:5:\"limit\";s:3:\"all\";}s:10:\"tl_student\";a:1:{s:5:\"limit\";s:3:\"all\";}}s:24:\"tree_tl_content_multiSRC\";a:1:{s:32:\"9dc192b8e301f4bdee945bf5ad44ede9\";i:1;}s:15:\"backend_modules\";a:2:{s:6:\"system\";i:1;s:3:\"buf\";i:1;}s:13:\"tl_files_node\";s:20:\"files/mycontaobackup\";s:8:\"filetree\";a:1:{s:8:\"cc735f0e\";i:1;}}',1390731602,1436992758,1438157835,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1407590603,'markocupic','Marko Cupic','marko.cupic@ettiswil.educanet2.ch','de','flexible','DropZone','1','1','1','1','$6$ae5a57ac5c438718$St2ngKSAzYMtSfe6M4A7qY2gYy/RpZk.BzzraBd1dj/JNMl9ALO30zviIbXOXnBb1i59eiisoi6XKD1.KaEjQ0','','1',NULL,'group','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','','','','a:16:{s:7:\"referer\";a:24:{s:8:\"4aa4248b\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"4ad1b1b6\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=4aa4248b\";}s:8:\"91bd146b\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=4aa4248b\";}i:0;a:1:{s:4:\"last\";s:0:\"\";}i:1;a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"9f4b9937\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=43590677\";}s:8:\"e403b1b2\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=43590677\";}s:8:\"2453e06e\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"f095f372\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=2453e06e\";}i:2;a:1:{s:4:\"last\";s:0:\"\";}i:3;a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=2453e06e\";}s:8:\"a7062e0d\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"aba7486d\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:50:\"contao/main.php?do=repository_manager&ref=a7062e0d\";}s:8:\"5733cddf\";a:2:{s:4:\"last\";s:50:\"contao/main.php?do=repository_manager&ref=a7062e0d\";s:7:\"current\";s:35:\"contao/main.php?do=log&ref=aba7486d\";}s:8:\"97f4a022\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"4f65f982\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:40:\"contao/main.php?do=settings&ref=97f4a022\";}s:8:\"c06af0a4\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:40:\"contao/main.php?do=settings&ref=97f4a022\";}s:8:\"f1c7f520\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:40:\"contao/main.php?do=settings&ref=97f4a022\";}s:8:\"8dbaec86\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:40:\"contao/main.php?do=settings&ref=97f4a022\";}s:8:\"aac86d03\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:40:\"contao/main.php?do=settings&ref=97f4a022\";}s:8:\"f4fe8327\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"51f52b42\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:36:\"contao/main.php?do=user&ref=f4fe8327\";}s:8:\"8e4d6fc5\";a:2:{s:4:\"last\";s:36:\"contao/main.php?do=user&ref=f4fe8327\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=51f52b42\";}s:8:\"cffaeeee\";a:2:{s:4:\"last\";s:36:\"contao/main.php?do=user&ref=f4fe8327\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=51f52b42\";}}s:7:\"CURRENT\";a:4:{s:3:\"IDS\";a:21:{i:0;s:2:\"33\";i:1;s:2:\"29\";i:2;s:2:\"25\";i:3;s:2:\"22\";i:4;s:2:\"21\";i:5;s:2:\"20\";i:6;s:2:\"19\";i:7;s:2:\"18\";i:8;s:2:\"17\";i:9;s:2:\"15\";i:10;s:2:\"14\";i:11;s:2:\"13\";i:12;s:2:\"12\";i:13;s:2:\"10\";i:14;s:1:\"8\";i:15;s:1:\"6\";i:16;s:1:\"5\";i:17;s:1:\"4\";i:18;s:1:\"3\";i:19;s:1:\"2\";i:20;s:1:\"1\";}s:7:\"tl_user\";a:2:{i:0;s:12:\"backendTheme\";i:1;s:8:\"uploader\";}s:8:\"tl_class\";a:1:{i:0;s:4:\"name\";}s:9:\"tl_member\";a:1:{i:0;s:8:\"username\";}}s:9:\"CLIPBOARD\";a:6:{s:10:\"tl_subject\";a:0:{}s:9:\"tl_member\";a:0:{}s:9:\"tl_module\";a:0:{}s:7:\"tl_page\";a:0:{}s:10:\"tl_content\";a:0:{}s:8:\"tl_class\";a:0:{}}s:11:\"new_records\";a:6:{s:10:\"tl_subject\";a:2:{i:0;i:28;i:1;i:29;}s:9:\"tl_member\";a:4:{i:0;i:28;i:1;i:31;i:2;i:32;i:3;i:33;}s:9:\"tl_module\";a:1:{i:0;i:7;}s:7:\"tl_page\";a:2:{i:0;i:7;i:1;i:8;}s:10:\"tl_content\";a:2:{i:0;i:25;i:1;i:26;}s:8:\"tl_class\";a:2:{i:0;i:40;i:1;i:41;}}s:22:\"style_sheet_update_all\";N;s:10:\"CURRENT_ID\";s:1:\"1\";s:7:\"sorting\";a:2:{s:9:\"tl_member\";s:14:\"dateAdded DESC\";s:9:\"tl_voting\";s:7:\"teacher\";}s:6:\"search\";a:2:{s:9:\"tl_member\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:8:\"username\";}s:9:\"tl_voting\";a:2:{s:5:\"value\";s:2:\"19\";s:5:\"field\";s:7:\"teacher\";}}s:6:\"filter\";a:3:{s:9:\"tl_member\";a:1:{s:5:\"limit\";s:3:\"all\";}s:9:\"tl_voting\";a:1:{s:5:\"limit\";s:5:\"0,500\";}s:6:\"tl_log\";a:1:{s:5:\"limit\";s:6:\"120,30\";}}s:17:\"INVALID_TOKEN_URL\";s:88:\"contao/main.php?do=member&act=edit&id=3&rt=0ec984103ba02538bc5f7091f768fb7f&ref=0daeb715\";s:15:\"fieldset_states\";a:2:{s:9:\"tl_module\";a:1:{s:12:\"email_legend\";i:1;}s:7:\"tl_page\";a:2:{s:13:\"expert_legend\";i:1;s:14:\"publish_legend\";i:0;}}s:13:\"filePickerRef\";s:111:\"contao/page.php?do=themes&table=tl_module&field=jumpTo&act=show&id=7&value=&rt=d5df2ec3e2d414cc7f59d9104abc5e1a\";s:21:\"tree_tl_module_jumpTo\";a:1:{i:1;i:1;}s:12:\"tl_page_tree\";a:4:{i:1;i:1;i:4;i:0;i:7;i:0;i:8;i:0;}s:12:\"tl_page_node\";s:1:\"0\";s:26:\"tl_article_tl_article_tree\";a:1:{i:8;i:0;}}',1398591724,1434613376,1434989750,3,0,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}');
/*!40000 ALTER TABLE `tl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_user_group`
--

DROP TABLE IF EXISTS `tl_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `alexf` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_user_group`
--

LOCK TABLES `tl_user_group` WRITE;
/*!40000 ALTER TABLE `tl_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_version`
--

DROP TABLE IF EXISTS `tl_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `version` smallint(5) unsigned NOT NULL DEFAULT '1',
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editUrl` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `data` mediumblob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `fromTable` (`fromTable`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_version`
--

LOCK TABLES `tl_version` WRITE;
/*!40000 ALTER TABLE `tl_version` DISABLE KEYS */;
INSERT INTO `tl_version` VALUES (14,3,1436992901,1,'tl_class',1,'administrator','ISS 7.2sss','contao/main.php?do=class&act=edit&id=3&rt=d928096aeee89be6713f3446a76de192&ref=8f42d789','','a:3:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:10:\"ISS 7.2sss\";s:6:\"tstamp\";s:10:\"1436992901\";}'),(15,3,1436992949,2,'tl_class',1,'administrator','ISS 7.2','contao/main.php?do=class&act=edit&id=3&rt=d928096aeee89be6713f3446a76de192&ref=8f42d789','1','a:3:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:7:\"ISS 7.2\";s:6:\"tstamp\";s:10:\"1436992901\";}'),(16,11,1436992891,1,'tl_class',1,'administrator','ISS 7.1s','contao/main.php?do=class&act=edit&id=11&rt=d928096aeee89be6713f3446a76de192&ref=1e545604','','a:3:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:8:\"ISS 7.1s\";s:6:\"tstamp\";s:10:\"1436992891\";}'),(17,11,1436992955,2,'tl_class',1,'administrator','ISS 7.1','contao/main.php?do=class&act=edit&id=11&rt=d928096aeee89be6713f3446a76de192&ref=1e545604','1','a:3:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:7:\"ISS 7.1\";s:6:\"tstamp\";s:10:\"1436992891\";}'),(18,3,1421353849,1,'tl_member',1,'administrator','Marko Cupic','contao/main.php?do=member&act=edit&id=3&rt=d928096aeee89be6713f3446a76de192&ref=749e2b97','1','a:41:{s:2:\"id\";s:1:\"3\";s:6:\"tstamp\";s:10:\"1421353849\";s:9:\"firstname\";s:5:\"Marko\";s:8:\"lastname\";s:5:\"Cupic\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:4:\"male\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:33:\"marko.cupic@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:10:\"markocupic\";s:8:\"password\";s:60:\"$2y$10$e5f6da1d218bb44d67cc9uxW0YSr/YZBaHA34ykFxZI8mo5nPse7O\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755178\";s:9:\"lastLogin\";s:10:\"1434975227\";s:12:\"currentLogin\";s:10:\"1435588389\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:10:\"1393143729\";s:7:\"session\";s:249:\"a:2:{s:7:\"referer\";a:2:{s:4:\"last\";s:28:\"?isAjax=true&act=tally_sheet\";s:7:\"current\";s:29:\"buf/do/print_tally_sheet.html\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:13;s:3:\"key\";s:33:\"c29ad0b6f0ebdef77e8d74876f05906cb\";s:4:\"time\";i:1402652917;}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:1:\"3\";s:9:\"deviation\";s:3:\"1.1\";s:14:\"isClassTeacher\";s:1:\"1\";}');
/*!40000 ALTER TABLE `tl_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_voting`
--

DROP TABLE IF EXISTS `tl_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_voting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `student` int(10) unsigned NOT NULL DEFAULT '0',
  `teacher` int(10) unsigned NOT NULL DEFAULT '0',
  `skill1` varchar(1) NOT NULL DEFAULT '0',
  `skill2` varchar(1) NOT NULL DEFAULT '0',
  `skill3` varchar(1) NOT NULL DEFAULT '0',
  `skill4` varchar(1) NOT NULL DEFAULT '0',
  `skill5` varchar(1) NOT NULL DEFAULT '0',
  `skill6` varchar(1) NOT NULL DEFAULT '0',
  `skill7` varchar(1) NOT NULL DEFAULT '0',
  `skill8` varchar(1) NOT NULL DEFAULT '0',
  `subject` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `teacher` (`teacher`),
  KEY `student` (`student`),
  KEY `subject` (`subject`)
) ENGINE=MyISAM AUTO_INCREMENT=88764 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_voting`
--

LOCK TABLES `tl_voting` WRITE;
/*!40000 ALTER TABLE `tl_voting` DISABLE KEYS */;
INSERT INTO `tl_voting` VALUES (87238,1433409277,83,22,'2','2','0','0','0','0','1','1',10),(87212,1399807298,27,3,'3','2','3','3','3','3','2','2',3),(87213,1434449339,26,3,'1','1','2','2','1','1','1','1',3),(87239,1433409170,84,22,'3','2','0','0','0','0','2','3',10),(87240,1433409298,85,22,'2','2','0','0','0','0','1','1',10),(87241,1433409231,86,22,'2','2','0','0','0','0','1','1',10),(87242,1419080904,87,22,'1','2','0','0','0','0','1','1',10),(87243,1433409326,88,22,'2','2','0','0','0','0','1','1',10),(88689,1434376004,159,10,'2','2','1','0','0','0','0','0',19),(88286,1432488220,47,22,'2','2','0','0','0','0','2','2',26),(87262,1433871130,47,22,'2','2','0','0','0','0','1','1',10),(87263,1419089258,48,22,'2','2','0','0','0','0','2','2',10),(87264,1433409549,49,22,'3','2','0','0','0','0','2','2',10),(87265,1433871152,50,22,'2','2','0','0','0','0','2','2',10),(87266,1433871176,51,22,'2','3','0','0','0','0','2','2',10),(87267,1419089362,52,22,'2','2','0','0','0','0','2','2',10),(87268,1419089369,53,22,'2','2','0','0','0','0','2','2',10),(88280,1432487996,94,22,'1','2','0','0','0','0','1','1',26),(88279,1432487984,93,22,'1','2','0','0','0','0','1','1',26),(88278,1419080670,92,22,'1','1','0','0','0','0','1','2',26),(88277,1432487969,91,22,'2','2','0','0','0','0','1','2',26),(88671,1433841553,185,17,'2','2','2','2','2','2','2','2',12),(88275,1420566659,90,22,'2','2','0','0','0','0','2','2',26),(88274,1433871353,89,22,'3','2','0','0','0','0','2','2',26),(88273,1433871265,88,22,'2','2','0','0','0','0','2','2',26),(88272,1432487887,87,22,'2','2','0','0','0','0','1','1',26),(88271,1433871232,86,22,'2','2','0','0','0','0','1','1',26),(88270,1420566650,85,22,'2','2','0','0','0','0','2','2',26),(88269,1419080201,84,22,'3','2','0','0','0','0','2','3',26),(88268,1432487864,83,22,'2','2','0','0','0','0','2','2',26),(88341,1421045775,59,18,'2','2','0','0','0','2','2','2',11),(88340,1434263156,57,18,'2','2','0','0','0','2','2','2',11),(88338,1434262979,185,18,'2','2','0','0','0','2','2','2',11),(88705,1434390845,157,8,'1','1','1','0','0','0','1','1',4),(88704,1434390882,162,8,'1','2','2','0','0','0','1','1',4),(88701,1434376147,169,10,'1','2','2','0','0','0','0','0',19),(88700,1434376137,166,10,'2','1','2','0','0','0','0','0',19),(88699,1434376126,164,10,'1','1','1','0','0','0','0','0',19),(88698,1434376118,157,10,'1','1','2','0','0','0','0','0',19),(88697,1434376105,168,10,'2','2','2','0','0','0','0','0',19),(88696,1434376092,167,10,'2','2','1','0','0','0','0','0',19),(88695,1434376080,165,10,'2','2','2','0','0','0','0','0',19),(88694,1434376068,163,10,'3','2','2','0','0','0','0','0',19),(88693,1434376056,162,10,'2','2','2','0','0','0','0','0',19),(88692,1434376043,170,10,'2','2','2','0','0','0','0','0',19),(88691,1434376029,161,10,'2','2','2','0','0','0','0','0',19),(88432,1421160587,159,13,'2','2','1','0','0','0','2','0',17),(88431,1434546700,158,13,'3','2','2','0','0','3','3','0',17),(88430,1421157272,183,20,'2','2','2','2','2','1','1','0',3),(88429,1421157265,182,20,'1','2','2','2','2','1','1','0',3),(88428,1434110933,177,20,'2','2','2','2','2','2','1','0',3),(88427,1421157244,175,20,'1','2','1','2','2','1','1','0',3),(88426,1434110915,174,20,'2','2','2','2','2','1','1','0',3),(88425,1434110906,173,20,'2','2','2','2','2','2','1','0',3),(88424,1421157131,169,20,'1','1','2','2','2','1','1','0',3),(88423,1421157126,157,20,'1','1','2','2','2','1','1','0',3),(88422,1434110761,161,20,'3','2','2','2','2','2','2','0',3),(88421,1434110751,160,20,'3','3','2','2','2','2','2','0',3),(88420,1434110738,158,20,'3','2','3','2','2','2','2','0',3),(88419,1434110995,180,20,'0','0','3','0','0','0','0','0',17),(88418,1434110995,176,20,'0','0','3','0','0','0','0','0',17),(88417,1434110995,184,20,'0','0','1','0','0','0','0','0',17),(88690,1434376018,160,10,'3','3','1','0','0','0','0','0',19),(88301,1419089223,62,22,'1','2','0','0','0','0','1','1',26),(88300,1432488365,61,22,'1','2','0','0','0','0','1','1',26),(88416,1434110995,183,20,'0','0','1','0','0','0','0','0',17),(88415,1434110995,182,20,'0','0','1','0','0','0','0','0',17),(88414,1434110995,181,20,'0','0','1','0','0','0','0','0',17),(88413,1434110995,179,20,'0','0','2','0','0','0','0','0',17),(88412,1434110995,178,20,'0','0','2','0','0','0','0','0',17),(88411,1434110995,177,20,'0','0','2','0','0','0','0','0',17),(88410,1434111024,175,20,'0','0','2','0','0','0','0','0',17),(88409,1434110995,174,20,'0','0','2','0','0','0','0','0',17),(88408,1434110995,173,20,'0','0','2','0','0','0','0','0',17),(88407,1434111028,172,20,'0','0','3','0','0','0','0','0',17),(88406,1434110995,171,20,'0','0','2','0','0','0','0','0',17),(88707,1434390857,166,8,'1','1','1','0','0','0','1','1',4),(88706,1434390852,164,8,'1','1','1','0','0','0','1','1',4),(88403,1434111066,185,20,'2','2','2','0','2','0','2','0',19),(88637,1434449430,30,3,'1','1','2','1','1','1','1','1',14),(88636,1434449402,24,3,'1','2','1','2','2','2','2','1',14),(88635,1434449436,1,3,'1','1','2','1','1','1','1','1',14),(88634,1434449446,26,3,'2','1','2','2','1','1','1','1',14),(88633,1434449452,25,3,'1','1','2','2','1','1','1','1',14),(88632,1421400362,23,3,'2','2','1','2','1','2','1','1',14),(88631,1434449378,4,3,'2','2','1','2','2','2','2','2',14),(88630,1421400126,28,3,'2','1','1','2','1','1','1','1',14),(88629,1421400076,3,3,'2','1','2','2','2','1','1','1',14),(88628,1421399957,27,3,'3','1','2','3','3','3','3','2',14),(88627,1421399855,29,3,'2','2','3','2','3','2','1','1',14),(88626,1421399765,21,3,'2','2','2','2','1','1','1','1',14),(88625,1421399729,2,3,'3','3','3','3','3','3','1','2',14),(88624,1421339566,180,5,'3','0','3','0','3','0','2','2',8),(88623,1421339563,179,5,'1','0','1','0','1','0','1','1',8),(88622,1421339556,178,5,'2','0','1','0','2','0','2','1',8),(88621,1421339550,177,5,'2','0','2','0','2','0','2','2',8),(88620,1421339548,176,5,'3','0','2','0','2','0','3','3',8),(88619,1421339546,175,5,'2','0','1','0','2','0','1','1',8),(88618,1421397786,174,5,'2','0','2','0','2','0','1','2',8),(88617,1421339541,173,5,'1','0','1','0','1','0','1','1',8),(88616,1421339539,172,5,'2','0','1','0','2','0','2','2',8),(87407,1434534420,89,20,'1','3','2','2','2','2','1','0',3),(87408,1421155619,93,20,'1','2','2','2','2','1','1','0',3),(87409,1434110596,94,20,'1','2','2','2','2','1','1','0',3),(87410,1434534430,95,20,'1','1','2','2','2','1','1','0',3),(88709,1434390937,171,8,'2','1','1','0','0','0','1','2',4),(87412,1421155361,47,20,'2','1','2','2','2','2','2','0',3),(87413,1434110654,50,20,'3','2','2','2','2','2','2','0',3),(87414,1434534373,51,20,'3','3','2','2','3','2','3','0',3),(87415,1421155438,52,20,'2','2','2','2','2','2','2','0',3),(87416,1434110674,53,20,'2','3','2','2','2','2','2','0',3),(87417,1421155454,56,20,'2','2','2','2','2','2','2','0',3),(88708,1434390864,169,8,'1','1','1','0','0','0','1','1',4),(87419,1434110692,60,20,'1','2','2','2','2','1','1','0',3),(87420,1402052450,61,20,'2','1','2','2','2','2','2','0',3),(87421,1434110705,62,20,'1','2','2','2','2','1','1','0',3),(88299,1432488349,60,22,'1','1','0','0','0','0','1','1',26),(88298,1419089135,59,22,'2','2','0','0','0','0','2','2',26),(88297,1419089118,58,22,'1','1','0','0','0','0','1','1',26),(88296,1419089107,57,22,'2','2','0','0','0','0','2','2',26),(88295,1419089078,56,22,'2','2','0','0','0','0','2','2',26),(88294,1419089046,55,22,'2','2','0','0','0','0','1','1',26),(88293,1419089038,54,22,'1','2','0','0','0','0','1','1',26),(88292,1419089013,53,22,'2','2','0','0','0','0','2','3',26),(87430,1402298160,83,17,'2','2','2','2','2','2','2','2',12),(87431,1433841418,84,17,'2','2','1','3','3','2','2','2',12),(87432,1402298165,85,17,'2','2','2','2','2','2','2','2',12),(87433,1402298166,86,17,'2','2','2','2','2','2','2','2',12),(87434,1421096113,87,17,'2','2','2','2','2','2','2','2',12),(87435,1402298169,88,17,'2','2','2','2','2','2','2','2',12),(87436,1433841451,89,17,'1','2','1','2','1','2','1','1',12),(87437,1421095998,90,17,'2','2','2','2','2','2','2','2',12),(87438,1421096000,91,17,'2','2','2','2','2','2','2','2',12),(87439,1421096003,92,17,'2','2','2','2','2','2','2','2',12),(87440,1421096006,93,17,'2','2','2','2','2','2','2','2',12),(87441,1421096008,94,17,'2','2','2','2','2','2','2','2',12),(87442,1433841308,95,17,'2','2','2','2','2','2','2','2',12),(87443,1433841523,96,17,'2','2','1','2','2','2','1','2',12),(87444,1433841312,97,17,'2','2','2','2','2','2','2','2',12),(87445,1433841343,98,17,'2','2','2','2','2','2','2','1',12),(87446,1433843215,47,17,'1','2','2','2','1','2','1','1',12),(87447,1433843203,48,17,'2','2','2','2','1','2','1','2',12),(87448,1402298565,49,17,'2','2','2','2','2','2','2','2',12),(87449,1402298567,50,17,'2','2','2','2','2','2','2','2',12),(87450,1433843010,51,17,'2','2','2','2','3','3','3','3',12),(87451,1402298569,52,17,'2','2','2','2','2','2','2','2',12),(87452,1433843143,53,17,'2','2','2','2','2','2','2','3',12),(87453,1402298571,54,17,'2','2','2','2','2','2','2','2',12),(87454,1402298573,55,17,'2','2','2','2','2','2','2','2',12),(87455,1402298574,56,17,'2','2','2','2','2','2','2','2',12),(87456,1402298575,57,17,'2','2','2','2','2','2','2','2',12),(87457,1433843088,58,17,'1','2','2','2','1','2','1','2',12),(87458,1433842978,59,17,'2','2','2','2','2','3','2','2',12),(87459,1402298580,60,17,'2','2','2','2','2','2','2','2',12),(87460,1402298581,61,17,'2','2','2','2','2','2','2','2',12),(87461,1421096514,62,17,'1','2','2','2','1','2','1','1',12),(88727,1434567128,24,8,'1','2','1','3','1','0','1','1',4),(88726,1434553453,189,18,'2','1','0','0','0','2','2','2',11),(88725,1434553125,98,20,'2','2','2','2','2','1','1','0',3),(88724,1434553107,189,20,'1','1','2','2','2','1','1','0',3),(88723,1434551459,189,17,'1','1','2','2','2','2','2','1',12),(88722,1434551337,189,17,'2','2','2','2','2','2','2','2',2),(88721,1434549481,189,19,'2','2','3','0','0','0','0','2',5),(88714,1434391010,183,8,'2','2','1','0','0','0','1','1',4),(88713,1434390990,182,8,'1','1','1','0','0','0','1','1',4),(88712,1434390982,179,8,'2','2','2','0','0','0','1','2',4),(88711,1434566454,178,8,'2','2','2','0','0','0','1','1',4),(88672,1433843582,185,17,'2','2','2','2','2','2','2','2',2),(88670,1421611250,180,5,'3','2','1','3','3','2','1','2',4),(88658,1421585399,176,5,'0','0','0','0','3','0','0','0',4),(88657,1421585349,173,5,'0','0','0','0','1','0','0','0',4),(87492,1433843277,89,17,'1','2','2','2','2','2','2','1',2),(87493,1421096621,90,17,'1','2','2','1','2','2','2','2',2),(87494,1421096623,91,17,'2','2','2','2','2','2','2','2',2),(87495,1421096624,92,17,'2','2','2','2','2','2','2','2',2),(87496,1433843465,93,17,'1','2','2','1','2','2','2','2',2),(87497,1433843474,94,17,'2','2','2','2','2','2','2','2',2),(87498,1433843435,95,17,'2','2','2','2','2','2','2','2',2),(87499,1433843387,96,17,'2','2','1','2','2','2','2','2',2),(88674,1434102201,185,2,'2','0','2','0','0','0','0','0',4),(87501,1433843586,98,17,'2','2','2','2','2','2','2','2',2),(87502,1421096819,54,17,'2','2','2','2','2','2','2','2',2),(87503,1421096820,55,17,'2','2','2','2','2','2','2','2',2),(87504,1433843836,56,17,'2','2','2','1','2','2','2','2',2),(87505,1433843706,57,17,'2','2','2','2','2','2','2','2',2),(87506,1433843831,58,17,'1','2','1','2','1','2','2','2',2),(87507,1421096826,59,17,'2','2','2','2','2','3','2','2',2),(87508,1421096827,60,17,'2','2','2','2','2','2','2','2',2),(87509,1433843829,61,17,'1','2','2','1','2','2','2','2',2),(87510,1433843745,62,17,'1','2','2','2','1','2','2','1',2),(87511,1421069851,48,1,'2','2','2','2','2','0','1','0',3),(87512,1434375246,54,1,'2','2','2','2','1','0','1','0',3),(87513,1434375273,55,1,'2','2','1','2','2','0','1','0',3),(87514,1434375279,57,1,'2','2','1','3','2','0','1','0',3),(87515,1434375028,88,1,'2','2','1','2','2','0','2','0',3),(87516,1434375110,91,1,'2','2','1','2','1','0','1','0',3),(87517,1418749076,92,1,'2','2','2','2','2','0','2','0',3),(87518,1418749084,97,1,'2','1','2','2','2','0','1','0',3),(88686,1434375166,96,1,'2','2','2','2','1','0','1','0',3),(87520,1434374593,83,1,'2','2','2','2','2','2','2','2',25),(87521,1434374821,84,1,'2','2','1','2','2','2','2','2',25),(87522,1418749511,85,1,'2','2','2','2','2','2','2','2',25),(87523,1434374709,86,1,'2','2','1','1','2','1','2','2',25),(87524,1418749246,87,1,'3','3','1','2','1','2','1','2',25),(87525,1434374621,88,1,'2','1','2','2','2','2','2','2',25),(87526,1434374627,89,1,'1','1','2','2','2','2','2','1',25),(87527,1418749534,90,1,'1','2','2','2','1','1','2','2',25),(87528,1434374647,91,1,'1','1','2','2','1','1','2','1',25),(87529,1434374846,92,1,'2','2','2','2','2','2','2','2',25),(87530,1418749538,93,1,'1','1','2','2','2','1','2','1',25),(87531,1434374652,94,1,'1','1','2','2','2','1','2','1',25),(87532,1418749545,95,1,'1','1','2','2','2','1','2','1',25),(87533,1434374568,96,1,'1','1','2','2','2','2','2','2',25),(87534,1418749269,97,1,'1','1','2','2','2','1','2','1',25),(87535,1434374858,98,1,'2','2','2','2','2','1','2','1',25),(87536,1418748449,83,1,'0','0','2','0','0','0','0','0',20),(87537,1402303883,84,1,'0','0','1','0','0','0','0','0',20),(87538,1418748487,85,1,'0','0','2','0','0','0','0','0',20),(87539,1402303887,86,1,'0','0','1','0','0','0','0','0',20),(87540,1402303888,87,1,'0','0','1','0','0','0','0','0',20),(87541,1402303891,88,1,'0','0','2','0','0','0','0','0',20),(87542,1402303894,89,1,'0','0','2','0','0','0','0','0',20),(87543,1402303897,90,1,'0','0','2','0','0','0','0','0',20),(87544,1402303899,91,1,'0','0','2','0','0','0','0','0',20),(87545,1402303900,92,1,'0','0','2','0','0','0','0','0',20),(87546,1402303903,93,1,'0','0','2','0','0','0','0','0',20),(87547,1402303905,94,1,'0','0','2','0','0','0','0','0',20),(87548,1402303906,95,1,'0','0','2','0','0','0','0','0',20),(87549,1402303907,96,1,'0','0','2','0','0','0','0','0',20),(87550,1402303909,97,1,'0','0','2','0','0','0','0','0',20),(87551,1402303912,98,1,'0','0','2','0','0','0','0','0',20),(87552,1434449063,83,3,'2','0','2','0','2','2','2','2',8),(87553,1434449090,84,3,'2','0','2','0','2','2','1','2',8),(87554,1434449082,85,3,'2','0','2','0','2','2','2','2',8),(87555,1434449103,86,3,'2','0','2','0','2','2','1','2',8),(88613,1434102137,84,2,'2','3','2','0','2','0','2','2',4),(87557,1434449128,88,3,'2','0','2','0','2','2','2','2',8),(87559,1434387145,47,3,'1','0','1','0','1','1','1','1',8),(87560,1421314491,48,3,'2','0','2','0','2','2','1','2',8),(87561,1434449163,49,3,'2','0','2','0','2','2','2','2',8),(87562,1421314535,50,3,'2','0','2','0','2','2','1','2',8),(87563,1434449188,51,3,'2','0','2','0','2','2','2','2',8),(87564,1421315816,52,3,'2','0','2','0','2','2','2','2',8),(87565,1434449200,53,3,'2','0','2','0','2','2','2','2',8),(88702,1434389999,181,8,'1','1','1','0','1','0','1','1',5),(88401,1434389967,177,8,'3','2','2','0','1','2','1','1',5),(88400,1421144058,175,8,'1','2','1','0','1','2','1','1',5),(88399,1421143990,174,8,'2','2','2','0','2','2','1','1',5),(88398,1421143978,172,8,'2','2','2','0','2','2','1','2',5),(88397,1421143931,167,8,'1','2','1','0','1','2','1','1',5),(88396,1434566605,163,8,'2','2','1','0','2','2','1','2',5),(88395,1434390083,170,8,'2','2','2','0','2','2','1','2',5),(88394,1421143811,161,8,'3','2','3','0','3','2','1','1',5),(88393,1434566957,184,8,'2','0','2','0','2','0','1','1',20),(88392,1434566946,183,8,'2','2','2','0','2','0','1','1',20),(88391,1434566922,182,8,'1','1','1','0','2','0','1','1',20),(88390,1434389738,181,8,'2','1','1','0','2','0','1','1',20),(88389,1434389717,180,8,'3','3','2','0','2','0','1','2',20),(88388,1434389664,179,8,'2','2','1','0','2','0','1','2',20),(88387,1434389635,178,8,'1','1','2','0','1','0','1','1',20),(88386,1434389625,177,8,'2','3','2','0','2','0','1','1',20),(88385,1434389598,176,8,'2','2','2','0','3','0','2','2',20),(88384,1434566812,175,8,'2','1','1','0','2','0','1','1',20),(88383,1434389534,174,8,'2','2','1','0','2','0','1','1',20),(88382,1434389504,173,8,'2','2','1','0','2','0','1','2',20),(88381,1434389456,172,8,'2','3','3','0','2','0','2','2',20),(88380,1434389454,171,8,'1','2','1','0','1','0','1','1',20),(88379,1433840877,184,17,'2','1','2','2','1','2','1','1',12),(88378,1433840924,183,17,'2','2','2','2','1','2','1','1',12),(87605,1434518990,47,20,'2','1','3','2','2','2','2','0',19),(87606,1402381358,48,20,'2','2','2','2','2','2','2','0',19),(87608,1434519019,49,20,'2','2','1','2','2','2','2','0',19),(87609,1421155240,50,20,'3','2','2','2','2','2','2','0',19),(87610,1434530757,51,20,'3','3','1','2','2','2','3','0',19),(87611,1434530765,52,20,'2','2','2','2','2','2','2','0',19),(87613,1434519396,53,20,'2','3','3','2','2','2','2','0',19),(87614,1434530771,54,20,'2','2','2','2','2','2','1','0',19),(87615,1402381434,55,20,'1','2','2','2','2','2','1','0',19),(87616,1402381445,56,20,'2','2','2','2','2','2','2','0',19),(87618,1402381453,57,20,'2','2','2','2','2','2','2','0',19),(87619,1434530780,58,20,'2','2','2','2','2','2','2','0',19),(87620,1434518879,59,20,'2','2','2','2','2','2','2','0',19),(87621,1402381498,60,20,'2','2','2','2','2','2','2','0',19),(87622,1402381512,61,20,'2','2','2','2','2','2','2','0',19),(87623,1402381521,62,20,'1','2','2','2','2','2','1','0',19),(87624,1434111187,83,20,'2','3','3','2','2','2','2','0',19),(87626,1434518719,84,20,'3','3','2','2','2','2','2','0',19),(87627,1434518726,85,20,'2','2','3','2','2','2','2','0',19),(87628,1434111197,86,20,'2','2','2','2','2','2','2','0',19),(87629,1434518736,87,20,'2','2','2','2','2','2','1','0',19),(87630,1421155987,88,20,'2','2','3','2','2','2','2','0',19),(87631,1434518745,89,20,'1','2','2','2','2','2','2','0',19),(87632,1434530813,90,20,'1','2','2','2','2','1','1','0',19),(87633,1421144622,91,20,'2','2','2','2','2','2','2','0',19),(87635,1421156009,92,20,'2','2','3','2','2','2','1','0',19),(87636,1421156018,93,20,'1','2','2','2','2','1','1','0',19),(87637,1402381663,94,20,'1','2','2','2','2','1','1','0',19),(87638,1421144560,95,20,'2','1','2','2','2','1','1','0',19),(87639,1421144519,96,20,'2','2','2','2','2','2','2','0',19),(87640,1402381689,97,20,'1','1','2','2','2','2','1','0',19),(88291,1419088975,52,22,'2','2','0','0','0','0','2','2',26),(87642,1421156028,98,20,'1','2','2','2','2','1','1','0',19),(88290,1433871033,51,22,'3','3','0','0','0','0','2','2',26),(88377,1433840873,182,17,'1','1','2','2','1','2','1','1',12),(88376,1433840872,181,17,'1','1','1','2','1','2','1','1',12),(88375,1433840978,180,17,'2','2','2','2','2','2','2','2',12),(88374,1433840865,179,17,'2','2','2','2','2','2','2','2',12),(88373,1433840861,178,17,'1','2','2','2','2','2','2','1',12),(88372,1433840859,177,17,'2','2','2','2','2','2','2','2',12),(88371,1433840856,176,17,'2','2','2','2','2','2','2','2',12),(87652,1434262965,89,18,'2','2','0','0','0','2','2','2',11),(88339,1421045693,95,18,'2','2','0','0','0','2','2','2',11),(87654,1434263007,92,18,'1','1','0','0','0','1','1','1',11),(87655,1421045619,93,18,'1','1','0','0','0','1','1','1',11),(87656,1434263063,94,18,'2','2','0','0','0','2','2','2',11),(87657,1434263076,96,18,'1','2','0','0','0','2','2','2',11),(87658,1402387526,97,18,'2','2','0','0','0','2','2','2',11),(87659,1402387539,98,18,'2','3','0','0','0','2','2','2',11),(87660,1402387631,54,18,'2','2','0','0','0','2','2','2',11),(87661,1402387641,55,18,'2','2','0','0','0','2','2','1',11),(87662,1434263143,56,18,'1','2','0','0','0','2','2','2',11),(87663,1434263166,58,18,'1','2','0','0','0','2','2','2',11),(87664,1402387680,60,18,'2','2','0','0','0','2','2','2',11),(87665,1434263174,61,18,'1','1','0','0','0','1','1','1',11),(87666,1434263215,27,18,'3','3','0','0','0','2','2','2',11),(87667,1402387765,3,18,'1','1','0','0','0','1','1','1',11),(87668,1402387779,4,18,'2','2','0','0','0','2','2','2',11),(87669,1402387799,23,18,'2','1','0','0','0','1','1','1',11),(87670,1421045993,26,18,'1','1','0','0','0','1','1','2',11),(88351,1434262899,184,18,'2','1','0','0','0','1','1','1',11),(87672,1402387838,30,18,'1','1','0','0','0','1','1','1',11),(88350,1434262881,183,18,'1','1','0','0','0','1','1','1',11),(88349,1421046638,181,18,'1','2','0','0','0','1','1','1',11),(88348,1434262802,169,18,'2','1','0','0','0','1','1','1',11),(88347,1421046464,166,18,'1','1','0','0','0','1','1','1',11),(88346,1434262787,164,18,'1','2','0','0','0','1','1','1',11),(88345,1421046439,157,18,'2','1','0','0','0','1','1','1',11),(88289,1433871019,50,22,'2','2','0','0','0','0','2','3',26),(88288,1433871009,49,22,'3','3','0','0','0','0','2','2',26),(88287,1419088887,48,22,'2','2','0','0','0','0','2','2',26),(88285,1433409329,91,22,'1','2','0','0','0','0','1','1',10),(88370,1433840855,175,17,'1','1','2','2','1','2','1','1',12),(88369,1433840899,174,17,'3','2','2','2','2','2','2','2',12),(87690,1434371450,84,10,'3','3','1','0','0','0','0','0',29),(87691,1421236458,93,10,'2','2','2','0','0','0','0','0',29),(87692,1434371488,94,10,'2','2','2','0','0','0','0','0',29),(87693,1434371515,97,10,'2','2','2','0','0','0','0','0',29),(87694,1421236415,91,10,'2','1','2','0','0','0','0','0',29),(87695,1421236540,48,10,'2','2','2','0','0','0','0','0',29),(87696,1434372105,50,10,'3','2','2','0','0','0','0','0',29),(87697,1434372119,55,10,'2','3','1','0','0','0','0','0',29),(87698,1434372141,57,10,'2','2','2','0','0','0','0','0',29),(87699,1421236576,60,10,'2','2','2','0','0','0','0','0',29),(87700,1402469909,58,10,'2','2','2','0','0','0','0','0',29),(87701,1402469927,61,10,'2','2','2','0','0','0','0','0',29),(87702,1434372336,4,10,'2','2','2','0','0','0','0','0',29),(87703,1402471233,23,10,'2','2','2','0','0','0','0','0',29),(87704,1434372362,25,10,'1','2','1','0','0','0','0','0',29),(87709,1434373470,2,10,'2','2','2','0','0','0','0','0',3),(87710,1434373480,29,10,'1','2','2','0','0','0','0','0',3),(87711,1402472920,28,10,'1','2','2','0','0','0','0','0',3),(87712,1434373509,4,10,'3','2','2','0','0','0','0','0',3),(87713,1434373521,23,10,'1','2','2','0','0','0','0','0',3),(88284,1432488053,98,22,'1','2','0','0','0','0','1','1',26),(88283,1433871304,97,22,'2','2','0','0','0','0','1','2',26),(88282,1434468062,96,22,'3','2','0','0','0','0','2','2',26),(88281,1420566673,95,22,'2','2','0','0','0','0','2','2',26),(88267,1419079852,182,22,'1','2','0','0','0','0','2','2',10),(88266,1419079828,180,22,'2','2','0','0','0','0','1','1',10),(88265,1433408955,179,22,'2','2','0','0','0','0','1','1',10),(88264,1432487818,178,22,'1','1','0','0','0','0','1','1',10),(88263,1419079708,177,22,'2','2','0','0','0','0','2','2',10),(88262,1433594289,176,22,'3','2','0','0','0','0','2','2',10),(88261,1419079677,175,22,'1','2','0','0','0','0','1','1',10),(88260,1419079664,174,22,'3','2','0','0','0','0','2','2',10),(88259,1419079654,173,22,'2','2','0','0','0','0','2','2',10),(88258,1432487723,172,22,'2','2','0','0','0','0','2','2',10),(88257,1432487719,171,22,'3','2','0','0','0','0','2','2',10),(88256,1419079395,184,22,'1','1','0','0','0','0','1','1',26),(88255,1419079385,183,22,'1','1','0','0','0','0','1','1',26),(88254,1419079376,182,22,'1','2','0','0','0','0','1','1',26),(88253,1419079398,181,22,'1','1','0','0','0','0','1','1',26),(88252,1419079298,180,22,'2','2','0','0','0','0','1','1',26),(88251,1419079285,179,22,'2','2','0','0','0','0','1','1',26),(88250,1432487434,178,22,'1','1','0','0','0','0','1','1',26),(88242,1434374518,98,1,'1','2','2','0','0','0','0','0',23),(88241,1434374514,97,1,'1','1','2','0','0','0','0','0',23),(88240,1434374510,96,1,'2','1','2','0','0','0','0','0',23),(88239,1434374509,95,1,'1','1','2','0','0','0','0','0',23),(88238,1434374508,94,1,'1','1','2','0','0','0','0','0',23),(88237,1434374506,93,1,'1','2','2','0','0','0','0','0',23),(88236,1434374502,92,1,'2','1','2','0','0','0','0','0',23),(88235,1434374499,91,1,'1','1','2','0','0','0','0','0',23),(88234,1434374495,90,1,'1','1','1','0','0','0','0','0',23),(88233,1434374493,89,1,'1','1','2','0','0','0','0','0',23),(88232,1434374491,88,1,'2','2','2','0','0','0','0','0',23),(88231,1434374487,87,1,'2','3','1','0','0','0','0','0',23),(88230,1434374486,86,1,'2','2','1','0','0','0','0','0',23),(88229,1434374479,85,1,'1','2','1','0','0','0','0','0',23),(88228,1434374477,84,1,'2','2','1','0','0','0','0','0',23),(88227,1434374475,83,1,'2','2','1','0','0','0','0','0',23),(88688,1434375991,158,10,'2','2','2','0','0','0','0','0',19),(88687,1434375311,58,1,'2','2','1','2','1','0','1','0',3),(87760,1434567351,21,8,'2','2','2','2','2','1','1','1',4),(87761,1434390159,3,8,'1','1','2','2','1','2','1','1',4),(87762,1421141952,25,8,'1','1','2','2','1','1','1','1',4),(87763,1421141970,1,8,'1','1','2','1','1','1','1','1',4),(87764,1421141984,30,8,'1','1','2','2','1','1','1','1',4),(87774,1434624860,2,8,'2','2','3','0','2','0','1','1',23),(87775,1434624882,21,8,'1','1','1','0','1','0','1','1',23),(87776,1421142654,22,8,'2','2','0','0','2','0','1','1',23),(87777,1434624893,29,8,'2','1','2','0','2','0','1','1',23),(87778,1421142812,27,8,'3','1','3','3','3','0','2','1',23),(87779,1434624927,3,8,'2','1','2','0','2','0','2','1',23),(87780,1434624931,28,8,'1','1','1','0','1','0','1','1',23),(87781,1434624934,4,8,'2','2','2','0','2','0','1','1',23),(87782,1434624959,23,8,'2','2','3','0','2','0','1','1',23),(87783,1434624974,25,8,'1','1','2','0','1','0','1','1',23),(87784,1434624987,26,8,'1','1','2','0','1','0','1','1',23),(87785,1434624995,1,8,'1','1','1','0','1','0','1','1',23),(87786,1434625015,24,8,'2','2','2','0','1','0','1','1',23),(87787,1434625008,30,8,'1','1','1','0','1','0','1','1',23),(88457,1434547086,57,13,'1','2','1','0','2','0','2','0',4),(88719,1434547221,189,13,'0','0','2','0','0','0','2','0',17),(88455,1421162481,48,13,'1','1','2','0','1','0','1','0',4),(88454,1434547521,185,13,'1','3','2','0','2','2','2','0',4),(88453,1421161486,185,13,'0','0','1','0','0','0','2','0',17),(88449,1421161131,30,13,'1','0','1','0','0','0','1','0',17),(88448,1421161127,24,13,'1','0','1','0','0','0','1','0',17),(88447,1421161121,4,13,'1','0','1','0','0','0','2','0',17),(88446,1421161119,3,13,'1','0','1','0','0','0','1','0',17),(88445,1434547650,27,13,'1','0','1','0','0','0','2','0',17),(87802,1434567688,2,8,'2','1','2','0','2','0','1','1',20),(87803,1434567690,21,8,'1','1','1','0','1','0','1','1',20),(87804,1434567694,22,8,'2','2','0','0','2','0','1','1',20),(87805,1434567702,29,8,'2','1','2','0','2','0','1','1',20),(87806,1434567708,3,8,'2','1','2','0','2','0','2','1',20),(87807,1434567707,27,8,'3','1','3','0','3','0','2','1',20),(87808,1434567711,28,8,'1','1','1','0','1','0','1','1',20),(87809,1434567799,4,8,'2','2','1','0','2','0','1','1',20),(87810,1434567717,23,8,'2','2','3','0','2','0','1','1',20),(87811,1434567718,25,8,'1','1','2','0','1','0','1','1',20),(87812,1434546199,2,13,'2','2','2','2','2','2','2','0',29),(88444,1434546219,29,13,'1','1','1','1','1','1','1','0',29),(87814,1434546380,27,13,'2','1','2','2','3','2','2','0',29),(87815,1434546356,28,13,'1','1','2','2','1','1','1','0',29),(87816,1421160984,26,13,'1','1','1','1','1','1','1','0',29),(87819,1434547020,83,13,'3','3','2','0','2','2','2','0',29),(87820,1434546906,85,13,'2','2','1','0','2','2','2','0',29),(87821,1434546952,86,13,'2','2','1','0','2','2','2','0',29),(87822,1421162290,90,13,'1','1','1','0','1','1','1','0',29),(87823,1434546919,95,13,'1','1','1','0','1','1','1','0',29),(87824,1421162130,47,13,'1','1','1','0','1','1','1','0',29),(87825,1434546761,49,13,'1','3','1','0','2','2','2','0',29),(87826,1421162180,52,13,'2','2','3','0','2','2','2','0',29),(87827,1421162130,56,13,'1','1','2','0','1','1','1','0',29),(87828,1434546846,59,13,'1','1','1','0','2','1','1','0',29),(87829,1434546801,62,13,'1','2','1','0','1','1','1','0',29),(87830,1421161441,83,13,'0','0','2','0','0','0','2','0',17),(87831,1421161443,84,13,'0','0','2','0','0','0','2','0',17),(87832,1421161445,85,13,'0','0','2','0','0','0','2','0',17),(87833,1421161447,86,13,'0','0','2','0','0','0','2','0',17),(87834,1434547181,87,13,'0','0','2','0','0','0','2','0',17),(87835,1421161481,88,13,'0','0','2','0','0','0','1','0',17),(87836,1421161483,89,13,'0','0','3','0','0','0','2','0',17),(87837,1421161484,90,13,'0','0','2','0','0','0','1','0',17),(87838,1421161488,91,13,'0','0','1','0','0','0','1','0',17),(87839,1421161489,92,13,'0','0','2','0','0','0','2','0',17),(87840,1421161492,93,13,'0','0','1','0','0','0','1','0',17),(87841,1421161496,94,13,'0','0','1','0','0','0','1','0',17),(87842,1421161498,95,13,'0','0','2','0','0','0','1','0',17),(87843,1434547151,96,13,'0','0','1','0','0','0','2','0',17),(87844,1421161506,97,13,'0','0','3','0','0','0','2','0',17),(87845,1421161510,98,13,'0','0','3','0','0','0','2','0',17),(88479,1434536675,47,21,'2','2','2','2','2','2','1','1',5),(88474,1434536866,2,21,'2','2','2','2','1','2','1','1',5),(88491,1434536366,179,21,'2','2','2','2','2','2','2','2',5),(88717,1434537823,183,21,'3','2','2','2','2','2','2','2',29),(88480,1434536697,51,21,'2','2','1','2','2','2','2','2',5),(88489,1434536404,182,21,'1','1','2','2','2','2','1','1',5),(88718,1434542478,184,19,'2','2','1','0','0','0','0','2',5),(88487,1434536356,173,21,'2','2','1','2','2','2','2','2',5),(88486,1434536343,171,21,'2','1','2','2','2','2','1','1',5),(88485,1434537198,168,21,'3','2','2','2','2','2','2','2',5),(88484,1434537174,162,21,'3','2','2','2','2','2','2','2',5),(88716,1434536264,159,21,'2','2','2','2','2','2','2','2',5),(88482,1434536744,57,21,'2','2','2','2','1','2','1','2',5),(88481,1434536714,54,21,'2','2','3','2','2','2','1','1',5),(87862,1421161800,83,13,'3','2','3','0','2','1','1','0',4),(87863,1421161945,84,13,'3','3','1','0','2','3','2','0',4),(87864,1421161753,85,13,'2','2','2','0','2','2','2','0',4),(87865,1421161949,86,13,'2','2','2','0','2','2','2','0',4),(87866,1434547399,87,13,'2','3','2','0','2','1','1','0',4),(87867,1421161955,88,13,'2','1','2','0','2','1','1','0',4),(87868,1421161960,89,13,'1','2','1','0','2','1','1','0',4),(87869,1434547345,90,13,'1','1','1','0','1','1','1','0',4),(87870,1421161753,91,13,'1','1','1','0','1','1','1','0',4),(87871,1421161753,92,13,'2','2','3','0','2','1','2','0',4),(87872,1421161830,93,13,'1','2','2','0','1','1','1','0',4),(87873,1434547375,94,13,'1','1','1','0','1','1','1','0',4),(87874,1434547377,95,13,'1','1','2','0','1','1','1','0',4),(87875,1434547531,96,13,'1','1','2','0','1','1','1','0',4),(87876,1421161971,97,13,'1','1','2','0','1','1','1','0',4),(87877,1421161982,98,13,'1','2','2','0','2','1','1','0',4),(87890,1434537890,21,21,'2','2','2','2','2','2','2','2',29),(88337,1434262972,90,18,'2','2','0','0','0','2','2','2',11),(87891,1434537919,3,21,'1','1','2','2','2','2','2','2',29),(87893,1434537964,24,21,'1','1','1','1','1','1','1','1',29),(87894,1434537978,30,21,'1','1','2','1','1','1','1','1',29),(87905,1434537951,1,21,'2','1','2','2','1','1','1','1',29),(88685,1434375286,184,6,'2','2','1','1','2','2','2','2',4),(88684,1434375272,181,6,'2','2','2','2','2','2','2','1',4),(88683,1434375268,174,6,'2','2','2','2','2','2','2','2',4),(88682,1434375267,173,6,'2','2','2','1','2','1','2','2',4),(88681,1434375266,172,6,'3','3','2','2','2','3','2','2',4),(88680,1434374854,189,1,'1','1','2','2','2','2','1','1',25),(88368,1433840846,173,17,'2','2','1','2','1','2','2','1',12),(88367,1433840844,172,17,'2','2','2','2','2','2','2','2',12),(88366,1433840840,171,17,'2','2','2','2','2','2','2','2',12),(87916,1434536885,28,21,'1','1','2','2','1','2','1','1',5),(88478,1434536626,89,21,'2','1','2','0','2','0','2','1',5),(87918,1434536905,23,21,'3','2','3','2','1','2','1','2',5),(87919,1434536919,26,21,'1','1','1','2','1','2','1','1',5),(88477,1434536595,88,21,'2','2','2','2','2','2','2','2',5),(88476,1434536578,87,21,'2','2','2','2','2','2','2','2',5),(88679,1434374827,185,1,'2','2','1','2','2','2','2','2',25),(88678,1434374454,189,1,'0','0','2','0','0','0','0','0',20),(88677,1434374449,185,1,'0','0','1','0','0','0','0','0',20),(88676,1434374512,189,1,'1','1','2','0','0','0','0','0',23),(88675,1434374498,185,1,'2','2','2','0','0','0','0','0',23),(88212,1433594249,168,22,'2','2','0','0','0','0','2','2',10),(88211,1419078727,167,22,'1','1','0','0','0','0','1','2',10),(88210,1419078704,165,22,'2','2','0','0','0','0','2','2',10),(88209,1432487219,163,22,'2','2','0','0','0','0','2','2',10),(88365,1433840443,169,17,'1','1','2','2','1','2','1','0',12),(88364,1433840438,166,17,'1','1','2','2','1','2','1','1',12),(88614,1434101759,83,2,'2','2','3','0','3','3','0','0',5),(87941,1434102154,87,2,'2','3','2','0','2','0','1','2',4),(87942,1434102370,97,2,'1','2','2','0','2','0','1','1',4),(87943,1434102350,96,2,'2','2','2','0','2','0','2','2',4),(87944,1434102339,94,2,'1','1','1','0','2','0','1','2',4),(87945,1434102306,93,2,'1','2','2','0','2','0','2','2',4),(87958,1434378631,27,5,'3','0','2','3','2','0','2','2',2),(87959,1434378644,3,5,'2','0','2','0','2','1','1','2',2),(87960,1421251446,28,5,'2','0','2','0','2','0','1','1',2),(87961,1434378672,4,5,'2','0','2','0','1','0','2','2',2),(87962,1434378721,23,5,'1','0','1','0','2','2','1','1',2),(87963,1421251731,25,5,'1','0','1','1','1','1','1','1',2),(87964,1434378769,26,5,'2','0','2','0','1','0','1','1',2),(87965,1421251737,1,5,'1','0','1','1','1','1','1','1',2),(87966,1434378694,24,5,'1','0','1','0','1','1','1','1',2),(87967,1421251740,30,5,'1','0','1','1','1','1','1','1',2),(87968,1434102107,87,2,'1','2','1','0','1','0','1','0',29),(88710,1434390957,176,8,'2','2','3','0','0','0','1','2',4),(87970,1434101599,89,2,'1','2','1','0','2','0','1','0',29),(87971,1434101651,96,2,'2','2','2','0','2','0','2','0',29),(87972,1434101705,98,2,'1','3','1','0','2','0','1','0',29),(87973,1434101643,92,2,'1','1','2','0','2','0','1','0',29),(88615,1421339536,171,5,'1','0','2','0','1','0','1','1',8),(87975,1434101818,91,2,'2','2','2','0','1','0','0','0',5),(87976,1434101876,92,2,'2','2','3','0','2','0','0','0',5),(87977,1434101864,93,2,'2','2','2','0','2','0','0','0',5),(87978,1434101907,96,2,'2','2','3','0','2','0','0','0',5),(87979,1434101949,97,2,'1','2','2','0','2','0','0','0',5),(88363,1433840436,164,17,'1','1','1','2','1','2','1','1',12),(88362,1433840435,157,17,'1','1','2','2','1','2','1','1',12),(88361,1421095011,168,17,'2','2','2','2','2','2','2','2',12),(88360,1421095008,167,17,'2','2','2','2','2','2','2','2',12),(88208,1432487201,162,22,'2','2','0','0','0','0','2','2',10),(88207,1419078686,170,22,'3','2','0','0','0','0','2','2',10),(88206,1432487166,161,22,'2','2','0','0','0','0','2','2',10),(88205,1433408737,160,22,'2','2','0','0','0','0','2','2',10),(88204,1416576498,159,22,'2','2','0','0','0','0','1','1',10),(88203,1419078681,158,22,'3','2','0','0','0','0','2','2',10),(88202,1416576447,169,22,'1','1','0','0','0','0','1','1',26),(88201,1416576440,166,22,'1','1','0','0','0','0','1','1',26),(88200,1416576432,164,22,'1','1','0','0','0','0','1','1',26),(88199,1416576425,157,22,'1','1','0','0','0','0','1','1',26),(88198,1432828016,168,22,'2','2','0','0','0','0','2','2',26),(88197,1416576395,167,22,'2','2','0','0','0','0','1','1',26),(88196,1433745463,165,22,'3','3','0','0','0','0','2','2',26),(88195,1432834825,163,22,'3','2','0','0','0','0','2','3',26),(88194,1433408665,162,22,'3','2','0','0','0','0','2','2',26),(88193,1433594053,170,22,'3','2','0','0','0','0','3','2',26),(88192,1416576208,161,22,'2','2','0','0','0','0','2','2',26),(88001,1421394488,47,2,'1','2','2','2','1','2','1','1',25),(88002,1402578519,48,2,'2','2','2','2','1','2','1','2',25),(88003,1434101332,49,2,'2','2','2','2','2','2','2','3',25),(88004,1434101321,50,2,'2','2','2','2','2','2','2','3',25),(88005,1434101261,51,2,'2','2','1','3','2','2','2','3',25),(88006,1434101313,52,2,'2','2','2','2','2','2','2','2',25),(88007,1402578529,53,2,'2','2','2','2','2','2','2','2',25),(88008,1402578529,54,2,'1','1','2','2','2','2','1','2',25),(88009,1434101020,55,2,'2','2','2','2','2','2','2','2',25),(88010,1402578563,56,2,'1','1','2','2','1','2','1','2',25),(88011,1434101026,57,2,'2','2','2','2','2','2','1','2',25),(88012,1402578566,58,2,'2','2','2','2','2','2','1','2',25),(88013,1434101337,59,2,'2','2','2','2','2','2','2','2',25),(88014,1402578575,60,2,'1','1','2','2','1','2','1','2',25),(88015,1434101061,61,2,'2','2','2','2','2','2','1','2',25),(88016,1434101352,62,2,'2','2','2','2','1','2','1','2',25),(88017,1434567769,26,8,'1','1','1','0','2','0','2','1',20),(88018,1434567723,1,8,'1','1','1','0','1','0','1','1',20),(88019,1434567780,24,8,'2','1','1','0','2','0','1','1',20),(88020,1434567734,30,8,'1','1','1','0','1','0','1','1',20),(88715,1434530839,189,20,'1','1','2','2','2','1','1','0',19),(88022,1434542527,85,19,'2','2','1','0','0','0','0','3',5),(88023,1434524825,86,19,'3','3','2','0','0','0','0','2',5),(88024,1421241013,90,19,'1','1','1','0','0','0','0','2',5),(88025,1402598535,95,19,'1','1','3','0','0','0','0','1',5),(88026,1421240915,94,19,'1','1','1','0','0','0','0','1',5),(88552,1434375248,165,5,'2','2','2','2','0','2','2','2',4),(88028,1421241200,52,19,'2','2','3','0','0','0','0','2',5),(88720,1434547535,189,13,'1','1','2','0','1','1','2','0',4),(88030,1434542741,59,19,'3','2','1','0','0','0','0','2',5),(88031,1434542709,62,19,'1','3','1','0','0','0','0','2',5),(88551,1434375131,161,5,'2','2','2','3','0','2','2','2',4),(88033,1434542848,3,19,'2','2','2','0','0','0','3','2',5),(88034,1434542806,25,19,'2','1','3','0','0','0','2','1',5),(88035,1434542771,1,19,'1','1','1','0','0','0','1','1',5),(88550,1434375425,160,5,'2','3','2','2','0','2','2','2',4),(88037,1434542809,30,19,'1','1','2','0','0','0','1','1',5),(88549,1434375077,158,5,'2','2','2','2','0','2','2','2',4),(88191,1433594032,160,22,'3','3','0','0','0','0','2','2',26),(88190,1432827824,159,22,'2','2','0','0','0','0','2','2',26),(88189,1433408558,158,22,'3','2','0','0','0','0','2','2',26),(88188,1434221846,24,22,'2','1','0','0','0','0','2','2',16),(88187,1416575802,29,22,'2','1','0','0','0','0','1','1',16),(88186,1416575785,21,22,'2','2','0','0','0','0','1','2',16),(88185,1416575730,30,22,'1','1','0','0','0','0','1','1',28),(88160,1434375731,158,6,'2','2','2','2','2','2','2','2',4),(88161,1434375594,159,6,'2','2','1','2','1','2','2','2',4),(88053,1434615183,2,3,'3','2','3','3','2','2','1','2',25),(88249,1419079207,177,22,'2','2','0','0','0','0','2','2',26),(88248,1433594156,176,22,'3','2','0','0','0','0','2','2',26),(88247,1432487374,175,22,'2','2','0','0','0','0','1','1',26),(88246,1433594207,174,22,'2','2','0','0','0','0','2','2',26),(88245,1433408861,173,22,'2','1','0','0','0','0','2','2',26),(88244,1419079150,172,22,'2','2','0','0','0','0','2','2',26),(88243,1433594171,171,22,'2','2','0','0','0','0','2','2',26),(88061,1402780690,21,3,'2','0','2','2','1','0','1','0',25),(88062,1402780580,22,3,'2','0','2','3','2','0','0','0',25),(88063,1434615219,29,3,'2','0','3','3','2','0','0','0',25),(88064,1434615247,27,3,'3','0','3','3','3','0','0','0',25),(88065,1402780599,3,3,'1','0','2','1','1','0','0','0',25),(88066,1402780607,28,3,'1','0','2','1','1','0','0','0',25),(88067,1434615236,4,3,'3','0','2','2','1','0','0','0',25),(88068,1402780619,23,3,'2','0','2','2','1','0','0','0',25),(88069,1402780624,25,3,'1','0','1','1','1','0','0','0',25),(88070,1402780629,26,3,'1','0','2','1','1','0','0','0',25),(88071,1402780633,1,3,'1','0','1','1','1','0','0','0',25),(88072,1402780637,24,3,'2','0','2','2','1','0','0','0',25),(88073,1402780645,30,3,'1','0','1','1','1','0','0','0',25),(88747,1435326223,172,5,'0','0','0','0','0','0','2','0',23),(88746,1435326221,171,5,'0','0','0','0','0','0','2','0',23),(88745,1434959352,189,10,'2','2','2','0','0','0','0','0',29),(88184,1416575717,24,22,'1','1','0','0','0','0','1','1',28),(88183,1416575708,1,22,'1','1','0','0','0','0','1','1',28),(88182,1416575701,26,22,'1','1','0','0','0','0','1','1',28),(88181,1416575690,25,22,'1','1','0','0','0','0','1','1',28),(88180,1416575682,23,22,'2','1','0','0','0','0','1','1',28),(88179,1432835108,4,22,'2','3','0','0','0','0','1','2',28),(88178,1432835096,28,22,'2','2','0','0','0','0','1','1',28),(88177,1416575610,3,22,'1','1','0','0','0','0','1','1',28),(88176,1432835079,29,22,'1','1','0','0','0','0','1','1',28),(88175,1432835065,21,22,'1','2','0','0','0','0','1','1',28),(88174,1432835061,2,22,'2','2','0','0','0','0','1','1',28),(88173,1434375762,169,6,'1','1','1','1','1','2','2','1',4),(88172,1434375717,166,6,'1','1','1','1','1','2','2','1',4),(88171,1434375751,164,6,'1','1','1','1','1','2','2','1',4),(88170,1434375723,157,6,'1','1','1','1','1','2','2','1',4),(88169,1434375611,168,6,'3','2','2','2','3','3','2','3',4),(88168,1434375701,167,6,'2','2','2','2','2','2','1','2',4),(88167,1434375744,165,6,'3','2','2','2','2','2','2','2',4),(88166,1434375742,163,6,'2','2','2','2','2','2','2','2',4),(88162,1434375732,160,6,'3','3','2','2','2','2','2','2',4),(88163,1434375659,161,6,'2','2','3','2','2','3','2','2',4),(88164,1434375661,170,6,'2','2','1','2','2','3','2','2',4),(88165,1415873365,162,6,'2','2','2','2','2','2','2','2',4),(88359,1433840266,165,17,'2','2','2','2','2','2','2','2',12),(88358,1421095004,163,17,'2','2','2','2','2','2','2','2',12),(88357,1421095003,162,17,'2','2','2','2','2','2','2','2',12),(88356,1421095001,170,17,'2','2','2','2','2','2','2','2',12),(88355,1433840248,161,17,'2','2','3','2','2','2','2','2',12),(88354,1421094995,160,17,'2','2','2','2','2','2','2','2',12),(88353,1421094994,159,17,'2','2','2','2','2','2','2','2',12),(88352,1421094993,158,17,'2','2','2','2','2','2','2','2',12),(88343,1421045962,28,18,'2','2','0','0','0','2','2','2',11),(88342,1421045821,62,18,'2','2','0','0','0','2','2','2',11),(88433,1434546651,160,13,'3','3','2','0','0','0','2','0',17),(88434,1434546706,161,13,'3','3','2','0','0','0','3','0',17),(88435,1434546708,170,13,'3','3','2','0','0','3','3','0',17),(88436,1434546642,163,13,'2','2','2','0','0','0','2','0',17),(88437,1434546716,165,13,'3','3','3','0','0','0','3','0',17),(88438,1434546574,167,13,'1','2','1','0','0','0','2','0',17),(88439,1434546723,168,13,'3','3','2','0','0','0','3','0',17),(88440,1421160657,157,13,'1','1','1','0','0','1','1','0',17),(88441,1421160658,164,13,'1','1','1','0','0','1','1','0',17),(88442,1421160658,166,13,'1','1','1','0','0','1','1','0',17),(88443,1421160669,169,13,'1','1','1','0','0','1','1','0',17),(88458,1421162619,47,13,'0','0','2','0','0','0','1','0',17),(88459,1421162621,48,13,'0','0','2','0','0','0','1','0',17),(88460,1421162622,49,13,'0','0','2','0','0','0','2','0',17),(88461,1434546458,50,13,'0','0','2','0','0','0','2','0',17),(88462,1421162645,51,13,'0','0','2','0','0','0','3','0',17),(88463,1434546462,52,13,'0','0','2','0','0','0','2','0',17),(88464,1434546467,53,13,'0','0','2','0','0','0','1','0',17),(88465,1421162655,54,13,'0','0','1','0','0','0','1','0',17),(88466,1421162657,55,13,'0','0','1','0','0','0','1','0',17),(88467,1421162671,56,13,'0','0','1','0','0','0','1','0',17),(88468,1421162676,57,13,'0','0','1','0','0','0','1','0',17),(88469,1421162678,58,13,'0','0','1','0','0','0','1','0',17),(88470,1434546495,59,13,'0','0','1','0','0','0','1','0',17),(88471,1434546517,60,13,'0','0','1','0','0','0','1','0',17),(88472,1421162714,61,13,'0','0','1','0','0','0','1','0',17),(88473,1421162755,62,13,'0','0','1','0','0','0','1','0',17),(88492,1434536452,183,21,'2','2','2','2','2','2','1','1',5),(88493,1434537286,159,21,'2','2','1','2','2','2','2','2',29),(88494,1434537308,170,21,'2','2','3','2','2','2','2','2',29),(88495,1434537319,162,21,'2','2','2','2','2','2','2','2',29),(88496,1434537332,163,21,'2','2','2','2','2','2','2','2',29),(88497,1434537453,167,21,'2','2','2','2','2','0','1','1',29),(88498,1434537424,157,21,'2','2','2','2','1','0','1','1',29),(88499,1434537435,164,21,'1','2','1','2','1','0','1','1',29),(88500,1434537404,169,21,'2','1','2','2','1','0','1','1',29),(88501,1434537514,171,21,'2','2','2','2','1','2','1','2',29),(88502,1421169838,174,21,'2','2','2','1','2','0','1','1',29),(88503,1434537579,176,21,'3','2','2','2','2','3','2','2',29),(88504,1434537596,178,21,'3','2','2','0','2','2','2','2',29),(88505,1434537676,179,21,'2','2','2','2','2','2','2','2',29),(88506,1434537714,181,21,'2','2','2','2','2','2','1','1',29),(88507,1421170010,182,21,'1','1','2','0','2','0','1','1',29),(88508,1434537841,184,21,'1','1','2','2','1','0','1','1',29),(88509,1421236434,185,10,'2','2','2','0','0','0','0','0',29),(88510,1434372615,159,10,'3','2','2','0','0','0','0','0',3),(88511,1421237432,170,10,'2','2','2','0','0','0','0','0',3),(88512,1434372630,162,10,'2','2','2','0','0','0','0','0',3),(88513,1434372658,167,10,'2','1','1','0','0','0','0','0',3),(88514,1434372663,164,10,'1','2','1','0','0','0','0','0',3),(88515,1434372676,166,10,'1','1','2','0','0','0','0','0',3),(88516,1434372744,171,10,'2','2','2','0','0','0','0','0',3),(88517,1421237588,176,10,'3','2','2','0','0','0','0','0',3),(88518,1421237607,178,10,'2','2','2','0','0','0','0','0',3),(88519,1434372769,179,10,'2','2','1','0','0','0','0','0',3),(88520,1434373640,29,10,'1','2','2','0','0','0','0','0',15),(88521,1421239067,28,10,'1','2','2','0','0','0','0','0',15),(88522,1434373656,4,10,'3','2','2','0','0','0','0','0',15),(88523,1434373668,23,10,'1','2','2','0','0','0','0','0',15),(88529,1434373897,2,10,'2','2','2','0','0','0','0','0',19),(88530,1434373907,21,10,'2','2','1','0','0','0','0','0',19),(88531,1421239558,29,10,'1','2','2','0','0','0','0','0',19),(88532,1434373929,3,10,'2','2','2','0','0','0','0','0',19),(88533,1434373952,28,10,'1','2','2','0','0','0','0','0',19),(88534,1421239606,4,10,'2','2','2','0','0','0','0','0',19),(88535,1421239621,23,10,'1','2','2','0','0','0','0','0',19),(88536,1421239635,25,10,'1','2','1','0','0','0','0','0',19),(88537,1434373999,26,10,'1','2','2','0','0','0','0','0',19),(88538,1434374222,1,10,'2','2','2','0','0','0','0','0',19),(88539,1421239667,24,10,'2','2','1','0','0','0','0','0',19),(88540,1434374049,30,10,'1','2','1','0','0','0','0','0',19),(88541,1434542374,157,19,'1','1','1','0','0','0','0','1',5),(88542,1434542396,164,19,'2','2','1','0','0','0','0','1',5),(88543,1421240622,169,19,'1','1','1','0','0','0','0','1',5),(88544,1434542382,166,19,'1','1','1','0','0','0','0','1',5),(88545,1434542451,176,19,'2','2','2','0','0','0','0','3',5),(88546,1434542473,178,19,'2','2','2','0','0','0','0','1',5),(88547,1434524797,84,19,'2','2','1','0','0','0','0','2',5),(88548,1434542534,185,19,'2','2','1','0','0','0','0','2',5),(88553,1434375494,163,5,'2','2','2','2','0','1','2','2',3),(88554,1434375478,165,5,'2','2','2','3','0','2','2','2',3),(88555,1434375511,168,5,'2','3','2','2','0','2','2','2',3),(88556,1434375266,158,5,'2','2','2','0','2','2','2','2',29),(88557,1434375293,160,5,'2','3','2','0','2','2','2','2',29),(88558,1434375329,161,5,'2','2','3','0','2','2','2','2',29),(88559,1421252835,165,5,'3','2','3','0','3','2','2','2',29),(88560,1434375407,168,5,'2','2','2','0','2','2','2','2',29),(88561,1434375580,158,5,'2','0','2','2','2','2','2','2',8),(88562,1421253289,159,5,'2','0','2','2','2','2','2','2',8),(88563,1434375594,160,5,'2','0','1','2','2','3','2','2',8),(88564,1421253296,161,5,'2','0','2','2','2','2','2','2',8),(88565,1421308562,170,5,'2','0','2','3','2','2','2','2',8),(88566,1421253063,162,5,'2','0','0','0','0','0','0','0',8),(88567,1421253303,163,5,'2','0','2','2','2','2','2','2',8),(88568,1434375636,165,5,'3','0','2','2','2','2','2','2',8),(88569,1421308623,167,5,'2','0','2','2','2','2','2','2',8),(88570,1421253311,168,5,'2','0','2','2','2','2','2','2',8),(88571,1434378058,171,5,'2','0','2','2','1','2','2','1',9),(88572,1434378225,172,5,'3','0','2','2','2','2','2','2',9),(88573,1421254070,173,5,'1','0','1','2','1','2','2','1',9),(88574,1434378278,174,5,'2','0','2','2','2','2','1','2',9),(88575,1421254087,175,5,'1','0','1','2','2','2','2','2',9),(88576,1434378440,176,5,'3','0','2','2','3','2','3','2',9),(88577,1434378452,177,5,'2','0','2','2','2','2','2','2',9),(88578,1434378473,178,5,'2','0','2','2','2','2','2','1',9),(88579,1434378486,179,5,'2','0','2','2','2','2','2','2',9),(88580,1434378507,180,5,'2','0','2','2','2','2','1','2',9),(88581,1434378532,181,5,'2','0','2','2','2','2','1','1',9),(88582,1434378550,182,5,'1','0','2','2','2','2','1','1',9),(88583,1434378572,183,5,'2','0','2','2','2','2','1','1',9),(88584,1434378584,184,5,'1','0','2','2','2','2','1','1',9),(88585,1434376078,171,5,'2','2','2','1','2','2','2','2',19),(88586,1434376113,172,5,'3','2','3','3','2','2','2','2',19),(88587,1434376143,173,5,'1','1','1','2','1','1','2','2',19),(88588,1434376161,174,5,'3','2','2','2','2','2','1','2',19),(88589,1434376186,175,5,'1','2','2','2','1','2','1','1',19),(88590,1434376221,176,5,'2','3','2','2','3','2','3','2',19),(88591,1434376260,177,5,'2','2','2','2','2','2','2','2',19),(88592,1421339127,178,5,'2','2','2','2','2','2','2','2',19),(88593,1434376312,179,5,'2','2','2','2','2','2','2','2',19),(88594,1434376345,180,5,'2','2','2','3','2','2','1','2',19),(88595,1421339146,181,5,'2','2','2','2','2','2','1','1',19),(88596,1434376395,182,5,'1','2','2','2','2','2','1','1',19),(88597,1421339151,183,5,'2','2','2','2','2','1','1','1',19),(88598,1434376402,184,5,'2','2','2','2','2','2','1','1',19),(88744,1434698879,189,22,'2','2','0','0','0','0','2','1',26),(88748,1435326225,173,5,'0','0','0','0','0','0','2','0',23),(88749,1435326229,174,5,'0','0','0','0','0','0','1','0',23),(88750,1435326232,175,5,'0','0','0','0','0','0','1','0',23),(88751,1435326233,176,5,'0','0','0','0','0','0','3','0',23),(88752,1435326237,177,5,'0','0','0','0','0','0','2','0',23),(88753,1435326238,178,5,'0','0','0','0','0','0','1','0',23),(88754,1435326241,179,5,'0','0','0','0','0','0','2','0',23),(88755,1435326244,180,5,'0','0','0','0','0','0','2','0',23),(88756,1435326258,181,5,'0','0','0','0','0','0','1','0',23),(88757,1435326250,182,5,'0','0','0','0','0','0','1','0',23),(88758,1435326251,183,5,'0','0','0','0','0','0','1','0',23),(88759,1435326254,184,5,'0','0','0','0','0','0','1','0',23);
/*!40000 ALTER TABLE `tl_voting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-14 21:22:44
