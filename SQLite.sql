CREATE TABLE typeofbody
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(20)
);
CREATE TABLE sideofengine
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  side varchar(50)
);
CREATE TABLE techdata
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  seats INTEGER,
  doors INTEGER,
  typeofbody_id INTEGER,
  sideofengine_id INTEGER,
  FOREIGN KEY (typeofbody_id) REFERENCES typeofbody (id),
  FOREIGN KEY (sideofengine_id) REFERENCES sideofengine (id)
);
CREATE TABLE marks
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(50)
);
CREATE TABLE country
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(50)
);
CREATE TABLE car
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  price INTEGER,
  counts INTEGER,
  mark_id INTEGER,
  country_id INTEGER,
  techdata_id INTEGER,
  FOREIGN key (mark_id) REFERENCES marks (id),
  FOREIGN KEY (country_id) REFERENCES country (id),
  FOREIGN KEY (techdata_id) REFERENCES techdata (id)
);



