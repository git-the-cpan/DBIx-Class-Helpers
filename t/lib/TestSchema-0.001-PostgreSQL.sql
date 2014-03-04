-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Tue Mar  4 08:31:41 2014
-- 
--
-- Table: HasDateOps.
--
CREATE TABLE "HasDateOps" (
  "id" integer NOT NULL,
  "a_date" timestamp NOT NULL,
  "b_date" timestamp,
  PRIMARY KEY ("id")
);

