-- DROP

DROP TABLE IF EXISTS Athlete;
DROP TABLE IF EXISTS Pays;
DROP TABLE IF EXISTS Epreuve;
DROP TABLE IF EXISTS Categorie_Sport;
DROP TABLE IF EXISTS Resultat;
DROP TABLE IF EXISTS Date;



-- CREATION



CREATE TABLE Athlete
(
id SERIAL PRIMARY KEY,
id_pays INT,
FOREIGN KEY (id_pays) REFERENCES Pays(id),
nom VARCHAR(100),
genre VARCHAR(100),
age INT,
discipline VARCHAR(100),
FOREIGN KEY (discipline) REFERENCES Epreuve(nom)
);

CREATE TABLE Pays
(
id SERIAL PRIMARY KEY,
nom VARCHAR(100)
);

CREATE TABLE Categorie_Sport
(
id SERIAL PRIMARY KEY,
nom VARCHAR(100),
nbr_epreuve INT
);


CREATE TABLE Epreuve
(
id SERIAL PRIMARY KEY,
nom VARCHAR(100),
solo_multi VARCHAR(100),
date DATE,
FOREIGN KEY (date) REFERENCES Date(date),
heure TIME,
FOREIGN KEY (heure) REFERENCES Date(heure),
categorie VARCHAR(100),
FOREIGN KEY (categorie) REFERENCES Categorie_Sport(id)
);

CREATE TABLE Resultat
(
id SERIAL PRIMARY KEY,
epreuve VARCHAR(100),
FOREIGN KEY (epreuve) REFERENCES Epreuve(nom),
gagnant VARCHAR(100),
FOREIGN KEY (epreuve) REFERENCES Athlete(nom),
medaille VARCHAR(100),
score INT,
temps TIME
);

CREATE TABLE Date
(
id SERIAL PRIMARY KEY,
date DATE,
heure TIME
);



-- INSERTION



INSERT INTO Athlete (id_pays,nom,genre,age,discipline) VALUES
(1,'Bob','M',38,'Athletisme');

INSERT INTO Categorie_Sport (nom, nbr_epreuve) VALUES
('Athletisme',1),
('Aviron',1),
('Badminton',1),
('Basket-ball',1),
('Boxe',1),
('Canoe-kayak',2),
('Cyclisme',4),
('Equitation',3),
('Escrime',1),
('Football',1),
('Golf',1),
('Gymnastique',3),
('Halterophilie',1),
('Handball',1),
('Hockey sur gazon',1),
('Judo',1),
('Lutte',2),
('Sports aquatique',4),
('Pentathlon moderne',1),
('Rugby a sept',1),
('Taekwondo',1),
('Tennis',1),
('Tennis de table',1),
('Tir',3),
('Tir a larc',1),
('Triathlon',1),
('Voile',1),
('Volley-ball',2);


INSERT INTO Pays (nom) VALUES -- On ne prend que les pays avec 50 ou plus athletes.
-- AFRIQUE
('Afrique du Sud'),
('Algerie'),
('Egypte'),
('Kenya'),
('Maroc'),
('Nigeria'),
('Tunisie'),
-- AMERIQUES
('Argentine'),
('Bresil'),
('Canada'),
('Colombie'),
('Cuba'),
('Etats-Unis'),
('Jamaique'),
('Mexique'),
('Venezuela'),
-- ASIE
('Chine'),
('Coree du Sud'),
('Inde'),
('Iran'),
('Israel'),
('Japon'),
('Kazakhstan'),
('Ouzbékistan'),
('Taipei Chinois'),
('Thailande'),
-- EUROPE
('Allemagne'),
('Autriche'),
('Azerbaidjan'),
('Belgique'),
('Bielorussie'),
('Bulgarie'),
('Croatie'),
('Danemark'),
('Estonie'),
('Espagne'),
('Finlande'),
('France'),
('Grande Bretagne'),
('Grece'),
('Hongrie'),
('Irlande'),
('Italie'),
('Lituanie'),
('Norvege'),
('Pays Bas'),
('Pologne'),
('Portugal'),
('Republique tcheque'),
('Roumanie'),
('Russie'),
('Serbie'),
('Slovaquie'),
('Slovenie'),
('Suede'),
('Suisse'),
('Turquie'),
('Ukraine'),
-- OCEANIE
('Australie'),
('Fidji'),
('Nouvelle Zelande');


INSERT INTO Epreuve (nom ,solo_multi,date,,categorie) VALUES --Dates pas insérées 
('Athletisme','solo',2016-08-12,'Athletisme'),
('Athletisme','solo',2016-08-13,'Athletisme'),
('Athletisme','solo',2016-08-14,'Athletisme'),
('Athletisme','solo',2016-08-15,'Athletisme'),
('Athletisme','solo',2016-08-16,'Athletisme'),
('Athletisme','solo',2016-08-17,'Athletisme'),
('Athletisme','solo',2016-08-18,'Athletisme'),
('Athletisme','solo',2016-08-19,'Athletisme'),
('Athletisme','solo',2016-08-20,'Athletisme'),
('Athletisme','solo',2016-08-21,'Athletisme'),
('Aviron','solo',2016-08-06,'Aviron'),
('Aviron','solo',2016-08-07,'Aviron'),
('Aviron','solo',2016-08-08,'Aviron'),
('Aviron','solo',2016-08-09,'Aviron'),
('Aviron','solo',2016-08-10,'Aviron'),
('Aviron','solo',2016-08-11,'Aviron'),
('Aviron','solo',2016-08-12,'Aviron'),
('Aviron','solo',2016-08-13,'Aviron'),
('Badminton','solo/multi',2016-08-11,'Badminton'),
('Badminton','solo/multi',2016-08-12,'Badminton'),
('Badminton','solo/multi',2016-08-13,'Badminton'),
('Badminton','solo/multi',2016-08-14,'Badminton'),
('Badminton','solo/multi',2016-08-15,'Badminton'),
('Badminton','solo/multi',2016-08-16,'Badminton'),
('Badminton','solo/multi',2016-08-17,'Badminton'),
('Badminton','solo/multi',2016-08-18,'Badminton'),
('Badminton','solo/multi',2016-08-19,'Badminton'),
('Badminton','solo/multi',2016-08-20,'Badminton'),
('Basket-ball','multi',2016-08-06,'Basket-ball'),
('Basket-ball','multi',2016-08-07,'Basket-ball'),
('Basket-ball','multi',2016-08-08,'Basket-ball'),
('Basket-ball','multi',2016-08-09,'Basket-ball'),
('Basket-ball','multi',2016-08-10,'Basket-ball'),
('Basket-ball','multi',2016-08-11,'Basket-ball'),
('Basket-ball','multi',2016-08-12,'Basket-ball'),
('Basket-ball','multi',2016-08-13,'Basket-ball'),
('Basket-ball','multi',2016-08-14,'Basket-ball'),
('Basket-ball','multi',2016-08-15,'Basket-ball'),
('Basket-ball','multi',2016-08-16,'Basket-ball'),
('Basket-ball','multi',2016-08-17,'Basket-ball'),
('Basket-ball','multi',2016-08-18,'Basket-ball'),
('Basket-ball','multi',2016-08-19,'Basket-ball'),
('Basket-ball','multi',2016-08-20,'Basket-ball'),
('Basket-ball','multi',2016-08-21,'Basket-ball'),
('Boxe','solo',2016-08-06,'Boxe'),
('Boxe','solo',2016-08-07,'Boxe'),
('Boxe','solo',2016-08-08,'Boxe'),
('Boxe','solo',2016-08-09,'Boxe'),
('Boxe','solo',2016-08-10,'Boxe'),
('Boxe','solo',2016-08-11,'Boxe'),
('Boxe','solo',2016-08-12,'Boxe'),
('Boxe','solo',2016-08-13,'Boxe'),
('Boxe','solo',2016-08-14,'Boxe'),
('Boxe','solo',2016-08-15,'Boxe'),
('Boxe','solo',2016-08-16,'Boxe'),
('Boxe','solo',2016-08-17,'Boxe'),
('Boxe','solo',2016-08-18,'Boxe'),
('Boxe','solo',2016-08-19,'Boxe'),
('Boxe','solo',2016-08-20,'Boxe'),
('Boxe','solo',2016-08-21,'Boxe'),
('Course_en_ligne','solo/multi',2016-08-15,'Canoe-kayak'),
('Course_en_ligne','solo/multi',2016-08-16,'Canoe-kayak'),
('Course_en_ligne','solo/multi',2016-08-17,'Canoe-kayak'),
('Course_en_ligne','solo/multi',2016-08-18,'Canoe-kayak'),
('Course_en_ligne','solo/multi',2016-08-19,'Canoe-kayak'),
('Course_en_ligne','solo/multi',2016-08-20,'Canoe-kayak'),
('Slalom','solo/multi',2016-08-07,'Canoe-kayak'),
('Slalom','solo/multi',2016-08-08,'Canoe-kayak'),
('Slalom','solo/multi',2016-08-09,'Canoe-kayak'),
('Slalom','solo/multi',2016-08-10,'Canoe-kayak'),
('Slalom','solo/multi',2016-08-11,'Canoe-kayak'),
('Cyclisme_sur_route','solo',2016-08-06,'Cyclisme'),
('Cyclisme_sur_route','solo',2016-08-07,'Cyclisme'),
('Cyclisme_sur_route','solo',2016-08-10,'Cyclisme'),
('Cyclisme_sur_piste','solo',2016-08-11,'Cyclisme'),
('Cyclisme_sur_piste','solo',2016-08-12,'Cyclisme'),
('Cyclisme_sur_piste','solo',2016-08-13,'Cyclisme'),
('Cyclisme_sur_piste','solo',2016-08-14,'Cyclisme'),
('Cyclisme_sur_piste','solo',2016-08-15,'Cyclisme'),
('Cyclisme_sur_piste','solo',2016-08-16,'Cyclisme'),
('VTT','solo',2016-08-20,'Cyclisme'),
('VTT','solo',2016-08-21,'Cyclisme'),
('BMX','solo',2016-08-17,'Cyclisme'),
('BMX','solo',2016-08-18,'Cyclisme'),
('BMX','solo',2016-08-19,'Cyclisme'),
('Saut_obstacles','solo',2016-08-06,'Equitation'),
('Saut_obstacles','solo',2016-08-07,'Equitation'),
('Saut_obstacles','solo',2016-08-08,'Equitation'),
('Saut_obstacles','solo',2016-08-09,'Equitation'),
('Saut_obstacles','solo',2016-08-10,'Equitation'),
('Saut_obstacles','solo',2016-08-11,'Equitation'),
('Saut_obstacles','solo',2016-08-12,'Equitation'),
('Saut_obstacles','solo',2016-08-14,'Equitation'),
('Saut_obstacles','solo',2016-08-15,'Equitation'),
('Saut_obstacles','solo',2016-08-16,'Equitation'),
('Saut_obstacles','solo',2016-08-17,'Equitation'),
('Saut_obstacles','solo',2016-08-19,'Equitation'),
('Escrime','solo',2016-08-06,'Escrime'),
('Escrime','solo',2016-08-07,'Escrime'),
('Escrime','solo',2016-08-08,'Escrime'),
('Escrime','solo',2016-08-09,'Escrime'),
('Escrime','solo',2016-08-10,'Escrime'),
('Escrime','solo',2016-08-11,'Escrime'),
('Escrime','solo',2016-08-12,'Escrime'),
('Escrime','solo',2016-08-13,'Escrime'),
('Escrime','solo',2016-08-14,'Escrime'),
('Football','multi',2016-08-03,'Football'),
('Football','multi',2016-08-04,'Football'),
('Football','multi',2016-08-06,'Football'),
('Football','multi',2016-08-07,'Football'),
('Football','multi',2016-08-09,'Football'),
('Football','multi',2016-08-10,'Football'),
('Football','multi',2016-08-12,'Football'),
('Football','multi',2016-08-13,'Football'),
('Football','multi',2016-08-16,'Football'),
('Football','multi',2016-08-17,'Football'),
('Football','multi',2016-08-19,'Football'),
('Football','multi',2016-08-20,'Football'),
('Golf','solo',2016-08-11,'Golf'),
('Golf','solo',2016-08-12,'Golf'),
('Golf','solo',2016-08-14,'Golf'),
('Golf','solo',2016-08-17,'Golf'),
('Golf','solo',2016-08-18,'Golf'),
('Golf','solo',2016-08-19,'Golf'),
('Golf','solo',2016-08-20,'Golf'),
('Gymnastique_artistique','solo',2016-08-06,'Gymnastique'),
('Gymnastique_artistique','solo',2016-08-07,'Gymnastique'),
('Gymnastique_artistique','solo',2016-08-08,'Gymnastique'),
('Gymnastique_artistique','solo',2016-08-09,'Gymnastique'),
('Gymnastique_artistique','solo',2016-08-10,'Gymnastique'),
('Gymnastique_artistique','solo',2016-08-11,'Gymnastique'),
('Gymnastique_artistique','solo',2016-08-14,'Gymnastique'),
('Gymnastique_artistique','solo',2016-08-15,'Gymnastique'),
('Gymnastique_artistique','solo',2016-08-16,'Gymnastique'),
('Gymnastique_rythmique','solo',2016-08-19,'Gymnastique'),
('Gymnastique_rythmique','solo',2016-08-20,'Gymnastique'),
('Gymnastique_rythmique','solo',2016-08-21,'Gymnastique'),
('Trampoline','solo',2016-08-12,'Gymnastique'),
('Trampoline','solo',2016-08-13,'Gymnastique'),
('Halterophilie','solo',2016-08-06,'Halterophilie'),
('Halterophilie','solo',2016-08-07,'Halterophilie'),
('Halterophilie','solo',2016-08-08,'Halterophilie'),
('Halterophilie','solo',2016-08-09,'Halterophilie'),
('Halterophilie','solo',2016-08-10,'Halterophilie'),
('Halterophilie','solo',2016-08-12,'Halterophilie'),
('Halterophilie','solo',2016-08-13,'Halterophilie'),
('Halterophilie','solo',2016-08-14,'Halterophilie'),
('Halterophilie','solo',2016-08-15,'Halterophilie'),
('Halterophilie','solo',2016-08-16,'Halterophilie'),
('Handball','multi',2016-08-06,'Handball'),
('Handball','multi',2016-08-07,'Handball'),
('Handball','multi',2016-08-08,'Handball'),
('Handball','multi',2016-08-09,'Handball'),
('Handball','multi',2016-08-10,'Handball'),
('Handball','multi',2016-08-11,'Handball'),
('Handball','multi',2016-08-12,'Handball'),
('Handball','multi',2016-08-13,'Handball'),
('Handball','multi',2016-08-14,'Handball'),
('Handball','multi',2016-08-15,'Handball'),
('Handball','multi',2016-08-16,'Handball'),
('Handball','multi',2016-08-17,'Handball'),
('Handball','multi',2016-08-18,'Handball'),
('Handball','multi',2016-08-19,'Handball'),
('Handball','multi',2016-08-20,'Handball'),
('Handball','multi',2016-08-21,'Handball'),
('Hockey-sur-gazon','multi',2016-08-06,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-07,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-08,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-09,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-10,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-11,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-12,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-13,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-14,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-15,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-16,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-17,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-18,'Hockey-sur-gazon'),
('Hockey-sur-gazon','multi',2016-08-19,'Hockey-sur-gazon'),
('Judo','solo',2016-08-06,'Judo'),
('Judo','solo',2016-08-07,'Judo'),
('Judo','solo',2016-08-08,'Judo'),
('Judo','solo',2016-08-09,'Judo'),
('Judo','solo',2016-08-10,'Judo'),
('Judo','solo',2016-08-11,'Judo'),
('Judo','solo',2016-08-12,'Judo'),
('Lutte','solo',2016-08-14,'Lutte'),
('Lutte','solo',2016-08-15,'Lutte'),
('Lutte','solo',2016-08-16,'Lutte'),
('Lutte','solo',2016-08-17,'Lutte'),
('Lutte','solo',2016-08-18,'Lutte'),
('Lutte','solo',2016-08-19,'Lutte'),
('Lutte','solo',2016-08-20,'Lutte'),
('Lutte','solo',2016-08-21,'Lutte'),
('Natation','solo',2016-08-06,'Sports aquatiques'),
('Natation','solo',2016-08-07,'Sports aquatiques'),
('Natation','solo',2016-08-08,'Sports aquatiques'),
('Natation','solo',2016-08-09,'Sports aquatiques'),
('Natation','solo',2016-08-10,'Sports aquatiques'),
('Natation','solo',2016-08-11,'Sports aquatiques'),
('Natation','solo',2016-08-12,'Sports aquatiques'),
('Natation','solo',2016-08-13,'Sports aquatiques'),
('Natation','solo',2016-08-15,'Sports aquatiques'),
('Natation','solo',2016-08-16,'Sports aquatiques'),
('Natation synchronisee','multi',2016-08-14,'Sports aquatiques'),
('Natation synchronisee','multi',2016-08-15,'Sports aquatiques'),
('Natation synchronisee','multi',2016-08-16,'Sports aquatiques'),
('Natation synchronisee','multi',2016-08-18,'Sports aquatiques'),
('Natation synchronisee','multi',2016-08-19,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-07,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-08,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-09,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-10,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-12,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-13,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-14,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-15,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-16,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-17,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-18,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-19,'Sports aquatiques'),
('Plongeon','solo/multi',2016-08-20,'Sports aquatiques'),
('Water-polo','multi',2016-08-06,'Sports aquatiques),
('Water-polo','multi',2016-08-08,'Sports aquatiques),
('Water-polo','multi',2016-08-09,'Sports aquatiques),
('Water-polo','multi',2016-08-10,'Sports aquatiques),
('Water-polo','multi',2016-08-11,'Sports aquatiques),
('Water-polo','multi',2016-08-12,'Sports aquatiques),
('Water-polo','multi',2016-08-13,'Sports aquatiques),
('Water-polo','multi',2016-08-14,'Sports aquatiques),
('Water-polo','multi',2016-08-15,'Sports aquatiques),
('Water-polo','multi',2016-08-16,'Sports aquatiques),
('Water-polo','multi',2016-08-17,'Sports aquatiques),
('Water-polo','multi',2016-08-18,'Sports aquatiques),
('Water-polo','multi',2016-08-19,'Sports aquatiques),
('Water-polo','multi',2016-08-20,'Sports aquatiques),
('Pentathlon moderne','solo',2016-08-18,'Pentathlon moderne'),
('Pentathlon moderne','solo',2016-08-19,'Pentathlon moderne'),
('Pentathlon moderne','solo',2016-08-20,'Pentathlon moderne'),
('Rugby a sept','multi',2016-08-06,'Rugby a sept'),
('Rugby a sept','multi',2016-08-07,'Rugby a sept'),
('Rugby a sept','multi',2016-08-08,'Rugby a sept'),
('Rugby a sept','multi',2016-08-09,'Rugby a sept'),
('Rugby a sept','multi',2016-08-10,'Rugby a sept'),
('Rugby a sept','multi',2016-08-11,'Rugby a sept'),
('Taekwondo','multi',2016-08-17,'Taekwondo'),
('Taekwondo','multi',2016-08-18,'Taekwondo'),
('Taekwondo','multi',2016-08-19,'Taekwondo'),
('Taekwondo','multi',2016-08-20,'Taekwondo'),
('Tennis','solo/multi',2016-08-06,'Tennis'),
('Tennis','solo/multi',2016-08-07,'Tennis'),
('Tennis','solo/multi',2016-08-08,'Tennis'),
('Tennis','solo/multi',2016-08-09,'Tennis'),
('Tennis','solo/multi',2016-08-10,'Tennis'),
('Tennis','solo/multi',2016-08-11,'Tennis'),
('Tennis','solo/multi',2016-08-12,'Tennis'),
('Tennis','solo/multi',2016-08-13,'Tennis'),
('Tennis','solo/multi',2016-08-14,'Tennis'),
('Tennis de table','solo/multi',2016-08-06,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-07,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-08,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-09,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-10,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-11,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-12,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-13,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-14,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-15,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-16,'Tennis de table'),
('Tennis de table','solo/multi',2016-08-17,'Tennis de table'),
('Tir','solo',2016-08-06,'Tir'),
('Tir','solo',2016-08-07,'Tir'),
('Tir','solo',2016-08-08,'Tir'),
('Tir','solo',2016-08-09,'Tir'),
('Tir','solo',2016-08-10,'Tir'),
('Tir','solo',2016-08-11,'Tir'),
('Tir','solo',2016-08-12,'Tir'),
('Tir','solo',2016-08-13,'Tir'),
('Tir','solo',2016-08-14,'Tir'),
('Tir a l'arc','solo/multi',2016-08-05,'Tir a l'arc'),
('Tir a l'arc','solo/multi',2016-08-06,'Tir a l'arc'),
('Tir a l'arc','solo/multi',2016-08-07,'Tir a l'arc'),
('Tir a l'arc','solo/multi',2016-08-08,'Tir a l'arc'),
('Tir a l'arc','solo/multi',2016-08-09,'Tir a l'arc'),
('Tir a l'arc','solo/multi',2016-08-10,'Tir a l'arc'),
('Tir a l'arc','solo/multi',2016-08-11,'Tir a l'arc'),
('Tir a l'arc','solo/multi',2016-08-12,'Tir a l'arc'),
('Triathlon','solo',2016-08-18,'Triathlon'),
('Triathlon','solo',2016-08-20,'Triathlon'),
('Voile','solo',2016-08-08,'Voile'),
('Voile','solo',2016-08-09,'Voile'),
('Voile','solo',2016-08-10,'Voile'),
('Voile','solo',2016-08-11,'Voile'),
('Voile','solo',2016-08-12,'Voile'),
('Voile','solo',2016-08-13,'Voile'),
('Voile','solo',2016-08-14,'Voile'),
('Voile','solo',2016-08-15,'Voile'),
('Voile','solo',2016-08-16,'Voile'),
('Voile','solo',2016-08-17,'Voile'),
('Voile','solo',2016-08-18,'Voile'),
('Beach-volley','multi',2016-08-06,'Volleyball'),
('Beach-volley','multi',2016-08-07,'Volleyball'),
('Beach-volley','multi',2016-08-08,'Volleyball'),
('Beach-volley','multi',2016-08-09,'Volleyball'),
('Beach-volley','multi',2016-08-10,'Volleyball'),
('Beach-volley','multi',2016-08-11,'Volleyball'),
('Beach-volley','multi',2016-08-12,'Volleyball'),
('Beach-volley','multi',2016-08-13,'Volleyball'),
('Beach-volley','multi',2016-08-14,'Volleyball'),
('Beach-volley','multi',2016-08-15,'Volleyball'),
('Beach-volley','multi',2016-08-16,'Volleyball'),
('Beach-volley','multi',2016-08-17,'Volleyball'),
('Beach-volley','multi',2016-08-18,'Volleyball'),
('Volley-ball','multi',2016-08-06,'Volleyball'),
('Volley-ball','multi',2016-08-07,'Volleyball'),
('Volley-ball','multi',2016-08-08,'Volleyball'),
('Volley-ball','multi',2016-08-09,'Volleyball'),
('Volley-ball','multi',2016-08-10,'Volleyball'),
('Volley-ball','multi',2016-08-11,'Volleyball'),
('Volley-ball','multi',2016-08-12,'Volleyball'),
('Volley-ball','multi',2016-08-13,'Volleyball'),
('Volley-ball','multi',2016-08-14,'Volleyball'),
('Volley-ball','multi',2016-08-15,'Volleyball'),
('Volley-ball','multi',2016-08-16,'Volleyball'),
('Volley-ball','multi',2016-08-17,'Volleyball'),
('Volley-ball','multi',2016-08-18,'Volleyball'),
('Volley-ball','multi',2016-08-19,'Volleyball'),
('Volley-ball','multi',2016-08-20,'Volleyball'),
('Volley-ball','multi',2016-08-21,'Volleyball');
