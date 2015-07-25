-- 
-- Created by SQL::Translator::Producer::Oracle
-- Created on Sat Jul 25 01:20:47 2015
-- 
--
-- Table: Gnarly
--;

DROP TABLE "Gnarly" CASCADE CONSTRAINTS;

CREATE TABLE "Gnarly" (
  "id" number NOT NULL,
  "name" varchar2(4000) NOT NULL,
  "literature" clob,
  "your_mom" blob,
  PRIMARY KEY ("id")
);

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

