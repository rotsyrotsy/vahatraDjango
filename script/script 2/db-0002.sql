
CREATE OR REPLACE VIEW memberViewPost  as (
select m.id ,pers.title as title, pers.name, pers.username, m.description as description, m.mail,
    CASE
        when d.name is not null then CONCAT(p.name ,' : ', i.name , ' in ' ,d.name) 
        when i.name is not null and d.name is null then CONCAT(p.name ,' : ', i.name ) 
        else p.name
    END post, m.idTypeMember
    from "member" m 
    join person pers on pers.id = m.idPerson
    join memberpostinst m2 on m2.idmember = m.id 
    join post p on p.id=m2.idpost 
    left join institution i on i.id = m2.idinst 
    left join department d on d.id = m2.iddept
    join typemember tm on tm.id = m.idTypeMember
);

CREATE OR REPLACE VIEW memberViewPosts as (
    select id ,title ,name,username, description,
    mail,string_agg(post,', ') as posts , idTypeMember
    from memberViewPost
    group by id,title ,name,username, description,mail,idTypeMember
);

CREATE OR REPLACE VIEW intervenantFieldSchool  as (
    select v.id ,
    CASE
        when d.name is not null then CONCAT(d.name,', ', i.name) 
        else i.name
    END intervenant
    FROM visit v join fieldSchool f on f.idvisit = v.id
    left join institution i on i.id = f.idinst 
    left join department d on d.id = f.iddept
);
