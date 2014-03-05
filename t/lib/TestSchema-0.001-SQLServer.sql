-- 
-- Created by SQL::Translator::Generator::Role::DDL
-- Created on Wed Mar  5 10:33:51 2014
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
