CREATE TABLE partner  (
    id serial NOT NULL PRIMARY KEY,
    name varchar(255),
    description text,
    link varchar(150),
    logo varchar(150)
)
ALTER TABLE partner ADD COLUMN support int

INSERT INTO partner(name,description,link,logo) VALUES ('System of Protected Areas of Madagascar (SAPM)', 'working for the creation and delimitation of new protected areas on Madagascar.','https://protectedareas.mg/','protected-areas.png');
INSERT INTO partner(name,description,link,logo) VALUES ('Ambatovy-Sherritt Internationa',' helping with the establishment of a Biodiversity Business Operational Program (BBOP)','https://ambatovy.com/en/','ambatovy.png');
INSERT INTO partner(name,description,link,logo) VALUES ('REBIOMA','helping with the up-dating of a database associated with Malagasy biodiversity.','https://www.rebioma.org/','rebioma.jpg');
INSERT INTO partner(name,description,link,logo) VALUES ('Tany Meva and UNESCO World Heritage program','biological evaluation and analysis of human pressures in a new UNESCO site.','https://tanymeva.org/','tanymeva.png');
INSERT INTO partner(name,description,link,logo) VALUES ('Madascar National Parks','scientific aid in evaluating biodiversity and training of field agents.','https://www.parcs-madagascar.com/','mnp.png');
INSERT INTO partner(name,description,link,logo) VALUES ('CITES',' helping with the compilation of data concerning Malagasy taxa.','https://cites.org/eng','cites.png');
INSERT INTO partner(name,description,link,logo) VALUES ('Ministry of the Environment',' helping with the preparation of national report for the Convention on Biodiversity.','https://www.environnement.mg/','logo-medd-presidence.png');
INSERT INTO partner(name,description,link,logo) VALUES ('The Peregrine Fund','Capacity building for conservation agents and students. This project is generously funded by Helmsley Charitable Trust (HCT)','https://www.peregrinefund.org/','peregrine.png');