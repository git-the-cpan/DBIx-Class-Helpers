-- 
-- Created by SQL::Translator::Producer::MySQL
-- Created on Tue Mar  4 08:31:41 2014
-- 
SET foreign_key_checks=0;

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

