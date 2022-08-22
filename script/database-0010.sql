
CREATE TABLE imageType(
    id serial NOT NULL PRIMARY KEY,
    type varchar(100)
);

CREATE TABLE image(
    id serial NOT NULL PRIMARY KEY,
    idType serial,
    name varchar(255)
);


ALTER TABLE image 
    ADD CONSTRAINT fk_image_imageType FOREIGN KEY (idtype) REFERENCES imageType(id) ;

    
ALTER TABLE image 
    ADD CONSTRAINT fk_image_imageType FOREIGN KEY (idtype) REFERENCES imageType(id) ;

ALTER TABLE person ADD column idimage int
    
ALTER TABLE person 
    ADD CONSTRAINT fk_person_image FOREIGN KEY (idimage) REFERENCES image(id) ;

ALTER TABLE seminaire DROP COLUMN image;
ALTER TABLE seminaire ADD COLUMN idimage int;
ALTER TABLE seminaire 
    ADD CONSTRAINT fk_seminaire_image FOREIGN KEY (idimage) REFERENCES image(id) ;


ALTER TABLE recherche DROP COLUMN image;
ALTER TABLE recherche ADD COLUMN idimage int;
ALTER TABLE recherche 
    ADD CONSTRAINT fk_recherche_image FOREIGN KEY (idimage) REFERENCES image(id) ;

    
ALTER TABLE imagevisite DROP COLUMN image;
ALTER TABLE imagevisite ADD COLUMN idimage int;
ALTER TABLE imagevisite 
    ADD CONSTRAINT fk_imagevisite_image FOREIGN KEY (idimage) REFERENCES image(id) ;
    
    
ALTER TABLE publication DROP COLUMN imagefront;
ALTER TABLE publication ADD COLUMN idimagefront int;
ALTER TABLE publication 
    ADD CONSTRAINT fk_publication_imagefront FOREIGN KEY (idimagefront) REFERENCES image(id) ;
    
ALTER TABLE publication DROP COLUMN imageback;
ALTER TABLE publication ADD COLUMN idimageback int;
ALTER TABLE publication 
    ADD CONSTRAINT fk_publication_imageback FOREIGN KEY (idimageback) REFERENCES image(id) ;
    
ALTER TABLE project DROP COLUMN image;
ALTER TABLE project ADD COLUMN idimage int;
ALTER TABLE project 
    ADD CONSTRAINT fk_project_image FOREIGN KEY (idimage) REFERENCES image(id) ;


INSERT INTO imageType(id,type) VALUES (1,'avifauna');
INSERT INTO imageType(id,type) VALUES (2,'herpetofauna');
INSERT INTO imageType(id,type) VALUES (3,'small mammal');
INSERT INTO imageType(id,type) VALUES (4,'primate');
INSERT INTO imageType(id,type) VALUES (5,'landscape');
INSERT INTO imageType(id,type) VALUES (6,'miscellaneous');
INSERT INTO imageType(id,type) VALUES (7,'team');
INSERT INTO imageType(id,type) VALUES (8,'publication');


INSERT INTO image (idtype, name) VALUES (5, 'mikea01.gif');
INSERT INTO image (idtype, name) VALUES (5, 'nosyhara01.gif');
INSERT INTO image (idtype, name) VALUES (5, 'anjozorobe01.gif');
INSERT INTO image (idtype, name) VALUES (5, 'kirindymitea01.gif');
INSERT INTO image (idtype, name) VALUES (5, 'midongy01.gif');
INSERT INTO image (idtype, name) VALUES (5, 'ambatovy01.gif');
INSERT INTO image (idtype, name) VALUES (5, 'andranomena01.gif');
INSERT INTO image (idtype, name) VALUES (5, 'beanka01.gif');
INSERT INTO image (idtype, name) VALUES (5, 'salaryeng.gif');
INSERT INTO image (idtype, name) VALUES (5, 'bemanevika01.gif');

INSERT INTO image (idtype, name) VALUES (8, 'mn1.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn2.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn3.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn4.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn5.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn6.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn7.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn8.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn9.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn10.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn11.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn12.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn13.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn14.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn15.gif');
INSERT INTO image (idtype, name) VALUES (8,'op4.gif');
INSERT INTO image (idtype, name) VALUES (8,'g1.gif');
INSERT INTO image (idtype, name) VALUES (8,'g2.gif');
INSERT INTO image (idtype, name) VALUES (8,'g3.gif');
INSERT INTO image (idtype, name) VALUES (8,'g4.gif');
INSERT INTO image (idtype, name) VALUES (8,'g5.gif');
INSERT INTO image (idtype, name) VALUES (8,'g6.gif');
INSERT INTO image (idtype, name) VALUES (8,'g7.gif');
INSERT INTO image (idtype, name) VALUES (8,'g8.gif');
INSERT INTO image (idtype, name) VALUES (8,'g9.gif');
INSERT INTO image (idtype, name) VALUES (8,'op1.gif');
INSERT INTO image (idtype, name) VALUES (8,'op2.gif');
INSERT INTO image (idtype, name) VALUES (8,'op3.gif');
INSERT INTO image (idtype, name) VALUES (8,'nnhm.jpg');
INSERT INTO image (idtype, name) VALUES (8,'nhm.jpg');

INSERT INTO image (idtype, name) VALUES (8,'mn12_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn13_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn14_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'mn15_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'op4_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g1_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g2_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g3_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g4_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g5_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g6_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g7_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g8_back.gif');
INSERT INTO image (idtype, name) VALUES (8,'g9_back.gif');