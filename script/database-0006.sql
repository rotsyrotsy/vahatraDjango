INSERT INTO imageVisite (idVisite, image) VALUES (53,'http://www.vahatra.mg/photosillustration/inventaire/mikea01.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (54,'http://www.vahatra.mg/photosillustration/inventaire/nosyhara01.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (55,'http://www.vahatra.mg/photosillustration/inventaire/anjozorobe01.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (56,'http://www.vahatra.mg/photosillustration/inventaire/kirindymitea01.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (57,'http://www.vahatra.mg/photosillustration/inventaire/midongy01.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (58,'http://www.vahatra.mg/photosillustration/inventaire/ambatovy01.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (59,'http://www.vahatra.mg/photosillustration/inventaire/andranomena01.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (60,'http://www.vahatra.mg/photosillustration/inventaire/beanka01.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (61,'http://www.vahatra.mg/photosillustration/inventaire/salaryeng.gif');
INSERT INTO imageVisite (idVisite, image) VALUES (62,'http://www.vahatra.mg/photosillustration/inventaire/bemanevika01.gif');

CREATE OR REPLACE VIEW intervenantFieldSchool  as (
    select v.id ,
    CASE
        when d.name is not null then CONCAT(d.name,', ', i.name) 
        else i.name
    END intervenant
    FROM visite v join fieldSchool f on f.idvisite = v.id
    left join institution i on i.id = f.idinst 
    left join department d on d.id = f.iddept
)
