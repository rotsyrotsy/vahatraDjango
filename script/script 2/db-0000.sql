CREATE DATABASE vahatra2;


CREATE TABLE person (
    id serial NOT NULL PRIMARY KEY,
    name varchar(255),
    username varchar(200),
    title char(10)
);


CREATE TABLE imageType(
    id serial NOT NULL PRIMARY KEY,
    type varchar(100)
);

CREATE TABLE image(
    id serial NOT NULL PRIMARY KEY,
    idType int,
    name varchar(255)
);

CREATE TABLE typeMember (
	id serial NOT NULL PRIMARY KEY,
	type varchar(100) ,
    description text
);

CREATE TABLE member (
    id serial NOT NULL PRIMARY KEY,
    idPerson int NOT NULL,
    idTypeMember int NOT NULL,
    mail varchar(100),
    description text,
    idImage int
);


CREATE TABLE post(
    id varchar(20) NOT NULL PRIMARY KEY,
    name varchar(100)
);
CREATE SEQUENCE seqPost START WITH 1 INCREMENT BY 1;


CREATE TABLE department(
    id varchar(20) NOT NULL PRIMARY KEY,
    name varchar(255)
);
CREATE SEQUENCE seqDept START WITH 1 INCREMENT BY 1;

CREATE TABLE institution(
    id varchar(20) NOT NULL PRIMARY KEY,
    name varchar(255)
);
CREATE SEQUENCE seqInst START WITH 1 INCREMENT BY 1;

CREATE TABLE memberPostInst(
    idMember int NOT NULL,
    idPost varchar(20),
    idInst varchar(20),
    idDept varchar(20)
);

CREATE TABLE degree(
    id varchar(20) NOT NULL PRIMARY KEY,
    title varchar(100)
);

CREATE TABLE studentDegree(
    id serial NOT NULL PRIMARY KEY,
    idMember int NOT NULL,
    idDegree varchar(20) NOT NULL,
    year int,
    subject varchar(255),
    mention varchar(100)
);

CREATE TABLE messageOfYear(
    id serial NOT NULL PRIMARY KEY,
    year int,
    description text,
    idMember int
);

CREATE TABLE partner  (
    id serial NOT NULL PRIMARY KEY,
    idInst varchar(20) NOT NULL,
    description text,
    link varchar(150),
    logo varchar(150)
);
CREATE TABLE typeActivity(
    id varchar(20) NOT NULL PRIMARY KEY,
    type varchar(150)
);


CREATE TABLE typeSubActivity(
    id varchar(20) NOT NULL PRIMARY KEY,
    idTypeActivity varchar(20) NOT NULL,
    type varchar(150)
);

CREATE TABLE activity(
    id serial NOT NULL PRIMARY KEY,
    idTypeActivity varchar(20) NOT NULL,
    title varchar(255),
    description text,
    date date,
    note varchar(255)
);

CREATE TABLE location (
    id serial NOT NULL PRIMARY KEY,
    name varchar(255),
    longitude float,
    latitude float
);

CREATE TABLE visit(
    id serial NOT NULL PRIMARY KEY,
    idActivity int NOT NULL,
    idTypeSubActivity varchar(20) NOT NULL,
    idLocation int NOT NULL,
    dateEnd date
);

CREATE TABLE activityPerson(
    id serial NOT NULL PRIMARY KEY,
    idActivity int NOT NULL,
    idPerson int NOT NULL
);

CREATE TABLE activityInstitution(
    id serial NOT NULL PRIMARY KEY,
    idActivity int NOT NULL,
    idInst varchar(20) NOT NULL
);

CREATE TABLE activityImage(
    id serial NOT NULL PRIMARY KEY,
    idImage int NOT NULL,
    idActivity int NOT NULL
);



CREATE TABLE fieldSchool(
    id serial NOT NULL PRIMARY KEY,
    idVisit int NOT NULL,
    idInst varchar(20) NOT NULL,
    idDept varchar(20)
);


CREATE TABLE typePublication(
    id serial NOT NULL PRIMARY KEY,
    type varchar(100)
);

CREATE TABLE publication(
    id serial NOT NULL PRIMARY KEY,
    idType int NOT NULL,
    title varchar(200),
    description text,
    date date,
    idImagefront int,
    idImageback int
);

CREATE TABLE publicationDetail (
    id serial NOT NULL PRIMARY KEY,
    idPublication int NOT NULL,
    name varchar(255),
    pdf varchar(100)
);

CREATE TABLE publicationAuthor(
    id serial NOT NULL PRIMARY KEY,
    idPublication int NOT NULL,
    idPerson int NOT NULL
);


ALTER TABLE typeSubActivity 
    ADD CONSTRAINT fk_typeSubActivity_typeActivity FOREIGN KEY (idTypeActivity) REFERENCES typeActivity(id) ;

ALTER TABLE publication 
    ADD CONSTRAINT fk_publication_typePublication FOREIGN KEY (idtype) REFERENCES typePublication(id) ;
ALTER TABLE publicationDetail 
    ADD CONSTRAINT fk_publicationDetail_publication FOREIGN KEY (idpublication) REFERENCES publication(id) ;
ALTER TABLE publicationAuthor 
    ADD CONSTRAINT fk_publicationAuthor_publication FOREIGN KEY (idpublication) REFERENCES publication(id) ;
ALTER TABLE publicationAuthor 
    ADD CONSTRAINT fk_publicationAuthor_author FOREIGN KEY (idPerson) REFERENCES person(id) ;


ALTER TABLE publication 
    ADD CONSTRAINT fk_publication_imageback FOREIGN KEY (idimageback) REFERENCES image(id) ;
ALTER TABLE publication 
    ADD CONSTRAINT fk_publication_imagefront FOREIGN KEY (idimagefront) REFERENCES image(id) ;

ALTER TABLE fieldSchool 
    ADD CONSTRAINT fk_fieldSchool_inst FOREIGN KEY (idinst) REFERENCES institution(id) ;

ALTER TABLE fieldSchool 
    ADD CONSTRAINT fk_fieldSchool_visit FOREIGN KEY (idvisit) REFERENCES visit(id) ;

ALTER TABLE fieldSchool 
    ADD CONSTRAINT fk_fieldSchool_dept FOREIGN KEY (iddept) REFERENCES department(id) ;


ALTER TABLE activityImage 
    ADD CONSTRAINT fk_activityImage_image FOREIGN KEY (idImage) REFERENCES image(id) ;

ALTER TABLE activityImage 
    ADD CONSTRAINT fk_activityImage_activity FOREIGN KEY (idActivity) REFERENCES activity(id) ;



ALTER TABLE activityInstitution 
    ADD CONSTRAINT fk_activityInstitution_activity FOREIGN KEY (idActivity) REFERENCES activity(id) ;

ALTER TABLE activityInstitution 
    ADD CONSTRAINT fk_activityInstitution_institution FOREIGN KEY (idInst) REFERENCES institution(id) ;


ALTER TABLE activityPerson 
    ADD CONSTRAINT fk_activityPerson_activity FOREIGN KEY (idActivity) REFERENCES activity(id) ;

ALTER TABLE activityPerson 
    ADD CONSTRAINT fk_activityPerson_person FOREIGN KEY (idPerson) REFERENCES person(id) ;


ALTER TABLE visit 
    ADD CONSTRAINT fk_visit_typeSubActivity FOREIGN KEY (idTypeSubActivity) REFERENCES typeSubActivity(id) ;

ALTER TABLE visit 
    ADD CONSTRAINT fk_visit_activity FOREIGN KEY (idActivity) REFERENCES activity(id) ;

ALTER TABLE visit 
    ADD CONSTRAINT fk_visit_location FOREIGN KEY (idLocation) REFERENCES location(id) ;

ALTER TABLE activity 
    ADD CONSTRAINT fk_activity_typeActivity FOREIGN KEY (idTypeActivity) REFERENCES typeActivity(id) ;

    


ALTER TABLE partner 
    ADD CONSTRAINT fk_partner_institution FOREIGN KEY (idInst) REFERENCES institution(id) ;

    
ALTER TABLE image 
    ADD CONSTRAINT fk_image_imageType FOREIGN KEY (idtype) REFERENCES imageType(id) ;

ALTER TABLE member 
    ADD CONSTRAINT fk_member_typemember FOREIGN KEY (idTypeMember) REFERENCES typeMember(id) ;

ALTER TABLE memberPostInst 
    ADD CONSTRAINT fk_memberPostInst_member FOREIGN KEY (idMember) REFERENCES member(id) ;

ALTER TABLE memberPostInst 
    ADD CONSTRAINT fk_memberPostInst_post FOREIGN KEY (idPost) REFERENCES post(id) ;
    
ALTER TABLE memberPostInst 
    ADD CONSTRAINT fk_memberPostInst_institution FOREIGN KEY (idInst) REFERENCES institution(id) ;

ALTER TABLE studentDegree 
    ADD CONSTRAINT fk_studentDegree_degree FOREIGN KEY (idDegree) REFERENCES degree(id) ;

ALTER TABLE studentDegree 
    ADD CONSTRAINT fk_studentDegree_member FOREIGN KEY (idMember) REFERENCES member(id) ;

ALTER TABLE messageOfYear 
    ADD CONSTRAINT fk_messageOfYear_member FOREIGN KEY (idMember) REFERENCES member(id) ;


ALTER TABLE memberPostInst 
    ADD CONSTRAINT fk_memberPostInst_dept FOREIGN KEY (idDept) REFERENCES department(id) ;

ALTER TABLE member 
    ADD CONSTRAINT fk_member_person FOREIGN KEY (idPerson) REFERENCES person(id) ;


