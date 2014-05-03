-- 
-- Created by SQL::Translator::Generator::Role::DDL
-- Created on Sat May  3 10:39:33 2014
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
