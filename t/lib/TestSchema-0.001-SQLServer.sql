-- 
-- Created by SQL::Translator::Generator::Role::DDL
-- Created on Sat Jun 14 12:39:09 2014
-- 


--
-- Table: [Gnarly]
--
CREATE TABLE [Gnarly] (
  [id] int NOT NULL,
  [name] varchar NOT NULL,
  [literature] text NULL,
  [your_mom] blob NULL,
  CONSTRAINT [Gnarly_pk] PRIMARY KEY ([id])
);


--
-- Table: [HasDateOps]
--
CREATE TABLE [HasDateOps] (
  [id] int NOT NULL,
  [a_date] datetime NOT NULL,
  [b_date] datetime NULL,
  CONSTRAINT [HasDateOps_pk] PRIMARY KEY ([id])
);
