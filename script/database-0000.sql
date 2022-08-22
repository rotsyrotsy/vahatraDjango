CREATE DATABASE vahatra;

CREATE TABLE typeMember (
	id serial NOT NULL PRIMARY KEY,
	name varchar(100) ,
    image varchar(255),
    description text
);

CREATE TABLE member (
    id varchar(20) NOT NULL PRIMARY KEY,
    idTypeMember serial NOT NULL,
    name varchar(255),
    username varchar(200),
    mail varchar(100),
    description text,
    title char(2)
);


CREATE TABLE post(
    id varchar(20) NOT NULL PRIMARY KEY,
    title varchar(100)
);


CREATE TABLE department(
    id varchar(20) NOT NULL PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE institution(
    id varchar(20) NOT NULL PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE memberPostInst(
    idMember varchar(20) NOT NULL,
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
    idMember varchar(20),
    idDegree varchar(20),
    year int,
    description text
);

CREATE TABLE messageOfYear(
    id serial NOT NULL PRIMARY KEY,
    year int,
    description text,
    idMember varchar(20)
);

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
    ADD CONSTRAINT fk_memberPostInst_dept FOREIGN KEY (idDept) REFERENCES departement(id) ;

CREATE TABLE person (
    id int NOT NULL PRIMARY KEY,
    name varchar(255),
    username varchar(200),
    title char(10)
);

ALTER TABLE member ADD column idPerson int;

ALTER TABLE member 
    ADD CONSTRAINT fk_member_person FOREIGN KEY (idPerson) REFERENCES person(id) ;

ALTER TABLE member DROP column name;
ALTER TABLE member DROP column username;
ALTER TABLE member DROP column title;

