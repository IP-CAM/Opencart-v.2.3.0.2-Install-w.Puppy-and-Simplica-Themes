DROP TABLE IF EXISTS `smenu`;

CREATE TABLE `smenu` (
  `smenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `smenu_status` tinyint(1) NOT NULL,
  `name` tinytext NOT NULL,
  `template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smenu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `smenu_items`;

CREATE TABLE `smenu_items` (
  `smenu_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `smenu_order` int(11) NOT NULL,
  `smenu_parent` int(11) NOT NULL,
  `smenu_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `type_name` text NOT NULL,
  PRIMARY KEY (`smenu_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `smenu_links`;

CREATE TABLE `smenu_links` (
  `smenu_items_id` int(11) NOT NULL,
  `smenu_text` varchar(64) NOT NULL,
  `smenu_title` varchar(64) NOT NULL,
  `smenu_language_id` int(11) NOT NULL,
  `smenu_id` int(11) NOT NULL,
  UNIQUE KEY `smenu_items_id_3` (`smenu_items_id`,`smenu_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `stock_status`;

CREATE TABLE `stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

