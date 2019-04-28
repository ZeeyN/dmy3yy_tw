#
# Test_Work Database Dump
# MODX Version:1.4.8
# 
# Host: 
# Generation Time: 28-04-2019 13:47:39
# Server version: 5.5.5-10.2.10-MariaDB
# PHP Version: 7.1.26
# Database: `tw_dmy3yy_db`
# Description: 
#

# --------------------------------------------------------

#
# Table structure for table `kxt8_active_user_locks`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_active_user_locks`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_active_user_locks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT 0,
  `elementType` int(1) NOT NULL DEFAULT 0,
  `elementId` int(10) NOT NULL DEFAULT 0,
  `lasthit` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=325 DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

#
# Dumping data for table `kxt8_active_user_locks`
#

INSERT INTO `kxt8_active_user_locks` VALUES ('321','sih9ka1p449geb15fjknqds5kp','1','4','11','1556448628');

INSERT INTO `kxt8_active_user_locks` VALUES ('324','sih9ka1p449geb15fjknqds5kp','1','1','6','1556452023');

INSERT INTO `kxt8_active_user_locks` VALUES ('312','sih9ka1p449geb15fjknqds5kp','1','1','4','1556448251');

INSERT INTO `kxt8_active_user_locks` VALUES ('315','sih9ka1p449geb15fjknqds5kp','1','1','5','1556448326');

INSERT INTO `kxt8_active_user_locks` VALUES ('316','sih9ka1p449geb15fjknqds5kp','1','1','7','1556448340');

INSERT INTO `kxt8_active_user_locks` VALUES ('322','sih9ka1p449geb15fjknqds5kp','1','7','3','1556452007');


# --------------------------------------------------------

#
# Table structure for table `kxt8_active_user_sessions`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_active_user_sessions`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT 0,
  `lasthit` int(20) NOT NULL DEFAULT 0,
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';

#
# Dumping data for table `kxt8_active_user_sessions`
#

INSERT INTO `kxt8_active_user_sessions` VALUES ('sih9ka1p449geb15fjknqds5kp','1','1556452058','127.0.0.1');


# --------------------------------------------------------

#
# Table structure for table `kxt8_active_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_active_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT 0,
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sid`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';

#
# Dumping data for table `kxt8_active_users`
#

INSERT INTO `kxt8_active_users` VALUES ('sih9ka1p449geb15fjknqds5kp','1','ZeeyN','1556452059','93',NULL);


# --------------------------------------------------------

#
# Table structure for table `kxt8_categories`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_categories`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `kxt8_categories`
#

INSERT INTO `kxt8_categories` VALUES ('1','SEO','0');

INSERT INTO `kxt8_categories` VALUES ('2','Templates','0');

INSERT INTO `kxt8_categories` VALUES ('3','Js','0');

INSERT INTO `kxt8_categories` VALUES ('4','Manager and Admin','0');

INSERT INTO `kxt8_categories` VALUES ('5','Content','0');

INSERT INTO `kxt8_categories` VALUES ('6','Navigation','0');


# --------------------------------------------------------

#
# Table structure for table `kxt8_document_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_document_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT 0,
  `document` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_dg_id` (`document_group`,`document`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `kxt8_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_documentgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_documentgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT 0 COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT 0 COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `kxt8_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_event_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_event_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT 0 COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `kxt8_event_log`
#

INSERT INTO `kxt8_event_log` VALUES ('1','0','1556440157','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT count(*) FROM (SELECT count(*) FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND `c`.`sg_rid` IN (\'3\') GROUP BY `c`.`sg_id` ) as `tmp`</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 10:29:17</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0040 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.1267 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.1307 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6424026489258 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>extDocLister->init</strong>(onetableDocLister $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>paginate_DL_Extender->run</strong>()<br />assets/snippets/DocLister/core/extDocLister.abstract.php on line 78</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>paginate_DL_Extender->getListPages</strong>(\'pages\', \'total\')<br />assets/snippets/DocLister/core/extender/paginate.extender.inc on line 40</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getChildrenCount</strong>()<br />assets/snippets/DocLister/core/extender/paginate.extender.inc on line 138</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 394</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('2','0','1556440219','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 10:30:19</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0050 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0722 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0772 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6422653198242 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('3','0','1556440278','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 10:31:18</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0040 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0746 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0786 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6422653198242 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('4','0','1556440279','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 10:31:19</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0110 s (2 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0446 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0556 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6422653198242 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('5','0','1556440481','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 10:34:41</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0150 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0712 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0862 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>3.6422653198242 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('6','0','1556440514','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 10:35:14</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0040 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0690 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0731 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6422653198242 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('7','0','1556440809','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 10:40:09</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0160 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0690 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0850 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6420211791992 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('8','0','1556442838','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Телефон: +380962145469</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: ddddddddddddddddd</p>\n    [AltBody] => Имя: ContactForm\nТелефон: +380962145469\nEmail: zeeynnik@gmail.com\nСообщение: ddddddddddddddddd\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC70LXRhNC+0L06ICszODA5NjIxNDU0NjkNCkVtYWls\nOiB6ZWV5bm5pa0BnbWFpbC5jb20NCtCh0L7QvtCx0YnQtdC90LjQtTogZGRkZGRkZGRkZGRkZGRk\nZGQ=\n\n--b1_LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC70LXRhNC+0L06ICszODA5NjIx\nNDU0Njk8L3A+DQo8cD5FbWFpbDogPGEgaHJlZj0ibWFpbHRvOnplZXlubmlrQGdtYWlsLmNvbSI+\nemVleW5uaWtAZ21haWwuY29tPC9hPjwvcD4NCjxwPtCh0L7QvtCx0YnQtdC90LjQtTogZGRkZGRk\nZGRkZGRkZGRkZGQ8L3A+\n\n\n--b1_LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:13:59 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk\n            [2] => b2_LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk\n            [3] => b3_LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => LF4iGwHrIwTI3nKI1plPiKCRhYNPeH9wDOdRExKwqk\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('9','0','1556443064','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Телефон: +380962145469</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: ddddddddddddddddd</p>\n    [AltBody] => Имя: ContactForm\nТелефон: +380962145469\nEmail: zeeynnik@gmail.com\nСообщение: ddddddddddddddddd\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC70LXRhNC+0L06ICszODA5NjIxNDU0NjkNCkVtYWls\nOiB6ZWV5bm5pa0BnbWFpbC5jb20NCtCh0L7QvtCx0YnQtdC90LjQtTogZGRkZGRkZGRkZGRkZGRk\nZGQ=\n\n--b1_4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC70LXRhNC+0L06ICszODA5NjIx\nNDU0Njk8L3A+DQo8cD5FbWFpbDogPGEgaHJlZj0ibWFpbHRvOnplZXlubmlrQGdtYWlsLmNvbSI+\nemVleW5uaWtAZ21haWwuY29tPC9hPjwvcD4NCjxwPtCh0L7QvtCx0YnQtdC90LjQtTogZGRkZGRk\nZGRkZGRkZGRkZGQ8L3A+\n\n\n--b1_4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:17:44 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik\n            [2] => b2_4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik\n            [3] => b3_4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => 4tlg8QTa1sKc6Wy8PfMQNxdtvF7hXysHimwAK5hgnik\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('10','0','1556443407','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: </p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: sssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: \nEmail: zeeynnik@gmail.com\nСообщение: sssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6IA0KRW1haWw6IHplZXlubmlrQGdtYWlsLmNv\nbQ0K0KHQvtC+0LHRidC10L3QuNC1OiBzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3M=\n\n--b1_Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6IDwvcD4NCjxwPkVtYWls\nOiA8YSBocmVmPSJtYWlsdG86emVleW5uaWtAZ21haWwuY29tIj56ZWV5bm5pa0BnbWFpbC5jb208\nL2E+PC9wPg0KPHA+0KHQvtC+0LHRidC10L3QuNC1OiBzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nz\nc3M8L3A+\n\n\n--b1_Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:23:27 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU\n            [2] => b2_Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU\n            [3] => b3_Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => Q9RilkITimrVZDbs1urJgt8mmsXZsNiIY0huC6KU\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('11','0','1556443413','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: </p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: sssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: \nEmail: zeeynnik@gmail.com\nСообщение: sssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6IA0KRW1haWw6IHplZXlubmlrQGdtYWlsLmNv\nbQ0K0KHQvtC+0LHRidC10L3QuNC1OiBzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3M=\n\n--b1_8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6IDwvcD4NCjxwPkVtYWls\nOiA8YSBocmVmPSJtYWlsdG86emVleW5uaWtAZ21haWwuY29tIj56ZWV5bm5pa0BnbWFpbC5jb208\nL2E+PC9wPg0KPHA+0KHQvtC+0LHRidC10L3QuNC1OiBzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nz\nc3M8L3A+\n\n\n--b1_8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:23:33 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw\n            [2] => b2_8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw\n            [3] => b3_8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => 8XkwxCFRvgPBEmrzlZxMZvnfWi0QXcZlirGjuLbnNw\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('12','0','1556443437','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: </p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: sssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: \nEmail: zeeynnik@gmail.com\nСообщение: sssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6IA0KRW1haWw6IHplZXlubmlrQGdtYWlsLmNv\nbQ0K0KHQvtC+0LHRidC10L3QuNC1OiBzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3M=\n\n--b1_AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6IDwvcD4NCjxwPkVtYWls\nOiA8YSBocmVmPSJtYWlsdG86emVleW5uaWtAZ21haWwuY29tIj56ZWV5bm5pa0BnbWFpbC5jb208\nL2E+PC9wPg0KPHA+0KHQvtC+0LHRidC10L3QuNC1OiBzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nz\nc3M8L3A+\n\n\n--b1_AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:23:57 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA\n            [2] => b2_AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA\n            [3] => b3_AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => AisDyddn9K4wQMOhuAQQtvQ6S73labPbe3KTPWhSA\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('13','0','1556443446','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: </p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: sssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: \nEmail: zeeynnik@gmail.com\nСообщение: sssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6IA0KRW1haWw6IHplZXlubmlrQGdtYWlsLmNv\nbQ0K0KHQvtC+0LHRidC10L3QuNC1OiBzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3M=\n\n--b1_8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6IDwvcD4NCjxwPkVtYWls\nOiA8YSBocmVmPSJtYWlsdG86emVleW5uaWtAZ21haWwuY29tIj56ZWV5bm5pa0BnbWFpbC5jb208\nL2E+PC9wPg0KPHA+0KHQvtC+0LHRidC10L3QuNC1OiBzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nz\nc3M8L3A+\n\n\n--b1_8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:24:06 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg\n            [2] => b2_8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg\n            [3] => b3_8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => 8gotsYExaQDaBuubTE4Nlo6TRPzs7v3BGuQFzGbg\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('14','0','1556443452','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: sddsdsdsdsdsds</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: sssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: sddsdsdsdsdsds\nEmail: zeeynnik@gmail.com\nСообщение: sssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6IHNkZHNkc2RzZHNkc2RzDQpFbWFpbDogemVl\neW5uaWtAZ21haWwuY29tDQrQodC+0L7QsdGJ0LXQvdC40LU6IHNzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nz\nc3Nzc3Nzcw==\n\n--b1_UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6IHNkZHNkc2RzZHNkc2Rz\nPC9wPg0KPHA+RW1haWw6IDxhIGhyZWY9Im1haWx0bzp6ZWV5bm5pa0BnbWFpbC5jb20iPnplZXlu\nbmlrQGdtYWlsLmNvbTwvYT48L3A+DQo8cD7QodC+0L7QsdGJ0LXQvdC40LU6IHNzc3Nzc3Nzc3Nz\nc3Nzc3Nzc3Nzc3Nzc3NzczwvcD4=\n\n\n--b1_UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:24:12 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY\n            [2] => b2_UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY\n            [3] => b3_UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => UY0QPAYjfaSADKBwz8oKx7xKLJ67Kacim24fAOHGpWY\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('15','0','1556444024','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/about.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 11:33:44</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0080 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0728 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0808 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6421585083008 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('16','0','1556444154','1','0','1','FormLister\\\\Form','<style>pre {font-size:14px;}</style><h3>Lexicon loaded</h3><pre>Array\n(\n    &#91;lexicon&#93; =&gt; Array\n        (\n            &#91;form.protectSubmit&#93; =&gt; Данные успешно отправлены. Нет нужды отправлять их еще раз.\n            &#91;form.submitLimit&#93; =&gt; Отправлять форму можно 1 раз в \n            &#91;form.minutes&#93; =&gt; мин\n            &#91;form.seconds&#93; =&gt; сек\n            &#91;form.dateFormat&#93; =&gt; m.d.Y в H:i:s\n            &#91;form.default_successTpl&#93; =&gt; @CODE:Форма успешно отправлена в &#91;+form.date.value+&#93;\n            &#91;form.form_failed&#93; =&gt; Не удалось отправить письмо.\n        )\n\n)\n</pre><p>Time: 0.002000093460083</p><hr><h3>Set fields from $_REQUEST</h3><pre>Array\n(\n)\n</pre><p>Time: 0.002000093460083</p><hr><h3>Render output</h3><pre>Array\n(\n    &#91;template&#93; =&gt; @CODE:\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&#91;+name.errorClass+&#93;&#91;+name.requiredClass+&#93;&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&#91;+name.value+&#93;&quot;&gt;\n                        &#91;+name.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+email.errorClass+&#93;&#91;+email.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&#91;+email.value+&#93;&quot;&gt;\n                        &#91;+email.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+subject.errorClass+&#93;&#91;+subject.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&#91;+subject.value+&#93;&quot;&gt;\n                        &#91;+subject.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+message.errorClass+&#93;&#91;+message.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&#91;+message+&#93;&lt;/textarea&gt;\n                        &#91;+message.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &#91;+form.messages+&#93;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n    &#91;data&#93; =&gt; Array\n        (\n            &#91;form.messages&#93; =&gt; \n        )\n\n)\n</pre><p>Time: 0.003000020980835</p><hr><h3>Output</h3><pre>\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&lt;/textarea&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                \n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre><p>Time: 0.0039999485015869</p><hr><p>Total time: 0.0039999485015869</p>');

INSERT INTO `kxt8_event_log` VALUES ('17','0','1556444164','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: ыыыыыыыыыыыыыыыы</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: ssssssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: ыыыыыыыыыыыыыыыы\nEmail: zeeynnik@gmail.com\nСообщение: ssssssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL0YvRi9GL0YvRi9GL\n0YvRi9GLDQpFbWFpbDogemVleW5uaWtAZ21haWwuY29tDQrQodC+0L7QsdGJ0LXQvdC40LU6IHNz\nc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzcw==\n\n--b1_cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL\n0YvRi9GL0YvRi9GL0YvRi9GLPC9wPg0KPHA+RW1haWw6IDxhIGhyZWY9Im1haWx0bzp6ZWV5bm5p\na0BnbWFpbC5jb20iPnplZXlubmlrQGdtYWlsLmNvbTwvYT48L3A+DQo8cD7QodC+0L7QsdGJ0LXQ\nvdC40LU6IHNzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzczwvcD4=\n\n\n--b1_cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:36:04 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU\n            [2] => b2_cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU\n            [3] => b3_cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => cJfSZzJSGT4P0JA1ZHr4sgfmzYq66PE4NSJivOWBmU\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('18','0','1556444164','1','0','1','FormLister\\\\Form','<style>pre {font-size:14px;}</style><h3>Lexicon loaded</h3><pre>Array\n(\n    &#91;lexicon&#93; =&gt; Array\n        (\n            &#91;form.protectSubmit&#93; =&gt; Данные успешно отправлены. Нет нужды отправлять их еще раз.\n            &#91;form.submitLimit&#93; =&gt; Отправлять форму можно 1 раз в \n            &#91;form.minutes&#93; =&gt; мин\n            &#91;form.seconds&#93; =&gt; сек\n            &#91;form.dateFormat&#93; =&gt; m.d.Y в H:i:s\n            &#91;form.default_successTpl&#93; =&gt; @CODE:Форма успешно отправлена в &#91;+form.date.value+&#93;\n            &#91;form.form_failed&#93; =&gt; Не удалось отправить письмо.\n        )\n\n)\n</pre><p>Time: 0.00099992752075195</p><hr><h3>Set fields from $_REQUEST</h3><pre>Array\n(\n    &#91;formid&#93; =&gt; basic\n    &#91;name&#93; =&gt; ContactForm\n    &#91;email&#93; =&gt; zeeynnik@gmail.com\n    &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n    &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n)\n</pre><p>Time: 0.00099992752075195</p><hr><h3>Validation rules failed to load</h3><pre>Array\n(\n)\n</pre><p>Time: 0.0019998550415039</p><hr><h3>Prepare to validate fields</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n        )\n\n    &#91;rules&#93; =&gt; Array\n        (\n        )\n\n)\n</pre><p>Time: 0.0019998550415039</p><hr><h3>Mail report</h3><pre>Array\n(\n    &#91;report&#93; =&gt; \n&lt;p&gt;Имя: ContactForm&lt;/p&gt;\n&lt;p&gt;Тема: ыыыыыыыыыыыыыыыы&lt;/p&gt;\n&lt;p&gt;Email: &lt;a href=&quot;mailto:zeeynnik@gmail.com&quot;&gt;zeeynnik@gmail.com&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Сообщение: ssssssssssssssssssssssssssssss&lt;/p&gt;\n    &#91;mailer_config&#93; =&gt; Array\n        (\n            &#91;isHtml&#93; =&gt; 1\n            &#91;to&#93; =&gt; zeeynnik@gmail.com\n            &#91;from&#93; =&gt; zeeynnik@gmail.com\n            &#91;fromName&#93; =&gt; Test_Work\n            &#91;subject&#93; =&gt; Новое сообщение\n            &#91;replyTo&#93; =&gt; \n            &#91;cc&#93; =&gt; \n            &#91;bcc&#93; =&gt; \n            &#91;noemail&#93; =&gt; \n        )\n\n    &#91;result&#93; =&gt; \n)\n</pre><p>Time: 1.0210580825806</p><hr><h3>Form procession complete</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:36:04\n        )\n\n    &#91;errors&#93; =&gt; Array\n        (\n        )\n\n    &#91;messages&#93; =&gt; Array\n        (\n            &#91;0&#93; =&gt; Не удалось отправить письмо.\n        )\n\n    &#91;files&#93; =&gt; Array\n        (\n        )\n\n    &#91;status&#93; =&gt; \n)\n</pre><p>Time: 1.0220580101013</p><hr><h3>Render output</h3><pre>Array\n(\n    &#91;template&#93; =&gt; @CODE:\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&#91;+name.errorClass+&#93;&#91;+name.requiredClass+&#93;&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&#91;+name.value+&#93;&quot;&gt;\n                        &#91;+name.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+email.errorClass+&#93;&#91;+email.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&#91;+email.value+&#93;&quot;&gt;\n                        &#91;+email.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+subject.errorClass+&#93;&#91;+subject.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&#91;+subject.value+&#93;&quot;&gt;\n                        &#91;+subject.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+message.errorClass+&#93;&#91;+message.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&#91;+message+&#93;&lt;/textarea&gt;\n                        &#91;+message.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &#91;+form.messages+&#93;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n    &#91;data&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:36:04\n            &#91;formid.value&#93; =&gt; basic\n            &#91;name.value&#93; =&gt; ContactForm\n            &#91;email.value&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject.value&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message.value&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date.value&#93; =&gt; 04.28.2019 в 11:36:04\n            &#91;form.messages&#93; =&gt; &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n        )\n\n)\n</pre><p>Time: 1.0220580101013</p><hr><h3>Output</h3><pre>\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;ContactForm&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;zeeynnik@gmail.com&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;ыыыыыыыыыыыыыыыы&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;ssssssssssssssssssssssssssssss&lt;/textarea&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre><p>Time: 1.0220580101013</p><hr><p>Total time: 1.0220580101013</p>');

INSERT INTO `kxt8_event_log` VALUES ('19','0','1556444231','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: ыыыыыыыыыыыыыыыы</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: ssssssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: ыыыыыыыыыыыыыыыы\nEmail: zeeynnik@gmail.com\nСообщение: ssssssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL0YvRi9GL0YvRi9GL\n0YvRi9GLDQpFbWFpbDogemVleW5uaWtAZ21haWwuY29tDQrQodC+0L7QsdGJ0LXQvdC40LU6IHNz\nc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzcw==\n\n--b1_Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL\n0YvRi9GL0YvRi9GL0YvRi9GLPC9wPg0KPHA+RW1haWw6IDxhIGhyZWY9Im1haWx0bzp6ZWV5bm5p\na0BnbWFpbC5jb20iPnplZXlubmlrQGdtYWlsLmNvbTwvYT48L3A+DQo8cD7QodC+0L7QsdGJ0LXQ\nvdC40LU6IHNzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzczwvcD4=\n\n\n--b1_Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:37:12 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU\n            [2] => b2_Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU\n            [3] => b3_Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => Yf1WNIHAgTYSa7scMXdUd8kOfgWxDMjYiAF3zh5ZU\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('20','0','1556444231','1','0','1','FormLister\\\\Form','<style>pre {font-size:14px;}</style><h3>Lexicon loaded</h3><pre>Array\n(\n    &#91;lexicon&#93; =&gt; Array\n        (\n            &#91;form.protectSubmit&#93; =&gt; Данные успешно отправлены. Нет нужды отправлять их еще раз.\n            &#91;form.submitLimit&#93; =&gt; Отправлять форму можно 1 раз в \n            &#91;form.minutes&#93; =&gt; мин\n            &#91;form.seconds&#93; =&gt; сек\n            &#91;form.dateFormat&#93; =&gt; m.d.Y в H:i:s\n            &#91;form.default_successTpl&#93; =&gt; @CODE:Форма успешно отправлена в &#91;+form.date.value+&#93;\n            &#91;form.form_failed&#93; =&gt; Не удалось отправить письмо.\n        )\n\n)\n</pre><p>Time: 0.0029997825622559</p><hr><h3>Set fields from $_REQUEST</h3><pre>Array\n(\n    &#91;formid&#93; =&gt; basic\n    &#91;name&#93; =&gt; ContactForm\n    &#91;email&#93; =&gt; zeeynnik@gmail.com\n    &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n    &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n)\n</pre><p>Time: 0.0029997825622559</p><hr><h3>Validation rules failed to load</h3><pre>Array\n(\n)\n</pre><p>Time: 0.0039999485015869</p><hr><h3>Prepare to validate fields</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n        )\n\n    &#91;rules&#93; =&gt; Array\n        (\n        )\n\n)\n</pre><p>Time: 0.0039999485015869</p><hr><h3>Mail report</h3><pre>Array\n(\n    &#91;report&#93; =&gt; \n&lt;p&gt;Имя: ContactForm&lt;/p&gt;\n&lt;p&gt;Тема: ыыыыыыыыыыыыыыыы&lt;/p&gt;\n&lt;p&gt;Email: &lt;a href=&quot;mailto:zeeynnik@gmail.com&quot;&gt;zeeynnik@gmail.com&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Сообщение: ssssssssssssssssssssssssssssss&lt;/p&gt;\n    &#91;mailer_config&#93; =&gt; Array\n        (\n            &#91;isHtml&#93; =&gt; 1\n            &#91;to&#93; =&gt; zeeynnik@gmail.com\n            &#91;from&#93; =&gt; zeeynnik@gmail.com\n            &#91;fromName&#93; =&gt; Test_Work\n            &#91;subject&#93; =&gt; Новое сообщение\n            &#91;replyTo&#93; =&gt; \n            &#91;cc&#93; =&gt; \n            &#91;bcc&#93; =&gt; \n            &#91;noemail&#93; =&gt; \n        )\n\n    &#91;result&#93; =&gt; \n)\n</pre><p>Time: 1.0130579471588</p><hr><h3>Form procession complete</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:37:12\n        )\n\n    &#91;errors&#93; =&gt; Array\n        (\n        )\n\n    &#91;messages&#93; =&gt; Array\n        (\n            &#91;0&#93; =&gt; Не удалось отправить письмо.\n        )\n\n    &#91;files&#93; =&gt; Array\n        (\n        )\n\n    &#91;status&#93; =&gt; \n)\n</pre><p>Time: 1.0140578746796</p><hr><h3>Render output</h3><pre>Array\n(\n    &#91;template&#93; =&gt; @CODE:\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&#91;+name.errorClass+&#93;&#91;+name.requiredClass+&#93;&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&#91;+name.value+&#93;&quot;&gt;\n                        &#91;+name.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+email.errorClass+&#93;&#91;+email.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&#91;+email.value+&#93;&quot;&gt;\n                        &#91;+email.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+subject.errorClass+&#93;&#91;+subject.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&#91;+subject.value+&#93;&quot;&gt;\n                        &#91;+subject.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+message.errorClass+&#93;&#91;+message.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&#91;+message+&#93;&lt;/textarea&gt;\n                        &#91;+message.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &#91;+form.messages+&#93;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n    &#91;data&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:37:12\n            &#91;formid.value&#93; =&gt; basic\n            &#91;name.value&#93; =&gt; ContactForm\n            &#91;email.value&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject.value&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message.value&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date.value&#93; =&gt; 04.28.2019 в 11:37:12\n            &#91;form.messages&#93; =&gt; &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n        )\n\n)\n</pre><p>Time: 1.0140578746796</p><hr><h3>Output</h3><pre>\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;ContactForm&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;zeeynnik@gmail.com&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;ыыыыыыыыыыыыыыыы&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;ssssssssssssssssssssssssssssss&lt;/textarea&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre><p>Time: 1.0140578746796</p><hr><p>Total time: 1.0140578746796</p>');

INSERT INTO `kxt8_event_log` VALUES ('21','0','1556444234','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: ыыыыыыыыыыыыыыыы</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: ssssssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: ыыыыыыыыыыыыыыыы\nEmail: zeeynnik@gmail.com\nСообщение: ssssssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL0YvRi9GL0YvRi9GL\n0YvRi9GLDQpFbWFpbDogemVleW5uaWtAZ21haWwuY29tDQrQodC+0L7QsdGJ0LXQvdC40LU6IHNz\nc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzcw==\n\n--b1_aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL\n0YvRi9GL0YvRi9GL0YvRi9GLPC9wPg0KPHA+RW1haWw6IDxhIGhyZWY9Im1haWx0bzp6ZWV5bm5p\na0BnbWFpbC5jb20iPnplZXlubmlrQGdtYWlsLmNvbTwvYT48L3A+DQo8cD7QodC+0L7QsdGJ0LXQ\nvdC40LU6IHNzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzczwvcD4=\n\n\n--b1_aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:37:14 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM\n            [2] => b2_aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM\n            [3] => b3_aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => aKX1OYunOpmn2hgO9GskHhkuPwZ74AHkEon3vI4uM\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('22','0','1556444234','1','0','1','FormLister\\\\Form','<style>pre {font-size:14px;}</style><h3>Lexicon loaded</h3><pre>Array\n(\n    &#91;lexicon&#93; =&gt; Array\n        (\n            &#91;form.protectSubmit&#93; =&gt; Данные успешно отправлены. Нет нужды отправлять их еще раз.\n            &#91;form.submitLimit&#93; =&gt; Отправлять форму можно 1 раз в \n            &#91;form.minutes&#93; =&gt; мин\n            &#91;form.seconds&#93; =&gt; сек\n            &#91;form.dateFormat&#93; =&gt; m.d.Y в H:i:s\n            &#91;form.default_successTpl&#93; =&gt; @CODE:Форма успешно отправлена в &#91;+form.date.value+&#93;\n            &#91;form.form_failed&#93; =&gt; Не удалось отправить письмо.\n        )\n\n)\n</pre><p>Time: 0.00099992752075195</p><hr><h3>Set fields from $_REQUEST</h3><pre>Array\n(\n    &#91;formid&#93; =&gt; basic\n    &#91;name&#93; =&gt; ContactForm\n    &#91;email&#93; =&gt; zeeynnik@gmail.com\n    &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n    &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n)\n</pre><p>Time: 0.00099992752075195</p><hr><h3>Validation rules failed to load</h3><pre>Array\n(\n)\n</pre><p>Time: 0.0019998550415039</p><hr><h3>Prepare to validate fields</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n        )\n\n    &#91;rules&#93; =&gt; Array\n        (\n        )\n\n)\n</pre><p>Time: 0.0019998550415039</p><hr><h3>Mail report</h3><pre>Array\n(\n    &#91;report&#93; =&gt; \n&lt;p&gt;Имя: ContactForm&lt;/p&gt;\n&lt;p&gt;Тема: ыыыыыыыыыыыыыыыы&lt;/p&gt;\n&lt;p&gt;Email: &lt;a href=&quot;mailto:zeeynnik@gmail.com&quot;&gt;zeeynnik@gmail.com&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Сообщение: ssssssssssssssssssssssssssssss&lt;/p&gt;\n    &#91;mailer_config&#93; =&gt; Array\n        (\n            &#91;isHtml&#93; =&gt; 1\n            &#91;to&#93; =&gt; zeeynnik@gmail.com\n            &#91;from&#93; =&gt; zeeynnik@gmail.com\n            &#91;fromName&#93; =&gt; Test_Work\n            &#91;subject&#93; =&gt; Новое сообщение\n            &#91;replyTo&#93; =&gt; \n            &#91;cc&#93; =&gt; \n            &#91;bcc&#93; =&gt; \n            &#91;noemail&#93; =&gt; \n        )\n\n    &#91;result&#93; =&gt; \n)\n</pre><p>Time: 1.0150580406189</p><hr><h3>Form procession complete</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:37:14\n        )\n\n    &#91;errors&#93; =&gt; Array\n        (\n        )\n\n    &#91;messages&#93; =&gt; Array\n        (\n            &#91;0&#93; =&gt; Не удалось отправить письмо.\n        )\n\n    &#91;files&#93; =&gt; Array\n        (\n        )\n\n    &#91;status&#93; =&gt; \n)\n</pre><p>Time: 1.0160579681396</p><hr><h3>Render output</h3><pre>Array\n(\n    &#91;template&#93; =&gt; @CODE:\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&#91;+name.errorClass+&#93;&#91;+name.requiredClass+&#93;&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&#91;+name.value+&#93;&quot;&gt;\n                        &#91;+name.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+email.errorClass+&#93;&#91;+email.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&#91;+email.value+&#93;&quot;&gt;\n                        &#91;+email.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+subject.errorClass+&#93;&#91;+subject.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&#91;+subject.value+&#93;&quot;&gt;\n                        &#91;+subject.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+message.errorClass+&#93;&#91;+message.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&#91;+message+&#93;&lt;/textarea&gt;\n                        &#91;+message.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &#91;+form.messages+&#93;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n    &#91;data&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:37:14\n            &#91;formid.value&#93; =&gt; basic\n            &#91;name.value&#93; =&gt; ContactForm\n            &#91;email.value&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject.value&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message.value&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date.value&#93; =&gt; 04.28.2019 в 11:37:14\n            &#91;form.messages&#93; =&gt; &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n        )\n\n)\n</pre><p>Time: 1.0160579681396</p><hr><h3>Output</h3><pre>\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;ContactForm&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;zeeynnik@gmail.com&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;ыыыыыыыыыыыыыыыы&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;ssssssssssssssssssssssssssssss&lt;/textarea&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre><p>Time: 1.0160579681396</p><hr><p>Total time: 1.0160579681396</p>');

INSERT INTO `kxt8_event_log` VALUES ('23','0','1556445026','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: ыыыыыыыыыыыыыыыы</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: ssssssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: ыыыыыыыыыыыыыыыы\nEmail: zeeynnik@gmail.com\nСообщение: ssssssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL0YvRi9GL0YvRi9GL\n0YvRi9GLDQpFbWFpbDogemVleW5uaWtAZ21haWwuY29tDQrQodC+0L7QsdGJ0LXQvdC40LU6IHNz\nc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzcw==\n\n--b1_EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL\n0YvRi9GL0YvRi9GL0YvRi9GLPC9wPg0KPHA+RW1haWw6IDxhIGhyZWY9Im1haWx0bzp6ZWV5bm5p\na0BnbWFpbC5jb20iPnplZXlubmlrQGdtYWlsLmNvbTwvYT48L3A+DQo8cD7QodC+0L7QsdGJ0LXQ\nvdC40LU6IHNzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzczwvcD4=\n\n\n--b1_EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:50:26 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8\n            [2] => b2_EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8\n            [3] => b3_EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => EBxQahCW6lB1StrKe6XOhb53nh5KzqKJ9rchl8wVxD8\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('24','0','1556445026','1','0','1','FormLister\\\\Form','<style>pre {font-size:14px;}</style><h3>Lexicon loaded</h3><pre>Array\n(\n    &#91;lexicon&#93; =&gt; Array\n        (\n            &#91;form.protectSubmit&#93; =&gt; Данные успешно отправлены. Нет нужды отправлять их еще раз.\n            &#91;form.submitLimit&#93; =&gt; Отправлять форму можно 1 раз в \n            &#91;form.minutes&#93; =&gt; мин\n            &#91;form.seconds&#93; =&gt; сек\n            &#91;form.dateFormat&#93; =&gt; m.d.Y в H:i:s\n            &#91;form.default_successTpl&#93; =&gt; @CODE:Форма успешно отправлена в &#91;+form.date.value+&#93;\n            &#91;form.form_failed&#93; =&gt; Не удалось отправить письмо.\n        )\n\n)\n</pre><p>Time: 0.00099992752075195</p><hr><h3>Set fields from $_REQUEST</h3><pre>Array\n(\n    &#91;formid&#93; =&gt; basic\n    &#91;name&#93; =&gt; ContactForm\n    &#91;email&#93; =&gt; zeeynnik@gmail.com\n    &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n    &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n)\n</pre><p>Time: 0.00099992752075195</p><hr><h3>Validation rules failed to load</h3><pre>Array\n(\n)\n</pre><p>Time: 0.0019998550415039</p><hr><h3>Prepare to validate fields</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n        )\n\n    &#91;rules&#93; =&gt; Array\n        (\n        )\n\n)\n</pre><p>Time: 0.0019998550415039</p><hr><h3>Mail report</h3><pre>Array\n(\n    &#91;report&#93; =&gt; \n&lt;p&gt;Имя: ContactForm&lt;/p&gt;\n&lt;p&gt;Тема: ыыыыыыыыыыыыыыыы&lt;/p&gt;\n&lt;p&gt;Email: &lt;a href=&quot;mailto:zeeynnik@gmail.com&quot;&gt;zeeynnik@gmail.com&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Сообщение: ssssssssssssssssssssssssssssss&lt;/p&gt;\n    &#91;mailer_config&#93; =&gt; Array\n        (\n            &#91;isHtml&#93; =&gt; 1\n            &#91;to&#93; =&gt; zeeynnik@gmail.com\n            &#91;from&#93; =&gt; zeeynnik@gmail.com\n            &#91;fromName&#93; =&gt; Test_Work\n            &#91;subject&#93; =&gt; Новое сообщение\n            &#91;replyTo&#93; =&gt; \n            &#91;cc&#93; =&gt; \n            &#91;bcc&#93; =&gt; \n            &#91;noemail&#93; =&gt; \n        )\n\n    &#91;result&#93; =&gt; \n)\n</pre><p>Time: 1.0170578956604</p><hr><h3>Form procession complete</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:50:26\n        )\n\n    &#91;errors&#93; =&gt; Array\n        (\n        )\n\n    &#91;messages&#93; =&gt; Array\n        (\n            &#91;0&#93; =&gt; Не удалось отправить письмо.\n        )\n\n    &#91;files&#93; =&gt; Array\n        (\n        )\n\n    &#91;status&#93; =&gt; \n)\n</pre><p>Time: 1.0170578956604</p><hr><h3>Render output</h3><pre>Array\n(\n    &#91;template&#93; =&gt; @CODE:\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&#91;+name.errorClass+&#93;&#91;+name.requiredClass+&#93;&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&#91;+name.value+&#93;&quot;&gt;\n                        &#91;+name.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+email.errorClass+&#93;&#91;+email.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&#91;+email.value+&#93;&quot;&gt;\n                        &#91;+email.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+subject.errorClass+&#93;&#91;+subject.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&#91;+subject.value+&#93;&quot;&gt;\n                        &#91;+subject.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+message.errorClass+&#93;&#91;+message.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&#91;+message+&#93;&lt;/textarea&gt;\n                        &#91;+message.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &#91;+form.messages+&#93;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n    &#91;data&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:50:26\n            &#91;formid.value&#93; =&gt; basic\n            &#91;name.value&#93; =&gt; ContactForm\n            &#91;email.value&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject.value&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message.value&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date.value&#93; =&gt; 04.28.2019 в 11:50:26\n            &#91;form.messages&#93; =&gt; &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n        )\n\n)\n</pre><p>Time: 1.0170578956604</p><hr><h3>Output</h3><pre>\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;ContactForm&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;zeeynnik@gmail.com&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;ыыыыыыыыыыыыыыыы&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;ssssssssssssssssssssssssssssss&lt;/textarea&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre><p>Time: 1.0170578956604</p><hr><p>Total time: 1.0170578956604</p>');

INSERT INTO `kxt8_event_log` VALUES ('25','0','1556445029','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: ыыыыыыыыыыыыыыыы</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: ssssssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: ыыыыыыыыыыыыыыыы\nEmail: zeeynnik@gmail.com\nСообщение: ssssssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL0YvRi9GL0YvRi9GL\n0YvRi9GLDQpFbWFpbDogemVleW5uaWtAZ21haWwuY29tDQrQodC+0L7QsdGJ0LXQvdC40LU6IHNz\nc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzcw==\n\n--b1_AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL\n0YvRi9GL0YvRi9GL0YvRi9GLPC9wPg0KPHA+RW1haWw6IDxhIGhyZWY9Im1haWx0bzp6ZWV5bm5p\na0BnbWFpbC5jb20iPnplZXlubmlrQGdtYWlsLmNvbTwvYT48L3A+DQo8cD7QodC+0L7QsdGJ0LXQ\nvdC40LU6IHNzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzczwvcD4=\n\n\n--b1_AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 11:50:29 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI\n            [2] => b2_AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI\n            [3] => b3_AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => AlQnQ0YHriYFnL1To5wtaWSsqTNjtGVtjHMM0nlybI\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('26','0','1556445029','1','0','1','FormLister\\\\Form','<style>pre {font-size:14px;}</style><h3>Lexicon loaded</h3><pre>Array\n(\n    &#91;lexicon&#93; =&gt; Array\n        (\n            &#91;form.protectSubmit&#93; =&gt; Данные успешно отправлены. Нет нужды отправлять их еще раз.\n            &#91;form.submitLimit&#93; =&gt; Отправлять форму можно 1 раз в \n            &#91;form.minutes&#93; =&gt; мин\n            &#91;form.seconds&#93; =&gt; сек\n            &#91;form.dateFormat&#93; =&gt; m.d.Y в H:i:s\n            &#91;form.default_successTpl&#93; =&gt; @CODE:Форма успешно отправлена в &#91;+form.date.value+&#93;\n            &#91;form.form_failed&#93; =&gt; Не удалось отправить письмо.\n        )\n\n)\n</pre><p>Time: 0.00099992752075195</p><hr><h3>Set fields from $_REQUEST</h3><pre>Array\n(\n    &#91;formid&#93; =&gt; basic\n    &#91;name&#93; =&gt; ContactForm\n    &#91;email&#93; =&gt; zeeynnik@gmail.com\n    &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n    &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n)\n</pre><p>Time: 0.00099992752075195</p><hr><h3>Validation rules failed to load</h3><pre>Array\n(\n)\n</pre><p>Time: 0.0019998550415039</p><hr><h3>Prepare to validate fields</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n        )\n\n    &#91;rules&#93; =&gt; Array\n        (\n        )\n\n)\n</pre><p>Time: 0.0019998550415039</p><hr><h3>Mail report</h3><pre>Array\n(\n    &#91;report&#93; =&gt; \n&lt;p&gt;Имя: ContactForm&lt;/p&gt;\n&lt;p&gt;Тема: ыыыыыыыыыыыыыыыы&lt;/p&gt;\n&lt;p&gt;Email: &lt;a href=&quot;mailto:zeeynnik@gmail.com&quot;&gt;zeeynnik@gmail.com&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Сообщение: ssssssssssssssssssssssssssssss&lt;/p&gt;\n    &#91;mailer_config&#93; =&gt; Array\n        (\n            &#91;isHtml&#93; =&gt; 1\n            &#91;to&#93; =&gt; zeeynnik@gmail.com\n            &#91;from&#93; =&gt; zeeynnik@gmail.com\n            &#91;fromName&#93; =&gt; Test_Work\n            &#91;subject&#93; =&gt; Новое сообщение\n            &#91;replyTo&#93; =&gt; \n            &#91;cc&#93; =&gt; \n            &#91;bcc&#93; =&gt; \n            &#91;noemail&#93; =&gt; \n        )\n\n    &#91;result&#93; =&gt; \n)\n</pre><p>Time: 1.0250580310822</p><hr><h3>Form procession complete</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:50:29\n        )\n\n    &#91;errors&#93; =&gt; Array\n        (\n        )\n\n    &#91;messages&#93; =&gt; Array\n        (\n            &#91;0&#93; =&gt; Не удалось отправить письмо.\n        )\n\n    &#91;files&#93; =&gt; Array\n        (\n        )\n\n    &#91;status&#93; =&gt; \n)\n</pre><p>Time: 1.0260579586029</p><hr><h3>Render output</h3><pre>Array\n(\n    &#91;template&#93; =&gt; @CODE:\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&#91;+name.errorClass+&#93;&#91;+name.requiredClass+&#93;&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&#91;+name.value+&#93;&quot;&gt;\n                        &#91;+name.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+email.errorClass+&#93;&#91;+email.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&#91;+email.value+&#93;&quot;&gt;\n                        &#91;+email.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+subject.errorClass+&#93;&#91;+subject.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&#91;+subject.value+&#93;&quot;&gt;\n                        &#91;+subject.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+message.errorClass+&#93;&#91;+message.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&#91;+message+&#93;&lt;/textarea&gt;\n                        &#91;+message.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &#91;+form.messages+&#93;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n    &#91;data&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 11:50:29\n            &#91;formid.value&#93; =&gt; basic\n            &#91;name.value&#93; =&gt; ContactForm\n            &#91;email.value&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject.value&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message.value&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date.value&#93; =&gt; 04.28.2019 в 11:50:29\n            &#91;form.messages&#93; =&gt; &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n        )\n\n)\n</pre><p>Time: 1.0260579586029</p><hr><h3>Output</h3><pre>\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;ContactForm&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;zeeynnik@gmail.com&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;ыыыыыыыыыыыыыыыы&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;ssssssssssssssssssssssssssssss&lt;/textarea&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre><p>Time: 1.0260579586029</p><hr><p>Total time: 1.0260579586029</p>');

INSERT INTO `kxt8_event_log` VALUES ('27','0','1556446082','3','0','1','phpmailer','Could not instantiate mail function.<pre>Array\n(\n    [mb_language] => UNI\n    [encode_header_method] => \n    [PluginDir] => C:/xampp/htdocs/tw_dmy3yy/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => multipart/alternative\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => zeeynnik@gmail.com\n    [FromName] => Test_Work\n    [Sender] => \n    [Subject] => Новое сообщение\n    [Body] => \n<p>Имя: ContactForm</p>\n<p>Тема: ыыыыыыыыыыыыыыыы</p>\n<p>Email: <a href=\"mailto:zeeynnik@gmail.com\">zeeynnik@gmail.com</a></p>\n<p>Сообщение: ssssssssssssssssssssssssssssss</p>\n    [AltBody] => Имя: ContactForm\nТема: ыыыыыыыыыыыыыыыы\nEmail: zeeynnik@gmail.com\nСообщение: ssssssssssssssssssssssssssssss\n    [Ical] => \n    [MIMEBody] => This is a multi-part message in MIME format.\n--b1_tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: base64\n\n0JjQvNGPOiBDb250YWN0Rm9ybQ0K0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL0YvRi9GL0YvRi9GL\n0YvRi9GLDQpFbWFpbDogemVleW5uaWtAZ21haWwuY29tDQrQodC+0L7QsdGJ0LXQvdC40LU6IHNz\nc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzcw==\n\n--b1_tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco\nContent-Type: text/html; charset=UTF-8\nContent-Transfer-Encoding: base64\n\nDQo8cD7QmNC80Y86IENvbnRhY3RGb3JtPC9wPg0KPHA+0KLQtdC80LA6INGL0YvRi9GL0YvRi9GL\n0YvRi9GL0YvRi9GL0YvRi9GLPC9wPg0KPHA+RW1haWw6IDxhIGhyZWY9Im1haWx0bzp6ZWV5bm5p\na0BnbWFpbC5jb20iPnplZXlubmlrQGdtYWlsLmNvbTwvYT48L3A+DQo8cD7QodC+0L7QsdGJ0LXQ\nvdC40LU6IHNzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzczwvcD4=\n\n\n--b1_tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco--\n\n    [MIMEHeader] => Date: Sun, 28 Apr 2019 12:08:02 +0200\nFrom: Test_Work <zeeynnik@gmail.com>\nMessage-ID: <tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco@localhost.localdomain>\nX-Mailer: PHPMailer 6.0.5 (https://github.com/PHPMailer/PHPMailer)\nMIME-Version: 1.0\nContent-Type: multipart/alternative;\n	boundary=\"b1_tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco\"\n\n    [mailHeader] => To: zeeynnik@gmail.com\nSubject: =?UTF-8?B?0J3QvtCy0L7QtSDRgdC+0L7QsdGJ0LXQvdC40LU=?=\n\n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [oauth] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [SingleToArray] => Array\n        (\n        )\n\n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n    [smtp] => \n    [to] => Array\n        (\n            [0] => Array\n                (\n                    [0] => zeeynnik@gmail.com\n                    [1] => \n                )\n\n        )\n\n    [cc] => Array\n        (\n        )\n\n    [bcc] => Array\n        (\n        )\n\n    [ReplyTo] => Array\n        (\n        )\n\n    [all_recipients] => Array\n        (\n            [zeeynnik@gmail.com] => 1\n        )\n\n    [RecipientsQueue] => Array\n        (\n        )\n\n    [ReplyToQueue] => Array\n        (\n        )\n\n    [attachment] => Array\n        (\n        )\n\n    [CustomHeader] => Array\n        (\n        )\n\n    [lastMessageID] => <tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco@localhost.localdomain>\n    [message_type] => alt\n    [boundary] => Array\n        (\n            [1] => b1_tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco\n            [2] => b2_tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco\n            [3] => b3_tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco\n        )\n\n    [language] => Array\n        (\n            [authenticate] => SMTP Error: Could not authenticate.\n            [connect_host] => SMTP Error: Could not connect to SMTP host.\n            [data_not_accepted] => SMTP Error: data not accepted.\n            [empty_message] => Message body empty\n            [encoding] => Unknown encoding: \n            [execute] => Could not execute: \n            [file_access] => Could not access file: \n            [file_open] => File Error: Could not open file: \n            [from_failed] => The following From address failed: \n            [instantiate] => Could not instantiate mail function.\n            [invalid_address] => Invalid address: \n            [mailer_not_supported] =>  mailer is not supported.\n            [provide_address] => You must provide at least one recipient email address.\n            [recipients_failed] => SMTP Error: The following recipients failed: \n            [signing] => Signing Error: \n            [smtp_connect_failed] => SMTP connect() failed.\n            [smtp_error] => SMTP server error: \n            [variable_set] => Cannot set or reset variable: \n            [extension_missing] => Extension missing: \n        )\n\n    [error_count] => 0\n    [sign_cert_file] => \n    [sign_key_file] => \n    [sign_extracerts_file] => \n    [sign_key_pass] => \n    [exceptions] => \n    [uniqueid] => tDDk0kuNSiPBYwVScGbxRGlrtx6iajS15hZ5O7Nco\n)\n</pre>');

INSERT INTO `kxt8_event_log` VALUES ('28','0','1556446082','1','0','1','FormLister\\\\Form','<style>pre {font-size:14px;}</style><h3>Lexicon loaded</h3><pre>Array\n(\n    &#91;lexicon&#93; =&gt; Array\n        (\n            &#91;form.protectSubmit&#93; =&gt; Данные успешно отправлены. Нет нужды отправлять их еще раз.\n            &#91;form.submitLimit&#93; =&gt; Отправлять форму можно 1 раз в \n            &#91;form.minutes&#93; =&gt; мин\n            &#91;form.seconds&#93; =&gt; сек\n            &#91;form.dateFormat&#93; =&gt; m.d.Y в H:i:s\n            &#91;form.default_successTpl&#93; =&gt; @CODE:Форма успешно отправлена в &#91;+form.date.value+&#93;\n            &#91;form.form_failed&#93; =&gt; Не удалось отправить письмо.\n        )\n\n)\n</pre><p>Time: 0.002000093460083</p><hr><h3>Set fields from $_REQUEST</h3><pre>Array\n(\n    &#91;formid&#93; =&gt; basic\n    &#91;name&#93; =&gt; ContactForm\n    &#91;email&#93; =&gt; zeeynnik@gmail.com\n    &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n    &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n)\n</pre><p>Time: 0.002000093460083</p><hr><h3>Validation rules failed to load</h3><pre>Array\n(\n)\n</pre><p>Time: 0.003000020980835</p><hr><h3>Prepare to validate fields</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n        )\n\n    &#91;rules&#93; =&gt; Array\n        (\n        )\n\n)\n</pre><p>Time: 0.003000020980835</p><hr><h3>Mail report</h3><pre>Array\n(\n    &#91;report&#93; =&gt; \n&lt;p&gt;Имя: ContactForm&lt;/p&gt;\n&lt;p&gt;Тема: ыыыыыыыыыыыыыыыы&lt;/p&gt;\n&lt;p&gt;Email: &lt;a href=&quot;mailto:zeeynnik@gmail.com&quot;&gt;zeeynnik@gmail.com&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Сообщение: ssssssssssssssssssssssssssssss&lt;/p&gt;\n    &#91;mailer_config&#93; =&gt; Array\n        (\n            &#91;isHtml&#93; =&gt; 1\n            &#91;to&#93; =&gt; zeeynnik@gmail.com\n            &#91;from&#93; =&gt; zeeynnik@gmail.com\n            &#91;fromName&#93; =&gt; Test_Work\n            &#91;subject&#93; =&gt; Новое сообщение\n            &#91;replyTo&#93; =&gt; \n            &#91;cc&#93; =&gt; \n            &#91;bcc&#93; =&gt; \n            &#91;noemail&#93; =&gt; \n        )\n\n    &#91;result&#93; =&gt; \n)\n</pre><p>Time: 1.0330591201782</p><hr><h3>Form procession complete</h3><pre>Array\n(\n    &#91;fields&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 12:08:02\n        )\n\n    &#91;errors&#93; =&gt; Array\n        (\n        )\n\n    &#91;messages&#93; =&gt; Array\n        (\n            &#91;0&#93; =&gt; Не удалось отправить письмо.\n        )\n\n    &#91;files&#93; =&gt; Array\n        (\n        )\n\n    &#91;status&#93; =&gt; \n)\n</pre><p>Time: 1.0330591201782</p><hr><h3>Render output</h3><pre>Array\n(\n    &#91;template&#93; =&gt; @CODE:\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&#91;+name.errorClass+&#93;&#91;+name.requiredClass+&#93;&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&#91;+name.value+&#93;&quot;&gt;\n                        &#91;+name.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+email.errorClass+&#93;&#91;+email.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&#91;+email.value+&#93;&quot;&gt;\n                        &#91;+email.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+subject.errorClass+&#93;&#91;+subject.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&#91;+subject.value+&#93;&quot;&gt;\n                        &#91;+subject.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+message.errorClass+&#93;&#91;+message.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&#91;+message+&#93;&lt;/textarea&gt;\n                        &#91;+message.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &#91;+form.messages+&#93;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n    &#91;data&#93; =&gt; Array\n        (\n            &#91;formid&#93; =&gt; basic\n            &#91;name&#93; =&gt; ContactForm\n            &#91;email&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date&#93; =&gt; 04.28.2019 в 12:08:02\n            &#91;formid.value&#93; =&gt; basic\n            &#91;name.value&#93; =&gt; ContactForm\n            &#91;email.value&#93; =&gt; zeeynnik@gmail.com\n            &#91;subject.value&#93; =&gt; ыыыыыыыыыыыыыыыы\n            &#91;message.value&#93; =&gt; ssssssssssssssssssssssssssssss\n            &#91;form.date.value&#93; =&gt; 04.28.2019 в 12:08:02\n            &#91;form.messages&#93; =&gt; &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n        )\n\n)\n</pre><p>Time: 1.0330591201782</p><hr><h3>Output</h3><pre>\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;ContactForm&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;zeeynnik@gmail.com&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;ыыыыыыыыыыыыыыыы&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;ssssssssssssssssssssssssssssss&lt;/textarea&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-messages&quot;&gt;&lt;div class=&quot;alert alert-danger&quot; role=&quot;alert&quot;&gt;Не удалось отправить письмо.&lt;/div&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre><p>Time: 1.0330591201782</p><hr><p>Total time: 1.0330591201782</p>');

INSERT INTO `kxt8_event_log` VALUES ('29','0','1556446088','1','0','1','FormLister\\\\Form','<style>pre {font-size:14px;}</style><h3>Lexicon loaded</h3><pre>Array\n(\n    &#91;lexicon&#93; =&gt; Array\n        (\n            &#91;form.protectSubmit&#93; =&gt; Данные успешно отправлены. Нет нужды отправлять их еще раз.\n            &#91;form.submitLimit&#93; =&gt; Отправлять форму можно 1 раз в \n            &#91;form.minutes&#93; =&gt; мин\n            &#91;form.seconds&#93; =&gt; сек\n            &#91;form.dateFormat&#93; =&gt; m.d.Y в H:i:s\n            &#91;form.default_successTpl&#93; =&gt; @CODE:Форма успешно отправлена в &#91;+form.date.value+&#93;\n            &#91;form.form_failed&#93; =&gt; Не удалось отправить письмо.\n        )\n\n)\n</pre><p>Time: 0.002000093460083</p><hr><h3>Set fields from $_REQUEST</h3><pre>Array\n(\n)\n</pre><p>Time: 0.002000093460083</p><hr><h3>Render output</h3><pre>Array\n(\n    &#91;template&#93; =&gt; @CODE:\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&#91;+name.errorClass+&#93;&#91;+name.requiredClass+&#93;&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&#91;+name.value+&#93;&quot;&gt;\n                        &#91;+name.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+email.errorClass+&#93;&#91;+email.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&#91;+email.value+&#93;&quot;&gt;\n                        &#91;+email.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+subject.errorClass+&#93;&#91;+subject.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&#91;+subject.value+&#93;&quot;&gt;\n                        &#91;+subject.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&#91;+message.errorClass+&#93;&#91;+message.requiredClass+&#93;&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&#91;+message+&#93;&lt;/textarea&gt;\n                        &#91;+message.error+&#93;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &#91;+form.messages+&#93;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n    &#91;data&#93; =&gt; Array\n        (\n            &#91;form.messages&#93; =&gt; \n        )\n\n)\n</pre><p>Time: 0.003000020980835</p><hr><h3>Output</h3><pre>\n&lt;div class=&quot;row&quot;&gt;\n    &lt;div class=&quot;col-md-8 col-md-offset-2&quot;&gt;\n        &lt;div class=&quot;well&quot;&gt;\n            &lt;form class=&quot;form-horizontal&quot; method=&quot;post&quot;&gt;\n                &lt;input type=&quot;hidden&quot; name=&quot;formid&quot; value=&quot;basic&quot;&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n					&lt;label for=&quot;name&quot;&gt;Name:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;name&quot; placeholder=&quot;Name&quot; name=&quot;name&quot; value=&quot;&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;email&quot;&gt;Email:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;email&quot; placeholder=&quot;Email&quot; name=&quot;email&quot; value=&quot;&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;subject&quot;&gt;Subject:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;input type=&quot;text&quot; class=&quot;required input_field form-control&quot; id=&quot;subject&quot; name=&quot;subject&quot; value=&quot;&quot;&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;label for=&quot;message&quot;&gt;Message:&lt;/label&gt;\n                    &lt;div class=&quot;col-sm-10&quot;&gt;\n                        &lt;textarea class=&quot;required form-control&quot; id=&quot;message&quot; placeholder=&quot;Your message&quot; name=&quot;message&quot; rows=&quot;10&quot;&gt;&lt;/textarea&gt;\n                        \n                    &lt;/div&gt;\n                &lt;/div&gt;\n				&lt;div class=&quot;cleaner_h10&quot;&gt;&lt;/div&gt;\n                \n                &lt;div class=&quot;form-group&quot;&gt;\n                    &lt;div class=&quot;col-sm-offset-2 col-sm-10&quot;&gt;\n                        &lt;input type=&quot;submit&quot; class=&quot;submit_btn&quot; value=&quot;Send&quot;&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;</pre><p>Time: 0.005000114440918</p><hr><p>Total time: 0.0060000419616699</p>');

INSERT INTO `kxt8_event_log` VALUES ('30','0','1556446209','3','0','1','Snippet - DocLister / Execution of a query to the ','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE sg_isactive=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY `c`.`sg_id` DESC </span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>DocLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 12:10:09</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0160 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0648 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0808 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6420364379883 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2971</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('31','0','1556448041','3','0','1','Snippet - DocLister / Execution of a query to the ','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE sg_isactive=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY `c`.`sg_id` DESC </span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>DocLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 12:40:41</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0060 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0716 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0776 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6420516967773 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2971</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('32','0','1556448265','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 12:44:25</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0060 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0744 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0804 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6420364379883 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('33','0','1556448596','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 12:49:56</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0140 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0754 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0894 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6417922973633 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');

INSERT INTO `kxt8_event_log` VALUES ('34','0','1556451996','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'tw_dmy3yy_db.kxt8_sg_images\' doesn\'t exist</h3><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `tw_dmy3yy_db`.`kxt8_sg_images` as `c`  WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'3\')) GROUP BY `c`.`sg_id` ORDER BY sg_index DESC LIMIT 0,10</span></pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://tw_dmy3yy.test/gallery.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[3] <a href=\"http://tw_dmy3yy.test/gallery.html\" target=\"_blank\">Gallery</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://tw_dmy3yy.test/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-04-28 13:46:36</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0120 s (2 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.1468 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.1588 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>3.6418228149414 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4324</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 35</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 325</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1817</td>\n	</tr>\n</table>\n');


# --------------------------------------------------------

#
# Table structure for table `kxt8_manager_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_manager_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT 0,
  `internalKey` int(10) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT 0,
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(46) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=676 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `kxt8_manager_log`
#

INSERT INTO `kxt8_manager_log` VALUES ('1','1556034019','1','ZeeyN','58','-','MODX','Logged in','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('2','1556034020','1','ZeeyN','17','-','-','Editing settings','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('3','1556034038','1','ZeeyN','30','-','-','Saving settings','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('4','1556034105','1','ZeeyN','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('5','1556034177','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('6','1556034180','1','ZeeyN','16','3','Minimal Template','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('7','1556034183','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('8','1556034206','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('9','1556034257','1','ZeeyN','93','-','-','Backup Manager','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('10','1556034259','1','ZeeyN','17','-','-','Editing settings','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('11','1556035448','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('12','1556035452','1','ZeeyN','16','3','Minimal Template','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('13','1556035453','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('14','1556035454','1','ZeeyN','16','3','Minimal Template','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('15','1556035455','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('16','1556036788','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('17','1556036805','1','ZeeyN','16','3','Minimal Template','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('18','1556036817','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('19','1556036821','1','ZeeyN','19','-','Новый шаблон','Creating a new template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('20','1556036937','1','ZeeyN','20','-','Main','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('21','1556036937','1','ZeeyN','16','4','Main','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('22','1556036942','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('23','1556036949','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('24','1556037095','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('25','1556037095','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('26','1556037105','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('27','1556037105','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('28','1556037110','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('29','1556037122','1','ZeeyN','16','3','Minimal Template','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('30','1556037124','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('31','1556037175','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('32','1556037178','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('33','1556037178','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('34','1556037180','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('35','1556037182','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('36','1556037185','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('37','1556037187','1','ZeeyN','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('38','1556037194','1','ZeeyN','79','-','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('39','1556037194','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('40','1556037200','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('41','1556037202','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('42','1556037209','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('43','1556037209','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('44','1556037212','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('45','1556037218','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('46','1556037221','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('47','1556037223','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('48','1556037225','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('49','1556037226','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('50','1556037284','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('51','1556037284','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('52','1556037349','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('53','1556037352','1','ZeeyN','16','4','Main','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('54','1556037360','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('55','1556037362','1','ZeeyN','16','3','Minimal Template','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('56','1556037368','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('57','1556037399','1','ZeeyN','20','4','Main','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('58','1556037399','1','ZeeyN','16','4','Main','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('59','1556037415','1','ZeeyN','20','4','Main','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('60','1556037415','1','ZeeyN','16','4','Main','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('61','1556037460','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('62','1556037491','1','ZeeyN','16','4','Main','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('63','1556037508','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('64','1556037508','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('65','1556037514','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('66','1556037518','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('67','1556037749','1','ZeeyN','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('68','1556037757','1','ZeeyN','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('69','1556037761','1','ZeeyN','5','1','Evolution CMS Install Success','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('70','1556037761','1','ZeeyN','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('71','1556037821','1','ZeeyN','5','1','Evolution CMS Install Success','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('72','1556037822','1','ZeeyN','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('73','1556037871','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('74','1556037876','1','ZeeyN','96','4','Главная Копия','Duplicate Template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('75','1556037876','1','ZeeyN','16','5','Главная Копия','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('76','1556037926','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('77','1556037926','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('78','1556037931','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('79','1556037939','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('80','1556037943','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('81','1556037943','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('82','1556037947','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('83','1556037956','1','ZeeyN','96','5','Блог Копия','Duplicate Template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('84','1556037956','1','ZeeyN','16','6','Блог Копия','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('85','1556038002','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('86','1556038002','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('87','1556038056','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('88','1556038064','1','ZeeyN','96','6','Галерея Копия','Duplicate Template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('89','1556038064','1','ZeeyN','16','7','Галерея Копия','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('90','1556038081','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('91','1556038081','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('92','1556038085','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('93','1556038269','1','ZeeyN','112','2','Extras','Execute module','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('94','1556038519','1','ZeeyN','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('95','1556038540','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('96','1556038540','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('97','1556038773','1','ZeeyN','31','-','-','Using file manager','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('98','1556038797','1','ZeeyN','22','2','DLMenu','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('99','1556038851','1','ZeeyN','22','1','DLCrumbs','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('100','1556038925','1','ZeeyN','16','3','Minimal Template','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('101','1556038930','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('102','1556038933','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('103','1556038938','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('104','1556038943','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('105','1556038983','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('106','1556038983','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('107','1556039005','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('108','1556039005','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('109','1556273257','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('110','1556273418','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('111','1556273489','1','ZeeyN','112','2','Extras','Execute module','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('112','1556273549','1','ZeeyN','112','2','Extras','Execute module','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('113','1556275463','1','ZeeyN','76','-','Extras','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('114','1556275479','1','ZeeyN','22','7','if','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('115','1556275500','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('116','1556275539','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('117','1556275543','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('118','1556275545','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('119','1556275553','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('120','1556275814','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('121','1556275861','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('122','1556275861','1','ZeeyN','67','-','-','Removing locks','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('123','1556275874','1','ZeeyN','5','-','Contacts','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('124','1556275874','1','ZeeyN','27','2','Contacts','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('125','1556275888','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('126','1556275917','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('127','1556275917','1','ZeeyN','67','-','-','Removing locks','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('128','1556275919','1','ZeeyN','5','-','Gallery','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('129','1556275919','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('130','1556275924','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('131','1556275936','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('132','1556275936','1','ZeeyN','67','-','-','Removing locks','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('133','1556275946','1','ZeeyN','5','-','Blog','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('134','1556275946','1','ZeeyN','27','4','Blog','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('135','1556275949','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('136','1556275960','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('137','1556275960','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('138','1556276011','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('139','1556276011','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('140','1556276080','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('141','1556276100','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('142','1556276100','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('143','1556276109','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('144','1556276109','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('145','1556276145','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('146','1556276145','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('147','1556276168','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('148','1556276175','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('149','1556276178','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('150','1556276187','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('151','1556276195','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('152','1556276198','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('153','1556276199','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('154','1556276206','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('155','1556276218','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('156','1556276249','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('157','1556276249','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('158','1556276269','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('159','1556276269','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('160','1556276351','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('161','1556276356','1','ZeeyN','22','2','DLMenu','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('162','1556276376','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('163','1556276378','1','ZeeyN','22','5','DocLister','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('164','1556276381','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('165','1556276441','1','ZeeyN','22','1','DLCrumbs','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('166','1556276446','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('167','1556276788','1','ZeeyN','22','2','DLMenu','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('168','1556276795','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('169','1556276797','1','ZeeyN','22','1','DLCrumbs','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('170','1556276804','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('171','1556276816','1','ZeeyN','22','5','DocLister','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('172','1556276830','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('173','1556276844','1','ZeeyN','22','2','DLMenu','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('174','1556276904','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('175','1556277374','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('176','1556277374','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('177','1556277398','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('178','1556277398','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('179','1556277415','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('180','1556277424','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('181','1556277424','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('182','1556277425','1','ZeeyN','27','2','Contacts','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('183','1556277438','1','ZeeyN','5','2','Contacts','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('184','1556277438','1','ZeeyN','27','2','Contacts','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('185','1556277440','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('186','1556277446','1','ZeeyN','5','3','Gallery','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('187','1556277446','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('188','1556277447','1','ZeeyN','27','4','Blog','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('189','1556277452','1','ZeeyN','5','4','Blog','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('190','1556277452','1','ZeeyN','27','4','Blog','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('191','1556277493','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('192','1556277495','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('193','1556277501','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('194','1556277501','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('195','1556277510','1','ZeeyN','22','1','DLCrumbs','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('196','1556277642','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('197','1556277642','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('198','1556277722','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('199','1556277722','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('200','1556277961','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('201','1556277961','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('202','1556278059','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('203','1556278060','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('204','1556278294','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('205','1556278294','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('206','1556278684','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('207','1556278684','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('208','1556278876','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('209','1556278876','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('210','1556283229','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('211','1556283231','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('212','1556283284','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('213','1556283284','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('214','1556283303','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('215','1556283304','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('216','1556283397','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('217','1556283397','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('218','1556283456','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('219','1556283459','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('220','1556283475','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('221','1556283475','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('222','1556283530','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('223','1556283530','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('224','1556283536','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('225','1556283539','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('226','1556283664','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('227','1556283664','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('228','1556283691','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('229','1556283691','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('230','1556283811','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('231','1556283812','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('232','1556283819','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('233','1556283819','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('234','1556283879','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('235','1556283879','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('236','1556284055','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('237','1556284056','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('238','1556284213','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('239','1556284213','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('240','1556284220','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('241','1556284220','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('242','1556284262','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('243','1556284278','1','ZeeyN','300','-','Новый параметр (TV)','Create Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('244','1556284340','1','ZeeyN','302','-','picture','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('245','1556284340','1','ZeeyN','301','5','picture','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('246','1556284507','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('247','1556284507','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('248','1556284517','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('249','1556284517','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('250','1556284576','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('251','1556284576','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('252','1556284646','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('253','1556284658','1','ZeeyN','300','-','Новый параметр (TV)','Create Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('254','1556284734','1','ZeeyN','302','-','advantage blocks','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('255','1556284734','1','ZeeyN','301','6','advantage blocks','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('256','1556284808','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('257','1556284826','1','ZeeyN','22','13','multiTV','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('258','1556284828','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('259','1556284831','1','ZeeyN','22','6','FormLister','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('260','1556284831','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('261','1556284838','1','ZeeyN','22','8','phpthumb','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('262','1556284841','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('263','1556284935','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('264','1556284935','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('265','1556284949','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('266','1556284949','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('267','1556284965','1','ZeeyN','302','6','advantage blocks','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('268','1556284965','1','ZeeyN','301','6','advantage blocks','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('269','1556284971','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('270','1556284971','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('271','1556285146','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('272','1556285146','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('273','1556285501','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('274','1556285501','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('275','1556285506','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('276','1556285506','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('277','1556285539','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('278','1556285540','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('279','1556285578','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('280','1556285578','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('281','1556285614','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('282','1556285614','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('283','1556285733','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('284','1556285733','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('285','1556285791','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('286','1556285791','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('287','1556285870','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('288','1556285870','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('289','1556285925','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('290','1556285925','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('291','1556286067','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('292','1556286067','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('293','1556286074','1','ZeeyN','20','4','Главная','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('294','1556286074','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('295','1556286095','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('296','1556286095','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('297','1556287630','1','ZeeyN','5','1','Home','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('298','1556287630','1','ZeeyN','27','1','Home','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('299','1556290977','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('300','1556290990','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('301','1556290990','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('302','1556291106','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('303','1556291106','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('304','1556291184','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('305','1556291185','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('306','1556291432','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('307','1556291433','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('308','1556291648','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('309','1556291648','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('310','1556291664','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('311','1556291664','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('312','1556291795','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('313','1556291795','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('314','1556291821','1','ZeeyN','27','4','Blog','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('315','1556291825','1','ZeeyN','72','-','Новый ресурс','Adding a weblink','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('316','1556292040','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('317','1556292040','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('318','1556292060','1','ZeeyN','5','4','Blog','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('319','1556292060','1','ZeeyN','27','4','Blog','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('320','1556292078','1','ZeeyN','301','5','picture','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('321','1556292082','1','ZeeyN','302','5','picture','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('322','1556292082','1','ZeeyN','301','5','picture','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('323','1556292087','1','ZeeyN','302','5','picture','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('324','1556292087','1','ZeeyN','301','5','picture','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('325','1556292094','1','ZeeyN','5','4','Blog','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('326','1556292094','1','ZeeyN','27','4','Blog','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('327','1556292112','1','ZeeyN','5','4','Blog','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('328','1556292112','1','ZeeyN','27','4','Blog','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('329','1556292252','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('330','1556292252','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('331','1556292323','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('332','1556292323','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('333','1556292336','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('334','1556292336','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('335','1556292337','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('336','1556292337','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('337','1556292399','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('338','1556292399','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('339','1556292479','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('340','1556292479','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('341','1556292551','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('342','1556292551','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('343','1556292641','1','ZeeyN','23','-','-','Creating a new Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('344','1556293146','1','ZeeyN','24','-','prepare-wrap-blog','Saving Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('345','1556293146','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('346','1556293243','1','ZeeyN','24','14','prepare-wrap-blog','Saving Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('347','1556293243','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('348','1556293249','1','ZeeyN','24','14','prepare-wrap-blog','Saving Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('349','1556293249','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('350','1556293251','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('351','1556293252','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('352','1556293336','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('353','1556293336','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('354','1556293419','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('355','1556293419','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('356','1556293480','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('357','1556293480','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('358','1556293486','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('359','1556293486','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('360','1556293503','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('361','1556293503','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('362','1556293552','1','ZeeyN','5','-','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('363','1556293552','1','ZeeyN','27','5','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('364','1556293591','1','ZeeyN','27','5','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('365','1556293656','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('366','1556293694','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('367','1556293694','1','ZeeyN','67','-','-','Removing locks','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('368','1556293736','1','ZeeyN','302','5','picture','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('369','1556293737','1','ZeeyN','301','5','picture','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('370','1556293741','1','ZeeyN','5','5','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('371','1556293741','1','ZeeyN','27','5','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('372','1556293743','1','ZeeyN','5','-','Page2','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('373','1556293743','1','ZeeyN','27','6','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('374','1556293747','1','ZeeyN','5','6','Page2','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('375','1556293747','1','ZeeyN','27','6','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('376','1556293765','1','ZeeyN','302','5','picture','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('377','1556293765','1','ZeeyN','301','5','picture','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('378','1556293768','1','ZeeyN','5','5','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('379','1556293768','1','ZeeyN','27','5','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('380','1556293776','1','ZeeyN','5','5','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('381','1556293776','1','ZeeyN','27','5','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('382','1556293781','1','ZeeyN','5','6','Page2','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('383','1556293781','1','ZeeyN','27','6','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('384','1556293786','1','ZeeyN','5','6','Page2','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('385','1556293786','1','ZeeyN','27','6','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('386','1556293815','1','ZeeyN','6','5','Page1','Deleting resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('387','1556293815','1','ZeeyN','3','5','Page1','Viewing data for resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('388','1556293819','1','ZeeyN','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('389','1556293835','1','ZeeyN','5','-','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('390','1556293835','1','ZeeyN','27','7','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('391','1556293875','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('392','1556293875','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('393','1556293886','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('394','1556293908','1','ZeeyN','27','6','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('395','1556293911','1','ZeeyN','27','6','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('396','1556293913','1','ZeeyN','5','6','Page2','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('397','1556293913','1','ZeeyN','27','6','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('398','1556294027','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('399','1556294033','1','ZeeyN','24','14','prepare-wrap-blog','Saving Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('400','1556294033','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('401','1556294036','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('402','1556294036','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('403','1556294052','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('404','1556294057','1','ZeeyN','24','14','prepare-wrap-blog','Saving Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('405','1556294057','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('406','1556294080','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('407','1556294080','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('408','1556294089','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('409','1556294089','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('410','1556294109','1','ZeeyN','27','6','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('411','1556294112','1','ZeeyN','27','7','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('412','1556294118','1','ZeeyN','5','7','Page3','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('413','1556294119','1','ZeeyN','27','7','Page3','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('414','1556294129','1','ZeeyN','5','6','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('415','1556294129','1','ZeeyN','27','6','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('416','1556294136','1','ZeeyN','5','7','Page2','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('417','1556294136','1','ZeeyN','27','7','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('418','1556294214','1','ZeeyN','5','6','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('419','1556294214','1','ZeeyN','27','6','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('420','1556294240','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('421','1556294240','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('422','1556294251','1','ZeeyN','27','4','Blog','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('423','1556294289','1','ZeeyN','5','6','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('424','1556294289','1','ZeeyN','27','6','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('425','1556294357','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('426','1556294357','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('427','1556294384','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('428','1556294424','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('429','1556294424','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('430','1556294489','1','ZeeyN','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('431','1556294489','1','ZeeyN','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('432','1556294493','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('433','1556294665','1','ZeeyN','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('434','1556294665','1','ZeeyN','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('435','1556294688','1','ZeeyN','5','7','Page2','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('436','1556294689','1','ZeeyN','27','7','Page2','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('437','1556294691','1','ZeeyN','5','6','Page1','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('438','1556294691','1','ZeeyN','27','6','Page1','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('439','1556294821','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('440','1556294881','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('441','1556294881','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('442','1556294888','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('443','1556294889','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('444','1556294978','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('445','1556294978','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('446','1556294991','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('447','1556294991','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('448','1556295020','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('449','1556295070','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('450','1556295081','1','ZeeyN','24','14','prepare-wrap-blog','Saving Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('451','1556295081','1','ZeeyN','22','14','prepare-wrap-blog','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('452','1556295084','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('453','1556295084','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('454','1556295104','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('455','1556295104','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('456','1556295115','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('457','1556295115','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('458','1556295122','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('459','1556295122','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('460','1556295169','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('461','1556295169','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('462','1556295185','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('463','1556295185','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('464','1556295302','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('465','1556439548','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('466','1556439557','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('467','1556439563','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('468','1556439596','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('469','1556439596','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('470','1556439691','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('471','1556439691','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('472','1556439830','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('473','1556439830','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('474','1556440154','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('475','1556440154','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('476','1556440201','1','ZeeyN','22','12','sgThumb','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('477','1556440216','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('478','1556440216','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('479','1556440275','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('480','1556440275','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('481','1556440353','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('482','1556440354','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('483','1556440376','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('484','1556440510','1','ZeeyN','5','3','Gallery','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('485','1556440510','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('486','1556440730','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('487','1556440732','1','ZeeyN','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('488','1556440746','1','ZeeyN','79','-','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('489','1556440746','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('490','1556440751','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('491','1556440757','1','ZeeyN','27','2','Contacts','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('492','1556440772','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('493','1556440795','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('494','1556440795','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('495','1556440807','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('496','1556440807','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('497','1556440817','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('498','1556440817','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('499','1556440840','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('500','1556440840','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('501','1556440859','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('502','1556440859','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('503','1556440977','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('504','1556440977','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('505','1556441020','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('506','1556441020','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('507','1556441032','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('508','1556441032','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('509','1556441065','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('510','1556441065','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('511','1556441115','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('512','1556441115','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('513','1556441155','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('514','1556441155','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('515','1556441167','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('516','1556441167','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('517','1556441243','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('518','1556441244','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('519','1556441273','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('520','1556441273','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('521','1556441335','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('522','1556441335','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('523','1556441384','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('524','1556441384','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('525','1556441406','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('526','1556441407','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('527','1556441607','1','ZeeyN','10','-','-','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('528','1556441644','1','ZeeyN','10','-','-','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('529','1556441652','1','ZeeyN','66','-','-','Sending a message','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('530','1556441652','1','ZeeyN','10','-','-','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('531','1556441654','1','ZeeyN','10','1','-','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('532','1556441677','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('533','1556441677','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('534','1556441857','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('535','1556441857','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('536','1556441902','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('537','1556441902','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('538','1556441907','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('539','1556441907','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('540','1556441950','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('541','1556441950','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('542','1556442052','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('543','1556442052','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('544','1556442068','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('545','1556442068','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('546','1556442091','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('547','1556442091','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('548','1556442103','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('549','1556442103','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('550','1556442160','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('551','1556442160','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('552','1556442180','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('553','1556442180','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('554','1556442211','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('555','1556442211','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('556','1556442331','1','ZeeyN','10','-','-','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('557','1556442333','1','ZeeyN','10','1','-','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('558','1556442335','1','ZeeyN','10','-','-','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('559','1556442534','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('560','1556442534','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('561','1556442634','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('562','1556442634','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('563','1556442697','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('564','1556442697','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('565','1556442704','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('566','1556442704','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('567','1556442818','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('568','1556442818','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('569','1556443059','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('570','1556443059','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('571','1556443083','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('572','1556443083','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('573','1556443133','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('574','1556443133','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('575','1556443197','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('576','1556443197','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('577','1556443244','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('578','1556443245','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('579','1556443272','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('580','1556443273','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('581','1556443315','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('582','1556443315','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('583','1556443368','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('584','1556443368','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('585','1556443403','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('586','1556443403','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('587','1556443431','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('588','1556443431','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('589','1556443765','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('590','1556443765','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('591','1556443806','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('592','1556443840','1','ZeeyN','20','5','Блог','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('593','1556443840','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('594','1556443957','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('595','1556443957','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('596','1556443994','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('597','1556443994','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('598','1556444149','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('599','1556444149','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('600','1556444228','1','ZeeyN','79','4','ContactForm','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('601','1556444228','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('602','1556444462','1','ZeeyN','112','2','Extras','Execute module','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('603','1556444518','1','ZeeyN','76','-','Extras','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('604','1556444534','1','ZeeyN','22','11','sgLister','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('605','1556444540','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('606','1556444608','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('607','1556444611','1','ZeeyN','10','-','-','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('608','1556444631','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('609','1556444633','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('610','1556444633','1','ZeeyN','112','2','Extras','Execute module','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('611','1556444640','1','ZeeyN','106','-','-','Viewing Modules','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('612','1556444644','1','ZeeyN','108','2','Extras','Edit module','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('613','1556444646','1','ZeeyN','106','-','-','Viewing Modules','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('614','1556444647','1','ZeeyN','78','4','ContactForm','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('615','1556444680','1','ZeeyN','10','-','Extras','Viewing/ composing messages','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('616','1556444724','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('617','1556445022','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('618','1556445022','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('619','1556445096','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('620','1556445861','1','ZeeyN','17','-','-','Editing settings','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('621','1556446201','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('622','1556446206','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('623','1556446206','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('624','1556446299','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('625','1556446299','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('626','1556446314','1','ZeeyN','20','7','Контакты','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('627','1556446314','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('628','1556446328','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('629','1556446331','1','ZeeyN','22','10','sgController','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('630','1556446339','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('631','1556446342','1','ZeeyN','22','11','sgLister','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('632','1556446738','1','ZeeyN','114','-','Extras','View event log','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('633','1556446748','1','ZeeyN','115','30','-','View event log details','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('634','1556446751','1','ZeeyN','114','-','-','View event log','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('635','1556446752','1','ZeeyN','115','29','-','View event log details','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('636','1556446755','1','ZeeyN','114','-','-','View event log','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('637','1556446763','1','ZeeyN','13','-','-','Viewing logging','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('638','1556446772','1','ZeeyN','53','-','-','Viewing system info','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('639','1556446776','1','ZeeyN','200','-','-','Viewing phpInfo()','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('640','1556446779','1','ZeeyN','53','-','-','Viewing system info','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('641','1556447957','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('642','1556447995','1','ZeeyN','5','3','Gallery','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('643','1556447995','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('644','1556448011','1','ZeeyN','5','3','Gallery','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('645','1556448011','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('646','1556448034','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('647','1556448039','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('648','1556448039','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('649','1556448049','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('650','1556448049','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('651','1556448077','1','ZeeyN','31','-','-','Using file manager','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('652','1556448146','1','ZeeyN','112','2','Extras','Execute module','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('653','1556448251','1','ZeeyN','16','4','Главная','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('654','1556448262','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('655','1556448262','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('656','1556448270','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('657','1556448270','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('658','1556448326','1','ZeeyN','16','5','Блог','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('659','1556448340','1','ZeeyN','16','7','Контакты','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('660','1556448351','1','ZeeyN','76','-','-','Element management','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('661','1556448353','1','ZeeyN','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('662','1556448372','1','ZeeyN','79','-','Gallery','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('663','1556448372','1','ZeeyN','78','5','Gallery','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('664','1556448382','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('665','1556448382','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('666','1556448502','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('667','1556448502','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('668','1556448594','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('669','1556448594','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('670','1556448628','1','ZeeyN','22','11','sgLister','Editing Snippet','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('671','1556452008','1','ZeeyN','27','3','Gallery','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('672','1556452018','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('673','1556452023','1','ZeeyN','20','6','Галерея','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('674','1556452023','1','ZeeyN','16','6','Галерея','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `kxt8_manager_log` VALUES ('675','1556452046','1','ZeeyN','93','-','-','Backup Manager','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');


# --------------------------------------------------------

#
# Table structure for table `kxt8_manager_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_manager_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `kxt8_manager_users`
#

INSERT INTO `kxt8_manager_users` VALUES ('1','ZeeyN','$P$BgWjOx7SoUKuKoUHOopyQdyFDeNu9C0');


# --------------------------------------------------------

#
# Table structure for table `kxt8_member_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_member_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT 0,
  `member` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `kxt8_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_membergroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_membergroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT 0,
  `documentgroup` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `kxt8_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_membergroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_membergroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `kxt8_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_content`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_content`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT 0,
  `pub_date` int(20) NOT NULL DEFAULT 0,
  `unpub_date` int(20) NOT NULL DEFAULT 0,
  `parent` int(10) NOT NULL DEFAULT 0,
  `isfolder` int(1) NOT NULL DEFAULT 0,
  `introtext` text DEFAULT NULL COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext DEFAULT NULL,
  `richtext` tinyint(1) NOT NULL DEFAULT 1,
  `template` int(10) NOT NULL DEFAULT 0,
  `menuindex` int(10) NOT NULL DEFAULT 0,
  `searchable` int(1) NOT NULL DEFAULT 1,
  `cacheable` int(1) NOT NULL DEFAULT 1,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` int(20) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `deletedon` int(20) NOT NULL DEFAULT 0,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `publishedon` int(20) NOT NULL DEFAULT 0 COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT 0 COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disable page hit count',
  `privateweb` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `kxt8_site_content`
#

INSERT INTO `kxt8_site_content` VALUES ('1','document','text/html','Home','Homepage','','main_page','','1','0','0','0','0','','<p>Some nice content that i was lazy to imagine</p>','1','4','0','1','1','1','1130304721','1','1556287630','0','0','0','1130304721','1','Homepage','0','0','0','0','0','1');

INSERT INTO `kxt8_site_content` VALUES ('5','reference','text/html','Page1','Very Long Header','','page1','','1','0','0','0','0','','http://','1','4','4','1','1','1','1556293552','1','1556293776','1','1556293815','1','1556293552','1','','0','0','0','0','0','1');

INSERT INTO `kxt8_site_content` VALUES ('6','document','text/html','Page1','Page1 longtext','','page1','','1','0','0','4','0','','','1','5','0','1','1','1','1556293743','1','1556294690','0','0','0','1556293743','1','','0','0','0','0','1','1');

INSERT INTO `kxt8_site_content` VALUES ('2','document','text/html','Contacts','','','about','','1','0','0','0','0','','','1','7','1','1','1','1','1556275874','1','1556277438','0','0','0','1556275874','1','Contacts','0','0','0','0','0','1');

INSERT INTO `kxt8_site_content` VALUES ('3','document','text/html','Gallery','','','gallery','','1','0','0','0','0','','<p><img class=\"\" src=\"assets/images/khorne.jpg\" alt=\"\" width=\"900\" height=\"900\" /></p>','1','6','2','1','1','1','1556275919','1','1556448010','0','0','0','1556275919','1','Gallery','0','0','0','0','0','1');

INSERT INTO `kxt8_site_content` VALUES ('4','document','text/html','Blog','','','blog','','1','0','0','0','1','','','1','5','3','1','1','1','1556275946','1','1556292112','0','0','0','1556275946','1','Blog','0','0','0','0','0','1');

INSERT INTO `kxt8_site_content` VALUES ('7','document','text/html','Page2','Very Long Header','','page2','','1','0','0','4','0','','','1','5','1','1','1','1','1556293835','1','1556294688','0','0','0','1556293835','1','','0','0','0','0','1','1');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_htmlsnippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_htmlsnippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `disabled` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Disables the snippet',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `kxt8_site_htmlsnippets`
#

INSERT INTO `kxt8_site_htmlsnippets` VALUES ('1','header','sample header scripts','2','none','2','0','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\" />\n<title>[*titl*]</title>\n[*noIndex*]\n<meta name=\"keywords\" content=\"[*keyw*]\" />\n<meta name=\"description\" content=\"[*desc*]\" />\n<base href=\"[(site_url)]\"/>\n\n<link href=\"theme/css/templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n\n<link href=\"theme/css/jquery.ennui.contentslider.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen,projection\" />\n\n</head>\n\n<body>\n\n<div id=\"templatemo_menu_wrapper\">\n\n    <div id=\"templatemo_menu\">\n    \n		[[DLMenu?\n		&parents=`0`\n		&showParent=`1`\n		&depth=`0`\n		&TplMainOwner=`@CODE:<ul class=\"nav main-nav\">[+dl.wrap+]`\n		&TplOneItem=`@CODE:<li class=\"[+classes+]\"><a href=\"[+url+]\" title=\"[+e.title+]\">[+title+]</a></li>`\n		]]\n\n\n\n    </div> <!-- end of templatemo_menu -->\n\n</div> <!-- end of menu wrapper -->\n\n<div id=\"templatemo_header_wrapper\">\n  <div id=\"templatemo_header\">\n    <div id=\"site_title\">\n      <h1><a href=\"index.html\"> <img src=\"theme/images/templatemo_logo.png\" alt=\"logo\" /> </a></h1>\n    </div>\n  </div>\n	<div class=\"bread\">\n		[[if? &is=`[*id*]:!=:[(site_start)]` &then=`\n		[[DLCrumbs? &showCurrent=`1`]]\n		`]]\n	</div>\n  <!-- header -->','0','0','1556294665','0');

INSERT INTO `kxt8_site_htmlsnippets` VALUES ('2','mm_rules','Default ManagerManager rules.','0','none','3','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n\nmm_createTab(\'SEO\', \'seo\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'titl,keyw,desc,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude\', \'seo\', \'\', \'\');\nmm_widget_tags(\'keyw\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n\n\n//mm_createTab(\'Images\', \'photos\', \'\', \'\', \'\', \'850\');\n//mm_moveFieldsToTab(\'images,photos\', \'photos\', \'\', \'\');\n\n//mm_hideFields(\'longtitle,description,link_attributes,menutitle,content\', \'\', \'6,7\');\n\n//mm_hideTemplates(\'0,5,8,9,11,12\', \'2,3\');\n\n//mm_hideTabs(\'settings, access\', \'2\');\n','0','0','0','0');

INSERT INTO `kxt8_site_htmlsnippets` VALUES ('3','footer','','2','none','2','0','<div id=\"templatemo_footer_wrapper\">\n	<div id=\"templatemo_footer\">\n    \n    	<div class=\"footer_box\">\n        \n            <div class=\"footer_menu\">\n            \n              <h3>About Us</h3>\n    			\n                <img src=\"theme/images/templatemo_image_04.jpg\" alt=\"image\" />\n                <p>Some text about the creator</p>\n                \n            </div>\n            \n        </div>\n        \n        <div class=\"cleaner\"></div>\n    </div> <!-- end of footer -->\n</div> <!-- end of footer wrapper -->    \n\n<div id=\"templatemo_copyright_wrapper\">\n	<div id=\"templatemo_copyright\">\n    \n		Copyright © 2048 <a href=\"#\">Your Company Name</a>\n\n        \n    </div> <!-- end of templatemo_copyright -->\n</div> <!-- end of copyright wrapper -->\n\n</body>\n</html>','0','1556037194','1556294489','0');

INSERT INTO `kxt8_site_htmlsnippets` VALUES ('4','ContactForm','','2','none','0','0','[!FormLister?\n&formid=`basic`\n&rules=`\n{\n    \"name\":{\n        \"required\":\"Обязательно введите имя\",\n        \"matches\":{\n            \"params\":\"\\/^[\\\\pL\\\\s\\\\-\']++$\\/uD\",\n            \"message\":\"Введите имя правильно\"\n        }\n    },\n    \"email\":{\n        \"required\":\"Обязательно введите email\",\n        \"email\":\"Введите email правильно\"\n    },\n    \"subject\":{\n        \"required\":\"Обязательно введите тему сообщения\",\n    },\n    \"message\":{\n        \"required\":\"Обязательно введите сообщение\",\n        \"minLength\":{\n            \"params\":10,\n            \"message\":\"Сообщение должно быть не менее 10 символов\"\n        }\n    }\n}`\n&formTpl=`@CODE:\n<div class=\"row\">\n    <div class=\"col-md-8 col-md-offset-2\">\n        <div class=\"well\">\n            <form class=\"form-horizontal\" method=\"post\">\n                <input type=\"hidden\" name=\"formid\" value=\"basic\">\n                <div class=\"form-group[+name.errorClass+][+name.requiredClass+]\">\n					<label for=\"name\">Name:</label>\n                    <div class=\"col-sm-10\">\n                        <input type=\"text\" class=\"required input_field form-control\" id=\"name\" placeholder=\"Name\" name=\"name\" value=\"[+name.value+]\">\n                        [+name.error+]\n                    </div>\n                </div>\n				<div class=\"cleaner_h10\"></div>\n                <div class=\"form-group[+email.errorClass+][+email.requiredClass+]\">\n                    <label for=\"email\">Email:</label>\n                    <div class=\"col-sm-10\">\n                        <input type=\"text\" class=\"required input_field form-control\" id=\"email\" placeholder=\"Email\" name=\"email\" value=\"[+email.value+]\">\n                        [+email.error+]\n                    </div>\n                </div>\n				<div class=\"cleaner_h10\"></div>\n                <div class=\"form-group[+subject.errorClass+][+subject.requiredClass+]\">\n                    <label for=\"subject\">Subject:</label>\n                    <div class=\"col-sm-10\">\n                        <input type=\"text\" class=\"required input_field form-control\" id=\"subject\" name=\"subject\" value=\"[+subject.value+]\">\n                        [+subject.error+]\n                    </div>\n                </div>\n				<div class=\"cleaner_h10\"></div>\n                <div class=\"form-group[+message.errorClass+][+message.requiredClass+]\">\n                    <label for=\"message\">Message:</label>\n                    <div class=\"col-sm-10\">\n                        <textarea class=\"required form-control\" id=\"message\" placeholder=\"Your message\" name=\"message\" rows=\"10\">[+message+]</textarea>\n                        [+message.error+]\n                    </div>\n                </div>\n				<div class=\"cleaner_h10\"></div>\n                [+form.messages+]\n                <div class=\"form-group\">\n                    <div class=\"col-sm-offset-2 col-sm-10\">\n                        <input type=\"submit\" class=\"submit_btn\" value=\"Send\">\n                    </div>\n                </div>\n            </form>\n        </div>\n    </div>\n</div>`\n&to=`zeeynnik@gmail.com`\n&ccSender=`1`\n&ccSenderField=`email`\n&ccSenderTpl=`@CODE:Спасибо за обращение, [+name.value+]`\n&reportTpl=`@CODE:\n<p>Имя: [+name.value+]</p>\n<p>Тема: [+subject.value+]</p>\n<p>Email: <a href=\"mailto:[+email.value+]\">[+email.value+]</a></p>\n<p>Сообщение: [+message:strip_tags:nl2br+]</p>\n`\n&errorClass=` has-error`\n&requiredClass=` has-warning`\n&subject=`Новое сообщение`\n&messagesOuterTpl=`@CODE:<div class=\"alert alert-danger\" role=\"alert\">[+messages+]</div>`\n&errorTpl=`@CODE:<span class=\"help-block\">[+message+]</span>`\n&debug=`1`\n!]','0','1556440746','1556444228','0');

INSERT INTO `kxt8_site_htmlsnippets` VALUES ('5','Gallery','','2','none','0','0','                [!sgLister?\n				&ownerTPL=`@CODE: <div class=\"row\">[+dl.wrap+]</div>`\n				&thumbSnippet=`sgThumb`\n				&thumbOptions=`400x300`\n				&display=`10`\n				&PrevNextAlwaysShow=`1`\n				&tpl=`@CODE:\n				<div class=\"col-lg-3 col-md-4 col-xs-6 thumb\">\n					<a class=\"thumbnail\" href=\"[+sg_image+]\" target=\"_blank\">\n						<img class=\"img-responsive\" src=\"[+thumb.sg_image+]\" alt=\"[+e.sg_title+]\">\n					</a>\n				</div>`\n				!]','0','1556448372','1556448372','0');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_module_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_module_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT 0,
  `usergroup` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `kxt8_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_module_depobj`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_module_depobj`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT 0,
  `resource` int(11) NOT NULL DEFAULT 0,
  `type` int(2) NOT NULL DEFAULT 0 COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `kxt8_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_modules`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_modules`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT 0,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `modulecode` mediumtext DEFAULT NULL COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `kxt8_site_modules`
#

INSERT INTO `kxt8_site_modules` VALUES ('1','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','4','0','0','','0','','0','0','docman435243542tf542t5t','1','',' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');

INSERT INTO `kxt8_site_modules` VALUES ('2','Extras','<strong>0.1.3</strong> first repository for Evolution CMS','0','0','4','0','0','','0','','0','0','store435243542tf542t5t','1','',' \n/**\n * Extras\n * \n * first repository for Evolution CMS\n * \n * @category	module\n * @version 	0.1.3\n * @internal	@properties\n * @internal	@guid store435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/store/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  25/11/2016\n */\n\n//AUTHORS: Bumkaka & Dmi3yy \ninclude_once(\'../assets/modules/store/core.php\');');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_plugin_events`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_plugin_events`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT 0,
  `priority` int(10) NOT NULL DEFAULT 0 COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `kxt8_site_plugin_events`
#

INSERT INTO `kxt8_site_plugin_events` VALUES ('1','23','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('1','29','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('1','35','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('1','41','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('1','47','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('1','73','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('1','88','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','25','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','27','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','37','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','39','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','43','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','45','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','49','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','51','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','55','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','57','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','75','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','77','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','206','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','210','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('2','211','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('3','34','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('3','35','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('3','36','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('3','40','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('3','41','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('3','42','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('4','80','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('4','81','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('4','93','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('5','28','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('5','29','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('5','30','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('5','31','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('5','35','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('5','53','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('5','205','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('6','202','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('7','3','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('7','13','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('7','28','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('7','31','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('7','92','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('8','3','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('8','20','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('8','85','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('8','87','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('8','88','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('8','91','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('8','92','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('9','100','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('10','70','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('10','202','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('10','1000','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('11','4','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('11','79','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('11','90','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('11','1000','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('12','1001','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('13','29','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('13','98','0');

INSERT INTO `kxt8_site_plugin_events` VALUES ('13','205','0');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_plugins`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_plugins`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `plugincode` mediumtext DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `kxt8_site_plugins`
#

INSERT INTO `kxt8_site_plugins` VALUES ('1','CodeMirror','<strong>1.5</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)','0','4','0','\n/**\n * CodeMirror\n *\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\n *\n * @category    plugin\n * @version     1.5\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\n * @internal    @modx_category Manager and Admin\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\n * @internal    @installset base\n * @reportissues https://github.com/evolution-cms/evolution/issues/\n * @documentation Official docs https://codemirror.net/doc/manual.html\n * @author      hansek from http://www.modxcms.cz\n * @author      update Mihanik71\n * @author      update Deesen\n * @author      update 64j\n * @lastupdate  08-01-2018\n */\n\n$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');','0','{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('2','ElementsInTree','<strong>1.5.10</strong> Get access to all Elements and Modules inside Manager sidebar','0','4','0','require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';\n','0','{\"adminRoleOnly\":[{\"label\":\"Administrators only\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"treeButtonsInTab\":[{\"label\":\"Tree buttons in tab\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('3','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','4','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('4','Forgot Manager Login','<strong>1.1.7</strong> Resets your manager login when you forget your password via email confirmation','0','4','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('5','ManagerManager','<strong>0.6.3</strong> Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.','0','4','0','\n/**\n * ManagerManager\n *\n * Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.3\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  22/01/2018\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');\n','0','{\"remove_deprecated_tv_types_pref\":[{\"label\":\"Remove deprecated TV types\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"config_chunk\":[{\"label\":\"Configuration Chunk\",\"type\":\"text\",\"value\":\"mm_rules\",\"default\":\"mm_rules\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('6','OutdatedExtrasCheck','<strong>1.4.6</strong> Check for Outdated critical extras not compatible with EVO 1.4.6','0','4','0','/**\n * OutdatedExtrasCheck\n *\n * Check for Outdated critical extras not compatible with EVO 1.4.6\n *\n * @category	plugin\n * @version     1.4.6\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @author      Author: Nicola Lambathakis\n * @internal    @events OnManagerWelcomeHome\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;AdminOnly &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username)\n * @internal    @modx_category Manager and Admin\n * @internal    @installset base\n * @internal    @disabled 0\n */\n\nrequire MODX_BASE_PATH . \'assets/plugins/extrascheck/OutdatedExtrasCheck.plugin.php\';\n','0','{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('7','Quick Manager+','<strong>1.5.10</strong> Enables QuickManager+ front end content editing support','0','4','0','\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.10\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;false &noconflictjq=jQuery noConflict mode in front-end;list;true,false;false &loadfa=Load Font Awesome css in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &position= Toolbar position;list;top,right,bottom,left,before;top &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv &removeBg=Remove toolbar background;list;yes,no;no &buttonStyle=QuickManager buttons CSS stylesheet;list;actionButtons,navButtons;navButtons  \n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr, Nicola1971.\n * @lastupdate  02/02/2018 \n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadfa, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $position, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass, $buttonStyle, $removeBg);\n}\n','0','{\"jqpath\":[{\"label\":\"Path to jQuery\",\"type\":\"text\",\"value\":\"assets\\/js\\/jquery.min.js\",\"default\":\"assets\\/js\\/jquery.min.js\",\"desc\":\"\"}],\"loadmanagerjq\":[{\"label\":\"Load jQuery in manager\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfrontendjq\":[{\"label\":\"Load jQuery in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"noconflictjq\":[{\"label\":\"jQuery noConflict mode in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfa\":[{\"label\":\"Load Font Awesome css in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"loadtb\":[{\"label\":\"Load modal box in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tbwidth\":[{\"label\":\"Modal box window width\",\"type\":\"text\",\"value\":\"80%\",\"default\":\"80%\",\"desc\":\"\"}],\"tbheight\":[{\"label\":\"Modal box window height\",\"type\":\"text\",\"value\":\"90%\",\"default\":\"90%\",\"desc\":\"\"}],\"hidefields\":[{\"label\":\"Hide document fields from front-end editors\",\"type\":\"text\",\"value\":\"parent\",\"default\":\"parent\",\"desc\":\"\"}],\"hidetabs\":[{\"label\":\"Hide document tabs from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"hidesections\":[{\"label\":\"Hide document sections from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"addbutton\":[{\"label\":\"Show add document here button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tpltype\":[{\"label\":\"New document template type\",\"type\":\"list\",\"value\":\"parent\",\"options\":\"parent,id,selected\",\"default\":\"parent\",\"desc\":\"\"}],\"tplid\":[{\"label\":\"New document template id\",\"type\":\"int\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"custombutton\":[{\"label\":\"Custom buttons\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"managerbutton\":[{\"label\":\"Show go to manager button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"logout\":[{\"label\":\"Logout to\",\"type\":\"list\",\"value\":\"manager\",\"options\":\"manager,front-end\",\"default\":\"manager\",\"desc\":\"\"}],\"disabled\":[{\"label\":\"Plugin disabled on documents\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"autohide\":[{\"label\":\"Autohide toolbar\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"position\":[{\"label\":\"Toolbar position\",\"type\":\"list\",\"value\":\"top\",\"options\":\"top,right,bottom,left,before\",\"default\":\"top\",\"desc\":\"\"}],\"editbuttons\":[{\"label\":\"Inline edit buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"editbclass\":[{\"label\":\"Edit button CSS class\",\"type\":\"text\",\"value\":\"qm-edit\",\"default\":\"qm-edit\",\"desc\":\"\"}],\"newbuttons\":[{\"label\":\"Inline new resource buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"newbclass\":[{\"label\":\"New resource button CSS class\",\"type\":\"text\",\"value\":\"qm-new\",\"default\":\"qm-new\",\"desc\":\"\"}],\"tvbuttons\":[{\"label\":\"Inline template variable buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"tvbclass\":[{\"label\":\"Template variable button CSS class\",\"type\":\"text\",\"value\":\"qm-tv\",\"default\":\"qm-tv\",\"desc\":\"\"}],\"removeBg\":[{\"label\":\"Remove toolbar background\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"no\",\"desc\":\"\"}],\"buttonStyle\":[{\"label\":\"QuickManager buttons CSS stylesheet\",\"type\":\"list\",\"value\":\"navButtons\",\"options\":\"actionButtons,navButtons\",\"default\":\"navButtons\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('8','TinyMCE4','<strong>4.7.4</strong> Javascript rich text editor','0','4','0','\n/**\n * TinyMCE4\n *\n * Javascript rich text editor\n *\n * @category    plugin\n * @version     4.7.4\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal    @properties &styleFormats=Custom Style Formats <b>RAW</b><br/><br/><ul><li>leave empty to use below block/inline formats</li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2</i></li><li>Also accepts full JSON-config as per TinyMCE4 docs / configure / content-formating / style_formats</li></ul>;textarea; &styleFormats_inline=Custom Style Formats <b>INLINE</b><br/><br/><ul><li>will wrap selected text with span-tag + css-class</li><li>simple-format only</li></ul>;textarea;InlineTitle,cssClass1|InlineTitle2,cssClass2 &styleFormats_block=Custom Style Formats <b>BLOCK</b><br/><br/><ul><li>will add css-class to selected block-element</li><li>simple-format only</li></ul>;textarea;BlockTitle,cssClass3|BlockTitle2,cssClass4 &customParams=Custom Parameters<br/><b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline &browser_spellcheck=<b>Browser Spellcheck</b><br/>At least one dictionary must be installed inside your browser;list;enabled,disabled;disabled &paste_as_text=<b>Force Paste as Text</b>;list;enabled,disabled;disabled\n * @internal    @events OnLoadWebDocument,OnParseDocument,OnWebPagePrerender,OnLoadWebPageCache,OnRichTextEditorRegister,OnRichTextEditorInit,OnInterfaceSettingsRender\n * @internal    @modx_category Manager and Admin\n * @internal    @legacy_names TinyMCE Rich Text Editor\n * @internal    @installset base\n * @logo        /assets/plugins/tinymce4/tinymce/logo.png\n * @reportissues https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Plugin docs https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Official TinyMCE4-docs https://www.tinymce.com/docs/\n * @author      Deesen\n * @lastupdate  2018-01-17\n */\nif (!defined(\'MODX_BASE_PATH\')) { die(\'What are you doing? Get out of here!\'); }\n\nrequire(MODX_BASE_PATH.\"assets/plugins/tinymce4/plugin.tinymce.inc.php\");','0','{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"paste_as_text\":[{\"label\":\"<b>Force Paste as Text<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('9','TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides','0','4','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('10','Updater','<strong>0.8.5</strong> show message about outdated CMS version','0','4','0','require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';','0','{\"version\":[{\"label\":\"Version:\",\"type\":\"text\",\"value\":\"evolution-cms\\/evolution\",\"default\":\"evolution-cms\\/evolution\",\"desc\":\"\"}],\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"type\":[{\"label\":\"Type:\",\"type\":\"menu\",\"value\":\"tags\",\"options\":\"tags,releases,commits\",\"default\":\"tags\",\"desc\":\"\"}],\"branch\":[{\"label\":\"Commit branch:\",\"type\":\"text\",\"value\":\"develop\",\"default\":\"develop\",\"desc\":\"\"}],\"stableOnly\":[{\"label\":\"Offer upgrade to stable version only:\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('11','userHelper','<strong>1.8.1</strong> addition to FormLister','0','5','0','\n/**\n * userHelper\n * \n * addition to FormLister\n * \n * @category    plugin\n * @version     1.8.1\n * @internal    @properties &logoutKey=Request key;text;logout &cookieName=Cookie Name;text;WebLoginPE &cookieLifetime=Cookie Lifetime, seconds;text;157680000 &maxFails=Max failed logins;text;3 &blockTime=Block for, seconds;text;3600 &trackWebUserActivity=Track web user activity;list;No,Yes;No\n * @internal    @events OnWebAuthentication,OnWebPageInit,OnPageNotFound,OnWebLogin\n * @internal    @modx_category Content\n * @internal    @disabled 1\n**/\n\nrequire MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n','0','{\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}],\"trackWebUserActivity\":[{\"label\":\"Track web user activity\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('12','sgThumb','<strong>1.2.4</strong> Plugin to create thumbnails for SimpleGallery images','0','0','0','require MODX_BASE_PATH.\'assets/plugins/simplegallery/plugin.sgthumb.php\';\n','0','{\"tconfig\":[{\"label\":\"Thumbnails Configuration\",\"type\":\"textarea\",\"value\":\"See plugin code for details\",\"default\":\"See plugin code for details\",\"desc\":\"\"}],\"keepOriginal\":[{\"label\":\"Keep original images\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}],\"originalFolder\":[{\"label\":\"Folder for original images\",\"type\":\"text\",\"value\":\"original\",\"default\":\"original\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `kxt8_site_plugins` VALUES ('13','SimpleGallery','<strong>1.2.4</strong> Plugin to create image galleries','0','0','0','require MODX_BASE_PATH.\'assets/plugins/simplegallery/plugin.simplegallery.php\';\n','0','{\"tabName\":[{\"label\":\"Tab name\",\"type\":\"text\",\"value\":\"SimpleGallery\",\"default\":\"SimpleGallery\",\"desc\":\"\"}],\"controller\":[{\"label\":\"Controller class\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"templates\":[{\"label\":\"Templates\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"documents\":[{\"label\":\"Documents\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoreDoc\":[{\"label\":\"Ignore Documents\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"role\":[{\"label\":\"Roles\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"folder\":[{\"label\":\"Galleries folder\",\"type\":\"text\",\"value\":\"assets\\/galleries\\/\",\"default\":\"assets\\/galleries\\/\",\"desc\":\"\"}],\"thumbsCache\":[{\"label\":\"Thumbs cache folder\",\"type\":\"text\",\"value\":\"assets\\/.sgThumbs\\/\",\"default\":\"assets\\/.sgThumbs\\/\",\"desc\":\"\"}],\"w\":[{\"label\":\"Thumbs width\",\"type\":\"text\",\"value\":\"140\",\"default\":\"140\",\"desc\":\"\"}],\"h\":[{\"label\":\"Thumbs height\",\"type\":\"text\",\"value\":\"105\",\"default\":\"105\",\"desc\":\"\"}],\"customThumbOptions\":[{\"label\":\"Custom thumb options\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"clientResize\":[{\"label\":\"Client Resize\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}],\"jpegQuality\":[{\"label\":\"Jpeg quality\",\"type\":\"text\",\"value\":\"0.93\",\"default\":\"0.93\",\"desc\":\"\"}],\"skipPHPThumb\":[{\"label\":\"Skip PHPThumb\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}],\"allowDuplicate\":[{\"label\":\"Duplicate galleries with documents\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}','0','','0','0');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_snippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_snippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `disabled` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Disables the snippet',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `kxt8_site_snippets`
#

INSERT INTO `kxt8_site_snippets` VALUES ('1','DLCrumbs','<strong>1.2</strong> DLCrumbs','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';\n','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('2','DLMenu','<strong>1.4.0</strong> Snippet to build menu with DocLister','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('3','DLSitemap','<strong>1.0.1</strong> Snippet to build XML sitemap','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLSitemap.php\';\n','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('4','DocInfo','<strong>0.4.1</strong> Take any field from any document (fewer requests than GetField)','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/docinfo/snippet.docinfo.php\';\n','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('5','DocLister','<strong>2.4.1</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('6','FormLister','<strong>1.8.1</strong> Form processor','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('7','if','<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('8','phpthumb','<strong>1.3.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('9','summary','<strong>2.0.2</strong> Truncates the string to the specified length','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('10','sgController','<strong>1.2.4</strong> use sg_site_content controller for DocLister','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgController.php\';','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('11','sgLister','<strong>1.2.4</strong> DocLister wrapper for SimpleGallery table','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgLister.php\';','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('12','sgThumb','<strong>1.2.4</strong> Snippet for get thumbnails for SimpleGallery','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgThumb.php\';','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('13','multiTV','<strong>2.0.15</strong> Custom Template Variabe containing a sortable multi item list or a datatable','0','5','0','return require MODX_BASE_PATH . \'assets/tvs/multitv/multitv.snippet.php\';\n','0','','','0','0','0');

INSERT INTO `kxt8_site_snippets` VALUES ('14','prepare-wrap-blog','','0','0','0','\n$plh = isset($data[\'placeholders\']) && is_array($data[\'placeholders\']) ? $data[\'placeholders\'] : array();\n$plh[\'item1\'] = $plh[\'item2\'] = $plh[\'item3\'] = \'\';\n$wrap = explode(\'<!-- item ! -->\', (isset($plh[\'dl.wrap\']) && is_scalar($plh[\'dl.wrap\']) ? $plh[\'dl.wrap\'] : \'\')\n			   );\n\n$plh[\'item1\'] = $wrap[\'0\'];\n$plh[\'item2\'] = $wrap[\'1\'];\n$plh[\'item3\'] = $wrap[\'2\'];\n\nreturn $plh;','0','{}',' ','1556293146','1556295081','0');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-page,1-content',
  `content` mediumtext DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `selectable` tinyint(4) NOT NULL DEFAULT 1,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `kxt8_site_templates`
#

INSERT INTO `kxt8_site_templates` VALUES ('3','Minimal Template','Default minimal empty template (content returned only)','0','0','','0','[*content*]','0','1','0','0');

INSERT INTO `kxt8_site_templates` VALUES ('4','Главная','','0','2','','0','{{header}}\n\n[[multiTV? &tvName=`advantage` &docid=`[*id*]` &display=`all` &offset=`0` &orderBy=``]]\n<div id=\"templatemo_content_wrapper\">\n	<div id=\"templatemo_content\">		\n		[*content*]    \n    	<div class=\"cleaner\"></div>\n	</div>\n</div>\n{{footer}}','0','1','1556036937','1556286074');

INSERT INTO `kxt8_site_templates` VALUES ('5','Блог','','0','2','','0','{{header}}\n<div id=\"templatemo_content_wrapper\">\n	<div id=\"templatemo_content\">\n	\n	\n 	[[DocLister? &parents=`4` &display=`3` &orderBy=`menuindex ASC` &tvList=`image`\n	&prepareWrap=`prepare-wrap-blog`\n	&tpl=`@CODE:<div><h1><a href=\"[+url+]\">[+pagetitle+]</a></h1>\n        <div class=\"image_wrapper fl_img\">\n			<a href=\"[+url+]\"><img src=\" [[phpthumb? &input=`[*image*]` &options=`w=100,h=100,zc=1,bg=FFFFFF`]]\" alt=\"image\" /></a>        			\n		</div>\n      <p>[+longtitle+]</p>\n	</div><!-- item ! -->`\n	&ownerTPL=`@CODE:\n		[+item1+]\n	<div class=\"cleaner\"></div>\n		[+item2+]\n	<div class=\"cleaner\"></div>\n		[+item3+]\n	<div class=\"cleaner\"></div>`\n	]]\n	\n	\n	</div>\n</div> <!-- end of content_wrapper -->\n{{footer}}','0','1','0','1556443840');

INSERT INTO `kxt8_site_templates` VALUES ('6','Галерея','','0','2','','0','{{header}}\n<div id=\"templatemo_content_wrapper\">\n	<div id=\"templatemo_content\">\n    	\n        <h1>Portfolio Gallery</h1>\n         <div id=\"gallery\">\n            <ul>\n            \n                <li>\n                    <a href=\"images/gallery/image_01_b.jpg\" class=\"pirobox\"  title=\"Project 1\"><img src=\"images/gallery/image_01.jpg\" alt=\"1\" /></a>\n                    <h5>Project 1</h5>\n                    <p>Validate <a href=\"http://validator.w3.org/check?uri=referer\" rel=\"nofollow\">XHTML</a> &amp; <a href=\"http://jigsaw.w3.org/css-validator/check/referer\" rel=\"nofollow\">CSS</a>. Curabitur ullamcorper neque et justo.</p>\n                    <div class=\"button\"><a href=\"#\"></a></div>\n                </li>\n\n            </ul>\n            \n           <div class=\"cleaner\"></div>\n        </div>\n    \n   	  <div class=\"cleaner\"></div>\n	</div> <!-- end of content -->\n</div> <!-- end of content_wrapper -->\n{{footer}}','0','1','0','1556452023');

INSERT INTO `kxt8_site_templates` VALUES ('7','Контакты','','0','2','','0','{{header}}\n<div id=\"templatemo_content_wrapper\">\n	<div id=\"templatemo_content\">\n    	\n         <h1>Contact Us</h1>\n			<div class=\"two_column float_l\">\n            \n            	<div id=\"contact_form\">\n\n				<h3>Contact Form</h3>\n\n					\n					{{ContactForm}}\n                \n            </div>\n                \n            </div> \n            \n    \n    	<div class=\"cleaner\"></div>\n	</div> <!-- end of content -->\n</div> <!-- end of content_wrapper -->\n{{footer}}','0','1','0','1556446314');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_tmplvar_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_tmplvar_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT 0,
  `documentgroup` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `kxt8_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_tmplvar_contentvalues`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_tmplvar_contentvalues`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT 0 COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT 0 COMMENT 'Site Content Id',
  `value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `kxt8_site_tmplvar_contentvalues`
#

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('1','5','1','theme/images/templatemo_image_05.jpg');

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('2','6','1','{\"fieldValue\":[{\"title\":\"Block1\",\"legend\":\"Text1\"},{\"title\":\"Block2\",\"legend\":\"Text2\"},{\"title\":\"Block3\",\"legend\":\"Text3\"}],\"fieldSettings\":{\"autoincrement\":1}}');

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('3','5','4','theme/images/templatemo_image_02.jpg');

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('4','6','5','[]');

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('5','6','6','[]');

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('6','5','5','theme/images/templatemo_image_05.jpg');

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('7','5','6','theme/images/templatemo_image_05.jpg');

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('8','5','7','theme/images/templatemo_image_05.jpg');

INSERT INTO `kxt8_site_tmplvar_contentvalues` VALUES ('9','5','3','assets/images/khorne.jpg');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_tmplvar_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_tmplvar_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT 0 COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `kxt8_site_tmplvar_templates`
#

INSERT INTO `kxt8_site_tmplvar_templates` VALUES ('5','6','0');

INSERT INTO `kxt8_site_tmplvar_templates` VALUES ('5','5','0');

INSERT INTO `kxt8_site_tmplvar_templates` VALUES ('6','4','0');

INSERT INTO `kxt8_site_tmplvar_templates` VALUES ('5','4','0');


# --------------------------------------------------------

#
# Table structure for table `kxt8_site_tmplvars`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_site_tmplvars`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `elements` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text DEFAULT NULL COMMENT 'Display Control Properties',
  `default_text` text DEFAULT NULL,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `kxt8_site_tmplvars`
#

INSERT INTO `kxt8_site_tmplvars` VALUES ('1','textarea','desc','Meta description','Meta description','0','1','0','','0','','','[*introtext*]','0','0');

INSERT INTO `kxt8_site_tmplvars` VALUES ('2','text','keyw','Meta keywords','Meta keywords','0','1','0','','0','','','[*pagetitle*]','0','0');

INSERT INTO `kxt8_site_tmplvars` VALUES ('3','checkbox','noIndex','No index page','Meta robots','0','1','0','Нет==<meta name=\"robots\" content=\"noindex, nofollow\">','0','','','','0','0');

INSERT INTO `kxt8_site_tmplvars` VALUES ('4','text','titl','Meta title','Meta title','0','1','0','','0','','','[*pagetitle*] - [(site_name)]','0','0');

INSERT INTO `kxt8_site_tmplvars` VALUES ('5','image','image','picture','','0','0','0','','0','','','','1556284340','1556293765');

INSERT INTO `kxt8_site_tmplvars` VALUES ('6','custom_tv:multitv','advantage','advantage blocks','','0','0','0','','0','','','','1556284734','1556284965');


# --------------------------------------------------------

#
# Table structure for table `kxt8_system_eventnames`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_system_eventnames`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `kxt8_system_eventnames`
#

INSERT INTO `kxt8_system_eventnames` VALUES ('1','OnDocPublished','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('2','OnDocUnPublished','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('4','OnWebLogin','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('6','OnWebLogout','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('7','OnWebSaveUser','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('9','OnWebChangePassword','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('11','OnManagerLogin','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('13','OnManagerLogout','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');

INSERT INTO `kxt8_system_eventnames` VALUES ('19','OnCacheUpdate','4','');

INSERT INTO `kxt8_system_eventnames` VALUES ('107','OnMakePageCacheKey','4','');

INSERT INTO `kxt8_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');

INSERT INTO `kxt8_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');

INSERT INTO `kxt8_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');

INSERT INTO `kxt8_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');

INSERT INTO `kxt8_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');

INSERT INTO `kxt8_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');

INSERT INTO `kxt8_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');

INSERT INTO `kxt8_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');

INSERT INTO `kxt8_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('1033','OnDocFormUnDelete','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('1034','onBeforeMoveDocument','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('1035','onAfterMoveDocument','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');

INSERT INTO `kxt8_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');

INSERT INTO `kxt8_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');

INSERT INTO `kxt8_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');

INSERT INTO `kxt8_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');

INSERT INTO `kxt8_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');

INSERT INTO `kxt8_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');

INSERT INTO `kxt8_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');

INSERT INTO `kxt8_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');

INSERT INTO `kxt8_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');

INSERT INTO `kxt8_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');

INSERT INTO `kxt8_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');

INSERT INTO `kxt8_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');

INSERT INTO `kxt8_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');

INSERT INTO `kxt8_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');

INSERT INTO `kxt8_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');

INSERT INTO `kxt8_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');

INSERT INTO `kxt8_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');

INSERT INTO `kxt8_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');

INSERT INTO `kxt8_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');

INSERT INTO `kxt8_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');

INSERT INTO `kxt8_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');

INSERT INTO `kxt8_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');

INSERT INTO `kxt8_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');

INSERT INTO `kxt8_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');

INSERT INTO `kxt8_system_eventnames` VALUES ('70','OnSiteRefresh','1','');

INSERT INTO `kxt8_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');

INSERT INTO `kxt8_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');

INSERT INTO `kxt8_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');

INSERT INTO `kxt8_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');

INSERT INTO `kxt8_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');

INSERT INTO `kxt8_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');

INSERT INTO `kxt8_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');

INSERT INTO `kxt8_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('79','OnWebAuthentication','3','');

INSERT INTO `kxt8_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');

INSERT INTO `kxt8_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');

INSERT INTO `kxt8_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');

INSERT INTO `kxt8_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');

INSERT INTO `kxt8_system_eventnames` VALUES ('109','OnSecuritySettingsRender','1','System Settings');

INSERT INTO `kxt8_system_eventnames` VALUES ('110','OnFileManagerSettingsRender','1','System Settings');

INSERT INTO `kxt8_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');

INSERT INTO `kxt8_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');

INSERT INTO `kxt8_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');

INSERT INTO `kxt8_system_eventnames` VALUES ('89','OnManagerPageInit','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('90','OnWebPageInit','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('104','OnBeforeLoadDocumentObject','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('105','OnAfterLoadDocumentObject','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('92','OnParseDocument','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('106','OnParseProperties','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('108','OnBeforeParseParams','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('94','OnWebPageComplete','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('95','OnLogPageHit','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('102','OnMakeDocUrl','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('103','OnBeforeLoadExtension','5','');

INSERT INTO `kxt8_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('214','OnManagerMenuPrerender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('215','OnManagerTopPrerender','2','');

INSERT INTO `kxt8_system_eventnames` VALUES ('224','OnDocFormTemplateRender','1','Documents');

INSERT INTO `kxt8_system_eventnames` VALUES ('225','OnBeforeMinifyCss','1','');

INSERT INTO `kxt8_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');

INSERT INTO `kxt8_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

INSERT INTO `kxt8_system_eventnames` VALUES ('1001','OnFileBrowserUpload','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1002','OnBeforeFileBrowserUpload','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1003','OnFileBrowserDelete','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1004','OnBeforeFileBrowserDelete','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1005','OnFileBrowserInit','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1006','OnFileBrowserMove','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1007','OnBeforeFileBrowserMove','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1008','OnFileBrowserCopy','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1009','OnBeforeFileBrowserCopy','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1010','OnBeforeFileBrowserRename','1','File Browser Events');

INSERT INTO `kxt8_system_eventnames` VALUES ('1011','OnFileBrowserRename','1','File Browser Events');


# --------------------------------------------------------

#
# Table structure for table `kxt8_system_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_system_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text DEFAULT NULL,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `kxt8_system_settings`
#

INSERT INTO `kxt8_system_settings` VALUES ('settings_version','1.4.8');

INSERT INTO `kxt8_system_settings` VALUES ('manager_theme','default');

INSERT INTO `kxt8_system_settings` VALUES ('server_offset_time','0');

INSERT INTO `kxt8_system_settings` VALUES ('manager_language','russian-UTF8');

INSERT INTO `kxt8_system_settings` VALUES ('modx_charset','UTF-8');

INSERT INTO `kxt8_system_settings` VALUES ('site_name','Test_Work');

INSERT INTO `kxt8_system_settings` VALUES ('site_start','1');

INSERT INTO `kxt8_system_settings` VALUES ('error_page','1');

INSERT INTO `kxt8_system_settings` VALUES ('unauthorized_page','1');

INSERT INTO `kxt8_system_settings` VALUES ('site_status','1');

INSERT INTO `kxt8_system_settings` VALUES ('auto_template_logic','parent');

INSERT INTO `kxt8_system_settings` VALUES ('default_template','3');

INSERT INTO `kxt8_system_settings` VALUES ('old_template','3');

INSERT INTO `kxt8_system_settings` VALUES ('publish_default','1');

INSERT INTO `kxt8_system_settings` VALUES ('friendly_urls','1');

INSERT INTO `kxt8_system_settings` VALUES ('friendly_alias_urls','1');

INSERT INTO `kxt8_system_settings` VALUES ('use_alias_path','1');

INSERT INTO `kxt8_system_settings` VALUES ('cache_type','2');

INSERT INTO `kxt8_system_settings` VALUES ('failed_login_attempts','3');

INSERT INTO `kxt8_system_settings` VALUES ('blocked_minutes','60');

INSERT INTO `kxt8_system_settings` VALUES ('use_captcha','0');

INSERT INTO `kxt8_system_settings` VALUES ('emailsender','zeeynnik@gmail.com');

INSERT INTO `kxt8_system_settings` VALUES ('use_editor','1');

INSERT INTO `kxt8_system_settings` VALUES ('use_browser','1');

INSERT INTO `kxt8_system_settings` VALUES ('fe_editor_lang','russian-UTF8');

INSERT INTO `kxt8_system_settings` VALUES ('fck_editor_toolbar','standard');

INSERT INTO `kxt8_system_settings` VALUES ('fck_editor_autolang','0');

INSERT INTO `kxt8_system_settings` VALUES ('editor_css_path','');

INSERT INTO `kxt8_system_settings` VALUES ('editor_css_selectors','');

INSERT INTO `kxt8_system_settings` VALUES ('upload_maxsize','10485760');

INSERT INTO `kxt8_system_settings` VALUES ('manager_layout','4');

INSERT INTO `kxt8_system_settings` VALUES ('auto_menuindex','1');

INSERT INTO `kxt8_system_settings` VALUES ('session.cookie.lifetime','604800');

INSERT INTO `kxt8_system_settings` VALUES ('mail_check_timeperiod','600');

INSERT INTO `kxt8_system_settings` VALUES ('manager_direction','ltr');

INSERT INTO `kxt8_system_settings` VALUES ('xhtml_urls','0');

INSERT INTO `kxt8_system_settings` VALUES ('automatic_alias','1');

INSERT INTO `kxt8_system_settings` VALUES ('datetime_format','dd-mm-YYYY');

INSERT INTO `kxt8_system_settings` VALUES ('warning_visibility','0');

INSERT INTO `kxt8_system_settings` VALUES ('remember_last_tab','1');

INSERT INTO `kxt8_system_settings` VALUES ('enable_bindings','1');

INSERT INTO `kxt8_system_settings` VALUES ('seostrict','1');

INSERT INTO `kxt8_system_settings` VALUES ('number_of_results','30');

INSERT INTO `kxt8_system_settings` VALUES ('theme_refresher','');

INSERT INTO `kxt8_system_settings` VALUES ('show_picker','0');

INSERT INTO `kxt8_system_settings` VALUES ('show_newresource_btn','0');

INSERT INTO `kxt8_system_settings` VALUES ('show_fullscreen_btn','0');

INSERT INTO `kxt8_system_settings` VALUES ('email_sender_method','1');

INSERT INTO `kxt8_system_settings` VALUES ('site_id','5cbf31d6141f2');

INSERT INTO `kxt8_system_settings` VALUES ('a','30');

INSERT INTO `kxt8_system_settings` VALUES ('site_unavailable_page','');

INSERT INTO `kxt8_system_settings` VALUES ('reload_site_unavailable','');

INSERT INTO `kxt8_system_settings` VALUES ('site_unavailable_message','В настоящее время сайт недоступен.');

INSERT INTO `kxt8_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');

INSERT INTO `kxt8_system_settings` VALUES ('chunk_processor','');

INSERT INTO `kxt8_system_settings` VALUES ('enable_mootools','1');

INSERT INTO `kxt8_system_settings` VALUES ('enable_at_syntax','0');

INSERT INTO `kxt8_system_settings` VALUES ('enable_filter','0');

INSERT INTO `kxt8_system_settings` VALUES ('cache_default','1');

INSERT INTO `kxt8_system_settings` VALUES ('search_default','1');

INSERT INTO `kxt8_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');

INSERT INTO `kxt8_system_settings` VALUES ('docid_incrmnt_method','0');

INSERT INTO `kxt8_system_settings` VALUES ('enable_cache','1');

INSERT INTO `kxt8_system_settings` VALUES ('minifyphp_incache','0');

INSERT INTO `kxt8_system_settings` VALUES ('server_protocol','http');

INSERT INTO `kxt8_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/evocms-release-news');

INSERT INTO `kxt8_system_settings` VALUES ('track_visitors','0');

INSERT INTO `kxt8_system_settings` VALUES ('friendly_url_prefix','');

INSERT INTO `kxt8_system_settings` VALUES ('friendly_url_suffix','.html');

INSERT INTO `kxt8_system_settings` VALUES ('make_folders','0');

INSERT INTO `kxt8_system_settings` VALUES ('aliaslistingfolder','0');

INSERT INTO `kxt8_system_settings` VALUES ('allow_duplicate_alias','0');

INSERT INTO `kxt8_system_settings` VALUES ('use_udperms','1');

INSERT INTO `kxt8_system_settings` VALUES ('udperms_allowroot','0');

INSERT INTO `kxt8_system_settings` VALUES ('email_method','mail');

INSERT INTO `kxt8_system_settings` VALUES ('smtp_auth','0');

INSERT INTO `kxt8_system_settings` VALUES ('smtp_secure','none');

INSERT INTO `kxt8_system_settings` VALUES ('smtp_host','smtp.example.com');

INSERT INTO `kxt8_system_settings` VALUES ('smtp_port','25');

INSERT INTO `kxt8_system_settings` VALUES ('smtp_username','you@example.com');

INSERT INTO `kxt8_system_settings` VALUES ('reload_emailsubject','');

INSERT INTO `kxt8_system_settings` VALUES ('emailsubject','Данные для авторизации');

INSERT INTO `kxt8_system_settings` VALUES ('emailsubject_default','Данные для авторизации');

INSERT INTO `kxt8_system_settings` VALUES ('reload_signupemail_message','');

INSERT INTO `kxt8_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `kxt8_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `kxt8_system_settings` VALUES ('reload_websignupemail_message','');

INSERT INTO `kxt8_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `kxt8_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `kxt8_system_settings` VALUES ('reload_system_email_webreminder_message','');

INSERT INTO `kxt8_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `kxt8_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `kxt8_system_settings` VALUES ('manager_theme_mode','3');

INSERT INTO `kxt8_system_settings` VALUES ('login_logo','');

INSERT INTO `kxt8_system_settings` VALUES ('login_bg','');

INSERT INTO `kxt8_system_settings` VALUES ('login_form_position','left');

INSERT INTO `kxt8_system_settings` VALUES ('login_form_style','dark');

INSERT INTO `kxt8_system_settings` VALUES ('manager_menu_position','top');

INSERT INTO `kxt8_system_settings` VALUES ('tree_page_click','27');

INSERT INTO `kxt8_system_settings` VALUES ('use_breadcrumbs','0');

INSERT INTO `kxt8_system_settings` VALUES ('global_tabs','1');

INSERT INTO `kxt8_system_settings` VALUES ('group_tvs','0');

INSERT INTO `kxt8_system_settings` VALUES ('resource_tree_node_name','pagetitle');

INSERT INTO `kxt8_system_settings` VALUES ('session_timeout','15');

INSERT INTO `kxt8_system_settings` VALUES ('tree_show_protected','0');

INSERT INTO `kxt8_system_settings` VALUES ('datepicker_offset','-10');

INSERT INTO `kxt8_system_settings` VALUES ('number_of_logs','100');

INSERT INTO `kxt8_system_settings` VALUES ('number_of_messages','40');

INSERT INTO `kxt8_system_settings` VALUES ('which_editor','TinyMCE4');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_theme','custom');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_skin','lightgray');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_skintheme','inlite');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_template_docs','');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_template_chunks','');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_entermode','p');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_element_format','xhtml');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_schema','html5');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_custom_buttons3','');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_custom_buttons4','');

INSERT INTO `kxt8_system_settings` VALUES ('tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

INSERT INTO `kxt8_system_settings` VALUES ('allow_eval','with_scan');

INSERT INTO `kxt8_system_settings` VALUES ('safe_functions_at_eval','time,date,strtotime,strftime');

INSERT INTO `kxt8_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');

INSERT INTO `kxt8_system_settings` VALUES ('validate_referer','1');

INSERT INTO `kxt8_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/evocms-security-news');

INSERT INTO `kxt8_system_settings` VALUES ('error_reporting','1');

INSERT INTO `kxt8_system_settings` VALUES ('send_errormail','0');

INSERT INTO `kxt8_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');

INSERT INTO `kxt8_system_settings` VALUES ('reload_captcha_words','');

INSERT INTO `kxt8_system_settings` VALUES ('captcha_words','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `kxt8_system_settings` VALUES ('captcha_words_default','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `kxt8_system_settings` VALUES ('filemanager_path','C:/xampp/htdocs/tw_dmy3yy/');

INSERT INTO `kxt8_system_settings` VALUES ('upload_files','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg,tpl');

INSERT INTO `kxt8_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg');

INSERT INTO `kxt8_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');

INSERT INTO `kxt8_system_settings` VALUES ('upload_flash','fla,flv,swf');

INSERT INTO `kxt8_system_settings` VALUES ('new_file_permissions','0644');

INSERT INTO `kxt8_system_settings` VALUES ('new_folder_permissions','0755');

INSERT INTO `kxt8_system_settings` VALUES ('which_browser','mcpuk');

INSERT INTO `kxt8_system_settings` VALUES ('rb_webuser','0');

INSERT INTO `kxt8_system_settings` VALUES ('rb_base_dir','C:/xampp/htdocs/tw_dmy3yy/assets/');

INSERT INTO `kxt8_system_settings` VALUES ('rb_base_url','assets/');

INSERT INTO `kxt8_system_settings` VALUES ('clean_uploaded_filename','1');

INSERT INTO `kxt8_system_settings` VALUES ('strip_image_paths','1');

INSERT INTO `kxt8_system_settings` VALUES ('maxImageWidth','2600');

INSERT INTO `kxt8_system_settings` VALUES ('maxImageHeight','2200');

INSERT INTO `kxt8_system_settings` VALUES ('clientResize','0');

INSERT INTO `kxt8_system_settings` VALUES ('noThumbnailsRecreation','0');

INSERT INTO `kxt8_system_settings` VALUES ('thumbWidth','150');

INSERT INTO `kxt8_system_settings` VALUES ('thumbHeight','150');

INSERT INTO `kxt8_system_settings` VALUES ('thumbsDir','.thumbs');

INSERT INTO `kxt8_system_settings` VALUES ('jpegQuality','90');

INSERT INTO `kxt8_system_settings` VALUES ('denyZipDownload','0');

INSERT INTO `kxt8_system_settings` VALUES ('denyExtensionRename','0');

INSERT INTO `kxt8_system_settings` VALUES ('showHiddenFiles','0');

INSERT INTO `kxt8_system_settings` VALUES ('lang_code','ru');

INSERT INTO `kxt8_system_settings` VALUES ('sys_files_checksum','a:4:{s:35:\"C:/xampp/htdocs/tw_dmy3yy/index.php\";s:32:\"2f6a89952c4b21dd233f0dcb2408d3e7\";s:35:\"C:/xampp/htdocs/tw_dmy3yy/.htaccess\";s:32:\"b12739e14a9d18d7090427db01bd4021\";s:43:\"C:/xampp/htdocs/tw_dmy3yy/manager/index.php\";s:32:\"89262755b0e2b7ca727e59ba268f0c33\";s:57:\"C:/xampp/htdocs/tw_dmy3yy/manager/includes/config.inc.php\";s:32:\"e6526c9385ebf9296335d41d8415fdc1\";}');


# --------------------------------------------------------

#
# Table structure for table `kxt8_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT 0,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(10) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT 0,
  `gender` int(1) NOT NULL DEFAULT 0 COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text DEFAULT NULL,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `kxt8_user_attributes`
#

INSERT INTO `kxt8_user_attributes` VALUES ('1','1','Admin','1','zeeynnik@gmail.com','','','0','0','0','1','0','1556034019','0','sih9ka1p449geb15fjknqds5kp','0','0','','','','','','','','','0','0');


# --------------------------------------------------------

#
# Table structure for table `kxt8_user_messages`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_user_messages`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text DEFAULT NULL,
  `sender` int(10) NOT NULL DEFAULT 0,
  `recipient` int(10) NOT NULL DEFAULT 0,
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `postdate` int(20) NOT NULL DEFAULT 0,
  `messageread` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `kxt8_user_messages`
#

INSERT INTO `kxt8_user_messages` VALUES ('1','Message','фыв','вывывывыв','1','1','1','1556441652','1');


# --------------------------------------------------------

#
# Table structure for table `kxt8_user_roles`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_user_roles`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT 0,
  `home` int(1) NOT NULL DEFAULT 0,
  `view_document` int(1) NOT NULL DEFAULT 0,
  `new_document` int(1) NOT NULL DEFAULT 0,
  `save_document` int(1) NOT NULL DEFAULT 0,
  `publish_document` int(1) NOT NULL DEFAULT 0,
  `delete_document` int(1) NOT NULL DEFAULT 0,
  `empty_trash` int(1) NOT NULL DEFAULT 0,
  `action_ok` int(1) NOT NULL DEFAULT 0,
  `logout` int(1) NOT NULL DEFAULT 0,
  `help` int(1) NOT NULL DEFAULT 0,
  `messages` int(1) NOT NULL DEFAULT 0,
  `new_user` int(1) NOT NULL DEFAULT 0,
  `edit_user` int(1) NOT NULL DEFAULT 0,
  `logs` int(1) NOT NULL DEFAULT 0,
  `edit_parser` int(1) NOT NULL DEFAULT 0,
  `save_parser` int(1) NOT NULL DEFAULT 0,
  `edit_template` int(1) NOT NULL DEFAULT 0,
  `settings` int(1) NOT NULL DEFAULT 0,
  `credits` int(1) NOT NULL DEFAULT 0,
  `new_template` int(1) NOT NULL DEFAULT 0,
  `save_template` int(1) NOT NULL DEFAULT 0,
  `delete_template` int(1) NOT NULL DEFAULT 0,
  `edit_snippet` int(1) NOT NULL DEFAULT 0,
  `new_snippet` int(1) NOT NULL DEFAULT 0,
  `save_snippet` int(1) NOT NULL DEFAULT 0,
  `delete_snippet` int(1) NOT NULL DEFAULT 0,
  `edit_chunk` int(1) NOT NULL DEFAULT 0,
  `new_chunk` int(1) NOT NULL DEFAULT 0,
  `save_chunk` int(1) NOT NULL DEFAULT 0,
  `delete_chunk` int(1) NOT NULL DEFAULT 0,
  `empty_cache` int(1) NOT NULL DEFAULT 0,
  `edit_document` int(1) NOT NULL DEFAULT 0,
  `change_password` int(1) NOT NULL DEFAULT 0,
  `error_dialog` int(1) NOT NULL DEFAULT 0,
  `about` int(1) NOT NULL DEFAULT 0,
  `category_manager` int(1) NOT NULL DEFAULT 0,
  `file_manager` int(1) NOT NULL DEFAULT 0,
  `assets_files` int(1) NOT NULL DEFAULT 0,
  `assets_images` int(1) NOT NULL DEFAULT 0,
  `save_user` int(1) NOT NULL DEFAULT 0,
  `delete_user` int(1) NOT NULL DEFAULT 0,
  `save_password` int(11) NOT NULL DEFAULT 0,
  `edit_role` int(1) NOT NULL DEFAULT 0,
  `save_role` int(1) NOT NULL DEFAULT 0,
  `delete_role` int(1) NOT NULL DEFAULT 0,
  `new_role` int(1) NOT NULL DEFAULT 0,
  `access_permissions` int(1) NOT NULL DEFAULT 0,
  `bk_manager` int(1) NOT NULL DEFAULT 0,
  `new_plugin` int(1) NOT NULL DEFAULT 0,
  `edit_plugin` int(1) NOT NULL DEFAULT 0,
  `save_plugin` int(1) NOT NULL DEFAULT 0,
  `delete_plugin` int(1) NOT NULL DEFAULT 0,
  `new_module` int(1) NOT NULL DEFAULT 0,
  `edit_module` int(1) NOT NULL DEFAULT 0,
  `save_module` int(1) NOT NULL DEFAULT 0,
  `delete_module` int(1) NOT NULL DEFAULT 0,
  `exec_module` int(1) NOT NULL DEFAULT 0,
  `view_eventlog` int(1) NOT NULL DEFAULT 0,
  `delete_eventlog` int(1) NOT NULL DEFAULT 0,
  `new_web_user` int(1) NOT NULL DEFAULT 0,
  `edit_web_user` int(1) NOT NULL DEFAULT 0,
  `save_web_user` int(1) NOT NULL DEFAULT 0,
  `delete_web_user` int(1) NOT NULL DEFAULT 0,
  `web_access_permissions` int(1) NOT NULL DEFAULT 0,
  `view_unpublished` int(1) NOT NULL DEFAULT 0,
  `import_static` int(1) NOT NULL DEFAULT 0,
  `export_static` int(1) NOT NULL DEFAULT 0,
  `remove_locks` int(1) NOT NULL DEFAULT 0,
  `display_locks` int(1) NOT NULL DEFAULT 0,
  `change_resourcetype` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `kxt8_user_roles`
#

INSERT INTO `kxt8_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','0','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','0','1','1','1');

INSERT INTO `kxt8_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','0','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','1','1','1','1','0','1','0','0','1','1','1');

INSERT INTO `kxt8_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');


# --------------------------------------------------------

#
# Table structure for table `kxt8_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text DEFAULT NULL,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `kxt8_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_web_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_web_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT 0,
  `webuser` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `kxt8_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_web_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_web_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT 0,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(10) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT 0,
  `gender` int(1) NOT NULL DEFAULT 0 COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text DEFAULT NULL,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `kxt8_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_web_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_web_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text DEFAULT NULL,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `kxt8_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_web_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_web_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `kxt8_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_webgroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_webgroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT 0,
  `documentgroup` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `kxt8_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `kxt8_webgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `kxt8_webgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `kxt8_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `kxt8_webgroup_names`
#
