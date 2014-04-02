-- 
-- Created by SQL::Translator::Generator::Role::DDL
-- Created on Tue Apr  1 20:12:42 2014
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
