
CREATE TABLE seminaire(
    id serial NOT NULL PRIMARY KEY,
    date date,
    idPerson int,
    description text,
    image varchar(255),
    title varchar(100)
);

ALTER TABLE seminaire 
    ADD CONSTRAINT fk_seminaire_person FOREIGN KEY (idperson) REFERENCES person(id) ;


INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2008-01-01', 4,'Micro-endemism in Madagascar', 'A new hypothesis and model of micro-endemism in Madagascar and its application to the conservation of Malagasy biodiversity. (Presented in French.)');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2009-01-01',22 ,'New Traversodontidae','Two new Traversodontidae from the Triassic of Madagascar: implications for paleoecology and the issue of endemic Malagasy terrestrial vertebrates in the Pre-Jurassic. (Presented in French.)');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2010-01-01', 23,'Geographic Information Systems','Geographic Information Systems at the service of conservation: case studies. (Presented in French.)');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2011-01-01', 24,'Effects of cyclone','Effects of cyclone or habitat disturbance on Varecia variegata (reproduction, feeding behavior, etc.). (Presented in French.)');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2011-01-01', 25,'Fragmentation and genetic diversity','Fragmentation of habitat and genetic diversity in space and time. (Presented in French.) ');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2012-01-01',20 ,'Invasive alien species','The impact of invasive alien species on island biodiversity - What solutions? (Presented in French.) ');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2012-01-01', 4,'Extinct animals and ecosystems of Madagascar','Windows into the extraordinary extinct animals and ecosystems of Madagascar. (Presented in French.) ');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2012-01-01',25 ,'Genetics','Population genetics, conservation genetics, and their applications. (Presented in French.) ');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2013-01-01', 25,'Genetic diversity and Genetix computer program','Measures of genetic diversity and application of the Genetix computer program. (Presented in French.) ');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2014-01-01',26 ,'ArcGIS','ArcGIS training. (Presented in French.) ');
INSERT INTO seminaire(date,idPerson,title,description) VALUES ('2015-01-01', 27,'High spatial resolution cloud climatology','High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities');



CREATE TABLE recherche(
    id serial NOT NULL PRIMARY KEY,
    date date,
    name varchar(255),
    endemic varchar(255),
    description text,
    image varchar(255),
    remarque varchar(100)
);
ALTER TABLE recherche ADD column auteurs varchar(255)


ALTER TABLE authorRecherche 
    ADD CONSTRAINT fk_authorRecherche_person FOREIGN KEY (idperson) REFERENCES person(id) ;
ALTER TABLE authorRecherche 
    ADD CONSTRAINT fk_authorRecherche_recherche FOREIGN KEY (idrecherche) REFERENCES recherche(id) ;

INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Grosphus mavo','endemic scorpion in the extreme south of the island','P. O. 2020','the remarkable diversity of the genus Grosphus simon, 1880 (scorpiones: buthidae) in southern madagascar and in particular in the region of cap sainte marie. Arachnida – Rivista Aracnologica Italiana, 27(1): 2-35.');
INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Haemaphysalis galidiae','endemic tick known from endemic carnivora','S. M. 2020','Description of a new species of Haemaphysalis koch, 1844 (Acari: ixodidae) from the H. (Rhipistoma) asiatica subgroup, parasite of an endemic malagasy carnivoran (family eupleridae). Systematic Parasitology, 97: 591-599.');
INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Ixodes soarimalalae','endemic tick known from malagasy shrew tenrecs and named after Voahangy soarimalala','S. M. 2020','Description of three new species of ixodes Latreille, 1795 (acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637.');
INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Ixodes uilenbergi','endemic tick known from different species of malagasy tenrecs','S. M. 2020','Description of three new species of Ixodes latreille, 1795 (Acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637.');
INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Ixodes uncus','endemic tick known from malagasy shrew tenrecs','S. M. 2020',' Description of three new species of ixodes Latreille, 1795 (Acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637');
INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Mantidactylus ambony ','endemic to a massif in the extreme north of the island','M. 2020',' ‘Barcode fishing’ for archival Dna from historical type material overcomes taxonomic hurdles, enabling the description of a new frog species. Scientific Reports, 10, 19109 (2020).');
INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Platypelis ranjomena','(endemic the central east and northeastern madagascar','M. 2020','genetic variability and partial integrative revision of Platypelis frogs (microhylidae) with red flash marks from eastern madagascar. Vertebrate Zoology, 70(2): 141-156');
INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Uroplatus fangorn','endemic gecko to a massif in the north of the island','M. D. 2020','towards completion of species inventory of smallsized leaf-tailed geckos: two new species of Uroplatus from northern madagascar. Zootaxa, 4892(2): 251-275.');
INSERT INTO recherche(date,name,endemic,remarque,description) VALUES ('2020-01-01','Uroplatus fivehy','endemic gecko to a massif in the north of the island','M. D. 2020','towards completion of species inventory of smallsized leaf-tailed geckos: two new species of Uroplatus from northern madagascar. Zootaxa, 4892(2): 251-275.');

