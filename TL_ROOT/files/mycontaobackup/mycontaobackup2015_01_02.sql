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
  KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_article`
--

LOCK TABLES `tl_article` WRITE;
/*!40000 ALTER TABLE `tl_article` DISABLE KEYS */;
INSERT INTO `tl_article` VALUES (3,4,128,1391721164,'Beurteilen Und Fördern','buf',1,'main',NULL,'','',NULL,'','',NULL,'','','','1','','',''),(8,7,128,1402652718,'Passwort vergessen','passwort-vergessen',3,'main',NULL,'','',NULL,'','',NULL,'','','','1','','',''),(9,8,128,1402671444,'passwort_reset_confirm','passwort_reset_confirm',3,'main',NULL,'','',NULL,'','',NULL,'','','','1','','','');
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
  KEY `pid` (`pid`)
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
INSERT INTO `tl_class` VALUES (3,'ISS 9.1',1407588443),(9,'ISS 8.1',1407588443),(10,'ISS 8.2',1407588443),(11,'ISS 9.2',1407588443),(40,'ISS 7.1',1415872363),(41,'ISS 7.2',1407588466);
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
  KEY `parent` (`parent`)
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
  KEY `tokenRemove` (`tokenRemove`)
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
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_content`
--

LOCK TABLES `tl_content` WRITE;
/*!40000 ALTER TABLE `tl_content` DISABLE KEYS */;
INSERT INTO `tl_content` VALUES (8,3,'tl_article',128,1392995055,'module','',NULL,'',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,4,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','',''),(25,8,'tl_article',128,1402672944,'headline','a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:22:\"Passwort zurücksetzen\";}',NULL,'',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','',''),(26,8,'tl_article',256,1402652799,'module','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:24:\"Neues Passwort anfordern\";}',NULL,'',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,7,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','',''),(27,9,'tl_article',128,1402672057,'text','a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:23:\"Passwort zurückgesetzt\";}','<p>In Kürze wirst du eine email mit dem Aktivierungslink erhalten.<br>Bitte folge den Anweisungen, um dein Passwort zurückzusetzen.<br>Liebe Grüsse</p>\n<p>Marko</p>','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','',''),(28,8,'tl_article',384,1402816045,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p><strong>Hinweise zur Passwortrücksetzung:<br></strong>Der <strong>Benutzername</strong> besteht aus deinem Vor- und Nachnamen (alles kleingeschrieben und ohne Leerschlag).<br>Als <strong>E-Mail-Adresse</strong> dient standardmässig die educanet2 Adresse.</p>','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,7,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','');
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
INSERT INTO `tl_cron` VALUES (1,'lastrun','1419078360'),(2,'monthly','201412'),(3,'weekly','201451'),(4,'daily','20141220'),(5,'hourly','0'),(6,'minutely','0');
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
  KEY `pid` (`pid`)
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
  KEY `extension` (`extension`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_files`
--

LOCK TABLES `tl_files` WRITE;
/*!40000 ALTER TABLE `tl_files` DISABLE KEYS */;
INSERT INTO `tl_files` VALUES (1,NULL,1390731602,'j�Z��s��\0%�	W�','folder','files/music_academy','','6b19950b3b045d9cd7c0d5a05497c8c4','1','music_academy',NULL,0,0,0,0),(2,'j�Z��s��\0%�	W�',1390731602,'j�Z~�s��\0%�	W�','folder','files/music_academy/campus','','ad80e0071bea96273bd184fe24c8f6c0','1','campus',NULL,0,0,0,0),(3,'j�Z~�s��\0%�	W�',1390731602,'j�Zj�s��\0%�	W�','file','files/music_academy/campus/campus_building.jpg','jpg','a0ac423df6265537c7b1783ed9cbb698','1','campus_building.jpg',NULL,0,0,0,0),(4,'j�Z~�s��\0%�	W�',1390731602,'j�ZL�s��\0%�	W�','file','files/music_academy/campus/campus_hall.jpg','jpg','16074d6c3e3dfeb23d580715f486bff2','1','campus_hall.jpg',NULL,0,0,0,0),(5,'j�Z~�s��\0%�	W�',1390731602,'j�Z8�s��\0%�	W�','file','files/music_academy/campus/campus_library.jpg','jpg','1795dc0db4a1efcd2c390e3969ac3d3b','1','campus_library.jpg',NULL,0,0,0,0),(6,'j�Z~�s��\0%�	W�',1390731602,'j�Z\Z�s��\0%�	W�','file','files/music_academy/campus/campus_overview.jpg','jpg','12360a385a87413fa9914d9f4b0f3113','1','campus_overview.jpg',NULL,0,0,0,0),(7,'j�Z��s��\0%�	W�',1390731602,'j�Y��s��\0%�	W�','file','files/music_academy/admin.gif','gif','37173d258871c781db2c025060e4f8ab','1','admin.gif',NULL,0,0,0,0),(8,'j�Z��s��\0%�	W�',1390731602,'j�Y�s��\0%�	W�','file','files/music_academy/background.gif','gif','b2a05c65803733133c981a2d4e386968','1','background.gif',NULL,0,0,0,0),(9,'j�Z��s��\0%�	W�',1390731602,'j�Yʆs��\0%�	W�','file','files/music_academy/frontendmodules.gif','gif','4f697b474f6d1e66f442c1c67d574a99','1','frontendmodules.gif',NULL,0,0,0,0),(10,'j�Z��s��\0%�	W�',1390731602,'j�Y��s��\0%�	W�','file','files/music_academy/image.png','png','cb636d32a257f7b6337b7392afeab02d','1','image.png',NULL,0,0,0,0),(11,'j�Z��s��\0%�	W�',1390731602,'j�W:�s��\0%�	W�','file','files/music_academy/james-wilson.jpg','jpg','fd894d798786066577c9de8cbe9c1e38','1','james-wilson.jpg',NULL,0,0,0,0),(12,'j�Z��s��\0%�	W�',1390731602,'j�W&�s��\0%�	W�','file','files/music_academy/layout.gif','gif','ec5793c27e75e0426a69202d876733e2','1','layout.gif',NULL,0,0,0,0),(13,'j�Z��s��\0%�	W�',1390731602,'j�W�s��\0%�	W�','file','files/music_academy/modules.gif','gif','cefbcdcc5facb958977376f2c46367dc','1','modules.gif',NULL,0,0,0,0),(14,'j�Z��s��\0%�	W�',1390731602,'j�W�s��\0%�	W�','file','files/music_academy/news.gif','gif','ee4c7b3e72fb750033036036176feace','1','news.gif',NULL,0,0,0,0),(15,'j�Z��s��\0%�	W�',1390731602,'j�V��s��\0%�	W�','file','files/music_academy/pagemounts.gif','gif','1317e91c34333dfd9bad071dd43e9f39','1','pagemounts.gif',NULL,0,0,0,0),(16,'j�Z��s��\0%�	W�',1390731602,'j�V�s��\0%�	W�','file','files/music_academy/permissions.gif','gif','edc93c562d750ea9e0b20052298f4aa5','1','permissions.gif',NULL,0,0,0,0),(17,'j�Z��s��\0%�	W�',1390731602,'j�V��s��\0%�	W�','file','files/music_academy/protect.gif','gif','7d8c259b52dc2fe5ccd8b8ea7e8090fb','1','protect.gif',NULL,0,0,0,0),(18,'j�Z��s��\0%�	W�',1390731602,'j�V̆s��\0%�	W�','file','files/music_academy/screenshot.jpg','jpg','bc787a96a23265d4de60c9d1c8e21580','1','screenshot.jpg',NULL,0,0,0,0),(19,NULL,1390731602,'j�Vs��\0%�	W�','folder','files/tiny_templates','','3cb25412587bbaedd9901598abd93284','1','tiny_templates',NULL,0,0,0,0),(20,'j�Vs��\0%�	W�',1390731602,'j�V��s��\0%�	W�','file','files/tiny_templates/index.html','html','aeebec42dc0335ea1e0853f4393259b4','1','index.html',NULL,0,0,0,0),(21,NULL,1390731602,'j��D�s��\0%�	W�','file','files/tinymce.css','css','e6cfd2993ed50341da010e66be287d2d','1','tinymce.css',NULL,0,0,0,0),(45,'�������\0%�	W�',1395693911,'1�g³���\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_24.sql','sql','cc130e90fb61e04d53942157b8658d27','1','mycontaobackup2014_03_24.sql',NULL,0,0,0,0),(46,'�������\0%�	W�',1395731595,'�������\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_25.sql','sql','cd46fa5fc39a5758874de041b86373f6','1','mycontaobackup2014_03_25.sql',NULL,0,0,0,0),(44,'�������\0%�	W�',1395501561,'W�ؘ����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_22.sql','sql','5fe587d0fe35f0886e75b83f16d60193','1','mycontaobackup2014_03_22.sql',NULL,0,0,0,0),(43,'�������\0%�	W�',1394298160,'u.^����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_08.sql','sql','8da73313aca4b44f23cde66b40c87f0b','1','mycontaobackup2014_03_08.sql',NULL,0,0,0,0),(42,'�������\0%�	W�',1394235796,'Av�\Z�R��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_07.sql','sql','338fe8c4a167b14ad2b0c50f477eec4b','1','mycontaobackup2014_03_07.sql',NULL,0,0,0,0),(41,'�������\0%�	W�',1394095363,'H�fH���\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_06.sql','sql','f6b20733ee6c5cfeaeb21f11e6aabd19','1','mycontaobackup2014_03_06.sql',NULL,0,0,0,0),(40,'�������\0%�	W�',1394013373,'b�ꊤL��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_05.sql','sql','7d7306046452eafc9c92ebe1b6a97ff2','1','mycontaobackup2014_03_05.sql',NULL,0,0,0,0),(39,'�������\0%�	W�',1393943198,'�T�|����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_04.sql','sql','d41d8cd98f00b204e9800998ecf8427e','1','mycontaobackup2014_03_04.sql',NULL,0,0,0,0),(38,NULL,1393942769,'�������\0%�	W�','folder','files/mycontaobackup','','be75e979677234890d32839073e1bd0b','1','mycontaobackup',NULL,0,0,0,0),(37,NULL,1393941394,'\Z�����\0%�	W�','file','files/Ettiswil.csv','csv','661e3b80e530309df4b15eb89bfb05aa','1','Ettiswil.csv',NULL,0,0,0,0),(47,'�������\0%�	W�',1395827435,'T�z����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_26.sql','sql','d16c7c7490b4a451609c68eb82986674','1','mycontaobackup2014_03_26.sql',NULL,0,0,0,0),(48,'�������\0%�	W�',1395895933,'�]뢵k��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_27.sql','sql','b10a724d22d201e52f3b218bef3a5a4a','1','mycontaobackup2014_03_27.sql',NULL,0,0,0,0),(49,'�������\0%�	W�',1395984180,'P�9��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_28.sql','sql','905f77b93f0e07c9f231fdca2361b087','1','mycontaobackup2014_03_28.sql',NULL,0,0,0,0),(50,'�������\0%�	W�',1396081770,'?��|���\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_29.sql','sql','70a96c2d0819c470602ab567a42e144a','1','mycontaobackup2014_03_29.sql',NULL,0,0,0,0),(51,'�������\0%�	W�',1396249723,'K�J�����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_31.sql','sql','377053911fcc1179c7841dc68d94e804','1','mycontaobackup2014_03_31.sql',NULL,0,0,0,0),(52,'�������\0%�	W�',1396335446,'�\Z�z�j��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_01.sql','sql','6e38ea6074700b8ced785a1bbef49ec5','1','mycontaobackup2014_04_01.sql',NULL,0,0,0,0),(53,'�������\0%�	W�',1396417297,'t�켺)��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_02.sql','sql','2d8aa2d10924012d45b166a6e5e74123','1','mycontaobackup2014_04_02.sql',NULL,0,0,0,0),(54,'�������\0%�	W�',1396686464,')�q�����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_05.sql','sql','51e6f5a686e812c4bb2a15ad0e49ef2c','1','mycontaobackup2014_04_05.sql',NULL,0,0,0,0),(55,'�������\0%�	W�',1397591723,'�������\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_15.sql','sql','409e3e0a10b9b24056378d45f3d754d4','1','mycontaobackup2014_04_15.sql',NULL,0,0,0,0),(56,'�������\0%�	W�',1397626803,'��U��)��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_16.sql','sql','0d17456901c05fd5f69f381af5916749','1','mycontaobackup2014_04_16.sql',NULL,0,0,0,0),(57,'�������\0%�	W�',1398591615,'����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_27.sql','sql','2dbb47a89558778c70d86d0d002b0c57','1','mycontaobackup2014_04_27.sql',NULL,0,0,0,0),(58,'�������\0%�	W�',1399471411,'^˩����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_07.sql','sql','fa2f785829490b6215d273837c229a18','1','mycontaobackup2014_05_07.sql',NULL,0,0,0,0),(59,'�������\0%�	W�',1399536044,'�c��ֆ��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_08.sql','sql','eb63c85127cf3ef756f6829eab33ec8a','1','mycontaobackup2014_05_08.sql',NULL,0,0,0,0),(60,'�������\0%�	W�',1399668544,'[M�x׻��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_09.sql','sql','30d47ab45c38a42c5900a5a9e3450e3f','1','mycontaobackup2014_05_09.sql',NULL,0,0,0,0),(61,'�������\0%�	W�',1399732173,'��-��O��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_10.sql','sql','011dc12bb008e29a44228adeccf6b0ea','1','mycontaobackup2014_05_10.sql',NULL,0,0,0,0),(62,'�������\0%�	W�',1399803348,'8�$B����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_11.sql','sql','5275cfa344067880fc13fda53133b271','1','mycontaobackup2014_05_11.sql',NULL,0,0,0,0),(63,'�������\0%�	W�',1399879406,'O\Z�L٦��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_12.sql','sql','26c517305826e2eb618789ba252b6d3f','1','mycontaobackup2014_05_12.sql',NULL,0,0,0,0),(64,'�������\0%�	W�',1400067953,'M��]��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_14.sql','sql','bc01c8dee0ff3a3c2e9ba0c17b614dd7','1','mycontaobackup2014_05_14.sql',NULL,0,0,0,0),(65,'�������\0%�	W�',1400529004,'źj�ߎ�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_19.sql','sql','36f49e464b0b564c774890925eb90834','1','mycontaobackup2014_05_19.sql',NULL,0,0,0,0),(66,'�������\0%�	W�',1400827122,'���D�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_23.sql','sql','575290706fd86987d0ccbb61fe5d11bd','1','mycontaobackup2014_05_23.sql',NULL,0,0,0,0),(67,'�������\0%�	W�',1401031806,'rֆ|�!�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_25.sql','sql','2050698089a49e7878a8b38d604c3f42','1','mycontaobackup2014_05_25.sql',NULL,0,0,0,0),(68,'�������\0%�	W�',1401089095,'����)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_26.sql','sql','5296c92f845691a94a5f111b7d46ee0e','1','mycontaobackup2014_05_26.sql',NULL,0,0,0,0),(69,'�������\0%�	W�',1401221881,'\0~M����)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_27.sql','sql','11f49d65ac57ba90fcb823749a1a026a','1','mycontaobackup2014_05_27.sql',NULL,0,0,0,0),(70,'�������\0%�	W�',1401255151,'v�L��)�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_28.sql','sql','9db18c06a806a6ff9b2aef8870ca5c59','1','mycontaobackup2014_05_28.sql',NULL,0,0,0,0),(71,'�������\0%�	W�',1401891041,'�6,���)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_04.sql','sql','f4ec6bc4d4bf5fc2d5cb1f9c51a8c936','1','mycontaobackup2014_06_04.sql',NULL,0,0,0,0),(72,'�������\0%�	W�',1401959543,'�H�\n��)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_05.sql','sql','42a0d8cefbb89625e0084300ddd50de3','1','mycontaobackup2014_06_05.sql',NULL,0,0,0,0),(73,'�������\0%�	W�',1402039215,'��\n�K�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_06.sql','sql','0f4e7bb185ed3c8b1a75d2a0fc5625ea','1','mycontaobackup2014_06_06.sql',NULL,0,0,0,0),(74,'�������\0%�	W�',1402294688,'�jmZ��)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_09.sql','sql','aa09a018dbf81479c4266b44ac74861a','1','mycontaobackup2014_06_09.sql',NULL,0,0,0,0),(75,'�������\0%�	W�',1402380693,'68��f�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_10.sql','sql','92a0bd5ec4c9535a437fa026bb55c7b3','1','mycontaobackup2014_06_10.sql',NULL,0,0,0,0),(76,'�������\0%�	W�',1402469060,'����3�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_11.sql','sql','a297acb891c9dbb38a6f7769b1c17b6b','1','mycontaobackup2014_06_11.sql',NULL,0,0,0,0),(77,'�������\0%�	W�',1402547382,',�\Z<���)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_12.sql','sql','a6f3a59433654b6b7b2eb83468dc4910','1','mycontaobackup2014_06_12.sql',NULL,0,0,0,0),(78,'�������\0%�	W�',1402637144,'*�e���)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_13.sql','sql','b6a27350adc59b03c56170c567435328','1','mycontaobackup2014_06_13.sql',NULL,0,0,0,0),(79,'�������\0%�	W�',1402738001,'�JT���)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_14.sql','sql','f0d5c3bed246ac76223bd1053ede8672','1','mycontaobackup2014_06_14.sql',NULL,0,0,0,0),(80,'�������\0%�	W�',1402815662,'��B�Z�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_15.sql','sql','47e8fee386d40f3cf93537dddb7a0fd5','1','mycontaobackup2014_06_15.sql',NULL,0,0,0,0),(81,'�������\0%�	W�',1402896821,'�B^t��)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_16.sql','sql','a6f81ee5d9b81dd695cf441d435e450b','1','mycontaobackup2014_06_16.sql',NULL,0,0,0,0),(82,'�������\0%�	W�',1403017926,'�ށV�1�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_17.sql','sql','e12eb8a4612649c5a40878694a941046','1','mycontaobackup2014_06_17.sql',NULL,0,0,0,0),(83,'�������\0%�	W�',1404143334,'\n�Z\0n�t\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_30.sql','sql','c53c49bb75c2273acbfe30d7aeac835e','1','mycontaobackup2014_06_30.sql',NULL,0,0,0,0),(84,'�������\0%�	W�',1404227584,'2�{�2�c\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_07_01.sql','sql','f606ff8da89536dd40e9d0445c6fc509','1','mycontaobackup2014_07_01.sql',NULL,0,0,0,0),(85,'�������\0%�	W�',1405663495,'p�|A�2\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_07_18.sql','sql','9991138527eecfb4a4fa92b4783100c8','1','mycontaobackup2014_07_18.sql',NULL,0,0,0,0),(86,'�������\0%�	W�',1405797273,'�v�x�2\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_07_19.sql','sql','604b00f15eb4a5b1899efe0eb929ca8b','1','mycontaobackup2014_07_19.sql',NULL,0,0,0,0),(87,'�������\0%�	W�',1407352000,'�%�����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_06.sql','sql','29a4321ec4fa3c9ff3582f51f3c71a13','1','mycontaobackup2014_08_06.sql',NULL,0,0,0,0),(88,'�������\0%�	W�',1407416881,'�S�3��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_07.sql','sql','02209e1fb8cf59cc33ab02385ca840b9','1','mycontaobackup2014_08_07.sql',NULL,0,0,0,0),(89,'�������\0%�	W�',1407522983,'����*�7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_08.sql','sql','36d4cb5398082912ac35054be80ba5e6','1','mycontaobackup2014_08_08.sql',NULL,0,0,0,0),(90,'�������\0%�	W�',1407588342,'��t��7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_09.sql','sql','2ad06d1af78139f0146f32b8a691b391','1','mycontaobackup2014_08_09.sql',NULL,0,0,0,0),(91,'�������\0%�	W�',1407697162,'p�� ��7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_10.sql','sql','4d2ade48e07d6571834f7c61a219929f','1','mycontaobackup2014_08_10.sql',NULL,0,0,0,0),(92,'�������\0%�	W�',1408129732,'����$��7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_15.sql','sql','20dcf673f687957c5c8cf6608481e307','1','mycontaobackup2014_08_15.sql',NULL,0,0,0,0),(93,'�������\0%�	W�',1408451079,'�Ql\'��7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_19.sql','sql','0bc2bb31d49b467a17ab80eed37ca4ac','1','mycontaobackup2014_08_19.sql',NULL,0,0,0,0),(94,'�������\0%�	W�',1415872435,'��&hk\Z䥃\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_11_13.sql','sql','2a1b4adef7fb35197eed8d401c4cbfc3','1','mycontaobackup2014_11_13.sql',NULL,0,0,0,0),(95,'�������\0%�	W�',1416066086,'��\0\\l��N\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_11_15.sql','sql','c01326ffe07eeed338e8418e75d7d653','1','mycontaobackup2014_11_15.sql',NULL,0,0,0,0),(96,'�������\0%�	W�',1416574297,'!�j�q}�N\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_11_21.sql','sql','ae148c14a920304faac66800cb2e0b1e','1','mycontaobackup2014_11_21.sql',NULL,0,0,0,0),(97,'�������\0%�	W�',1416985209,'����u9�N\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_11_26.sql','sql','c65abd255fcf8f10775f8704f4ed6695','1','mycontaobackup2014_11_26.sql',NULL,0,0,0,0),(98,'�������\0%�	W�',1417809293,'�6(\Z|�䌍\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_12_05.sql','sql','ceb8a423399e7da0600c121f029988d1','1','mycontaobackup2014_12_05.sql',NULL,0,0,0,0),(99,'�������\0%�	W�',1418747042,'��?��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_12_16.sql','sql','0aa01d57a721b88611edc2e29719b0f2','1','mycontaobackup2014_12_16.sql',NULL,0,0,0,0),(100,'�������\0%�	W�',1418803163,'�W�t����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_12_17.sql','sql','3e7d95d3b0fe5a8c3410b8d109664e36','1','mycontaobackup2014_12_17.sql',NULL,0,0,0,0),(101,'�������\0%�	W�',1419078385,'i�\Z�C�Q\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_12_20.sql','sql','4844c932838997eb63d953504292858d','1','mycontaobackup2014_12_20.sql',NULL,0,0,0,0),(102,'�������\0%�	W�',1419318126,'��\'6�q䲝\0%��q�','file','files/mycontaobackup/mycontaobackup2014_12_23.sql','sql','19729847abebc46ca0c8c361864ed099','1','mycontaobackup2014_12_23.sql',NULL,0,0,0,0);
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
  `fileSRC` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_import_from_csv`
--

LOCK TABLES `tl_import_from_csv` WRITE;
/*!40000 ALTER TABLE `tl_import_from_csv` DISABLE KEYS */;
INSERT INTO `tl_import_from_csv` VALUES (1,1393941961,'tl_student',';','','append_entries','a:4:{i:0;s:6:\"gender\";i:1;s:8:\"lastname\";i:2;s:9:\"firstname\";i:3;s:5:\"class\";}','\Z�����\0%�	W�');
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
) ENGINE=MyISAM AUTO_INCREMENT=4453 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_log`
--

LOCK TABLES `tl_log` WRITE;
/*!40000 ALTER TABLE `tl_log` DISABLE KEYS */;
INSERT INTO `tl_log` VALUES (4452,1419089912,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.194.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4451,1419088790,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.194.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4450,1419081031,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.194.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4448,1419078391,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.194.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4449,1419078392,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.194.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4447,1419078390,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.194.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4446,1418810501,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4445,1418810449,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4444,1418803481,'BE','GENERAL','administrator','A new entry &quot;tl_member.id=30&quot; has been created','Contao\\DC_Table::create','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4443,1418803397,'BE','GENERAL','administrator','DELETE FROM tl_member WHERE id=16','Contao\\DC_Table::delete','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4442,1418803381,'BE','GENERAL','administrator','A new version of record &quot;tl_member.id=29&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4441,1418803381,'BE','GENERAL','administrator','A new version of record &quot;tl_member.id=29&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4440,1418803316,'BE','GENERAL','administrator','A new entry &quot;tl_member.id=29&quot; has been created','Contao\\DC_Table::create','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4439,1418803305,'BE','GENERAL','administrator','DELETE FROM tl_member WHERE id=27','Contao\\DC_Table::delete','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4438,1418803221,'BE','ACCESS','administrator','User &quot;administrator&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4437,1418803218,'BE','ACCESS','administrator','User &quot;administrator&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4436,1418749681,'FE','ACCESS','','Could not find the session record','Contao\\User::authenticate','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4435,1418749675,'FE','ACCESS','','Could not find the session record','Contao\\User::authenticate','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4433,1418749674,'FE','ACCESS','','Could not find the session record','Contao\\User::authenticate','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4434,1418749675,'FE','ACCESS','','Could not find the session record','Contao\\User::authenticate','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4432,1418749674,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4431,1418747820,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4430,1418747676,'FE','ACCESS','','Could not find the session record','Contao\\User::authenticate','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4429,1418747676,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4428,1418747628,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4427,1418747626,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4426,1418747503,'FE','ACCESS','','Invalid password submitted for username &quot;heinztroxler&quot;','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4425,1418747451,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4424,1418747446,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4423,1418747446,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4422,1418747446,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4421,1418747446,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4420,1418747446,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4419,1418747446,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0'),(4418,1417811002,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4417,1417809299,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4416,1417809299,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4415,1417809299,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4414,1417809299,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4413,1417809299,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4412,1417809299,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4411,1417809299,'FE','CRON','','Purged the image cache','Contao\\Automator::purgeImageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4410,1417809299,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4409,1417006425,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4408,1417006140,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36'),(4407,1416985355,'FE','ACCESS','','A new password has been requested for user ID 5 (mathias.schaer@ettiswil.educanet2.ch)','Contao\\ModulePassword::sendPasswordLink','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4406,1416985280,'FE','ACCESS','','Could not find user &quot;mathias.schaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4405,1416985248,'FE','ACCESS','','Invalid password submitted for username &quot;mathiasschaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4404,1416985224,'FE','ACCESS','','Could not find user &quot;mathias.schaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4403,1416985215,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4402,1416985215,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4401,1416985215,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4400,1416985214,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4399,1416985214,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4398,1416985214,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36'),(4397,1416578149,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4396,1416574308,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4395,1416574303,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4394,1416574303,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4393,1416574303,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4392,1416574303,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4391,1416574303,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4390,1416574303,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4389,1416066215,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4388,1416066120,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4387,1416066099,'FE','ACCESS','','Could not find user &quot;josef bieri&quot;','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4386,1416066093,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4385,1416066093,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4384,1415872494,'FE','ACCESS','denisetschopp','User &quot;denisetschopp&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4383,1415872443,'FE','ACCESS','denisetschopp','User &quot;denisetschopp&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4382,1415872408,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=6&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4381,1415872347,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4380,1415872343,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4379,1415872343,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4378,1415872343,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4377,1415872343,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4376,1415872343,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4375,1415872343,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4374,1415872343,'FE','CRON','','Purged the image cache','Contao\\Automator::purgeImageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4373,1415872342,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),(4372,1407598815,'BE','CRON','administrator','Purged the internal cache','Contao\\Automator::purgeInternalCache','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4371,1407598815,'BE','REPOSITORY','administrator','Extension &quot;import_from_csv&quot; has been updated to version &quot;1.0.1&quot;','RepositoryManager::updateExtension','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4370,1407598815,'BE','CRON','administrator','Purged the internal cache','Contao\\Automator::purgeInternalCache','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4369,1407598814,'BE','REPOSITORY','administrator','Extension &quot;ajax&quot; has been updated to version &quot;1.1.6&quot;','RepositoryManager::updateExtension','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4368,1407598805,'BE','ACCESS','administrator','User &quot;administrator&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4367,1407597753,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; NP06; tb-gmx/2.5.1; rv:11.0) like Gecko'),(4366,1407590621,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4365,1407590603,'BE','GENERAL','markocupic','A new version of record &quot;tl_user.id=1&quot; has been created','Contao\\DC_Table::overrideAll','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4364,1407590603,'BE','GENERAL','markocupic','A new version of record &quot;tl_user.id=3&quot; has been created','Contao\\DC_Table::overrideAll','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4363,1407590566,'BE','CRON','markocupic','Purged the internal cache','Contao\\Automator::purgeInternalCache','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4362,1407590562,'BE','CRON','markocupic','Purged the internal cache','Contao\\Automator::purgeInternalCache','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4361,1407590562,'BE','REPOSITORY','markocupic','Extension &quot;import_from_csv&quot; has been updated to version &quot;1.0.1&quot;','RepositoryManager::updateExtension','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4360,1407590561,'BE','CRON','markocupic','Purged the internal cache','Contao\\Automator::purgeInternalCache','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4359,1407590561,'BE','REPOSITORY','markocupic','Extension &quot;ajax&quot; has been updated to version &quot;1.1.6&quot;','RepositoryManager::updateExtension','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4358,1407590553,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4357,1407588641,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4356,1407588567,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4355,1407588541,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=6&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4354,1407588500,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=5&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4353,1407588466,'BE','GENERAL','markocupic','A new version of record &quot;tl_class.id=41&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4352,1407588460,'BE','GENERAL','markocupic','A new entry &quot;tl_class.id=41&quot; has been created','Contao\\DC_Table::create','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4351,1407588457,'BE','GENERAL','markocupic','A new version of record &quot;tl_class.id=40&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4350,1407588451,'BE','GENERAL','markocupic','A new entry &quot;tl_class.id=40&quot; has been created','Contao\\DC_Table::create','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4349,1407588443,'BE','GENERAL','markocupic','A new version of record &quot;tl_class.id=9&quot; has been created','Contao\\DC_Table::editAll','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4348,1407588443,'BE','GENERAL','markocupic','A new version of record &quot;tl_class.id=10&quot; has been created','Contao\\DC_Table::editAll','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4347,1407588443,'BE','GENERAL','markocupic','A new version of record &quot;tl_class.id=3&quot; has been created','Contao\\DC_Table::editAll','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4346,1407588421,'BE','GENERAL','markocupic','A new version of record &quot;tl_class.id=11&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4345,1407588414,'BE','GENERAL','markocupic','DELETE FROM tl_class WHERE id=12','Contao\\DC_Table::delete','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4344,1407588411,'BE','GENERAL','markocupic','DELETE FROM tl_class WHERE id=13','Contao\\DC_Table::delete','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4343,1407588356,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4342,1407588347,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4341,1407588347,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4340,1407416990,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4339,1407416981,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4338,1407416936,'FE','ACCESS','','Could not find user &quot;josef bieri&quot;','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4337,1407416899,'FE','ACCESS','','Could not find user &quot;josef bieri&quot;','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4336,1407416893,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4335,1407416893,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4334,1407416893,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4333,1407416893,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4332,1407416893,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4331,1407416893,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4330,1407416893,'FE','CRON','','Purged the image cache','Contao\\Automator::purgeImageCache','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4329,1407416893,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36'),(4328,1404227599,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4327,1404143378,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4326,1404143359,'FE','ACCESS','','Invalid password submitted for username &quot;mathiasschaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4325,1404143342,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4324,1404143342,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4322,1404143342,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4323,1404143342,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4321,1404143342,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4320,1404143342,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4319,1403030896,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36'),(4318,1403030833,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Android; Mobile; rv:30.0) Gecko/30.0 Firefox/30.0'),(4316,1403030829,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','178.193.204.0','Mozilla/5.0 (Android; Mobile; rv:30.0) Gecko/30.0 Firefox/30.0'),(4317,1403030829,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','178.193.204.0','Mozilla/5.0 (Android; Mobile; rv:30.0) Gecko/30.0 Firefox/30.0'),(4315,1403030829,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','178.193.204.0','Mozilla/5.0 (Android; Mobile; rv:30.0) Gecko/30.0 Firefox/30.0'),(4314,1403030829,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','178.193.204.0','Mozilla/5.0 (Android; Mobile; rv:30.0) Gecko/30.0 Firefox/30.0'),(4313,1403030829,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','178.193.204.0','Mozilla/5.0 (Android; Mobile; rv:30.0) Gecko/30.0 Firefox/30.0'),(4312,1403030829,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','178.193.204.0','Mozilla/5.0 (Android; Mobile; rv:30.0) Gecko/30.0 Firefox/30.0'),(4311,1402928809,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:17.0) Gecko/20100101 Firefox/17.0'),(4310,1402927907,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4309,1402922076,'FE','ACCESS','denisetschopp','User &quot;denisetschopp&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4308,1402920121,'FE','ACCESS','denisetschopp','User &quot;denisetschopp&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4307,1402920021,'FE','ACCESS','','A new password has been requested for user ID 6 (denise.tschopp@ettiswil.educanet2.ch)','Contao\\ModulePassword::sendPasswordLink','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4306,1402919985,'FE','ACCESS','','Could not find user &quot;denise.tschopp&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4304,1402919863,'FE','ACCESS','','Could not find user &quot;denise.tschopp&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4305,1402919976,'FE','ACCESS','','Invalid password submitted for username &quot;denisetschopp&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4303,1402912347,'FE','ACCESS','anitauka','User &quot;anitauka&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4302,1402911657,'FE','ACCESS','anitauka','User &quot;anitauka&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4301,1402899316,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4299,1402898920,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4300,1402899286,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4298,1402898015,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4297,1402897731,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4296,1402897654,'FE','ACCESS','gianninawidmer','User &quot;gianninawidmer&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4295,1402897491,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4293,1402896836,'FE','ACCESS','gianninawidmer','User &quot;gianninawidmer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4294,1402897459,'FE','ACCESS','','Invalid password submitted for username &quot;heinztroxler&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4292,1402865007,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged in','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4291,1402864993,'FE','ACCESS','','Invalid password submitted for username &quot;regulalanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4290,1402864984,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4289,1402864983,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4288,1402839341,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),(4198,1402596416,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged in','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4197,1402586047,'FE','ACCESS','gianninawidmer','User &quot;gianninawidmer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4195,1402578667,'FE','ACCESS','anitauka','User &quot;anitauka&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4196,1402578906,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged out','Contao\\User::logout','212.4.95.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4194,1402578617,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','212.4.95.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4193,1402577163,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4192,1402576789,'FE','ACCESS','','The account has been locked for security reasons','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4191,1402576781,'FE','ACCESS','','Invalid password submitted for username &quot;javierpastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4190,1402576773,'FE','ACCESS','','Invalid password submitted for username &quot;javierpastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4189,1402576771,'FE','ACCESS','anitauka','User &quot;anitauka&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4188,1402576763,'FE','ACCESS','','Invalid password submitted for username &quot;javierpastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4187,1402576711,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4186,1402576022,'FE','ACCESS','','The account has been locked for security reasons','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4185,1402576014,'FE','ACCESS','','Invalid password submitted for username &quot;javierpastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4184,1402576008,'FE','ACCESS','','Invalid password submitted for username &quot;javierpastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4183,1402576000,'FE','ACCESS','','Invalid password submitted for username &quot;javierpastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4182,1402575971,'FE','ACCESS','','Could not find user &quot;javier.pastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4180,1402575957,'FE','ACCESS','','Could not find user &quot;javier.pastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4181,1402575965,'FE','ACCESS','','Could not find user &quot;javier.pastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4179,1402575948,'FE','ACCESS','','Could not find user &quot;javier.pastor&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4178,1402574941,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','212.4.95.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4177,1402574710,'FE','ACCESS','anitauka','User &quot;anitauka&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4176,1402566341,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4175,1402563912,'FE','ACCESS','','Invalid password submitted for username &quot;mathiasschaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4173,1402563483,'FE','ACCESS','','The account has been locked for security reasons','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4174,1402563884,'FE','ACCESS','','Invalid password submitted for username &quot;mathiasschaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4170,1402563455,'FE','ACCESS','','Invalid password submitted for username &quot;mathiasschaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4171,1402563466,'FE','ACCESS','','Invalid password submitted for username &quot;mathiasschaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4172,1402563481,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4168,1402562948,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4169,1402563437,'FE','ACCESS','','Invalid password submitted for username &quot;mathiasschaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4167,1402558978,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4164,1402556846,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4165,1402556853,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4166,1402558964,'FE','ACCESS','','Invalid password submitted for username &quot;toniwaldispuehl&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4159,1402554874,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),(4160,1402556726,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4163,1402556750,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4162,1402556737,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4161,1402556726,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4017,1402406219,'FE','ACCESS','','Could not find user &quot;annève&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4016,1402406186,'FE','ACCESS','','Could not find user &quot;anneve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4014,1402406088,'FE','ACCESS','','Could not find user &quot;annève dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4015,1402406162,'FE','ACCESS','','Could not find user &quot;annéve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4012,1402388258,'FE','ACCESS','alicelustenberger','User &quot;alicelustenberger&quot; has logged out','Contao\\User::logout','85.5.207.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/7.0.4 Safari/537.76.4'),(4013,1402406067,'FE','ACCESS','','Could not find user &quot;annève dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4011,1402385454,'FE','ACCESS','alicelustenberger','User &quot;alicelustenberger&quot; has logged in','Contao\\User::login','85.5.207.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/7.0.4 Safari/537.76.4'),(4010,1402384074,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4009,1402384067,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4008,1402384044,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=3&quot; has been created','Contao\\DC_Table::edit','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4006,1402384014,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4007,1402384027,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4005,1402384002,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4004,1402383990,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=3&quot; has been created','Contao\\DC_Table::edit','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4003,1402383966,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4001,1402382825,'FE','ACCESS','','Invalid password submitted for username &quot;alicelustenberger&quot;','Contao\\User::login','85.5.207.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/7.0.4 Safari/537.76.4'),(4002,1402383929,'FE','ACCESS','alicelustenberger','User &quot;alicelustenberger&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4000,1402382808,'FE','ACCESS','','Could not find user &quot;alice.lustenberger&quot;','Contao\\User::login','85.5.207.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/7.0.4 Safari/537.76.4'),(3998,1402381224,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3999,1402381713,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged out','Contao\\User::logout','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3997,1402381224,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3995,1402380709,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3996,1402380750,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3991,1402335432,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','188.61.238.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3992,1402335446,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged out','Contao\\User::logout','188.61.238.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3993,1402342353,'FE','ERROR','','No active page for page ID &quot;menu&quot;, host &quot;beurteilen.foerdern.schule-ettiswil.ch&quot; and languages &quot;de-DE, de, en-US, en, fr&quot; (https://beurteilen.foerdern.schule-ettiswil.ch/menu/index.html)','Contao\\PageError404::generate','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(3994,1402342383,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4285,1402839195,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(4286,1402839237,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(4287,1402839292,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36'),(4284,1402836903,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(4282,1402834757,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4283,1402834965,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4281,1402834636,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4278,1402825582,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4279,1402825679,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4280,1402825776,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged out','Contao\\User::logout','213.221.195.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4277,1402823941,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4276,1402816059,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4275,1402816045,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=28&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4273,1402815705,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4274,1402815959,'BE','ACCESS','administrator','User &quot;administrator&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4271,1402779235,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4272,1402779507,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.65 Mobile Safari/537.36'),(4270,1402777927,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4269,1402777927,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4268,1402738256,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged out','Contao\\User::logout','213.221.195.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4267,1402738021,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4266,1402688735,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4265,1402677269,'FE','ERROR','','No active page for page ID &quot;passwort-vergessen&quot;, host &quot;beurteilen.foerdern.schule-ettiswil.ch&quot; and languages &quot;de, en-US, en&quot; (https://beurteilen.foerdern.schule-ettiswil.ch/passwort-vergessen.html)','Contao\\PageError404::generate','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4264,1402675509,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=28&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4263,1402675459,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=28&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4262,1402675403,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=28&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4261,1402675379,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=28&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4260,1402675225,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=28&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4259,1402675215,'BE','GENERAL','administrator','A new entry &quot;tl_content.id=28&quot; has been created by duplicating record &quot;tl_content.id=26&quot; (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::copy','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4257,1402675077,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4258,1402675082,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4256,1402674996,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4255,1402674759,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4254,1402674640,'BE','GENERAL','administrator','A new version of record &quot;tl_page.id=7&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4253,1402673830,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/20100101 Firefox/17.0'),(4252,1402673693,'FE','ACCESS','','A new password has been requested for user ID 3 (m.cupic@gmx.ch)','Contao\\ModulePassword::sendPasswordLink','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4251,1402673668,'BE','CRON','administrator','Purged the internal cache','Contao\\Automator::purgeInternalCache','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4250,1402673573,'FE','ACCESS','','A new password has been requested for user ID 3 (m.cupic@gmx.ch)','Contao\\ModulePassword::sendPasswordLink','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4249,1402672944,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=25&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4247,1402672465,'BE','GENERAL','administrator','A new version of record &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4248,1402672840,'FE','ACCESS','','A new password has been requested for user ID 3 (m.cupic@gmx.ch)','Contao\\ModulePassword::sendPasswordLink','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4246,1402672053,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=27&quot; has been created (parent records: tl_article.id=9, tl_page.id=8)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4245,1402672022,'FE','ACCESS','','A new password has been requested for user ID 3 (m.cupic@gmx.ch)','Contao\\ModulePassword::sendPasswordLink','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4244,1402671916,'BE','GENERAL','administrator','A new version of record &quot;tl_page.id=8&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4243,1402671879,'FE','ERROR','','No active page for page ID &quot;passwort-reset&quot;, host &quot;beurteilen.foerdern.schule-ettiswil.ch&quot; and languages &quot;de, en-US, en&quot; (https://beurteilen.foerdern.schule-ettiswil.ch/passwort-reset.html)','Contao\\PageError404::generate','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4242,1402671876,'FE','ERROR','','No active page for page ID &quot;passwort-reset&quot;, host &quot;beurteilen.foerdern.schule-ettiswil.ch&quot; and languages &quot;de, en-US, en&quot; (https://beurteilen.foerdern.schule-ettiswil.ch/passwort-reset.html)','Contao\\PageError404::generate','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4241,1402671859,'FE','ERROR','','No active page for page ID &quot;passwort-vergessen&quot;, host &quot;beurteilen.foerdern.schule-ettiswil.ch&quot; and languages &quot;de, en-US, en&quot; (https://beurteilen.foerdern.schule-ettiswil.ch/passwort-vergessen.html)','Contao\\PageError404::generate','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4240,1402671853,'FE','ERROR','','No active page for page ID &quot;passwort-vergessen&quot;, host &quot;beurteilen.foerdern.schule-ettiswil.ch&quot; and languages &quot;de, en-US, en&quot; (https://beurteilen.foerdern.schule-ettiswil.ch/passwort-vergessen.html)','Contao\\PageError404::generate','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4239,1402671841,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=27&quot; has been created (parent records: tl_article.id=9, tl_page.id=8)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4238,1402671658,'BE','GENERAL','administrator','A new version of record &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4237,1402671490,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=27&quot; has been created (parent records: tl_article.id=9, tl_page.id=8)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4236,1402671452,'BE','GENERAL','administrator','A new entry &quot;tl_content.id=27&quot; has been created (parent records: tl_article.id=9, tl_page.id=8)','Contao\\DC_Table::create','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4235,1402671444,'BE','GENERAL','administrator','A new version of record &quot;tl_article.id=9&quot; has been created (parent records: tl_page.id=8)','tl_article::toggleVisibility','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4234,1402671429,'BE','GENERAL','administrator','A new version of record &quot;tl_page.id=8&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4233,1402671382,'BE','GENERAL','administrator','A new version of record &quot;tl_page.id=7&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4232,1402671176,'BE','GENERAL','administrator','A new version of record &quot;tl_content.id=25&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4231,1402671104,'BE','GENERAL','administrator','A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4229,1402670839,'BE','ACCESS','administrator','User &quot;administrator&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4230,1402671007,'FE','ACCESS','','A new password has been requested for user ID 3 (m.cupic@gmx.ch)','Contao\\ModulePassword::sendPasswordLink','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0'),(4227,1402652909,'FE','ACCESS','javierpastor','User &quot;javierpastor&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4228,1402652939,'BE','GENERAL','markocupic','A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4225,1402652897,'BE','GENERAL','markocupic','A new version of record &quot;tl_page.id=8&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4226,1402652900,'BE','GENERAL','markocupic','A new version of record &quot;tl_page.id=8&quot; has been created','tl_page::toggleVisibility','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4224,1402652862,'BE','GENERAL','markocupic','A new entry &quot;tl_page.id=8&quot; has been created','Contao\\DC_Table::create','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4223,1402652797,'BE','GENERAL','markocupic','A new version of record &quot;tl_content.id=26&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4221,1402652784,'BE','GENERAL','markocupic','A new entry &quot;tl_content.id=26&quot; has been created by duplicating record &quot;tl_content.id=25&quot; (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::copy','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4222,1402652794,'BE','GENERAL','markocupic','A new version of record &quot;tl_content.id=26&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4220,1402652778,'BE','GENERAL','markocupic','A new version of record &quot;tl_content.id=25&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4219,1402652735,'BE','GENERAL','markocupic','A new entry &quot;tl_content.id=25&quot; has been created (parent records: tl_article.id=8, tl_page.id=7)','Contao\\DC_Table::create','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4217,1402652684,'BE','GENERAL','markocupic','A new entry &quot;tl_page.id=7&quot; has been created','Contao\\DC_Table::create','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4218,1402652718,'BE','GENERAL','markocupic','A new version of record &quot;tl_page.id=7&quot; has been created','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4216,1402652670,'BE','GENERAL','markocupic','A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4215,1402652645,'BE','GENERAL','markocupic','A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4214,1402652605,'BE','GENERAL','markocupic','A new version of record &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4213,1402652538,'BE','GENERAL','markocupic','A new version of record &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4212,1402652525,'BE','GENERAL','markocupic','A new version of record &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::edit','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4211,1402652517,'BE','GENERAL','markocupic','A new entry &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)','Contao\\DC_Table::create','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4209,1402652484,'FE','ACCESS','javierpastor','User &quot;javierpastor&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4210,1402652490,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4208,1402652381,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4207,1402652361,'FE','ACCESS','javierpastor','User &quot;javierpastor&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4205,1402652343,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4206,1402652356,'FE','ACCESS','javierpastor','User &quot;javierpastor&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4204,1402652057,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4203,1402652056,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4202,1402652056,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4201,1402637675,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4200,1402637158,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0'),(4144,1402502783,'FE','ACCESS','annevedaetwyler','User &quot;annevedaetwyler&quot; has logged in','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4145,1402502866,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0'),(4199,1402599363,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged out','Contao\\User::logout','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4143,1402502759,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4141,1402502596,'FE','ACCESS','annevedaetwyler','User &quot;annevedaetwyler&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4142,1402502638,'FE','ACCESS','annevedaetwyler','User &quot;annevedaetwyler&quot; has logged in','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4140,1402502490,'FE','ACCESS','annevedaetwyler','User &quot;annevedaetwyler&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4139,1402502476,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4137,1402502428,'BE','ACCESS','administrator','User &quot;administrator&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4138,1402502463,'BE','GENERAL','administrator','A new version of record &quot;tl_member.id=21&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4136,1402502397,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4135,1402502387,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4134,1402502356,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4133,1402502347,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4132,1402502344,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36'),(4130,1402497642,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4131,1402498068,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged out','Contao\\User::logout','213.221.195.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4129,1402496992,'FE','ACCESS','','Invalid password submitted for username &quot;annevedaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4128,1402496968,'FE','ACCESS','','Could not find user &quot;annèvedaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4127,1402496943,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4125,1402496898,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4126,1402496922,'FE','ACCESS','','Could not find user &quot;annèvedaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4124,1402496870,'FE','ACCESS','','Could not find user &quot;annevedätwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4123,1402496846,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4120,1402496766,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4121,1402496781,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4122,1402496804,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.193.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(4118,1402496018,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.193.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(4119,1402496741,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','81.62.79.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4117,1402489045,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged out','Contao\\User::logout','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4115,1402489011,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged out','Contao\\User::logout','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4116,1402489026,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged in','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4114,1402484377,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged in','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4113,1402482986,'FE','ACCESS','gianninawidmer','User &quot;gianninawidmer&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4111,1402482919,'FE','ACCESS','','Could not find user &quot;giannina.widmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4112,1402482973,'FE','ACCESS','','Invalid password submitted for username &quot;gianninawidmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4110,1402482906,'FE','ACCESS','','Could not find user &quot;giannina.widmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4107,1402482795,'FE','ACCESS','','Could not find user &quot;giannina.widmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4108,1402482807,'FE','ACCESS','','Could not find user &quot;giannina.widmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4109,1402482850,'FE','ACCESS','','Could not find user &quot;giannina.widmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4106,1402482748,'FE','ACCESS','','Could not find user &quot;giannina.widmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4104,1402482697,'FE','ACCESS','','Could not find user &quot;giannina.widmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4105,1402482716,'FE','ACCESS','','Could not find user &quot;giannina.widmer&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4103,1402478856,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged out','Contao\\User::logout','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4102,1402477642,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4101,1402475233,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4099,1402471165,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0'),(4100,1402475224,'FE','ACCESS','','Invalid password submitted for username &quot;angelahurni&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4097,1402469520,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0'),(4098,1402469787,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0'),(4096,1402469076,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4095,1402469068,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4093,1402414569,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4094,1402469068,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4092,1402414555,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4091,1402414319,'BE','GENERAL','markocupic','A new version of record &quot;tl_subject.id=29&quot; has been created','Contao\\DC_Table::edit','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4089,1402414291,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4090,1402414312,'BE','GENERAL','markocupic','A new entry &quot;tl_subject.id=29&quot; has been created','Contao\\DC_Table::create','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4088,1402409818,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4087,1402409799,'FE','ACCESS','','Invalid password submitted for username &quot;juergzihlmann&quot;','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4086,1402409532,'FE','ACCESS','','Could not find user &quot;jürg.zihlmann&quot;','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4084,1402409492,'FE','ACCESS','','Could not find user &quot;juerg.zihlmann&quot;','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4085,1402409511,'FE','ACCESS','','Could not find user &quot;juerg.zihlmann&quot;','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4083,1402409452,'FE','ACCESS','','Could not find user &quot;juerg.zihlmann@ettiswil.educanet2.ch&quot;','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4082,1402409222,'FE','ACCESS','','Could not find user &quot;jürg zihlmann&quot;','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4081,1402409160,'FE','ACCESS','','Could not find user &quot;Jürg Zihlmann&quot;','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4079,1402408725,'FE','ACCESS','','Could not find user &quot;anneve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4080,1402409123,'FE','ACCESS','','Could not find user &quot;jürg zihlmann&quot;','Contao\\User::login','213.221.212.0','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.5; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'),(4078,1402408704,'FE','ACCESS','','Could not find user &quot;anneve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4077,1402408700,'FE','ACCESS','','Could not find user &quot;anneve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4075,1402408664,'FE','ACCESS','','Could not find user &quot;anneve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4076,1402408695,'FE','ACCESS','','Could not find user &quot;anneve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4074,1402408641,'FE','ACCESS','','Could not find user &quot;annève dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4072,1402408081,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4073,1402408624,'FE','ACCESS','','Could not find user &quot;anneve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4070,1402407866,'FE','ACCESS','','Could not find user &quot;anneve daetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4071,1402408074,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4069,1402407846,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4068,1402407804,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4065,1402407666,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4066,1402407692,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4067,1402407786,'FE','ACCESS','','Could not find user &quot;annève dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4064,1402407623,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4062,1402407600,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4063,1402407607,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4060,1402407571,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4061,1402407583,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4059,1402407558,'FE','ACCESS','','Could not find user &quot;anneve daetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4057,1402407141,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4058,1402407145,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4055,1402407119,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4056,1402407133,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4053,1402407054,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4054,1402407105,'FE','ACCESS','','Could not find user &quot;annève dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4052,1402407049,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4051,1402407031,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4050,1402407006,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4048,1402406926,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4049,1402406979,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4046,1402406891,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4047,1402406911,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4044,1402406833,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4045,1402406887,'FE','ACCESS','','Could not find user &quot;annevedätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4042,1402406820,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4043,1402406824,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4040,1402406802,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4041,1402406816,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4039,1402406787,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4038,1402406773,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4037,1402406769,'FE','ACCESS','','Could not find user &quot;annèvedaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4035,1402406736,'FE','ACCESS','','Could not find user &quot;anneve daetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4036,1402406739,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4034,1402406727,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4033,1402406690,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4032,1402406684,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4030,1402406663,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4031,1402406669,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4029,1402406650,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4028,1402406641,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4027,1402406625,'FE','ACCESS','','Could not find user &quot;anneve daetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4025,1402406604,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4026,1402406611,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4024,1402406578,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4023,1402406569,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4021,1402406546,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4022,1402406563,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4020,1402406539,'FE','ACCESS','','Could not find user &quot;AnneveDaetwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(4018,1402406247,'FE','ACCESS','','Could not find user &quot;annève dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(4019,1402406289,'FE','ACCESS','','Could not find user &quot;anneve dätwyler&quot;','Contao\\User::login','83.79.46.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),(3990,1402335350,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=4&quot; has been created','Contao\\DC_Table::edit','188.61.238.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3989,1402335301,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','188.61.238.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3988,1402335284,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','188.61.238.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3987,1402335267,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.197.236.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3986,1402303978,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3985,1402303089,'FE','ACCESS','','Could not find user &quot;toni waldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3984,1402302964,'FE','ACCESS','','Could not find user &quot;toni waldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(3982,1402302773,'FE','ACCESS','','Could not find user &quot;toni waldispuehl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3983,1402302843,'FE','ACCESS','','Could not find user &quot;toni waldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3981,1402302749,'FE','ACCESS','','Could not find user &quot;toni waldispuehl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3980,1402302726,'FE','ACCESS','','Could not find user &quot;toni waldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3979,1402302713,'FE','ACCESS','','Could not find user &quot;toni.waldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3978,1402301907,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3977,1402297764,'FE','ACCESS','patriziafink','User &quot;patriziafink&quot; has logged in','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3976,1402297746,'FE','ACCESS','','Could not find user &quot;alfa2014&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3975,1402297732,'FE','ACCESS','','Could not find user &quot;alfa2014&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3974,1402297716,'FE','ACCESS','','Could not find user &quot;alfa2014&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3972,1402297213,'FE','ACCESS','','Could not find user &quot;helga&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3973,1402297494,'FE','ACCESS','','Could not find user &quot;alfa&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3971,1402296804,'FE','ACCESS','','Could not find user &quot;patrizia fink&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3970,1402296627,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3969,1402296609,'FE','ACCESS','','Could not find user &quot;pfink&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3968,1402296599,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3967,1402296591,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3966,1402296582,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3965,1402296513,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3964,1402296497,'FE','ACCESS','','Invalid password submitted for username &quot;patriziafink&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3963,1402296341,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3962,1402296328,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3961,1402296313,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3960,1402296295,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3959,1402296281,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3958,1402296264,'FE','ACCESS','','Invalid password submitted for username &quot;helgatroxler&quot;','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3957,1402296234,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=13&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3956,1402296196,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3955,1402296186,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=1&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3954,1402296175,'FE','ACCESS','','Could not find user &quot;patrizia&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14'),(3953,1402296135,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.49 Mobile Safari/537.36'),(3951,1402295247,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3952,1402295257,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3950,1402295237,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3949,1402295229,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3948,1402295218,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3946,1402295088,'FE','ACCESS','','Could not find user &quot;helga&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3947,1402295208,'FE','ACCESS','','Invalid password submitted for username &quot;heinztroxler&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3945,1402295066,'FE','ACCESS','','Could not find user &quot;helga&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3944,1402294972,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3942,1402294954,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3943,1402294964,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3941,1402294905,'FE','ACCESS','','The account has been locked for security reasons','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3940,1402294897,'FE','ACCESS','','Invalid password submitted for username &quot;heinztroxler&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3939,1402294879,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3937,1402294849,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3938,1402294861,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3936,1402294840,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3935,1402294820,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3934,1402294792,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3932,1402294760,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3933,1402294772,'FE','ACCESS','','Could not find user &quot;heinz&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3931,1402294734,'FE','ACCESS','','Invalid password submitted for username &quot;heinztroxler&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3929,1402294695,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3930,1402294723,'FE','ACCESS','','Invalid password submitted for username &quot;heinztroxler&quot;','Contao\\User::login','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3928,1402294695,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3927,1402294695,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3926,1402294695,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3925,1402294695,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3924,1402294695,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','83.77.161.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(3923,1402062677,'FE','ACCESS','michaelzurkirchen','User &quot;michaelzurkirchen&quot; has logged out','Contao\\User::logout','80.219.250.0','Mozilla/5.0 (Windows NT 6.0; rv:29.0) Gecko/20100101 Firefox/29.0'),(3922,1402062012,'FE','ACCESS','michaelzurkirchen','User &quot;michaelzurkirchen&quot; has logged in','Contao\\User::login','80.219.250.0','Mozilla/5.0 (Windows NT 6.0; rv:29.0) Gecko/20100101 Firefox/29.0'),(3921,1402051498,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3920,1402039278,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3919,1402039235,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged out','Contao\\User::logout','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3918,1402039228,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3917,1402039222,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3916,1402039222,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3915,1401971886,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3914,1401971076,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3913,1401971062,'FE','ACCESS','','Could not find user &quot;angela hurni&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3912,1401971029,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3911,1401971022,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3910,1401970941,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3909,1401970928,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3908,1401970921,'FE','ACCESS','','Could not find user &quot;ahurni&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3907,1401970913,'FE','ACCESS','','Could not find user &quot;angela hurni&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3906,1401970900,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3905,1401970881,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(3904,1401962027,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3903,1401962008,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=20&quot; has been created','Contao\\DC_Table::edit','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3902,1401961975,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3901,1401961953,'FE','ACCESS','','Invalid password submitted for username &quot;angelahurni&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 5.1; rv:29.0) Gecko/20100101 Firefox/29.0'),(3899,1401959721,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3900,1401959734,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3898,1401959712,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3897,1401959689,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3896,1401959674,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3895,1401959665,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3894,1401959659,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3892,1401959647,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3893,1401959654,'FE','ACCESS','','Invalid password submitted for username &quot;angelahurni&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3891,1401959635,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3890,1401959627,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3889,1401959616,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3888,1401959603,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3887,1401959590,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3886,1401959581,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3885,1401959565,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3884,1401959558,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3883,1401959549,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3882,1401891312,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3881,1401891051,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3880,1401891047,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3879,1401891047,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3878,1401891047,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3877,1401891047,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3876,1401891047,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3875,1401891047,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(3874,1401891047,'FE','CRON','','Purged the image cache','Contao\\Automator::purgeImageCache','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(4158,1402547413,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36'),(3873,1401891047,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.195.0','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(4157,1402518027,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36'),(4155,1402517994,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4156,1402518005,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4154,1402517622,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4153,1402517601,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4151,1402517495,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4152,1402517511,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4150,1402517481,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4149,1402517414,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4146,1402502975,'FE','ACCESS','','Could not find user &quot;jhgjhggh&quot;','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0'),(4147,1402517253,'FE','ACCESS','','Could not find user &quot;rlanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14'),(4148,1402517302,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/6.1.3 Safari/537.75.14');
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
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
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
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `activation` (`activation`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member`
--

LOCK TABLES `tl_member` WRITE;
/*!40000 ALTER TABLE `tl_member` DISABLE KEYS */;
INSERT INTO `tl_member` VALUES (21,1402502463,'Annève','Dätwyler','','','','','','','','','','','','anneve.daetwyler@ettiswil.educanet2.ch','','',NULL,'1','annevedaetwyler','$6$b0de8078134af2e8$Vqe/KBvrJ3UBs.gcmFSClmaoxXlb.mpBde7FokH2gZMnlZZBQzjawfdlvCVyNq2c3WR.MrZ0zwnf.eF2PXOl40','',NULL,'','','',1393774266,1402502638,1402502783,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxOVkUxdFl6TldhV0Z0Vm1wa1JEQXhTbTVTYkZsWFRtOWFXRWs1VFdwRlBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:16:\"buf/do/menu.html\";}}',NULL,0,'','','1',NULL,'0',''),(22,1399536313,'Josef','Bieri','','','','','','','','','','','','josef.bieri@ettiswil.educanet2.ch','','',NULL,'1','josefbieri','$6$5972411d4ed91004$FbfEZ2fHxnZbLIwMMMYMWxzLBD6.tEg/Fsp8hniGG3FC0EWtDLUfyvyXQIYoGeec/gjT/misY5anEpE4mGt8F0','',NULL,'','','',1393774274,1419078392,1419088790,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(25,1395515759,'Romi','Waldispühl','','','','','','','','','','','','romi.waldispuehl@ettiswil.educanet2.ch','','',NULL,'1','romiwaldispuehl','$6$6437f258ce792931$Xl2SCAuaC8QsGshf0gvpOOr/JALtWY.eXX8PClaQmty67YWBjkSpRC9OANILKIf8b5O4YlNUHQiq4tFdLB0uY/','',NULL,'','','',1393774349,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(20,1401962012,'Angela','Hurni','','','','','','','','','','','','angela.hurni@ettiswil.educanet2.ch','','',NULL,'1','angelahurni','$6$2846fb51c111c86e$UOsjXlJat5GBqO8POnRqAXnfi1RvBSLdXiWTceOj72S1n0vcaFEFiEXmVMii6XXGmYtQ2FxYqh9iL9ZAVoweY.','',NULL,'','','',1393774235,1402380750,1402475233,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxOVkUxdFl6TldhV0Z0Vm1wa1JEQjRUMU5hTUZwWFJtcGhSMVo1VUZSSmR3PT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxOVkUxdFl6TldhV0Z0Vm1wa1JEQjRUMU5hTUZwWFJtcGhSMVo1VUZSSmR3PT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}',NULL,0,'','','1',NULL,'0',''),(19,1394058243,'Regula','Lanicca','','','','','','','','','','','','regula.lanicca@ettiswil.educanet2.ch','','',NULL,'1','regulalanicca','$6$460dc055dac6a1ad$EsB0db81UgkSmPCdWHVeYUqstGIhckWLN9HaIRxbK5d1lTuPOf5MMhYt/L7FL0p5cJXvGKK6Ad5p5HNx1OUyo/','',NULL,'','','',1393774226,1402596416,1402865007,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxOVkVsdFl6TldhV0Z0Vm1wa1JEQXhTbTVTYkZsWFRtOWFXRWs1VFZSclBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxOVkVsdFl6TldhV0Z0Vm1wa1JEQXhTbTVTYkZsWFRtOWFXRWs1VFZSclBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}',NULL,0,'','','1',NULL,'0',''),(18,1394142100,'Alice','Lustenberger','','','','','','','','','','','','alice.lustenberger@ettiswil.educanet2.ch','','',NULL,'1','alicelustenberger','$6$ead6fe721119a033$bVrNyQittODcesZTD8qN7TVL6.8YtzdBE7hTDP4mMMfe6.nqtKSMYKbysVklr/0CAzrf2qjFiyQFOdfeh3g/q1','',NULL,'','','',1393774208,1402383929,1402385454,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(15,1394058450,'Daniela','Schwegler','','','','','','','','','','','','daniela.schwegler@ettiswil.educanet2.ch','','',NULL,'1','danielaschwegler','$6$df4e27ba2bcd3b8d$n4BXeSkZOuH9YpqIMYA/l2k6vkVQFMh1Ye64IoiqeJoAmPuJDVqN8WgMdA.m/Y1NKH4OGkodeY1XzJtKB8qOC/','',NULL,'','','',1393774172,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(17,1394058243,'Patrizia','Fink','','','','','','','','','','','','patrizia.fink@ettiswil.educanet2.ch','','',NULL,'1','patriziafink','$6$de07a8c4966aae21$fkQv71hTAtda8xQzEaSPS42vIG1Y.WakZtaMVwD2UMFaKxOl6hDeBAKkZCn7Cj8uXs/Yxt9iWiGu4P8orlaDo.','',NULL,'','','',1393774198,1401279758,1402297764,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxOVkVGdFl6TldhV0Z0Vm1wa1JEQjVTbTVTYkZsWFRtOWFXRWs1VFZSalBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:16:\"buf/do/menu.html\";}}',NULL,0,'','','1',NULL,'0',''),(14,1394058243,'Margrit','Stocker','','','','','','','','','','','','margrit.stocker@ettiswil.educanet2.ch','','',NULL,'1','margritstocker','$6$dab7329fbafe86f8$5r1tVu0.svcipZI.s4mvqGM3dIKvIYWre1jDNPhYuVyMnpAgESe9rC3qHzn35vPvrnEFlQjB.AdYa6h/WzbxB/','',NULL,'','','',1393774162,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(12,1394058243,'Lisbeth','Wey','','','','','','','','','','','','lisbeth.wey@ettiswil.educanet2.ch','','',NULL,'1','lisbethwey','$6$1f10d76ac64e1b3f$CWjF8MQ9kdtG0/v9iNXByyvgKQbAKNkvcBrvdYYgcF5TaEOh8q/99uSGVgFHIb2xMQ.ziwIbyZrwg4m.aICAT0','',NULL,'','','',1393774124,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(13,1402296234,'Helga','Troxler','','','','','','','','','','','','helga.troxler@ettiswil.educanet2.ch','','',NULL,'1','helgatroxler','$6$f78aef670d8ca201$15v/MV4sKXlBPU1OEJxpWt9eiSxfDKIJWnL.vAdhmXNwKdspF/nHHvYodfaS14WXIdorHqJOWinnFukbCIwjU1','',NULL,'','','',1393774146,1402484377,1402489026,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(11,1401279484,'Michael','Zurkirchen','','','','','','','','','','','','michael.zurkirchen@ettiswil.educanet2.ch','','',NULL,'1','michaelzurkirchen','$6$a1a135cf0c4a84fb$RqqQQhAmVPM1cnqG.heNnsJufD.l3lco0MSYVcf/j8f2eyokXzuK/UJ6wZ6u79mJIywVijAYmtXwyscrO0quA1','',NULL,'','','',1393774113,1401285815,1402062012,3,1401284397,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxOVkVGdFl6TldhV0Z0Vm1wa1JEQjRUbmxhTUZwWFJtcGhSMVo1VUZSRmVBPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(8,1394058243,'Giannina','Widmer','','','','','','','','','','','','giannina.widmer@ettiswil.educanet2.ch','','',NULL,'1','gianninawidmer','$6$90474a5d3f4fdd24$yAQIwa71acWdUeAcuJSKAuK0ncmbKrPDTyGu3PSfN3K6ITuaSNhzMDiTmmD4cRNaQzE.mpS3NgVIYstmB3ndU0','',NULL,'','','',1393772869,1402586047,1402896836,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxOZVZwNlpGZEtjVnBYVGpCUVZFbDNTbTVTYkZsWFRtOWFXRWs1VDBFOVBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(10,1395515741,'Jürg','Zihlmann','','','','','','','','','','','','juerg.zihlmann@ettiswil.educanet2.ch','','',NULL,'1','juergzihlmann','$6$d4bab53dee3940a7$iwI15sAy49dJrVzVfR0Y2FyZVmsk9bo94XMWTT8lsWuHDAmwyvLLisex6g09bajAS0OQguSkg8b5OLe7ardjX.','',NULL,'','','',1393774082,1402471165,1402477641,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(6,1415872408,'Denise','Tschopp','','','','','','','','','','','','denise.tschopp@ettiswil.educanet2.ch','','',NULL,'1','denisetschopp','$6$ea779cf1b75b66fc$ariwZ1K6yP.r4HFvW261PB2E9txFkUl1XaMYDLHxc8Hg9Onw8ktXfN7jaO5d.cMpZA7KTaDG.x8X5oBSumYNA0','',NULL,'','','',1390755233,1415872443,1415872494,3,0,'a:3:{s:7:\"referer\";a:2:{s:4:\"last\";s:23:\"buf/do/tally_sheet.html\";s:7:\"current\";s:16:\"buf/do/menu.html\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:8;s:3:\"key\";s:33:\"ccf2a314124568db9d2ea700e09a0a551\";s:4:\"time\";i:1402920021;}s:16:\"setPasswordToken\";s:0:\"\";}',NULL,0,'','','1',40,'0','1'),(5,1407588500,'Mathias','Schär','','','','','','','','','','','','mathias.schaer@ettiswil.educanet2.ch','','',NULL,'1','mathiasschaer','$6$df5332e8551b3b16$bF5BFQ3TWdnrn9jCWDcdesKXJFqXZPj9oOiRoEHf1WqEzuNWVQlj.suNE5vlGpnyIo/QG2esyt5w1xQIbKcXZ.','',NULL,'','','',1390755215,1404227599,1417006140,3,1402563483,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',41,'0','1'),(4,1402335350,'Toni','Waldispühl','','female','','','','','','','','','','toni.waldispuehl@ettiswil.educanet2.ch','','',NULL,'1','toniwaldispuehl','$6$905df41a85e1e251$BSgDLo.GU8q5OBDdfX/eLr70eq.wYrkJGU3xRg4NsYmmzwhQO7qsfwN8xoKSOMitpfsAM0tvm.fPxQWgX97JE0','',NULL,'','','',1390755198,1402825582,1402825679,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',11,'0','1'),(3,1402384056,'Marko','Cupic','','male','','','','','','','','','','m.cupic@gmx.ch','','',NULL,'1','markocupic','$6$7a7f288a4aa24942$9R8x5w6j8YyZEkbBjiOlMx37Ww4LgGNwoHYrLp5qCZagCxJ8eqM4ObvmNU5Qijh643pPcqIe3hSwtwX0kLno/1','',NULL,'','','',1390755178,1407597753,1417811002,3,1393143729,'a:2:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:122:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxQVTFwNlpGZEtjVnBYVGpCUVZHZHRaRWRXYUZreWFHeGphakI2YXVUelRWYk5taWpVaEhnRENWWWQ=\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:13;s:3:\"key\";s:33:\"c29ad0b6f0ebdef77e8d74876f05906cb\";s:4:\"time\";i:1402652917;}}',NULL,0,'','','1',3,'1','1'),(2,1394058243,'Anita','Uka','','male','','','','','','','','','','anita.uka@ettiswil.educanet2.ch','','',NULL,'1','anitauka','$6$acd5c9b724fe4772$kP6QuanB4dvSNAmQjY50iu7Vk3w.MgaiQ.P21OgVygpe6.5oaBUU6jNwOc8.uB60BDLccxEC1L0ul2inEzSlI0','',NULL,'','','',1390754929,1402911657,1402912347,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:29:\"buf/do/print_tally_sheet.html\";s:7:\"current\";s:23:\"buf/do/tally_sheet.html\";}}',NULL,0,'','','1',10,'0','1'),(1,1402296186,'Heinz','Troxler','','male','','','','','','','','','','heinz.troxler@ettiswil.educanet2.ch','','',NULL,'1','heinztroxler','$6$0c67497a12e043fc$M7zUupW1pqEkwlB/p13o.AGPyAeqt7URSwkn1oOiONaQUW4r6F1CFqQa4FCiWRc7g2pJUHA6vNm/Y5KIsLwUn.','',NULL,'','','',1390754898,1418747819,1418810449,3,1402294905,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',9,'0','1'),(29,1418803381,'Alena','Günther','','','','','','','','','','','','alena.guenther@ettiswil.educanet2.ch','','',NULL,'1','alenaguenther','$2y$10$1f1822487c1ec9d9f99baOt.q7RhiPbNqD/8yRGc4Iv9v3Jujm9vK','',NULL,'','','',1418803381,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0','');
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
INSERT INTO `tl_module` VALUES (1,1,1397633789,'Header','','html',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,'<div id=\"subheader\">\n<div id=\"logged_user\">\n\n		<ul id=\"info_logged_user\" class=\"logged_user\">\n			<li class=\"icon_user\"><strong>Angemeldet als: {{user::firstname}} {{user::lastname}}</strong> </li>\n			<li class=\"icon_office\"><strong>Name Schule: {{buf::name_school}}</strong> </li>\n        </ul>\n</div>\n<div id=\"logout\">\n\n		<ul id=\"logout_user\" class=\"logout_user\">\n			<li class=\"logout_user\"><strong>{{buf::logout_user}}</strong></li>\n			<li class=\"logout_user\"><strong>{{buf::account_settings}}</strong></li>\n        </ul>\n</div>\n</div>',3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple',''),(2,1,1395950604,'Footer','','html',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,'<p id=\"p_footer_bottom\">© Marko Cupic, Oberkirch </p>\n<p style=\"float:right; margin-top:-4em; margin-right:1em;\">\n    <a href=\"http://users.skynet.be/mgueury/mozilla/\">\n        <img src=\"system/modules/buf/assets/images/icons/validation_label_html5.png\" alt=\"Validated by HTML Validator (based on Tidy)\">\n    </a>\n</p>',3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple',''),(4,1,1391721112,'Beurteilen Und Foerdern','','mod_beurteilen_und_foerdern',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','','',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple',''),(7,1,1402672465,'Passwort vergessen','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','lostPassword',0,0,'','','',0,'nav_default',NULL,NULL,'','','',8,'','2cl',NULL,'','1',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,'Hoi ##firstname##\nDu hast ein neues Passwort für ##domain## angefordert.\nBitte klicke auf ##link## um das neue Passwort festzulegen. Wenn du diese E-Mail nicht angefordert hast, kontaktiere mich bitte per mail (m.cupic@gmx.ch).\nE liebe Gruess\nMarko','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'descending','',NULL,NULL,'',NULL,NULL,'nl_simple','');
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
  KEY `alias` (`alias`)
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
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_page`
--

LOCK TABLES `tl_page` WRITE;
/*!40000 ALTER TABLE `tl_page` DISABLE KEYS */;
INSERT INTO `tl_page` VALUES (1,0,128,1392995022,'Beurteilen und Foerdern','beurteilen-und-foerdern','root','','de','',NULL,'permanent',0,'','','','','','1','','','','','','','','','',NULL,'1',1,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','','','',0,'','1','',''),(7,1,224,1402674640,'Passwort vergessen?','reset_password','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','1','','map_default','','1',0,'','1','',''),(8,1,352,1402671916,'Passwort zurücksetzen Bestätigung','reset_password_confirmation','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','1','1',0,'','1','',''),(4,1,96,1393530447,'Beurteilen Und Fördern','buf','regular','','','index,follow','','permanent',0,'','','','','','','','','','','','','','','',NULL,'1',1,0,'',0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','');
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
INSERT INTO `tl_repository_installs` VALUES (5,1407598814,'ajax',10010069,3,'0','0','0','1','','','',''),(6,1407598815,'import_from_csv',10000019,21,'0','0','0','1','','','','');
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
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_repository_instfiles`
--

LOCK TABLES `tl_repository_instfiles` WRITE;
/*!40000 ALTER TABLE `tl_repository_instfiles` DISABLE KEYS */;
INSERT INTO `tl_repository_instfiles` VALUES (243,5,1407598814,'ajax.php','F',''),(244,6,1393935860,'system/modules/import_from_csv/assets','D',''),(245,6,1393935860,'system/modules/import_from_csv','D',''),(246,6,1407598815,'system/modules/import_from_csv/assets/.htaccess','F',''),(247,6,1407598815,'system/modules/import_from_csv/assets/file-import-icon-16.png','F',''),(248,6,1407598815,'system/modules/import_from_csv/assets/import_from_csv.css','F',''),(249,6,1407598815,'system/modules/import_from_csv/assets/import_from_csv.js','F',''),(250,6,1407598815,'system/modules/import_from_csv/assets/manual.jpg','F',''),(251,6,1407598815,'system/modules/import_from_csv/assets/manual2.jpg','F',''),(252,6,1393935860,'system/modules/import_from_csv/classes','D',''),(253,6,1407598815,'system/modules/import_from_csv/classes/ImportFromCsv.php','F',''),(254,6,1393935860,'system/modules/import_from_csv/config','D',''),(255,6,1407598815,'system/modules/import_from_csv/config/autoload.ini','F',''),(256,6,1407598815,'system/modules/import_from_csv/config/autoload.php','F',''),(257,6,1407598815,'system/modules/import_from_csv/config/config.php','F',''),(258,6,1393935860,'system/modules/import_from_csv/csv','D',''),(259,6,1407598815,'system/modules/import_from_csv/csv/example_csv.csv','F',''),(260,6,1393935860,'system/modules/import_from_csv/dca','D',''),(261,6,1407598815,'system/modules/import_from_csv/dca/tl_import_from_csv.php','F',''),(262,6,1393935860,'system/modules/import_from_csv/languages/de','D',''),(263,6,1393935860,'system/modules/import_from_csv/languages','D',''),(264,6,1407598815,'system/modules/import_from_csv/languages/de/.htaccess','F',''),(265,6,1407598815,'system/modules/import_from_csv/languages/de/modules.php','F',''),(266,6,1407598815,'system/modules/import_from_csv/languages/de/tl_import_from_csv.php','F',''),(267,6,1393935860,'system/modules/import_from_csv/languages/en','D',''),(268,6,1407598815,'system/modules/import_from_csv/languages/en/modules.php','F',''),(269,6,1407598815,'system/modules/import_from_csv/languages/en/tl_import_from_csv.php','F','');
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search`
--

LOCK TABLES `tl_search` WRITE;
/*!40000 ALTER TABLE `tl_search` DISABLE KEYS */;
INSERT INTO `tl_search` VALUES (3,4,1418747677,'Beurteilen Und Fördern','buf/do/login.html','Beurteilen Und Fördern Angemeldet als: Name Schule: KSS/ISS Schule Ettiswil Anmelden Hauptmenü Benutzername Passwort Passwort vergessen? © Marko Cupic, Oberkirch anmelden, , Passwort vergessen?, Validated by HTML Validator (based on Tidy)',3.69,'00a8bd3108aa6e719576bc2aa314beb3','','0','de'),(7,8,1402672062,'Passwort zurücksetzen Bestätigung','reset_password_confirmation.html','Passwort zurücksetzen Bestätigung Angemeldet als: Name Schule: KSS/ISS Schule Ettiswil Anmelden Passwort zurückgesetzt In Kürze wirst du eine email mit dem Aktivierungslink erhalten. Bitte folge den Anweisungen, um dein Passwort zurückzusetzen. Liebe Grüsse Marko © Marko Cupic, Oberkirch anmelden, Validated by HTML Validator (based on Tidy)',2.67,'28823a3dfaba36216b17ff2d21b592a6','','0','de');
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
) ENGINE=MyISAM AUTO_INCREMENT=7391 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search_index`
--

LOCK TABLES `tl_search_index` WRITE;
/*!40000 ALTER TABLE `tl_search_index` DISABLE KEYS */;
INSERT INTO `tl_search_index` VALUES (6815,7,'validator',1,'de'),(6814,7,'html',1,'de'),(6813,7,'by',1,'de'),(6812,7,'validated',1,'de'),(6811,7,'oberkirch',1,'de'),(6810,7,'cupic',1,'de'),(6809,7,'marko',2,'de'),(6808,7,'grüsse',1,'de'),(6807,7,'liebe',1,'de'),(6806,7,'zurückzusetzen',1,'de'),(6805,7,'dein',1,'de'),(6804,7,'um',1,'de'),(6803,7,'anweisungen',1,'de'),(6802,7,'den',1,'de'),(6801,7,'folge',1,'de'),(6800,7,'bitte',1,'de'),(6799,7,'erhalten',1,'de'),(6798,7,'aktivierungslink',1,'de'),(6797,7,'dem',1,'de'),(6796,7,'mit',1,'de'),(6795,7,'email',1,'de'),(6794,7,'eine',1,'de'),(6793,7,'du',1,'de'),(6792,7,'wirst',1,'de'),(6791,7,'kürze',1,'de'),(6790,7,'in',1,'de'),(6789,7,'zurückgesetzt',1,'de'),(6788,7,'anmelden',2,'de'),(6787,7,'ettiswil',1,'de'),(6786,7,'iss',1,'de'),(6785,7,'kss',1,'de'),(6784,7,'schule',2,'de'),(6783,7,'name',1,'de'),(6782,7,'als',1,'de'),(6781,7,'angemeldet',1,'de'),(7390,3,'tidy',1,'de'),(7389,3,'on',1,'de'),(7388,3,'based',1,'de'),(7387,3,'validator',1,'de'),(7386,3,'html',1,'de'),(7385,3,'by',1,'de'),(7384,3,'validated',1,'de'),(7383,3,'oberkirch',1,'de'),(7382,3,'cupic',1,'de'),(7381,3,'marko',1,'de'),(7380,3,'vergessen',2,'de'),(7379,3,'passwort',3,'de'),(7378,3,'benutzername',1,'de'),(7377,3,'hauptmenü',1,'de'),(7376,3,'anmelden',2,'de'),(7375,3,'ettiswil',1,'de'),(6780,7,'bestätigung',1,'de'),(6779,7,'zurücksetzen',1,'de'),(6778,7,'passwort',3,'de'),(6816,7,'based',1,'de'),(6817,7,'on',1,'de'),(6818,7,'tidy',1,'de'),(7374,3,'iss',1,'de'),(7373,3,'kss',1,'de'),(7372,3,'schule',2,'de'),(7371,3,'name',1,'de'),(7370,3,'als',1,'de'),(7369,3,'angemeldet',1,'de'),(7368,3,'fördern',1,'de'),(7367,3,'und',1,'de'),(7366,3,'beurteilen',1,'de');
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
) ENGINE=MyISAM AUTO_INCREMENT=466 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_session`
--

LOCK TABLES `tl_session` WRITE;
/*!40000 ALTER TABLE `tl_session` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_student`
--

LOCK TABLES `tl_student` WRITE;
/*!40000 ALTER TABLE `tl_student` DISABLE KEYS */;
INSERT INTO `tl_student` VALUES (1,1393111129,'female','Strässle','Sina',3),(2,1393154405,'male','Duss','Jannick',3),(3,1393154424,'female','Heller','Ramona',3),(4,1393108135,'female','Meier','Jasmin',3),(21,1393111048,'male','Häfliger','Sämi',3),(22,1393111048,'male','Lüthi','Pascal',3),(23,1393111048,'female','Ramseier','Fabienne',3),(24,1395949163,'female','Villiger','Johanna',3),(25,1393111048,'female','Ramseier','Olivia',3),(26,1393111048,'female','Stirnimann','Celina',3),(27,1393776168,'female','Anliker','Céline',3),(28,1393111048,'female','Kunz','Sarina',3),(29,1393111048,'male','Müller','Tobias',3),(30,1395949159,'female','Wermelinger','Anja',3),(31,1393941961,'male','Hodel','Michael',11),(32,1393941961,'male','Mirdita','Kole',11),(33,1393941961,'male','Myrta','Armand',11),(34,1393941961,'male','Schwegler','Joel',11),(35,1393941961,'female','Bättig','Nina',11),(36,1393941961,'female','Duss','Johanna',11),(37,1393941961,'female','Fries','Lara',11),(38,1393941961,'female','Hofstetter','Lorena',11),(39,1393941961,'female','Kneubühler','Eveline',11),(40,1393941961,'female','Mirdita','Klaudia',11),(41,1393941961,'female','Rea','Aurelia',11),(42,1393941961,'female','Schnider','Eléonore',11),(43,1393941961,'female','Schwegler','Flavia',11),(44,1393941961,'female','Sommer','Fabienne',11),(45,1393941961,'female','Stocker','Mirjam',11),(46,1393941961,'female','Widmer','Judith',11),(47,1393941961,'male','Bättig','Timo',10),(48,1393941961,'male','Beck','Kay',10),(49,1393941961,'male','Goller','Tobias',10),(50,1393941961,'male','Helfenstein','Severin',10),(51,1393941961,'male','Heller','Simon',10),(52,1393941961,'male','Schraner','Roman',10),(53,1393941961,'male','Schwyzer','Samuel',10),(54,1393941961,'female','Bisang','Aline',10),(55,1393941961,'female','Chandrakumar','Vaneka',10),(56,1393941961,'female','Felber','Anja',10),(57,1393941961,'female','Häfliger','Samira',10),(58,1393941961,'female','Hodel','Sabrina',10),(59,1393941961,'female','Stöckli','Victoria',10),(60,1393941961,'female','Stojmirovic','Sara',10),(61,1393941961,'female','Wiederkehr','Romina',10),(62,1393941961,'female','Zeqiri','Aurela',10),(171,1417006388,'male','Ambühl','Pirmin',41),(170,1415872970,'male','Dembrinski','Bruno',40),(169,1415872970,'female','Strässle','Lea',40),(168,1415872970,'male','Wieland ','Michael',40),(167,1415872970,'male','Wespi ','Elias',40),(166,1415872970,'female','Schwyzer','Lea',40),(165,1415872970,'male','Scheiber ','Julian',40),(164,1415872970,'female','Roth','Cyndy',40),(163,1415872970,'male','Peter ','Joël',40),(162,1415872970,'male','Gehrig ','Cyrill',40),(161,1415872970,'male','Christen ','Thierry',40),(160,1415872970,'male','Bucher ','Sven',40),(159,1415872970,'male','Birrer ','Silvan',40),(158,1415872970,'male','Bättig ','Livio',40),(157,1415872970,'female','Arnold ','Vanessa',40),(83,1393941961,'male','Arnet','Simon',9),(84,1393941961,'male','Kurmann','Marsel',9),(85,1395999916,'male','Luternauer','Noel',9),(86,1393941961,'male','Nussbaumer','Michael',9),(87,1393941961,'male','Verovic','Luca',9),(88,1393941961,'male','Widmer','Roland',9),(89,1393941961,'female','Blum','Sarah',9),(90,1393941961,'female','Dahinden','Larissa',9),(91,1393941961,'female','Ferkovic','Klaudia',9),(92,1393941961,'female','Ferkovic','Marijana',9),(93,1393941961,'female','Lütolf','Jacqueline',9),(94,1393941961,'female','Marbacher','Lorena',9),(95,1393941961,'female','Meile','Alia',9),(96,1393941961,'female','Schmid','Patrizia',9),(97,1395999928,'female','Vonwyl','Laura',9),(98,1393941961,'female','Wieland','Deborah',9),(185,1418810486,'female','Fehr','Celine',9),(184,1417006388,'female','Zàs','Jasmin',41),(183,1417006388,'female','Müller','Lena',41),(182,1417006388,'female','Kurmann','Nicole',41),(181,1417006388,'female','Heller','Lena',41),(180,1417006388,'male','Shala','Kristjan',41),(179,1417006388,'male','Müller','David',41),(178,1417006388,'male','Meier','Sven',41),(177,1417006388,'male','Lustenberger','Luca',41),(176,1417006388,'male','Kohler','Pablo',41),(175,1417006388,'male','Hodel','Sven',41),(174,1417006388,'male','Galliker','Nils',41),(173,1417006388,'male','Egli ','Ivan',41),(172,1417006388,'male','Duss','Pascal',41);
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
INSERT INTO `tl_subject` VALUES (2,1390772956,'Sport Mädchen','Tm'),(3,1390772980,'Mathematik','Mt'),(4,1390772993,'Deutsch','De'),(5,1390773002,'Französisch','Fr'),(8,1393196329,'Sport Knaben','Tk'),(9,1393196347,'Lebenskunde','Lk'),(10,1393196375,'Technisches Gestalten &#40;Werken&#41;','TgW'),(11,1393196391,'Technisches Gestalten &#40;Handarbeit&#41;','TgH'),(12,1393196402,'Hauswirtschaft','Hw'),(13,1393196413,'Religionsunterricht','Rk'),(14,1393196425,'Projektunterricht','Pu'),(15,1393196438,'Mathematik Wahlfach','Mt W'),(16,1393196456,'Technisches Zeichnen','Tz'),(17,1393196466,'Musik','Mu'),(19,1393196499,'Naturlehre','Na'),(20,1393196506,'Geschichte','Gs'),(21,1393196517,'Tastaturschreiben','Ts'),(23,1393197227,'Geografie','Gg'),(24,1393884093,'Integrative Förderung','If'),(25,1393884025,'Klassenlehrer-Fächer','KLF'),(26,1393884080,'Bildnerisches Gestalten','Bg'),(28,1399908877,'Informatik','Info'),(29,1402414319,'Englisch','En');
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
INSERT INTO `tl_theme` VALUES (1,1390734419,'Beurteilen und Foerdern','Marko Cupic','a:1:{i:0;s:16:\"����u��\0%�	W�\";}',NULL,'','a:0:{}');
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
) ENGINE=MyISAM AUTO_INCREMENT=2145 DEFAULT CHARSET=utf8;
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
INSERT INTO `tl_user` VALUES (1,1407590603,'administrator','Marko Cupic','m.cupic@gmx.ch','de','flexible','DropZone','1','1','1','1','$6$dcc599b3ac93f23d$TNTKMpxD9kBJWhGH2Exr4biw7xLUC2gAkJzMkEs0RKNklBHsZqWHu2ZsMj8DoFQJajDf2GnBHgqqUGO8qVOYt1','','1',NULL,'',NULL,NULL,'a:0:{}',NULL,'a:0:{}',NULL,NULL,NULL,'','','','a:25:{s:7:\"referer\";a:24:{s:8:\"14d3efb0\";a:3:{s:4:\"last\";s:39:\"contao/main.php?do=article&ref=78828664\";s:10:\"tl_article\";s:39:\"contao/main.php?do=article&ref=78828664\";s:7:\"current\";s:97:\"contao/main.php?do=article&table=tl_content&id=8&rt=0364239fdc2001c968241475ae6bb03f&ref=ce74599d\";}s:8:\"e9753add\";a:3:{s:4:\"last\";s:39:\"contao/main.php?do=article&ref=78828664\";s:10:\"tl_article\";s:39:\"contao/main.php?do=article&ref=78828664\";s:7:\"current\";s:97:\"contao/main.php?do=article&table=tl_content&id=8&rt=0364239fdc2001c968241475ae6bb03f&ref=ce74599d\";}s:8:\"49d9ab54\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"e4ca5191\";a:3:{s:10:\"tl_article\";s:39:\"contao/main.php?do=article&ref=49d9ab54\";s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:39:\"contao/main.php?do=article&ref=49d9ab54\";}s:8:\"107f4116\";a:3:{s:4:\"last\";s:39:\"contao/main.php?do=article&ref=49d9ab54\";s:10:\"tl_article\";s:39:\"contao/main.php?do=article&ref=49d9ab54\";s:7:\"current\";s:97:\"contao/main.php?do=article&table=tl_content&id=8&rt=f53454776daf3a8391d152bb1eef5f11&ref=e4ca5191\";}s:8:\"9568f370\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"775ce6ba\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:50:\"contao/main.php?do=repository_manager&ref=9568f370\";}s:8:\"2039acaf\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:37:\"contao/main.php?do=repository_manager\";}s:8:\"35397c1c\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:49:\"contao/main.php?do=repository_manager&upgrade=5,6\";}s:8:\"37659e39\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:49:\"contao/main.php?do=repository_manager&upgrade=5,6\";}s:8:\"d876aa83\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}i:0;a:1:{s:4:\"last\";s:0:\"\";}i:1;a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"5edfdc06\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:37:\"contao/main.php?do=repository_manager\";}s:8:\"df8fdeaf\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"98c47443\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"d31dda45\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"028a29cb\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"c03e90bc\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"c9ccdd87\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"11958b7e\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"e4d4dd19\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"5fee0cc4\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"013b2bb0\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}}s:22:\"style_sheet_update_all\";N;s:7:\"CURRENT\";a:3:{s:3:\"IDS\";a:21:{i:0;s:2:\"29\";i:1;s:2:\"18\";i:2;s:2:\"20\";i:3;s:1:\"2\";i:4;s:2:\"21\";i:5;s:2:\"15\";i:6;s:1:\"6\";i:7;s:1:\"8\";i:8;s:1:\"1\";i:9;s:2:\"13\";i:10;s:2:\"22\";i:11;s:2:\"10\";i:12;s:2:\"12\";i:13;s:2:\"14\";i:14;s:1:\"3\";i:15;s:1:\"5\";i:16;s:2:\"11\";i:17;s:2:\"17\";i:18;s:2:\"19\";i:19;s:2:\"25\";i:20;s:1:\"4\";}s:7:\"tl_page\";a:1:{i:0;s:6:\"layout\";}s:9:\"tl_member\";a:1:{i:0;s:9:\"isTeacher\";}}s:9:\"CLIPBOARD\";a:16:{s:8:\"tl_theme\";a:0:{}s:9:\"tl_layout\";a:0:{}s:9:\"tl_module\";a:0:{}s:7:\"tl_page\";a:0:{}s:14:\"tl_style_sheet\";a:0:{}s:8:\"tl_files\";a:0:{}s:10:\"tl_content\";a:0:{}s:8:\"tl_class\";a:0:{}s:10:\"tl_student\";a:0:{}s:9:\"tl_member\";a:0:{}s:9:\"tl_voting\";a:0:{}s:10:\"tl_subject\";a:0:{}s:7:\"tl_form\";a:0:{}s:10:\"tl_article\";a:0:{}s:18:\"tl_import_from_csv\";a:0:{}s:7:\"tl_user\";a:0:{}}s:11:\"new_records\";a:15:{s:8:\"tl_theme\";a:1:{i:0;i:1;}s:9:\"tl_layout\";a:1:{i:0;i:1;}s:9:\"tl_module\";a:6:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;}s:7:\"tl_page\";a:6:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;}s:14:\"tl_style_sheet\";a:1:{i:0;i:1;}s:10:\"tl_content\";a:18:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:8;i:6;i:9;i:7;i:10;i:8;i:11;i:9;i:12;i:10;i:13;i:11;i:14;i:12;i:15;i:13;i:16;i:14;i:17;i:15;i:24;i:16;i:27;i:17;i:28;}s:8:\"tl_class\";a:34:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;i:27;i:28;i:28;i:29;i:29;i:30;i:30;i:31;i:31;i:32;i:32;i:33;i:33;i:37;}s:10:\"tl_student\";a:40:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:33;i:8;i:34;i:9;i:114;i:10;i:115;i:11;i:116;i:12;i:122;i:13;i:123;i:14;i:124;i:15;i:125;i:16;i:126;i:17;i:127;i:18;i:133;i:19;i:134;i:20;i:135;i:21;i:136;i:22;i:137;i:23;i:138;i:24;i:139;i:25;i:140;i:26;i:141;i:27;i:142;i:28;i:143;i:29;i:144;i:30;i:145;i:31;i:146;i:32;i:147;i:33;i:148;i:34;i:149;i:35;i:150;i:36;i:151;i:37;i:152;i:38;i:153;i:39;i:154;}s:9:\"tl_member\";a:29:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;i:27;i:29;i:28;i:30;}s:9:\"tl_voting\";a:44:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:78178;i:4;i:78179;i:5;i:78180;i:6;i:78181;i:7;i:78182;i:8;i:78183;i:9;i:78184;i:10;i:78185;i:11;i:78186;i:12;i:78187;i:13;i:78188;i:14;i:78189;i:15;i:87159;i:16;i:87160;i:17;i:87161;i:18;i:87162;i:19;i:87163;i:20;i:87164;i:21;i:87165;i:22;i:87166;i:23;i:87167;i:24;i:87171;i:25;i:87172;i:26;i:87173;i:27;i:87174;i:28;i:87175;i:29;i:87176;i:30;i:87177;i:31;i:87178;i:32;i:87179;i:33;i:87180;i:34;i:87181;i:35;i:87182;i:36;i:87183;i:37;i:87184;i:38;i:87185;i:39;i:87186;i:40;i:87187;i:41;i:87188;i:42;i:87189;i:43;i:87191;}s:10:\"tl_subject\";a:27:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:6;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;}s:7:\"tl_form\";a:1:{i:0;i:1;}s:10:\"tl_article\";a:2:{i:0;i:4;i:1;i:7;}s:18:\"tl_import_from_csv\";a:1:{i:0;i:1;}s:7:\"tl_user\";a:2:{i:0;i:2;i:1;i:3;}}s:13:\"filePickerRef\";s:112:\"contao/page.php?do=themes&table=tl_module&field=jumpTo&act=show&id=7&value=4&rt=0364239fdc2001c968241475ae6bb03f\";s:10:\"CURRENT_ID\";s:1:\"8\";s:12:\"tl_page_tree\";a:8:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;}s:15:\"fieldset_states\";a:7:{s:7:\"tl_page\";a:5:{s:13:\"layout_legend\";i:1;s:16:\"protected_legend\";i:1;s:12:\"chmod_legend\";i:1;s:13:\"expert_legend\";i:1;s:13:\"tabnav_legend\";i:1;}s:9:\"tl_module\";a:3:{s:13:\"expert_legend\";i:1;s:15:\"template_legend\";i:1;s:12:\"email_legend\";i:1;}s:10:\"tl_content\";a:4:{s:13:\"expert_legend\";i:1;s:16:\"colheight_legend\";i:1;s:16:\"protected_legend\";i:1;s:16:\"invisible_legend\";i:1;}s:11:\"tl_settings\";a:7:{s:14:\"backend_legend\";i:1;s:17:\"repository_legend\";i:1;s:13:\"global_legend\";i:1;s:15:\"security_legend\";i:1;s:14:\"uploads_legend\";i:1;s:12:\"files_legend\";i:1;s:30:\"beurteilen_und_foerdern_legend\";i:1;}s:9:\"tl_member\";a:2:{s:14:\"account_legend\";i:0;s:12:\"login_legend\";i:1;}s:10:\"tl_article\";a:4:{s:14:\"publish_legend\";i:0;s:18:\"syndication_legend\";i:0;s:16:\"protected_legend\";i:1;s:13:\"expert_legend\";i:1;}s:9:\"tl_layout\";a:1:{s:13:\"expert_legend\";i:1;}}s:19:\"style_sheet_updater\";N;s:27:\"repository_catalog_settings\";a:8:{s:14:\"repository_tag\";s:0:\"\";s:15:\"repository_type\";s:0:\"\";s:19:\"repository_category\";s:0:\"\";s:16:\"repository_state\";s:0:\"\";s:17:\"repository_author\";s:0:\"\";s:16:\"repository_order\";s:7:\"popular\";s:15:\"repository_page\";s:1:\"0\";s:15:\"repository_find\";s:6:\"ptable\";}s:23:\"tree_tl_layout_external\";a:2:{s:32:\"39f4030dcb9136b054d571c7f217eae3\";i:1;s:32:\"1a0c4c4b105a110153b251e9418c21cb\";i:1;}s:12:\"tl_page_node\";s:1:\"0\";s:26:\"tl_article_tl_article_tree\";a:7:{i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:7;i:0;i:8;i:0;i:9;i:0;}s:21:\"tree_tl_module_jumpTo\";a:1:{i:1;i:1;}s:25:\"tree_tl_content_singleSRC\";a:2:{s:32:\"39f4030dcb9136b054d571c7f217eae3\";i:1;s:32:\"71e0446c1e980a135459458821cd471e\";i:1;}s:17:\"INVALID_TOKEN_URL\";s:84:\"contao/main.php?do=class&act=create&rt=e56c12710e6cceb169a4d3f7d5d15dca&ref=2d33d18b\";s:23:\"tl_article_tl_page_tree\";a:1:{i:1;i:1;}s:7:\"sorting\";a:3:{s:9:\"tl_voting\";s:6:\"tstamp\";s:9:\"tl_member\";s:8:\"username\";s:10:\"tl_student\";s:8:\"lastname\";}s:6:\"search\";a:3:{s:9:\"tl_voting\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:6:\"tstamp\";}s:9:\"tl_member\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:8:\"username\";}s:10:\"tl_student\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:5:\"class\";}}s:6:\"filter\";a:3:{s:9:\"tl_voting\";a:1:{s:5:\"limit\";s:3:\"all\";}s:9:\"tl_member\";a:1:{s:5:\"limit\";s:3:\"all\";}s:10:\"tl_student\";a:1:{s:5:\"limit\";s:3:\"all\";}}s:24:\"tree_tl_content_multiSRC\";a:1:{s:32:\"9dc192b8e301f4bdee945bf5ad44ede9\";i:1;}s:15:\"backend_modules\";a:2:{s:6:\"system\";i:1;s:3:\"buf\";i:1;}s:13:\"tl_files_node\";s:20:\"files/mycontaobackup\";s:8:\"filetree\";a:1:{s:8:\"cc735f0e\";i:1;}}',1390731602,1418803217,1418803221,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1407590603,'markocupic','Marko Cupic','marko.cupic@ettiswil.educanet2.ch','de','flexible','DropZone','1','1','1','1','$6$ae5a57ac5c438718$St2ngKSAzYMtSfe6M4A7qY2gYy/RpZk.BzzraBd1dj/JNMl9ALO30zviIbXOXnBb1i59eiisoi6XKD1.KaEjQ0','','1',NULL,'group','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','','','','a:16:{s:7:\"referer\";a:24:{s:8:\"045b93b5\";a:2:{s:4:\"last\";s:37:\"contao/main.php?do=class&ref=64c444b8\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=400498d1\";}i:0;a:1:{s:4:\"last\";s:0:\"\";}i:1;a:2:{s:4:\"last\";s:37:\"contao/main.php?do=class&ref=64c444b8\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=400498d1\";}s:8:\"bac141ec\";a:2:{s:4:\"last\";s:37:\"contao/main.php?do=class&ref=64c444b8\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=400498d1\";}s:8:\"446010fc\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"2e8c781a\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:50:\"contao/main.php?do=repository_manager&ref=446010fc\";}s:8:\"bed1d482\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:37:\"contao/main.php?do=repository_manager\";}s:8:\"da7f6289\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:49:\"contao/main.php?do=repository_manager&upgrade=5,6\";}s:8:\"a12e4bf8\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:49:\"contao/main.php?do=repository_manager&upgrade=5,6\";}s:8:\"bef83778\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"280ac85b\";a:2:{s:4:\"last\";s:53:\"contao/main.php?do=repository_manager&update=database\";s:7:\"current\";s:108:\"contao/main.php?do=repository_manager&update=database&smo=1&rt=17bf8e72215ec04bec37649435ff0bb3&ref=bef83778\";}s:8:\"6da6ef67\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"f392b742\";a:2:{s:4:\"last\";s:53:\"contao/main.php?do=repository_manager&update=database\";s:7:\"current\";s:108:\"contao/main.php?do=repository_manager&update=database&mmo=1&rt=17bf8e72215ec04bec37649435ff0bb3&ref=6da6ef67\";}s:8:\"01ca3994\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"2f2e189d\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"3b1c92ba\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:37:\"contao/main.php?do=repository_manager\";}s:8:\"c78cccd0\";a:2:{s:4:\"last\";s:37:\"contao/main.php?do=repository_manager\";s:7:\"current\";s:36:\"contao/main.php?do=user&ref=3b1c92ba\";}s:8:\"40db226a\";a:2:{s:4:\"last\";s:37:\"contao/main.php?do=repository_manager\";s:7:\"current\";s:36:\"contao/main.php?do=user&ref=3b1c92ba\";}s:8:\"78e719e4\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"f98ff560\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=78e719e4\";}s:8:\"a427ac56\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:37:\"contao/main.php?do=class&ref=78e719e4\";}s:8:\"a0ffab97\";a:2:{s:4:\"last\";s:37:\"contao/main.php?do=class&ref=78e719e4\";s:7:\"current\";s:39:\"contao/main.php?do=student&ref=a427ac56\";}s:8:\"98c90786\";a:2:{s:4:\"last\";s:39:\"contao/main.php?do=student&ref=a427ac56\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=a0ffab97\";}s:8:\"1ef0d884\";a:2:{s:4:\"last\";s:39:\"contao/main.php?do=student&ref=a427ac56\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=a0ffab97\";}}s:7:\"CURRENT\";a:3:{s:3:\"IDS\";a:22:{i:0;s:2:\"27\";i:1;s:2:\"25\";i:2;s:2:\"22\";i:3;s:2:\"21\";i:4;s:2:\"20\";i:5;s:2:\"19\";i:6;s:2:\"18\";i:7;s:2:\"17\";i:8;s:2:\"16\";i:9;s:2:\"15\";i:10;s:2:\"14\";i:11;s:2:\"13\";i:12;s:2:\"12\";i:13;s:2:\"11\";i:14;s:2:\"10\";i:15;s:1:\"8\";i:16;s:1:\"6\";i:17;s:1:\"5\";i:18;s:1:\"4\";i:19;s:1:\"3\";i:20;s:1:\"2\";i:21;s:1:\"1\";}s:7:\"tl_user\";a:2:{i:0;s:12:\"backendTheme\";i:1;s:8:\"uploader\";}s:8:\"tl_class\";a:1:{i:0;s:4:\"name\";}}s:9:\"CLIPBOARD\";a:6:{s:10:\"tl_subject\";a:0:{}s:9:\"tl_member\";a:0:{}s:9:\"tl_module\";a:0:{}s:7:\"tl_page\";a:0:{}s:10:\"tl_content\";a:0:{}s:8:\"tl_class\";a:0:{}}s:11:\"new_records\";a:6:{s:10:\"tl_subject\";a:2:{i:0;i:28;i:1;i:29;}s:9:\"tl_member\";a:1:{i:0;i:28;}s:9:\"tl_module\";a:1:{i:0;i:7;}s:7:\"tl_page\";a:2:{i:0;i:7;i:1;i:8;}s:10:\"tl_content\";a:2:{i:0;i:25;i:1;i:26;}s:8:\"tl_class\";a:2:{i:0;i:40;i:1;i:41;}}s:22:\"style_sheet_update_all\";N;s:10:\"CURRENT_ID\";s:1:\"1\";s:7:\"sorting\";a:2:{s:9:\"tl_member\";s:14:\"dateAdded DESC\";s:9:\"tl_voting\";s:7:\"subject\";}s:6:\"search\";a:2:{s:9:\"tl_member\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:8:\"username\";}s:9:\"tl_voting\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:6:\"tstamp\";}}s:6:\"filter\";a:3:{s:9:\"tl_member\";a:1:{s:5:\"limit\";s:3:\"all\";}s:9:\"tl_voting\";a:1:{s:5:\"limit\";s:3:\"all\";}s:6:\"tl_log\";a:1:{s:5:\"limit\";s:5:\"90,30\";}}s:17:\"INVALID_TOKEN_URL\";s:88:\"contao/main.php?do=member&act=edit&id=3&rt=0ec984103ba02538bc5f7091f768fb7f&ref=0daeb715\";s:15:\"fieldset_states\";a:2:{s:9:\"tl_module\";a:1:{s:12:\"email_legend\";i:1;}s:7:\"tl_page\";a:2:{s:13:\"expert_legend\";i:1;s:14:\"publish_legend\";i:0;}}s:13:\"filePickerRef\";s:111:\"contao/page.php?do=themes&table=tl_module&field=jumpTo&act=show&id=7&value=&rt=d5df2ec3e2d414cc7f59d9104abc5e1a\";s:21:\"tree_tl_module_jumpTo\";a:1:{i:1;i:1;}s:12:\"tl_page_tree\";a:4:{i:1;i:1;i:4;i:0;i:7;i:0;i:8;i:0;}s:12:\"tl_page_node\";s:1:\"0\";s:26:\"tl_article_tl_article_tree\";a:1:{i:8;i:0;}}',1398591724,1407590553,1415872347,3,0,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}');
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
) ENGINE=MyISAM AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_version`
--

LOCK TABLES `tl_version` WRITE;
/*!40000 ALTER TABLE `tl_version` DISABLE KEYS */;
INSERT INTO `tl_version` VALUES (449,29,1418803381,2,'tl_member',1,'administrator','Alena Günther','contao/main.php?do=member&rt=4f965ce3f8718e5114b9c0a0158e6d29&ref=d31dda45&act=edit&id=29','1','a:41:{s:2:\"id\";s:2:\"29\";s:6:\"tstamp\";s:10:\"1418803381\";s:9:\"firstname\";s:5:\"Alena\";s:8:\"lastname\";s:8:\"Günther\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"alena.guenther@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"alenaguenther\";s:8:\"password\";s:60:\"$2y$10$1f1822487c1ec9d9f99baOt.q7RhiPbNqD/8yRGc4Iv9v3Jujm9vK\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1418803381\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(447,6,1415872408,2,'tl_member',3,'markocupic','Denise Tschopp','contao/main.php?do=member&act=edit&id=6&rt=f2536ef35344bbdc40ed8d650189f55b&ref=98c90786','1','a:41:{s:2:\"id\";s:1:\"6\";s:6:\"tstamp\";s:10:\"1407588541\";s:9:\"firstname\";s:6:\"Denise\";s:8:\"lastname\";s:7:\"Tschopp\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"denise.tschopp@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"denisetschopp\";s:8:\"password\";s:106:\"$6$ea779cf1b75b66fc$ariwZ1K6yP.r4HFvW261PB2E9txFkUl1XaMYDLHxc8Hg9Onw8ktXfN7jaO5d.cMpZA7KTaDG.x8X5oBSumYNA0\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755233\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:10:\"1402920121\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:328:\"a:3:{s:7:\"referer\";a:2:{s:4:\"last\";s:23:\"buf/do/tally_sheet.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:8;s:3:\"key\";s:33:\"ccf2a314124568db9d2ea700e09a0a551\";s:4:\"time\";i:1402920021;}s:16:\"setPasswordToken\";s:0:\"\";}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:2:\"40\";s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(448,29,1418803381,1,'tl_member',1,'administrator','Alena Günther','contao/main.php?do=member&rt=4f965ce3f8718e5114b9c0a0158e6d29&ref=d31dda45&act=edit&id=29','','a:41:{s:2:\"id\";s:2:\"29\";s:6:\"tstamp\";s:10:\"1418803381\";s:9:\"firstname\";s:5:\"Alena\";s:8:\"lastname\";s:8:\"Günther\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"alena.guenther@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"alenaguenther\";s:8:\"password\";s:60:\"$2y$10$214a11ccd460baf351564uI8cTYYESzHZe9iDnF9rSHDxuD/6j0Ue\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1418803381\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(446,6,1415872387,1,'tl_member',3,'markocupic','Denise Tschopp','contao/main.php?do=member&act=edit&id=6&rt=f2536ef35344bbdc40ed8d650189f55b&ref=98c90786','','a:41:{s:2:\"id\";s:1:\"6\";s:6:\"tstamp\";s:10:\"1407588541\";s:9:\"firstname\";s:6:\"Denise\";s:8:\"lastname\";s:7:\"Tschopp\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"denise.tschopp@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"denisetschopp\";s:8:\"password\";s:106:\"$6$87a48080a5806380$kHu5ya1d.u3yL2IwHbCY50gZelVC02FtK2G6MuakpoOCiHsIgg672FLRvoqxa5uQr2kHx22aOnNFADS8OQefP/\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755233\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:10:\"1402920121\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:328:\"a:3:{s:7:\"referer\";a:2:{s:4:\"last\";s:23:\"buf/do/tally_sheet.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:8;s:3:\"key\";s:33:\"ccf2a314124568db9d2ea700e09a0a551\";s:4:\"time\";i:1402920021;}s:16:\"setPasswordToken\";s:0:\"\";}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:2:\"40\";s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(445,40,1415872361,1,'tl_class',3,'markocupic','ISS 7.1','contao/main.php?do=class&act=edit&id=40&rt=f2536ef35344bbdc40ed8d650189f55b&ref=f98ff560','1','a:3:{s:2:\"id\";s:2:\"40\";s:4:\"name\";s:7:\"ISS 7.1\";s:6:\"tstamp\";s:10:\"1407588457\";}');
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
) ENGINE=MyISAM AUTO_INCREMENT=88322 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_voting`
--

LOCK TABLES `tl_voting` WRITE;
/*!40000 ALTER TABLE `tl_voting` DISABLE KEYS */;
INSERT INTO `tl_voting` VALUES (87238,1419080868,83,22,'3','2','0','0','0','0','2','2',10),(87207,1396011538,32,3,'3','2','3','0','0','3','2','3',3),(87208,1396011539,34,3,'3','2','3','0','0','3','2','3',3),(87209,1402343048,36,3,'1','1','1','0','0','1','1','1',3),(87210,1396011544,40,3,'2','2','2','0','0','1','1','2',3),(87211,1402343032,42,3,'1','3','1','0','0','1','1','1',3),(87212,1399807298,27,3,'3','2','3','3','3','3','2','2',3),(87213,1399672124,26,3,'1','1','2','3','1','1','1','1',3),(87239,1419080880,84,22,'3','2','0','0','0','0','2','2',10),(87240,1416576949,85,22,'3','2','0','0','0','0','2','2',10),(87241,1419080892,86,22,'2','2','0','0','0','0','2','2',10),(87242,1419080904,87,22,'1','2','0','0','0','0','1','1',10),(87243,1419080926,88,22,'3','3','0','0','0','0','2','2',10),(88213,1418748177,158,1,'3','3','2','0','2','0','0','2',25),(88286,1419088829,47,22,'1','2','0','0','0','0','1','2',26),(88116,1402897430,46,8,'1','1','2','2','2','0','1','1',20),(88115,1402897422,45,8,'1','1','1','2','1','0','1','1',20),(88114,1402897421,44,8,'1','2','1','2','2','0','2','1',20),(88113,1402897419,43,8,'1','1','1','2','1','0','1','1',20),(88112,1402897410,42,8,'2','3','1','2','2','0','1','1',20),(88111,1402897478,41,8,'2','1','2','2','2','0','1','1',20),(88110,1402897385,40,8,'2','2','1','2','2','0','1','1',20),(88109,1402897384,39,8,'1','1','2','2','1','0','1','1',20),(88108,1402897383,38,8,'1','1','1','2','2','0','1','1',20),(88107,1402897382,37,8,'1','1','1','1','1','0','1','1',20),(88106,1402897381,36,8,'1','1','1','2','1','0','1','1',20),(88105,1402897381,35,8,'2','1','2','3','2','0','1','1',20),(88104,1402897380,34,8,'3','1','2','2','2','0','2','2',20),(88103,1402897371,33,8,'3','2','2','2','2','0','2','2',20),(88102,1402897370,32,8,'3','1','2','2','2','0','2','2',20),(88101,1402897370,31,8,'1','3','2','1','2','0','2','2',20),(87262,1419089250,47,22,'2','2','0','0','0','0','1','2',10),(87263,1419089258,48,22,'2','2','0','0','0','0','2','2',10),(87264,1419089270,49,22,'3','2','0','0','0','0','2','2',10),(87265,1419089276,50,22,'2','2','0','0','0','0','2','2',10),(87266,1419089353,51,22,'2','3','0','0','0','0','2','2',10),(87267,1419089362,52,22,'2','2','0','0','0','0','2','2',10),(87268,1419089369,53,22,'2','2','0','0','0','0','2','2',10),(88304,1419089547,33,22,'2','2','0','0','0','0','1','2',28),(88303,1419089532,32,22,'2','2','0','0','0','0','2','3',28),(88302,1419089519,31,22,'2','2','0','0','0','0','2','2',28),(88280,1419080723,94,22,'2','2','0','0','0','0','1','2',26),(88279,1419080690,93,22,'2','2','0','0','0','0','1','2',26),(88278,1419080670,92,22,'1','1','0','0','0','0','1','2',26),(88277,1419080645,91,22,'2','2','0','0','0','0','1','2',26),(88276,1419080630,185,22,'1','1','0','0','0','0','1','1',26),(88275,1419080368,90,22,'2','2','0','0','0','0','1','2',26),(88274,1419080348,89,22,'2','2','0','0','0','0','1','1',26),(88273,1419080335,88,22,'3','2','0','0','0','0','2','3',26),(88272,1419080300,87,22,'2','3','0','0','0','0','1','1',26),(88271,1419080264,86,22,'2','2','0','0','0','0','2','2',26),(88270,1419080237,85,22,'3','2','0','0','0','0','2','2',26),(88269,1419080201,84,22,'3','2','0','0','0','0','2','3',26),(88268,1419080111,83,22,'2','2','0','0','0','0','2','3',26),(88321,1419089885,38,22,'1','1','0','0','0','0','1','1',16),(88320,1419089867,34,22,'2','2','0','0','0','0','1','2',16),(88319,1419089834,32,22,'2','2','0','0','0','0','2','2',16),(88318,1419089826,31,22,'2','1','0','0','0','0','2','2',16),(88317,1419089758,46,22,'1','1','0','0','0','0','1','0',28),(88316,1419089752,45,22,'1','1','0','0','0','0','1','1',28),(88315,1419089745,44,22,'1','1','0','0','0','0','1','1',28),(88314,1419089736,43,22,'1','1','0','0','0','0','1','1',28),(88313,1419089728,42,22,'1','2','0','0','0','0','1','1',28),(88312,1419089719,41,22,'2','1','0','0','0','0','1','1',28),(88311,1419089699,40,22,'2','2','0','0','0','0','1','2',28),(88310,1419089667,39,22,'1','1','0','0','0','0','1','1',28),(88309,1419089660,38,22,'1','1','0','0','0','0','1','1',28),(88308,1419089650,37,22,'1','1','0','0','0','0','1','1',28),(88307,1419089642,36,22,'1','1','0','0','0','0','1','1',28),(88306,1419089633,35,22,'1','2','0','0','0','0','1','1',28),(88305,1419089563,34,22,'2','2','0','0','0','0','1','2',28),(88301,1419089223,62,22,'1','2','0','0','0','0','1','1',26),(88300,1419089210,61,22,'1','1','0','0','0','0','1','1',26),(87361,1401285657,47,11,'0','0','2','0','2','2','2','2',17),(87362,1401285739,48,11,'0','0','3','0','2','2','2','2',17),(87363,1401285669,49,11,'0','0','2','0','1','2','2','2',17),(87364,1401285922,50,11,'0','0','3','0','2','3','3','2',17),(87365,1401285931,51,11,'0','0','3','0','3','3','3','2',17),(87366,1401285681,52,11,'0','0','3','0','2','3','3','2',17),(87367,1401285937,53,11,'0','0','3','0','2','3','3','2',17),(87368,1401285783,54,11,'0','0','2','0','1','1','1','1',17),(87369,1401285787,55,11,'0','0','2','0','2','2','1','2',17),(87370,1401285791,56,11,'0','0','3','0','2','2','2','2',17),(87371,1401285795,57,11,'0','0','2','0','2','2','1','2',17),(87372,1401285800,58,11,'0','0','2','0','2','3','2','2',17),(87373,1401285806,59,11,'0','0','3','0','2','3','3','3',17),(87374,1401285810,60,11,'0','0','2','0','1','1','1','1',17),(87375,1401285814,61,11,'0','0','2','0','1','2','2','2',17),(87376,1401285816,62,11,'0','0','2','0','1','1','1','1',17),(87377,1402062186,31,11,'0','3','3','0','2','0','2','3',17),(87378,1402062133,32,11,'0','3','3','0','2','0','2','3',17),(87379,1402062145,33,11,'0','1','3','0','2','0','2','3',17),(87380,1402062148,34,11,'0','3','3','0','2','0','2','3',17),(87381,1402062154,35,11,'0','2','2','0','1','0','1','1',17),(87382,1402062161,36,11,'0','1','1','0','2','0','1','1',17),(87383,1402062164,37,11,'0','1','2','0','1','0','1','1',17),(87384,1402062175,38,11,'0','2','2','0','1','0','1','1',17),(87385,1402062195,39,11,'0','1','2','0','2','0','2','1',17),(87386,1402062205,40,11,'0','2','2','0','1','0','1','1',17),(87387,1402062210,41,11,'0','1','2','0','2','0','1','1',17),(87388,1402062231,42,11,'0','1','2','0','1','0','1','1',17),(87389,1402062238,43,11,'0','1','2','0','2','0','2','1',17),(87390,1402062255,44,11,'0','2','2','0','3','0','2','1',17),(87391,1402062259,45,11,'0','1','1','0','1','0','1','1',17),(87392,1402062275,46,11,'0','2','2','0','1','0','1','1',17),(87393,1402062549,2,11,'3','3','3','0','2','0','2','1',19),(87394,1402062552,21,11,'2','2','2','0','2','0','1','1',19),(87395,1402062506,22,11,'3','3','2','0','0','0','1','1',19),(87396,1402062567,29,11,'2','2','2','0','2','0','1','1',19),(87397,1402062510,27,11,'3','2','2','0','0','0','1','1',19),(87398,1402062574,3,11,'1','1','2','0','1','0','1','1',19),(87399,1402062580,28,11,'2','1','2','0','2','0','1','1',19),(87400,1402062586,4,11,'1','3','2','0','2','0','2','1',19),(87401,1402062590,23,11,'2','1','2','0','1','0','1','1',19),(87402,1402062592,25,11,'1','1','1','0','1','0','1','1',19),(87403,1402062596,26,11,'2','1','2','0','2','0','1','1',19),(87404,1402062598,1,11,'1','1','1','0','1','0','1','1',19),(87405,1402062606,24,11,'2','2','1','0','1','0','1','1',19),(87406,1402062609,30,11,'1','1','1','0','1','0','1','1',19),(87407,1402051674,89,20,'2','3','2','2','2','2','2','0',3),(87408,1402051703,93,20,'1','2','2','2','2','2','1','0',3),(87409,1402051729,94,20,'1','2','2','2','2','2','1','0',3),(87410,1402051749,95,20,'2','1','2','2','2','2','1','0',3),(87411,1402051774,96,20,'2','1','2','2','2','2','2','0',3),(87412,1402052371,47,20,'2','1','2','2','2','2','1','0',3),(87413,1402052382,50,20,'3','2','2','2','2','2','2','0',3),(87414,1402052391,51,20,'2','3','2','2','2','2','2','0',3),(87415,1402052403,52,20,'2','2','2','2','2','2','2','0',3),(87416,1402052411,53,20,'3','3','2','2','2','2','2','0',3),(87417,1402052422,56,20,'2','1','2','2','2','2','2','0',3),(87418,1402052432,58,20,'3','2','3','2','2','2','2','0',3),(87419,1402052442,60,20,'1','2','2','2','2','2','2','0',3),(87420,1402052450,61,20,'2','1','2','2','2','2','2','0',3),(87421,1402052465,62,20,'1','2','1','2','2','2','1','0',3),(88299,1419089160,60,22,'1','2','0','0','0','0','1','2',26),(88298,1419089135,59,22,'2','2','0','0','0','0','2','2',26),(88297,1419089118,58,22,'1','1','0','0','0','0','1','1',26),(88296,1419089107,57,22,'2','2','0','0','0','0','2','2',26),(88295,1419089078,56,22,'2','2','0','0','0','0','2','2',26),(88294,1419089046,55,22,'2','2','0','0','0','0','1','1',26),(88293,1419089038,54,22,'1','2','0','0','0','0','1','1',26),(88292,1419089013,53,22,'2','2','0','0','0','0','2','3',26),(87430,1402298160,83,17,'2','2','2','2','2','2','2','2',12),(87431,1402298164,84,17,'2','2','1','2','2','2','2','2',12),(87432,1402298165,85,17,'2','2','2','2','2','2','2','2',12),(87433,1402298166,86,17,'2','2','2','2','2','2','2','2',12),(87434,1402298167,87,17,'2','2','2','2','2','2','2','1',12),(87435,1402298169,88,17,'2','2','2','2','2','2','2','2',12),(87436,1402298170,89,17,'2','2','2','2','2','2','1','2',12),(87437,1402298171,90,17,'1','2','2','2','2','2','1','2',12),(87438,1402298172,91,17,'2','2','2','2','2','2','1','2',12),(87439,1402298174,92,17,'2','2','2','2','2','2','1','2',12),(87440,1402298175,93,17,'2','2','2','2','2','2','1','2',12),(87441,1402298177,94,17,'2','2','2','2','2','2','1','2',12),(87442,1402298179,95,17,'1','2','3','2','2','2','1','2',12),(87443,1402298181,96,17,'2','2','2','2','2','2','2','2',12),(87444,1402298200,97,17,'2','2','2','2','2','2','2','2',12),(87445,1402298155,98,17,'2','2','3','0','2','2','2','2',12),(87446,1402298563,47,17,'2','2','2','2','2','2','2','2',12),(87447,1402298564,48,17,'2','2','2','2','2','2','2','2',12),(87448,1402298565,49,17,'2','2','2','2','2','2','2','2',12),(87449,1402298567,50,17,'2','2','2','2','2','2','2','2',12),(87450,1402298568,51,17,'2','3','1','2','3','3','3','3',12),(87451,1402298569,52,17,'2','2','2','2','2','2','2','2',12),(87452,1402298571,53,17,'2','3','2','2','2','2','2','2',12),(87453,1402298571,54,17,'2','2','2','2','2','2','2','2',12),(87454,1402298573,55,17,'2','2','2','2','2','2','2','2',12),(87455,1402298574,56,17,'2','2','2','2','2','2','2','2',12),(87456,1402298575,57,17,'2','2','2','2','2','2','2','2',12),(87457,1402298577,58,17,'2','2','2','2','2','2','2','2',12),(87458,1402298579,59,17,'2','2','2','2','2','2','2','2',12),(87459,1402298580,60,17,'2','2','2','2','2','2','2','2',12),(87460,1402298581,61,17,'2','2','2','2','2','2','2','2',12),(87461,1402298612,62,17,'2','2','2','2','2','2','2','2',12),(87462,1402298899,2,17,'2','2','2','2','2','2','2','2',12),(87463,1402298903,21,17,'2','2','2','2','2','2','2','2',12),(87464,1402298906,22,17,'3','0','2','3','2','2','2','2',12),(87465,1402298908,29,17,'2','2','3','2','2','2','2','2',12),(87466,1402298912,27,17,'3','2','2','3','3','3','3','2',12),(87467,1402298915,3,17,'1','2','2','2','2','2','2','1',12),(87468,1402298917,28,17,'2','2','2','2','2','2','2','1',12),(87469,1402298919,4,17,'2','2','2','2','2','2','2','2',12),(87470,1402298920,23,17,'2','2','2','2','2','2','2','2',12),(87471,1402298921,25,17,'2','2','2','2','2','2','1','1',12),(87472,1402298922,26,17,'2','2','2','2','2','2','2','1',12),(87473,1402298923,1,17,'1','2','2','2','2','2','1','1',12),(87474,1402298925,24,17,'2','2','2','2','2','2','1','1',12),(87475,1402298932,30,17,'1','2','2','2','2','2','1','1',12),(87476,1402299270,31,17,'2','2','2','2','2','2','2','2',12),(87477,1402299271,32,17,'2','2','2','2','2','2','2','2',12),(87478,1402299272,33,17,'2','2','2','2','2','2','2','2',12),(87479,1402299273,34,17,'2','2','2','2','2','2','2','2',12),(87480,1402299274,35,17,'2','2','2','2','2','2','1','2',12),(87481,1402299275,36,17,'2','2','2','2','2','2','1','2',12),(87482,1402299275,37,17,'2','2','2','2','2','2','1','2',12),(87483,1402299277,38,17,'2','2','2','2','2','2','2','2',12),(87484,1402299278,39,17,'2','2','3','2','2','2','2','2',12),(87485,1402299279,40,17,'2','2','2','2','2','2','2','2',12),(87486,1402299280,41,17,'2','2','2','2','2','2','2','2',12),(87487,1402299281,42,17,'2','2','1','2','2','2','2','2',12),(87488,1402299283,43,17,'1','2','2','2','2','2','1','2',12),(87489,1402299284,44,17,'2','2','1','2','2','2','1','2',12),(87490,1402299285,45,17,'2','2','2','2','2','2','1','2',12),(87491,1402299302,46,17,'2','2','2','2','2','2','2','2',12),(87492,1402299500,89,17,'2','0','2','2','2','2','2','2',2),(87493,1402299501,90,17,'1','0','2','1','2','2','2','2',2),(87494,1402299502,91,17,'2','0','2','2','2','2','2','2',2),(87495,1402299503,92,17,'2','0','2','2','2','2','2','2',2),(87496,1402299505,93,17,'1','0','2','1','2','2','2','2',2),(87497,1402299506,94,17,'2','0','2','2','2','2','2','2',2),(87498,1402299507,95,17,'1','0','2','1','2','2','2','2',2),(87499,1402299508,96,17,'2','0','2','2','2','2','2','2',2),(87500,1402299509,97,17,'2','0','2','2','2','2','2','2',2),(87501,1402299513,98,17,'3','0','2','2','2','2','2','2',2),(87502,1402299687,54,17,'2','0','2','2','2','2','2','2',2),(87503,1402299688,55,17,'2','0','2','2','2','2','2','2',2),(87504,1402299689,56,17,'2','0','1','2','2','2','2','2',2),(87505,1402299690,57,17,'2','0','2','2','2','2','2','2',2),(87506,1402299691,58,17,'2','0','2','2','2','2','2','2',2),(87507,1402299692,59,17,'2','0','2','2','2','3','2','2',2),(87508,1402299693,60,17,'2','0','2','2','2','2','2','2',2),(87509,1402299694,61,17,'2','0','1','2','2','2','2','2',2),(87510,1402299700,62,17,'2','0','2','2','2','2','2','2',2),(87511,1402302811,48,1,'2','2','2','2','1','0','1','0',3),(87512,1418749152,54,1,'2','2','2','2','2','0','1','0',3),(87513,1418749144,55,1,'2','2','1','3','2','0','1','0',3),(87514,1402302905,57,1,'2','2','1','3','2','0','2','0',3),(87515,1402302974,88,1,'2','2','2','2','2','0','2','0',3),(87516,1402303009,91,1,'2','2','2','2','1','0','1','0',3),(87517,1418749076,92,1,'2','2','2','2','2','0','2','0',3),(87518,1418749084,97,1,'2','1','2','2','2','0','1','0',3),(87519,1402303159,98,1,'2','2','2','2','2','0','1','0',3),(87520,1402303757,83,1,'2','3','2','2','2','2','2','2',25),(87521,1418749517,84,1,'3','3','1','2','2','3','3','3',25),(87522,1418749511,85,1,'2','2','2','2','2','2','2','2',25),(87523,1402303770,86,1,'2','2','1','1','1','1','2','2',25),(87524,1418749246,87,1,'3','3','1','2','1','2','1','2',25),(87525,1402303777,88,1,'2','2','2','2','2','2','2','2',25),(87526,1418749254,89,1,'1','2','2','2','2','2','2','1',25),(87527,1418749534,90,1,'1','2','2','2','1','1','2','2',25),(87528,1402303804,91,1,'1','2','2','2','1','1','2','1',25),(87529,1402303806,92,1,'2','2','2','2','2','2','2','1',25),(87530,1418749538,93,1,'1','1','2','2','2','1','2','1',25),(87531,1418749540,94,1,'1','2','2','2','2','1','2','1',25),(87532,1418749545,95,1,'1','1','2','2','2','1','2','1',25),(87533,1418749382,96,1,'2','1','2','2','2','2','2','2',25),(87534,1418749269,97,1,'1','1','2','2','2','1','2','1',25),(87535,1418749552,98,1,'2','2','2','2','2','1','2','2',25),(87536,1418748449,83,1,'0','0','2','0','0','0','0','0',20),(87537,1402303883,84,1,'0','0','1','0','0','0','0','0',20),(87538,1418748487,85,1,'0','0','2','0','0','0','0','0',20),(87539,1402303887,86,1,'0','0','1','0','0','0','0','0',20),(87540,1402303888,87,1,'0','0','1','0','0','0','0','0',20),(87541,1402303891,88,1,'0','0','2','0','0','0','0','0',20),(87542,1402303894,89,1,'0','0','2','0','0','0','0','0',20),(87543,1402303897,90,1,'0','0','2','0','0','0','0','0',20),(87544,1402303899,91,1,'0','0','2','0','0','0','0','0',20),(87545,1402303900,92,1,'0','0','2','0','0','0','0','0',20),(87546,1402303903,93,1,'0','0','2','0','0','0','0','0',20),(87547,1402303905,94,1,'0','0','2','0','0','0','0','0',20),(87548,1402303906,95,1,'0','0','2','0','0','0','0','0',20),(87549,1402303907,96,1,'0','0','2','0','0','0','0','0',20),(87550,1402303909,97,1,'0','0','2','0','0','0','0','0',20),(87551,1402303912,98,1,'0','0','2','0','0','0','0','0',20),(87552,1417811030,83,3,'2','0','1','0','2','2','2','2',8),(87553,1417811030,84,3,'2','0','1','0','2','2','1','2',8),(87554,1417811030,85,3,'2','0','1','0','2','2','2','2',8),(87555,1417811030,86,3,'2','0','1','0','2','2','2','2',8),(87556,1417811030,87,3,'2','0','1','0','1','1','1','1',8),(87557,1417811030,88,3,'2','0','1','0','2','2','2','2',8),(87559,1402384238,47,3,'2','0','3','0','2','2','1','1',8),(87560,1402342914,48,3,'3','0','3','0','2','2','1','2',8),(87561,1402342917,49,3,'2','0','2','0','3','3','3','2',8),(87562,1402342921,50,3,'2','0','3','0','2','2','2','2',8),(87563,1402342946,51,3,'2','0','2','3','3','2','3','3',8),(87564,1402342933,52,3,'3','0','3','0','2','2','2','3',8),(87565,1402342938,53,3,'2','0','2','0','2','2','2','2',8),(87566,1402343232,32,3,'3','0','3','0','3','0','2','2',4),(87567,1402343233,33,3,'2','0','2','0','2','0','1','1',4),(87568,1402343238,36,3,'1','0','2','0','2','0','1','1',4),(87569,1402343241,40,3,'2','0','2','0','1','0','2','1',4),(87570,1402343243,42,3,'3','0','2','0','2','0','2','1',4),(87571,1402343251,43,3,'1','0','2','0','1','0','1','1',4),(87572,1402343254,46,3,'2','0','1','0','2','0','1','1',4),(87573,1402343418,31,3,'2','0','2','2','2','2','2','2',8),(87574,1402343416,32,3,'3','0','2','2','3','2','2','2',8),(87575,1402343413,33,3,'1','0','1','2','2','1','1','2',8),(87576,1402343414,34,3,'2','0','2','3','2','2','2','2',8),(87587,1402381047,83,4,'2','2','2','3','0','2','2','2',3),(87592,1402381148,84,4,'3','3','2','3','0','2','2','2',3),(87604,1402381395,85,4,'2','2','2','2','0','2','2','1',3),(87605,1402381350,47,20,'2','2','2','2','2','2','1','0',19),(87606,1402381358,48,20,'2','2','2','2','2','2','2','0',19),(87607,1402381495,86,4,'1','2','2','2','0','2','1','1',3),(87608,1402381368,49,20,'3','2','3','2','2','3','2','0',19),(87609,1402381379,50,20,'2','2','2','2','2','2','2','0',19),(87610,1402381392,51,20,'2','2','1','2','2','2','2','0',19),(87611,1402381406,52,20,'2','2','2','2','2','2','2','0',19),(87612,1402381432,87,4,'2','2','2','2','0','2','2','1',3),(87613,1402381414,53,20,'2','3','2','2','2','2','2','0',19),(87614,1402381422,54,20,'2','2','2','2','2','2','2','0',19),(87615,1402381434,55,20,'1','2','2','2','2','2','1','0',19),(87616,1402381445,56,20,'2','2','2','2','2','2','2','0',19),(87617,1402559014,90,4,'1','1','2','2','0','1','1','1',3),(87618,1402381453,57,20,'2','2','2','2','2','2','2','0',19),(87619,1402381476,58,20,'2','2','3','2','2','2','2','0',19),(87620,1402381489,59,20,'3','2','3','2','2','2','2','0',19),(87621,1402381498,60,20,'2','2','2','2','2','2','2','0',19),(87622,1402381512,61,20,'2','2','2','2','2','2','2','0',19),(87623,1402381521,62,20,'1','2','2','2','2','2','1','0',19),(87624,1402381545,83,20,'2','3','2','2','2','2','2','0',19),(87625,1402381625,49,4,'2','2','2','3','0','3','3','2',3),(87626,1402381561,84,20,'3','3','1','2','2','2','2','0',19),(87627,1402381571,85,20,'2','2','2','2','2','2','2','0',19),(87628,1402381580,86,20,'1','2','2','2','2','2','2','0',19),(87629,1402381590,87,20,'2','3','1','2','2','2','1','0',19),(87630,1402381604,88,20,'2','2','2','2','2','2','2','0',19),(87631,1402381613,89,20,'2','3','2','2','2','2','2','0',19),(87632,1402381624,90,20,'1','2','1','2','2','2','1','0',19),(87633,1402381633,91,20,'2','1','2','2','2','2','2','0',19),(87634,1402381670,59,4,'2','2','2','2','0','3','2','2',3),(87635,1402381642,92,20,'2','2','2','2','2','2','1','0',19),(87636,1402381651,93,20,'1','2','2','2','2','2','1','0',19),(87637,1402381663,94,20,'1','2','2','2','2','1','1','0',19),(87638,1402381672,95,20,'2','2','2','2','2','1','1','0',19),(87639,1402381680,96,20,'2','1','2','2','2','2','2','0',19),(87640,1402381689,97,20,'1','1','2','2','2','2','1','0',19),(88291,1419088975,52,22,'2','2','0','0','0','0','2','2',26),(87642,1402381708,98,20,'2','2','2','2','2','1','1','0',19),(88290,1419088937,51,22,'3','2','0','0','0','0','2','3',26),(87652,1402387431,89,18,'2','2','0','0','0','2','2','2',11),(87653,1402387445,91,18,'2','2','0','0','0','2','2','2',11),(87654,1402387469,92,18,'2','2','0','0','0','1','1','1',11),(87655,1402387483,93,18,'1','1','0','0','0','1','1','2',11),(87656,1402387498,94,18,'1','1','0','0','0','1','1','2',11),(87657,1402387508,96,18,'2','2','0','0','0','2','2','2',11),(87658,1402387526,97,18,'2','2','0','0','0','2','2','2',11),(87659,1402387539,98,18,'2','3','0','0','0','2','2','2',11),(87660,1402387631,54,18,'2','2','0','0','0','2','2','2',11),(87661,1402387641,55,18,'2','2','0','0','0','2','2','1',11),(87662,1402387658,56,18,'2','2','0','0','0','2','2','2',11),(87663,1402387670,58,18,'2','2','0','0','0','2','2','2',11),(87664,1402387680,60,18,'2','2','0','0','0','2','2','2',11),(87665,1402387692,61,18,'2','2','0','0','0','2','2','2',11),(87666,1402387751,27,18,'3','2','0','0','0','2','2','2',11),(87667,1402387765,3,18,'1','1','0','0','0','1','1','1',11),(87668,1402387779,4,18,'2','2','0','0','0','2','2','2',11),(87669,1402387799,23,18,'2','1','0','0','0','1','1','1',11),(87670,1402387814,26,18,'1','1','0','0','0','1','1','1',11),(87671,1402387826,1,18,'1','1','0','0','0','1','1','1',11),(87672,1402387838,30,18,'1','1','0','0','0','1','1','1',11),(87673,1402387889,35,18,'2','2','0','0','0','2','2','2',11),(87674,1402387910,37,18,'2','1','0','0','0','1','1','1',11),(87675,1402387930,38,18,'1','1','0','0','0','2','1','1',11),(87676,1402387939,39,18,'1','1','0','0','0','1','1','1',11),(87677,1402387951,40,18,'2','2','0','0','0','2','2','2',11),(87678,1402387963,41,18,'2','2','0','0','0','2','2','2',11),(87679,1402387984,42,18,'2','2','0','0','0','1','1','1',11),(87680,1402388001,43,18,'1','1','0','0','0','1','1','1',11),(87681,1402388020,45,18,'1','1','0','0','0','1','1','1',11),(87682,1402388031,46,18,'2','2','0','0','0','2','2','2',11),(88289,1419088913,50,22,'2','3','0','0','0','0','2','2',26),(88288,1419088901,49,22,'3','2','0','0','0','0','2','2',26),(88287,1419088887,48,22,'2','2','0','0','0','0','2','2',26),(88285,1419080976,91,22,'1','1','0','0','0','0','1','1',10),(87690,1402469574,84,10,'2','3','1','0','0','0','0','0',29),(87691,1402469601,93,10,'1','1','2','0','0','0','0','0',29),(87692,1402469616,94,10,'1','2','2','0','0','0','0','0',29),(87693,1402469635,97,10,'2','1','2','0','0','0','0','0',29),(87694,1402469671,91,10,'2','2','2','0','0','0','0','0',29),(87695,1402469825,48,10,'2','3','2','0','0','0','0','0',29),(87696,1402469843,50,10,'2','2','1','0','0','0','0','0',29),(87697,1402469851,55,10,'2','2','1','0','0','0','0','0',29),(87698,1402469869,57,10,'3','2','2','0','0','0','0','0',29),(87699,1402469893,60,10,'2','1','2','0','0','0','0','0',29),(87700,1402469909,58,10,'2','2','2','0','0','0','0','0',29),(87701,1402469927,61,10,'2','2','2','0','0','0','0','0',29),(87702,1402471225,4,10,'3','3','1','0','0','0','0','0',29),(87703,1402471233,23,10,'2','2','2','0','0','0','0','0',29),(87704,1402471240,25,10,'1','1','2','0','0','0','0','0',29),(87705,1402471324,36,10,'2','1','2','0','0','0','0','0',29),(87706,1402471342,40,10,'2','2','1','0','0','0','0','0',29),(87707,1402471354,43,10,'2','1','2','0','0','0','0','0',29),(87708,1402471364,46,10,'2','2','2','0','0','0','0','0',29),(87709,1402472882,2,10,'2','2','2','0','0','0','0','0',3),(87710,1402472897,29,10,'2','1','3','0','0','0','0','0',3),(87711,1402472920,28,10,'1','2','2','0','0','0','0','0',3),(87712,1402472930,4,10,'1','2','2','0','0','0','0','0',3),(87713,1402472941,23,10,'1','2','2','0','0','0','0','0',3),(87714,1402472993,35,10,'2','1','3','0','0','0','0','0',3),(87715,1402473000,39,10,'2','1','2','0','0','0','0','0',3),(87716,1402473012,41,10,'2','2','2','0','0','0','0','0',3),(87717,1402473022,43,10,'1','1','2','0','0','0','0','0',3),(87718,1402473037,45,10,'2','1','2','0','0','0','0','0',3),(87719,1402473044,46,10,'2','2','2','0','0','0','0','0',3),(88284,1419080830,98,22,'2','2','0','0','0','0','2','1',26),(88283,1419080834,97,22,'2','1','0','0','0','0','1','2',26),(88282,1419080764,96,22,'2','2','0','0','0','0','2','2',26),(88281,1419080738,95,22,'2','2','0','0','0','0','1','2',26),(88267,1419079852,182,22,'1','2','0','0','0','0','2','2',10),(88266,1419079828,180,22,'2','2','0','0','0','0','1','1',10),(88265,1419079806,179,22,'2','2','0','0','0','0','2','2',10),(88264,1419079741,178,22,'2','2','0','0','0','0','2','2',10),(88263,1419079708,177,22,'2','2','0','0','0','0','2','2',10),(88262,1419079699,176,22,'3','3','0','0','0','0','2','3',10),(88261,1419079677,175,22,'1','2','0','0','0','0','1','1',10),(88260,1419079664,174,22,'3','2','0','0','0','0','2','2',10),(88259,1419079654,173,22,'2','2','0','0','0','0','2','2',10),(88258,1419079644,172,22,'2','2','0','0','0','0','2','3',10),(88257,1419079632,171,22,'3','2','0','0','0','0','1','1',10),(88256,1419079395,184,22,'1','1','0','0','0','0','1','1',26),(88255,1419079385,183,22,'1','1','0','0','0','0','1','1',26),(88254,1419079376,182,22,'1','2','0','0','0','0','1','1',26),(88253,1419079398,181,22,'1','1','0','0','0','0','1','1',26),(88252,1419079298,180,22,'2','2','0','0','0','0','1','1',26),(88251,1419079285,179,22,'2','2','0','0','0','0','1','1',26),(88250,1419079232,178,22,'2','2','0','0','0','0','1','2',26),(88242,1418749631,98,1,'1','0','0','0','0','0','0','0',23),(88241,1418749612,97,1,'1','0','0','0','0','0','0','0',23),(88240,1418749611,96,1,'2','0','0','0','0','0','0','0',23),(88239,1418749610,95,1,'1','0','0','0','0','0','0','0',23),(88238,1418749607,94,1,'1','0','0','0','0','0','0','0',23),(88237,1418749603,93,1,'1','0','0','0','0','0','0','0',23),(88236,1418749601,92,1,'2','0','0','0','0','0','0','0',23),(88235,1418749599,91,1,'1','0','0','0','0','0','0','0',23),(88234,1418749596,90,1,'1','0','0','0','0','0','0','0',23),(88233,1418749595,89,1,'1','0','0','0','0','0','0','0',23),(88232,1418749592,88,1,'2','0','0','0','0','0','0','0',23),(88231,1418749591,87,1,'1','0','0','0','0','0','0','0',23),(88230,1418749584,86,1,'1','0','0','0','0','0','0','0',23),(88229,1418749579,85,1,'1','0','0','0','0','0','0','0',23),(88228,1418749577,84,1,'2','0','0','0','0','0','0','0',23),(88227,1418749575,83,1,'1','0','0','0','0','0','0','0',23),(88226,1418748253,169,1,'1','1','1','0','1','0','0','1',25),(88225,1418748211,166,1,'1','1','1','0','1','0','0','1',25),(87760,1402483341,21,8,'2','1','1','2','1','1','1','2',4),(87761,1402483536,3,8,'1','1','1','2','1','2','2','1',4),(87762,1402483498,25,8,'1','1','2','2','1','2','1','1',4),(87763,1402483500,1,8,'1','1','1','1','1','1','1','1',4),(87764,1402483505,30,8,'1','1','1','2','1','1','1','1',4),(87765,1402484189,31,8,'2','3','2','1','2','2','1','2',4),(87766,1402484188,34,8,'3','1','3','3','3','2','1','2',4),(87767,1402484197,35,8,'2','1','2','3','2','2','1','1',4),(87768,1402484199,37,8,'1','1','1','1','1','1','1','1',4),(87769,1402484198,38,8,'1','1','1','2','1','1','1','1',4),(87770,1402484218,39,8,'1','1','2','2','1','2','1','1',4),(87771,1402484210,41,8,'1','1','1','2','2','1','1','1',4),(87772,1402484255,44,8,'1','2','1','2','2','2','1','1',4),(87773,1402484271,45,8,'1','1','1','2','1','2','1','1',4),(87774,1402485054,2,8,'2','1','3','0','2','0','2','1',23),(87775,1402485055,21,8,'1','1','1','0','1','0','1','1',23),(87776,1402484365,22,8,'2','2','0','0','0','0','0','0',23),(87777,1402485068,29,8,'2','1','2','0','2','0','2','1',23),(87778,1402485069,27,8,'3','1','3','0','3','0','2','1',23),(87779,1402485070,3,8,'2','1','2','0','2','0','2','1',23),(87780,1402485007,28,8,'1','1','2','0','1','0','1','0',23),(87781,1402485073,4,8,'2','2','2','0','2','0','2','1',23),(87782,1402485074,23,8,'2','1','2','0','2','0','1','1',23),(87783,1402485074,25,8,'1','1','1','0','1','0','1','1',23),(87784,1402485075,26,8,'1','1','2','0','1','0','2','1',23),(87785,1402485080,1,8,'1','1','1','0','1','0','1','1',23),(87786,1402485081,24,8,'2','1','1','0','1','0','1','1',23),(87787,1402485090,30,8,'1','1','1','0','1','0','1','1',23),(87788,1402485471,2,13,'0','3','3','0','0','3','2','0',17),(87789,1402487551,21,13,'0','3','2','0','0','2','1','0',17),(87790,1402485467,22,13,'0','3','3','0','0','3','2','0',17),(87791,1402485473,29,13,'0','2','3','0','0','2','2','0',17),(87792,1402485491,27,13,'0','2','2','0','0','2','3','0',17),(87793,1402485496,3,13,'0','1','1','0','0','2','2','0',17),(87794,1402485342,28,13,'0','2','1','0','0','2','0','0',17),(87795,1402485551,4,13,'0','2','2','3','0','2','3','0',17),(87796,1402485553,23,13,'0','2','3','3','0','3','3','0',17),(87797,1402485561,25,13,'0','2','1','3','0','3','3','0',17),(87798,1402485563,26,13,'0','1','1','0','0','1','1','0',17),(87799,1402485566,1,13,'0','1','1','0','0','1','1','0',17),(87800,1402485571,24,13,'0','1','1','0','0','1','1','0',17),(87801,1402485581,30,13,'0','1','1','0','0','1','1','0',17),(87802,1402586389,2,8,'2','1','3','0','2','0','0','1',20),(87803,1402586389,21,8,'1','1','1','0','1','0','0','1',20),(87804,1402586394,22,8,'3','2','0','0','0','0','0','1',20),(87805,1402586404,29,8,'2','1','2','0','2','0','0','1',20),(87806,1402586406,3,8,'1','1','1','0','2','0','0','1',20),(87807,1402586405,27,8,'3','1','3','0','3','0','0','1',20),(87808,1402586406,28,8,'1','1','1','0','1','0','0','1',20),(87809,1402586407,4,8,'2','2','1','0','2','0','0','1',20),(87810,1402586410,23,8,'2','1','2','0','2','0','0','1',20),(87811,1402586410,25,8,'1','1','1','0','1','0','0','1',20),(87812,1402486085,2,13,'2','3','3','2','2','2','2','0',29),(87813,1402486090,29,13,'2','2','2','2','2','1','2','0',29),(87814,1402486109,27,13,'2','1','2','2','3','2','2','0',29),(87815,1402486111,28,13,'1','2','1','2','2','2','2','0',29),(87816,1402486120,26,13,'1','1','0','1','1','1','1','0',29),(87817,1402486501,32,13,'2','1','2','2','2','1','2','0',29),(87818,1402486586,42,13,'2','3','1','1','2','1','2','0',29),(87819,1402486868,83,13,'3','3','3','2','2','2','1','0',29),(87820,1402486985,85,13,'2','2','2','2','2','2','2','0',29),(87821,1402486990,86,13,'2','2','1','2','2','3','2','0',29),(87822,1402486992,90,13,'1','1','1','1','1','1','1','0',29),(87823,1402487013,95,13,'1','1','1','1','1','1','1','0',29),(87824,1402487510,47,13,'2','1','1','2','1','1','1','0',29),(87825,1402487513,49,13,'2','3','1','2','2','1','2','0',29),(87826,1402487516,52,13,'2','2','3','2','3','2','2','0',29),(87827,1402487519,56,13,'1','1','1','1','1','1','1','0',29),(87828,1402487522,59,13,'2','2','2','2','3','3','3','0',29),(87829,1402487528,62,13,'1','2','1','1','1','1','1','0',29),(87830,1402487776,83,13,'0','0','2','0','0','0','0','0',17),(87831,1402487591,84,13,'0','0','1','0','0','0','0','0',17),(87832,1402487593,85,13,'0','0','2','0','0','0','0','0',17),(87833,1402487595,86,13,'0','0','2','0','0','0','0','0',17),(87834,1402487597,87,13,'0','0','1','0','0','0','0','0',17),(87835,1402487600,88,13,'0','0','1','0','0','0','0','0',17),(87836,1402487606,89,13,'0','0','3','0','0','0','0','0',17),(87837,1402487616,90,13,'0','0','2','0','0','0','0','0',17),(87838,1402487618,91,13,'0','0','1','0','0','0','0','0',17),(87839,1402487621,92,13,'0','0','2','0','0','0','0','0',17),(87840,1402487622,93,13,'0','0','1','0','0','0','0','0',17),(87841,1402487623,94,13,'0','0','1','0','0','0','0','0',17),(87842,1402487625,95,13,'0','0','2','0','0','0','0','0',17),(87843,1402487627,96,13,'0','0','2','0','0','0','0','0',17),(87844,1402487628,97,13,'0','0','3','0','0','0','0','0',17),(87845,1402487646,98,13,'0','0','3','0','0','0','0','0',17),(87846,1402487990,83,13,'1','0','0','0','1','0','1','0',21),(87847,1402487993,84,13,'1','0','0','0','1','0','1','0',21),(87848,1402488137,85,13,'1','0','0','0','0','0','0','0',21),(87849,1402488038,86,13,'1','0','0','0','0','0','0','0',21),(87850,1402487815,87,13,'1','0','0','0','0','0','0','0',21),(87851,1402487978,88,13,'1','0','0','0','1','0','0','0',21),(87852,1402487828,89,13,'1','0','0','0','0','0','0','0',21),(87853,1402487829,90,13,'1','0','0','0','0','0','0','0',21),(87854,1402487830,91,13,'1','0','0','0','0','0','0','0',21),(87855,1402487843,92,13,'1','0','0','0','0','0','0','0',21),(87856,1402487844,93,13,'1','0','0','0','0','0','0','0',21),(87857,1402487845,94,13,'1','0','0','0','0','0','0','0',21),(87858,1402487846,95,13,'1','0','0','0','0','0','0','0',21),(87859,1402487853,96,13,'1','0','0','0','0','0','0','0',21),(87860,1402487854,97,13,'1','0','0','0','0','0','0','0',21),(87861,1402487858,98,13,'1','0','0','0','0','0','0','0',21),(87862,1402488884,83,13,'2','3','2','2','1','1','1','0',4),(87863,1402488885,84,13,'2','3','1','2','1','2','1','0',4),(87864,1402488891,85,13,'1','2','1','2','2','2','2','0',4),(87865,1402488892,86,13,'2','2','1','2','2','2','1','0',4),(87866,1402488894,87,13,'2','2','1','2','1','1','1','0',4),(87867,1402488905,88,13,'3','1','2','2','2','1','2','0',4),(87868,1402488911,89,13,'1','2','1','1','2','1','2','0',4),(87869,1402488912,90,13,'1','1','1','1','1','1','1','0',4),(87870,1402488916,91,13,'1','1','1','1','1','1','1','0',4),(87871,1402488920,92,13,'2','2','2','2','2','1','2','0',4),(87872,1402488935,93,13,'1','2','1','1','2','1','1','0',4),(87873,1402488939,94,13,'1','1','1','1','1','1','1','0',4),(87874,1402488940,95,13,'1','1','1','1','1','1','1','0',4),(87875,1402488944,96,13,'2','1','1','2','2','2','2','0',4),(87876,1402488946,97,13,'1','2','2','0','2','2','2','0',4),(87877,1402488956,98,13,'1','2','1','0','2','2','2','0',4),(87878,1402497711,21,4,'2','2','3','2','0','0','2','2',3),(87879,1402497826,3,4,'1','1','2','2','0','0','1','1',3),(87880,1402497819,25,4,'1','2','1','2','0','0','1','1',3),(87881,1402497781,1,4,'2','1','1','2','0','0','1','1',3),(87882,1402497809,30,4,'1','1','1','2','0','0','1','1',3),(87883,1402497914,2,4,'3','3','0','3','0','0','2','2',10),(87884,1402497923,21,4,'1','2','0','2','0','0','2','2',10),(87890,1402504911,21,21,'2','2','2','0','1','0','1','1',29),(87886,1402497958,29,4,'2','2','0','2','0','0','1','1',10),(87887,1402497975,28,4,'1','1','0','2','0','0','1','1',10),(87888,1402498002,25,4,'1','1','0','1','0','0','1','2',10),(87889,1402498023,24,4,'2','1','0','2','0','0','2','2',10),(87891,1402504916,3,21,'1','1','2','0','1','0','1','1',29),(87893,1402504918,24,21,'1','1','1','0','1','0','1','1',29),(87894,1402504925,30,21,'1','1','2','0','1','0','1','1',29),(87895,1402505330,31,21,'2','3','2','0','2','0','2','2',29),(87896,1402505334,33,21,'2','3','2','0','2','0','2','2',29),(87897,1402505336,34,21,'3','1','2','0','2','0','3','2',29),(87898,1402505343,35,21,'2','2','3','0','1','0','1','1',29),(87899,1402505345,37,21,'1','1','2','0','1','0','1','1',29),(87900,1402505348,38,21,'1','1','1','0','1','0','1','1',29),(87901,1402505350,39,21,'1','1','2','0','2','0','1','1',29),(87902,1402505357,41,21,'2','1','1','0','2','0','2','1',29),(87903,1402505359,44,21,'2','1','1','0','2','0','2','1',29),(87904,1402505364,45,21,'1','1','1','0','1','0','1','1',29),(87905,1402505414,1,21,'2','1','2','0','1','0','1','1',29),(88224,1418748209,164,1,'1','1','1','0','1','0','0','1',25),(88223,1418748207,157,1,'1','1','2','0','1','0','0','1',25),(88222,1418748205,168,1,'2','2','2','0','1','0','0','2',25),(88221,1418748202,167,1,'2','2','2','0','1','0','0','1',25),(88220,1418748197,165,1,'2','2','2','0','2','0','0','2',25),(88219,1418748197,163,1,'2','2','1','0','2','0','0','2',25),(87916,1402506234,28,21,'1','1','1','0','1','0','1','1',5),(87917,1402506237,4,21,'2','2','2','0','1','0','1','2',5),(87918,1402506246,23,21,'3','2','3','0','1','0','1','3',5),(87919,1402506252,26,21,'1','1','1','0','1','0','1','1',5),(87920,1402506530,31,21,'2','3','2','0','2','0','2','2',5),(87921,1402506532,33,21,'2','2','2','0','2','0','2','2',5),(87922,1402506534,34,21,'2','1','2','0','2','0','3','2',5),(87923,1402506541,35,21,'2','1','2','0','1','0','1','1',5),(87924,1402506550,40,21,'2','2','1','0','1','0','1','2',5),(87925,1402506552,43,21,'1','1','1','0','1','0','1','1',5),(87926,1402506554,45,21,'1','1','1','0','1','0','1','1',5),(87927,1402506559,46,21,'2','1','2','0','2','0','1','1',5),(88218,1418748197,162,1,'2','2','2','0','1','0','0','2',25),(88217,1418748182,170,1,'2','2','2','0','2','0','0','2',25),(88216,1418748181,161,1,'3','3','2','0','3','0','0','2',25),(88215,1418748180,160,1,'3','3','1','0','2','0','0','2',25),(88214,1418748178,159,1,'2','2','2','0','2','0','0','2',25),(88212,1416576615,168,22,'2','2','0','0','0','0','1','1',10),(88211,1419078727,167,22,'1','1','0','0','0','0','1','2',10),(88210,1419078704,165,22,'2','2','0','0','0','0','2','2',10),(88209,1419078715,163,22,'3','2','0','0','0','0','2','2',10),(87940,1402576906,84,2,'2','3','1','2','2','2','2','2',4),(87941,1402576909,87,2,'2','3','2','2','2','2','2','2',4),(87942,1402576920,97,2,'2','2','3','2','2','2','1','2',4),(87943,1402576913,96,2,'2','2','3','2','2','2','2','2',4),(87944,1402576911,94,2,'2','2','2','2','2','1','1','2',4),(87945,1402576910,93,2,'2','2','2','2','2','1','1','2',4),(87946,1402577472,35,5,'2','0','2','0','2','0','2','2',2),(87947,1402577329,36,5,'1','0','1','0','1','1','1','2',2),(87948,1402577482,37,5,'1','0','1','1','1','0','1','1',2),(87949,1402577372,38,5,'1','0','1','0','1','0','1','1',2),(87950,1402577486,39,5,'2','0','2','0','2','0','2','1',2),(87951,1402577491,40,5,'2','0','2','0','2','0','2','2',2),(87952,1402577393,41,5,'2','0','2','0','1','0','2','2',2),(87953,1402577495,42,5,'2','0','2','3','2','0','2','2',2),(87954,1402577501,43,5,'2','0','2','0','2','0','2','1',2),(87955,1402577399,44,5,'1','0','1','0','2','0','2','1',2),(87956,1402577504,45,5,'1','0','1','0','1','0','1','1',2),(87957,1402577518,46,5,'2','0','1','0','2','1','1','1',2),(87958,1402576340,27,5,'3','0','2','0','3','3','3','2',2),(87959,1402576197,3,5,'2','0','2','0','2','0','1','2',2),(87960,1402576199,28,5,'2','0','2','0','2','0','1','2',2),(87961,1402576943,4,5,'2','0','2','3','3','0','2','2',2),(87962,1402576239,23,5,'1','0','1','0','1','0','1','2',2),(87963,1402576247,25,5,'1','0','1','0','1','0','1','2',2),(87964,1402576957,26,5,'2','0','1','0','1','0','1','1',2),(87965,1402576267,1,5,'1','0','1','0','1','0','1','1',2),(87966,1402576269,24,5,'2','0','2','0','2','0','2','2',2),(87967,1402576289,30,5,'2','0','2','0','1','0','1','1',2),(87968,1402577234,87,2,'2','2','1','2','2','2','2','2',29),(87969,1402577235,88,2,'2','3','2','2','2','2','2','2',29),(87970,1402577237,89,2,'2','2','2','2','2','2','2','2',29),(87971,1402577241,96,2,'2','2','2','2','2','2','2','2',29),(87972,1402577250,98,2,'2','2','3','2','2','2','2','1',29),(87973,1402577238,92,2,'2','2','2','2','2','2','2','2',29),(87974,1402577412,84,2,'2','3','1','2','2','2','2','2',5),(87975,1402577413,91,2,'2','2','2','2','2','2','2','2',5),(87976,1402577416,92,2,'2','2','3','2','2','2','2','2',5),(87977,1402577417,93,2,'2','2','2','2','2','2','2','2',5),(87978,1402577419,96,2,'2','2','3','2','2','2','2','2',5),(87979,1402577423,97,2,'2','2','3','2','2','2','2','2',5),(88208,1419078693,162,22,'1','2','0','0','0','0','1','2',10),(88207,1419078686,170,22,'3','2','0','0','0','0','2','2',10),(88206,1419078674,161,22,'3','2','0','0','0','0','2','2',10),(88205,1416576508,160,22,'2','2','0','0','0','0','2','2',10),(88204,1416576498,159,22,'2','2','0','0','0','0','1','1',10),(88203,1419078681,158,22,'3','2','0','0','0','0','2','2',10),(88202,1416576447,169,22,'1','1','0','0','0','0','1','1',26),(88201,1416576440,166,22,'1','1','0','0','0','0','1','1',26),(88200,1416576432,164,22,'1','1','0','0','0','0','1','1',26),(88199,1416576425,157,22,'1','1','0','0','0','0','1','1',26),(88198,1419078525,168,22,'2','2','0','0','0','0','1','2',26),(88197,1416576395,167,22,'2','2','0','0','0','0','1','1',26),(88196,1419078481,165,22,'2','3','0','0','0','0','2','2',26),(88195,1419078476,163,22,'2','2','0','0','0','0','2','2',26),(88194,1419078467,162,22,'1','2','0','0','0','0','1','2',26),(88193,1416576242,170,22,'2','2','0','0','0','0','2','2',26),(88192,1416576208,161,22,'2','2','0','0','0','0','2','2',26),(88001,1402578517,47,2,'2','2','2','2','2','2','1','2',25),(88002,1402578519,48,2,'2','2','2','2','1','2','1','2',25),(88003,1402578520,49,2,'2','3','2','2','2','3','2','2',25),(88004,1402578521,50,2,'2','3','2','2','2','2','2','2',25),(88005,1402578524,51,2,'3','3','1','3','2','3','2','3',25),(88006,1402578549,52,2,'2','2','2','2','2','2','2','3',25),(88007,1402578529,53,2,'2','2','2','2','2','2','2','2',25),(88008,1402578529,54,2,'1','1','2','2','2','2','1','2',25),(88009,1402578563,55,2,'3','2','2','2','2','2','2','2',25),(88010,1402578563,56,2,'1','1','2','2','1','2','1','2',25),(88011,1402578564,57,2,'3','2','2','2','2','2','1','2',25),(88012,1402578566,58,2,'2','2','2','2','2','2','1','2',25),(88013,1402578571,59,2,'3','3','2','2','3','3','3','3',25),(88014,1402578575,60,2,'1','1','2','2','1','2','1','2',25),(88015,1402578577,61,2,'1','2','2','2','2','2','1','2',25),(88016,1402578580,62,2,'1','2','2','2','1','1','1','1',25),(88017,1402586411,26,8,'2','1','2','0','2','0','0','1',20),(88018,1402586412,1,8,'1','1','1','0','1','0','0','1',20),(88019,1402586415,24,8,'2','1','1','0','2','0','0','1',20),(88020,1402586425,30,8,'1','1','1','0','1','0','0','1',20),(88021,1402598488,83,19,'3','3','3','0','0','0','0','2',5),(88022,1402598506,85,19,'2','2','2','0','0','0','0','2',5),(88023,1402598511,86,19,'2','2','1','0','0','0','0','2',5),(88024,1402598515,90,19,'1','1','2','0','0','0','0','1',5),(88025,1402598535,95,19,'1','1','3','0','0','0','0','1',5),(88026,1402598517,94,19,'1','2','1','0','0','0','0','1',5),(88027,1402598716,49,19,'3','3','3','0','0','0','0','3',5),(88028,1402598725,52,19,'3','3','2','0','0','0','0','2',5),(88029,1402598730,56,19,'1','2','2','0','0','0','0','1',5),(88030,1402598785,59,19,'2','3','2','0','0','0','0','3',5),(88031,1402598789,62,19,'1','1','1','0','0','0','0','1',5),(88032,1402598986,21,19,'2','2','1','0','0','0','0','2',5),(88033,1402598989,3,19,'1','2','2','0','0','0','0','1',5),(88034,1402598992,25,19,'2','2','2','0','0','0','0','1',5),(88035,1402598996,1,19,'1','1','2','0','0','0','0','1',5),(88036,1402598998,24,19,'3','3','1','0','0','0','0','2',5),(88037,1402599001,30,19,'1','2','2','0','0','0','0','1',5),(88038,1402599129,37,19,'1','1','2','0','0','0','0','1',5),(88039,1402599134,38,19,'2','1','1','0','0','0','0','2',5),(88040,1402599137,39,19,'1','2','3','0','0','0','0','1',5),(88041,1402599140,41,19,'2','2','1','0','0','0','0','2',5),(88042,1402599147,44,19,'1','3','1','0','0','0','0','2',5),(88191,1416576186,160,22,'2','2','0','0','0','0','2','2',26),(88190,1419078428,159,22,'2','2','0','0','0','0','1','2',26),(88189,1419078868,158,22,'2','2','0','0','0','0','3','3',26),(88188,1416575818,24,22,'1','1','0','0','0','0','1','1',16),(88187,1416575802,29,22,'2','1','0','0','0','0','1','1',16),(88186,1416575785,21,22,'2','2','0','0','0','0','1','2',16),(88185,1416575730,30,22,'1','1','0','0','0','0','1','1',28),(88160,1415873341,158,6,'4','3','4','2','3','3','2','4',4),(88161,1415873213,159,6,'2','2','2','2','2','2','2','2',4),(88053,1402652292,2,3,'3','2','3','3','3','3','1','2',25),(88249,1419079207,177,22,'2','2','0','0','0','0','2','2',26),(88248,1419079195,176,22,'3','2','0','0','0','0','2','2',26),(88247,1419079139,175,22,'2','2','0','0','0','0','2','2',26),(88246,1419079144,174,22,'2','2','0','0','0','0','2','2',26),(88245,1419079147,173,22,'2','2','0','0','0','0','2','2',26),(88244,1419079150,172,22,'2','2','0','0','0','0','2','2',26),(88243,1419079003,171,22,'2','2','0','0','0','0','1','1',26),(88061,1402780690,21,3,'2','0','2','2','1','0','1','0',25),(88062,1402780580,22,3,'2','0','2','3','2','0','0','0',25),(88063,1402780587,29,3,'3','0','3','3','3','0','0','0',25),(88064,1402780592,27,3,'3','0','3','3','3','0','0','0',25),(88065,1402780599,3,3,'1','0','2','1','1','0','0','0',25),(88066,1402780607,28,3,'1','0','2','1','1','0','0','0',25),(88067,1402780615,4,3,'2','0','2','2','1','0','0','0',25),(88068,1402780619,23,3,'2','0','2','2','1','0','0','0',25),(88069,1402780624,25,3,'1','0','1','1','1','0','0','0',25),(88070,1402780629,26,3,'1','0','2','1','1','0','0','0',25),(88071,1402780633,1,3,'1','0','1','1','1','0','0','0',25),(88072,1402780637,24,3,'2','0','2','2','1','0','0','0',25),(88073,1402780645,30,3,'1','0','1','1','1','0','0','0',25),(88074,1402824078,31,4,'2','3','3','2','2','2','2','2',25),(88075,1402824126,32,4,'3','2','2','2','2','2','2','2',25),(88076,1402824192,33,4,'2','2','2','2','2','1','2','2',25),(88077,1402824216,34,4,'3','2','3','2','2','2','3','2',25),(88078,1402824249,35,4,'1','2','3','2','1','2','1','1',25),(88079,1402824284,36,4,'1','2','2','2','2','1','1','1',25),(88080,1402824299,37,4,'1','1','1','2','1','1','1','1',25),(88081,1402824344,38,4,'1','1','1','2','1','2','1','1',25),(88082,1402824369,39,4,'1','1','2','2','2','2','2','1',25),(88083,1402824399,40,4,'1','2','1','2','2','2','1','2',25),(88084,1402824434,41,4,'1','2','2','2','2','2','1','2',25),(88085,1402824474,42,4,'2','3','1','2','2','2','2','1',25),(88086,1402824501,43,4,'1','1','3','2','1','2','1','1',25),(88087,1402824564,44,4,'1','2','1','3','2','2','2','1',25),(88088,1402824623,45,4,'1','1','2','2','1','2','1','1',25),(88089,1402824634,46,4,'2','2','2','2','2','2','2','1',25),(88090,1402824940,31,4,'3','3','3','2','2','2','2','2',3),(88091,1402824976,33,4,'2','2','2','2','2','1','1','1',3),(88092,1402825001,37,4,'1','1','1','1','1','1','1','1',3),(88093,1402825020,38,4,'1','1','1','2','1','1','1','1',3),(88094,1402825044,44,4,'1','2','1','2','2','2','2','1',3),(88095,1402825101,31,4,'1','2','0','0','0','0','2','1',10),(88096,1402825121,32,4,'3','2','0','0','0','0','2','2',10),(88097,1402825137,33,4,'2','2','0','0','0','0','1','2',10),(88098,1402825147,34,4,'2','2','0','0','0','0','2','2',10),(88099,1402825161,36,4,'1','1','0','0','0','0','2','1',10),(88100,1402825179,44,4,'2','2','0','0','0','0','2','1',10),(88184,1416575717,24,22,'1','1','0','0','0','0','1','1',28),(88183,1416575708,1,22,'1','1','0','0','0','0','1','1',28),(88182,1416575701,26,22,'1','1','0','0','0','0','1','1',28),(88181,1416575690,25,22,'1','1','0','0','0','0','1','1',28),(88180,1416575682,23,22,'2','1','0','0','0','0','1','1',28),(88179,1419089446,4,22,'2','2','0','0','0','0','1','2',28),(88178,1416575624,28,22,'2','1','0','0','0','0','1','1',28),(88177,1416575610,3,22,'1','1','0','0','0','0','1','1',28),(88176,1416575595,29,22,'2','1','0','0','0','0','1','1',28),(88175,1419089424,21,22,'1','2','0','0','0','0','1','2',28),(88174,1416575539,2,22,'2','2','0','0','0','0','1','2',28),(88173,1415873615,169,6,'1','1','1','1','2','2','2','2',4),(88172,1415873583,166,6,'1','1','1','1','2','2','2','1',4),(88171,1415873564,164,6,'1','1','1','2','2','2','2','2',4),(88170,1415873527,157,6,'1','1','1','2','2','2','2','1',4),(88169,1415873498,168,6,'3','2','3','2','2','3','2','3',4),(88168,1415873458,167,6,'1','2','2','2','2','2','2','2',4),(88167,1415873433,165,6,'3','2','3','3','2','2','2','3',4),(88166,1415873395,163,6,'4','3','3','3','3','3','3','3',4),(88162,1415873673,160,6,'3','3','3','3','2','2','3','3',4),(88163,1415873320,161,6,'2','2','3','2','2','2','2','2',4),(88164,1415873357,170,6,'2','2','2','2','2','2','2','2',4),(88165,1415873365,162,6,'2','2','2','2','2','2','2','2',4);
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

-- Dump completed on 2015-01-02 10:17:15