-- 
-- Created by SQL::Translator::Generator::Role::DDL
-- Created on Sun Apr  6 11:43:38 2014
-- 


--
-- Table: [HasDateOps]
--
CREATE TABLE [HasDateOps] (
  [id] int NOT NULL,
  [a_date] datetime NOT NULL,
  [b_date] datetime NULL,
  CONSTRAINT [HasDateOps_pk] PRIMARY KEY ([id])
);
