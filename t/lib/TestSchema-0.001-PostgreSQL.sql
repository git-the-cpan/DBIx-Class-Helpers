-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Sat May 16 11:47:16 2015
-- 
--
-- Table: Gnarly.
--
DROP TABLE "Gnarly" CASCADE;
CREATE TABLE "Gnarly" (
  "id" integer NOT NULL,
  "name" character varying NOT NULL,
  "literature" text,
  "your_mom" bytea,
  PRIMARY KEY ("id")
);

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

