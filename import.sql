--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity (
    id integer NOT NULL,
    idtypeactivity character varying(20) NOT NULL,
    title character varying(255),
    description text,
    date date,
    note character varying(255)
);


ALTER TABLE public.activity OWNER TO oryfkukqhcwhgd;

--
-- Name: activity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activity_id_seq OWNED BY public.activity.id;


--
-- Name: activityimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activityimage (
    id integer NOT NULL,
    idimage integer NOT NULL,
    idactivity integer NOT NULL
);


ALTER TABLE public.activityimage OWNER TO oryfkukqhcwhgd;

--
-- Name: activityimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activityimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activityimage_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: activityimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activityimage_id_seq OWNED BY public.activityimage.id;


--
-- Name: activityinstitution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activityinstitution (
    id integer NOT NULL,
    idactivity integer NOT NULL,
    idinst character varying(20) NOT NULL
);


ALTER TABLE public.activityinstitution OWNER TO oryfkukqhcwhgd;

--
-- Name: activityinstitution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activityinstitution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activityinstitution_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: activityinstitution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activityinstitution_id_seq OWNED BY public.activityinstitution.id;


--
-- Name: activityperson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activityperson (
    id integer NOT NULL,
    idactivity integer NOT NULL,
    idperson integer NOT NULL
);


ALTER TABLE public.activityperson OWNER TO oryfkukqhcwhgd;

--
-- Name: activityperson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activityperson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activityperson_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: activityperson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activityperson_id_seq OWNED BY public.activityperson.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: degree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.degree (
    id character varying(20) NOT NULL,
    title character varying(100)
);


ALTER TABLE public.degree OWNER TO oryfkukqhcwhgd;

--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    id character varying(20) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.department OWNER TO oryfkukqhcwhgd;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO oryfkukqhcwhgd;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO oryfkukqhcwhgd;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO oryfkukqhcwhgd;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO oryfkukqhcwhgd;

--
-- Name: fieldschool; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldschool (
    id integer NOT NULL,
    idvisit integer NOT NULL,
    idinst character varying(20) NOT NULL,
    iddept character varying(20)
);


ALTER TABLE public.fieldschool OWNER TO oryfkukqhcwhgd;

--
-- Name: fieldschool_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fieldschool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fieldschool_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: fieldschool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fieldschool_id_seq OWNED BY public.fieldschool.id;


--
-- Name: image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image (
    id integer NOT NULL,
    idtype integer,
    name character varying(255),
    title character varying(100)
);


ALTER TABLE public.image OWNER TO oryfkukqhcwhgd;

--
-- Name: image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.image_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;


--
-- Name: imagetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imagetype (
    id integer NOT NULL,
    type character varying(100)
);


ALTER TABLE public.imagetype OWNER TO oryfkukqhcwhgd;

--
-- Name: imagetype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.imagetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imagetype_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: imagetype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.imagetype_id_seq OWNED BY public.imagetype.id;


--
-- Name: institution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.institution (
    id character varying(20) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.institution OWNER TO oryfkukqhcwhgd;

--
-- Name: visit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visit (
    id integer NOT NULL,
    idactivity integer NOT NULL,
    idtypesubactivity character varying(20) NOT NULL,
    idlocation integer NOT NULL,
    dateend date
);


ALTER TABLE public.visit OWNER TO oryfkukqhcwhgd;

--
-- Name: intervenantfieldschool; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.intervenantfieldschool AS
 SELECT v.id,
        CASE
            WHEN (d.name IS NOT NULL) THEN (concat(d.name, ', ', i.name))::character varying
            ELSE i.name
        END AS intervenant
   FROM (((public.visit v
     JOIN public.fieldschool f ON ((f.idvisit = v.id)))
     LEFT JOIN public.institution i ON (((i.id)::text = (f.idinst)::text)))
     LEFT JOIN public.department d ON (((d.id)::text = (f.iddept)::text)));


ALTER TABLE public.intervenantfieldschool OWNER TO oryfkukqhcwhgd;

--
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    id integer NOT NULL,
    name character varying(255),
    longitude double precision,
    latitude double precision
);


ALTER TABLE public.location OWNER TO oryfkukqhcwhgd;

--
-- Name: location_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.location_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.location_id_seq OWNED BY public.location.id;


--
-- Name: member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.member (
    id integer NOT NULL,
    idperson integer NOT NULL,
    idtypemember integer NOT NULL,
    mail character varying(100),
    description text,
    idimage integer
);


ALTER TABLE public.member OWNER TO oryfkukqhcwhgd;

--
-- Name: member_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.member_id_seq OWNED BY public.member.id;


--
-- Name: memberpostinst; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.memberpostinst (
    idmember integer NOT NULL,
    idpost character varying(20),
    idinst character varying(20),
    iddept character varying(20)
);


ALTER TABLE public.memberpostinst OWNER TO oryfkukqhcwhgd;

--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id integer NOT NULL,
    name character varying(255),
    username character varying(200),
    title character(10)
);


ALTER TABLE public.person OWNER TO oryfkukqhcwhgd;

--
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    id character varying(20) NOT NULL,
    name character varying(100)
);


ALTER TABLE public.post OWNER TO oryfkukqhcwhgd;

--
-- Name: typemember; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typemember (
    id integer NOT NULL,
    type character varying(100),
    description text
);


ALTER TABLE public.typemember OWNER TO oryfkukqhcwhgd;

--
-- Name: memberviewpost; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.memberviewpost AS
 SELECT m.id,
    pers.title,
    pers.name,
    pers.username,
    m.description,
    m.mail,
        CASE
            WHEN (d.name IS NOT NULL) THEN (concat(p.name, ' : ', i.name, ' in ', d.name))::character varying
            WHEN ((i.name IS NOT NULL) AND (d.name IS NULL)) THEN (concat(p.name, ' : ', i.name))::character varying
            ELSE p.name
        END AS post,
    m.idtypemember
   FROM ((((((public.member m
     JOIN public.person pers ON ((pers.id = m.idperson)))
     JOIN public.memberpostinst m2 ON ((m2.idmember = m.id)))
     JOIN public.post p ON (((p.id)::text = (m2.idpost)::text)))
     LEFT JOIN public.institution i ON (((i.id)::text = (m2.idinst)::text)))
     LEFT JOIN public.department d ON (((d.id)::text = (m2.iddept)::text)))
     JOIN public.typemember tm ON ((tm.id = m.idtypemember)));


ALTER TABLE public.memberviewpost OWNER TO oryfkukqhcwhgd;

--
-- Name: memberviewposts; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.memberviewposts AS
 SELECT memberviewpost.id,
    memberviewpost.title,
    memberviewpost.name,
    memberviewpost.username,
    memberviewpost.description,
    memberviewpost.mail,
    string_agg((memberviewpost.post)::text, ', '::text) AS posts,
    memberviewpost.idtypemember
   FROM public.memberviewpost
  GROUP BY memberviewpost.id, memberviewpost.title, memberviewpost.name, memberviewpost.username, memberviewpost.description, memberviewpost.mail, memberviewpost.idtypemember;


ALTER TABLE public.memberviewposts OWNER TO oryfkukqhcwhgd;

--
-- Name: messageofyear; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messageofyear (
    id integer NOT NULL,
    year integer,
    description text,
    idmember integer
);


ALTER TABLE public.messageofyear OWNER TO oryfkukqhcwhgd;

--
-- Name: messageofyear_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messageofyear_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messageofyear_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: messageofyear_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messageofyear_id_seq OWNED BY public.messageofyear.id;


--
-- Name: partner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partner (
    id integer NOT NULL,
    idinst character varying(20) NOT NULL,
    description text,
    link character varying(150),
    logo character varying(150)
);


ALTER TABLE public.partner OWNER TO oryfkukqhcwhgd;

--
-- Name: partner_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partner_id_seq OWNED BY public.partner.id;


--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;


--
-- Name: publication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publication (
    id integer NOT NULL,
    idtype integer NOT NULL,
    title character varying(200),
    description text,
    date date,
    idimagefront integer,
    idimageback integer
);


ALTER TABLE public.publication OWNER TO oryfkukqhcwhgd;

--
-- Name: publication_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publication_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: publication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publication_id_seq OWNED BY public.publication.id;


--
-- Name: publicationauthor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicationauthor (
    id integer NOT NULL,
    idpublication integer NOT NULL,
    idperson integer NOT NULL
);


ALTER TABLE public.publicationauthor OWNER TO oryfkukqhcwhgd;

--
-- Name: publicationauthor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publicationauthor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publicationauthor_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: publicationauthor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicationauthor_id_seq OWNED BY public.publicationauthor.id;


--
-- Name: publicationdetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicationdetail (
    id integer NOT NULL,
    idpublication integer NOT NULL,
    name character varying(255),
    pdf character varying(100)
);


ALTER TABLE public.publicationdetail OWNER TO oryfkukqhcwhgd;

--
-- Name: publicationdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publicationdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publicationdetail_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: publicationdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicationdetail_id_seq OWNED BY public.publicationdetail.id;


--
-- Name: seqdept; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seqdept
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seqdept OWNER TO oryfkukqhcwhgd;

--
-- Name: seqinst; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seqinst
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seqinst OWNER TO oryfkukqhcwhgd;

--
-- Name: seqpost; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seqpost
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seqpost OWNER TO oryfkukqhcwhgd;

--
-- Name: studentdegree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.studentdegree (
    id integer NOT NULL,
    idmember integer NOT NULL,
    iddegree character varying(20) NOT NULL,
    year integer,
    subject character varying(255),
    mention character varying(100)
);


ALTER TABLE public.studentdegree OWNER TO oryfkukqhcwhgd;

--
-- Name: studentdegree_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.studentdegree_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studentdegree_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: studentdegree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.studentdegree_id_seq OWNED BY public.studentdegree.id;


--
-- Name: typeactivity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typeactivity (
    id character varying(20) NOT NULL,
    type character varying(150)
);


ALTER TABLE public.typeactivity OWNER TO oryfkukqhcwhgd;

--
-- Name: typemember_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typemember_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typemember_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: typemember_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typemember_id_seq OWNED BY public.typemember.id;


--
-- Name: typepublication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typepublication (
    id integer NOT NULL,
    type character varying(100)
);


ALTER TABLE public.typepublication OWNER TO oryfkukqhcwhgd;

--
-- Name: typepublication_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typepublication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typepublication_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: typepublication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typepublication_id_seq OWNED BY public.typepublication.id;


--
-- Name: typesubactivity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typesubactivity (
    id character varying(20) NOT NULL,
    type character varying(150),
    idtypeactivity character varying(20) NOT NULL
);


ALTER TABLE public.typesubactivity OWNER TO oryfkukqhcwhgd;

--
-- Name: visit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visit_id_seq OWNER TO oryfkukqhcwhgd;

--
-- Name: visit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visit_id_seq OWNED BY public.visit.id;


--
-- Name: activity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activity ALTER COLUMN id SET DEFAULT nextval('public.activity_id_seq'::regclass);


--
-- Name: activityimage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityimage ALTER COLUMN id SET DEFAULT nextval('public.activityimage_id_seq'::regclass);


--
-- Name: activityinstitution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityinstitution ALTER COLUMN id SET DEFAULT nextval('public.activityinstitution_id_seq'::regclass);


--
-- Name: activityperson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityperson ALTER COLUMN id SET DEFAULT nextval('public.activityperson_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: fieldschool id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldschool ALTER COLUMN id SET DEFAULT nextval('public.fieldschool_id_seq'::regclass);


--
-- Name: image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);


--
-- Name: imagetype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imagetype ALTER COLUMN id SET DEFAULT nextval('public.imagetype_id_seq'::regclass);


--
-- Name: location id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location ALTER COLUMN id SET DEFAULT nextval('public.location_id_seq'::regclass);


--
-- Name: member id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member ALTER COLUMN id SET DEFAULT nextval('public.member_id_seq'::regclass);


--
-- Name: messageofyear id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messageofyear ALTER COLUMN id SET DEFAULT nextval('public.messageofyear_id_seq'::regclass);


--
-- Name: partner id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner ALTER COLUMN id SET DEFAULT nextval('public.partner_id_seq'::regclass);


--
-- Name: person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);


--
-- Name: publication id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publication ALTER COLUMN id SET DEFAULT nextval('public.publication_id_seq'::regclass);


--
-- Name: publicationauthor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationauthor ALTER COLUMN id SET DEFAULT nextval('public.publicationauthor_id_seq'::regclass);


--
-- Name: publicationdetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationdetail ALTER COLUMN id SET DEFAULT nextval('public.publicationdetail_id_seq'::regclass);


--
-- Name: studentdegree id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentdegree ALTER COLUMN id SET DEFAULT nextval('public.studentdegree_id_seq'::regclass);


--
-- Name: typemember id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typemember ALTER COLUMN id SET DEFAULT nextval('public.typemember_id_seq'::regclass);


--
-- Name: typepublication id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typepublication ALTER COLUMN id SET DEFAULT nextval('public.typepublication_id_seq'::regclass);


--
-- Name: visit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visit ALTER COLUMN id SET DEFAULT nextval('public.visit_id_seq'::regclass);


--
-- Data for Name: activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (1, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud : Cap Est', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (2, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (3, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (4, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (5, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (6, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (7, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (8, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (9, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (10, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (11, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (12, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (13, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (14, 'A1', 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (15, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (16, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (17, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (18, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (19, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (20, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (21, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (22, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (23, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (24, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (25, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (26, 'A1', 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', NULL, NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (27, 'A1', 'Field Schools', NULL, '2015-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (28, 'A1', 'Field Schools', NULL, '2014-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (29, 'A1', 'Field Schools', NULL, '2014-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (30, 'A1', 'Field Schools', NULL, '2013-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (31, 'A1', 'Field Schools', NULL, '2013-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (32, 'A1', 'Field Schools', NULL, '2012-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (33, 'A1', 'Field Schools', NULL, '2011-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (34, 'A1', 'Field Schools', NULL, '2010-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (35, 'A1', 'Field Schools', NULL, '2010-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (36, 'A1', 'Field Schools', NULL, '2009-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (37, 'A1', 'Field Schools', NULL, '2008-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (38, 'A1', 'Field Schools', NULL, '2008-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (39, 'A1', 'Field Schools', NULL, '2007-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (40, 'A1', 'Field Schools', NULL, '2004-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (41, 'A1', 'Field Schools', NULL, '2003-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (42, 'A1', 'Field Schools', NULL, '2002-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (43, 'A1', 'Field Schools', NULL, '2001-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (44, 'A1', 'Field Schools', NULL, '2001-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (45, 'A1', 'Field Schools', NULL, '2001-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (46, 'A1', 'Field Schools', NULL, '2000-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (47, 'A1', 'Field Schools', NULL, '1998-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (48, 'A1', 'Field Schools', NULL, '1997-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (49, 'A1', 'Field Schools', NULL, '1997-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (50, 'A1', 'Field Schools', NULL, '1997-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (51, 'A1', 'Field Schools', NULL, '1996-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (52, 'A1', 'Biological inventories', 'Obtaining field data on terrestrial vertebrates for the action of the "Ala Maiky" project of WWF. In collaboration with WWF.', '2003-02-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (53, 'A1', 'Biological inventories', 'Obtaining data on terrestrial organisms to help with the management of a new marine protected area. In collaboration with WWF.', '2005-09-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (54, 'A1', 'Biological inventories', 'To understand patterns of terrestrial animal distribution in this forested corridor, evaluation of remaining natural habitats, and the important of the remaining forest for the conservation of biodiversity. In collaboration with WWF and Fanamby.', '2005-11-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (55, 'A1', 'Biological inventories', 'Obtaining field data on terrestrial vertebrates for the extension of the Kirindy Mite National Park. In collaboration with WWF and Madagascar national Parks.', '2007-02-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (56, 'A1', 'Biological inventories', 'Obtaining field data on the biological riches of identified protected areas for the extension of a humid forest of a UNESCO World Heritage site. In collaboration with UNESCO World Heritage program.', '2008-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (57, 'A1', 'Biological inventories', 'Obtaining field data for a biological compensation program associated with a mining project. In collaboration with Ambatovy Project.', '2009-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (58, 'A1', 'Biological inventories', 'Obtaining scientific information on the RS of Andranomena ant the Ampataka forest. In collaboration with Madagascar National Parks', '2010-03-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (59, 'A1', 'Biological inventories', 'Biological exploration of the dry forest on karst of Beanka. In collaboration with the Universities of Geneva and Antananarivo.', '2011-11-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (60, 'A1', 'Biological inventories', 'Biological exploration for the conception of a management and conservation plan. In collaboration with PGME-GIZ', '2011-12-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (61, 'A1', 'Biological inventories', 'Exploration of the biological diversity of Bemanevika Forest. In collaboration with the Peregrine Fund.', '2013-10-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (62, 'A1', 'Elevational transect in the Andohahela protected area', 'In late 2022

the Vahatra team will redo another elevational transect in the Andohahela

protected area in the same fashion as Marojejy and part of the The Rainforest

of the Atsinanana.', '2022-10-15', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (63, 'A2', 'Micro-endemism in Madagascar', 'A new hypothesis and model of micro-endemism in Madagascar and its application to the conservation of Malagasy biodiversity. (Presented in French.)', '2008-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (64, 'A2', 'New Traversodontidae', 'Two new Traversodontidae from the Triassic of Madagascar: implications for paleoecology and the issue of endemic Malagasy terrestrial vertebrates in the Pre-Jurassic. (Presented in French.)', '2009-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (65, 'A2', 'Geographic Information Systems', 'Geographic Information Systems at the service of conservation: case studies. (Presented in French.)', '2010-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (66, 'A2', 'Effects of cyclone', 'Effects of cyclone or habitat disturbance on Varecia variegata (reproduction, feeding behavior, etc.). (Presented in French.)', '2011-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (67, 'A2', 'Fragmentation and genetic diversity', 'Fragmentation of habitat and genetic diversity in space and time. (Presented in French.) ', '2011-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (68, 'A2', 'Invasive alien species', 'The impact of invasive alien species on island biodiversity - What solutions? (Presented in French.) ', '2012-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (69, 'A2', 'Extinct animals and ecosystems of Madagascar', 'Windows into the extraordinary extinct animals and ecosystems of Madagascar. (Presented in French.) ', '2012-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (70, 'A2', 'Genetics', 'Population genetics, conservation genetics, and their applications. (Presented in French.) ', '2012-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (71, 'A2', 'Genetic diversity and Genetix computer program', 'Measures of genetic diversity and application of the Genetix computer program. (Presented in French.) ', '2013-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (72, 'A2', 'ArcGIS', 'ArcGIS training. (Presented in French.) ', '2014-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (73, 'A2', 'High spatial resolution cloud climatology', 'High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities', '2015-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (74, 'A3', 'Grosphus mavo', 'the remarkable diversity of the genus Grosphus simon, 1880 (scorpiones: buthidae) in southern madagascar and in particular in the region of cap sainte marie. Arachnida – Rivista Aracnologica Italiana, 27(1): 2-35.', '2020-01-01', 'endemic scorpion in the extreme south of the island');
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (75, 'A3', 'Haemaphysalis galidiae', 'Description of a new species of Haemaphysalis koch, 1844 (Acari: ixodidae) from the H. (Rhipistoma) asiatica subgroup, parasite of an endemic malagasy carnivoran (family eupleridae). Systematic Parasitology, 97: 591-599.', '2020-01-01', 'endemic tick known from endemic carnivora');
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (76, 'A3', 'Ixodes soarimalalae', 'Description of three new species of ixodes Latreille, 1795 (acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637.', '2020-01-01', 'endemic tick known from malagasy shrew tenrecs and named after Voahangy soarimalala');
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (77, 'A3', 'Ixodes uilenbergi', 'Description of three new species of Ixodes latreille, 1795 (Acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637.', '2020-01-01', 'endemic tick known from different species of malagasy tenrecs');
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (78, 'A3', 'Ixodes uncus', ' Description of three new species of ixodes Latreille, 1795 (Acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637', '2020-01-01', 'endemic tick known from malagasy shrew tenrecs');
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (79, 'A3', 'Mantidactylus ambony ', ' ‘Barcode fishing’ for archival Dna from historical type material overcomes taxonomic hurdles, enabling the description of a new frog species. Scientific Reports, 10, 19109 (2020).', '2020-01-01', 'endemic to a massif in the extreme north of the island');
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (80, 'A3', 'Platypelis ranjomena', 'genetic variability and partial integrative revision of Platypelis frogs (microhylidae) with red flash marks from eastern madagascar. Vertebrate Zoology, 70(2): 141-156', '2020-01-01', '(endemic the central east and northeastern madagascar');
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (82, 'A3', 'Uroplatus fivehy', 'towards completion of species inventory of smallsized leaf-tailed geckos: two new species of Uroplatus from northern madagascar. Zootaxa, 4892(2): 251-275.', '2020-01-01', 'endemic gecko to a massif in the north of the island');
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (83, 'A4', 'Climate change', 'The intent of this project is to measure possible effects of global climatic change on certain endemic terrestrial vertebrates. This is being accomplished by revisiting three different mountains on the island intensively studied along an elevational gradient over 15 years ago and repeating the inventory methods down to very fine details, such as the same dates and placements of different types of traps. While data on the presence and absence of a given taxonomic group will be used in comparing the previous and recent inventories, the unique aspect we have added to the project is employing molecular genetic data. We will becomparing shifts in haplotypic frequencies through time and this measure may be directly correlated with global warming, pushing animals to higher altitudes to find preferable biotypes.', '2015-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (84, 'A4', 'Transmissible diseases', 'In this project, followed viro-serological and vector populations of wild vertebrates and a quantitative assessment on a regional risk of introduction and spread of the disease are done. This is a project funded by the CRVOI (Centre for Research and Watch on emerging diseases in the Indian Ocean) Reunion and associated team from the Institut Pasteur de Madagascar (IPM). The latter has been working for several years on transmission mechanisms of many diseases. 

The specific objectives of this project are to:

    -assess the intensity of viral circulation and circulation periods in a pilot area of Madagascar,

    -identify potential wild reservoirs of the virus in Madagascar,

    -establish an epidemiological assessment in Madagascar,

    -identify the various potential modes of introduction and transmission in Madagascar, and assess the risk of endemicity of the disease.

', '2015-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (85, 'A4', 'Conservation biology', 'Vahatra is also interested in different types of research involving:

    -vertebrates taxonomy and phylogeny

    -vertebrates biogeography

    -ecology and biology

    -conservation

    -impact assessment

 ', '2015-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (86, 'A4', 'StopRats', 'Stoprats is a multi-partner project financed by the Secretariat of the African and Caribbean Group, led by Natural Resources Institute, University of Greenwich, United Kingdom and including countries like Namibia, Madagascar, Sierra Leone, South Africa, Swaziland , Tanzania. The general objectives of the project are to build capacity in science, in technology and innovation in the management of rodent pests and to contribute to the sustainable development of Africa and Madagascar, so that these institutions could have knowledge of the main indicators of poverty through rodent impacts on agricultural production and food security systems.



Students from the Institute of Technical Science and Environment, University of Fianarantsoa, from the Animal Biology Department, University of Antananarivo, a team of environmental educators, and colleagues from the Institut Pasteur de Madagascar, provide the smooth running of the activities of this project.



In 2014, fifteen scientists from the countries members of Stoprats project were in Madagascar for the field school. Then the series of investigations were conducted in the Malagasy highplands to have knowledge about the extent of damage caused by rats and the methods used to fight against these problems. Meetings with stakeholders on the problems of rats, namely, the responsible of the agriculture, breeding and health were also conducted in Fianarantsoa. Researches on diets and habitats used by the rats and endemic rodents, by using stable isotopes have been undertaken as part of this project.', '2014-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (87, 'A4', 'E-book on the protected areas of madagascar and other user tools', 'In late 2015, Association Vahatra received a three-year grant from CEPF to

conduct a large-scale review of the protected areas system of Madagascar.

The bilingual French-English three volume book entitled Les aires protégées

terrestres de Madagascar : leur histoire, description et biote / Terrestrial

protected areas of Madagascar: Their history, description and biota was

published by Association Vahatra in late 2018. Based on an additional grant

from CEPF to Strand Life Science (Bangalore, India), with Association

Vahatra as a partner, an e-book of a revised and corrected version of the

protected area book has been produced, and is distributed by The University

of Chicago Press (https://w.bibliovault.org/BV.titles.epl?pc=596&sort=title).

The printed volumes of the protected area book are cumbersome to say the

least, weighing close to 7 kg, and the e-book version greatly facilitates their

utilization. Further, to simplify usage and be more user-friendly, separate

e-books have been prepared for the French and English language versions.

Other aspects of this project included the creation of a website in Malagasy,

French, and English containing lots of details on the 98 terrestrial protected

areas of Madagascar covered in the book, including up-to-date species

lists of vertebrates known from each site, as well as the means for citizen scientists and naturalists to update the downloadable species lists based on

new observations and published data. Based on a day-seminar presentation

in Antananarivo by Thomas Vattakaven and Prabhakar Rajagopal of Strand

Life Science and different members of Association Vahatra to potential

users of the site, important input was received on aspects that facilitated the

website organization. The timing of the seminar was just before the start of

the COVID-19 epidemic and all subsequent work on the project has been

via email and video conferences. Another important aspect of this project

was uploading on to a cloud and providing free access to about 9000 pdf

files used in writing the book, which include a range of different types of

publications, unpublished reports, previously unavailable DEA and Master’s

memoires, Ph.D. theses, and other types of diploma documents from the

Malagasy university system. The Madagascar Protected Areas portal site can

be accessed at https://protectedareas.mg/. The portal is an important tool for

researchers, students, and conservationists on Madagascar and overseas and

we hope to amend the project to more advanced stages. In early December

2021, our colleagues at Strand Life Sciences in Bangalore via a video

conference formally presented the portal in Madagascar to an assortment of interested individuals physically present at Vahatra or connected via a video

conference, which was followed by a reception. The event received press

and television coverage. The final accepted report to CEPF was submitted in

late 2021 and the first phase of the project has now been completed.', '2015-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (88, 'A4', 'Indian house Crow eradication and invasive species surveillance', 'In the context of this project, Madagascar Fauna and Flora Group (MFG)

in collaboration with Association Vahatra and other partners received a

grant to eradicate the recently introduced and highly invasive Indian House

Crow (Corvus splendens) in the Toamasina area, central eastern coast of

Madagascar, as well as other areas the species has turned up on the island.

The grant also included advancing different types of research associated with

problems imposed on Madagascar’s ecosystems and the Malagasy people

by invasive animal species. MFG was responsible for orchestrating the

eradication of the Indian House Crow and Vahatra’s interventions focused

on scientific aspects associated with the biology, distribution, and zoonotic diseases of the crow and House Sparrows (Passer domesticus) in and

around Toamasina. More specifically, scientific research on invasive species

included projects conducted by three Master’s students from The University

of Antananarivo and working with Vahatra scientists, all of which were

presented in 2021. These studies included the presence and absence of Indian

House Crows in all major ports on the island and population estimates (by

Estelle Raobson Hanitrandrasana); the breeding biology and dietary regime

of House Sparrows in the city of Toamasina (by Saholy Raolihanitrasina);

and the diet of a quasi-invasive bat species living in human-built structures

(by Lomeris Todilahy). As of late 2021, MFG and the project collaborators

have removed all of the known House Crows on Madagascar, which is a

major accomplishment.', '2015-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (89, 'A4', 'Land use in the Sava region and global health challenges', 'This project is based on a grant awarded to Duke University, with Dr.

Charles Nunn as the Principal Investigator, in 2019 through the Ecology and

Evolution of Infectious Diseases (EEID) program, a joint initiative between the National Institute of Health and the National Science Foundation (NSF).

This large-scale project aims to understand the linkages between diseases

circulating in the foothills of the Marojejy Massif across a habitat mosaic

of native forest, agricultural areas, and near villages for which endemic and

introduced animals may act as reservoirs and the source of transmission.

Association Vahatra is one of the collaborating organizations focused on

field capture of bats, endemic and introduced small mammals, and collecting

the needed samples for the zoonotic disease analyses. Toky Randriamoria, a

post-doc in the context of the project, is responsible for the field sampling

and seconded by Voahangy and Steve. A new assistant, Rianja Nantenaina

Randriamifidisoa, has been engaged to reinforce the field team. Fifaliantsoa

Rasolobera, the previous field assistant, is now incorporated in the project

as a PhD student and working on small mammal ecology and distribution.

Three different field camps at the foothills of the massif, each visited during

three different seasons for sampling in a range of habitats, have solar panels

to provide the needed energy to run a refrigerator to keep samples at the required low temperatures. In association with a considerable range of

collaborators studying multiple facets of local circulating zoonotic diseases

and parasites, this research project aims to study novel methods to predict

disease spread, particularly different infectious diseases being important

human health concerns on Madagascar.

Three Vahatra students from The University of Antananarivo and one

from The University of Antsiranana are taking part in this project: Tamby

Ranaivoson (PhD student) and Fifaliantsoa Rasolobera (PhD student,

mentioned above) working on small mammal ecology and reproduction;

Daniel Falimiarintsoa (Masters student) working on bat ecology and habitat

associations on the southwestern slopes of the Marojejy Massif; and Johanna

Rafanomezanjanahary working on bat ecology and habitat associations

on the southwestern slopes of the Marojejy Massif; Daniel will present

in March 2022 and Johanna presented in March 2021. Fieldwork for this

project continues until mid-2023.', '2019-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (90, 'A4', 'Restauration Patrimoine mondial: Forêts humides de l’Atsinanana', 'The moist evergreen moist evergreen forests of the eastern region of

Madagascar are home to an exceptional diversity of plants and animals and

these ecosystems play a fundamental role in maintaining biodiversity and

ecological processes. Their integration some years back within UNESCO’s

network of World Heritage Sites, the series of protected areas known

as “The Rainforest of the Atsinanana”, was a crucial step in supporting

efforts to preserve their Outstanding Universal Values. Unfortunately, these

ecosystems for different economic and cultural reasons are often subject to

anthropogenic pressures. The 2009 political crisis on Madagascar, a period

of near total anarchy in certain areas of the island, allowed people to rush

massively into protected areas for illegal exploitation of rosewoods, gold

panning, charcoal production, and to acquire new agricultural lands via

deforestation. The integrity of the biological diversity of The Rainforest of

the Atsinanana and their Outstanding Universal Values have been seriously

threatened. The magnitude of the situation was such that UNESCO’s

World Heritage Committee decided in 2010 to classify The Rainforest of

the Atsinanana in the World Heritage list of sites “In Danger”. The purpose

of this current project financed at the level of several million US dollars

by the Korea International Cooperation Agency (KOICA) is to rectify the

situation through several different approaches: economic development,

public education, and studies of the regional biota.

The role of Association Vahatra in the project is to examine patterns of

biotic diversity at the focal sites through biological inventories, with a focus

on change through time. Vahatra scientists and students surveyed several

of these sites some 20-25 years ago and comparisons of possible change at

the scale of several decades can be made, and if such changes have taken

place, to determine the probable causal reasons. Finally, with biodiversity

data across nearly 20+ years, it will be possible to strengthen protection of

the sites and better understanding different pressures. Another aspect is to

install a system of ecological monitoring sites and automated meteorological

stations to provide measures of climate change in the future.

In early 2021, in the context of this BIOCOM project, a Vahatra field

team, together with nine students from The University of Antsiranana and another individual working for the

protected area manager took part

in a field school and conducted an

eco-biological evaluation of the dry

forests of Montagne de Français in

the far north.

The results of this field project

have been accepted for publication

in Malagasy Nature and will appear

in 2023. Further, over the course of

nearly eight weeks in October and

November 2021, a large field team

conducted an elevational transect

of Marojejy, one of The Rainforest

of the Atsinanana sites. The survey

repeated in fine detail the transect of

1996 and across different groups of

organisms. This was a large-scale

logistic exercise, with five camps between the lowland forest and summital zone of the massif, and with

displacements of over 40 porters at a time to carry gear, supplies, and food.

The material included solar panels, a large battery, and a small refrigerator

to maintain collected samples from forest-dwelling mammals on the

massif and tie-in to the Duke University (NIH and NSF) zoonotic disease

research project mentioned above. Vahatra and colleagues are in the process

of analyzing data to understand patterns of possible change through time

and the scientific results will be available in the near future. In late 2022

the Vahatra team will redo another elevational transect in the Andohahela

protected area in the same fashion as Marojejy and part of the The Rainforest

of the Atsinanana.', '2021-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (91, 'A4', 'Diversity and transmission dynamics of infectious agents in malagasy bats', 'The scientific objectives of this project are to characterize the diversity of

infectious agents circulating in bat populations of northern Madagascar and

to study the temporal dynamics of transmission, particularly within breeding

and day-roosting colonies. Funding is based on a grant from the Fonds

Européen de Développement Régional (FEDER). The study in collaboration

with Dr. Camille Lebarbenchon from the Processus Infectieux en Milieu

Insulaire Tropical (PIMIT) laboratory and associated with The University

of La Reunion, and with a Malagasy post-doc, Riana Ramanantsalama, who

did his PhD with Vahatra, employs samples of captured/marked/released

bats for laboratory analysis. For each bat, samples include oral and rectal

swabs, as well as ectoparasites.

In the original plan for fieldwork, it was proposed that each study colony,

including caves in Ankarana and synanthropic roost sites in buildings

in the nearby town of Ambilobe, to be visited every 3-4 months to study

seasonal shifts in the temporal dynamics of infection at the population level.

Individuals of the fruit bat Rousettus madagascariensis (family Pteropodidae)

living in the caves of Ankarana are marked with uniquely numbered rings in order to study infection dynamics at the level of individuals. With the

lockdown of 2020, only two visits were conducted to the study sites in that

year and we were only able to restart the fieldwork in late 2021. Because

of all of the COVID-19 related delays, an extension of the project has been

requested from the granting agency. We are still awaiting that decision', '2020-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (92, 'A4', 'Save the rainforest sweden (Rädda Regnskog) project at Ambohitantely', 'The Réserve Spéciale d’Ambohitantely is one of the last remnant Central

Highland montane forests on the island and it is of high priority to conserve,

even though already notably fragmented. This fragile and vulnerable relict

forest is home to rich and unique biodiversity from the invertebrate to the

vertebrate fauna as well as for the flora. Since 2007, the Association Vahatra

has organized in this protected area a series of regular research missions,

field schools or forms of ecological and biological training for students, as

well as for conservation agents and managers.

Over the past decades, between the anthropogenic pressures of wild

grassland fires, some being set as acts of anarchy, which enter into the

remaining natural forest, the number of forest parcels and their surface areas

have been dramatically reduced or disappeared forever. In a collaborative

project between Association Vahatra and Madagascar National Parks, the

organization responsible for the management of the protected area, and with funding from Save the Rainforest Sweden, and in collaboration with

Johannes Bergsten, Swedish Museum of Natural History in Stockholm,

we have taken steps to try to conserve Ambohitantely and in association

with local villagers. The first critical step to conserve the forest was the

completion of a firebreak around the largest remnant parcel, a massive

activity and done 100% by hand. Between April and June 2021, just before

the bush fire season, about 19 km of firebreaks were completed and these

were installed in a manner to stop open country fire progression into the

forest.

Since 2015, scientific members of Association Vahatra with different

colleagues were solicited to conceive and design a simple and practical

guide for ecological restoration of three protected areas (Marojejy, Masoala,

and Ranomafana). To restore the ecological integrity of Ambohitantely,

a significant portion of which has been destroyed or heavily degraded by

bush fires, and several blocks will soon not be viable without intervention,

the same methods and technics have been applied as for the sites mentioned

above. An expert Malagasy Botanist in collaboration with Achille is in charge of the implementation of this challenging project. For now, we adopt

active and assisted passive restoration strategy. A plant nursery has been

established and the restoration site, that will link in a corridor fashion the

main forest and a nearby forest fragment, is already prepared with a matrix

of dug planting holes filled with compost and ready for transplantation in

early 2022.

Previous studies carried out at Ambohitantely mainly concern vertebrates

and plants, but the site includes different aquatic habitats for insects. To

advance studies on the diversity and ecology of aquatic insects, Vahatra

has engaged a post-doc student from the Entomology Department at The

University of Antananarivo to carry out biological inventories of aquatic

insects within and around the protected area. He is also in charge of the

training and mentoring of Master students working on insects at his home

institution. Two of these students are now finalizing the preparation of their

memoirs.



In Ambohitantely, there is no functional infrastructure other than rugged

camping sites for researchers, students or for other visitors. To promote

research activities and to increase the frequency of visitors, in the context of

this project, we are in the process of constructing a humble biological station

of 14 x 5 m with three rooms (kitchen, lab, and large room/dormitory for 8

persons). Construction is now well underway and 40 000 fires clay bricks,

cement, iron, etc. have been delivered to the site. The building is at the edge

of the Madagascar National Parks village complex and a short distance from

the main forest.', '2021-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (93, 'A4', 'Developing effective rodent control strategies to reduce disease risk in ecologically and culturally diverse rural landscapes', 'The project, named REDROZ (Reduce Rodent Zoonosis), aims at reducing

the risk from rodent-borne infections in Africa, including Madagascar, by increasing knowledge and expertise needed to develop holistic rodent

management applicable for local conditions and at the community level.

Research is designed to answer whether sustainable community-based

rodent management can reduce risks of disease transmission and improve

overall human health and wellbeing. Multidisciplinary activities conducted

in Tanzania and Madagascar, focus on three rodent-borne infections

(leptospirosis, plague, and rickettsiosis) and proceed in two stages. First,

we fill knowledge gaps, and deepening our existing collaborations with

communities and stakeholders, allowing us to co-develop rodent control that

are holistically evaluated in the second stage. We are developing a spatially

realistic modelling tool to explore likely responses of rodent populations and

rodent-borne infections to localized rodent control. Analyses of rich archived

datasets and new experimental trials are being used to parameterize models

and test output. In Madagascar, the study is carried-out in collaboration with

Institut Pasteur de Madagascar. In the first stage, we work in 12 villages

within Analavory/Miarinarivo commune (Central Highlands to the west of

Antananarivo), where villages act as replicates, experimentally determining

how rodent movements and the prevalence of rodent-borne infections

are impacted by control. We use a range of qualitative and quantitative

social science to produce a deeper understanding of community practices,

behavior, and understanding around relevant issues of health, hygiene and

pest management, and work with stakeholders from health, agriculture,

and environment spheres to understand their perceptions, policies, and

support services. In the second stage, we conduct a comparative trial in

12 intervention - non-intervention village pairs (n=24), co-developing

and trialing rodent management strategies over one year, and monitoring

changes to human practices and attitudes, rodent damage, disease within the

rodent population (i.e. leptospirosis, plague, and rickettsiosis), human health

indicators and time/financial inputs. Collaborative workshops are designed

to facilitate cross-country comparisons and high-level training to early career

researchers. A PhD student from The University of Antananarivo, Todisoa

Radovimiandrinifarany, is integrated in this project in the context of his PhD

thesis, and two students from The University of Fianarantsoa was taking part

in the fieldwork in the context of capacity building.', '2021-01-01', NULL);
INSERT INTO public.activity (id, idtypeactivity, title, description, date, note) VALUES (81, 'A3', 'Uroplatus fangorn', 'towards completion of species inventory of smallsized leaf-tailed geckos: two new species of Uroplatus from northern madagascar. Zootaxa, 4892(2): 251-275.', '2020-01-01', 'endemic gecko to a massif in the north of the island');


--
-- Data for Name: activityimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (1, 1, 52);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (2, 2, 53);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (3, 3, 54);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (4, 4, 55);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (5, 5, 56);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (6, 6, 57);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (7, 7, 58);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (8, 8, 59);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (9, 9, 60);
INSERT INTO public.activityimage (id, idimage, idactivity) VALUES (10, 10, 61);


--
-- Data for Name: activityinstitution; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (1, 29, 'I37');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (2, 31, 'I37');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (3, 87, 'I14');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (4, 88, 'I14');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (5, 88, 'I20');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (6, 89, 'I21');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (7, 89, 'I22');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (8, 89, 'I23');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (9, 90, 'I24');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (10, 90, 'I25');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (11, 90, 'I7');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (12, 91, 'I26');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (13, 91, 'I27');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (14, 91, 'I28');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (15, 93, 'I29');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (16, 93, 'I30');


--
-- Data for Name: activityperson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (1, 63, 4);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (2, 64, 22);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (3, 65, 23);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (4, 66, 24);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (5, 67, 25);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (6, 68, 20);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (7, 69, 4);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (8, 70, 25);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (9, 71, 25);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (10, 72, 26);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (11, 73, 27);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (12, 74, 48);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (13, 74, 95);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (14, 74, 29);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (15, 74, 78);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (16, 75, 79);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (17, 75, 4);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (18, 76, 79);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (19, 76, 4);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (20, 76, 3);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (21, 77, 79);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (22, 77, 4);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (23, 78, 79);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (24, 78, 4);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (25, 79, 80);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (26, 79, 81);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (27, 79, 82);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (28, 79, 83);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (29, 79, 84);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (30, 79, 85);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (31, 79, 86);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (32, 79, 87);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (33, 79, 88);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (34, 79, 89);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (35, 79, 1);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (36, 80, 88);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (37, 80, 80);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (38, 80, 84);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (39, 80, 1);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (40, 80, 90);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (41, 80, 1);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (42, 80, 91);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (43, 80, 82);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (44, 80, 89);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (45, 81, 92);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (46, 81, 93);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (47, 81, 94);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (48, 81, 88);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (49, 81, 1);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (50, 81, 84);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (51, 81, 89);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (52, 81, 80);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (53, 82, 92);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (54, 82, 93);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (55, 82, 94);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (56, 82, 88);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (57, 82, 1);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (58, 82, 84);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (59, 82, 89);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (60, 82, 80);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 27, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 27, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 27, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 27, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 28, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 28, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 28, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 28, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 29, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 29, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 29, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 29, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 30, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 30, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 30, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 30, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 1, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 1, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 1, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 1, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 2, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 2, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 2, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 2, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add memberviewposts', 3, 'add_memberviewposts');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change memberviewposts', 3, 'change_memberviewposts');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete memberviewposts', 3, 'delete_memberviewposts');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view memberviewposts', 3, 'view_memberviewposts');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add institution', 4, 'add_institution');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change institution', 4, 'change_institution');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete institution', 4, 'delete_institution');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view institution', 4, 'view_institution');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add member', 5, 'add_member');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change member', 5, 'change_member');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete member', 5, 'delete_member');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view member', 5, 'view_member');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add typemember', 6, 'add_typemember');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change typemember', 6, 'change_typemember');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete typemember', 6, 'delete_typemember');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view typemember', 6, 'view_typemember');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add messageofyear', 7, 'add_messageofyear');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change messageofyear', 7, 'change_messageofyear');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete messageofyear', 7, 'delete_messageofyear');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view messageofyear', 7, 'view_messageofyear');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add department', 8, 'add_department');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change department', 8, 'change_department');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete department', 8, 'delete_department');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view department', 8, 'view_department');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add image', 9, 'add_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change image', 9, 'change_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete image', 9, 'delete_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view image', 9, 'view_image');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add imagetype', 10, 'add_imagetype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change imagetype', 10, 'change_imagetype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete imagetype', 10, 'delete_imagetype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view imagetype', 10, 'view_imagetype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add partner', 11, 'add_partner');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change partner', 11, 'change_partner');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete partner', 11, 'delete_partner');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view partner', 11, 'view_partner');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add person', 12, 'add_person');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change person', 12, 'change_person');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete person', 12, 'delete_person');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view person', 12, 'view_person');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can add activityimage', 13, 'add_activityimage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can change activityimage', 13, 'change_activityimage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can delete activityimage', 13, 'delete_activityimage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can view activityimage', 13, 'view_activityimage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can add intervenantfieldschool', 14, 'add_intervenantfieldschool');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can change intervenantfieldschool', 14, 'change_intervenantfieldschool');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can delete intervenantfieldschool', 14, 'delete_intervenantfieldschool');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can view intervenantfieldschool', 14, 'view_intervenantfieldschool');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (73, 'Can add activity', 15, 'add_activity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (74, 'Can change activity', 15, 'change_activity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (75, 'Can delete activity', 15, 'delete_activity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (76, 'Can view activity', 15, 'view_activity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (77, 'Can add location', 16, 'add_location');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (78, 'Can change location', 16, 'change_location');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (79, 'Can delete location', 16, 'delete_location');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (80, 'Can view location', 16, 'view_location');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (81, 'Can add typeactivity', 17, 'add_typeactivity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (82, 'Can change typeactivity', 17, 'change_typeactivity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (83, 'Can delete typeactivity', 17, 'delete_typeactivity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (84, 'Can view typeactivity', 17, 'view_typeactivity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (85, 'Can add typesubactivity', 18, 'add_typesubactivity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (86, 'Can change typesubactivity', 18, 'change_typesubactivity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (87, 'Can delete typesubactivity', 18, 'delete_typesubactivity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (88, 'Can view typesubactivity', 18, 'view_typesubactivity');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (89, 'Can add visit', 19, 'add_visit');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (90, 'Can change visit', 19, 'change_visit');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (91, 'Can delete visit', 19, 'delete_visit');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (92, 'Can view visit', 19, 'view_visit');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (93, 'Can add fieldschool', 20, 'add_fieldschool');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (94, 'Can change fieldschool', 20, 'change_fieldschool');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (95, 'Can delete fieldschool', 20, 'delete_fieldschool');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (96, 'Can view fieldschool', 20, 'view_fieldschool');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (97, 'Can add activityperson', 21, 'add_activityperson');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (98, 'Can change activityperson', 21, 'change_activityperson');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (99, 'Can delete activityperson', 21, 'delete_activityperson');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (100, 'Can view activityperson', 21, 'view_activityperson');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (101, 'Can add activityinstitution', 22, 'add_activityinstitution');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (102, 'Can change activityinstitution', 22, 'change_activityinstitution');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (103, 'Can delete activityinstitution', 22, 'delete_activityinstitution');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (104, 'Can view activityinstitution', 22, 'view_activityinstitution');


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$320000$uSYnfUJFFFcD3OIKCMctvR$Fn5GyJhEr1+6ZY3Zq0Cc2BmczgXoxuME1wr84byMZQU=', '2022-08-26 06:05:16.150851-01', true, 'Vahatra', '', '', '', true, true, '2022-08-26 06:03:17.033454-01');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: degree; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.department (id, name) VALUES ('D1', 'Department of Animal Biology');
INSERT INTO public.department (id, name) VALUES ('D2', 'Department of Water and Forests');
INSERT INTO public.department (id, name) VALUES ('D3', 'Tierökologie und Naturschutz');
INSERT INTO public.department (id, name) VALUES ('D4', 'Biological Science Department');
INSERT INTO public.department (id, name) VALUES ('D5', 'Institut des Sciences et Techniques de l’Environnement (ISTE)');
INSERT INTO public.department (id, name) VALUES ('D6', 'School of Agronomy, Forest Department');


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'association', 'memberviewposts');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'association', 'institution');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'association', 'member');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'association', 'typemember');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'association', 'messageofyear');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'association', 'department');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'association', 'image');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'association', 'imagetype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'association', 'partner');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'association', 'person');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'activities', 'activityimage');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'activities', 'intervenantfieldschool');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'activities', 'activity');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'activities', 'location');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'activities', 'typeactivity');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'activities', 'typesubactivity');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (19, 'activities', 'visit');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (20, 'activities', 'fieldschool');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (21, 'activities', 'activityperson');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (22, 'activities', 'activityinstitution');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (23, 'publications', 'publicationauthor');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (24, 'publications', 'publicationdetail');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (25, 'publications', 'typepublication');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (26, 'publications', 'publication');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (27, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (28, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (29, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (30, 'auth', 'user');


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'association', '0001_initial', '2022-08-24 10:46:22.447337-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'association', '0002_memberviewpoststranslation', '2022-08-24 10:46:22.509773-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'association', '0003_department_image_imagetype_partner_person_and_more', '2022-08-24 10:46:22.512769-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'activities', '0001_initial', '2022-08-24 10:46:22.514764-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'contenttypes', '0001_initial', '2022-08-24 12:44:26.631094-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'contenttypes', '0002_remove_content_type_name', '2022-08-24 12:44:26.746859-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'sessions', '0001_initial', '2022-08-24 12:45:41.621592-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'auth', '0001_initial', '2022-08-26 06:00:00.457829-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'admin', '0001_initial', '2022-08-26 06:00:00.670555-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'admin', '0002_logentry_remove_auto_add', '2022-08-26 06:00:00.682535-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-26 06:00:00.694491-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'auth', '0002_alter_permission_name_max_length', '2022-08-26 06:00:31.202516-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'auth', '0003_alter_user_email_max_length', '2022-08-26 06:00:31.215482-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'auth', '0004_alter_user_username_opts', '2022-08-26 06:00:31.227449-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'auth', '0005_alter_user_last_login_null', '2022-08-26 06:00:31.240415-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'auth', '0006_require_contenttypes_0002', '2022-08-26 06:00:31.243407-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (40, 'auth', '0007_alter_validators_add_error_messages', '2022-08-26 06:00:31.252383-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (41, 'auth', '0008_alter_user_username_max_length', '2022-08-26 06:00:31.34011-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (42, 'auth', '0009_alter_user_last_name_max_length', '2022-08-26 06:00:31.350081-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (43, 'auth', '0010_alter_group_name_max_length', '2022-08-26 06:00:31.369031-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (44, 'auth', '0011_update_proxy_permissions', '2022-08-26 06:00:31.391973-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (45, 'auth', '0012_alter_user_first_name_max_length', '2022-08-26 06:00:31.404937-01');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('v8uquz8bd7ci4vyu7al6kmmx7q8u4fr4', '.eJxVjDsOwyAQBe9CHSFgMYaU6X0GtMsnOIlAMnYV5e6xJRdJ-2bmvZnHbS1-62nxc2RXJtnldyMMz1QPEB9Y742HVtdlJn4o_KSdTy2m1-10_w4K9rLXZJMatZPWSBfQSA2aQKuMYsgCSNhBZMoBQDrtyIakjN5dyiJKNwKwzxe_Szbe:1oRTP2:K-b25uF4jvf3XluWg_5gkZ_dqFEzKAZovD9BB_uzfVo', '2022-09-09 06:05:16.152846-01');


--
-- Data for Name: fieldschool; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (1, 27, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (2, 27, 'I16', 'D4');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (3, 27, 'I3', 'D5');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (4, 28, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (5, 28, 'I16', 'D4');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (6, 28, 'I3', 'D5');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (7, 29, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (8, 30, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (9, 30, 'I9', 'D2');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (10, 30, 'I16', 'D4');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (11, 30, 'I3', 'D5');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (12, 31, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (13, 32, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (14, 32, 'I16', 'D4');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (15, 32, 'I3', 'D5');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (16, 33, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (17, 33, 'I16', 'D4');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (18, 33, 'I17', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (19, 33, 'I18', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (20, 34, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (21, 34, 'I17', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (22, 34, 'I18', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (23, 35, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (24, 35, 'I18', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (25, 36, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (26, 36, 'I17', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (27, 37, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (28, 38, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (29, 38, 'I17', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (30, 38, 'I19', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (31, 39, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (32, 39, 'I5', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (33, 40, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (34, 40, 'I9', 'D6');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (35, 41, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (36, 42, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (37, 43, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (38, 44, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (39, 45, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (40, 46, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (41, 47, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (42, 47, 'I5', NULL);
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (43, 48, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (44, 49, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (45, 50, 'I2', 'D1');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (46, 50, 'I9', 'D6');
INSERT INTO public.fieldschool (id, idvisit, idinst, iddept) VALUES (47, 51, 'I2', 'D1');


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.image (id, idtype, name, title) VALUES (1, 5, 'mikea01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (2, 5, 'nosyhara01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (3, 5, 'anjozorobe01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (4, 5, 'kirindymitea01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (5, 5, 'midongy01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (6, 5, 'ambatovy01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (7, 5, 'andranomena01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (8, 5, 'beanka01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (9, 5, 'salaryeng.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (10, 5, 'bemanevika01.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (11, 8, 'mn1.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (12, 8, 'mn2.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (13, 8, 'mn3.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (14, 8, 'mn4.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (15, 8, 'mn5.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (16, 8, 'mn6.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (17, 8, 'mn7.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (18, 8, 'mn8.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (19, 8, 'mn9.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (20, 8, 'mn10.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (21, 8, 'mn11.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (22, 8, 'mn12.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (23, 8, 'mn13.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (24, 8, 'mn14.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (25, 8, 'mn15.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (26, 8, 'op4.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (27, 8, 'g1.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (28, 8, 'g2.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (29, 8, 'g3.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (30, 8, 'g4.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (31, 8, 'g5.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (32, 8, 'g6.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (33, 8, 'g7.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (34, 8, 'g8.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (35, 8, 'g9.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (36, 8, 'op1.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (37, 8, 'op2.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (38, 8, 'op3.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (39, 8, 'nnhm.jpg', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (40, 8, 'nhm.jpg', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (41, 8, 'mn12_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (42, 8, 'mn13_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (43, 8, 'mn14_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (44, 8, 'mn15_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (45, 8, 'op4_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (46, 8, 'g1_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (47, 8, 'g2_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (48, 8, 'g3_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (49, 8, 'g4_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (50, 8, 'g5_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (51, 8, 'g6_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (52, 8, 'g7_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (53, 8, 'g8_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (54, 8, 'g9_back.gif', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (55, 9, 'achille.jpg', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (56, 9, 'marie_jeanne.jpg', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (57, 9, 'voahangy.jpg', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (58, 9, 'steve.jpg', 'TEST');
INSERT INTO public.image (id, idtype, name, title) VALUES (59, 9, 'none.jpg', 'TEST');


--
-- Data for Name: imagetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.imagetype (id, type) VALUES (1, 'avifauna');
INSERT INTO public.imagetype (id, type) VALUES (2, 'herpetofauna');
INSERT INTO public.imagetype (id, type) VALUES (3, 'small mammal');
INSERT INTO public.imagetype (id, type) VALUES (4, 'primate');
INSERT INTO public.imagetype (id, type) VALUES (5, 'landscape');
INSERT INTO public.imagetype (id, type) VALUES (6, 'miscellaneous');
INSERT INTO public.imagetype (id, type) VALUES (7, 'team');
INSERT INTO public.imagetype (id, type) VALUES (8, 'publication');
INSERT INTO public.imagetype (id, type) VALUES (9, 'members');


--
-- Data for Name: institution; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.institution (id, name) VALUES ('I1', 'Association Vahatra');
INSERT INTO public.institution (id, name) VALUES ('I2', 'University of Antananarivo');
INSERT INTO public.institution (id, name) VALUES ('I3', 'University of Fianarantsoa');
INSERT INTO public.institution (id, name) VALUES ('I4', 'University of Mahajanga');
INSERT INTO public.institution (id, name) VALUES ('I5', 'WWF Madagascar');
INSERT INTO public.institution (id, name) VALUES ('I6', 'Strategy Seminar');
INSERT INTO public.institution (id, name) VALUES ('I7', 'Madagascar National Parks');
INSERT INTO public.institution (id, name) VALUES ('I8', 'Indian Ocean Commission');
INSERT INTO public.institution (id, name) VALUES ('I9', 'Ecole Supérieure des Sciences Agronomiques');
INSERT INTO public.institution (id, name) VALUES ('I10', 'Office National pour l''Environnement (ONE)');
INSERT INTO public.institution (id, name) VALUES ('I11', 'Institut National des Sciences et Techniques Nucléaires');
INSERT INTO public.institution (id, name) VALUES ('I12', 'University of Hamburg');
INSERT INTO public.institution (id, name) VALUES ('I13', 'Kingfisher Group');
INSERT INTO public.institution (id, name) VALUES ('I14', 'Critical Ecosystem Partnership Fund (CEPF)');
INSERT INTO public.institution (id, name) VALUES ('I15', 'Invenergy');
INSERT INTO public.institution (id, name) VALUES ('I16', 'University of Toliara');
INSERT INTO public.institution (id, name) VALUES ('I17', 'University of Kwa-Zulu Natal, South Africa');
INSERT INTO public.institution (id, name) VALUES ('I18', 'University of Venda, South Africa ');
INSERT INTO public.institution (id, name) VALUES ('I19', 'CRVOI La Réunion');
INSERT INTO public.institution (id, name) VALUES ('I20', 'Madagascar Fauna and Flora Group ');
INSERT INTO public.institution (id, name) VALUES ('I21', 'Duke University');
INSERT INTO public.institution (id, name) VALUES ('I22', 'National Institute of Health (NIH)');
INSERT INTO public.institution (id, name) VALUES ('I23', 'National Science Foundation (NSF)');
INSERT INTO public.institution (id, name) VALUES ('I24', 'Korea International Cooperation Agency (KOICA)');
INSERT INTO public.institution (id, name) VALUES ('I25', 'United Nations Educational, Scientific and Cultural Organization (UNESCO)');
INSERT INTO public.institution (id, name) VALUES ('I26', 'Fonds Européen de Développement Régional (FEDER)');
INSERT INTO public.institution (id, name) VALUES ('I27', 'University of La Reunion');
INSERT INTO public.institution (id, name) VALUES ('I28', 'Processus Infectieux en Milieu Insulaire Tropical (PIMIT)');
INSERT INTO public.institution (id, name) VALUES ('I29', 'Global Challenges Research Fund (GCRF)');
INSERT INTO public.institution (id, name) VALUES ('I30', 'United Kingdom Research and Innovation (UKRI)');
INSERT INTO public.institution (id, name) VALUES ('I31', 'System of Protected Areas of Madagascar (SAPM)');
INSERT INTO public.institution (id, name) VALUES ('I32', 'Ambatovy-Sherritt Internationa');
INSERT INTO public.institution (id, name) VALUES ('I33', 'REBIOMA');
INSERT INTO public.institution (id, name) VALUES ('I34', 'Tany Meva and UNESCO World Heritage program');
INSERT INTO public.institution (id, name) VALUES ('I35', 'CITES');
INSERT INTO public.institution (id, name) VALUES ('I36', 'Ministry of the Environment');
INSERT INTO public.institution (id, name) VALUES ('I37', 'The Peregrine Fund');


--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.location (id, name, longitude, latitude) VALUES (1, 'Anjahamarina', 50.35, -15.0833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (2, 'Ambavala', 49.6167, -16.2);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (3, 'Ambalamanasy', 49.95, -13.7333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (4, 'Antanimbaribe', 46.85, -17.1833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (5, 'Manantenina', 47.3167, -24.2833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (6, 'Belambo', 47.3167, -17.8);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (7, 'Maroambihy', 49.85, -14.5);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (8, 'Analanambe', 49.95, -14.4);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (9, 'Ambodivoara', 47.5167, -18.1667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (10, 'Ambariotelo', 48.36667, -13.4333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (11, 'Betsiaka', 49.237267499999, -13.1581959);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (12, 'Marotolana', 49.03333, -14.61667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (13, 'Marovato', 48.9167, -12.6667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (14, 'Bemanevika', 47.9333, -16.1833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (15, 'Ampatakamaroreny', 48.8, -16.4833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (16, 'Antsiatsiaka', 49.3667, -17.0333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (17, 'Antsiraka', 49.6167, -16.2667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (18, 'Marotandrano', 48.70795, -16.42044);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (19, 'Djangoa', 48.3167, -13.7833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (20, 'Ankaramibe', 48.17956506, -13.9752602);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (21, 'Ankaramikely', 48.1667, -14.0167);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (22, 'Analanatsoa', 49.766667, -14.433333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (23, 'Maromandia', 48.0833, -14.2167);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (24, 'Ankitsika', 48.3833, -17.3167);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (25, 'Ambarijeby', 47.95, -14.6667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (26, 'Anjiamangirana', 47.7833, -15.1667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (27, 'Tsimanampetsotsa', 43.74921, -24.12882);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (28, 'Salary Bay', 43.284246, -22.5547423);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (29, 'Lakato', 48.4333, -19.1833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (30, 'Andranameena', 44.33333, -21.46667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (31, 'Ambohitantely', 47.2833, -18.1667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (32, 'Tampolo Fenérive-Est', 49.9667, -15.7333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (33, 'Midongy du Sud', 47.0167, -23.5833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (34, 'Bemaraha', 45.1667, -19.3333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (35, 'Marojejy', 49.7333, -14.4333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (36, 'Daraina', 49.6667, -13.2);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (37, 'Ankarana', 48.5, -16.95);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (38, 'Ankazomivady', 47.1833, -20.7667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (39, 'Andranameay', 47.95, -18.5);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (40, 'Ankaratra', 47.2, -19.4167);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (41, 'Maromiza', 48.45, -18.95);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (42, 'Mikea', 43.3833, -22.5);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (43, 'Nosy Hara', 49.0167, -12.2333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (44, 'Anjozorobe', 47.8667, -18.4);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (45, 'Kirindy-Mitea', 44.138666112, -20.806163442);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (46, 'Ambatovy', 48.3, -18.8167);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (47, 'Beanka', 44.559567, -17.925304);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (48, 'Andohahela', 46.7, -24.6);


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (5, 5, 2, 'msraharinirina@gmail.com', 'Sabrina joined the association in October 2015.', NULL);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (6, 6, 2, NULL, ' Ledada

started working with the ETP some 29 years ago and transferred to

Vahatra in October 2007. He has helped organize logistics for hundreds

of field missions to some of the remotest areas on Madagascar.', NULL);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (7, 7, 2, NULL, 'She has worked with

Vahatra since May 2016.', NULL);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (8, 8, 2, NULL, NULL, NULL);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (9, 9, 2, NULL, NULL, NULL);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (10, 10, 2, NULL, NULL, NULL);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (12, 12, 1, NULL, NULL, NULL);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (1, 1, 2, 'raselimananaachille@gmail.com', 'Founding member. His fields of interest include herpetology, including systematics, biogeography, ecology and biological evaluation as well as study of environmental impact. Responsible for courses on reptiles and amphibians biology for second year students as well as biogeography, ecological monitoring and ecomorphology for master level students.', 55);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (2, 2, 2, 'jraherilalao@gmail.com', 'Founding member. She has interests in ornithology including biology, ecology, systematics, biogeography, biological evaluation, and the study of environmental impact. Responsible for teaching of bird biology for second year students as well as evolutionary biology and biodiversity evaluation, especially terrestrial vertebrates for master level students.', 56);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (3, 3, 2, 'voahangysoarimalala@gmail.com', 'Founding member. Her research interests include mammals, especially small mammals and carnivores which includes systematics, biogeography, ecology, biological evaluation and environmental impact study. Responsible for teaching ecology and animal systematics for first and second year students; biodiversity conservation and valorisation for third year students.', 57);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (4, 4, 2, 'sgoodman@fieldmuseum.org', ' Founding member. His fields of research interests include several domains such as mammals, bats and birds. He is particularly interested in biology, ecology, systematics, biogeography, paleoecology, etc.', 58);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (11, 11, 1, NULL, 'He is actually retired', 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (13, 13, 1, NULL, 'He is actually retired', 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (14, 14, 1, NULL, NULL, 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (15, 15, 1, NULL, NULL, 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (16, 16, 1, NULL, NULL, 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (17, 17, 1, NULL, NULL, 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (18, 18, 1, NULL, NULL, 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (19, 19, 1, NULL, NULL, 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (20, 20, 1, NULL, NULL, 59);
INSERT INTO public.member (id, idperson, idtypemember, mail, description, idimage) VALUES (21, 21, 1, NULL, NULL, 59);


--
-- Data for Name: memberpostinst; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (1, 'P1', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (1, 'P2', 'I2', 'D1');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (2, 'P3', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (2, 'P4', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (2, 'P5', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (2, 'P2', 'I2', 'D1');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (3, 'P3', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (3, 'P6', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (3, 'P7', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (3, 'P9', 'I2', 'D1');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (3, 'P2', 'I3', 'D1');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (4, 'P10', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (4, 'P11', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (4, 'P12', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (4, 'P13', 'I2', 'D1');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (4, 'P2', 'I2', 'D1');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (4, 'P2', 'I4', 'D1');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (5, 'P14', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (6, 'P15', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (7, 'P16', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (8, 'P17', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (8, 'P18', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (9, 'P17', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (9, 'P18', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (10, 'P17', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (10, 'P18', 'I1', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (11, 'P2', 'I2', 'D1');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (12, 'P19', 'I5', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (13, 'P20', NULL, NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (13, 'P21', NULL, NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (13, 'P28', 'I6', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (14, 'P22', 'I7', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (14, 'P23', 'I8', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (15, 'P2', 'I9', 'D2');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (15, 'P24', 'I2', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (16, 'P25', 'I10', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (17, 'P25', 'I11', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (18, 'P2', 'I12', 'D3');
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (19, 'P26', 'I13', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (20, 'P27', 'I14', NULL);
INSERT INTO public.memberpostinst (idmember, idpost, idinst, iddept) VALUES (21, 'P1', 'I15', NULL);


--
-- Data for Name: messageofyear; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.messageofyear (id, year, description, idmember) VALUES (2, 2021, 'After two successive years of anguish in the shadow of the Covid-19 pandemic, living and working in greater serenity during the year 2021 was everyone’s wish and with the hope of catching up with much that could not be done in 2020.

Unfortunately, the situation has only worsened in 2021, despite the precautions taken at a previously non-imaginable scale to prevent the spread of the disease and the associated vaccination efforts. The impacts of Covid-19 are multiple not only in the domains of health and work, but also redirecting the life and dynamics of society in general, as well as local and international communities. With the worry of being contaminated, fear and panic reign everywhere and people are afraid of being in contact with their friends and even families. Superimposed on this is the many individuals that fell sick and worse those that succumbed to the virus. It is a total psychosis. Life has slowed down and hovers in limitless anxiety, without anyone being able to say how and when it will end. Here in Madagascar associated with the lack of clear dissemination of information, the situation is largely unknown concerning the prevalence of the disease in Malagasy society and the number of deaths; at the time of writing this message only about 3% of the population of Madagascar has being vaccinated.

However, we realize that this is not a time for the lighthearted, that is to say to give up hope. Learning to live with the prevailing situation is the best strategy to cross this difficult period. It is in this spirit of harmonizing the way of life, even given the existing conditions, that the Association Vahatra has been able to advance with some level of serenity through the year 2021. The members and students affiliated with the association have been 100% fully vaccinated, some already with boosters, and taking the needed precautions in social contexts to protect better one other and with the intent to complete what was planned to be accomplish in 2021.

Thus, despite the difficulties and uncertain conditions in which we had to work, the association was able to make numerous important achievements. (Please see different portions of this annual report for further details.) These include, for example, large-scale biological inventories, as part of the BIOCOM project in collaboration with UNESCO with funding from The Korea International Cooperation Agency (KOICA) that were carried out in the protected areas of Montagne des Français in March and in the Marojejy in October and November. In addition, this year we were able to launch an ambitious new project with funding from Save the Rainforest Sweden that aims to support the efforts to conserve the Ambohitantely protected area via three different axes: research on aquatic insects; ecological restoration, including a the large-scale installation of firebreaks surrounding the remaining forests; and the establishment of a multifunctional biological station. The Ambohitantely project illustrates the association’s desire to have a broad approach to its interventions directly needed to the management and protection of biodiversity, in addition to what we have been doing for many years concerning research, dissemination of information on the island’s biodiversity, and human capacity building. Taken together these different aspects help to advance the national perspective on the importance of science and train a whole range of young Malagasy scientists, which in the end is to protect the natural patrimony of the island.

In addition, the Madagascar Protected Areas portal is up and functioning (see https://protectedareas.mg/) and a revised version of the three volume titanic project The Terrestrial Protected Areas of Madagascar: Their History, Description and Biota published by Vahatra in 2018 is now in e-book form (see http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html ). In addition, despite a range of Covid-19 restrictions, the staff and students associated with Vahatra presented an HDR memoir, two PhD thesis, and five Masters, as well as a large assortment of scientific articles being published or submitted. Admittedly, the current world health crisis is a nightmare for any institution whatever their field of intervention, but accepting to live with the current situation and finding other solutions to overcome the challenge is the only way forward. Let us hope that with the experiences already lived during this past fateful year, we will all be able to face 2022 with a new and positive perspective and with more hope for the future. Good luck to all because with a valiant heart nothing is impossible!', 1);


--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.partner (id, idinst, description, link, logo) VALUES (1, 'I31', 'working for the creation and delimitation of new protected areas on Madagascar.', 'https://protectedareas.mg/', 'protected-areas.png');
INSERT INTO public.partner (id, idinst, description, link, logo) VALUES (2, 'I32', ' helping with the establishment of a Biodiversity Business Operational Program (BBOP)', 'https://ambatovy.com/en/', 'ambatovy.png');
INSERT INTO public.partner (id, idinst, description, link, logo) VALUES (3, 'I33', 'helping with the up-dating of a database associated with Malagasy biodiversity.', 'https://www.rebioma.org/', 'rebioma.jpg');
INSERT INTO public.partner (id, idinst, description, link, logo) VALUES (4, 'I34', 'biological evaluation and analysis of human pressures in a new UNESCO site.', 'https://tanymeva.org/', 'tanymeva.png');
INSERT INTO public.partner (id, idinst, description, link, logo) VALUES (5, 'I7', 'scientific aid in evaluating biodiversity and training of field agents.', 'https://www.parcs-madagascar.com/', 'mnp.png');
INSERT INTO public.partner (id, idinst, description, link, logo) VALUES (6, 'I35', ' helping with the compilation of data concerning Malagasy taxa.', 'https://cites.org/eng', 'cites.png');
INSERT INTO public.partner (id, idinst, description, link, logo) VALUES (7, 'I36', ' helping with the preparation of national report for the Convention on Biodiversity.', 'https://www.environnement.mg/', 'logo-medd-presidence.png');
INSERT INTO public.partner (id, idinst, description, link, logo) VALUES (8, 'I37', 'Capacity building for conservation agents and students. This project is generously funded by Helmsley Charitable Trust (HCT)', 'https://www.peregrinefund.org/', 'peregrine.png');


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person (id, name, username, title) VALUES (1, 'Raselimanana', 'Achille P.', 'Pr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (2, 'Raherilalao', 'Marie Jeanne', 'Dr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (3, 'Soarimalala', 'Voahangy', 'Dr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (4, 'Goodman', 'Steven M.', 'Pr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (5, 'Raharinirina', 'Sabrina', 'Ms.       ');
INSERT INTO public.person (id, name, username, title) VALUES (6, 'Ratsirahaingotiana', 'Sandra', 'Ms.       ');
INSERT INTO public.person (id, name, username, title) VALUES (7, 'Razafindravao', 'Rachel (Ledada)', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (8, 'Malaimbohitsy', 'Elisa', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (9, 'Avisoa', 'Mara', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (10, 'Tsitindria', 'François', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (11, 'Rakotondravony', 'Daniel', 'Pr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (12, 'Ratsifandrihamanana', 'Nanie', 'Ms.       ');
INSERT INTO public.person (id, name, username, title) VALUES (13, 'Ratrimoarivony', 'Guy', 'General   ');
INSERT INTO public.person (id, name, username, title) VALUES (14, 'Andrianarivo', 'Chantal', 'Ms.       ');
INSERT INTO public.person (id, name, username, title) VALUES (15, 'Ratsirarson', 'Joelisoa', 'Pr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (16, 'Rakotoary', 'Jean Chrysostome', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (17, 'Andriambololona', 'Raoelina', 'Pr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (18, 'Ganzhorn', 'Jörg U.', 'Pr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (19, 'Goodman', 'Paul', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (20, 'Langrand', 'Olivier', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (21, 'Polsky', 'Michael', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (22, 'Ranivoharimanana', 'Lovasoa', 'Ms.       ');
INSERT INTO public.person (id, name, username, title) VALUES (23, 'REBIOMA', 'Equipe', '          ');
INSERT INTO public.person (id, name, username, title) VALUES (24, 'Ratsimbazafy', 'Jonah', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (25, 'Chikhi', 'Lounès', 'Mr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (26, 'Rakotondratsimba', 'Mbola', 'Ms.       ');
INSERT INTO public.person (id, name, username, title) VALUES (27, 'Douglas', 'Michael', 'Dr.       ');
INSERT INTO public.person (id, name, username, title) VALUES (28, 'Ralison', 'J.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (29, 'Wilmé', 'L.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (30, 'Rakotomalala', 'D.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (31, 'Gardner', 'Charlie J.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (32, 'Andrianarimisa', 'Aristide', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (33, 'Andrianjakarivelo', 'Vonjy', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (34, 'Rakotomalala', 'Zafimahery', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (35, 'Anjeriniaina ', 'Mirana', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (36, 'Rakotondravony', 'Hery A.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (37, 'Irwin', 'Mitchell T.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (38, 'Raharison', 'Jean-Luc', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (39, 'Roux', 'Fabrice', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (40, 'Bejoma', 'Benitoto', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (41, 'Cheban', 'Saoly Alfred', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (42, 'Rejo-Fienena', 'Félicitée', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (43, 'Tostain', 'Serge', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (44, 'Maminirina', ' Claudette P.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (45, 'Appleton', 'Belinda', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (46, 'Bradman', 'Helen M.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (47, 'Christidis', 'Les', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (48, 'Lourenço', 'Wilson R.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (49, 'Razafindratsita', 'Vololontiana', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (50, 'Zack', 'Steve', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (51, 'Ramasindrazana', 'Beza', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (52, 'Rajemison', 'Balisama', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (53, 'Griffiths', 'Owen', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (54, 'Barratt', 'Nicola', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (55, 'Lashaway', 'Caleb', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (56, 'Rai', 'Ashutosh', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (57, 'Molou', 'Irfane', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (58, 'Kartchner', 'Zachary', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (59, 'Holley', 'Aidan', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (60, 'Bechtolsheim', 'Matthias von', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (61, 'Renoul', 'Julien P.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (62, 'Dickinson', 'Steven', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (63, 'Berner', 'Pierre O.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (64, 'Phillipson', 'Peter B.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (65, 'Lowry II', ' Porter P.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (66, 'AndriamahMartin farivo', 'Lalao', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (67, 'Antilahimena', 'Patrice', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (68, 'Birkinshaw', 'Christopher', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (69, 'Rakotonirina', 'Jean Claude', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (70, 'Rall', 'Johannes L.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (71, 'Andriamanamihaja', 'Hasina', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (72, 'Ravelomanana', 'Tsilavina', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (73, 'Raheriarisena', 'Martin', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (74, 'Ralison', 'José M.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (75, 'Mass', 'Vanessa', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (76, 'Rakotondratsimba', 'Gilbert', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (77, 'Benstead', 'Jonathan P.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (95, 'Rossi', 'A.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (78, 'Waeber', '', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (79, 'Apanaskevich', 'D. A.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (80, 'Scherz', 'M. D.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (81, 'Rasolonjatovo', 'S. M.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (82, 'Köhler', 'J.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (83, 'Rancilhac', 'L.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (84, 'Rakotoarison', 'A.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (85, 'Ohler', 'A.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (86, 'Preick', 'M.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (87, 'Hofreiter', 'M.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (88, 'Glaw', 'F.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (89, 'Vences', 'M.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (90, 'Crottini', 'A.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (91, 'Andreone', 'F.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (92, 'Ratsoavina', 'F. M.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (93, 'Vieites', 'D. R.', NULL);
INSERT INTO public.person (id, name, username, title) VALUES (94, 'Haalitschek', 'O.', NULL);


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.post (id, name) VALUES ('P1', 'president');
INSERT INTO public.post (id, name) VALUES ('P2', 'professor');
INSERT INTO public.post (id, name) VALUES ('P3', 'scientific member');
INSERT INTO public.post (id, name) VALUES ('P4', 'ornithologist');
INSERT INTO public.post (id, name) VALUES ('P5', 'chef editor of Malagasy Nature');
INSERT INTO public.post (id, name) VALUES ('P6', 'scientific coordinator');
INSERT INTO public.post (id, name) VALUES ('P7', 'mammalogist');
INSERT INTO public.post (id, name) VALUES ('P9', 'head museum curator');
INSERT INTO public.post (id, name) VALUES ('P10', 'scientific advisor');
INSERT INTO public.post (id, name) VALUES ('P11', 'vice president');
INSERT INTO public.post (id, name) VALUES ('P12', 'co-editor of Malagasy Nature');
INSERT INTO public.post (id, name) VALUES ('P13', 'docteur honoris causa');
INSERT INTO public.post (id, name) VALUES ('P14', 'financial & administration manager');
INSERT INTO public.post (id, name) VALUES ('P15', 'logistic coordinator');
INSERT INTO public.post (id, name) VALUES ('P16', 'domestic help');
INSERT INTO public.post (id, name) VALUES ('P17', 'guardians');
INSERT INTO public.post (id, name) VALUES ('P18', 'gardeners');
INSERT INTO public.post (id, name) VALUES ('P19', 'country director');
INSERT INTO public.post (id, name) VALUES ('P20', 'général de corps d''armée');
INSERT INTO public.post (id, name) VALUES ('P21', 'Center for Diplomatic and Strategic studies');
INSERT INTO public.post (id, name) VALUES ('P22', 'former head of research and biodiversity');
INSERT INTO public.post (id, name) VALUES ('P23', 'technical advisor');
INSERT INTO public.post (id, name) VALUES ('P24', 'ex-vice president');
INSERT INTO public.post (id, name) VALUES ('P25', 'ex-general director');
INSERT INTO public.post (id, name) VALUES ('P26', 'principal');
INSERT INTO public.post (id, name) VALUES ('P27', 'executive director');
INSERT INTO public.post (id, name) VALUES ('P28', 'director');


--
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (1, 1, 'Volume 1 - Les forêts sèches de Madagascar', 'This first issue of Malagasy Nature is a monograph of 200 pages on Madagascar dry forests, associated with inventories conducted by a group of scientists in Madagascar, which are among the founding members of the Association Vahatra.', '2009-01-01', 11, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (2, 1, 'Volume 2', '', '2009-01-01', 12, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (3, 1, 'Volume 3: Biodiversity, exploration, and conservation of the natural habitats associated with the Ambatovy project', 'The third volume of Malagasy Nature presents a series of studies undertaken in the Ambatovy forests, near Moramanga. These studies were made within the framework of a research on the biodiversity partially covered forest zones, exposed to the mining by the Ambatovy Project. They were done to support the project conservation program.



Besides the description of the mining project conservation and ecological monitoring programmes, this Volume 3 shows the diverse biological and ecological information on various groups in particular, the invertebrates, the vertebrates, as well as the plants. It also compiles the results of the inventories of a zone near the region of Andasibe which was extensively studied for decades, in particular emphasizing the new discoveries on the flora and the fauna for these last 20 years. The new data presented in this volume show the biological importance of the studied zones. They will form basic information for the ecological and specific changes monitoring within the local biodiversity in time and in space.', '2010-01-01', 13, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (4, 1, 'Volume 4', '', '2010-01-01', 14, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (5, 1, 'Volume 5', '', '2011-01-01', 15, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (6, 1, 'Volume 6', '', '2013-01-01', 16, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (7, 1, 'Volume 7', '', '2013-01-01', 17, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (8, 1, 'Volume 8', '', '2014-01-01', 18, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (9, 1, 'Volume 9', '', '2015-01-01', 19, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (10, 1, 'Volume 10', '', '2016-01-01', 20, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (11, 1, 'Volume 11', '', '2017-01-01', 21, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (12, 1, 'Volume 12', '', '2017-01-01', 22, 41);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (13, 1, 'Volume 13', '', '2019-01-01', 23, 42);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (14, 1, 'Volume 14', '', '2020-01-01', 24, 43);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (15, 1, 'Volume 15', '', '2021-01-01', 25, 44);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (16, 2, 'Les chauves-souris de Madagascar', '129 pp and 77 figures.', '2011-01-01', 27, 46);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (17, 2, 'Les petits mammifères de Madagascar', '176 pp and 100 figures.', '2011-01-01', 28, 47);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (18, 2, 'Histoire naturelle des familles et sous-familles endémiques d''oiseaux de Madagascar', 'pp 148 and 54 figures.', '2011-01-01', 29, 48);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (19, 2, 'Les Carnivora de Madagascar', 'pp 158 and 73 figures.', '2012-01-01', 30, 49);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (20, 2, 'Les animaux et écosystèmes de l''Holocène disparus de Madagascar', 'pp 249, 34 figures and 20 plates.', '2013-01-01', 31, 50);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (21, 2, 'Les amphibiens des zones arides du Sud et de l''Ouest de Madagascar', 'pp 180 and 129 figures', '2014-01-01', 32, 51);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (22, 2, 'Les amphibiens du Nord de Madagascar', 'pp 354 and 197 figures, with pictograms.', '2018-01-01', 33, 52);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (23, 2, 'Fourmis de Madagascar : un guide pour les 62 genres / Ants of Madagascar: a guide for the 62 genera', 'A bilingual French-English book. 253 pp.', '2019-01-01', 34, 53);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (24, 2, 'Libellules et demoiselles de Madagascar et des Iles de l’Océan Indien occidentale / Dragonflies and damselflies of Madagascar and the western Indian Ocean Islands', 'A bilingual French-English book. 194 pp.', '2021-01-01', 35, 54);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (25, 3, 'Publications', '', NULL, 36, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (26, 3, 'Memoirs and thesis', '', NULL, 37, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (30, 3, 'The Natural History of Madagascar', ' Separated from the mainland of Africa for 160 million years, Madagascar has evolved an incredible wealth of biodiversity, with thousands of species that can be found nowhere else on earth. For instance, of its estimated 12,000 plant species, nearly 10,000 are unique to Madagascar. Malagasy animals are just as spectacular, from its almost forty currently recognized species of lemurs―a primate group found only here―to the numerous species of tiny dwarf chameleons. With astounding frequency scientists discover a previously unknown species in Madagascar―and at almost the same rate another natural area of habitat is degraded or destroyed, a combination that recently led conservation organizations to name Madagascar one of the most important and threatened conservation priorities on the planet.



The Natural History of Madagascar provides the most comprehensive, up-to-date synthesis available of this island nation''s priceless biological treasures. Contributions by nearly three hundred world-renowned experts cover the history of scientific exploration in Madagascar, its geology and soils, climate, forest ecology, human ecology, marine and coastal ecosystems, plants, invertebrates, fishes, amphibians, reptiles, birds, and mammals. Detailed discussions of conservation efforts in Madagascar highlight several successful park reserve programs that could serve as models for other areas. Beautifully illustrated throughout, the book includes over one hundred color illustrations, with fifty color photos by nature photographer Harald Schütz, as well as more than three hundred black-and-white photographs and line drawings.



The Natural History of Madagascar will be the invaluable reference for anyone interested in the Malagasy environment, from biologists and conservationists to policymakers and ecotourists. ', '2003-01-01', 40, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (27, 3, 'Atlas of selected land vertebrates of Madagascar', 'While the past few decades have seen numerous publications about the extraordinary and highly endemic terrestrial vertebrate fauna of Madagascar, ranging from technical papers, to species descriptions, and field guides, no detailed mapping exercise has been completed in the form of an atlas. The purpose of this book is that, to bring together information from numerous sources and present distributional maps for a wide range of taxa, descriptive texts to interpret patterns, and, for most, habitat models (Maxent). For the different reptiles, birds, and mammals treated herein, this atlas is intended as a reference for students, researchers, naturalists, and conservationists.', '2013-01-01', 38, NULL);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (28, 3, 'The terrestrial protected areas of Madagascar: their history, description and biota.', '', '2018-01-01', 26, 45);
INSERT INTO public.publication (id, idtype, title, description, date, idimagefront, idimageback) VALUES (29, 3, 'The New Natural History of Madagascar', 'In 2003, Steve Goodman and Jonathan P. Benstead (University of Georgia)

published a large volume (+1700 pages) entitled The Natural History

of Madagascar (University of Chicago Press). Steve was first editor

and principal contributor to the volume, which was widely praised—

e.g., Science called it “a scientific milestone and by far the largest synthesis

of tropical biology research ever.” Now fast forward nearly two decades

later and since the 2003 book appeared the amount of new information on

the natural history of Madagascar has expanded at a rate beyond the most

enthusiastic expectations. Advances made on research and conservation

fronts concerning Madagascar during this period easily surpassed that of

the 20 years preceding that volume’s publication. With all of this in mind,

Steve, as the principal editor, joined by 17 subject editors, including Achille

Raselimanana, have completely reworked the 2003 book. It is important to

underline that the new project is not a simple revision of the 2003 volume,

but a completely new book, with no previous contribution being simply

reprinted. Princeton University Press will publish the new volume in late

2022 or early 2023 under the title The New Natural History of Madagascar.

At the time of this writing, late January 2022, most of the book is in first

page proofs. The manuscript came in at just under 7,000 pages, including

553 figures and 243 tables, and has 279 contributions from 539 contributors,

of which about one-third are Malagasy and the 2003 book less than onequarter. The book will appear in two separate volumes of an estimated 1250

pages each. Princeton University Press has been highly collaborative in this

project and several hundred copies of the book will be sent to Madagascar for

distribution to different governmental and non-governmental collaborators

and partners of Association Vahatra', '2023-01-01', 39, NULL);


--
-- Data for Name: publicationauthor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (1, 1, 2);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (2, 1, 4);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (3, 1, 1);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (4, 1, 3);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (5, 1, 28);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (6, 1, 29);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (7, 1, 30);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (8, 2, 2);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (9, 2, 4);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (10, 2, 3);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (11, 2, 31);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (12, 2, 32);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (13, 2, 33);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (14, 2, 34);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (15, 2, 35);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (16, 2, 36);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (17, 2, 37);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (18, 2, 38);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (19, 2, 39);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (20, 2, 40);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (21, 2, 41);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (22, 2, 42);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (23, 2, 43);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (24, 2, 44);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (25, 2, 45);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (26, 2, 46);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (27, 2, 47);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (28, 2, 48);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (29, 2, 49);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (30, 2, 50);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (31, 2, 51);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (32, 2, 52);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (33, 2, 53);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (34, 2, 54);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (35, 2, 55);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (36, 2, 56);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (37, 2, 57);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (38, 2, 58);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (39, 2, 59);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (40, 2, 60);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (41, 2, 61);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (42, 2, 20);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (43, 3, 4);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (44, 3, 1);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (45, 3, 2);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (46, 3, 62);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (47, 3, 63);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (48, 3, 64);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (49, 3, 65);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (50, 3, 66);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (51, 3, 67);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (52, 3, 68);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (53, 3, 69);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (54, 3, 70);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (55, 3, 71);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (56, 3, 72);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (57, 3, 73);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (58, 3, 74);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (59, 3, 75);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (60, 3, 76);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (61, 29, 4);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (62, 30, 4);
INSERT INTO public.publicationauthor (id, idpublication, idperson) VALUES (63, 30, 77);


--
-- Data for Name: publicationdetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (200, 1, 'Préface', 'volume1/mn01_preface.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (201, 1, 'Introduction', 'volume1/mn01_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (202, 1, 'Exploration et connaissance biologique des différents sites inventoriés', 'volume1/mn01_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (203, 1, 'Herpétofaune des forêts sèches malgaches', 'volume1/mn01_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (204, 1, 'L’avifaune des forêts sèches malgaches ', 'volume1/mn01_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (205, 1, 'Les petits mammifères non-volants des forêts sèches malgaches', 'volume1/mn01_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (206, 1, 'Les lémuriens des forêts sèches malgaches', 'volume1/mn01_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (207, 1, 'Pressions et menaces dans la région forestière sèche malgache', 'volume1/mn01_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (208, 1, 'Aspect de la conservation des forêts sèches de Madagascar', NULL);
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (209, 1, 'La création des aires protégées dans le sud et sud ouest de Madagascar : approche et méthodologie', 'volume1/mn01_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (210, 1, 'Index', 'volume1/mn01_index.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (211, 1, 'Format for contribution', 'volume1/mn01_format.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (212, 2, 'Préface', 'volume2/mn02_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (213, 2, 'A review of the impacts of anthropogenic habitat change on terrestrial biodiversity in Madagascar: Implications for the design and management of new protected areas', 'volume2/mn02_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (214, 2, 'Vertébrés terrestres des fragments forestiers de la Montagne d’Ambatotsirongorongo, site dans le Système des Aires Protégées de Madagascar de la Région Anosy, Tolagnaro', 'volume2/mn02_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (215, 2, 'Reptiles, amphibiens et gradient altitudinal dans la région de Daraina, extrême nord-est de Madagasca', 'volume2/mn02_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (216, 2, 'A review of the endoparasites of the lemurs of Madagascar', 'volume2/mn02_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (217, 2, 'Les populations d’oiseaux aquatiques en périphérie d’une ferme de crevetticulture (OSO Farming)', 'volume2/mn02_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (218, 2, 'Etude ethnobotanique des ignames (Dioscorea sp.) dans la forêt Mikea et le couloir d’Antseva (sud-ouest de Madagascar)', 'volume2/mn02_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (219, 2, 'Variations morphométrique et moléculaire chez Miniopterus majori (Chiroptera : Miniopteridae) de Madagascar', 'volume2/mn02_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (220, 2, 'The species of Grosphus Simon (Scorpiones, Buthidae) distributed in the northern and eastern regions of Madagascar with the description of a new species', 'volume2/mn02_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (221, 2, 'Frugivory and facilitation of seed germination by the Velvet Asity, Philepitta castanea (Muller, 1776), in the rainforest understory of Ranomafana National Park, Madagascar', 'volume2/mn02_notes_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (222, 2, 'The diet of the endemic bat Myzopoda aurita (Myzopodidae) based on fecal analysis', 'volume2/mn02_notes_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (223, 2, 'Notes on the diet of the Barn Owl (Aves: Tytonidae: Tyto alba) from Zohin’Andavaka, Beahitse, extreme southwestern Madagascar', 'volume2/mn02_notes_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (224, 2, 'Urban avian population and possible heavy metal contamination at Parc Tsaratsoatra, Alarobia, Antananarivo, Madagascar', 'volume2/mn02_notes_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (225, 2, 'New distributional record of Appert’s Tetraka (Xanthomixis apperti) from Salary Bay, Mikea Forest, Madagascar', 'volume2/mn02_notes_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (226, 2, 'The Sooty Gull, Larus hemprichii (Aves: Laridae), on Nosy Ve: first records for Madagascar', 'volume2/mn02_notes_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (227, 2, 'Index ', 'volume2/mn02_index.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (228, 2, 'Notes aux contributeurs dans Malagasy Nature', 'volume2/mn02_contributeurs.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (229, 2, 'Format for contributions to Malagasy Nature', 'volume2/mn02_contribution.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (230, 3, 'Préface', 'volume3/mn03_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (231, 3, 'Ambatovy project: Mining in a challenging biodiversity setting in Madagascar', 'volume3/mn03_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (232, 3, 'Biological research conducted in the general Andasibe region of Madagascar with emphasis on enumerating the local biotic diversity', 'volume3/mn03_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (233, 3, 'Introduction to the early 2009 biological inventories conducted by the Association Vahatra in the Ambatovy-Analamay region', 'volume3/mn03_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (234, 3, 'Floristic inventory of the Ambatovy-Analamay mine site and comparison to other sites in Madagascar', 'volume3/mn03_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (235, 3, 'Survey of leaf litter ant species and assessment of invasive ants in the mining sites at Ambatovy, Madagascar', 'volume3/mn03_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (236, 3, 'Watercourse ecological sensitivity classification as a management framework to ameliorate pipeline construction impacts associated with the Ambatovy project', 'volume3/mn03_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (237, 3, 'The amphibians and reptiles of the Ambatovy-Analamay region', 'volume3/mn03_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (238, 3, 'The birds of the Ambatovy-Analamay region', 'volume3/mn03_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (239, 3, 'The non-volant and non-primate mammals of the Ambatovy-Analamay forest ', 'volume3/mn03_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (240, 3, 'The lemurs of the Ambatovy-Analamay region', 'volume3/mn03_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (241, 3, 'The Ambatovy lemur population spatial monitoring program: Summary of primary objectives and methods', 'volume3/mn03_11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (242, 3, 'Index', 'volume3/mn03_contributeurs.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (243, 3, 'Notes aux contributeurs dans Malagasy Nature', 'volume3/mn03_contribution.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (244, 3, 'Format for contributions to Malagasy Nature', 'volume3/mn03_index.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (245, 4, 'Rock matrix surrounding subfossil lemur skull yields diverse collection of mammalian subfossils: Implications for reconstructing Madagascar’s paleoenvironments', 'volume4/mn04_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (246, 4, 'Influences des pièges sur la réitération et la sexualité des utriculaires aquatiques : cas d’Utricularia gibba et U. stellaris (Lentibulariaceae)', 'volume4/mn04_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (247, 4, 'Estimation de la densité des populations d’une espèce menacée de tortue terrestre (Astrochelys radiata) dans le Parc National Tsimanampetsotsa au Sud de Madagascar', 'volume4/mn04_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (248, 4, 'Liste des noms vernaculaires en langue française des espèces de chauves - souris de Madagascar', 'volume4/mn04_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (249, 4, 'Distributions et caractéristiques des microhabitats de Microcebus griseorufus (Cheirogaleidae) dans le Parc National de Tsimanampetsotsa (Sud ouest de Madagascar)', 'volume4/mn04_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (250, 4, 'Madagascar Buzzard (Buteo brachypterus) nest in association with the colonial nesting Sakalava Weaver (Ploceus sakalava)', 'volume4/mn04_notes_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (251, 4, 'Petits mammifères (Afrosoricida et Rodentia) nouvellement recensés dans le Parc National d’Andohahela (parcelle 1), Madagascar', 'volume4/mn04_notes_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (252, 4, 'Espèces d’amphibiens et de reptiles nouvellement recensés dans le Parc National d’Andohahela, Madagascar', 'volume4/mn04_notes_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (253, 4, 'Index', 'volume4/mn04_index.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (254, 4, 'Notes aux contributeurs dans Malagasy Nature', 'volume4/mn04_contributeurs.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (255, 4, 'Format for contributions to Malagasy Nature', 'volume4/mn04_contribution.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (256, 5, 'Structure dentaire : Implication pour la paléoécologie des Traversodontidae (Eucynodontia) du Trias de Madagascar', 'volume5/mn05_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (257, 5, 'Phenology of different vegetation types in Tsimanampetsotsa National Park, southwestern Madagascar', 'volume5/mn05_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (258, 5, 'Analyse structurale des formations végétales du Parc National d’Andohahela, habitat de Microcebus spp. (Sud-est de Madagascar)', 'volume5/mn05_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (259, 5, 'Conservation status of some commercialized succulent species of Madagascar', 'volume5/mn05_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (260, 5, 'Diet of the Mascarene grass frog, Ptychadena mascareniensis, in Madagascar', 'volume5/mn05_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (261, 5, 'Un premier aperçu de la diversité herpétofaunique d’un bloc forestier isolé, la forêt sèche de Beanka, dans la partie Ouest de Madagascar', 'volume5/mn05_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (262, 5, 'Habitat préférentiel d’Uroplatus giganteus (Reptilia, Gekkonidae), dans le complexe de la Montagne d’Ambre, Nord de Madagascar', 'volume5/mn05_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (263, 5, 'A case of the sympatric occurrence of Microgale brevicaudata and M. grandidieri (Afrosoricida, Tenrecidae) in the Beanka Forest, Maintirano', 'volume5/mn05_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (264, 5, 'Inventaire de chauves-souris dans la concession forestière de Kirindy CNFEREF, Morondava, Madagascar', 'volume5/mn05_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (265, 5, 'Bats of the Beanka Forest, a limestone karstic zone near Maintirano, central western Madagascar', 'volume5/mn05_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (266, 5, 'Sakalava weaver (Ploceus sakalava) nesting association with raptors: An alternative hypothesis', 'volume5/mn05_notes01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (267, 5, 'Des Molossidae dans un arbre gîte de la région de Menabe central : description et biologie', 'volume5/mn05_notes02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (268, 5, 'Index ', 'volume5/mn05_index.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (269, 5, 'Notes aux contributeurs dans Malagasy Nature', 'volume5/mn05_contributeurs.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (270, 5, 'Format for contributions to Malagasy Nature', 'volume5/mn05_contribution.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (271, 6, 'Note to readers - Note aux lecteurs', 'volume6/mn06_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (272, 6, 'Un premier aperçu de la faune de vertébrés du bush épineux de Salary-Bekodoy, à l’ouest du Parc National de Mikea, Madagascar', 'volume6/mn06_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (273, 6, 'Phenology of different vegetation types in the dry forest of Andohahela National Park, southeastern Madagascar', 'volume6/mn06_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (274, 6, 'Three new Aloe species from Madagascar', 'volume6/mn06_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (275, 6, 'Etudes dendrométriques et dendrochronologiques de neuf espèces de Commiphora Jacq. (Burseraceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume6/mn06_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (276, 6, 'Influence de la variabilité climatique sur la phénologie de la forêt de la Réserve Spéciale de Bezà Mahafaly', 'volume6/mn06_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (277, 6, 'Can differences in floristic composition explain variation in the abundance of two sympatric mouse lemur species (Microcebus) in the Ankarafantsika National Park, northwestern Madagascar?', 'volume6/mn06_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (278, 6, 'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 1. Identification bioacoustique et habitat préférentiel', 'volume6/mn06_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (279, 6, 'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 2. Variation interspécifique et saisonnière du régime alimentaire', 'volume6/mn06_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (280, 6, 'Sighting of a ring-tailed vontsira (Galidia elegans) in the gallery forest of Berenty Private Reserve, southeastern Madagascar', 'volume6/mn06_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (281, 6, 'Two records of albinism in Malagasy birds', 'volume6/mn06_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (282, 6, 'Format for contributions to Malagasy Nature', 'volume6/mn06_11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (283, 7, 'Préface et remerciements/Preface and acknowledgements', 'volume7/mn07preface.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (284, 7, 'La forêt de Beanka, Région Melaky, Ouest de Madagascar : introduction et présentation du milieu', 'volume7/mn07chapter01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (285, 7, 'Current conservation trends in the Beanka Reserve', 'volume7/mn07chapter02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (286, 7, 'Caves of the Beanka karst, Melaky Region, western Madagascar', 'volume7/mn07chapter03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (287, 7, 'Rapport sur une mission archéologique à Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (288, 7, 'Cartographie de la couverture forestière du massif de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (289, 7, 'Structure et composition floristique de la forêt sur faciès karstique de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (290, 7, 'Inventaire des plantes vasculaires de la région de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (291, 7, 'The non-marine molluscs of Tsingy Beanka, Melaky Region, western Madagascar', 'volume7/mn07chapter08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (292, 7, 'Diversity of ants in burned and unburned grassland, and dry deciduous forest in the Beanka Reserve, Melaky Region, western Madagascar', 'volume7/mn07chapter09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (293, 7, 'Distribution et diversité des communautés terrestres et fouisseuses de vertébrés et d’invertébrés dans un écotone savane-forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (294, 7, 'Faune herpétologique de la forêt de Beanka, Région Melaky : richesse biologique, intérêt biogéographique et importance dans la conservation de la biodiversité malgache', 'volume7/mn07chapter11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (295, 7, 'Premier aperçu de la diversité des oiseaux de la forêt sèche sur tsingy de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter12.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (296, 7, 'Aperçu sur l’écologie de Mentocrex beankaensis (Aves, Rallidae) de la forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter13.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (297, 7, 'Diversité des petits mammifères sur une formation de tsingy : cas de la forêt de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter14.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (298, 7, 'Lemurs of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter15.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (299, 7, 'The importance of field inventories and associated studies to understand biodiversity patterns: The case of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter16.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (300, 7, 'Index', 'volume7/mn07index.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (301, 7, 'Notes aux contributeurs/Format for contributions', 'volume7/mn07contributeurs.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (302, 8, 'Paleoecological analysis of elephant bird (Aepyornithidae) remains from the Late Pleistocene and Holocene formations of southern Madagascar', 'volume8/mn08_chapter01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (303, 8, 'Endemic non-bambusoid genera of grasses (Poaceae) in Madagascar: Review of current knowledge', 'volume8/mn08_chapter02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (304, 8, 'Investigating behavior and ecology of Aphaenogaster swammerdami (Formicidae) in selectively logged forest: 20 years later – a happy ant?', 'volume8/mn08_chapter03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (305, 8, 'First record of Corethrellidae (Diptera), frog-biting midges, in Madagascar', 'volume8/mn08_chapter04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (306, 8, 'The species composition and distribution of hematophagous insects collected by light-traps in and near cave systems of Madagascar', 'volume8/mn08_chapter05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (307, 8, 'The dietary habits of Barn Owls (Tyto alba) in the spiny bush of southwestern Madagascar', 'volume8/mn08_chapter06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (308, 8, 'Duchemin’s ‘Linnet’: Was there a second species of native fody Foudia sp. in the Granitic Seychelles? – with additional evidence for the mid-19th century introduction of F. madagascariensis', 'volume8/mn08_chapter07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (309, 8, 'Vocalisations de Pipistrellus spp. sensu lato de Madagascar : Expérience sur l’effet de confinement', 'volume8/mn08_chapter08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (310, 8, 'The bats of the Kianjavato-Vatovavy region, lowland eastern central Madagascar', 'volume8/mn08_chapter09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (311, 8, 'An albino molossid bat from the southwestern Indian Ocean region', 'volume8/mn08_note01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (312, 8, 'A record of vertebrate carnivory by the Crested Drongo (Dicrurus forficatus)', 'volume8/mn08_note02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (313, 8, 'Format for contributions to Malagasy Nature', 'volume8/mn08_formatforcontributions.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (314, 9, 'Dynamique post-culturale de la végétation dans la presqu’île d’Ampasindava, Domaine du Sambirano, Nord-ouest de Madagascar', 'volume9/mn09_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (315, 9, 'Biodiversité de l’entomofaune des rizières de la région de Lac Alaotra (Madagascar)', 'volume9/mn09_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (316, 9, 'Puces (Insecta : Siphonaptera) d’Ambohitantely, Madagascar : Spécificité et phénologie', 'volume9/mn09_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (317, 9, 'Suivi de la communauté aviaire aquatique dans la Nouvelle Aire Protégée Mandrozo, Ouest de Madagascar', 'volume9/mn09_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (318, 9, 'Préférence alimentaire des chauves-souris de Kianjavato, région de Vatovavy-Fitovinany, Madagascar', 'volume9/mn09_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (319, 9, 'Comportement alimentaire des communautés de chauves-souris animalivores de Kirindy (CNFEREF) et d’Antsahabe, Madagascar : répartition, partage et disponibilité de niche alimentaire', 'volume9/mn09_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (320, 9, 'The importance of water bodies for insectivorous bats in a Malagasy dry deciduous forest: A case example from Kirindy (CNFEREF)', 'volume9/mn09_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (321, 9, 'Terrestrial “forest-dwelling” endemic small mammals captured outside of natural habitats in the Moramanga District, central eastern Madagascar', 'volume9/mn09_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (322, 9, 'Remains of an aye-aye (Daubentonia madagascariensis) at the edge of the Parc National d’Ankarana, Région Diana', 'volume9/mn09_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (323, 9, 'Documented occurrence of Taphozous mauritianus (E. Geoffroy, 1818) in Mayotte (Comoros Archipelago)', 'volume9/mn09_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (324, 9, 'Third record of pied avocet (Recurvirostra avosetta) for Madagascar', 'volume9/mn09_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (325, 9, 'Format for contributions to Malagasy Nature', 'volume9/mn09_11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (326, 9, 'Notes aux contributeurs dans Malagasy Nature', 'volume9/mn09_12.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (327, 10, 'Préface et remerciements', 'volume10/mn10_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (328, 10, 'Variabilité et changement du climat à Bezà Mahafaly', 'volume10/mn10_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (329, 10, 'Dynamique de la couverture forestière dans la Réserve Spéciale de Bezà Mahafaly et sesenvirons', 'volume10/mn10_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (330, 10, 'Mammalian biodiversity at Bezà Mahafaly: An update', 'volume10/mn10_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (331, 10, 'Diurnal lemurs at Bezà Mahafaly: Resilience and risk', 'volume10/mn10_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (332, 10, 'Dynamique de l’herpétofaune de Bezà Mahafaly', 'volume10/mn10_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (333, 10, 'Suivi de l’avifaune de Bezà Mahafaly', 'volume10/mn10_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (334, 10, 'Dynamiques socio-économiques et utilisation des ressources naturelles dans la Réserve Spéciale de Bezà Mahafaly et ses environs', 'volume10/mn10_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (335, 10, 'Gouvernance de la Réserve Spéciale de Bezà Mahafaly', 'volume10/mn10_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (336, 10, 'Epilogue : Progrès et perspectives', 'volume10/mn10_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (337, 10, 'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (338, 10, 'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (339, 11, 'Results of a biological inventory of the Nosy Ankao island group, Parc National de Loky-Manambato, northeastern Madagascar', 'volume11/mn11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (340, 11, 'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (341, 11, 'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (342, 12, 'Les unités paysagères dela péninsule d’Ampasindava (Nord-ouest de Madagascar), un terroir sous haute pression de déforestation', 'volume12/mn12_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (343, 12, 'Influence des caractéristiques forestières et des perturbations anthropogéniques sur la distribution des lémuriens de la Forêt Classée d’Ankadivory (Tsinjoarivo-Ambatolampy)', 'volume12/mn12_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (344, 12, 'Updated extinction risk assessments of Madagascar’s freshwater decapod crustaceans reveal fewer threatened species but more Data Deficient species', 'volume12/mn12_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (345, 12, 'Sex-ratio chez les puces (Insecta : Siphonaptera) d’Ambohitantely, Hautes Terres Centrales de Madagascar', 'volume12/mn12_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (346, 12, 'Découverte de la construction du nid de l’aigle serpentaire de Madagascar (Eutriorchis astur) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume12/mn12_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (347, 12, 'Les tiques dures (Acari : Ixodidae) ectoparasites de micromammifères non-volants dans la forêt d’Ambohitantely, Madagascar', 'volume12/mn12_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (348, 12, 'Survie et variation temporelle de la taille de la population de Rousettus madagascariensis (Chiroptera : Pteropodidae) de la Grotte des Chauves-souris d’Ankarana, Nord de Madagascar', 'volume12/mn12_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (349, 12, 'Diversité et écologie des petits mammifères dans les habitats forestiers et anthropiques du District de Moramanga, Centre-est de Madagascar', 'volume12/mn12_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (350, 12, 'The distribution and ecology of invasive alien vertebrate species in the greater Toamasina region, central eastern Madagascar', 'volume12/mn12_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (351, 12, 'Nest of the Malagasy Pond Heron Ardeola idae in northern Madagascar', 'volume12/mn12_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (352, 12, 'Occurrence of Taphozous mauritianus (Emballonuridae) in Maintirano, western Madagascar', 'volume12/mn12_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (353, 12, 'Format for contributions to Malagasy Nature', 'volume12/mn12_11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (354, 12, 'Notes aux contributeurs dans Malagasy Nature', 'volume12/mn12_12.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (355, 13, 'Morphologie pollinique de la flore de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (356, 13, 'Morphométrie des fruits et des graines de Ficus (Moraceae) de la forêt sèche de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (357, 13, 'Euphorbia pseudodidiereoides, une nouvelle euphorbe épineuse du Centre-sud de Madagascar', 'volume13/mn13_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (358, 13, 'A review of Trypanosoma species known from Malagasy vertebrates', 'volume13/mn13_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (359, 13, 'Revue des stratégies nationales sur la biosécurité et perspectives sur la gestion des espèces exotiques envahissantes à Madagascar', 'volume13/mn13_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (360, 13, 'Population structure, activity pattern, and microhabitat use of Phelsuma klemmeri at Mandrozo, Madagascar', 'volume13/mn13_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (361, 13, 'Succès de la reproduction et comportements de Polyboroide rayé (Polyboroides radiatus) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume13/mn13_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (362, 13, 'Les chauves-souris du Paysage Harmonieux Protégé du Complexe Tsimembo Manambolomaty, Région Melaky, Madagascar : diversité et biogéographie', 'volume13/mn13_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (363, 13, 'Seasonal movements of insectivorous bat species in southwestern Madagascar', 'volume13/mn13_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (364, 13, 'Les rats dans le monde rural du Centre-est et du Centre-sud de Madagascar : dommages causés et systèmes de contrôle', 'volume13/mn13_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (365, 13, 'Feeding ecology of the bokiboky, Mungotictis decemlineata (family Eupleridae)', 'volume13/mn13_010.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (366, 13, 'Mise à jour de la distribution du crapaud commun d’Asie (Duttaphrynus melanostictus) dans le sud de Toamasina, Madagascar', 'volume13/mn13_011.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (367, 13, 'Le bananier aquatique, Typhonodorum madagascariense (famille des Araceae) dans la commune rurale d’Ankililoaka, Sud-ouest de Madagascar', 'volume13/mn13_012.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (368, 13, 'Absence of Trypanosoma infection among Hoplobatrachus tigerinus (Amphibia: Dicroglossidae) from Boeny, western Madagascar', 'volume13/mn13_013.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (369, 13, 'Format for contributions to Malagasy Nature', 'volume13/mn13_014.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (370, 13, 'Notes aux contributeurs dans Malagasy Nature', 'volume13/mn13_015.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (371, 14, 'Tribute to Martin Edwin Nicoll (1954-2020): Forty years (1980-2020) of a British scientist dedicated to the conservation of Malagasy biodiversity', 'volume14/mn14_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (372, 14, 'Effet de l’exploitation minière sur les facteurs productifs comme l’agriculture et la production de charbon de bois et la dynamique de déforestation dans le Sud-ouest de Madagascar', 'volume14/mn14_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (373, 14, 'Etude dendrométrique et dendrochronologique de trois espèces de Cedrelopsis Baillon, (Rutaceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume14/mn14_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (374, 14, 'Resting site choice depends on age in Opisthacanthus madagascariensis (Scorpiones: Hormuridae) in dry deciduous forest, western Madagascar', 'volume14/mn14_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (375, 14, 'A rapid avifaunal survey of the Mahimborondro Protected Area, northern Madagascar', 'volume14/mn14_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (376, 14, 'Field body temperatures in the rainforest frog Mantidactylus (Brygoomantis) bellyi from northern Madagascar: Variance and predictors', 'volume14/mn14_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (377, 14, 'Population dynamics of Lemur catta at selected sleeping sites of Tsimanampesotse National Park', 'volume14/mn14_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (378, 14, 'Canopy chameleon (Furcifer willsii) consumption by common big-eyed snake (Mimophis mahfalensis) in Fivahona Forest, eastern Madagascar', 'volume14/mn14_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (379, 14, 'First sighting of the House Crow Corvus splendens on Nosy Be', 'volume14/mn14_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (380, 14, 'Format for contributions to Malagasy Nature', 'volume14/mn14_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (381, 14, 'Notes aux contributeurs dans Malagasy Nature', 'volume14/mn14_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (382, 15, 'Foreword', 'volume15/mn15_00.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (383, 15, 'Introduction: The way of the future — new paleosciences research led by Malagasy scientists', 'volume15/mn15_01.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (384, 15, 'Applying human niche construction theory to study settlement choice in southwest Madagascar, 16th-19th centuries CE', 'volume15/mn15_02.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (385, 15, 'Nontrivial responses of vegetation to compound disturbances: A case study of Malagasy grasslands', 'volume15/mn15_03.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (386, 15, 'Adaptation of subsistence strategies of the southwestern Malagasy in the face of climate change', 'volume15/mn15_04.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (387, 15, 'The Malagasy monsoon over the Holocene: A review from speleothem δ18Oc records ', 'volume15/mn15_05.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (388, 15, 'Paleoecological evidence for late Holocene aridification from the Taolambiby subfossil site of southwestern Madagascar', 'volume15/mn15_06.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (389, 15, 'Description of the subfossil crocodylians from a new Late Pleistocene subfossil site (Tsaramody, Sambaina Basin) in central Madagascar', 'volume15/mn15_07.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (390, 15, 'Comparing the paleoclimates of northwestern and southwestern Madagascar during the late Holocene: Implications for the role of climate in megafaunal extinction', 'volume15/mn15_08.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (391, 15, 'Subfossil birds from a submerged cave in southwestern Madagascar', 'volume15/mn15_09.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (392, 15, 'The growth and development of Pachylemur, a large-bodied Lemuridae', 'volume15/mn15_10.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (393, 15, 'The stories people tell, and how they can contribute to our understanding of megafaunal decline and extinction in Madagascar', 'volume15/mn15_11.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (394, 15, 'Format for contributions to Malagasy Nature', 'volume15/mn15_12.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (395, 15, 'Notes aux contributeurs dans Malagasy Nature', 'volume15/mn15_13.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (396, 25, NULL, '2014_publicationeng.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (397, 26, NULL, '2014_memoiresandthesis.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (398, 27, NULL, 'Atlas.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (399, 28, 'Tome I: Introduction', 'PA book_t1.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (400, 28, 'Tome II: Northern and Eastern Madagascar', 'PA book_t2.pdf');
INSERT INTO public.publicationdetail (id, idpublication, name, pdf) VALUES (401, 28, 'Tome III: Western and Southern Madagascar - Synthesis', 'PA book_t3.pdf');


--
-- Data for Name: studentdegree; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: typeactivity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typeactivity (id, type) VALUES ('A1', 'Visit');
INSERT INTO public.typeactivity (id, type) VALUES ('A2', 'Conference');
INSERT INTO public.typeactivity (id, type) VALUES ('A3', 'Research');
INSERT INTO public.typeactivity (id, type) VALUES ('A4', 'Project');


--
-- Data for Name: typemember; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typemember (id, type, description) VALUES (1, 'board of directors', 'In the context of providing clear and long-term advice for the development of new programs and the management of the association, Vahatra places considerable importance on the board of directors.');
INSERT INTO public.typemember (id, type, description) VALUES (2, 'permanent members', 'The current staff includes eleven individuals, the first four of which are amongst the five founding members of the association.');
INSERT INTO public.typemember (id, type, description) VALUES (3, 'students', 'Students enrolled within the Malagasy university system, particularly in the field of biology and environmental ecology, are the principal focus of the Vahatra program to help with their advancement and capacity building. We aim at having 12-15 students working with us at any given time. Once a student has finished their degree, the place is open for another incoming student.');


--
-- Data for Name: typepublication; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typepublication (id, type) VALUES (1, 'Malagasy Nature');
INSERT INTO public.typepublication (id, type) VALUES (2, 'Guides');
INSERT INTO public.typepublication (id, type) VALUES (3, 'Other publications');


--
-- Data for Name: typesubactivity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typesubactivity (id, type, idtypeactivity) VALUES ('SA2', 'field school', 'A1');
INSERT INTO public.typesubactivity (id, type, idtypeactivity) VALUES ('SA3', 'biological inventories', 'A1');
INSERT INTO public.typesubactivity (id, type, idtypeactivity) VALUES ('SA1', 'science for people', 'A1');


--
-- Data for Name: visit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (1, 1, 'SA1', 1, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (2, 2, 'SA1', 2, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (3, 3, 'SA1', 3, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (4, 4, 'SA1', 4, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (5, 5, 'SA1', 5, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (6, 6, 'SA1', 6, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (7, 7, 'SA1', 7, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (8, 8, 'SA1', 8, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (9, 9, 'SA1', 9, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (10, 10, 'SA1', 10, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (11, 11, 'SA1', 11, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (12, 12, 'SA1', 12, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (13, 13, 'SA1', 13, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (14, 14, 'SA1', 14, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (15, 15, 'SA1', 15, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (16, 16, 'SA1', 16, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (17, 17, 'SA1', 17, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (18, 18, 'SA1', 18, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (19, 19, 'SA1', 19, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (20, 20, 'SA1', 20, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (21, 21, 'SA1', 21, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (22, 22, 'SA1', 22, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (23, 23, 'SA1', 23, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (24, 24, 'SA1', 24, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (25, 25, 'SA1', 25, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (26, 26, 'SA1', 26, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (27, 27, 'SA2', 27, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (28, 28, 'SA2', 27, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (29, 29, 'SA2', 14, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (30, 30, 'SA2', 27, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (31, 31, 'SA2', 14, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (32, 32, 'SA2', 27, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (33, 33, 'SA2', 28, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (34, 34, 'SA2', 29, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (35, 35, 'SA2', 30, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (36, 36, 'SA2', 29, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (37, 37, 'SA2', 31, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (38, 38, 'SA2', 41, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (39, 39, 'SA2', 31, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (40, 40, 'SA2', 32, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (41, 41, 'SA2', 33, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (42, 42, 'SA2', 27, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (43, 43, 'SA2', 34, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (44, 44, 'SA2', 35, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (45, 45, 'SA2', 36, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (46, 46, 'SA2', 37, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (47, 47, 'SA2', 38, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (48, 48, 'SA2', 31, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (49, 49, 'SA2', 39, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (50, 50, 'SA2', 32, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (51, 51, 'SA2', 40, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (52, 52, 'SA3', 42, '2003-03-01');
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (53, 53, 'SA3', 43, '2005-10-01');
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (54, 54, 'SA3', 44, '2006-02-01');
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (55, 55, 'SA3', 45, '2007-03-01');
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (56, 56, 'SA3', 33, '2008-03-01');
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (57, 57, 'SA3', 46, '2009-02-01');
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (58, 58, 'SA3', 30, '2010-04-01');
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (59, 59, 'SA3', 47, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (60, 60, 'SA3', 28, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (61, 61, 'SA3', 14, NULL);
INSERT INTO public.visit (id, idactivity, idtypesubactivity, idlocation, dateend) VALUES (62, 62, 'SA3', 48, '2022-11-30');


--
-- Name: activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activity_id_seq', 93, true);


--
-- Name: activityimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activityimage_id_seq', 10, true);


--
-- Name: activityinstitution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activityinstitution_id_seq', 16, true);


--
-- Name: activityperson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activityperson_id_seq', 60, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 104, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 30, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 45, true);


--
-- Name: fieldschool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fieldschool_id_seq', 47, true);


--
-- Name: image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.image_id_seq', 59, true);


--
-- Name: imagetype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.imagetype_id_seq', 1, false);


--
-- Name: location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.location_id_seq', 1, false);


--
-- Name: member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.member_id_seq', 21, true);


--
-- Name: messageofyear_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messageofyear_id_seq', 2, true);


--
-- Name: partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partner_id_seq', 8, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 1, false);


--
-- Name: publication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publication_id_seq', 30, true);


--
-- Name: publicationauthor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publicationauthor_id_seq', 63, true);


--
-- Name: publicationdetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publicationdetail_id_seq', 401, true);


--
-- Name: seqdept; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seqdept', 1, false);


--
-- Name: seqinst; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seqinst', 1, false);


--
-- Name: seqpost; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seqpost', 1, false);


--
-- Name: studentdegree_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.studentdegree_id_seq', 1, false);


--
-- Name: typemember_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.typemember_id_seq', 3, true);


--
-- Name: typepublication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.typepublication_id_seq', 1, false);


--
-- Name: visit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visit_id_seq', 62, true);


--
-- Name: activity activity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_pkey PRIMARY KEY (id);


--
-- Name: activityimage activityimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityimage
    ADD CONSTRAINT activityimage_pkey PRIMARY KEY (id);


--
-- Name: activityinstitution activityinstitution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityinstitution
    ADD CONSTRAINT activityinstitution_pkey PRIMARY KEY (id);


--
-- Name: activityperson activityperson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityperson
    ADD CONSTRAINT activityperson_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: degree degree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.degree
    ADD CONSTRAINT degree_pkey PRIMARY KEY (id);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: fieldschool fieldschool_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldschool
    ADD CONSTRAINT fieldschool_pkey PRIMARY KEY (id);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- Name: imagetype imagetype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imagetype
    ADD CONSTRAINT imagetype_pkey PRIMARY KEY (id);


--
-- Name: institution institution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institution
    ADD CONSTRAINT institution_pkey PRIMARY KEY (id);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (id);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);


--
-- Name: messageofyear messageofyear_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messageofyear
    ADD CONSTRAINT messageofyear_pkey PRIMARY KEY (id);


--
-- Name: partner partner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_pkey PRIMARY KEY (id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- Name: publication publication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publication_pkey PRIMARY KEY (id);


--
-- Name: publicationauthor publicationauthor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationauthor
    ADD CONSTRAINT publicationauthor_pkey PRIMARY KEY (id);


--
-- Name: publicationdetail publicationdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationdetail
    ADD CONSTRAINT publicationdetail_pkey PRIMARY KEY (id);


--
-- Name: studentdegree studentdegree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentdegree
    ADD CONSTRAINT studentdegree_pkey PRIMARY KEY (id);


--
-- Name: typeactivity typeactivity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typeactivity
    ADD CONSTRAINT typeactivity_pkey PRIMARY KEY (id);


--
-- Name: typemember typemember_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typemember
    ADD CONSTRAINT typemember_pkey PRIMARY KEY (id);


--
-- Name: typepublication typepublication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typepublication
    ADD CONSTRAINT typepublication_pkey PRIMARY KEY (id);


--
-- Name: typesubactivity typesubactivity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typesubactivity
    ADD CONSTRAINT typesubactivity_pkey PRIMARY KEY (id);


--
-- Name: visit visit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT visit_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: activity fk_activity_typeactivity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activity
    ADD CONSTRAINT fk_activity_typeactivity FOREIGN KEY (idtypeactivity) REFERENCES public.typeactivity(id);


--
-- Name: activityimage fk_activityimage_activity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityimage
    ADD CONSTRAINT fk_activityimage_activity FOREIGN KEY (idactivity) REFERENCES public.activity(id);


--
-- Name: activityimage fk_activityimage_image; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityimage
    ADD CONSTRAINT fk_activityimage_image FOREIGN KEY (idimage) REFERENCES public.image(id);


--
-- Name: activityinstitution fk_activityinstitution_activity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityinstitution
    ADD CONSTRAINT fk_activityinstitution_activity FOREIGN KEY (idactivity) REFERENCES public.activity(id);


--
-- Name: activityinstitution fk_activityinstitution_institution; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityinstitution
    ADD CONSTRAINT fk_activityinstitution_institution FOREIGN KEY (idinst) REFERENCES public.institution(id);


--
-- Name: activityperson fk_activityperson_activity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityperson
    ADD CONSTRAINT fk_activityperson_activity FOREIGN KEY (idactivity) REFERENCES public.activity(id);


--
-- Name: activityperson fk_activityperson_person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityperson
    ADD CONSTRAINT fk_activityperson_person FOREIGN KEY (idperson) REFERENCES public.person(id);


--
-- Name: fieldschool fk_fieldschool_dept; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldschool
    ADD CONSTRAINT fk_fieldschool_dept FOREIGN KEY (iddept) REFERENCES public.department(id);


--
-- Name: fieldschool fk_fieldschool_inst; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldschool
    ADD CONSTRAINT fk_fieldschool_inst FOREIGN KEY (idinst) REFERENCES public.institution(id);


--
-- Name: fieldschool fk_fieldschool_visit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldschool
    ADD CONSTRAINT fk_fieldschool_visit FOREIGN KEY (idvisit) REFERENCES public.visit(id);


--
-- Name: image fk_image_imagetype; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fk_image_imagetype FOREIGN KEY (idtype) REFERENCES public.imagetype(id);


--
-- Name: member fk_member_person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT fk_member_person FOREIGN KEY (idperson) REFERENCES public.person(id);


--
-- Name: member fk_member_typemember; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT fk_member_typemember FOREIGN KEY (idtypemember) REFERENCES public.typemember(id);


--
-- Name: memberpostinst fk_memberpostinst_dept; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT fk_memberpostinst_dept FOREIGN KEY (iddept) REFERENCES public.department(id);


--
-- Name: memberpostinst fk_memberpostinst_institution; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT fk_memberpostinst_institution FOREIGN KEY (idinst) REFERENCES public.institution(id);


--
-- Name: memberpostinst fk_memberpostinst_member; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT fk_memberpostinst_member FOREIGN KEY (idmember) REFERENCES public.member(id);


--
-- Name: memberpostinst fk_memberpostinst_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT fk_memberpostinst_post FOREIGN KEY (idpost) REFERENCES public.post(id);


--
-- Name: messageofyear fk_messageofyear_member; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messageofyear
    ADD CONSTRAINT fk_messageofyear_member FOREIGN KEY (idmember) REFERENCES public.member(id);


--
-- Name: partner fk_partner_institution; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT fk_partner_institution FOREIGN KEY (idinst) REFERENCES public.institution(id);


--
-- Name: publication fk_publication_imageback; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT fk_publication_imageback FOREIGN KEY (idimageback) REFERENCES public.image(id);


--
-- Name: publication fk_publication_imagefront; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT fk_publication_imagefront FOREIGN KEY (idimagefront) REFERENCES public.image(id);


--
-- Name: publication fk_publication_typepublication; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT fk_publication_typepublication FOREIGN KEY (idtype) REFERENCES public.typepublication(id);


--
-- Name: publicationauthor fk_publicationauthor_author; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationauthor
    ADD CONSTRAINT fk_publicationauthor_author FOREIGN KEY (idperson) REFERENCES public.person(id);


--
-- Name: publicationauthor fk_publicationauthor_publication; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationauthor
    ADD CONSTRAINT fk_publicationauthor_publication FOREIGN KEY (idpublication) REFERENCES public.publication(id);


--
-- Name: publicationdetail fk_publicationdetail_publication; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationdetail
    ADD CONSTRAINT fk_publicationdetail_publication FOREIGN KEY (idpublication) REFERENCES public.publication(id);


--
-- Name: studentdegree fk_studentdegree_degree; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentdegree
    ADD CONSTRAINT fk_studentdegree_degree FOREIGN KEY (iddegree) REFERENCES public.degree(id);


--
-- Name: studentdegree fk_studentdegree_member; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentdegree
    ADD CONSTRAINT fk_studentdegree_member FOREIGN KEY (idmember) REFERENCES public.member(id);


--
-- Name: typesubactivity fk_typesubactivity_typeactivity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typesubactivity
    ADD CONSTRAINT fk_typesubactivity_typeactivity FOREIGN KEY (idtypeactivity) REFERENCES public.typeactivity(id);


--
-- Name: visit fk_visit_activity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT fk_visit_activity FOREIGN KEY (idactivity) REFERENCES public.activity(id);


--
-- Name: visit fk_visit_location; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT fk_visit_location FOREIGN KEY (idlocation) REFERENCES public.location(id);


--
-- Name: visit fk_visit_typesubactivity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT fk_visit_typesubactivity FOREIGN KEY (idtypesubactivity) REFERENCES public.typesubactivity(id);


--
-- PostgreSQL database dump complete
--

