-- 
-- Created by SQL::Translator::Generator::Role::DDL
-- Created on Tue Mar  4 08:31:41 2014
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
