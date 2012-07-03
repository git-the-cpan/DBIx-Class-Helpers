-- 
-- Created by SQL::Translator::Producer::SQLite
-- Created on Tue Jul  3 08:34:23 2012
-- 

BEGIN TRANSACTION;

--
-- Table: Bloaty
--
DROP TABLE Bloaty;

CREATE TABLE Bloaty (
  id  NOT NULL,
  name  NOT NULL,
  literature text,
  your_mom blob,
  PRIMARY KEY (id)
);

--
-- Table: Gnarly
--
DROP TABLE Gnarly;

CREATE TABLE Gnarly (
  id  NOT NULL,
  name  NOT NULL,
  literature text,
  your_mom blob,
  PRIMARY KEY (id)
);

--
-- Table: Station
--
DROP TABLE Station;

CREATE TABLE Station (
  id  NOT NULL,
  name  NOT NULL,
  PRIMARY KEY (id)
);

--
-- Table: Bar
--
DROP TABLE Bar;

CREATE TABLE Bar (
  id INTEGER PRIMARY KEY NOT NULL,
  foo_id  NOT NULL,
  FOREIGN KEY (foo_id) REFERENCES Foo(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX Bar_idx_foo_id ON Bar (foo_id);

--
-- Table: Foo
--
DROP TABLE Foo;

CREATE TABLE Foo (
  id  NOT NULL,
  bar_id integer NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (bar_id) REFERENCES Bar(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX Foo_idx_bar_id ON Foo (bar_id);

--
-- Table: Foo_Bar
--
DROP TABLE Foo_Bar;

CREATE TABLE Foo_Bar (
  foo_id  NOT NULL,
  bar_id integer(12) NOT NULL,
  PRIMARY KEY (foo_id, bar_id),
  FOREIGN KEY (bar_id) REFERENCES Bar(id),
  FOREIGN KEY (foo_id) REFERENCES Foo(id)
);

CREATE INDEX Foo_Bar_idx_bar_id ON Foo_Bar (bar_id);

CREATE INDEX Foo_Bar_idx_foo_id ON Foo_Bar (foo_id);

--
-- Table: Gnarly_Station
--
DROP TABLE Gnarly_Station;

CREATE TABLE Gnarly_Station (
  gnarly_id integer NOT NULL,
  station_id integer NOT NULL,
  PRIMARY KEY (gnarly_id, station_id),
  FOREIGN KEY (gnarly_id) REFERENCES Gnarly(id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (station_id) REFERENCES Station(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX Gnarly_Station_idx_gnarly_id ON Gnarly_Station (gnarly_id);

CREATE INDEX Gnarly_Station_idx_station_id ON Gnarly_Station (station_id);

COMMIT;
