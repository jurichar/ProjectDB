

-- DROP


DROP TABLE IF EXISTS Athlete CASCADE;
DROP TABLE IF EXISTS Pays CASCADE;
DROP TABLE IF EXISTS Epreuve CASCADE;
DROP TABLE IF EXISTS Categorie_Sport CASCADE;
DROP TABLE IF EXISTS Resultat CASCADE;
DROP TABLE IF EXISTS Date CASCADE;


-- CREATION


CREATE TABLE Athlete
(
  id_athlete SERIAL PRIMARY KEY,
  id_sport INT,
  FOREIGN KEY (id_sport) REFERENCES Sport(id_sport),
  nom VARCHAR(255),
  genre VARCHAR(255),
  age INT,
  pays VARCHAR(255)
);

CREATE TABLE Team
(
  id_team SERIAL PRIMARY KEY,
  id_sport INT,
  FOREIGN KEY (id_sport) REFERENCES Sport(id_sport),
  nom VARCHAR(255),
  genre VARCHAR(255),
  pays VARCHAR(255),
)

CREATE TABLE Membre
(
  id_athlete int,
  FOREIGN KEY (id_athlete) REFERENCES Athlete(id_athlete),
  id_team int,
  FOREIGN KEY (id_team) REFERENCES Team(id_team),
  PRIMARY KEY (id_athlete, id_team)
)

CREATE TABLE Participant
(
  id_particpant SERIAL PRIMARY KEY,
  id_athlete int,
  FOREIGN KEY (id_athlete) REFERENCES Athlete(id_athlete),
  id_team int,
  FOREIGN KEY (id_team) REFERENCES Team(id_team),
);

CREATE TABLE Sport
(
  id_sport SERIAL PRIMARY KEY,
  nom VARCHAR(255),
  categorie VARCHAR(255),
  multi VARCHAR(255)
);

CREATE TABLE Event
(
  id_event SERIAL PRIMARY KEY,
  id_sport INT;
  FOREIGN KEY (id_sport) REFERENCES Sport(id_sport),
  id_particpant INT;
  FOREIGN KEY (id_particpant) REFERENCES ,
  date DATE
);

CREATE TABLE Resultat
(
  id_resultat SERIAL PRIMARY KEY,
  id_medaille INT,
  FOREIGN KEY (id_medaille) REFERENCES Medaille(id_medaille),
  id_event INT,
  FOREIGN KEY (id_event) REFERENCES Event(id_event),
  temps TIME,
  score VARCHAR(11),
);

CREATE TABLE Medaille
(
  id_medaille SERIAL PRIMARY KEY,
  type VARCHAR(255)
);


-- INSERTION


INSERT INTO Athlete (id_sport,nom,genre,age,pays) VALUES
(,'Michael Phelps','M',33,''),
(,'Peter Dupont','M',22,''),
(,'Jeanne Muller','F',35,''),
(,'Julie Lebron','F',31,''),
(,'Bruce Lebron','M',34,''),
(,'Marie Murphy','F',29,''),
(,'Sabine Smirnov','F',33,''),
(,'Sabine Zhang','F',26,''),
(,'Thomas Lebron','M',29,''),
(,'Julie Murphy','F',30,''),
(,'Kobe Smirnov','M',30,''),
(,'Sabine Gonzalez','F',29,''),
(,'Will Simpson','M',35,''),
(,'Thomas Berger','M',21,''),
(,'Brigitte Smirnov','F',34,''),
(,'Ariana Nguyen','F',25,''),
(,'Aldana Simpson','M',26,''),
(,'Hind Dupont','F',30,''),
(,'Eva Roosvelt','F',21,''),
(,'Nemo Berger','M',29,''),
(,'Hind Muller','F',26,''),
(,'James Muller','M',33,''),
(,'Morena Smith','F',28,''),
(,'James Smith','M',31,''),
(,'Salima Perez','F',32,''),
(,'Peter Hernandez','M',23,''),
(,'Peter Dupont','M',23,''),
(,'Jeanne Smith','F',34,''),
(,'Will Perez','M',27,''),
(,'Marie Gonzalez','F',35,''),
(,'Salima Simpson','F',26,''),
(,'Eva Nguyen','F',30,''),
(,'Eva Dupont','F',27,''),
(,'Julie Simpson','F',22,''),
(,'Morena Berger','F',30,''),
(,'Lee Perez','M',25,''),
(,'Julie Hernandez','F',26,''),
(,'Ariana Smirnov','F',21,''),
(,'Donald Garcia','M',26,''),
(,'Laure Lebron','F',21,''),
(,'Thomas Gonzalez','M',21,''),
(,'Thomas Perez','M',31,''),
(,'Fred Garcia','M',30,''),
(,'Aldana Perez','M',25,''),
(,'Kobe Hernandez','M',25,''),
(,'Julie Hernandez','F',24,''),
(,'Aldana Hernandez','M',30,''),
(,'Hind Smirnov','F',33,''),
(,'Fred Roosvelt','M',33,''),
(,'Laure Simpson','F',29,''),
(,'Ariana Muller','F',25,''),
(,'Jeanne Garcia','F',21,''),
(,'Salima Roosvelt','F',35,''),
(,'Hind Simpson','F',32,''),
(,'Jeanne Silva','F',21,''),
(,'Marie Berger','F',32,''),
(,'Brigitte Nguyen','F',28,''),
(,'Marie Hernandez','F',31,''),
(,'Salima Berger','F',35,''),
(,'Eva Nguyen','F',21,''),
(,'Donald Zhang','M',29,''),
(,'Kobe Smith','M',23,''),
(,'Brigitte Bryan','F',35,''),
(,'Hind Bryan','F',25,''),
(,'Hind Silva','F',34,''),
(,'James Nguyen','M',20,''),
(,'Arthur Silva','M',24,''),
(,'Jeanne Zhang','F',24,''),
(,'Peter Smirnov','M',26,''),
(,'Julien Lebron','M',21,''),
(,'Sabine Bryan','F',23,''),
(,'Morena Muller','F',24,''),
(,'Arthur Silva','M',20,''),
(,'Arthur Berger','M',30,''),
(,'Laure Murphy','F',27,''),
(,'James Silva','M',22,''),
(,'Fred Murphy','M',31,''),
(,'Aldana Smith','M',32,''),
(,'Aldana Berger','M',25,''),
(,'Julien Simpson','M',20,''),
(,'Donald Smith','M',34,''),
(,'Fred Muller','M',33,''),
(,'Kobe Simpson','M',25,''),
(,'James Murphy','M',25,''),
(,'Eva Smith','F',20,''),
(,'Donald Perez','M',30,''),
(,'Bruce Dupont','M',32,''),
(,'Jeanne Hernandez','F',34,''),
(,'Julien Lebron','M',29,''),
(,'Donald Dupont','M',21,''),
(,'Brigitte Roosvelt','F',23,''),
(,'Ariana Berger','F',31,''),
(,'Jeanne Murphy','F',22,''),
(,'Bruce Gonzalez','M',22,''),
(,'Arthur Murphy','M',24,''),
(,'Leana Smirnov','F',26,''),
(,'Bruce Berger','M',27,''),
(,'Sabine Berger','F',21,''),
(,'Julien Silva','M',23,''),
(,'Salima Zhang','F',28,''),
(,'Arthur Gonzalez','M',25,'');

INSERT INTO Team (id_sport,nom,genre,pays) VALUES
(,'','',''),
(,'','','');

INSERT INTO Membre (id_athlete, id_team) VALUES
(,),
(,);

INSERT INTO Participant (id_athlete, id_team) VALUES
(,),
(,);

INSERT INTO Sport (nom, categorie, multi) VALUES
('','',''),
('','','');

INSERT INTO Event (id_sport, id_particpant, date) VALUES
(,,DATE '2015-12-17'),
(,,DATE '2015-12-17');

INSERT INTO Resultat (id_medaille, id_event, temps, score) VALUES
(,,'00:00',''),
(,,'00:00','');

INSERT INTO Medaille (type) VALUES
('NUL'),
('BRONZE'),
('ARGENT'),
('OR');
