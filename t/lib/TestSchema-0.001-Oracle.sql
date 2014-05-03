-- 
-- Created by SQL::Translator::Producer::Oracle
-- Created on Sat May  3 10:39:33 2014
-- 
--
-- Table: HasDateOps
--;

DROP TABLE "HasDateOps" CASCADE CONSTRAINTS;

CREATE TABLE "HasDateOps" (
  "id" number NOT NULL,
  "a_date" date NOT NULL,
  "b_date" date,
  PRIMARY KEY ("id")
);

/

