CREATE TABLE typeVisite(
    id varchar(20) NOT NULL PRIMARY KEY,
    type varchar(150)
);

CREATE TABLE lieu (
    id serial NOT NULL PRIMARY KEY,
    nom varchar(255),
    longitude float,
    latitude float
);


CREATE TABLE visite(
    id serial NOT NULL PRIMARY KEY,
    idTypeVisite varchar(20),
    idLieu serial,
    date date,
    description text
);

ALTER TABLE visite ADD column dateFin date;

CREATE TABLE imageVisite(
    idVisite serial,
    image varchar(255)
);
ALTER TABLE imageVisite ADD column id serial NOT NULL PRIMARY KEY

CREATE TABLE fieldSchool(
    idVisite serial,
    idInst varchar(20),
    idDept varchar(20)
);

CREATE TABLE fieldShcoolPartner(
    idVisite serial,
    idPartner serial
);


ALTER TABLE visite 
    ADD CONSTRAINT fk_visite_typevisite FOREIGN KEY (idTypevisite) REFERENCES typevisite(id) ;

ALTER TABLE visite 
    ADD CONSTRAINT fk_visite_lieu FOREIGN KEY (idlieu) REFERENCES lieu(id) ;

ALTER TABLE fieldSchool 
    ADD CONSTRAINT fk_fieldSchool_inst FOREIGN KEY (idinst) REFERENCES institution(id) ;

ALTER TABLE fieldSchool 
    ADD CONSTRAINT fk_fieldSchool_visite FOREIGN KEY (idvisite) REFERENCES visite(id) ;

ALTER TABLE fieldSchool 
    ADD CONSTRAINT fk_fieldSchool_dept FOREIGN KEY (iddept) REFERENCES department(id) ;


ALTER TABLE fieldShcoolPartner 
    ADD CONSTRAINT fk_fieldShcoolPartner_partner FOREIGN KEY (idpartner) REFERENCES partner(id) ;

    
ALTER TABLE fieldShcoolPartner 
    ADD CONSTRAINT fk_fieldShcoolPartner_visite FOREIGN KEY (idvisite) REFERENCES visite(id) ;

ALTER TABLE imageVisite 
    ADD CONSTRAINT fk_imageVisite_visite FOREIGN KEY (idvisite) REFERENCES visite(id) ;


INSERT INTO typeVisite VALUES ('V1','village');
INSERT INTO typeVisite VALUES ('V2','field school');
INSERT INTO typeVisite VALUES ('V3','inventaire biologique');

-- sciences pour le peuple
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (1,'Anjahamarina',50.35,-15.0833);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (2,'Ambavala',49.6167,-16.2);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (3,'Ambalamanasy', 49.95,-13.7333);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (4,'Antanimbaribe',46.85,-17.1833);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (5,'Manantenina',47.3167,-24.2833);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (6,'Belambo', 47.3167,-17.8);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (7,'Maroambihy',49.85,-14.5);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (8,'Analanambe',49.95, -14.4 );
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (9,'Ambodivoara', 47.5167,-18.1667);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (10,'Ambariotelo',48.36667,-13.4333);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (11,'Betsiaka',49.237267499999,-13.1581959);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (12,'Marotolana',49.03333,-14.61667);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (13,'Marovato',48.9167,-12.6667);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (14,'Bemanevika', 47.9333, -16.1833);

INSERT INTO lieu(id,nom,longitude,latitude) VALUES (15,'Ampatakamaroreny',48.8,-16.4833);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (16,'Antsiatsiaka',49.3667,-17.0333);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (17,'Antsiraka', 49.6167,-16.2667);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (18,'Marotandrano', 48.70795,-16.42044);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (19,'Djangoa',48.3167,-13.7833);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (20,'Ankaramibe',48.17956506, -13.9752602);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (21,'Ankaramikely',48.1667,-14.0167);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (22,'Analanatsoa',49.766667,-14.433333);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (23,'Maromandia',48.0833,-14.2167);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (24,'Ankitsika',48.3833,-17.3167);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (25,'Ambarijeby',47.95,-14.6667);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (26,'Anjiamangirana',47.7833,-15.1667);

INSERT INTO lieu(id,nom,longitude,latitude) VALUES (27,'Tsimanampetsotsa',43.74921,-24.12882);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (28,'Salary Bay',43.284246,-22.5547423);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (29,'Lakato',48.4333,-19.1833);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (30,'Andranomena',44.33333, -21.46667);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (31,'Ambohitantely',47.2833,-18.1667);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (32,'Tampolo Fenérive-Est', 49.9667,-15.7333);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (33,'Midongy du Sud',47.0167,-23.5833);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (34,'Bemaraha',45.1667,-19.3333);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (35,'Marojejy', 49.7333,-14.4333);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (36,'Daraina',49.6667,-13.2);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (37,'Ankarana', 48.5,-16.95);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (38,'Ankazomivady',47.1833,-20.7667);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (39,'Andranomay',47.95,-18.5);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (40,'Ankaratra',47.2,-19.4167);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (41,'Maromiza',	48.4500,-18.9500);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (42,'Mikea',43.3833, -22.5);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (43,'Nosy Hara',49.0167, -12.2333);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (44,'Anjozorobe',47.8667,  -18.4);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (45,'Kirindy-Mitea',44.138666112, -20.806163442 );
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (46,'Ambatovy',48.3,-18.8167);
INSERT INTO lieu(id,nom,longitude,latitude) VALUES (47,'Beanka',44.559567, -17.925304);

INSERT INTO lieu(id,nom,longitude,latitude) VALUES (48,'Andohahela',46.7,-24.6);




INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',1,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud : Cap Est');
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',2,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',3,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',4,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',5,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',6,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',7,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',8,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',9,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',10,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',11,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',12,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',13,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',14,null,'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud' );

INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',15,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',16,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',17,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',18,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',19,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',20,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',21,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',22,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',23,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',24,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',25,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V1',26,null,'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza' );


INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',27,'2015-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',27,'2014-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',14,'2014-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',27,'2013-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',14,'2013-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',27,'2012-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',28,'2011-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',29,'2010-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',30,'2010-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',29,'2009-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',31,'2008-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',41,'2008-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',31,'2007-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',32,'2004-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',33,'2003-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',27,'2002-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',34,'2001-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',35,'2001-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',36,'2001-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',37,'2000-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',38,'1998-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',31,'1997-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',39,'1997-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',32,'1997-01-01',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description) VALUES ('V2',40,'1996-01-01',null );



INSERT INTO department VALUES ('D4','Biological Science Department');
INSERT INTO department VALUES ('D5','Institut des Sciences et Techniques de l’Environnement (ISTE)');
INSERT INTO department VALUES ('D6','School of Agronomy, Forest Department');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (28,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (28,'I16','D4');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (28,'I3','D5');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (29,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (29,'I16','D4');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (29,'I3','D5');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (30,'I2','D1');
INSERT INTO fieldShcoolPartner (idVisite,idPartner) VALUES (30,17);

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (31,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (31,'I9','D2');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (31,'I16','D4');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (31,'I3','D5');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (32,'I2','D1');
INSERT INTO fieldShcoolPartner (idVisite,idPartner) VALUES (32,17);

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (33,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (33,'I16','D4');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (33,'I3','D5');


INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (34,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (34,'I16','D4');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (34,'I17',null);
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (34,'I18',null);

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (35,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (35,'I17',null);
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (35,'I18',null);


INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (36,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (36,'I18',null);


INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (37,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (37,'I17',null);

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (38,'I2','D1');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (39,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (39,'I17',null);
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (39,'I19',null);

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (40,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (40,'I5',null);

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (41,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (41,'I9','D6');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (42,'I2','D1');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (43,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (44,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (45,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (46,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (47,'I2','D1');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (48,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (48,'I5',null);

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (49,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (50,'I2','D1');

INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (51,'I2','D1');
INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (51,'I9','D6');


INSERT INTO fieldSchool (idVisite,idInst,idDept) VALUES (52,'I2','D1');



INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',42,'2003-02-01','Obtaining field data on terrestrial vertebrates for the action of the "Ala Maiky" project of WWF. In collaboration with WWF.','2003-03-01' );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',43,'2005-09-01','Obtaining data on terrestrial organisms to help with the management of a new marine protected area. In collaboration with WWF.','2005-10-01' );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',44,'2005-11-01','To understand patterns of terrestrial animal distribution in this forested corridor, evaluation of remaining natural habitats, and the important of the remaining forest for the conservation of biodiversity. In collaboration with WWF and Fanamby.','2006-02-01' );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',45,'2007-02-01','Obtaining field data on terrestrial vertebrates for the extension of the Kirindy Mite National Park. In collaboration with WWF and Madagascar national Parks.','2007-03-01' );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',33,'2008-01-01','Obtaining field data on the biological riches of identified protected areas for the extension of a humid forest of a UNESCO World Heritage site. In collaboration with UNESCO World Heritage program.','2008-03-01' );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',46,'2009-01-01','Obtaining field data for a biological compensation program associated with a mining project. In collaboration with Ambatovy Project.','2009-02-01' );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',30,'2010-03-01','Obtaining scientific information on the RS of Andranomena ant the Ampataka forest. In collaboration with Madagascar National Parks','2010-04-01' );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',47,'2011-11-01','Biological exploration of the dry forest on karst of Beanka. In collaboration with the Universities of Geneva and Antananarivo.',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',28,'2011-12-01','Biological exploration for the conception of a management and conservation plan. In collaboration with PGME-GIZ',null );
INSERT INTO visite(idTypeVisite,idLieu,date,description, dateFin) VALUES ('V3',14,'2013-10-01','Exploration of the biological diversity of Bemanevika Forest. In collaboration with the Peregrine Fund.',null );


INSERT INTO visite(idTypeVisite,idLieu,date,description,dateFin) VALUES ('V3',48,'2022-10-05','In late 2022
the Vahatra team will redo another elevational transect in the Andohahela
protected area in the same fashion as Marojejy and part of the The Rainforest
of the Atsinanana.','2022-11-30' );
