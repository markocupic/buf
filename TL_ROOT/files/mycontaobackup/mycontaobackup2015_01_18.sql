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
INSERT INTO `tl_cron` VALUES (1,'lastrun','1421489220'),(2,'monthly','201501'),(3,'weekly','201503'),(4,'daily','20150117'),(5,'hourly','0'),(6,'minutely','0');
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
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_files`
--

LOCK TABLES `tl_files` WRITE;
/*!40000 ALTER TABLE `tl_files` DISABLE KEYS */;
INSERT INTO `tl_files` VALUES (1,NULL,1390731602,'j�Z��s��\0%�	W�','folder','files/music_academy','','6b19950b3b045d9cd7c0d5a05497c8c4','1','music_academy',NULL,0,0,0,0),(2,'j�Z��s��\0%�	W�',1390731602,'j�Z~�s��\0%�	W�','folder','files/music_academy/campus','','ad80e0071bea96273bd184fe24c8f6c0','1','campus',NULL,0,0,0,0),(3,'j�Z~�s��\0%�	W�',1390731602,'j�Zj�s��\0%�	W�','file','files/music_academy/campus/campus_building.jpg','jpg','a0ac423df6265537c7b1783ed9cbb698','1','campus_building.jpg',NULL,0,0,0,0),(4,'j�Z~�s��\0%�	W�',1390731602,'j�ZL�s��\0%�	W�','file','files/music_academy/campus/campus_hall.jpg','jpg','16074d6c3e3dfeb23d580715f486bff2','1','campus_hall.jpg',NULL,0,0,0,0),(5,'j�Z~�s��\0%�	W�',1390731602,'j�Z8�s��\0%�	W�','file','files/music_academy/campus/campus_library.jpg','jpg','1795dc0db4a1efcd2c390e3969ac3d3b','1','campus_library.jpg',NULL,0,0,0,0),(6,'j�Z~�s��\0%�	W�',1390731602,'j�Z\Z�s��\0%�	W�','file','files/music_academy/campus/campus_overview.jpg','jpg','12360a385a87413fa9914d9f4b0f3113','1','campus_overview.jpg',NULL,0,0,0,0),(7,'j�Z��s��\0%�	W�',1390731602,'j�Y��s��\0%�	W�','file','files/music_academy/admin.gif','gif','37173d258871c781db2c025060e4f8ab','1','admin.gif',NULL,0,0,0,0),(8,'j�Z��s��\0%�	W�',1390731602,'j�Y�s��\0%�	W�','file','files/music_academy/background.gif','gif','b2a05c65803733133c981a2d4e386968','1','background.gif',NULL,0,0,0,0),(9,'j�Z��s��\0%�	W�',1390731602,'j�Yʆs��\0%�	W�','file','files/music_academy/frontendmodules.gif','gif','4f697b474f6d1e66f442c1c67d574a99','1','frontendmodules.gif',NULL,0,0,0,0),(10,'j�Z��s��\0%�	W�',1390731602,'j�Y��s��\0%�	W�','file','files/music_academy/image.png','png','cb636d32a257f7b6337b7392afeab02d','1','image.png',NULL,0,0,0,0),(11,'j�Z��s��\0%�	W�',1390731602,'j�W:�s��\0%�	W�','file','files/music_academy/james-wilson.jpg','jpg','fd894d798786066577c9de8cbe9c1e38','1','james-wilson.jpg',NULL,0,0,0,0),(12,'j�Z��s��\0%�	W�',1390731602,'j�W&�s��\0%�	W�','file','files/music_academy/layout.gif','gif','ec5793c27e75e0426a69202d876733e2','1','layout.gif',NULL,0,0,0,0),(13,'j�Z��s��\0%�	W�',1390731602,'j�W�s��\0%�	W�','file','files/music_academy/modules.gif','gif','cefbcdcc5facb958977376f2c46367dc','1','modules.gif',NULL,0,0,0,0),(14,'j�Z��s��\0%�	W�',1390731602,'j�W�s��\0%�	W�','file','files/music_academy/news.gif','gif','ee4c7b3e72fb750033036036176feace','1','news.gif',NULL,0,0,0,0),(15,'j�Z��s��\0%�	W�',1390731602,'j�V��s��\0%�	W�','file','files/music_academy/pagemounts.gif','gif','1317e91c34333dfd9bad071dd43e9f39','1','pagemounts.gif',NULL,0,0,0,0),(16,'j�Z��s��\0%�	W�',1390731602,'j�V�s��\0%�	W�','file','files/music_academy/permissions.gif','gif','edc93c562d750ea9e0b20052298f4aa5','1','permissions.gif',NULL,0,0,0,0),(17,'j�Z��s��\0%�	W�',1390731602,'j�V��s��\0%�	W�','file','files/music_academy/protect.gif','gif','7d8c259b52dc2fe5ccd8b8ea7e8090fb','1','protect.gif',NULL,0,0,0,0),(18,'j�Z��s��\0%�	W�',1390731602,'j�V̆s��\0%�	W�','file','files/music_academy/screenshot.jpg','jpg','bc787a96a23265d4de60c9d1c8e21580','1','screenshot.jpg',NULL,0,0,0,0),(19,NULL,1390731602,'j�Vs��\0%�	W�','folder','files/tiny_templates','','3cb25412587bbaedd9901598abd93284','1','tiny_templates',NULL,0,0,0,0),(20,'j�Vs��\0%�	W�',1390731602,'j�V��s��\0%�	W�','file','files/tiny_templates/index.html','html','aeebec42dc0335ea1e0853f4393259b4','1','index.html',NULL,0,0,0,0),(21,NULL,1390731602,'j��D�s��\0%�	W�','file','files/tinymce.css','css','e6cfd2993ed50341da010e66be287d2d','1','tinymce.css',NULL,0,0,0,0),(45,'�������\0%�	W�',1395693911,'1�g³���\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_24.sql','sql','cc130e90fb61e04d53942157b8658d27','1','mycontaobackup2014_03_24.sql',NULL,0,0,0,0),(46,'�������\0%�	W�',1395731595,'�������\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_25.sql','sql','cd46fa5fc39a5758874de041b86373f6','1','mycontaobackup2014_03_25.sql',NULL,0,0,0,0),(44,'�������\0%�	W�',1395501561,'W�ؘ����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_22.sql','sql','5fe587d0fe35f0886e75b83f16d60193','1','mycontaobackup2014_03_22.sql',NULL,0,0,0,0),(43,'�������\0%�	W�',1394298160,'u.^����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_08.sql','sql','8da73313aca4b44f23cde66b40c87f0b','1','mycontaobackup2014_03_08.sql',NULL,0,0,0,0),(42,'�������\0%�	W�',1394235796,'Av�\Z�R��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_07.sql','sql','338fe8c4a167b14ad2b0c50f477eec4b','1','mycontaobackup2014_03_07.sql',NULL,0,0,0,0),(41,'�������\0%�	W�',1394095363,'H�fH���\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_06.sql','sql','f6b20733ee6c5cfeaeb21f11e6aabd19','1','mycontaobackup2014_03_06.sql',NULL,0,0,0,0),(40,'�������\0%�	W�',1394013373,'b�ꊤL��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_05.sql','sql','7d7306046452eafc9c92ebe1b6a97ff2','1','mycontaobackup2014_03_05.sql',NULL,0,0,0,0),(39,'�������\0%�	W�',1393943198,'�T�|����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_04.sql','sql','d41d8cd98f00b204e9800998ecf8427e','1','mycontaobackup2014_03_04.sql',NULL,0,0,0,0),(38,NULL,1393942769,'�������\0%�	W�','folder','files/mycontaobackup','','a26917c3aeda6a40b6472b152f69285b','1','mycontaobackup',NULL,0,0,0,0),(37,NULL,1393941394,'\Z�����\0%�	W�','file','files/Ettiswil.csv','csv','661e3b80e530309df4b15eb89bfb05aa','1','Ettiswil.csv',NULL,0,0,0,0),(47,'�������\0%�	W�',1395827435,'T�z����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_26.sql','sql','d16c7c7490b4a451609c68eb82986674','1','mycontaobackup2014_03_26.sql',NULL,0,0,0,0),(48,'�������\0%�	W�',1395895933,'�]뢵k��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_27.sql','sql','b10a724d22d201e52f3b218bef3a5a4a','1','mycontaobackup2014_03_27.sql',NULL,0,0,0,0),(49,'�������\0%�	W�',1395984180,'P�9��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_28.sql','sql','905f77b93f0e07c9f231fdca2361b087','1','mycontaobackup2014_03_28.sql',NULL,0,0,0,0),(50,'�������\0%�	W�',1396081770,'?��|���\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_29.sql','sql','70a96c2d0819c470602ab567a42e144a','1','mycontaobackup2014_03_29.sql',NULL,0,0,0,0),(51,'�������\0%�	W�',1396249723,'K�J�����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_03_31.sql','sql','377053911fcc1179c7841dc68d94e804','1','mycontaobackup2014_03_31.sql',NULL,0,0,0,0),(52,'�������\0%�	W�',1396335446,'�\Z�z�j��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_01.sql','sql','6e38ea6074700b8ced785a1bbef49ec5','1','mycontaobackup2014_04_01.sql',NULL,0,0,0,0),(53,'�������\0%�	W�',1396417297,'t�켺)��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_02.sql','sql','2d8aa2d10924012d45b166a6e5e74123','1','mycontaobackup2014_04_02.sql',NULL,0,0,0,0),(54,'�������\0%�	W�',1396686464,')�q�����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_05.sql','sql','51e6f5a686e812c4bb2a15ad0e49ef2c','1','mycontaobackup2014_04_05.sql',NULL,0,0,0,0),(55,'�������\0%�	W�',1397591723,'�������\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_15.sql','sql','409e3e0a10b9b24056378d45f3d754d4','1','mycontaobackup2014_04_15.sql',NULL,0,0,0,0),(56,'�������\0%�	W�',1397626803,'��U��)��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_16.sql','sql','0d17456901c05fd5f69f381af5916749','1','mycontaobackup2014_04_16.sql',NULL,0,0,0,0),(57,'�������\0%�	W�',1398591615,'����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_04_27.sql','sql','2dbb47a89558778c70d86d0d002b0c57','1','mycontaobackup2014_04_27.sql',NULL,0,0,0,0),(58,'�������\0%�	W�',1399471411,'^˩����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_07.sql','sql','fa2f785829490b6215d273837c229a18','1','mycontaobackup2014_05_07.sql',NULL,0,0,0,0),(59,'�������\0%�	W�',1399536044,'�c��ֆ��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_08.sql','sql','eb63c85127cf3ef756f6829eab33ec8a','1','mycontaobackup2014_05_08.sql',NULL,0,0,0,0),(60,'�������\0%�	W�',1399668544,'[M�x׻��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_09.sql','sql','30d47ab45c38a42c5900a5a9e3450e3f','1','mycontaobackup2014_05_09.sql',NULL,0,0,0,0),(61,'�������\0%�	W�',1399732173,'��-��O��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_10.sql','sql','011dc12bb008e29a44228adeccf6b0ea','1','mycontaobackup2014_05_10.sql',NULL,0,0,0,0),(62,'�������\0%�	W�',1399803348,'8�$B����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_11.sql','sql','5275cfa344067880fc13fda53133b271','1','mycontaobackup2014_05_11.sql',NULL,0,0,0,0),(63,'�������\0%�	W�',1399879406,'O\Z�L٦��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_12.sql','sql','26c517305826e2eb618789ba252b6d3f','1','mycontaobackup2014_05_12.sql',NULL,0,0,0,0),(64,'�������\0%�	W�',1400067953,'M��]��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_14.sql','sql','bc01c8dee0ff3a3c2e9ba0c17b614dd7','1','mycontaobackup2014_05_14.sql',NULL,0,0,0,0),(65,'�������\0%�	W�',1400529004,'źj�ߎ�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_19.sql','sql','36f49e464b0b564c774890925eb90834','1','mycontaobackup2014_05_19.sql',NULL,0,0,0,0),(66,'�������\0%�	W�',1400827122,'���D�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_23.sql','sql','575290706fd86987d0ccbb61fe5d11bd','1','mycontaobackup2014_05_23.sql',NULL,0,0,0,0),(67,'�������\0%�	W�',1401031806,'rֆ|�!�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_25.sql','sql','2050698089a49e7878a8b38d604c3f42','1','mycontaobackup2014_05_25.sql',NULL,0,0,0,0),(68,'�������\0%�	W�',1401089095,'����)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_26.sql','sql','5296c92f845691a94a5f111b7d46ee0e','1','mycontaobackup2014_05_26.sql',NULL,0,0,0,0),(69,'�������\0%�	W�',1401221881,'\0~M����)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_27.sql','sql','11f49d65ac57ba90fcb823749a1a026a','1','mycontaobackup2014_05_27.sql',NULL,0,0,0,0),(70,'�������\0%�	W�',1401255151,'v�L��)�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_05_28.sql','sql','9db18c06a806a6ff9b2aef8870ca5c59','1','mycontaobackup2014_05_28.sql',NULL,0,0,0,0),(71,'�������\0%�	W�',1401891041,'�6,���)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_04.sql','sql','f4ec6bc4d4bf5fc2d5cb1f9c51a8c936','1','mycontaobackup2014_06_04.sql',NULL,0,0,0,0),(72,'�������\0%�	W�',1401959543,'�H�\n��)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_05.sql','sql','42a0d8cefbb89625e0084300ddd50de3','1','mycontaobackup2014_06_05.sql',NULL,0,0,0,0),(73,'�������\0%�	W�',1402039215,'��\n�K�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_06.sql','sql','0f4e7bb185ed3c8b1a75d2a0fc5625ea','1','mycontaobackup2014_06_06.sql',NULL,0,0,0,0),(74,'�������\0%�	W�',1402294688,'�jmZ��)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_09.sql','sql','aa09a018dbf81479c4266b44ac74861a','1','mycontaobackup2014_06_09.sql',NULL,0,0,0,0),(75,'�������\0%�	W�',1402380693,'68��f�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_10.sql','sql','92a0bd5ec4c9535a437fa026bb55c7b3','1','mycontaobackup2014_06_10.sql',NULL,0,0,0,0),(76,'�������\0%�	W�',1402469060,'����3�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_11.sql','sql','a297acb891c9dbb38a6f7769b1c17b6b','1','mycontaobackup2014_06_11.sql',NULL,0,0,0,0),(77,'�������\0%�	W�',1402547382,',�\Z<���)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_12.sql','sql','a6f3a59433654b6b7b2eb83468dc4910','1','mycontaobackup2014_06_12.sql',NULL,0,0,0,0),(78,'�������\0%�	W�',1402637144,'*�e���)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_13.sql','sql','b6a27350adc59b03c56170c567435328','1','mycontaobackup2014_06_13.sql',NULL,0,0,0,0),(79,'�������\0%�	W�',1402738001,'�JT���)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_14.sql','sql','f0d5c3bed246ac76223bd1053ede8672','1','mycontaobackup2014_06_14.sql',NULL,0,0,0,0),(80,'�������\0%�	W�',1402815662,'��B�Z�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_15.sql','sql','47e8fee386d40f3cf93537dddb7a0fd5','1','mycontaobackup2014_06_15.sql',NULL,0,0,0,0),(81,'�������\0%�	W�',1402896821,'�B^t��)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_16.sql','sql','a6f81ee5d9b81dd695cf441d435e450b','1','mycontaobackup2014_06_16.sql',NULL,0,0,0,0),(82,'�������\0%�	W�',1403017926,'�ށV�1�)\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_17.sql','sql','e12eb8a4612649c5a40878694a941046','1','mycontaobackup2014_06_17.sql',NULL,0,0,0,0),(83,'�������\0%�	W�',1404143334,'\n�Z\0n�t\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_06_30.sql','sql','c53c49bb75c2273acbfe30d7aeac835e','1','mycontaobackup2014_06_30.sql',NULL,0,0,0,0),(84,'�������\0%�	W�',1404227584,'2�{�2�c\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_07_01.sql','sql','f606ff8da89536dd40e9d0445c6fc509','1','mycontaobackup2014_07_01.sql',NULL,0,0,0,0),(85,'�������\0%�	W�',1405663495,'p�|A�2\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_07_18.sql','sql','9991138527eecfb4a4fa92b4783100c8','1','mycontaobackup2014_07_18.sql',NULL,0,0,0,0),(86,'�������\0%�	W�',1405797273,'�v�x�2\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_07_19.sql','sql','604b00f15eb4a5b1899efe0eb929ca8b','1','mycontaobackup2014_07_19.sql',NULL,0,0,0,0),(87,'�������\0%�	W�',1407352000,'�%�����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_06.sql','sql','29a4321ec4fa3c9ff3582f51f3c71a13','1','mycontaobackup2014_08_06.sql',NULL,0,0,0,0),(88,'�������\0%�	W�',1407416881,'�S�3��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_07.sql','sql','02209e1fb8cf59cc33ab02385ca840b9','1','mycontaobackup2014_08_07.sql',NULL,0,0,0,0),(89,'�������\0%�	W�',1407522983,'����*�7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_08.sql','sql','36d4cb5398082912ac35054be80ba5e6','1','mycontaobackup2014_08_08.sql',NULL,0,0,0,0),(90,'�������\0%�	W�',1407588342,'��t��7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_09.sql','sql','2ad06d1af78139f0146f32b8a691b391','1','mycontaobackup2014_08_09.sql',NULL,0,0,0,0),(91,'�������\0%�	W�',1407697162,'p�� ��7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_10.sql','sql','4d2ade48e07d6571834f7c61a219929f','1','mycontaobackup2014_08_10.sql',NULL,0,0,0,0),(92,'�������\0%�	W�',1408129732,'����$��7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_15.sql','sql','20dcf673f687957c5c8cf6608481e307','1','mycontaobackup2014_08_15.sql',NULL,0,0,0,0),(93,'�������\0%�	W�',1408451079,'�Ql\'��7\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_08_19.sql','sql','0bc2bb31d49b467a17ab80eed37ca4ac','1','mycontaobackup2014_08_19.sql',NULL,0,0,0,0),(94,'�������\0%�	W�',1415872435,'��&hk\Z䥃\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_11_13.sql','sql','2a1b4adef7fb35197eed8d401c4cbfc3','1','mycontaobackup2014_11_13.sql',NULL,0,0,0,0),(95,'�������\0%�	W�',1416066086,'��\0\\l��N\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_11_15.sql','sql','c01326ffe07eeed338e8418e75d7d653','1','mycontaobackup2014_11_15.sql',NULL,0,0,0,0),(96,'�������\0%�	W�',1416574297,'!�j�q}�N\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_11_21.sql','sql','ae148c14a920304faac66800cb2e0b1e','1','mycontaobackup2014_11_21.sql',NULL,0,0,0,0),(97,'�������\0%�	W�',1416985209,'����u9�N\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_11_26.sql','sql','c65abd255fcf8f10775f8704f4ed6695','1','mycontaobackup2014_11_26.sql',NULL,0,0,0,0),(98,'�������\0%�	W�',1417809293,'�6(\Z|�䌍\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_12_05.sql','sql','ceb8a423399e7da0600c121f029988d1','1','mycontaobackup2014_12_05.sql',NULL,0,0,0,0),(99,'�������\0%�	W�',1418747042,'��?��\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_12_16.sql','sql','0aa01d57a721b88611edc2e29719b0f2','1','mycontaobackup2014_12_16.sql',NULL,0,0,0,0),(100,'�������\0%�	W�',1418803163,'�W�t����\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_12_17.sql','sql','3e7d95d3b0fe5a8c3410b8d109664e36','1','mycontaobackup2014_12_17.sql',NULL,0,0,0,0),(101,'�������\0%�	W�',1419078385,'i�\Z�C�Q\0%�	W�','file','files/mycontaobackup/mycontaobackup2014_12_20.sql','sql','4844c932838997eb63d953504292858d','1','mycontaobackup2014_12_20.sql',NULL,0,0,0,0),(102,'�������\0%�	W�',1419318126,'��\'6�q䲝\0%��q�','file','files/mycontaobackup/mycontaobackup2014_12_23.sql','sql','19729847abebc46ca0c8c361864ed099','1','mycontaobackup2014_12_23.sql',NULL,0,0,0,0),(103,'�������\0%�	W�',1420190235,'$k.��`䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_02.sql','sql','f03b11d9cf3c150ae909fa16477c0a17','1','mycontaobackup2015_01_02.sql',NULL,0,0,0,0),(104,'�������\0%�	W�',1420298580,'gK�.�\\䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_03.sql','sql','6d573db1a20ece944cd1a636bd42f2d2','1','mycontaobackup2015_01_03.sql',NULL,0,0,0,0),(105,'�������\0%�	W�',1420557576,'l�w}��䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_06.sql','sql','71de5631d56fe2d20b84f246bc1c6cb7','1','mycontaobackup2015_01_06.sql',NULL,0,0,0,0),(106,'�������\0%�	W�',1420983890,'�e\Z��䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_11.sql','sql','7b2f2fb23b41c7413dfec97104a90e19','1','mycontaobackup2015_01_11.sql',NULL,0,0,0,0),(107,'�������\0%�	W�',1421045399,':˚\'䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_12.sql','sql','e34d440d8c8a8820d53a759c12cffc31','1','mycontaobackup2015_01_12.sql',NULL,0,0,0,0),(108,'�������\0%�	W�',1421139921,'Mg���䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_13.sql','sql','c70c311d104970585e8e8de0ee79f703','1','mycontaobackup2015_01_13.sql',NULL,0,0,0,0),(109,'�������\0%�	W�',1421224177,'z����䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_14.sql','sql','08a508e814acca2d54abaa607627660d','1','mycontaobackup2015_01_14.sql',NULL,0,0,0,0),(110,'�������\0%�	W�',1421301435,'[1�{䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_15.sql','sql','6b75d53bac7f09a2bff85bcd82c66b19','1','mycontaobackup2015_01_15.sql',NULL,0,0,0,0),(111,'�������\0%�	W�',1421394222,'d�)��S䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_16.sql','sql','a3ca6b6362adc0cd8acd6eb86962420e','1','mycontaobackup2015_01_16.sql',NULL,0,0,0,0),(112,'�������\0%�	W�',1421489254,'�(��0䐐\0%��q�','file','files/mycontaobackup/mycontaobackup2015_01_17.sql','sql','15204f0e5701e732452261db99e9c8b8','1','mycontaobackup2015_01_17.sql',NULL,0,0,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=4653 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_log`
--

LOCK TABLES `tl_log` WRITE;
/*!40000 ALTER TABLE `tl_log` DISABLE KEYS */;
INSERT INTO `tl_log` VALUES (4580,1421316436,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4579,1421315209,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4578,1421315197,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4577,1421314512,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4576,1421314179,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4575,1421313894,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged out','Contao\\User::logout','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),(4574,1421313893,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4573,1421313719,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged in','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),(4572,1421313707,'FE','ACCESS','','Invalid password submitted for username &quot;regulalanicca&quot;','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),(4571,1421311941,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4570,1421307659,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4569,1421302243,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4568,1421301445,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4567,1421301440,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4566,1421301440,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4565,1421254316,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4564,1421252924,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4563,1421251041,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4562,1421241733,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged out','Contao\\User::logout','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),(4561,1421240428,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged in','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),(4560,1421239722,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4559,1421237069,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4558,1421235490,'FE','ACCESS','juergzihlmann','User &quot;juergzihlmann&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4557,1421235462,'FE','ACCESS','','Could not find user &quot;juerg zihlmann&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4556,1421235443,'FE','ACCESS','','Could not find user &quot;jürg zihlmann&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4555,1421235418,'FE','ACCESS','','Could not find user &quot;jürg zihlmann&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4554,1421224442,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4553,1421224429,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4552,1421224418,'FE','ACCESS','','Invalid password submitted for username &quot;regulalanicca&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4551,1421224391,'FE','ACCESS','','Invalid password submitted for username &quot;regulalanicca&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4550,1421224362,'FE','ACCESS','','Could not find user &quot;lanicca regula&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4549,1421224349,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4548,1421224338,'FE','ACCESS','','Could not find user &quot;regula lanicca&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4547,1421224323,'FE','ACCESS','','Could not find user &quot;lanicca regula&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4546,1421224189,'FE','ACCESS','','Could not find user &quot;regula.lanicca&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4545,1421181309,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','82.136.93.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0'),(4544,1421181303,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','82.136.93.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0'),(4543,1421181303,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','82.136.93.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0'),(4542,1421166672,'FE','ACCESS','annevedaetwyler','User &quot;annevedaetwyler&quot; has logged in','Contao\\User::login','85.4.78.0','Mozilla/5.0 (Windows NT 6.1; rv:34.0) Gecko/20100101 Firefox/34.0'),(4541,1421166170,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4540,1421166146,'FE','ACCESS','','Invalid password submitted for username &quot;josefbieri&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4539,1421166132,'FE','ACCESS','','Invalid password submitted for username &quot;josefbieri&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4538,1421166091,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4537,1421165908,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4536,1421165892,'FE','ACCESS','','Could not find user &quot;mathias.schaer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4535,1421162905,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4534,1421159970,'FE','ACCESS','helgatroxler','User &quot;helgatroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4533,1421159948,'FE','ACCESS','','Invalid password submitted for username &quot;helgatroxler&quot;','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4532,1421159832,'FE','ACCESS','','Invalid password submitted for username &quot;helgatroxler&quot;','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4531,1421157412,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4530,1421155193,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4529,1421155184,'FE','ACCESS','','Invalid password submitted for username &quot;angelahurni&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4528,1421144421,'FE','ACCESS','gianninawidmer','User &quot;gianninawidmer&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4527,1421143745,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4526,1421141131,'FE','ACCESS','gianninawidmer','User &quot;gianninawidmer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4525,1421141124,'FE','ACCESS','','Invalid password submitted for username &quot;gianninawidmer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4524,1421141114,'FE','ACCESS','','Invalid password submitted for username &quot;gianninawidmer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4523,1421141104,'FE','ACCESS','gianninawidmer','User &quot;gianninawidmer&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4522,1421141076,'FE','ACCESS','gianninawidmer','User &quot;gianninawidmer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4521,1421141063,'FE','ACCESS','','Invalid password submitted for username &quot;gianninawidmer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4520,1421141052,'FE','ACCESS','','Invalid password submitted for username &quot;gianninawidmer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4519,1421141017,'FE','ACCESS','','Could not find user &quot;giannina.widmer@ettiswil&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4518,1421141004,'FE','ACCESS','','Could not find user &quot;giannina&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4517,1421140988,'FE','ACCESS','','Could not find user &quot;giannina widmer&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; rv:33.0) Gecko/20100101 Firefox/33.0'),(4516,1421139943,'FE','ACCESS','','Could not find user &quot;helga&quot;','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4515,1421097082,'FE','ACCESS','patriziafink','User &quot;patriziafink&quot; has logged out','Contao\\User::logout','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4514,1421097076,'FE','ACCESS','patriziafink','User &quot;patriziafink&quot; has logged in','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4513,1421097068,'FE','ACCESS','patriziafink','User &quot;patriziafink&quot; has logged out','Contao\\User::logout','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4512,1421094876,'FE','ACCESS','patriziafink','User &quot;patriziafink&quot; has logged in','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4511,1421086212,'FE','ACCESS','patriziafink','User &quot;patriziafink&quot; has logged in','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4510,1421086012,'FE','ACCESS','','Could not find user &quot;patrizia.fink@ettiswil.educanet2.ch&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4509,1421085989,'FE','ACCESS','','Could not find user &quot;patrizia.fink@ettiswil.educanet2.ch&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4508,1421085822,'FE','ACCESS','','Could not find user &quot;patrizia.fink@ettiswil.educanet2.ch&quot;','Contao\\User::login','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4507,1421085758,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4506,1421085757,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4505,1421085757,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4504,1421085757,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4503,1421085757,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4502,1421085757,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','80.218.121.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/7.1.2 Safari/537.85.11'),(4501,1421069970,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4500,1421069813,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4499,1421069798,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4498,1421069463,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4497,1421069434,'FE','ACCESS','','Invalid password submitted for username &quot;heinztroxler&quot;','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4496,1421051409,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4495,1421051401,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4494,1421051347,'FE','ACCESS','angelahurni','User &quot;angelahurni&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4493,1421051335,'FE','ACCESS','','Could not find user &quot;angela&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4492,1421051324,'FE','ACCESS','','Could not find user &quot;angelahurni84&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4491,1421051310,'FE','ACCESS','','Could not find user &quot;angela hurni&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4490,1421045419,'FE','ACCESS','alicelustenberger','User &quot;alicelustenberger&quot; has logged in','Contao\\User::login','85.5.207.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5'),(4489,1420984510,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged out','Contao\\User::logout','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4487,1420983902,'FE','ACCESS','','Could not find user &quot;toniwaldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4488,1420983998,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4486,1420983896,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4485,1420983896,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4484,1420566697,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged out','Contao\\User::logout','213.221.194.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4483,1420566590,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.194.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4482,1420557999,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4481,1420557590,'FE','ACCESS','josefbieri','User &quot;josefbieri&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4479,1420557582,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4480,1420557582,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4478,1420557582,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4477,1420557582,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4476,1420557582,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4475,1420557582,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4474,1420299541,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4473,1420298598,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4472,1420298586,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4471,1420298586,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4470,1420222067,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4469,1420222023,'FE','ACCESS','','A new password has been requested for user ID 3 (m.cupic@gmx.ch)','Contao\\ModulePassword::sendPasswordLink','178.193.204.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4468,1420221962,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4467,1420221946,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4466,1420221832,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=4&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4465,1420221798,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4464,1420195600,'FE','ACCESS','','Could not find user &quot;toni waldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4463,1420195587,'FE','ACCESS','','Could not find user &quot;toni.waldispuehl@ettiswil.educanet2.ch&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4461,1420195525,'FE','ACCESS','','Could not find user &quot;toni.waldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4462,1420195541,'FE','ACCESS','','Could not find user &quot;toni waldispühl&quot;','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4460,1420190241,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4459,1420190241,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4458,1420190241,'FE','CRON','','Purged the search cache','Contao\\Automator::purgeSearchCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4457,1420190241,'FE','CRON','','Purged the script cache','Contao\\Automator::purgeScriptCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4456,1420190241,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4455,1420190241,'FE','CRON','','Generated style sheet &quot;Background_Replacement.css&quot;','Contao\\StyleSheets::updateStyleSheets','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4454,1420190241,'FE','CRON','','Purged the image cache','Contao\\Automator::purgeImageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4453,1420190241,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4595,1421328812,'FE','ACCESS','atestbtest','User &quot;atestbtest&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4596,1421328820,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4597,1421329403,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4598,1421329893,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4599,1421333105,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4600,1421333118,'FE','ACCESS','atestbtest','User &quot;atestbtest&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4601,1421333153,'FE','ACCESS','atestbtest','User &quot;atestbtest&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4602,1421333186,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4650,1421489260,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4651,1421489276,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged in','Contao\\User::login','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4652,1421489479,'FE','ACCESS','toniwaldispuehl','User &quot;toniwaldispuehl&quot; has logged out','Contao\\User::logout','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4649,1421489260,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.212.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4648,1421441770,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4647,1421441748,'BE','GENERAL','markocupic','DELETE FROM tl_member WHERE id=32','Contao\\DC_Table::delete','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4646,1421441711,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4645,1421441694,'FE','ACCESS','anton','User &quot;anton&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4644,1421441609,'FE','ACCESS','anton','User &quot;anton&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4643,1421441539,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4642,1421441532,'FE','ACCESS','anton','User &quot;anton&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4641,1421441409,'FE','ACCESS','anton','User &quot;anton&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4640,1421441400,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4639,1421441389,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=32&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4638,1421441343,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=32&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4637,1421441340,'BE','GENERAL','markocupic','A new entry &quot;tl_member.id=32&quot; has been created','Contao\\DC_Table::create','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4636,1421441332,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4635,1421432884,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4634,1421427316,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4633,1421426585,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4632,1421399559,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4631,1421395978,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36'),(4630,1421394232,'FE','ACCESS','anitauka','User &quot;anitauka&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4628,1421394228,'FE','CRON','','Purged the temp folder','Contao\\Automator::purgeTempFolder','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4629,1421394228,'FE','CRON','','Checked for Contao updates','Contao\\Automator::checkForUpdates','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4627,1421359489,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.93 Mobile Safari/537.36'),(4626,1421357277,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4625,1421356882,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4623,1421353849,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=3&quot; has been created','Contao\\DC_Table::editAll','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4624,1421355219,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4622,1421353787,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4621,1421352414,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4620,1421352280,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4619,1421340481,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4617,1421338836,'FE','ACCESS','anitauka','User &quot;anitauka&quot; has logged out','Contao\\User::logout','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4618,1421340292,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4616,1421338063,'FE','ACCESS','mathiasschaer','User &quot;mathiasschaer&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4615,1421337815,'FE','ACCESS','anitauka','User &quot;anitauka&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4614,1421337631,'FE','ACCESS','','A new password has been requested for user ID 2 (anita.uka@ettiswil.educanet2.ch)','Contao\\ModulePassword::sendPasswordLink','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4613,1421337483,'FE','ACCESS','','The account has been locked for security reasons','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4612,1421337468,'FE','ACCESS','','Invalid password submitted for username &quot;anitauka&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4611,1421337448,'FE','ACCESS','','Invalid password submitted for username &quot;anitauka&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4610,1421337435,'FE','ACCESS','','Invalid password submitted for username &quot;anitauka&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4609,1421337414,'FE','ACCESS','','Could not find user &quot;anita.uka&quot;','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),(4608,1421333306,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4607,1421333275,'BE','CRON','markocupic','Purged the internal cache','Contao\\Automator::purgeInternalCache','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4606,1421333275,'BE','REPOSITORY','markocupic','Extension &quot;import_from_csv&quot; has been updated to version &quot;1.0.1&quot;','RepositoryManager::updateExtension','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4605,1421333252,'BE','CRON','markocupic','Purged the internal cache','Contao\\Automator::purgeInternalCache','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4604,1421333252,'BE','REPOSITORY','markocupic','Extension &quot;ajax&quot; has been uninstalled','RepositoryManager::uninstallExtension','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4603,1421333204,'BE','GENERAL','markocupic','DELETE FROM tl_member WHERE id=31','Contao\\DC_Table::delete','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4594,1421328775,'FE','ACCESS','atestbtest','User &quot;atestbtest&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4592,1421328757,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=31&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0'),(4593,1421328762,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged out','Contao\\User::logout','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4589,1421328681,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0'),(4590,1421328704,'BE','GENERAL','markocupic','A new entry &quot;tl_member.id=31&quot; has been created','Contao\\DC_Table::create','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0'),(4591,1421328715,'BE','GENERAL','markocupic','A new version of record &quot;tl_member.id=31&quot; has been created','Contao\\DC_Table::edit','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0'),(4586,1421325681,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged in','Contao\\User::login','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4587,1421326195,'FE','ACCESS','heinztroxler','User &quot;heinztroxler&quot; has logged out','Contao\\User::logout','92.107.157.0','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),(4588,1421327933,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','178.193.204.0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4585,1421319553,'BE','GENERAL','markocupic','DELETE FROM tl_member WHERE id=11','Contao\\DC_Table::delete','213.221.192.0','Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4582,1421317387,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged out','Contao\\User::logout','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),(4581,1421317374,'FE','ACCESS','regulalanicca','User &quot;regulalanicca&quot; has logged in','Contao\\User::login','85.5.26.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),(4584,1421319535,'BE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'),(4583,1421318193,'FE','ACCESS','markocupic','User &quot;markocupic&quot; has logged in','Contao\\User::login','213.221.192.0','Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36');
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member`
--

LOCK TABLES `tl_member` WRITE;
/*!40000 ALTER TABLE `tl_member` DISABLE KEYS */;
INSERT INTO `tl_member` VALUES (21,1421353849,'Annève','Dätwyler','','','','','','','','','','','','anneve.daetwyler@ettiswil.educanet2.ch','','',NULL,'1','annevedaetwyler','$6$b0de8078134af2e8$Vqe/KBvrJ3UBs.gcmFSClmaoxXlb.mpBde7FokH2gZMnlZZBQzjawfdlvCVyNq2c3WR.MrZ0zwnf.eF2PXOl40','',NULL,'','','',1393774266,1402502783,1421166672,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjVUMU5hTUZwWFJtcGhSMVo1VUZSSmVBPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjVUMU5hTUZwWFJtcGhSMVo1VUZSSmVBPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}',NULL,0,'','','1',NULL,'0',''),(22,1421353849,'Josef','Bieri','','','','','','','','','','','','josef.bieri@ettiswil.educanet2.ch','','',NULL,'1','josefbieri','$6$5972411d4ed91004$FbfEZ2fHxnZbLIwMMMYMWxzLBD6.tEg/Fsp8hniGG3FC0EWtDLUfyvyXQIYoGeec/gjT/misY5anEpE4mGt8F0','',NULL,'','','',1393774274,1420566590,1421166170,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxQVTFwNlpGZEtjVnBYVGpCUVZFa3lTbTVTYkZsWFRtOWFXRWs1VFdwSlBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}',NULL,0,'','','1',NULL,'0',''),(25,1421353849,'Romi','Waldispühl','','','','','','','','','','','','romi.waldispuehl@ettiswil.educanet2.ch','','',NULL,'1','romiwaldispuehl','$6$6437f258ce792931$Xl2SCAuaC8QsGshf0gvpOOr/JALtWY.eXX8PClaQmty67YWBjkSpRC9OANILKIf8b5O4YlNUHQiq4tFdLB0uY/','',NULL,'','','',1393774349,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(20,1421353849,'Angela','Hurni','','','','','','','','','','','','angela.hurni@ettiswil.educanet2.ch','','',NULL,'1','angelahurni','$6$2846fb51c111c86e$UOsjXlJat5GBqO8POnRqAXnfi1RvBSLdXiWTceOj72S1n0vcaFEFiEXmVMii6XXGmYtQ2FxYqh9iL9ZAVoweY.','',NULL,'','','',1393774235,1421143745,1421155193,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(19,1421353849,'Regula','Lanicca','','','','','','','','','','','','regula.lanicca@ettiswil.educanet2.ch','','',NULL,'1','regulalanicca','$6$460dc055dac6a1ad$EsB0db81UgkSmPCdWHVeYUqstGIhckWLN9HaIRxbK5d1lTuPOf5MMhYt/L7FL0p5cJXvGKK6Ad5p5HNx1OUyo/','',NULL,'','','',1393774226,1421313719,1421317374,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxQVTFwNlpGZEtjVnBYVGpCUVZGVnRaRWRXYUZreWFHeGphakI0VDFFOVBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(18,1421353849,'Alice','Lustenberger','','','','','','','','','','','','alice.lustenberger@ettiswil.educanet2.ch','','',NULL,'1','alicelustenberger','$6$ead6fe721119a033$bVrNyQittODcesZTD8qN7TVL6.8YtzdBE7hTDP4mMMfe6.nqtKSMYKbysVklr/0CAzrf2qjFiyQFOdfeh3g/q1','',NULL,'','','',1393774208,1402385454,1421045419,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjRUVk5hTUZwWFJtcGhSMVo1VUZSRk5BPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjRUVk5hTUZwWFJtcGhSMVo1VUZSRk5BPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}',NULL,0,'','','1',NULL,'0',''),(15,1421353849,'Daniela','Schwegler','','','','','','','','','','','','daniela.schwegler@ettiswil.educanet2.ch','','',NULL,'1','danielaschwegler','$6$df4e27ba2bcd3b8d$n4BXeSkZOuH9YpqIMYA/l2k6vkVQFMh1Ye64IoiqeJoAmPuJDVqN8WgMdA.m/Y1NKH4OGkodeY1XzJtKB8qOC/','',NULL,'','','',1393774172,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(17,1421353849,'Patrizia','Fink','','','','','','','','','','','','patrizia.fink@ettiswil.educanet2.ch','','',NULL,'1','patriziafink','$6$de07a8c4966aae21$fkQv71hTAtda8xQzEaSPS42vIG1Y.WakZtaMVwD2UMFaKxOl6hDeBAKkZCn7Cj8uXs/Yxt9iWiGu4P8orlaDo.','',NULL,'','','',1393774198,1421094876,1421097076,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxPUkVGdFl6TldhV0Z0Vm1wa1JEQjRUV2xhTUZwWFJtcGhSMVo1VUZSRk13PT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(14,1421353849,'Margrit','Stocker','','','','','','','','','','','','margrit.stocker@ettiswil.educanet2.ch','','',NULL,'1','margritstocker','$6$dab7329fbafe86f8$5r1tVu0.svcipZI.s4mvqGM3dIKvIYWre1jDNPhYuVyMnpAgESe9rC3qHzn35vPvrnEFlQjB.AdYa6h/WzbxB/','',NULL,'','','',1393774162,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(12,1421353849,'Lisbeth','Wey','','','','','','','','','','','','lisbeth.wey@ettiswil.educanet2.ch','','',NULL,'1','lisbethwey','$6$1f10d76ac64e1b3f$CWjF8MQ9kdtG0/v9iNXByyvgKQbAKNkvcBrvdYYgcF5TaEOh8q/99uSGVgFHIb2xMQ.ziwIbyZrwg4m.aICAT0','',NULL,'','','',1393774124,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0',''),(13,1421353849,'Helga','Troxler','','','','','','','','','','','','helga.troxler@ettiswil.educanet2.ch','','',NULL,'1','helgatroxler','$6$f78aef670d8ca201$15v/MV4sKXlBPU1OEJxpWt9eiSxfDKIJWnL.vAdhmXNwKdspF/nHHvYodfaS14WXIdorHqJOWinnFukbCIwjU1','',NULL,'','','',1393774146,1402489026,1421159970,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(8,1421353849,'Giannina','Widmer','','','','','','','','','','','','giannina.widmer@ettiswil.educanet2.ch','','',NULL,'1','gianninawidmer','$6$90474a5d3f4fdd24$yAQIwa71acWdUeAcuJSKAuK0ncmbKrPDTyGu3PSfN3K6ITuaSNhzMDiTmmD4cRNaQzE.mpS3NgVIYstmB3ndU0','',NULL,'','','',1393772869,1421141076,1421141131,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(10,1421353849,'Jürg','Zihlmann','','','','','','','','','','','','juerg.zihlmann@ettiswil.educanet2.ch','','',NULL,'1','juergzihlmann','$6$d4bab53dee3940a7$iwI15sAy49dJrVzVfR0Y2FyZVmsk9bo94XMWTT8lsWuHDAmwyvLLisex6g09bajAS0OQguSkg8b5OLe7ardjX.','',NULL,'','','',1393774082,1421235490,1421237069,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',NULL,'0',''),(6,1421353849,'Denise','Tschopp','','','','','','','','','','','','denise.tschopp@ettiswil.educanet2.ch','','',NULL,'1','denisetschopp','$6$ea779cf1b75b66fc$ariwZ1K6yP.r4HFvW261PB2E9txFkUl1XaMYDLHxc8Hg9Onw8ktXfN7jaO5d.cMpZA7KTaDG.x8X5oBSumYNA0','',NULL,'','','',1390755233,1415872443,1415872494,3,0,'a:3:{s:7:\"referer\";a:2:{s:4:\"last\";s:23:\"buf/do/tally_sheet.html\";s:7:\"current\";s:16:\"buf/do/menu.html\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:8;s:3:\"key\";s:33:\"ccf2a314124568db9d2ea700e09a0a551\";s:4:\"time\";i:1402920021;}s:16:\"setPasswordToken\";s:0:\"\";}',NULL,0,'','','1',40,'0','1'),(5,1421353849,'Mathias','Schär','','','','','','','','','','','','mathias.schaer@ettiswil.educanet2.ch','','',NULL,'1','mathiasschaer','$6$df5332e8551b3b16$bF5BFQ3TWdnrn9jCWDcdesKXJFqXZPj9oOiRoEHf1WqEzuNWVQlj.suNE5vlGpnyIo/QG2esyt5w1xQIbKcXZ.','',NULL,'','','',1390755215,1421338063,1421395978,3,1402563483,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:28:\"?isAjax=true&act=tally_sheet\";s:7:\"current\";s:28:\"?isAjax=true&act=tally_sheet\";}}',NULL,0,'','','1',41,'0.1','1'),(4,1421353849,'Toni','Waldispühl','','female','','','','','','','','','','toni.waldispuehl@ettiswil.educanet2.ch','','',NULL,'1','toniwaldispuehl','$2y$10$b0129938f3a101031b3d1ua6GK/C9kaxxVtZvQtXFxP2KG56dhi46','',NULL,'','','',1390755198,1420983998,1421489276,3,0,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',11,'0','1'),(3,1421353849,'Marko','Cupic','','male','','','','','','','','','','marko.cupic@ettiswil.educanet2.ch','','',NULL,'1','markocupic','$2y$10$2b48595d5da7aa692c82dO6tauSRkjpNNOVe3QCQorXumAUt6LGXC','',NULL,'','','',1390755178,1421441539,1421441770,3,1393143729,'a:2:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxOVkVWdFl6TldhV0Z0Vm1wa1JEQXdTbTVTYkZsWFRtOWFXRWs1VFhjOVBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:13;s:3:\"key\";s:33:\"c29ad0b6f0ebdef77e8d74876f05906cb\";s:4:\"time\";i:1402652917;}}',NULL,0,'','','1',3,'1','1'),(2,1421353849,'Anita','Uka','','male','','','','','','','','','','anita.uka@ettiswil.educanet2.ch','','',NULL,'1','anitauka','$2y$10$95ac1933971f5931a8943ur.tYIjovbegG4Jm7dW9eb.dno5FKWZ2','',NULL,'','','',1390754929,1421337815,1421394232,3,1421337483,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:58:\"?isAjax=true&act=reset_table&class=10&subject=25&teacher=2\";s:7:\"current\";s:16:\"buf/do/menu.html\";}}',NULL,0,'','','1',10,'0','1'),(1,1421353849,'Heinz','Troxler','','male','','','','','','','','','','heinz.troxler@ettiswil.educanet2.ch','','',NULL,'1','heinztroxler','$6$0c67497a12e043fc$M7zUupW1pqEkwlB/p13o.AGPyAeqt7URSwkn1oOiONaQUW4r6F1CFqQa4FCiWRc7g2pJUHA6vNm/Y5KIsLwUn.','',NULL,'','','',1390754898,1421325681,1421340292,3,1402294905,'a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}',NULL,0,'','','1',9,'0','1'),(29,1421353849,'Alena','Günther','','','','','','','','','','','','alena.guenther@ettiswil.educanet2.ch','','',NULL,'1','alenaguenther','$2y$10$1f1822487c1ec9d9f99baOt.q7RhiPbNqD/8yRGc4Iv9v3Jujm9vK','',NULL,'','','',1418803381,0,0,3,0,NULL,NULL,0,'','','1',NULL,'0','');
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search`
--

LOCK TABLES `tl_search` WRITE;
/*!40000 ALTER TABLE `tl_search` DISABLE KEYS */;
INSERT INTO `tl_search` VALUES (3,4,1421338051,'Beurteilen Und Fördern','buf/do/login.html','Beurteilen Und Fördern Angemeldet als: Name Schule: KSS/ISS Schule Ettiswil Anmelden Hauptmenü Benutzername Passwort Passwort vergessen? © Marko Cupic, Oberkirch anmelden, , Passwort vergessen?, Validated by HTML Validator (based on Tidy)',3.69,'00a8bd3108aa6e719576bc2aa314beb3','','0','de'),(7,8,1402672062,'Passwort zurücksetzen Bestätigung','reset_password_confirmation.html','Passwort zurücksetzen Bestätigung Angemeldet als: Name Schule: KSS/ISS Schule Ettiswil Anmelden Passwort zurückgesetzt In Kürze wirst du eine email mit dem Aktivierungslink erhalten. Bitte folge den Anweisungen, um dein Passwort zurückzusetzen. Liebe Grüsse Marko © Marko Cupic, Oberkirch anmelden, Validated by HTML Validator (based on Tidy)',2.67,'28823a3dfaba36216b17ff2d21b592a6','','0','de');
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
) ENGINE=MyISAM AUTO_INCREMENT=8655 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search_index`
--

LOCK TABLES `tl_search_index` WRITE;
/*!40000 ALTER TABLE `tl_search_index` DISABLE KEYS */;
INSERT INTO `tl_search_index` VALUES (6815,7,'validator',1,'de'),(6814,7,'html',1,'de'),(6813,7,'by',1,'de'),(6812,7,'validated',1,'de'),(6811,7,'oberkirch',1,'de'),(6810,7,'cupic',1,'de'),(6809,7,'marko',2,'de'),(6808,7,'grüsse',1,'de'),(6807,7,'liebe',1,'de'),(6806,7,'zurückzusetzen',1,'de'),(6805,7,'dein',1,'de'),(6804,7,'um',1,'de'),(6803,7,'anweisungen',1,'de'),(6802,7,'den',1,'de'),(6801,7,'folge',1,'de'),(6800,7,'bitte',1,'de'),(6799,7,'erhalten',1,'de'),(6798,7,'aktivierungslink',1,'de'),(6797,7,'dem',1,'de'),(6796,7,'mit',1,'de'),(6795,7,'email',1,'de'),(6794,7,'eine',1,'de'),(6793,7,'du',1,'de'),(6792,7,'wirst',1,'de'),(6791,7,'kürze',1,'de'),(6790,7,'in',1,'de'),(6789,7,'zurückgesetzt',1,'de'),(6788,7,'anmelden',2,'de'),(6787,7,'ettiswil',1,'de'),(6786,7,'iss',1,'de'),(6785,7,'kss',1,'de'),(6784,7,'schule',2,'de'),(6783,7,'name',1,'de'),(6782,7,'als',1,'de'),(6781,7,'angemeldet',1,'de'),(8654,3,'tidy',1,'de'),(8653,3,'on',1,'de'),(8652,3,'based',1,'de'),(8651,3,'validator',1,'de'),(8650,3,'html',1,'de'),(8649,3,'by',1,'de'),(8648,3,'validated',1,'de'),(8647,3,'oberkirch',1,'de'),(8646,3,'cupic',1,'de'),(8645,3,'marko',1,'de'),(8644,3,'vergessen',2,'de'),(8643,3,'passwort',3,'de'),(8642,3,'benutzername',1,'de'),(8641,3,'hauptmenü',1,'de'),(6780,7,'bestätigung',1,'de'),(6779,7,'zurücksetzen',1,'de'),(6778,7,'passwort',3,'de'),(6816,7,'based',1,'de'),(6817,7,'on',1,'de'),(6818,7,'tidy',1,'de'),(8640,3,'anmelden',2,'de'),(8639,3,'ettiswil',1,'de'),(8638,3,'iss',1,'de'),(8637,3,'kss',1,'de'),(8636,3,'schule',2,'de'),(8635,3,'name',1,'de'),(8634,3,'als',1,'de'),(8633,3,'angemeldet',1,'de'),(8632,3,'fördern',1,'de'),(8631,3,'und',1,'de'),(8630,3,'beurteilen',1,'de');
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
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=utf8;
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
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_student`
--

LOCK TABLES `tl_student` WRITE;
/*!40000 ALTER TABLE `tl_student` DISABLE KEYS */;
INSERT INTO `tl_student` VALUES (1,1393111129,'female','Strässle','Sina',3),(2,1393154405,'male','Duss','Jannick',3),(3,1393154424,'female','Heller','Ramona',3),(4,1393108135,'female','Meier','Jasmin',3),(21,1421332422,'male','Häfliger','Sämi',3),(22,1393111048,'male','Lüthi','Pascal',3),(23,1393111048,'female','Ramseier','Fabienne',3),(24,1395949163,'female','Villiger','Johanna',3),(25,1393111048,'female','Ramseier','Olivia',3),(26,1393111048,'female','Stirnimann','Celina',3),(27,1393776168,'female','Anliker','Céline',3),(28,1393111048,'female','Kunz','Sarina',3),(29,1393111048,'male','Müller','Tobias',3),(30,1395949159,'female','Wermelinger','Anja',3),(31,1393941961,'male','Hodel','Michael',11),(32,1393941961,'male','Mirdita','Kole',11),(33,1393941961,'male','Myrta','Armand',11),(34,1393941961,'male','Schwegler','Joel',11),(35,1393941961,'female','Bättig','Nina',11),(36,1393941961,'female','Duss','Johanna',11),(37,1393941961,'female','Fries','Lara',11),(38,1393941961,'female','Hofstetter','Lorena',11),(39,1393941961,'female','Kneubühler','Eveline',11),(40,1393941961,'female','Mirdita','Klaudia',11),(41,1393941961,'female','Rea','Aurelia',11),(42,1393941961,'female','Schnider','Eléonore',11),(43,1393941961,'female','Schwegler','Flavia',11),(44,1393941961,'female','Sommer','Fabienne',11),(45,1393941961,'female','Stocker','Mirjam',11),(46,1393941961,'female','Widmer','Judith',11),(47,1393941961,'male','Bättig','Timo',10),(48,1393941961,'male','Beck','Kay',10),(49,1393941961,'male','Goller','Tobias',10),(50,1393941961,'male','Helfenstein','Severin',10),(51,1393941961,'male','Heller','Simon',10),(52,1393941961,'male','Schraner','Roman',10),(53,1393941961,'male','Schwyzer','Samuel',10),(54,1393941961,'female','Bisang','Aline',10),(55,1393941961,'female','Chandrakumar','Vaneka',10),(56,1393941961,'female','Felber','Anja',10),(57,1393941961,'female','Häfliger','Samira',10),(58,1393941961,'female','Hodel','Sabrina',10),(59,1393941961,'female','Stöckli','Victoria',10),(60,1393941961,'female','Stojmirovic','Sara',10),(61,1393941961,'female','Wiederkehr','Romina',10),(62,1393941961,'female','Zeqiri','Aurela',10),(171,1417006388,'male','Ambühl','Pirmin',41),(170,1415872970,'male','Dembrinski','Bruno',40),(169,1415872970,'female','Strässle','Lea',40),(168,1415872970,'male','Wieland ','Michael',40),(167,1415872970,'male','Wespi ','Elias',40),(166,1415872970,'female','Schwyzer','Lea',40),(165,1415872970,'male','Scheiber ','Julian',40),(164,1415872970,'female','Roth','Cyndy',40),(163,1415872970,'male','Peter ','Joël',40),(162,1415872970,'male','Gehrig ','Cyrill',40),(161,1415872970,'male','Christen ','Thierry',40),(160,1415872970,'male','Bucher ','Sven',40),(159,1415872970,'male','Birrer ','Silvan',40),(158,1415872970,'male','Bättig ','Livio',40),(157,1415872970,'female','Arnold ','Vanessa',40),(83,1393941961,'male','Arnet','Simon',9),(84,1393941961,'male','Kurmann','Marsel',9),(85,1395999916,'male','Luternauer','Noel',9),(86,1393941961,'male','Nussbaumer','Michael',9),(87,1393941961,'male','Verovic','Luca',9),(88,1393941961,'male','Widmer','Roland',9),(89,1393941961,'female','Blum','Sarah',9),(90,1393941961,'female','Dahinden','Larissa',9),(91,1393941961,'female','Ferkovic','Klaudia',9),(92,1393941961,'female','Ferkovic','Marijana',9),(93,1393941961,'female','Lütolf','Jacqueline',9),(94,1393941961,'female','Marbacher','Lorena',9),(95,1393941961,'female','Meile','Alia',9),(96,1393941961,'female','Schmid','Patrizia',9),(97,1395999928,'female','Vonwyl','Laura',9),(98,1393941961,'female','Wieland','Deborah',9),(185,1418810486,'female','Fehr','Celine',9),(184,1417006388,'female','Zàs','Jasmin',41),(183,1417006388,'female','Müller','Lena',41),(182,1417006388,'female','Kurmann','Nicole',41),(181,1417006388,'female','Heller','Lena',41),(180,1417006388,'male','Shala','Kristjan',41),(179,1417006388,'male','Müller','David',41),(178,1417006388,'male','Meier','Sven',41),(177,1417006388,'male','Lustenberger','Luca',41),(176,1417006388,'male','Kohler','Pablo',41),(175,1417006388,'male','Hodel','Sven',41),(174,1417006388,'male','Galliker','Nils',41),(173,1417006388,'male','Egli ','Ivan',41),(172,1417006388,'male','Duss','Pascal',41);
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
) ENGINE=MyISAM AUTO_INCREMENT=2148 DEFAULT CHARSET=utf8;
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
INSERT INTO `tl_user` VALUES (1,1407590603,'administrator','Marko Cupic','m.cupic@gmx.ch','de','flexible','DropZone','1','1','1','1','$6$dcc599b3ac93f23d$TNTKMpxD9kBJWhGH2Exr4biw7xLUC2gAkJzMkEs0RKNklBHsZqWHu2ZsMj8DoFQJajDf2GnBHgqqUGO8qVOYt1','','1',NULL,'',NULL,NULL,'a:0:{}',NULL,'a:0:{}',NULL,NULL,NULL,'','','','a:25:{s:7:\"referer\";a:24:{s:8:\"14d3efb0\";a:3:{s:4:\"last\";s:39:\"contao/main.php?do=article&ref=78828664\";s:10:\"tl_article\";s:39:\"contao/main.php?do=article&ref=78828664\";s:7:\"current\";s:97:\"contao/main.php?do=article&table=tl_content&id=8&rt=0364239fdc2001c968241475ae6bb03f&ref=ce74599d\";}s:8:\"e9753add\";a:3:{s:4:\"last\";s:39:\"contao/main.php?do=article&ref=78828664\";s:10:\"tl_article\";s:39:\"contao/main.php?do=article&ref=78828664\";s:7:\"current\";s:97:\"contao/main.php?do=article&table=tl_content&id=8&rt=0364239fdc2001c968241475ae6bb03f&ref=ce74599d\";}s:8:\"49d9ab54\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"e4ca5191\";a:3:{s:10:\"tl_article\";s:39:\"contao/main.php?do=article&ref=49d9ab54\";s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:39:\"contao/main.php?do=article&ref=49d9ab54\";}s:8:\"107f4116\";a:3:{s:4:\"last\";s:39:\"contao/main.php?do=article&ref=49d9ab54\";s:10:\"tl_article\";s:39:\"contao/main.php?do=article&ref=49d9ab54\";s:7:\"current\";s:97:\"contao/main.php?do=article&table=tl_content&id=8&rt=f53454776daf3a8391d152bb1eef5f11&ref=e4ca5191\";}s:8:\"9568f370\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"775ce6ba\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:50:\"contao/main.php?do=repository_manager&ref=9568f370\";}s:8:\"2039acaf\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:37:\"contao/main.php?do=repository_manager\";}s:8:\"35397c1c\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:49:\"contao/main.php?do=repository_manager&upgrade=5,6\";}s:8:\"37659e39\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:49:\"contao/main.php?do=repository_manager&upgrade=5,6\";}s:8:\"d876aa83\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}i:0;a:1:{s:4:\"last\";s:0:\"\";}i:1;a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"5edfdc06\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:37:\"contao/main.php?do=repository_manager\";}s:8:\"df8fdeaf\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"98c47443\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"d31dda45\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"028a29cb\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"c03e90bc\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"c9ccdd87\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"11958b7e\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"e4d4dd19\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"5fee0cc4\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}s:8:\"013b2bb0\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=df8fdeaf\";}}s:22:\"style_sheet_update_all\";N;s:7:\"CURRENT\";a:3:{s:3:\"IDS\";a:21:{i:0;s:2:\"29\";i:1;s:2:\"18\";i:2;s:2:\"20\";i:3;s:1:\"2\";i:4;s:2:\"21\";i:5;s:2:\"15\";i:6;s:1:\"6\";i:7;s:1:\"8\";i:8;s:1:\"1\";i:9;s:2:\"13\";i:10;s:2:\"22\";i:11;s:2:\"10\";i:12;s:2:\"12\";i:13;s:2:\"14\";i:14;s:1:\"3\";i:15;s:1:\"5\";i:16;s:2:\"11\";i:17;s:2:\"17\";i:18;s:2:\"19\";i:19;s:2:\"25\";i:20;s:1:\"4\";}s:7:\"tl_page\";a:1:{i:0;s:6:\"layout\";}s:9:\"tl_member\";a:1:{i:0;s:9:\"isTeacher\";}}s:9:\"CLIPBOARD\";a:16:{s:8:\"tl_theme\";a:0:{}s:9:\"tl_layout\";a:0:{}s:9:\"tl_module\";a:0:{}s:7:\"tl_page\";a:0:{}s:14:\"tl_style_sheet\";a:0:{}s:8:\"tl_files\";a:0:{}s:10:\"tl_content\";a:0:{}s:8:\"tl_class\";a:0:{}s:10:\"tl_student\";a:0:{}s:9:\"tl_member\";a:0:{}s:9:\"tl_voting\";a:0:{}s:10:\"tl_subject\";a:0:{}s:7:\"tl_form\";a:0:{}s:10:\"tl_article\";a:0:{}s:18:\"tl_import_from_csv\";a:0:{}s:7:\"tl_user\";a:0:{}}s:11:\"new_records\";a:15:{s:8:\"tl_theme\";a:1:{i:0;i:1;}s:9:\"tl_layout\";a:1:{i:0;i:1;}s:9:\"tl_module\";a:6:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;}s:7:\"tl_page\";a:6:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;}s:14:\"tl_style_sheet\";a:1:{i:0;i:1;}s:10:\"tl_content\";a:18:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:8;i:6;i:9;i:7;i:10;i:8;i:11;i:9;i:12;i:10;i:13;i:11;i:14;i:12;i:15;i:13;i:16;i:14;i:17;i:15;i:24;i:16;i:27;i:17;i:28;}s:8:\"tl_class\";a:34:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;i:27;i:28;i:28;i:29;i:29;i:30;i:30;i:31;i:31;i:32;i:32;i:33;i:33;i:37;}s:10:\"tl_student\";a:40:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:33;i:8;i:34;i:9;i:114;i:10;i:115;i:11;i:116;i:12;i:122;i:13;i:123;i:14;i:124;i:15;i:125;i:16;i:126;i:17;i:127;i:18;i:133;i:19;i:134;i:20;i:135;i:21;i:136;i:22;i:137;i:23;i:138;i:24;i:139;i:25;i:140;i:26;i:141;i:27;i:142;i:28;i:143;i:29;i:144;i:30;i:145;i:31;i:146;i:32;i:147;i:33;i:148;i:34;i:149;i:35;i:150;i:36;i:151;i:37;i:152;i:38;i:153;i:39;i:154;}s:9:\"tl_member\";a:29:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;i:27;i:29;i:28;i:30;}s:9:\"tl_voting\";a:44:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:78178;i:4;i:78179;i:5;i:78180;i:6;i:78181;i:7;i:78182;i:8;i:78183;i:9;i:78184;i:10;i:78185;i:11;i:78186;i:12;i:78187;i:13;i:78188;i:14;i:78189;i:15;i:87159;i:16;i:87160;i:17;i:87161;i:18;i:87162;i:19;i:87163;i:20;i:87164;i:21;i:87165;i:22;i:87166;i:23;i:87167;i:24;i:87171;i:25;i:87172;i:26;i:87173;i:27;i:87174;i:28;i:87175;i:29;i:87176;i:30;i:87177;i:31;i:87178;i:32;i:87179;i:33;i:87180;i:34;i:87181;i:35;i:87182;i:36;i:87183;i:37;i:87184;i:38;i:87185;i:39;i:87186;i:40;i:87187;i:41;i:87188;i:42;i:87189;i:43;i:87191;}s:10:\"tl_subject\";a:27:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:6;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;i:15;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:19;i:20;i:20;i:21;i:21;i:22;i:22;i:23;i:23;i:24;i:24;i:25;i:25;i:26;i:26;i:27;}s:7:\"tl_form\";a:1:{i:0;i:1;}s:10:\"tl_article\";a:2:{i:0;i:4;i:1;i:7;}s:18:\"tl_import_from_csv\";a:1:{i:0;i:1;}s:7:\"tl_user\";a:2:{i:0;i:2;i:1;i:3;}}s:13:\"filePickerRef\";s:112:\"contao/page.php?do=themes&table=tl_module&field=jumpTo&act=show&id=7&value=4&rt=0364239fdc2001c968241475ae6bb03f\";s:10:\"CURRENT_ID\";s:1:\"8\";s:12:\"tl_page_tree\";a:8:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;}s:15:\"fieldset_states\";a:7:{s:7:\"tl_page\";a:5:{s:13:\"layout_legend\";i:1;s:16:\"protected_legend\";i:1;s:12:\"chmod_legend\";i:1;s:13:\"expert_legend\";i:1;s:13:\"tabnav_legend\";i:1;}s:9:\"tl_module\";a:3:{s:13:\"expert_legend\";i:1;s:15:\"template_legend\";i:1;s:12:\"email_legend\";i:1;}s:10:\"tl_content\";a:4:{s:13:\"expert_legend\";i:1;s:16:\"colheight_legend\";i:1;s:16:\"protected_legend\";i:1;s:16:\"invisible_legend\";i:1;}s:11:\"tl_settings\";a:7:{s:14:\"backend_legend\";i:1;s:17:\"repository_legend\";i:1;s:13:\"global_legend\";i:1;s:15:\"security_legend\";i:1;s:14:\"uploads_legend\";i:1;s:12:\"files_legend\";i:1;s:30:\"beurteilen_und_foerdern_legend\";i:1;}s:9:\"tl_member\";a:2:{s:14:\"account_legend\";i:0;s:12:\"login_legend\";i:1;}s:10:\"tl_article\";a:4:{s:14:\"publish_legend\";i:0;s:18:\"syndication_legend\";i:0;s:16:\"protected_legend\";i:1;s:13:\"expert_legend\";i:1;}s:9:\"tl_layout\";a:1:{s:13:\"expert_legend\";i:1;}}s:19:\"style_sheet_updater\";N;s:27:\"repository_catalog_settings\";a:8:{s:14:\"repository_tag\";s:0:\"\";s:15:\"repository_type\";s:0:\"\";s:19:\"repository_category\";s:0:\"\";s:16:\"repository_state\";s:0:\"\";s:17:\"repository_author\";s:0:\"\";s:16:\"repository_order\";s:7:\"popular\";s:15:\"repository_page\";s:1:\"0\";s:15:\"repository_find\";s:6:\"ptable\";}s:23:\"tree_tl_layout_external\";a:2:{s:32:\"39f4030dcb9136b054d571c7f217eae3\";i:1;s:32:\"1a0c4c4b105a110153b251e9418c21cb\";i:1;}s:12:\"tl_page_node\";s:1:\"0\";s:26:\"tl_article_tl_article_tree\";a:7:{i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:7;i:0;i:8;i:0;i:9;i:0;}s:21:\"tree_tl_module_jumpTo\";a:1:{i:1;i:1;}s:25:\"tree_tl_content_singleSRC\";a:2:{s:32:\"39f4030dcb9136b054d571c7f217eae3\";i:1;s:32:\"71e0446c1e980a135459458821cd471e\";i:1;}s:17:\"INVALID_TOKEN_URL\";s:84:\"contao/main.php?do=class&act=create&rt=e56c12710e6cceb169a4d3f7d5d15dca&ref=2d33d18b\";s:23:\"tl_article_tl_page_tree\";a:1:{i:1;i:1;}s:7:\"sorting\";a:3:{s:9:\"tl_voting\";s:6:\"tstamp\";s:9:\"tl_member\";s:8:\"username\";s:10:\"tl_student\";s:8:\"lastname\";}s:6:\"search\";a:3:{s:9:\"tl_voting\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:6:\"tstamp\";}s:9:\"tl_member\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:8:\"username\";}s:10:\"tl_student\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:5:\"class\";}}s:6:\"filter\";a:3:{s:9:\"tl_voting\";a:1:{s:5:\"limit\";s:3:\"all\";}s:9:\"tl_member\";a:1:{s:5:\"limit\";s:3:\"all\";}s:10:\"tl_student\";a:1:{s:5:\"limit\";s:3:\"all\";}}s:24:\"tree_tl_content_multiSRC\";a:1:{s:32:\"9dc192b8e301f4bdee945bf5ad44ede9\";i:1;}s:15:\"backend_modules\";a:2:{s:6:\"system\";i:1;s:3:\"buf\";i:1;}s:13:\"tl_files_node\";s:20:\"files/mycontaobackup\";s:8:\"filetree\";a:1:{s:8:\"cc735f0e\";i:1;}}',1390731602,1418803217,1418803221,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1407590603,'markocupic','Marko Cupic','marko.cupic@ettiswil.educanet2.ch','de','flexible','DropZone','1','1','1','1','$6$ae5a57ac5c438718$St2ngKSAzYMtSfe6M4A7qY2gYy/RpZk.BzzraBd1dj/JNMl9ALO30zviIbXOXnBb1i59eiisoi6XKD1.KaEjQ0','','1',NULL,'group','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','','','','a:16:{s:7:\"referer\";a:24:{s:8:\"9b982d2d\";a:2:{s:4:\"last\";s:53:\"contao/main.php?do=repository_manager&update=database\";s:7:\"current\";s:108:\"contao/main.php?do=repository_manager&update=database&mmo=1&rt=056b739d06108e74df59cbf19d6ba090&ref=0fe776b6\";}s:8:\"ad26b455\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"6a78a904\";a:2:{s:4:\"last\";s:53:\"contao/main.php?do=repository_manager&update=database\";s:7:\"current\";s:50:\"contao/main.php?do=repository_manager&ref=ad26b455\";}s:8:\"07b46f2e\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:70:\"contao/main.php?do=repository_manager&install=import_from_csv.10000019\";}s:8:\"2e96cda6\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:70:\"contao/main.php?do=repository_manager&install=import_from_csv.10000019\";}s:8:\"bdcf2942\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:70:\"contao/main.php?do=repository_manager&install=import_from_csv.10000019\";}s:8:\"8faf384f\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"ae982b20\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"2255f06b\";a:2:{s:4:\"last\";s:53:\"contao/main.php?do=repository_manager&update=database\";s:7:\"current\";s:108:\"contao/main.php?do=repository_manager&update=database&mmo=1&rt=056b739d06108e74df59cbf19d6ba090&ref=ae982b20\";}s:8:\"289a5fc8\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"4175ea4c\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:53:\"contao/main.php?do=repository_manager&update=database\";}s:8:\"172f3726\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:37:\"contao/main.php?do=repository_manager\";}s:8:\"716741a3\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"cd902897\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=716741a3\";}s:8:\"1ade9ce5\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=716741a3\";}s:8:\"dfe3b81d\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=716741a3\";}s:8:\"7885b48d\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=716741a3\";}s:8:\"4aa4248b\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"4ad1b1b6\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=4aa4248b\";}s:8:\"91bd146b\";a:2:{s:4:\"last\";s:15:\"contao/main.php\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=4aa4248b\";}i:0;a:1:{s:4:\"last\";s:0:\"\";}i:1;a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"9f4b9937\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=43590677\";}s:8:\"e403b1b2\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:38:\"contao/main.php?do=member&ref=43590677\";}}s:7:\"CURRENT\";a:4:{s:3:\"IDS\";a:20:{i:0;s:2:\"29\";i:1;s:2:\"25\";i:2;s:2:\"22\";i:3;s:2:\"21\";i:4;s:2:\"20\";i:5;s:2:\"19\";i:6;s:2:\"18\";i:7;s:2:\"17\";i:8;s:2:\"15\";i:9;s:2:\"14\";i:10;s:2:\"13\";i:11;s:2:\"12\";i:12;s:2:\"10\";i:13;s:1:\"8\";i:14;s:1:\"6\";i:15;s:1:\"5\";i:16;s:1:\"4\";i:17;s:1:\"3\";i:18;s:1:\"2\";i:19;s:1:\"1\";}s:7:\"tl_user\";a:2:{i:0;s:12:\"backendTheme\";i:1;s:8:\"uploader\";}s:8:\"tl_class\";a:1:{i:0;s:4:\"name\";}s:9:\"tl_member\";a:1:{i:0;s:8:\"username\";}}s:9:\"CLIPBOARD\";a:6:{s:10:\"tl_subject\";a:0:{}s:9:\"tl_member\";a:0:{}s:9:\"tl_module\";a:0:{}s:7:\"tl_page\";a:0:{}s:10:\"tl_content\";a:0:{}s:8:\"tl_class\";a:0:{}}s:11:\"new_records\";a:6:{s:10:\"tl_subject\";a:2:{i:0;i:28;i:1;i:29;}s:9:\"tl_member\";a:3:{i:0;i:28;i:1;i:31;i:2;i:32;}s:9:\"tl_module\";a:1:{i:0;i:7;}s:7:\"tl_page\";a:2:{i:0;i:7;i:1;i:8;}s:10:\"tl_content\";a:2:{i:0;i:25;i:1;i:26;}s:8:\"tl_class\";a:2:{i:0;i:40;i:1;i:41;}}s:22:\"style_sheet_update_all\";N;s:10:\"CURRENT_ID\";s:1:\"1\";s:7:\"sorting\";a:2:{s:9:\"tl_member\";s:14:\"dateAdded DESC\";s:9:\"tl_voting\";s:7:\"teacher\";}s:6:\"search\";a:2:{s:9:\"tl_member\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"field\";s:8:\"username\";}s:9:\"tl_voting\";a:2:{s:5:\"value\";s:2:\"19\";s:5:\"field\";s:7:\"teacher\";}}s:6:\"filter\";a:3:{s:9:\"tl_member\";a:1:{s:5:\"limit\";s:3:\"all\";}s:9:\"tl_voting\";a:1:{s:5:\"limit\";s:5:\"0,500\";}s:6:\"tl_log\";a:1:{s:5:\"limit\";s:6:\"120,30\";}}s:17:\"INVALID_TOKEN_URL\";s:88:\"contao/main.php?do=member&act=edit&id=3&rt=0ec984103ba02538bc5f7091f768fb7f&ref=0daeb715\";s:15:\"fieldset_states\";a:2:{s:9:\"tl_module\";a:1:{s:12:\"email_legend\";i:1;}s:7:\"tl_page\";a:2:{s:13:\"expert_legend\";i:1;s:14:\"publish_legend\";i:0;}}s:13:\"filePickerRef\";s:111:\"contao/page.php?do=themes&table=tl_module&field=jumpTo&act=show&id=7&value=&rt=d5df2ec3e2d414cc7f59d9104abc5e1a\";s:21:\"tree_tl_module_jumpTo\";a:1:{i:1;i:1;}s:12:\"tl_page_tree\";a:4:{i:1;i:1;i:4;i:0;i:7;i:0;i:8;i:0;}s:12:\"tl_page_node\";s:1:\"0\";s:26:\"tl_article_tl_article_tree\";a:1:{i:8;i:0;}}',1398591724,1421441332,1421441711,3,0,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}');
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
) ENGINE=MyISAM AUTO_INCREMENT=475 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_version`
--

LOCK TABLES `tl_version` WRITE;
/*!40000 ALTER TABLE `tl_version` DISABLE KEYS */;
INSERT INTO `tl_version` VALUES (471,1,1421353814,1,'tl_member',3,'markocupic','Heinz Troxler','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:1:\"1\";s:6:\"tstamp\";s:10:\"1402296186\";s:9:\"firstname\";s:5:\"Heinz\";s:8:\"lastname\";s:7:\"Troxler\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:4:\"male\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:35:\"heinz.troxler@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:12:\"heinztroxler\";s:8:\"password\";s:106:\"$6$0c67497a12e043fc$M7zUupW1pqEkwlB/p13o.AGPyAeqt7URSwkn1oOiONaQUW4r6F1CFqQa4FCiWRc7g2pJUHA6vNm/Y5KIsLwUn.\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390754898\";s:9:\"lastLogin\";s:10:\"1421325681\";s:12:\"currentLogin\";s:10:\"1421340292\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:10:\"1402294905\";s:7:\"session\";s:166:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:1:\"9\";s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(472,3,1421353849,2,'tl_member',3,'markocupic','Marko Cupic','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:1:\"3\";s:6:\"tstamp\";s:10:\"1402384056\";s:9:\"firstname\";s:5:\"Marko\";s:8:\"lastname\";s:5:\"Cupic\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:4:\"male\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:33:\"marko.cupic@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:10:\"markocupic\";s:8:\"password\";s:60:\"$2y$10$2b48595d5da7aa692c82dO6tauSRkjpNNOVe3QCQorXumAUt6LGXC\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755178\";s:9:\"lastLogin\";s:10:\"1421333306\";s:12:\"currentLogin\";s:10:\"1421352280\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:10:\"1393143729\";s:7:\"session\";s:291:\"a:2:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:13;s:3:\"key\";s:33:\"c29ad0b6f0ebdef77e8d74876f05906cb\";s:4:\"time\";i:1402652917;}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:1:\"3\";s:9:\"deviation\";s:1:\"1\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(473,32,1421441343,1,'tl_member',3,'markocupic',' ','contao/main.php?do=member&rt=ff8c2731901002436bd1d848436b978e&ref=4ad1b1b6&act=edit&id=32','','a:41:{s:2:\"id\";s:2:\"32\";s:6:\"tstamp\";s:10:\"1421441343\";s:9:\"firstname\";s:0:\"\";s:8:\"lastname\";s:0:\"\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1421441343\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(474,32,1421441389,2,'tl_member',3,'markocupic','Anton Aus Tirol','contao/main.php?do=member&rt=ff8c2731901002436bd1d848436b978e&ref=4ad1b1b6&act=edit&id=32','1','a:41:{s:2:\"id\";s:2:\"32\";s:6:\"tstamp\";s:10:\"1421441343\";s:9:\"firstname\";s:5:\"Anton\";s:8:\"lastname\";s:9:\"Aus Tirol\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:14:\"m.cupic@gmx.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:5:\"anton\";s:8:\"password\";s:60:\"$2y$10$5b040645156a1d2894c1auUNw5BPtTQf4bB7vNaPZzSkakTqdz1IW\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1421441343\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(463,14,1421353814,1,'tl_member',3,'markocupic','Margrit Stocker','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"14\";s:6:\"tstamp\";s:10:\"1394058243\";s:9:\"firstname\";s:7:\"Margrit\";s:8:\"lastname\";s:7:\"Stocker\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:37:\"margrit.stocker@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:14:\"margritstocker\";s:8:\"password\";s:106:\"$6$dab7329fbafe86f8$5r1tVu0.svcipZI.s4mvqGM3dIKvIYWre1jDNPhYuVyMnpAgESe9rC3qHzn35vPvrnEFlQjB.AdYa6h/WzbxB/\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774162\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(464,13,1421353814,1,'tl_member',3,'markocupic','Helga Troxler','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"13\";s:6:\"tstamp\";s:10:\"1402296234\";s:9:\"firstname\";s:5:\"Helga\";s:8:\"lastname\";s:7:\"Troxler\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:35:\"helga.troxler@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:12:\"helgatroxler\";s:8:\"password\";s:106:\"$6$f78aef670d8ca201$15v/MV4sKXlBPU1OEJxpWt9eiSxfDKIJWnL.vAdhmXNwKdspF/nHHvYodfaS14WXIdorHqJOWinnFukbCIwjU1\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774146\";s:9:\"lastLogin\";s:10:\"1402489026\";s:12:\"currentLogin\";s:10:\"1421159970\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:166:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(465,12,1421353814,1,'tl_member',3,'markocupic','Lisbeth Wey','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"12\";s:6:\"tstamp\";s:10:\"1394058243\";s:9:\"firstname\";s:7:\"Lisbeth\";s:8:\"lastname\";s:3:\"Wey\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:33:\"lisbeth.wey@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:10:\"lisbethwey\";s:8:\"password\";s:106:\"$6$1f10d76ac64e1b3f$CWjF8MQ9kdtG0/v9iNXByyvgKQbAKNkvcBrvdYYgcF5TaEOh8q/99uSGVgFHIb2xMQ.ziwIbyZrwg4m.aICAT0\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774124\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(466,10,1421353814,1,'tl_member',3,'markocupic','Jürg Zihlmann','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"10\";s:6:\"tstamp\";s:10:\"1395515741\";s:9:\"firstname\";s:5:\"Jürg\";s:8:\"lastname\";s:8:\"Zihlmann\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"juerg.zihlmann@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"juergzihlmann\";s:8:\"password\";s:106:\"$6$d4bab53dee3940a7$iwI15sAy49dJrVzVfR0Y2FyZVmsk9bo94XMWTT8lsWuHDAmwyvLLisex6g09bajAS0OQguSkg8b5OLe7ardjX.\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774082\";s:9:\"lastLogin\";s:10:\"1421235490\";s:12:\"currentLogin\";s:10:\"1421237069\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:166:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(467,8,1421353814,1,'tl_member',3,'markocupic','Giannina Widmer','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:1:\"8\";s:6:\"tstamp\";s:10:\"1394058243\";s:9:\"firstname\";s:8:\"Giannina\";s:8:\"lastname\";s:6:\"Widmer\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:37:\"giannina.widmer@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:14:\"gianninawidmer\";s:8:\"password\";s:106:\"$6$90474a5d3f4fdd24$yAQIwa71acWdUeAcuJSKAuK0ncmbKrPDTyGu3PSfN3K6ITuaSNhzMDiTmmD4cRNaQzE.mpS3NgVIYstmB3ndU0\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393772869\";s:9:\"lastLogin\";s:10:\"1421141076\";s:12:\"currentLogin\";s:10:\"1421141131\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:166:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(468,5,1421353814,1,'tl_member',3,'markocupic','Mathias Schär','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:1:\"5\";s:6:\"tstamp\";s:10:\"1407588500\";s:9:\"firstname\";s:7:\"Mathias\";s:8:\"lastname\";s:6:\"Schär\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"mathias.schaer@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"mathiasschaer\";s:8:\"password\";s:106:\"$6$df5332e8551b3b16$bF5BFQ3TWdnrn9jCWDcdesKXJFqXZPj9oOiRoEHf1WqEzuNWVQlj.suNE5vlGpnyIo/QG2esyt5w1xQIbKcXZ.\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755215\";s:9:\"lastLogin\";s:10:\"1421307659\";s:12:\"currentLogin\";s:10:\"1421338063\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:10:\"1402563483\";s:7:\"session\";s:336:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjRUMU5hTUZwWFJtcGhSMVo1VUZSVlBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjRUMU5hTUZwWFJtcGhSMVo1VUZSVlBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:2:\"41\";s:9:\"deviation\";s:3:\"0.1\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(469,3,1421353814,1,'tl_member',3,'markocupic','Marko Cupic','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','','a:41:{s:2:\"id\";s:1:\"3\";s:6:\"tstamp\";s:10:\"1402384056\";s:9:\"firstname\";s:5:\"Marko\";s:8:\"lastname\";s:5:\"Cupic\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:4:\"male\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:14:\"m.cupic@gmx.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:10:\"markocupic\";s:8:\"password\";s:60:\"$2y$10$2b48595d5da7aa692c82dO6tauSRkjpNNOVe3QCQorXumAUt6LGXC\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755178\";s:9:\"lastLogin\";s:10:\"1421333306\";s:12:\"currentLogin\";s:10:\"1421352280\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:10:\"1393143729\";s:7:\"session\";s:291:\"a:2:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:13;s:3:\"key\";s:33:\"c29ad0b6f0ebdef77e8d74876f05906cb\";s:4:\"time\";i:1402652917;}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:1:\"3\";s:9:\"deviation\";s:1:\"1\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(470,2,1421353814,1,'tl_member',3,'markocupic','Anita Uka','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:1:\"2\";s:6:\"tstamp\";s:10:\"1394058243\";s:9:\"firstname\";s:5:\"Anita\";s:8:\"lastname\";s:3:\"Uka\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:4:\"male\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:31:\"anita.uka@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:8:\"anitauka\";s:8:\"password\";s:60:\"$2y$10$95ac1933971f5931a8943ur.tYIjovbegG4Jm7dW9eb.dno5FKWZ2\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390754929\";s:9:\"lastLogin\";s:10:\"1402912347\";s:12:\"currentLogin\";s:10:\"1421337815\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:10:\"1421337483\";s:7:\"session\";s:166:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:2:\"10\";s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(460,18,1421353814,1,'tl_member',3,'markocupic','Alice Lustenberger','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"18\";s:6:\"tstamp\";s:10:\"1394142100\";s:9:\"firstname\";s:5:\"Alice\";s:8:\"lastname\";s:12:\"Lustenberger\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:40:\"alice.lustenberger@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:17:\"alicelustenberger\";s:8:\"password\";s:106:\"$6$ead6fe721119a033$bVrNyQittODcesZTD8qN7TVL6.8YtzdBE7hTDP4mMMfe6.nqtKSMYKbysVklr/0CAzrf2qjFiyQFOdfeh3g/q1\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774208\";s:9:\"lastLogin\";s:10:\"1402385454\";s:12:\"currentLogin\";s:10:\"1421045419\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:336:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjRUVk5hTUZwWFJtcGhSMVo1VUZSRk5BPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjRUVk5hTUZwWFJtcGhSMVo1VUZSRk5BPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(461,17,1421353814,1,'tl_member',3,'markocupic','Patrizia Fink','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"17\";s:6:\"tstamp\";s:10:\"1394058243\";s:9:\"firstname\";s:8:\"Patrizia\";s:8:\"lastname\";s:4:\"Fink\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:35:\"patrizia.fink@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:12:\"patriziafink\";s:8:\"password\";s:106:\"$6$de07a8c4966aae21$fkQv71hTAtda8xQzEaSPS42vIG1Y.WakZtaMVwD2UMFaKxOl6hDeBAKkZCn7Cj8uXs/Yxt9iWiGu4P8orlaDo.\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774198\";s:9:\"lastLogin\";s:10:\"1421094876\";s:12:\"currentLogin\";s:10:\"1421097076\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:285:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxPUkVGdFl6TldhV0Z0Vm1wa1JEQjRUV2xhTUZwWFJtcGhSMVo1VUZSRk13PT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(462,15,1421353814,1,'tl_member',3,'markocupic','Daniela Schwegler','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"15\";s:6:\"tstamp\";s:10:\"1394058450\";s:9:\"firstname\";s:7:\"Daniela\";s:8:\"lastname\";s:9:\"Schwegler\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:39:\"daniela.schwegler@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:16:\"danielaschwegler\";s:8:\"password\";s:106:\"$6$df4e27ba2bcd3b8d$n4BXeSkZOuH9YpqIMYA/l2k6vkVQFMh1Ye64IoiqeJoAmPuJDVqN8WgMdA.m/Y1NKH4OGkodeY1XzJtKB8qOC/\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774172\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(453,88035,1421316555,1,'tl_voting',3,'markocupic','','contao/main.php?do=voting&act=edit&id=88035&rt=5d74cc898f569631b2e2024fbc585963&ref=447eaf7e','1','a:13:{s:2:\"id\";s:5:\"88035\";s:6:\"tstamp\";s:10:\"1421241666\";s:7:\"student\";s:1:\"1\";s:7:\"teacher\";s:2:\"19\";s:6:\"skill1\";s:1:\"2\";s:6:\"skill2\";s:1:\"1\";s:6:\"skill3\";s:1:\"1\";s:6:\"skill4\";s:1:\"0\";s:6:\"skill5\";s:1:\"0\";s:6:\"skill6\";s:1:\"0\";s:6:\"skill7\";s:1:\"1\";s:6:\"skill8\";s:1:\"1\";s:7:\"subject\";s:1:\"5\";}'),(454,31,1421328716,1,'tl_member',3,'markocupic','atest btest','contao/main.php?do=member&rt=78e78ca569276400f18d8e7e14642f7c&ref=1f7f70cf&act=edit&id=31','','a:41:{s:2:\"id\";s:2:\"31\";s:6:\"tstamp\";s:10:\"1421328715\";s:9:\"firstname\";s:5:\"atest\";s:8:\"lastname\";s:5:\"btest\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1421328715\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(455,31,1421328757,2,'tl_member',3,'markocupic','atest btest','contao/main.php?do=member&rt=78e78ca569276400f18d8e7e14642f7c&ref=1f7f70cf&act=edit&id=31','1','a:41:{s:2:\"id\";s:2:\"31\";s:6:\"tstamp\";s:10:\"1421328715\";s:9:\"firstname\";s:5:\"atest\";s:8:\"lastname\";s:5:\"btest\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:11:\"v.dg@gmx.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:10:\"atestbtest\";s:8:\"password\";s:60:\"$2y$10$87958d7cb52a1f8935a5fuFoEAfFpc0jtv8tCFZ9EZkNdDZO.rvF6\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1421328715\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(456,25,1421353814,1,'tl_member',3,'markocupic','Romi Waldispühl','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"25\";s:6:\"tstamp\";s:10:\"1395515759\";s:9:\"firstname\";s:4:\"Romi\";s:8:\"lastname\";s:11:\"Waldispühl\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:38:\"romi.waldispuehl@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:15:\"romiwaldispuehl\";s:8:\"password\";s:106:\"$6$6437f258ce792931$Xl2SCAuaC8QsGshf0gvpOOr/JALtWY.eXX8PClaQmty67YWBjkSpRC9OANILKIf8b5O4YlNUHQiq4tFdLB0uY/\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774349\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(457,22,1421353814,1,'tl_member',3,'markocupic','Josef Bieri','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"22\";s:6:\"tstamp\";s:10:\"1399536313\";s:9:\"firstname\";s:5:\"Josef\";s:8:\"lastname\";s:5:\"Bieri\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:33:\"josef.bieri@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:10:\"josefbieri\";s:8:\"password\";s:106:\"$6$5972411d4ed91004$FbfEZ2fHxnZbLIwMMMYMWxzLBD6.tEg/Fsp8hniGG3FC0EWtDLUfyvyXQIYoGeec/gjT/misY5anEpE4mGt8F0\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774274\";s:9:\"lastLogin\";s:10:\"1420566590\";s:12:\"currentLogin\";s:10:\"1421166170\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:218:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxQVTFwNlpGZEtjVnBYVGpCUVZFa3lTbTVTYkZsWFRtOWFXRWs1VFdwSlBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(458,21,1421353814,1,'tl_member',3,'markocupic','Annève Dätwyler','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"21\";s:6:\"tstamp\";s:10:\"1402502463\";s:9:\"firstname\";s:7:\"Annève\";s:8:\"lastname\";s:9:\"Dätwyler\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:38:\"anneve.daetwyler@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:15:\"annevedaetwyler\";s:8:\"password\";s:106:\"$6$b0de8078134af2e8$Vqe/KBvrJ3UBs.gcmFSClmaoxXlb.mpBde7FokH2gZMnlZZBQzjawfdlvCVyNq2c3WR.MrZ0zwnf.eF2PXOl40\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774266\";s:9:\"lastLogin\";s:10:\"1402502783\";s:12:\"currentLogin\";s:10:\"1421166672\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:336:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjVUMU5hTUZwWFJtcGhSMVo1VUZSSmVBPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:133:\"buf/do/print_table.html?vars=V1RKNGFHTXpUVGxPUkVWdFl6TldhV0Z0Vm1wa1JEQjVUMU5hTUZwWFJtcGhSMVo1VUZSSmVBPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(459,20,1421353814,1,'tl_member',3,'markocupic','Angela Hurni','contao/main.php?do=member&act=editAll&rt=a3e5deb8a1eaca0258a0399132efc2c9&ref=cd902897&fields=1','1','a:41:{s:2:\"id\";s:2:\"20\";s:6:\"tstamp\";s:10:\"1401962012\";s:9:\"firstname\";s:6:\"Angela\";s:8:\"lastname\";s:5:\"Hurni\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:34:\"angela.hurni@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:11:\"angelahurni\";s:8:\"password\";s:106:\"$6$2846fb51c111c86e$UOsjXlJat5GBqO8POnRqAXnfi1RvBSLdXiWTceOj72S1n0vcaFEFiEXmVMii6XXGmYtQ2FxYqh9iL9ZAVoweY.\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774235\";s:9:\"lastLogin\";s:10:\"1421143745\";s:12:\"currentLogin\";s:10:\"1421155193\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:166:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(452,19,1421316506,1,'tl_member',3,'markocupic','Regula Lanicca','contao/main.php?do=member&act=edit&id=19&rt=5d74cc898f569631b2e2024fbc585963&ref=4247a56b','1','a:41:{s:2:\"id\";s:2:\"19\";s:6:\"tstamp\";s:10:\"1394058243\";s:9:\"firstname\";s:6:\"Regula\";s:8:\"lastname\";s:7:\"Lanicca\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"regula.lanicca@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"regulalanicca\";s:8:\"password\";s:106:\"$6$460dc055dac6a1ad$EsB0db81UgkSmPCdWHVeYUqstGIhckWLN9HaIRxbK5d1lTuPOf5MMhYt/L7FL0p5cJXvGKK6Ad5p5HNx1OUyo/\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1393774226\";s:9:\"lastLogin\";s:10:\"1421240428\";s:12:\"currentLogin\";s:10:\"1421313719\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:285:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:134:\"buf/do/voting_table.html?vars=V1RKNGFHTXpUVGxQVTFwNlpGZEtjVnBYVGpCUVZGVnRaRWRXYUZreWFHeGphakI0VDFFOVBRPT1hdVR6VFZiTm1palVoSGdEQ1ZZZA==\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(451,4,1420221832,2,'tl_member',3,'markocupic','Toni Waldispühl','contao/main.php?do=member&act=edit&id=4&rt=5db11b6643c13ea1d503bd8d8edeef0d&ref=2ad4da63','1','a:41:{s:2:\"id\";s:1:\"4\";s:6:\"tstamp\";s:10:\"1402335350\";s:9:\"firstname\";s:4:\"Toni\";s:8:\"lastname\";s:11:\"Waldispühl\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:6:\"female\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:38:\"toni.waldispuehl@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:15:\"toniwaldispuehl\";s:8:\"password\";s:60:\"$2y$10$40c848e91981d4d335050ub7.dl3EZ9V4MexVUOGAwtYkhqbqb1A2\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755198\";s:9:\"lastLogin\";s:10:\"1402825582\";s:12:\"currentLogin\";s:10:\"1402825679\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:166:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:2:\"11\";s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(450,4,1420221813,1,'tl_member',3,'markocupic','Toni Waldispühl','contao/main.php?do=member&act=edit&id=4&rt=5db11b6643c13ea1d503bd8d8edeef0d&ref=2ad4da63','','a:41:{s:2:\"id\";s:1:\"4\";s:6:\"tstamp\";s:10:\"1402335350\";s:9:\"firstname\";s:4:\"Toni\";s:8:\"lastname\";s:11:\"Waldispühl\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:6:\"female\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:38:\"toni.waldispuehl@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:15:\"toniwaldispuehl\";s:8:\"password\";s:106:\"$6$905df41a85e1e251$BSgDLo.GU8q5OBDdfX/eLr70eq.wYrkJGU3xRg4NsYmmzwhQO7qsfwN8xoKSOMitpfsAM0tvm.fPxQWgX97JE0\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755198\";s:9:\"lastLogin\";s:10:\"1402825582\";s:12:\"currentLogin\";s:10:\"1402825679\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:166:\"a:1:{s:7:\"referer\";a:2:{s:4:\"last\";s:16:\"buf/do/menu.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:2:\"11\";s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(449,29,1418803381,2,'tl_member',1,'administrator','Alena Günther','contao/main.php?do=member&rt=4f965ce3f8718e5114b9c0a0158e6d29&ref=d31dda45&act=edit&id=29','1','a:41:{s:2:\"id\";s:2:\"29\";s:6:\"tstamp\";s:10:\"1418803381\";s:9:\"firstname\";s:5:\"Alena\";s:8:\"lastname\";s:8:\"Günther\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"alena.guenther@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"alenaguenther\";s:8:\"password\";s:60:\"$2y$10$1f1822487c1ec9d9f99baOt.q7RhiPbNqD/8yRGc4Iv9v3Jujm9vK\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1418803381\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(447,6,1415872408,2,'tl_member',3,'markocupic','Denise Tschopp','contao/main.php?do=member&act=edit&id=6&rt=f2536ef35344bbdc40ed8d650189f55b&ref=98c90786','1','a:41:{s:2:\"id\";s:1:\"6\";s:6:\"tstamp\";s:10:\"1407588541\";s:9:\"firstname\";s:6:\"Denise\";s:8:\"lastname\";s:7:\"Tschopp\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"denise.tschopp@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"denisetschopp\";s:8:\"password\";s:106:\"$6$ea779cf1b75b66fc$ariwZ1K6yP.r4HFvW261PB2E9txFkUl1XaMYDLHxc8Hg9Onw8ktXfN7jaO5d.cMpZA7KTaDG.x8X5oBSumYNA0\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755233\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:10:\"1402920121\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:328:\"a:3:{s:7:\"referer\";a:2:{s:4:\"last\";s:23:\"buf/do/tally_sheet.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:8;s:3:\"key\";s:33:\"ccf2a314124568db9d2ea700e09a0a551\";s:4:\"time\";i:1402920021;}s:16:\"setPasswordToken\";s:0:\"\";}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:2:\"40\";s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(448,29,1418803381,1,'tl_member',1,'administrator','Alena Günther','contao/main.php?do=member&rt=4f965ce3f8718e5114b9c0a0158e6d29&ref=d31dda45&act=edit&id=29','','a:41:{s:2:\"id\";s:2:\"29\";s:6:\"tstamp\";s:10:\"1418803381\";s:9:\"firstname\";s:5:\"Alena\";s:8:\"lastname\";s:8:\"Günther\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"alena.guenther@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"alenaguenther\";s:8:\"password\";s:60:\"$2y$10$214a11ccd460baf351564uI8cTYYESzHZe9iDnF9rSHDxuD/6j0Ue\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1418803381\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:1:\"0\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";N;s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";N;s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:0:\"\";}'),(446,6,1415872387,1,'tl_member',3,'markocupic','Denise Tschopp','contao/main.php?do=member&act=edit&id=6&rt=f2536ef35344bbdc40ed8d650189f55b&ref=98c90786','','a:41:{s:2:\"id\";s:1:\"6\";s:6:\"tstamp\";s:10:\"1407588541\";s:9:\"firstname\";s:6:\"Denise\";s:8:\"lastname\";s:7:\"Tschopp\";s:11:\"dateOfBirth\";s:0:\"\";s:6:\"gender\";s:0:\"\";s:7:\"company\";s:0:\"\";s:6:\"street\";s:0:\"\";s:6:\"postal\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:36:\"denise.tschopp@ettiswil.educanet2.ch\";s:7:\"website\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"groups\";N;s:5:\"login\";s:1:\"1\";s:8:\"username\";s:13:\"denisetschopp\";s:8:\"password\";s:106:\"$6$87a48080a5806380$kHu5ya1d.u3yL2IwHbCY50gZelVC02FtK2G6MuakpoOCiHsIgg672FLRvoqxa5uQr2kHx22aOnNFADS8OQefP/\";s:9:\"assignDir\";s:0:\"\";s:7:\"homeDir\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:9:\"dateAdded\";s:10:\"1390755233\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:10:\"1402920121\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:7:\"session\";s:328:\"a:3:{s:7:\"referer\";a:2:{s:4:\"last\";s:23:\"buf/do/tally_sheet.html\";s:7:\"current\";s:83:\"buf/do/login.html?vars=V1ZkT01GQlhlSFphTWpreFpFRTlQUT09YXVUelRWYk5taWpVaEhnRENWWWQ=\";}s:21:\"captcha_lost_password\";a:3:{s:3:\"sum\";i:8;s:3:\"key\";s:33:\"ccf2a314124568db9d2ea700e09a0a551\";s:4:\"time\";i:1402920021;}s:16:\"setPasswordToken\";s:0:\"\";}\";s:9:\"autologin\";N;s:9:\"createdOn\";s:1:\"0\";s:10:\"activation\";s:0:\"\";s:10:\"newsletter\";s:0:\"\";s:9:\"isTeacher\";s:1:\"1\";s:5:\"class\";s:2:\"40\";s:9:\"deviation\";s:1:\"0\";s:14:\"isClassTeacher\";s:1:\"1\";}'),(445,40,1415872361,1,'tl_class',3,'markocupic','ISS 7.1','contao/main.php?do=class&act=edit&id=40&rt=f2536ef35344bbdc40ed8d650189f55b&ref=f98ff560','1','a:3:{s:2:\"id\";s:2:\"40\";s:4:\"name\";s:7:\"ISS 7.1\";s:6:\"tstamp\";s:10:\"1407588457\";}');
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
) ENGINE=MyISAM AUTO_INCREMENT=88657 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_voting`
--

LOCK TABLES `tl_voting` WRITE;
/*!40000 ALTER TABLE `tl_voting` DISABLE KEYS */;
INSERT INTO `tl_voting` VALUES (87238,1421166229,83,22,'3','2','0','0','0','0','2','3',10),(87207,1421316094,32,3,'3','2','3','3','3','3','2','3',3),(87208,1421316083,34,3,'3','2','3','3','3','3','2','3',3),(87209,1421316101,36,3,'1','1','1','2','1','1','1','1',3),(87210,1421316115,40,3,'2','2','2','3','2','2','1','2',3),(87211,1421316124,42,3,'1','3','1','2','1','1','1','1',3),(87212,1399807298,27,3,'3','2','3','3','3','3','2','2',3),(87213,1399672124,26,3,'1','1','2','3','1','1','1','1',3),(87239,1419080880,84,22,'3','2','0','0','0','0','2','2',10),(87240,1421166223,85,22,'3','2','0','0','0','0','2','3',10),(87241,1419080892,86,22,'2','2','0','0','0','0','2','2',10),(87242,1419080904,87,22,'1','2','0','0','0','0','1','1',10),(87243,1419080926,88,22,'3','3','0','0','0','0','2','2',10),(88213,1418748177,158,1,'3','3','2','0','2','0','0','2',25),(88286,1419088829,47,22,'1','2','0','0','0','0','1','2',26),(88116,1402897430,46,8,'1','1','2','2','2','0','1','1',20),(88115,1402897422,45,8,'1','1','1','2','1','0','1','1',20),(88114,1402897421,44,8,'1','2','1','2','2','0','2','1',20),(88113,1402897419,43,8,'1','1','1','2','1','0','1','1',20),(88112,1402897410,42,8,'2','3','1','2','2','0','1','1',20),(88111,1402897478,41,8,'2','1','2','2','2','0','1','1',20),(88110,1402897385,40,8,'2','2','1','2','2','0','1','1',20),(88109,1402897384,39,8,'1','1','2','2','1','0','1','1',20),(88108,1402897383,38,8,'1','1','1','2','2','0','1','1',20),(88107,1402897382,37,8,'1','1','1','1','1','0','1','1',20),(88106,1402897381,36,8,'1','1','1','2','1','0','1','1',20),(88105,1402897381,35,8,'2','1','2','3','2','0','1','1',20),(88104,1402897380,34,8,'3','1','2','2','2','0','2','2',20),(88103,1402897371,33,8,'3','2','2','2','2','0','2','2',20),(88102,1402897370,32,8,'3','1','2','2','2','0','2','2',20),(88101,1402897370,31,8,'1','3','2','1','2','0','2','2',20),(87262,1419089250,47,22,'2','2','0','0','0','0','1','2',10),(87263,1419089258,48,22,'2','2','0','0','0','0','2','2',10),(87264,1419089270,49,22,'3','2','0','0','0','0','2','2',10),(87265,1419089276,50,22,'2','2','0','0','0','0','2','2',10),(87266,1419089353,51,22,'2','3','0','0','0','0','2','2',10),(87267,1419089362,52,22,'2','2','0','0','0','0','2','2',10),(87268,1419089369,53,22,'2','2','0','0','0','0','2','2',10),(88304,1419089547,33,22,'2','2','0','0','0','0','1','2',28),(88303,1419089532,32,22,'2','2','0','0','0','0','2','3',28),(88302,1419089519,31,22,'2','2','0','0','0','0','2','2',28),(88280,1421166523,94,22,'1','2','0','0','0','0','1','2',26),(88279,1421166449,93,22,'1','2','0','0','0','0','1','2',26),(88278,1419080670,92,22,'1','1','0','0','0','0','1','2',26),(88277,1421166519,91,22,'1','2','0','0','0','0','1','2',26),(88276,1419080630,185,22,'1','1','0','0','0','0','1','1',26),(88275,1420566659,90,22,'2','2','0','0','0','0','2','2',26),(88274,1419080348,89,22,'2','2','0','0','0','0','1','1',26),(88273,1419080335,88,22,'3','2','0','0','0','0','2','3',26),(88272,1419080300,87,22,'2','3','0','0','0','0','1','1',26),(88271,1419080264,86,22,'2','2','0','0','0','0','2','2',26),(88270,1420566650,85,22,'2','2','0','0','0','0','2','2',26),(88269,1419080201,84,22,'3','2','0','0','0','0','2','3',26),(88268,1421166257,83,22,'2','2','0','0','0','0','2','3',26),(88341,1421045775,59,18,'2','2','0','0','0','2','2','2',11),(88340,1421045763,57,18,'3','3','0','0','0','2','2','2',11),(88338,1421045581,185,18,'1','1','0','0','0','2','2','2',11),(88335,1420299334,169,4,'0','1','1','0','1','0','1','1',19),(88334,1420299360,166,4,'0','1','1','0','1','0','1','1',19),(88333,1420299291,164,4,'0','1','1','0','1','0','1','1',19),(88332,1420299369,157,4,'0','1','1','0','1','0','1','1',19),(88331,1420299262,168,4,'0','2','2','0','2','0','1','1',19),(88330,1420299236,167,4,'0','2','2','0','2','0','1','1',19),(88329,1420299218,165,4,'0','3','1','0','2','0','2','2',19),(88328,1420299200,163,4,'0','2','2','0','2','0','2','2',19),(88327,1420299172,162,4,'0','2','3','0','2','0','2','2',19),(88326,1420299160,170,4,'0','2','2','0','2','0','2','2',19),(88325,1420299138,161,4,'0','2','1','0','2','0','1','1',19),(88324,1420299102,160,4,'0','3','2','0','3','0','2','3',19),(88323,1420299062,159,4,'0','2','2','0','2','0','2','2',19),(88432,1421160587,159,13,'2','2','1','0','0','0','2','0',17),(88431,1421160558,158,13,'2','2','2','0','0','3','2','0',17),(88430,1421157272,183,20,'2','2','2','2','2','1','1','0',3),(88429,1421157265,182,20,'1','2','2','2','2','1','1','0',3),(88428,1421157252,177,20,'1','2','1','2','2','2','1','0',3),(88427,1421157244,175,20,'1','2','1','2','2','1','1','0',3),(88426,1421157235,174,20,'1','2','2','2','2','1','1','0',3),(88425,1421157228,173,20,'1','2','1','2','2','1','1','0',3),(88424,1421157131,169,20,'1','1','2','2','2','1','1','0',3),(88423,1421157126,157,20,'1','1','2','2','2','1','1','0',3),(88422,1421157008,161,20,'3','2','2','2','2','2','1','0',3),(88421,1421157001,160,20,'2','3','2','2','2','2','2','0',3),(88420,1421156991,158,20,'3','2','2','2','2','2','2','0',3),(88419,1421156634,180,20,'0','0','3','0','0','0','0','0',17),(88418,1421156628,176,20,'0','0','3','0','0','0','0','0',17),(88417,1421156638,184,20,'0','0','1','0','0','0','1','0',17),(88322,1420299034,158,4,'0','2','2','0','3','0','2','2',19),(88321,1419089885,38,22,'1','1','0','0','0','0','1','1',16),(88320,1419089867,34,22,'2','2','0','0','0','0','1','2',16),(88319,1419089834,32,22,'2','2','0','0','0','0','2','2',16),(88318,1419089826,31,22,'2','1','0','0','0','0','2','2',16),(88317,1420566604,46,22,'1','1','0','0','0','0','1','1',28),(88316,1419089752,45,22,'1','1','0','0','0','0','1','1',28),(88315,1419089745,44,22,'1','1','0','0','0','0','1','1',28),(88314,1419089736,43,22,'1','1','0','0','0','0','1','1',28),(88313,1419089728,42,22,'1','2','0','0','0','0','1','1',28),(88312,1419089719,41,22,'2','1','0','0','0','0','1','1',28),(88311,1419089699,40,22,'2','2','0','0','0','0','1','2',28),(88310,1419089667,39,22,'1','1','0','0','0','0','1','1',28),(88309,1419089660,38,22,'1','1','0','0','0','0','1','1',28),(88308,1419089650,37,22,'1','1','0','0','0','0','1','1',28),(88307,1419089642,36,22,'1','1','0','0','0','0','1','1',28),(88306,1419089633,35,22,'1','2','0','0','0','0','1','1',28),(88305,1419089563,34,22,'2','2','0','0','0','0','1','2',28),(88301,1419089223,62,22,'1','2','0','0','0','0','1','1',26),(88300,1419089210,61,22,'1','1','0','0','0','0','1','1',26),(88416,1421156637,183,20,'0','0','1','0','0','0','1','0',17),(88415,1421156636,182,20,'0','0','1','0','0','0','1','0',17),(88414,1421156635,181,20,'0','0','1','0','0','0','1','0',17),(88413,1421156632,179,20,'0','0','2','0','0','0','1','0',17),(88412,1421156630,178,20,'0','0','2','0','0','0','1','0',17),(88411,1421156629,177,20,'0','0','2','0','0','0','1','0',17),(88410,1421156625,175,20,'0','0','1','0','0','0','1','0',17),(88409,1421156624,174,20,'0','0','2','0','0','0','1','0',17),(88408,1421156622,173,20,'0','0','1','0','0','0','1','0',17),(88407,1421156620,172,20,'0','0','2','0','0','0','1','0',17),(88406,1421156619,171,20,'0','0','2','0','0','0','1','0',17),(88405,1421156154,27,20,'0','1','0','0','0','0','0','0',19),(88404,1421156128,22,20,'0','0','0','0','1','1','1','0',19),(88403,1421155995,185,20,'0','0','1','0','0','0','1','0',19),(88653,1421402447,44,3,'2','2','1','2','2','2','2','1',14),(88652,1421402300,46,3,'2','2','1','2','2','1','1','1',14),(88651,1421402220,45,3,'1','1','1','2','1','1','1','1',14),(88650,1421402168,43,3,'1','1','1','1','1','1','1','1',14),(88649,1421402149,42,3,'3','3','1','2','1','3','1','1',14),(88648,1421401850,41,3,'1','1','1','2','1','1','1','1',14),(88647,1421401704,40,3,'2','2','1','2','1','1','1','1',14),(88646,1421401619,39,3,'1','1','1','2','1','1','1','1',14),(88645,1421401525,38,3,'1','1','1','2','1','1','1','1',14),(88644,1421401475,37,3,'1','1','1','1','1','1','1','1',14),(88643,1421401421,36,3,'1','1','1','1','1','1','1','1',14),(88642,1421401332,35,3,'1','2','1','3','1','2','1','1',14),(88641,1421401168,34,3,'3','1','3','2','3','3','2','2',14),(88640,1421401037,33,3,'2','3','1','2','1','1','1','1',14),(88639,1421400869,32,3,'3','2','3','3','3','3','2','2',14),(88638,1421400758,31,3,'2','3','2','2','2','2','1','2',14),(88637,1421400585,30,3,'1','1','1','1','1','1','1','1',14),(88636,1421400551,24,3,'2','2','2','2','2','2','2','1',14),(88635,1421400469,1,3,'1','1','1','1','1','1','1','1',14),(88634,1421400450,26,3,'2','1','1','2','1','1','1','1',14),(88633,1421400424,25,3,'1','1','1','2','1','1','1','1',14),(88632,1421400362,23,3,'2','2','1','2','1','2','1','1',14),(88631,1421400273,4,3,'3','2','2','3','2','2','2','2',14),(88630,1421400126,28,3,'2','1','1','2','1','1','1','1',14),(88629,1421400076,3,3,'2','1','2','2','2','1','1','1',14),(88628,1421399957,27,3,'3','1','2','3','3','3','3','2',14),(88627,1421399855,29,3,'2','2','3','2','3','2','1','1',14),(88626,1421399765,21,3,'2','2','2','2','1','1','1','1',14),(88625,1421399729,2,3,'3','3','3','3','3','3','1','2',14),(88624,1421339566,180,5,'3','0','3','0','3','0','2','2',8),(88623,1421339563,179,5,'1','0','1','0','1','0','1','1',8),(88622,1421339556,178,5,'2','0','1','0','2','0','2','1',8),(88621,1421339550,177,5,'2','0','2','0','2','0','2','2',8),(88620,1421339548,176,5,'3','0','2','0','2','0','3','3',8),(88619,1421339546,175,5,'2','0','1','0','2','0','1','1',8),(88618,1421397786,174,5,'2','0','2','0','2','0','1','2',8),(88617,1421339541,173,5,'1','0','1','0','1','0','1','1',8),(88616,1421339539,172,5,'2','0','1','0','2','0','2','2',8),(87407,1402051674,89,20,'2','3','2','2','2','2','2','0',3),(87408,1421155619,93,20,'1','2','2','2','2','1','1','0',3),(87409,1421155626,94,20,'2','2','2','2','2','1','1','0',3),(87410,1421155632,95,20,'2','1','2','2','2','1','1','0',3),(87411,1421143909,96,20,'2','2','2','2','2','2','2','0',3),(87412,1421155361,47,20,'2','1','2','2','2','2','2','0',3),(87413,1421155389,50,20,'2','2','3','2','2','2','2','0',3),(87414,1421155416,51,20,'3','3','2','2','2','3','3','0',3),(87415,1421155438,52,20,'2','2','2','2','2','2','2','0',3),(87416,1402052411,53,20,'3','3','2','2','2','2','2','0',3),(87417,1421155454,56,20,'2','2','2','2','2','2','2','0',3),(87418,1402052432,58,20,'3','2','3','2','2','2','2','0',3),(87419,1421155478,60,20,'1','2','2','2','2','2','1','0',3),(87420,1402052450,61,20,'2','1','2','2','2','2','2','0',3),(87421,1402052465,62,20,'1','2','1','2','2','2','1','0',3),(88299,1419089160,60,22,'1','2','0','0','0','0','1','2',26),(88298,1419089135,59,22,'2','2','0','0','0','0','2','2',26),(88297,1419089118,58,22,'1','1','0','0','0','0','1','1',26),(88296,1419089107,57,22,'2','2','0','0','0','0','2','2',26),(88295,1419089078,56,22,'2','2','0','0','0','0','2','2',26),(88294,1419089046,55,22,'2','2','0','0','0','0','1','1',26),(88293,1419089038,54,22,'1','2','0','0','0','0','1','1',26),(88292,1419089013,53,22,'2','2','0','0','0','0','2','3',26),(87430,1402298160,83,17,'2','2','2','2','2','2','2','2',12),(87431,1421095890,84,17,'2','2','1','3','2','2','2','2',12),(87432,1402298165,85,17,'2','2','2','2','2','2','2','2',12),(87433,1402298166,86,17,'2','2','2','2','2','2','2','2',12),(87434,1421096113,87,17,'2','2','2','2','2','2','2','2',12),(87435,1402298169,88,17,'2','2','2','2','2','2','2','2',12),(87436,1421096042,89,17,'2','2','2','2','2','2','1','1',12),(87437,1421095998,90,17,'2','2','2','2','2','2','2','2',12),(87438,1421096000,91,17,'2','2','2','2','2','2','2','2',12),(87439,1421096003,92,17,'2','2','2','2','2','2','2','2',12),(87440,1421096006,93,17,'2','2','2','2','2','2','2','2',12),(87441,1421096008,94,17,'2','2','2','2','2','2','2','2',12),(87442,1421096023,95,17,'2','2','3','2','2','2','2','2',12),(87443,1402298181,96,17,'2','2','2','2','2','2','2','2',12),(87444,1421095854,97,17,'2','2','3','2','2','2','2','2',12),(87445,1421096076,98,17,'1','2','3','2','2','2','2','1',12),(87446,1402298563,47,17,'2','2','2','2','2','2','2','2',12),(87447,1402298564,48,17,'2','2','2','2','2','2','2','2',12),(87448,1402298565,49,17,'2','2','2','2','2','2','2','2',12),(87449,1402298567,50,17,'2','2','2','2','2','2','2','2',12),(87450,1421096305,51,17,'2','3','2','3','3','3','3','3',12),(87451,1402298569,52,17,'2','2','2','2','2','2','2','2',12),(87452,1421096477,53,17,'2','3','2','3','2','3','2','3',12),(87453,1402298571,54,17,'2','2','2','2','2','2','2','2',12),(87454,1402298573,55,17,'2','2','2','2','2','2','2','2',12),(87455,1402298574,56,17,'2','2','2','2','2','2','2','2',12),(87456,1402298575,57,17,'2','2','2','2','2','2','2','2',12),(87457,1421096431,58,17,'2','2','2','2','2','2','1','2',12),(87458,1421096391,59,17,'2','2','3','2','2','3','2','2',12),(87459,1402298580,60,17,'2','2','2','2','2','2','2','2',12),(87460,1402298581,61,17,'2','2','2','2','2','2','2','2',12),(87461,1421096514,62,17,'1','2','2','2','1','2','1','1',12),(87492,1421096745,89,17,'2','2','2','2','2','2','2','1',2),(87493,1421096621,90,17,'1','2','2','1','2','2','2','2',2),(87494,1421096623,91,17,'2','2','2','2','2','2','2','2',2),(87495,1421096624,92,17,'2','2','2','2','2','2','2','2',2),(87496,1421096691,93,17,'2','2','2','1','3','2','2','2',2),(87497,1421096701,94,17,'2','2','2','2','3','2','2','2',2),(87498,1421096628,95,17,'2','2','2','1','2','2','2','2',2),(87499,1421096629,96,17,'2','2','2','2','2','2','2','2',2),(87500,1421096630,97,17,'2','2','2','2','2','2','2','2',2),(87501,1421096747,98,17,'2','2','2','2','2','2','2','1',2),(87502,1421096819,54,17,'2','2','2','2','2','2','2','2',2),(87503,1421096820,55,17,'2','2','2','2','2','2','2','2',2),(87504,1421096877,56,17,'2','2','1','1','2','2','2','2',2),(87505,1421096846,57,17,'3','2','3','2','2','2','2','2',2),(87506,1421096910,58,17,'2','2','1','2','1','2','2','2',2),(87507,1421096826,59,17,'2','2','2','2','2','3','2','2',2),(87508,1421096827,60,17,'2','2','2','2','2','2','2','2',2),(87509,1421096828,61,17,'2','2','1','2','2','2','2','2',2),(87510,1421096954,62,17,'1','2','1','1','1','2','2','1',2),(87511,1421069851,48,1,'2','2','2','2','2','0','1','0',3),(87512,1418749152,54,1,'2','2','2','2','2','0','1','0',3),(87513,1418749144,55,1,'2','2','1','3','2','0','1','0',3),(87514,1402302905,57,1,'2','2','1','3','2','0','2','0',3),(87515,1402302974,88,1,'2','2','2','2','2','0','2','0',3),(87516,1402303009,91,1,'2','2','2','2','1','0','1','0',3),(87517,1418749076,92,1,'2','2','2','2','2','0','2','0',3),(87518,1418749084,97,1,'2','1','2','2','2','0','1','0',3),(87519,1402303159,98,1,'2','2','2','2','2','0','1','0',3),(87520,1402303757,83,1,'2','3','2','2','2','2','2','2',25),(87521,1418749517,84,1,'3','3','1','2','2','3','3','3',25),(87522,1418749511,85,1,'2','2','2','2','2','2','2','2',25),(87523,1402303770,86,1,'2','2','1','1','1','1','2','2',25),(87524,1418749246,87,1,'3','3','1','2','1','2','1','2',25),(87525,1402303777,88,1,'2','2','2','2','2','2','2','2',25),(87526,1418749254,89,1,'1','2','2','2','2','2','2','1',25),(87527,1418749534,90,1,'1','2','2','2','1','1','2','2',25),(87528,1402303804,91,1,'1','2','2','2','1','1','2','1',25),(87529,1402303806,92,1,'2','2','2','2','2','2','2','1',25),(87530,1418749538,93,1,'1','1','2','2','2','1','2','1',25),(87531,1418749540,94,1,'1','2','2','2','2','1','2','1',25),(87532,1418749545,95,1,'1','1','2','2','2','1','2','1',25),(87533,1418749382,96,1,'2','1','2','2','2','2','2','2',25),(87534,1418749269,97,1,'1','1','2','2','2','1','2','1',25),(87535,1418749552,98,1,'2','2','2','2','2','1','2','2',25),(87536,1418748449,83,1,'0','0','2','0','0','0','0','0',20),(87537,1402303883,84,1,'0','0','1','0','0','0','0','0',20),(87538,1418748487,85,1,'0','0','2','0','0','0','0','0',20),(87539,1402303887,86,1,'0','0','1','0','0','0','0','0',20),(87540,1402303888,87,1,'0','0','1','0','0','0','0','0',20),(87541,1402303891,88,1,'0','0','2','0','0','0','0','0',20),(87542,1402303894,89,1,'0','0','2','0','0','0','0','0',20),(87543,1402303897,90,1,'0','0','2','0','0','0','0','0',20),(87544,1402303899,91,1,'0','0','2','0','0','0','0','0',20),(87545,1402303900,92,1,'0','0','2','0','0','0','0','0',20),(87546,1402303903,93,1,'0','0','2','0','0','0','0','0',20),(87547,1402303905,94,1,'0','0','2','0','0','0','0','0',20),(87548,1402303906,95,1,'0','0','2','0','0','0','0','0',20),(87549,1402303907,96,1,'0','0','2','0','0','0','0','0',20),(87550,1402303909,97,1,'0','0','2','0','0','0','0','0',20),(87551,1402303912,98,1,'0','0','2','0','0','0','0','0',20),(87552,1417811030,83,3,'2','0','1','0','2','2','2','2',8),(87553,1417811030,84,3,'2','0','1','0','2','2','1','2',8),(87554,1417811030,85,3,'2','0','1','0','2','2','2','2',8),(87555,1421314394,86,3,'2','0','1','0','2','2','1','2',8),(88613,1421338520,84,2,'2','3','2','0','2','0','0','2',4),(87557,1421314416,88,3,'2','0','1','0','2','2','1','2',8),(87559,1421333375,47,3,'2','0','1','0','1','1','1','1',8),(87560,1421314491,48,3,'2','0','2','0','2','2','1','2',8),(87561,1421314508,49,3,'2','0','2','0','2','1','2','2',8),(87562,1421314535,50,3,'2','0','2','0','2','2','1','2',8),(87563,1421314557,51,3,'2','0','2','2','2','2','2','2',8),(87564,1421315816,52,3,'2','0','2','0','2','2','2','2',8),(87565,1421315831,53,3,'2','0','2','0','2','1','2','2',8),(87566,1402343232,32,3,'3','0','3','0','3','0','2','2',4),(87567,1421315878,33,3,'2','0','2','0','1','0','1','2',4),(87568,1402343238,36,3,'1','0','2','0','2','0','1','1',4),(87569,1421315932,40,3,'2','0','2','0','1','0','1','1',4),(87570,1421315956,42,3,'2','0','2','0','2','0','1','1',4),(87571,1402343251,43,3,'1','0','2','0','1','0','1','1',4),(87572,1402343254,46,3,'2','0','1','0','2','0','1','1',4),(87573,1402343418,31,3,'2','0','2','2','2','2','2','2',8),(87574,1402343416,32,3,'3','0','2','2','3','2','2','2',8),(87575,1402343413,33,3,'1','0','1','2','2','1','1','2',8),(87576,1421315999,34,3,'2','0','2','2','2','2','2','2',8),(88402,1421144143,183,8,'1','1','1','0','2','2','1','1',5),(88401,1421144069,177,8,'2','2','2','0','1','2','1','1',5),(88400,1421144058,175,8,'1','2','1','0','1','2','1','1',5),(88399,1421143990,174,8,'2','2','2','0','2','2','1','1',5),(88398,1421143978,172,8,'2','2','2','0','2','2','1','2',5),(88397,1421143931,167,8,'1','2','1','0','1','2','1','1',5),(88396,1421143883,163,8,'2','2','2','0','2','2','1','1',5),(88395,1421143847,170,8,'2','2','2','0','2','2','1','1',5),(88394,1421143811,161,8,'3','2','3','0','3','2','1','1',5),(88393,1421141662,184,8,'2','2','3','0','2','0','1','1',20),(87587,1420984062,83,4,'2','2','2','2','0','2','2','2',3),(88392,1421141632,183,8,'2','2','2','0','2','0','1','1',20),(88391,1421141630,182,8,'1','2','2','0','2','0','1','1',20),(88390,1421141629,181,8,'2','2','2','0','2','0','1','1',20),(88389,1421141628,180,8,'3','2','3','0','2','0','1','2',20),(87592,1420984090,84,4,'3','3','2','2','0','3','2','2',3),(88388,1421141617,179,8,'2','2','1','0','2','0','1','2',20),(88387,1421141730,178,8,'1','1','2','0','1','0','1','1',20),(88386,1421141615,177,8,'2','2','2','0','2','0','1','1',20),(88385,1421141609,176,8,'2','2','2','0','3','0','3','3',20),(88384,1421141607,175,8,'2','2','2','0','2','0','1','1',20),(88383,1421141606,174,8,'2','2','1','0','2','0','1','1',20),(88382,1421141605,173,8,'2','2','1','0','2','0','1','2',20),(88381,1421141598,172,8,'2','2','3','0','2','0','2','2',20),(88380,1421141733,171,8,'1','2','1','0','1','0','1','1',20),(88379,1421095700,184,17,'1','1','2','2','1','2','1','1',12),(88378,1421095683,183,17,'2','2','2','2','1','2','1','2',12),(87604,1402381395,85,4,'2','2','2','2','0','2','2','1',3),(87605,1421155213,47,20,'2','1','2','2','2','2','2','0',19),(87606,1402381358,48,20,'2','2','2','2','2','2','2','0',19),(87607,1420984147,86,4,'1','2','1','2','0','2','1','1',3),(87608,1421155230,49,20,'2','3','2','2','2','2','2','0',19),(87609,1421155240,50,20,'3','2','2','2','2','2','2','0',19),(87610,1421155257,51,20,'3','3','1','2','2','3','3','0',19),(87611,1402381406,52,20,'2','2','2','2','2','2','2','0',19),(87612,1420984172,87,4,'3','3','2','2','0','3','2','1',3),(87613,1421155270,53,20,'3','3','2','2','2','2','2','0',19),(87614,1402381422,54,20,'2','2','2','2','2','2','2','0',19),(87615,1402381434,55,20,'1','2','2','2','2','2','1','0',19),(87616,1402381445,56,20,'2','2','2','2','2','2','2','0',19),(87617,1402559014,90,4,'1','1','2','2','0','1','1','1',3),(87618,1402381453,57,20,'2','2','2','2','2','2','2','0',19),(87619,1402381476,58,20,'2','2','3','2','2','2','2','0',19),(87620,1402381489,59,20,'3','2','3','2','2','2','2','0',19),(87621,1402381498,60,20,'2','2','2','2','2','2','2','0',19),(87622,1402381512,61,20,'2','2','2','2','2','2','2','0',19),(87623,1402381521,62,20,'1','2','2','2','2','2','1','0',19),(87624,1402381545,83,20,'2','3','2','2','2','2','2','0',19),(87625,1420984236,49,4,'3','3','2','2','0','2','3','2',3),(87626,1402381561,84,20,'3','3','1','2','2','2','2','0',19),(87627,1421155961,85,20,'3','2','3','2','2','2','2','0',19),(87628,1402381580,86,20,'1','2','2','2','2','2','2','0',19),(87629,1421155974,87,20,'2','3','2','2','2','2','1','0',19),(87630,1421155987,88,20,'2','2','3','2','2','2','2','0',19),(87631,1421144124,89,20,'2','2','2','2','2','2','2','0',19),(87632,1402381624,90,20,'1','2','1','2','2','2','1','0',19),(87633,1421144622,91,20,'2','2','2','2','2','2','2','0',19),(88336,1420984302,185,4,'3','2','2','2','0','3','2','2',3),(87635,1421156009,92,20,'2','2','3','2','2','2','1','0',19),(87636,1421156018,93,20,'1','2','2','2','2','1','1','0',19),(87637,1402381663,94,20,'1','2','2','2','2','1','1','0',19),(87638,1421144560,95,20,'2','1','2','2','2','1','1','0',19),(87639,1421144519,96,20,'2','2','2','2','2','2','2','0',19),(87640,1402381689,97,20,'1','1','2','2','2','2','1','0',19),(88291,1419088975,52,22,'2','2','0','0','0','0','2','2',26),(87642,1421156028,98,20,'1','2','2','2','2','1','1','0',19),(88290,1419088937,51,22,'3','2','0','0','0','0','2','3',26),(88377,1421095681,182,17,'1','1','2','2','1','2','1','1',12),(88376,1421095679,181,17,'1','1','1','2','1','2','1','1',12),(88375,1421095672,180,17,'3','2','3','2','2','2','2','2',12),(88374,1421095671,179,17,'2','2','2','2','2','2','2','2',12),(88373,1421095669,178,17,'2','2','2','2','2','2','1','1',12),(88372,1421095667,177,17,'2','2','2','2','2','2','2','2',12),(88371,1421095665,176,17,'3','2','2','2','2','2','2','2',12),(87652,1421045546,89,18,'2','3','0','0','0','2','2','2',11),(88339,1421045693,95,18,'2','2','0','0','0','2','2','2',11),(87654,1402387469,92,18,'2','2','0','0','0','1','1','1',11),(87655,1421045619,93,18,'1','1','0','0','0','1','1','1',11),(87656,1421045682,94,18,'1','1','0','0','0','2','2','2',11),(87657,1402387508,96,18,'2','2','0','0','0','2','2','2',11),(87658,1402387526,97,18,'2','2','0','0','0','2','2','2',11),(87659,1402387539,98,18,'2','3','0','0','0','2','2','2',11),(87660,1402387631,54,18,'2','2','0','0','0','2','2','2',11),(87661,1402387641,55,18,'2','2','0','0','0','2','2','1',11),(87662,1402387658,56,18,'2','2','0','0','0','2','2','2',11),(87663,1402387670,58,18,'2','2','0','0','0','2','2','2',11),(87664,1402387680,60,18,'2','2','0','0','0','2','2','2',11),(87665,1421045788,61,18,'1','1','0','0','0','2','2','2',11),(87666,1402387751,27,18,'3','2','0','0','0','2','2','2',11),(87667,1402387765,3,18,'1','1','0','0','0','1','1','1',11),(87668,1402387779,4,18,'2','2','0','0','0','2','2','2',11),(87669,1402387799,23,18,'2','1','0','0','0','1','1','1',11),(87670,1421045993,26,18,'1','1','0','0','0','1','1','2',11),(88351,1421046687,184,18,'2','2','0','0','0','1','1','2',11),(87672,1402387838,30,18,'1','1','0','0','0','1','1','1',11),(88344,1421046120,36,18,'1','2','0','0','0','2','2','2',11),(88350,1421046668,183,18,'2','2','0','0','0','1','1','2',11),(88349,1421046638,181,18,'1','2','0','0','0','1','1','1',11),(88348,1421046487,169,18,'2','2','0','0','0','1','1','1',11),(87677,1402387951,40,18,'2','2','0','0','0','2','2','2',11),(88347,1421046464,166,18,'1','1','0','0','0','1','1','1',11),(88346,1421046525,164,18,'2','2','0','0','0','1','1','1',11),(87680,1421046202,43,18,'2','1','0','0','0','1','1','1',11),(88345,1421046439,157,18,'2','1','0','0','0','1','1','1',11),(87682,1402388031,46,18,'2','2','0','0','0','2','2','2',11),(88289,1419088913,50,22,'2','3','0','0','0','0','2','2',26),(88288,1419088901,49,22,'3','2','0','0','0','0','2','2',26),(88287,1419088887,48,22,'2','2','0','0','0','0','2','2',26),(88285,1419080976,91,22,'1','1','0','0','0','0','1','1',10),(88370,1421095660,175,17,'2','2','1','2','1','2','1','1',12),(88369,1421095708,174,17,'3','2','2','2','2','2','0','0',12),(87690,1421236381,84,10,'2','2','1','0','0','0','0','0',29),(87691,1421236458,93,10,'2','2','2','0','0','0','0','0',29),(87692,1402469616,94,10,'1','2','2','0','0','0','0','0',29),(87693,1402469635,97,10,'2','1','2','0','0','0','0','0',29),(87694,1421236415,91,10,'2','1','2','0','0','0','0','0',29),(87695,1421236540,48,10,'2','2','2','0','0','0','0','0',29),(87696,1421236549,50,10,'2','2','2','0','0','0','0','0',29),(87697,1402469851,55,10,'2','2','1','0','0','0','0','0',29),(87698,1402469869,57,10,'3','2','2','0','0','0','0','0',29),(87699,1421236576,60,10,'2','2','2','0','0','0','0','0',29),(87700,1402469909,58,10,'2','2','2','0','0','0','0','0',29),(87701,1402469927,61,10,'2','2','2','0','0','0','0','0',29),(87702,1421236864,4,10,'2','2','1','0','0','0','0','0',29),(87703,1402471233,23,10,'2','2','2','0','0','0','0','0',29),(87704,1402471240,25,10,'1','1','2','0','0','0','0','0',29),(87705,1421236915,36,10,'2','1','1','0','0','0','0','0',29),(87706,1421236959,40,10,'2','2','2','0','0','0','0','0',29),(87707,1421236982,43,10,'1','2','2','0','0','0','0','0',29),(87708,1421237000,46,10,'1','1','2','0','0','0','0','0',29),(87709,1421238643,2,10,'3','2','2','0','0','0','0','0',3),(87710,1421238654,29,10,'1','1','3','0','0','0','0','0',3),(87711,1402472920,28,10,'1','2','2','0','0','0','0','0',3),(87712,1421238687,4,10,'3','2','1','0','0','0','0','0',3),(87713,1421238702,23,10,'2','2','2','0','0','0','0','0',3),(87714,1421238725,35,10,'2','2','3','0','0','0','0','0',3),(87715,1421238742,39,10,'1','2','2','0','0','0','0','0',3),(87716,1421238761,41,10,'1','2','1','0','0','0','0','0',3),(87717,1421238778,43,10,'2','2','2','0','0','0','0','0',3),(87718,1421238791,45,10,'2','2','2','0','0','0','0','0',3),(87719,1421238804,46,10,'2','1','2','0','0','0','0','0',3),(88284,1421166595,98,22,'1','2','0','0','0','0','2','1',26),(88283,1420566688,97,22,'2','1','0','0','0','0','1','1',26),(88282,1421166569,96,22,'1','2','0','0','0','0','2','2',26),(88281,1420566673,95,22,'2','2','0','0','0','0','2','2',26),(88267,1419079852,182,22,'1','2','0','0','0','0','2','2',10),(88266,1419079828,180,22,'2','2','0','0','0','0','1','1',10),(88265,1419079806,179,22,'2','2','0','0','0','0','2','2',10),(88264,1419079741,178,22,'2','2','0','0','0','0','2','2',10),(88263,1419079708,177,22,'2','2','0','0','0','0','2','2',10),(88262,1419079699,176,22,'3','3','0','0','0','0','2','3',10),(88261,1419079677,175,22,'1','2','0','0','0','0','1','1',10),(88260,1419079664,174,22,'3','2','0','0','0','0','2','2',10),(88259,1419079654,173,22,'2','2','0','0','0','0','2','2',10),(88258,1419079644,172,22,'2','2','0','0','0','0','2','3',10),(88257,1419079632,171,22,'3','2','0','0','0','0','1','1',10),(88256,1419079395,184,22,'1','1','0','0','0','0','1','1',26),(88255,1419079385,183,22,'1','1','0','0','0','0','1','1',26),(88254,1419079376,182,22,'1','2','0','0','0','0','1','1',26),(88253,1419079398,181,22,'1','1','0','0','0','0','1','1',26),(88252,1419079298,180,22,'2','2','0','0','0','0','1','1',26),(88251,1419079285,179,22,'2','2','0','0','0','0','1','1',26),(88250,1419079232,178,22,'2','2','0','0','0','0','1','2',26),(88242,1418749631,98,1,'1','0','0','0','0','0','0','0',23),(88241,1418749612,97,1,'1','0','0','0','0','0','0','0',23),(88240,1418749611,96,1,'2','0','0','0','0','0','0','0',23),(88239,1418749610,95,1,'1','0','0','0','0','0','0','0',23),(88238,1418749607,94,1,'1','0','0','0','0','0','0','0',23),(88237,1418749603,93,1,'1','0','0','0','0','0','0','0',23),(88236,1418749601,92,1,'2','0','0','0','0','0','0','0',23),(88235,1418749599,91,1,'1','0','0','0','0','0','0','0',23),(88234,1418749596,90,1,'1','0','0','0','0','0','0','0',23),(88233,1418749595,89,1,'1','0','0','0','0','0','0','0',23),(88232,1418749592,88,1,'2','0','0','0','0','0','0','0',23),(88231,1418749591,87,1,'1','0','0','0','0','0','0','0',23),(88230,1418749584,86,1,'1','0','0','0','0','0','0','0',23),(88229,1418749579,85,1,'1','0','0','0','0','0','0','0',23),(88228,1418749577,84,1,'2','0','0','0','0','0','0','0',23),(88227,1418749575,83,1,'1','0','0','0','0','0','0','0',23),(88226,1418748253,169,1,'1','1','1','0','1','0','0','1',25),(88225,1418748211,166,1,'1','1','1','0','1','0','0','1',25),(87760,1421141862,21,8,'2','2','2','2','2','1','1','2',4),(87761,1421141884,3,8,'1','1','2','2','1','2','2','1',4),(87762,1421141952,25,8,'1','1','2','2','1','1','1','1',4),(87763,1421141970,1,8,'1','1','2','1','1','1','1','1',4),(87764,1421141984,30,8,'1','1','2','2','1','1','1','1',4),(87765,1402484189,31,8,'2','3','2','1','2','2','1','2',4),(87766,1421142070,34,8,'3','2','3','2','3','2','1','2',4),(87767,1421143208,35,8,'2','1','2','3','2','2','1','1',4),(87768,1421142189,37,8,'1','1','2','1','1','1','1','1',4),(87769,1421142251,38,8,'1','1','2','2','2','2','1','1',4),(87770,1421143225,39,8,'1','1','2','2','1','2','1','1',4),(87771,1402484210,41,8,'1','1','1','2','2','1','1','1',4),(87772,1402484255,44,8,'1','2','1','2','2','2','1','1',4),(87773,1421142410,45,8,'1','1','2','2','1','2','1','1',4),(87774,1421143634,2,8,'2','2','2','2','2','0','1','1',23),(87775,1421142902,21,8,'1','1','1','2','1','0','1','1',23),(87776,1421142654,22,8,'2','2','0','0','2','0','1','1',23),(87777,1421142979,29,8,'2','1','2','2','2','0','1','1',23),(87778,1421142812,27,8,'3','1','3','3','3','0','2','1',23),(87779,1421142919,3,8,'2','1','2','2','2','0','2','1',23),(87780,1421143655,28,8,'1','1','1','2','1','0','1','1',23),(87781,1421143003,4,8,'2','2','2','2','2','0','2','1',23),(87782,1421143696,23,8,'2','1','3','3','2','0','1','1',23),(87783,1421143727,25,8,'1','1','1','2','1','0','1','1',23),(87784,1421143023,26,8,'1','1','2','2','1','0','2','1',23),(87785,1421143026,1,8,'1','1','1','1','1','0','1','1',23),(87786,1421143089,24,8,'2','1','2','3','1','0','1','1',23),(87787,1421143034,30,8,'1','1','1','2','1','0','1','1',23),(88457,1421162494,57,13,'2','2','1','0','2','0','2','0',4),(88456,1421162484,54,13,'1','2','1','0','1','0','1','0',4),(88455,1421162481,48,13,'1','1','2','0','1','0','1','0',4),(88454,1421161753,185,13,'2','3','0','0','0','0','0','0',4),(88453,1421161486,185,13,'0','0','1','0','0','0','2','0',17),(88452,1421161320,46,13,'1','0','1','0','0','0','1','0',17),(88451,1421161308,41,13,'1','0','1','0','0','0','1','0',17),(88450,1421161306,36,13,'1','0','1','0','0','0','2','0',17),(88449,1421161131,30,13,'1','0','1','0','0','0','1','0',17),(88448,1421161127,24,13,'1','0','1','0','0','0','1','0',17),(88447,1421161121,4,13,'1','0','1','0','0','0','2','0',17),(88446,1421161119,3,13,'1','0','1','0','0','0','1','0',17),(88445,1421161117,27,13,'2','0','1','0','0','0','2','0',17),(87802,1421143532,2,8,'2','1','2','0','2','0','0','1',20),(87803,1421143378,21,8,'1','1','1','0','1','0','0','1',20),(87804,1421143380,22,8,'2','2','0','0','0','0','0','1',20),(87805,1421143433,29,8,'2','1','2','0','2','0','0','1',20),(87806,1421143358,3,8,'2','1','2','0','2','0','0','1',20),(87807,1402586405,27,8,'3','1','3','0','3','0','0','1',20),(87808,1402586406,28,8,'1','1','1','0','1','0','0','1',20),(87809,1421143444,4,8,'2','2','2','0','2','0','0','1',20),(87810,1421143450,23,8,'2','1','3','0','2','0','0','1',20),(87811,1402586410,25,8,'1','1','1','0','1','0','0','1',20),(87812,1421160817,2,13,'2','3','2','2','2','2','2','0',29),(88444,1421160858,29,13,'1','1','2','2','2','1','1','0',29),(87814,1421160896,27,13,'2','1','2','3','3','2','2','0',29),(87815,1421160923,28,13,'1','2','2','2','2','2','2','0',29),(87816,1421160984,26,13,'1','1','1','1','1','1','1','0',29),(87817,1421161164,32,13,'1','1','2','2','2','1','2','0',29),(87818,1402486586,42,13,'2','3','1','1','2','1','2','0',29),(87819,1421162290,83,13,'3','2','3','0','2','2','1','0',29),(87820,1421162290,85,13,'2','2','2','0','2','2','2','0',29),(87821,1421162290,86,13,'2','2','1','0','2','3','2','0',29),(87822,1421162290,90,13,'1','1','1','0','1','1','1','0',29),(87823,1421162290,95,13,'1','1','2','0','1','1','1','0',29),(87824,1421162130,47,13,'1','1','1','0','1','1','1','0',29),(87825,1421162192,49,13,'2','3','1','0','2','2','2','0',29),(87826,1421162180,52,13,'2','2','3','0','2','2','2','0',29),(87827,1421162130,56,13,'1','1','2','0','1','1','1','0',29),(87828,1421162215,59,13,'1','2','1','0','2','2','2','0',29),(87829,1421162130,62,13,'1','2','2','0','1','1','1','0',29),(87830,1421161441,83,13,'0','0','2','0','0','0','2','0',17),(87831,1421161443,84,13,'0','0','2','0','0','0','2','0',17),(87832,1421161445,85,13,'0','0','2','0','0','0','2','0',17),(87833,1421161447,86,13,'0','0','2','0','0','0','2','0',17),(87834,1421161452,87,13,'0','0','2','0','0','0','1','0',17),(87835,1421161481,88,13,'0','0','2','0','0','0','1','0',17),(87836,1421161483,89,13,'0','0','3','0','0','0','2','0',17),(87837,1421161484,90,13,'0','0','2','0','0','0','1','0',17),(87838,1421161488,91,13,'0','0','1','0','0','0','1','0',17),(87839,1421161489,92,13,'0','0','2','0','0','0','2','0',17),(87840,1421161492,93,13,'0','0','1','0','0','0','1','0',17),(87841,1421161496,94,13,'0','0','1','0','0','0','1','0',17),(87842,1421161498,95,13,'0','0','2','0','0','0','1','0',17),(87843,1421161503,96,13,'0','0','2','0','0','0','2','0',17),(87844,1421161506,97,13,'0','0','3','0','0','0','2','0',17),(87845,1421161510,98,13,'0','0','3','0','0','0','2','0',17),(88479,1421168492,47,21,'2','1','2','2','2','0','1','1',5),(88474,1421167720,2,21,'2','2','2','0','1','0','1','1',5),(88491,1421169172,179,21,'2','2','2','0','2','0','2','2',5),(88490,1421169141,184,21,'1','1','1','0','1','0','1','1',5),(88480,1421168528,51,21,'2','2','1','0','2','2','2','2',5),(88489,1421169088,182,21,'1','1','2','0','1','0','1','1',5),(88488,1421169041,181,21,'2','2','2','0','2','0','1','1',5),(88487,1421168993,173,21,'2','2','1','0','2','0','2','2',5),(88486,1421168934,171,21,'2','1','2','0','1','0','1','1',5),(88485,1421168829,168,21,'2','2','2','0','2','0','0','0',5),(88484,1421168785,162,21,'2','2','2','0','2','0','0','2',5),(88483,1421168752,159,21,'2','2','2','0','2','0','0','2',5),(88482,1421168614,57,21,'2','2','2','0','2','0','1','1',5),(88481,1421168573,54,21,'2','2','3','0','2','0','1','1',5),(87862,1421161800,83,13,'3','2','3','0','2','1','1','0',4),(87863,1421161945,84,13,'3','3','1','0','2','3','2','0',4),(87864,1421161753,85,13,'2','2','2','0','2','2','2','0',4),(87865,1421161949,86,13,'2','2','2','0','2','2','2','0',4),(87866,1421161753,87,13,'2','2','2','0','1','1','1','0',4),(87867,1421161955,88,13,'2','1','2','0','2','1','1','0',4),(87868,1421161960,89,13,'1','2','1','0','2','1','1','0',4),(87869,1421161753,90,13,'1','1','2','0','1','1','1','0',4),(87870,1421161753,91,13,'1','1','1','0','1','1','1','0',4),(87871,1421161753,92,13,'2','2','3','0','2','1','2','0',4),(87872,1421161830,93,13,'1','2','2','0','1','1','1','0',4),(87873,1421161753,94,13,'1','1','2','0','1','1','1','0',4),(87874,1421161753,95,13,'1','1','3','0','1','1','1','0',4),(87875,1421161753,96,13,'1','1','2','0','2','2','2','0',4),(87876,1421161971,97,13,'1','1','2','0','1','1','1','0',4),(87877,1421161982,98,13,'1','2','2','0','2','1','1','0',4),(87878,1420984432,21,4,'2','2','2','2','0','0','2','1',3),(87879,1402497826,3,4,'1','1','2','2','0','0','1','1',3),(87880,1420984454,25,4,'1','1','1','2','0','0','1','1',3),(87881,1420984468,1,4,'1','1','1','1','0','0','1','1',3),(87882,1402497809,30,4,'1','1','1','2','0','0','1','1',3),(87883,1420984337,2,4,'3','2','0','3','0','0','2','2',10),(87884,1402497923,21,4,'1','2','0','2','0','0','2','2',10),(87890,1421167209,21,21,'2','2','2','0','1','0','2','2',29),(87886,1420984346,29,4,'1','2','0','2','0','0','1','1',10),(88337,1421045562,90,18,'3','2','0','0','0','2','2','2',11),(87888,1402498002,25,4,'1','1','0','1','0','0','1','2',10),(87889,1420984385,24,4,'1','1','0','2','0','0','1','2',10),(87891,1421167247,3,21,'1','1','2','0','2','2','1','2',29),(87893,1402504918,24,21,'1','1','1','0','1','0','1','1',29),(87894,1402504925,30,21,'1','1','2','0','1','0','1','1',29),(87895,1421167493,31,21,'2','3','2','0','2','0','2','2',29),(87896,1421167496,33,21,'2','2','2','0','2','0','2','2',29),(87897,1421167500,34,21,'3','1','2','0','2','0','3','2',29),(87898,1421167507,35,21,'2','2','2','0','1','0','1','1',29),(87899,1421167510,37,21,'1','1','2','0','1','0','1','1',29),(87900,1421167513,38,21,'1','1','1','0','1','0','1','1',29),(87901,1421167517,39,21,'1','1','2','0','2','0','1','1',29),(87902,1421167534,41,21,'2','1','1','0','2','0','2','1',29),(87903,1421167544,44,21,'2','1','1','0','2','0','2','2',29),(87904,1421167560,45,21,'1','1','1','0','1','0','1','2',29),(87905,1402505414,1,21,'2','1','2','0','1','0','1','1',29),(88224,1418748209,164,1,'1','1','1','0','1','0','0','1',25),(88223,1418748207,157,1,'1','1','2','0','1','0','0','1',25),(88222,1418748205,168,1,'2','2','2','0','1','0','0','2',25),(88221,1418748202,167,1,'2','2','2','0','1','0','0','1',25),(88220,1418748197,165,1,'2','2','2','0','2','0','0','2',25),(88219,1418748197,163,1,'2','2','1','0','2','0','0','2',25),(88368,1421095648,173,17,'2','2','2','2','2','2','1','1',12),(88367,1421095644,172,17,'2','2','2','2','2','2','2','2',12),(88366,1421095642,171,17,'2','2','2','2','2','2','2','2',12),(87916,1402506234,28,21,'1','1','1','0','1','0','1','1',5),(88478,1421168387,89,21,'2','1','1','0','1','0','1','1',5),(87918,1421167739,23,21,'3','2','3','0','1','0','1','2',5),(87919,1402506252,26,21,'1','1','1','0','1','0','1','1',5),(88477,1421168293,88,21,'2','2','1','2','2','2','0','2',5),(87921,1402506532,33,21,'2','2','2','0','2','0','2','2',5),(88476,1421168240,87,21,'2','2','1','2','2','2','0','2',5),(87923,1402506541,35,21,'2','1','2','0','1','0','1','1',5),(87924,1402506550,40,21,'2','2','1','0','1','0','1','2',5),(87925,1402506552,43,21,'1','1','1','0','1','0','1','1',5),(87926,1402506554,45,21,'1','1','1','0','1','0','1','1',5),(88475,1421167854,36,21,'2','1','1','1','1','0','1','1',5),(88218,1418748197,162,1,'2','2','2','0','1','0','0','2',25),(88217,1418748182,170,1,'2','2','2','0','2','0','0','2',25),(88216,1418748181,161,1,'3','3','2','0','3','0','0','2',25),(88215,1418748180,160,1,'3','3','1','0','2','0','0','2',25),(88214,1418748178,159,1,'2','2','2','0','2','0','0','2',25),(88212,1416576615,168,22,'2','2','0','0','0','0','1','1',10),(88211,1419078727,167,22,'1','1','0','0','0','0','1','2',10),(88210,1419078704,165,22,'2','2','0','0','0','0','2','2',10),(88209,1419078715,163,22,'3','2','0','0','0','0','2','2',10),(88365,1421094977,169,17,'2','1','1','2','2','2','2','0',12),(88364,1421095015,166,17,'2','1','1','2','2','2','2','1',12),(88614,1421338701,83,2,'2','2','3','0','3','0','0','2',5),(87941,1421338538,87,2,'2','3','2','0','2','0','0','2',4),(87942,1421338661,97,2,'1','2','3','0','2','0','0','2',4),(87943,1421338612,96,2,'2','2','2','0','2','0','0','2',4),(87944,1421338594,94,2,'1','2','2','0','2','0','0','2',4),(87945,1421338581,93,2,'1','2','2','0','2','0','0','2',4),(87946,1421252065,35,5,'2','0','1','0','2','0','2','1',2),(87947,1421252161,36,5,'2','0','1','1','1','1','1','2',2),(87948,1421252021,37,5,'1','0','1','1','1','0','2','1',2),(87949,1421252045,38,5,'1','0','1','0','1','0','2','1',2),(87950,1421252078,39,5,'2','0','2','0','2','0','2','2',2),(87951,1402577491,40,5,'2','0','2','0','2','0','2','2',2),(87952,1421251893,41,5,'1','0','1','0','1','0','2','2',2),(87953,1421252096,42,5,'2','0','1','3','2','0','2','1',2),(87954,1421251863,43,5,'2','0','1','0','2','0','2','1',2),(87955,1421252197,44,5,'1','0','1','0','1','0','1','1',2),(87956,1402577504,45,5,'1','0','1','0','1','0','1','1',2),(87957,1421252140,46,5,'1','0','1','1','1','1','1','1',2),(87958,1421251762,27,5,'3','0','2','3','3','0','2','2',2),(87959,1421251751,3,5,'2','0','1','0','2','1','1','2',2),(87960,1421251446,28,5,'2','0','2','0','2','0','1','1',2),(87961,1421251581,4,5,'2','0','2','0','3','0','2','2',2),(87962,1421251730,23,5,'1','0','1','0','1','1','1','1',2),(87963,1421251731,25,5,'1','0','1','1','1','1','1','1',2),(87964,1402576957,26,5,'2','0','1','0','1','0','1','1',2),(87965,1421251737,1,5,'1','0','1','1','1','1','1','1',2),(87966,1421251745,24,5,'2','0','1','0','2','1','2','1',2),(87967,1421251740,30,5,'1','0','1','1','1','1','1','1',2),(87968,1421338230,87,2,'2','3','2','0','2','0','2','2',29),(87969,1421338144,88,2,'2','2','2','0','2','0','2','2',29),(87970,1421338206,89,2,'2','2','1','0','1','0','1','1',29),(87971,1421338334,96,2,'2','2','2','0','2','0','2','2',29),(87972,1421338378,98,2,'2','2','1','0','1','0','2','1',29),(87973,1421338288,92,2,'2','2','2','0','2','0','2','2',29),(88615,1421339536,171,5,'1','0','2','0','1','0','1','1',8),(87975,1421338737,91,2,'2','2','2','0','2','0','0','2',5),(87976,1421338759,92,2,'2','2','2','0','2','0','0','2',5),(87977,1421338769,93,2,'2','2','2','0','2','0','0','2',5),(87978,1421338782,96,2,'2','2','2','0','2','0','0','2',5),(87979,1421338825,97,2,'2','2','2','0','2','0','0','2',5),(88363,1421095014,164,17,'2','1','1','2','2','2','2','1',12),(88362,1421095013,157,17,'2','1','1','2','2','2','2','1',12),(88361,1421095011,168,17,'2','2','2','2','2','2','2','2',12),(88360,1421095008,167,17,'2','2','2','2','2','2','2','2',12),(88208,1419078693,162,22,'1','2','0','0','0','0','1','2',10),(88207,1419078686,170,22,'3','2','0','0','0','0','2','2',10),(88206,1419078674,161,22,'3','2','0','0','0','0','2','2',10),(88205,1416576508,160,22,'2','2','0','0','0','0','2','2',10),(88204,1416576498,159,22,'2','2','0','0','0','0','1','1',10),(88203,1419078681,158,22,'3','2','0','0','0','0','2','2',10),(88202,1416576447,169,22,'1','1','0','0','0','0','1','1',26),(88201,1416576440,166,22,'1','1','0','0','0','0','1','1',26),(88200,1416576432,164,22,'1','1','0','0','0','0','1','1',26),(88199,1416576425,157,22,'1','1','0','0','0','0','1','1',26),(88198,1419078525,168,22,'2','2','0','0','0','0','1','2',26),(88197,1416576395,167,22,'2','2','0','0','0','0','1','1',26),(88196,1419078481,165,22,'2','3','0','0','0','0','2','2',26),(88195,1419078476,163,22,'2','2','0','0','0','0','2','2',26),(88194,1419078467,162,22,'1','2','0','0','0','0','1','2',26),(88193,1416576242,170,22,'2','2','0','0','0','0','2','2',26),(88192,1416576208,161,22,'2','2','0','0','0','0','2','2',26),(88001,1421394488,47,2,'1','2','2','2','1','2','1','1',25),(88002,1402578519,48,2,'2','2','2','2','1','2','1','2',25),(88003,1421394547,49,2,'2','3','2','2','2','2','2','2',25),(88004,1402578521,50,2,'2','3','2','2','2','2','2','2',25),(88005,1402578524,51,2,'3','3','1','3','2','3','2','3',25),(88006,1402578549,52,2,'2','2','2','2','2','2','2','3',25),(88007,1402578529,53,2,'2','2','2','2','2','2','2','2',25),(88008,1402578529,54,2,'1','1','2','2','2','2','1','2',25),(88009,1402578563,55,2,'3','2','2','2','2','2','2','2',25),(88010,1402578563,56,2,'1','1','2','2','1','2','1','2',25),(88011,1402578564,57,2,'3','2','2','2','2','2','1','2',25),(88012,1402578566,58,2,'2','2','2','2','2','2','1','2',25),(88013,1402578571,59,2,'3','3','2','2','3','3','3','3',25),(88014,1402578575,60,2,'1','1','2','2','1','2','1','2',25),(88015,1402578577,61,2,'1','2','2','2','2','2','1','2',25),(88016,1402578580,62,2,'1','2','2','2','1','1','1','1',25),(88017,1402586411,26,8,'2','1','2','0','2','0','0','1',20),(88018,1402586412,1,8,'1','1','1','0','1','0','0','1',20),(88019,1421143575,24,8,'2','1','2','0','2','0','0','1',20),(88020,1402586425,30,8,'1','1','1','0','1','0','0','1',20),(88021,1402598488,83,19,'3','3','3','0','0','0','0','2',5),(88022,1421241000,85,19,'3','2','2','0','0','0','0','3',5),(88023,1421240991,86,19,'3','3','1','0','0','0','0','3',5),(88024,1421241013,90,19,'1','1','1','0','0','0','0','2',5),(88025,1402598535,95,19,'1','1','3','0','0','0','0','1',5),(88026,1421240915,94,19,'1','1','1','0','0','0','0','1',5),(88552,1421252433,165,5,'2','2','2','2','3','2','2','2',4),(88028,1421241200,52,19,'2','2','3','0','0','0','0','2',5),(88029,1421241231,56,19,'1','1','3','0','0','0','0','2',5),(88030,1421241165,59,19,'3','3','2','0','0','0','0','3',5),(88031,1421241234,62,19,'1','2','1','0','0','0','0','2',5),(88551,1421307737,161,5,'3','2','2','3','0','2','2','2',4),(88033,1421241660,3,19,'2','2','2','0','0','0','2','1',5),(88034,1421241663,25,19,'2','1','2','0','0','0','2','1',5),(88035,1421316781,1,19,'2','1','1','0','0','0','1','1',5),(88550,1421252634,160,5,'3','3','2','2','0','2','2','2',4),(88037,1421241669,30,19,'2','1','3','0','0','0','1','1',5),(88038,1421241588,37,19,'1','1','2','0','0','0','1','1',5),(88549,1421252654,158,5,'3','2','2','2','0','2','2','2',4),(88040,1421241593,39,19,'2','1','2','0','0','0','2','1',5),(88041,1421241598,41,19,'2','2','1','0','0','0','2','1',5),(88042,1421241608,44,19,'1','3','1','0','0','0','3','2',5),(88191,1416576186,160,22,'2','2','0','0','0','0','2','2',26),(88190,1419078428,159,22,'2','2','0','0','0','0','1','2',26),(88189,1419078868,158,22,'2','2','0','0','0','0','3','3',26),(88188,1416575818,24,22,'1','1','0','0','0','0','1','1',16),(88187,1416575802,29,22,'2','1','0','0','0','0','1','1',16),(88186,1416575785,21,22,'2','2','0','0','0','0','1','2',16),(88185,1416575730,30,22,'1','1','0','0','0','0','1','1',28),(88160,1415873341,158,6,'4','3','4','2','3','3','2','4',4),(88161,1415873213,159,6,'2','2','2','2','2','2','2','2',4),(88053,1402652292,2,3,'3','2','3','3','3','3','1','2',25),(88249,1419079207,177,22,'2','2','0','0','0','0','2','2',26),(88248,1419079195,176,22,'3','2','0','0','0','0','2','2',26),(88247,1419079139,175,22,'2','2','0','0','0','0','2','2',26),(88246,1419079144,174,22,'2','2','0','0','0','0','2','2',26),(88245,1419079147,173,22,'2','2','0','0','0','0','2','2',26),(88244,1419079150,172,22,'2','2','0','0','0','0','2','2',26),(88243,1419079003,171,22,'2','2','0','0','0','0','1','1',26),(88061,1402780690,21,3,'2','0','2','2','1','0','1','0',25),(88062,1402780580,22,3,'2','0','2','3','2','0','0','0',25),(88063,1402780587,29,3,'3','0','3','3','3','0','0','0',25),(88064,1402780592,27,3,'3','0','3','3','3','0','0','0',25),(88065,1402780599,3,3,'1','0','2','1','1','0','0','0',25),(88066,1402780607,28,3,'1','0','2','1','1','0','0','0',25),(88067,1402780615,4,3,'2','0','2','2','1','0','0','0',25),(88068,1402780619,23,3,'2','0','2','2','1','0','0','0',25),(88069,1402780624,25,3,'1','0','1','1','1','0','0','0',25),(88070,1402780629,26,3,'1','0','2','1','1','0','0','0',25),(88071,1402780633,1,3,'1','0','1','1','1','0','0','0',25),(88072,1402780637,24,3,'2','0','2','2','1','0','0','0',25),(88073,1402780645,30,3,'1','0','1','1','1','0','0','0',25),(88074,1402824078,31,4,'2','3','3','2','2','2','2','2',25),(88075,1402824126,32,4,'3','2','2','2','2','2','2','2',25),(88076,1402824192,33,4,'2','2','2','2','2','1','2','2',25),(88077,1402824216,34,4,'3','2','3','2','2','2','3','2',25),(88078,1402824249,35,4,'1','2','3','2','1','2','1','1',25),(88079,1402824284,36,4,'1','2','2','2','2','1','1','1',25),(88080,1402824299,37,4,'1','1','1','2','1','1','1','1',25),(88081,1402824344,38,4,'1','1','1','2','1','2','1','1',25),(88082,1402824369,39,4,'1','1','2','2','2','2','2','1',25),(88083,1402824399,40,4,'1','2','1','2','2','2','1','2',25),(88084,1402824434,41,4,'1','2','2','2','2','2','1','2',25),(88085,1402824474,42,4,'2','3','1','2','2','2','2','1',25),(88086,1402824501,43,4,'1','1','3','2','1','2','1','1',25),(88087,1402824564,44,4,'1','2','1','3','2','2','2','1',25),(88088,1402824623,45,4,'1','1','2','2','1','2','1','1',25),(88089,1402824634,46,4,'2','2','2','2','2','2','2','1',25),(88090,1402824940,31,4,'3','3','3','2','2','2','2','2',3),(88091,1402824976,33,4,'2','2','2','2','2','1','1','1',3),(88092,1402825001,37,4,'1','1','1','1','1','1','1','1',3),(88093,1402825020,38,4,'1','1','1','2','1','1','1','1',3),(88094,1402825044,44,4,'1','2','1','2','2','2','2','1',3),(88095,1402825101,31,4,'1','2','0','0','0','0','2','1',10),(88096,1402825121,32,4,'3','2','0','0','0','0','2','2',10),(88097,1402825137,33,4,'2','2','0','0','0','0','1','2',10),(88098,1402825147,34,4,'2','2','0','0','0','0','2','2',10),(88099,1402825161,36,4,'1','1','0','0','0','0','2','1',10),(88100,1402825179,44,4,'2','2','0','0','0','0','2','1',10),(88184,1416575717,24,22,'1','1','0','0','0','0','1','1',28),(88183,1416575708,1,22,'1','1','0','0','0','0','1','1',28),(88182,1416575701,26,22,'1','1','0','0','0','0','1','1',28),(88181,1416575690,25,22,'1','1','0','0','0','0','1','1',28),(88180,1416575682,23,22,'2','1','0','0','0','0','1','1',28),(88179,1419089446,4,22,'2','2','0','0','0','0','1','2',28),(88178,1416575624,28,22,'2','1','0','0','0','0','1','1',28),(88177,1416575610,3,22,'1','1','0','0','0','0','1','1',28),(88176,1416575595,29,22,'2','1','0','0','0','0','1','1',28),(88175,1419089424,21,22,'1','2','0','0','0','0','1','2',28),(88174,1416575539,2,22,'2','2','0','0','0','0','1','2',28),(88173,1415873615,169,6,'1','1','1','1','2','2','2','2',4),(88172,1415873583,166,6,'1','1','1','1','2','2','2','1',4),(88171,1415873564,164,6,'1','1','1','2','2','2','2','2',4),(88170,1415873527,157,6,'1','1','1','2','2','2','2','1',4),(88169,1415873498,168,6,'3','2','3','2','2','3','2','3',4),(88168,1415873458,167,6,'1','2','2','2','2','2','2','2',4),(88167,1415873433,165,6,'3','2','3','3','2','2','2','3',4),(88166,1415873395,163,6,'4','3','3','3','3','3','3','3',4),(88162,1415873673,160,6,'3','3','3','3','2','2','3','3',4),(88163,1415873320,161,6,'2','2','3','2','2','2','2','2',4),(88164,1415873357,170,6,'2','2','2','2','2','2','2','2',4),(88165,1415873365,162,6,'2','2','2','2','2','2','2','2',4),(88359,1421095006,165,17,'2','3','3','2','2','2','2','2',12),(88358,1421095004,163,17,'2','2','2','2','2','2','2','2',12),(88357,1421095003,162,17,'2','2','2','2','2','2','2','2',12),(88356,1421095001,170,17,'2','2','2','2','2','2','2','2',12),(88355,1421094998,161,17,'2','2','2','2','2','2','2','2',12),(88354,1421094995,160,17,'2','2','2','2','2','2','2','2',12),(88353,1421094994,159,17,'2','2','2','2','2','2','2','2',12),(88352,1421094993,158,17,'2','2','2','2','2','2','2','2',12),(88343,1421045962,28,18,'2','2','0','0','0','2','2','2',11),(88342,1421045821,62,18,'2','2','0','0','0','2','2','2',11),(88433,1421160638,160,13,'3','3','2','0','0','3','2','0',17),(88434,1421160646,161,13,'3','2','2','0','0','0','2','0',17),(88435,1421160648,170,13,'2','2','2','0','0','0','2','0',17),(88436,1421160651,163,13,'2','2','2','0','0','3','2','0',17),(88437,1421160652,165,13,'3','3','3','0','0','0','2','0',17),(88438,1421160654,167,13,'2','2','1','0','0','0','2','0',17),(88439,1421160654,168,13,'2','2','2','0','0','0','2','0',17),(88440,1421160657,157,13,'1','1','1','0','0','1','1','0',17),(88441,1421160658,164,13,'1','1','1','0','0','1','1','0',17),(88442,1421160658,166,13,'1','1','1','0','0','1','1','0',17),(88443,1421160669,169,13,'1','1','1','0','0','1','1','0',17),(88458,1421162619,47,13,'0','0','2','0','0','0','1','0',17),(88459,1421162621,48,13,'0','0','2','0','0','0','1','0',17),(88460,1421162622,49,13,'0','0','2','0','0','0','2','0',17),(88461,1421162647,50,13,'0','0','2','0','0','0','2','0',17),(88462,1421162645,51,13,'0','0','2','0','0','0','3','0',17),(88463,1421162652,52,13,'0','0','2','0','0','0','2','0',17),(88464,1421162654,53,13,'0','0','2','0','0','0','1','0',17),(88465,1421162655,54,13,'0','0','1','0','0','0','1','0',17),(88466,1421162657,55,13,'0','0','1','0','0','0','1','0',17),(88467,1421162671,56,13,'0','0','1','0','0','0','1','0',17),(88468,1421162676,57,13,'0','0','1','0','0','0','1','0',17),(88469,1421162678,58,13,'0','0','1','0','0','0','1','0',17),(88470,1421162711,59,13,'0','0','1','0','0','0','2','0',17),(88471,1421162712,60,13,'0','0','1','0','0','0','2','0',17),(88472,1421162714,61,13,'0','0','1','0','0','0','1','0',17),(88473,1421162755,62,13,'0','0','1','0','0','0','1','0',17),(88492,1421169241,183,21,'2','1','2','0','1','0','1','1',5),(88493,1421169356,159,21,'2','2','1','0','2','0','2','2',29),(88494,1421169456,170,21,'3','2','3','0','2','0','2','2',29),(88495,1421169480,162,21,'2','2','2','0','2','0','2','2',29),(88496,1421169505,163,21,'2','2','2','0','2','0','2','2',29),(88497,1421169534,167,21,'2','2','2','0','2','0','1','1',29),(88498,1421169607,157,21,'2','2','2','0','1','0','1','1',29),(88499,1421169638,164,21,'1','2','1','0','1','0','1','1',29),(88500,1421169679,169,21,'2','2','2','0','1','0','1','1',29),(88501,1421169797,171,21,'1','1','1','1','1','0','1','1',29),(88502,1421169838,174,21,'2','2','2','1','2','0','1','1',29),(88503,1421169880,176,21,'2','2','2','0','2','0','2','2',29),(88504,1421169908,178,21,'3','2','2','0','2','0','2','1',29),(88505,1421169940,179,21,'2','2','3','0','2','0','2','2',29),(88506,1421169990,181,21,'2','2','2','0','2','0','1','1',29),(88507,1421170010,182,21,'1','1','2','0','2','0','1','1',29),(88508,1421170039,184,21,'1','1','1','0','1','0','1','1',29),(88509,1421236434,185,10,'2','2','2','0','0','0','0','0',29),(88510,1421237401,159,10,'2','1','2','0','0','0','0','0',3),(88511,1421237432,170,10,'2','2','2','0','0','0','0','0',3),(88512,1421237445,162,10,'1','2','2','0','0','0','0','0',3),(88513,1421237462,167,10,'2','2','1','0','0','0','0','0',3),(88514,1421237479,164,10,'2','2','1','0','0','0','0','0',3),(88515,1421237510,166,10,'2','1','2','0','0','0','0','0',3),(88516,1421237565,171,10,'2','2','1','0','0','0','0','0',3),(88517,1421237588,176,10,'3','2','2','0','0','0','0','0',3),(88518,1421237607,178,10,'2','2','2','0','0','0','0','0',3),(88519,1421237629,179,10,'1','1','1','0','0','0','0','0',3),(88520,1421239055,29,10,'1','1','3','0','0','0','0','0',15),(88521,1421239067,28,10,'1','2','2','0','0','0','0','0',15),(88522,1421239079,4,10,'3','2','1','0','0','0','0','0',15),(88523,1421239088,23,10,'2','2','2','0','0','0','0','0',15),(88524,1421239154,35,10,'2','2','3','0','0','0','0','0',15),(88525,1421239171,39,10,'1','2','2','0','0','0','0','0',15),(88526,1421239189,41,10,'1','2','1','0','0','0','0','0',15),(88527,1421239215,45,10,'2','2','2','0','0','0','0','0',15),(88528,1421239228,46,10,'2','1','2','0','0','0','0','0',15),(88529,1421239535,2,10,'2','3','2','0','0','0','0','0',19),(88530,1421239544,21,10,'2','2','2','0','0','0','0','0',19),(88531,1421239558,29,10,'1','2','2','0','0','0','0','0',19),(88532,1421239574,3,10,'1','2','2','0','0','0','0','0',19),(88533,1421239591,28,10,'2','2','2','0','0','0','0','0',19),(88534,1421239606,4,10,'2','2','2','0','0','0','0','0',19),(88535,1421239621,23,10,'1','2','2','0','0','0','0','0',19),(88536,1421239635,25,10,'1','2','1','0','0','0','0','0',19),(88537,1421239645,26,10,'2','2','1','0','0','0','0','0',19),(88538,1421239656,1,10,'1','2','2','0','0','0','0','0',19),(88539,1421239667,24,10,'2','2','1','0','0','0','0','0',19),(88540,1421239676,30,10,'1','2','2','0','0','0','0','0',19),(88541,1421240614,157,19,'1','1','2','0','0','0','0','1',5),(88542,1421240616,164,19,'2','2','1','0','0','0','0','2',5),(88543,1421240622,169,19,'1','1','1','0','0','0','0','1',5),(88544,1421240627,166,19,'2','1','2','0','0','0','0','1',5),(88545,1421240794,176,19,'2','2','1','0','0','0','0','3',5),(88546,1421240778,178,19,'2','2','2','0','0','0','0','2',5),(88547,1421241091,84,19,'3','3','1','0','0','0','0','3',5),(88548,1421241101,185,19,'3','3','2','0','0','0','0','2',5),(88553,1421252524,163,5,'2','1','1','2','0','1','2','1',3),(88554,1421252565,165,5,'1','2','1','3','0','2','2','2',3),(88555,1421252597,168,5,'2','2','2','2','0','2','2','2',3),(88556,1421252718,158,5,'3','2','2','0','2','2','2','2',29),(88557,1421308401,160,5,'3','3','2','0','2','2','2','2',29),(88558,1421252889,161,5,'3','2','3','0','2','2','2','2',29),(88559,1421252835,165,5,'3','2','3','0','3','2','2','2',29),(88560,1421252866,168,5,'1','2','2','0','2','2','2','2',29),(88561,1421308527,158,5,'3','0','2','2','2','2','2','2',8),(88562,1421253289,159,5,'2','0','2','2','2','2','2','2',8),(88563,1421253293,160,5,'3','0','3','2','2','3','2','2',8),(88564,1421253296,161,5,'2','0','2','2','2','2','2','2',8),(88565,1421308562,170,5,'2','0','2','3','2','2','2','2',8),(88566,1421253063,162,5,'2','0','0','0','0','0','0','0',8),(88567,1421253303,163,5,'2','0','2','2','2','2','2','2',8),(88568,1421253309,165,5,'3','0','3','2','1','2','1','2',8),(88569,1421308623,167,5,'2','0','2','2','2','2','2','2',8),(88570,1421253311,168,5,'2','0','2','2','2','2','2','2',8),(88571,1421254065,171,5,'1','0','1','2','2','2','1','1',9),(88572,1421254068,172,5,'3','0','3','3','3','2','2','2',9),(88573,1421254070,173,5,'1','0','1','2','1','2','2','1',9),(88574,1421397774,174,5,'3','0','2','2','2','2','2','2',9),(88575,1421254087,175,5,'1','0','1','2','2','2','2','2',9),(88576,1421301486,176,5,'2','0','3','2','3','2','3','3',9),(88577,1421254097,177,5,'3','0','2','2','2','2','2','2',9),(88578,1421254099,178,5,'2','0','2','2','2','3','2','2',9),(88579,1421254103,179,5,'2','0','2','2','2','2','1','2',9),(88580,1421254106,180,5,'3','0','2','3','2','2','2','2',9),(88581,1421254108,181,5,'2','0','2','2','1','2','1','2',9),(88582,1421254109,182,5,'1','0','2','2','1','2','1','1',9),(88583,1421254113,183,5,'2','0','3','3','2','1','1','1',9),(88584,1421254123,184,5,'1','0','2','2','2','2','2','1',9),(88585,1421339052,171,5,'2','1','1','1','2','1','1','2',19),(88586,1421339063,172,5,'3','2','3','3','3','2','2','2',19),(88587,1421339068,173,5,'1','1','1','2','1','1','1','1',19),(88588,1421397760,174,5,'3','2','2','2','3','2','1','2',19),(88589,1421339111,175,5,'1','2','1','2','1','2','1','1',19),(88590,1421339114,176,5,'3','2','2','2','3','2','3','3',19),(88591,1421339133,177,5,'2','2','2','2','2','2','1','2',19),(88592,1421339127,178,5,'2','2','2','2','2','2','2','2',19),(88593,1421339136,179,5,'1','2','1','1','2','2','1','2',19),(88594,1421339141,180,5,'3','2','2','3','3','2','2','2',19),(88595,1421339146,181,5,'2','2','2','2','2','2','1','1',19),(88596,1421339148,182,5,'1','2','2','2','1','2','1','1',19),(88597,1421339151,183,5,'2','2','2','2','2','1','1','1',19),(88598,1421339153,184,5,'2','2','2','2','1','2','1','1',19);
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

-- Dump completed on 2015-01-18 13:46:04