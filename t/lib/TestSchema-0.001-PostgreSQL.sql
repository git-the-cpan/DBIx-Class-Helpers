-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Sun Apr  6 11:43:38 2014
-- 
--
-- Table: HasDateOps.
--
DROP TABLE "HasDateOps" CASCADE;
CREATE TABLE "HasDateOps" (
  "id" integer NOT NULL,
  "a_date" timestamp NOT NULL,
  "b_date" timestamp,
  PRIMARY KEY ("id")
);

