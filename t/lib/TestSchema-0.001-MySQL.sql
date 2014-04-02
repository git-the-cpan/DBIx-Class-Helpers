-- 
-- Created by SQL::Translator::Producer::MySQL
-- Created on Tue Apr  1 20:12:42 2014
-- 
SET foreign_key_checks=0;

DROP TABLE IF EXISTS `HasDateOps`;

--
-- Table: `HasDateOps`
--
CREATE TABLE `HasDateOps` (
  `id` integer NOT NULL,
  `a_date` datetime NOT NULL,
  `b_date` datetime NULL,
  PRIMARY KEY (`id`)
);

SET foreign_key_checks=1;

