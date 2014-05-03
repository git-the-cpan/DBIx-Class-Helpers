-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Sat May  3 10:39:33 2014
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

