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

--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity (
    id bigint NOT NULL,
    title character varying(255),
    description text,
    date date,
    note character varying(255),
    idtypeactivity character varying(20) NOT NULL
);


ALTER TABLE public.activity OWNER TO postgres;

--
-- Name: activity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activity_id_seq OWNER TO postgres;

--
-- Name: activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activity_id_seq OWNED BY public.activity.id;


--
-- Name: activityimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activityimage (
    id bigint NOT NULL,
    idactivity bigint NOT NULL,
    image character varying(255)
);


ALTER TABLE public.activityimage OWNER TO postgres;

--
-- Name: activityimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activityimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activityimage_id_seq OWNER TO postgres;

--
-- Name: activityimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activityimage_id_seq OWNED BY public.activityimage.id;


--
-- Name: activityinstitution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activityinstitution (
    id bigint NOT NULL,
    idactivity bigint NOT NULL,
    idinst character varying(20) NOT NULL
);


ALTER TABLE public.activityinstitution OWNER TO postgres;

--
-- Name: activityinstitution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activityinstitution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activityinstitution_id_seq OWNER TO postgres;

--
-- Name: activityinstitution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activityinstitution_id_seq OWNED BY public.activityinstitution.id;


--
-- Name: activityperson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activityperson (
    id bigint NOT NULL,
    idactivity bigint NOT NULL,
    idperson bigint NOT NULL
);


ALTER TABLE public.activityperson OWNER TO postgres;

--
-- Name: activityperson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activityperson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activityperson_id_seq OWNER TO postgres;

--
-- Name: activityperson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activityperson_id_seq OWNED BY public.activityperson.id;


--
-- Name: administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administrator (
    id character varying(20) NOT NULL,
    username character varying(100) NOT NULL,
    mail character varying(100),
    password character varying(255) NOT NULL
);


ALTER TABLE public.administrator OWNER TO postgres;

--
-- Name: degree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.degree (
    id character varying(20) NOT NULL,
    title character varying(100)
);


ALTER TABLE public.degree OWNER TO postgres;

--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    id character varying(20) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

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


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

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


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

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


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: fieldschool; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldschool (
    id bigint NOT NULL,
    iddept character varying(20),
    idinst character varying(20) NOT NULL,
    idvisit bigint NOT NULL
);


ALTER TABLE public.fieldschool OWNER TO postgres;

--
-- Name: fieldschool_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fieldschool_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fieldschool_id_seq OWNER TO postgres;

--
-- Name: fieldschool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fieldschool_id_seq OWNED BY public.fieldschool.id;


--
-- Name: image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image (
    id bigint NOT NULL,
    name character varying(255),
    title character varying(100),
    idtype bigint
);


ALTER TABLE public.image OWNER TO postgres;

--
-- Name: image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.image_id_seq OWNER TO postgres;

--
-- Name: image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;


--
-- Name: imagetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imagetype (
    id bigint NOT NULL,
    type character varying(100)
);


ALTER TABLE public.imagetype OWNER TO postgres;

--
-- Name: imagetype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.imagetype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imagetype_id_seq OWNER TO postgres;

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


ALTER TABLE public.institution OWNER TO postgres;

--
-- Name: visit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visit (
    id bigint NOT NULL,
    dateend date,
    idactivity bigint NOT NULL,
    idlocation bigint NOT NULL,
    idtypesubactivity character varying(20) NOT NULL
);


ALTER TABLE public.visit OWNER TO postgres;

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


ALTER TABLE public.intervenantfieldschool OWNER TO postgres;

--
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    id bigint NOT NULL,
    name character varying(255),
    longitude double precision,
    latitude double precision
);


ALTER TABLE public.location OWNER TO postgres;

--
-- Name: location_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.location_id_seq OWNER TO postgres;

--
-- Name: location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.location_id_seq OWNED BY public.location.id;


--
-- Name: member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.member (
    id bigint NOT NULL,
    mail character varying(100),
    description text,
    idperson bigint NOT NULL,
    idtypemember bigint NOT NULL,
    image character varying(255)
);


ALTER TABLE public.member OWNER TO postgres;

--
-- Name: member_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_id_seq OWNER TO postgres;

--
-- Name: member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.member_id_seq OWNED BY public.member.id;


--
-- Name: memberpostinst; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.memberpostinst (
    id bigint NOT NULL,
    iddept character varying(20),
    idinst character varying(20),
    idmember bigint NOT NULL,
    idpost character varying(20)
);


ALTER TABLE public.memberpostinst OWNER TO postgres;

--
-- Name: memberpostinst_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.memberpostinst_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.memberpostinst_id_seq OWNER TO postgres;

--
-- Name: memberpostinst_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.memberpostinst_id_seq OWNED BY public.memberpostinst.id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id bigint NOT NULL,
    name character varying(255),
    username character varying(200),
    title character varying(10)
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    id character varying(20) NOT NULL,
    name character varying(100)
);


ALTER TABLE public.post OWNER TO postgres;

--
-- Name: typemember; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typemember (
    id bigint NOT NULL,
    type character varying(100),
    description text
);


ALTER TABLE public.typemember OWNER TO postgres;

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
    m.idtypemember,
    m.image
   FROM ((((((public.member m
     JOIN public.person pers ON ((pers.id = m.idperson)))
     JOIN public.memberpostinst m2 ON ((m2.idmember = m.id)))
     JOIN public.post p ON (((p.id)::text = (m2.idpost)::text)))
     LEFT JOIN public.institution i ON (((i.id)::text = (m2.idinst)::text)))
     LEFT JOIN public.department d ON (((d.id)::text = (m2.iddept)::text)))
     JOIN public.typemember tm ON ((tm.id = m.idtypemember)));


ALTER TABLE public.memberviewpost OWNER TO postgres;

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
    memberviewpost.idtypemember,
    memberviewpost.image
   FROM public.memberviewpost
  GROUP BY memberviewpost.id, memberviewpost.title, memberviewpost.name, memberviewpost.username, memberviewpost.description, memberviewpost.mail, memberviewpost.idtypemember, memberviewpost.image;


ALTER TABLE public.memberviewposts OWNER TO postgres;

--
-- Name: messageofyear; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messageofyear (
    id bigint NOT NULL,
    year integer,
    description text,
    idmember bigint
);


ALTER TABLE public.messageofyear OWNER TO postgres;

--
-- Name: messageofyear_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messageofyear_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messageofyear_id_seq OWNER TO postgres;

--
-- Name: messageofyear_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messageofyear_id_seq OWNED BY public.messageofyear.id;


--
-- Name: partner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partner (
    id bigint NOT NULL,
    description text,
    link character varying(150),
    logo character varying(150),
    idinst character varying(20) NOT NULL
);


ALTER TABLE public.partner OWNER TO postgres;

--
-- Name: partner_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_id_seq OWNER TO postgres;

--
-- Name: partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partner_id_seq OWNED BY public.partner.id;


--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO postgres;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;


--
-- Name: publication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publication (
    id bigint NOT NULL,
    title character varying(200),
    description text,
    date date,
    idtype bigint NOT NULL,
    imagefront character varying(255),
    imageback character varying(255)
);


ALTER TABLE public.publication OWNER TO postgres;

--
-- Name: publication_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publication_id_seq OWNER TO postgres;

--
-- Name: publication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publication_id_seq OWNED BY public.publication.id;


--
-- Name: publicationauthor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicationauthor (
    id bigint NOT NULL,
    idperson bigint,
    idpublication bigint NOT NULL
);


ALTER TABLE public.publicationauthor OWNER TO postgres;

--
-- Name: publicationauthor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publicationauthor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publicationauthor_id_seq OWNER TO postgres;

--
-- Name: publicationauthor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicationauthor_id_seq OWNED BY public.publicationauthor.id;


--
-- Name: publicationdetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicationdetail (
    id bigint NOT NULL,
    name character varying(255),
    pdf character varying(100),
    idpublication bigint NOT NULL
);


ALTER TABLE public.publicationdetail OWNER TO postgres;

--
-- Name: publicationdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publicationdetail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publicationdetail_id_seq OWNER TO postgres;

--
-- Name: publicationdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicationdetail_id_seq OWNED BY public.publicationdetail.id;


--
-- Name: sequences_sequence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sequences_sequence (
    name character varying(100) NOT NULL,
    last bigint NOT NULL,
    CONSTRAINT sequences_sequence_last_check CHECK ((last >= 0))
);


ALTER TABLE public.sequences_sequence OWNER TO postgres;

--
-- Name: studentdegree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.studentdegree (
    id bigint NOT NULL,
    year integer,
    subject character varying(255),
    mention character varying(100),
    iddegree character varying(20) NOT NULL,
    idmember bigint NOT NULL
);


ALTER TABLE public.studentdegree OWNER TO postgres;

--
-- Name: studentdegree_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.studentdegree_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studentdegree_id_seq OWNER TO postgres;

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


ALTER TABLE public.typeactivity OWNER TO postgres;

--
-- Name: typemember_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typemember_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typemember_id_seq OWNER TO postgres;

--
-- Name: typemember_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typemember_id_seq OWNED BY public.typemember.id;


--
-- Name: typepublication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typepublication (
    id bigint NOT NULL,
    type character varying(100)
);


ALTER TABLE public.typepublication OWNER TO postgres;

--
-- Name: typepublication_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typepublication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typepublication_id_seq OWNER TO postgres;

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


ALTER TABLE public.typesubactivity OWNER TO postgres;

--
-- Name: visit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visit_id_seq OWNER TO postgres;

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
-- Name: memberpostinst id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst ALTER COLUMN id SET DEFAULT nextval('public.memberpostinst_id_seq'::regclass);


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

INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (27, 'Field Schools', NULL, '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (28, 'Field Schools', NULL, '2014-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (29, 'Field Schools', NULL, '2014-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (30, 'Field Schools', NULL, '2013-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (31, 'Field Schools', NULL, '2013-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (32, 'Field Schools', NULL, '2012-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (33, 'Field Schools', NULL, '2011-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (34, 'Field Schools', NULL, '2010-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (35, 'Field Schools', NULL, '2010-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (36, 'Field Schools', NULL, '2009-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (37, 'Field Schools', NULL, '2008-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (38, 'Field Schools', NULL, '2008-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (39, 'Field Schools', NULL, '2007-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (40, 'Field Schools', NULL, '2004-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (41, 'Field Schools', NULL, '2003-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (42, 'Field Schools', NULL, '2002-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (43, 'Field Schools', NULL, '2001-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (44, 'Field Schools', NULL, '2001-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (45, 'Field Schools', NULL, '2001-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (46, 'Field Schools', NULL, '2000-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (47, 'Field Schools', NULL, '1998-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (48, 'Field Schools', NULL, '1997-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (49, 'Field Schools', NULL, '1997-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (50, 'Field Schools', NULL, '1997-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (51, 'Field Schools', NULL, '1996-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (52, 'Biological inventories', 'Obtaining field data on terrestrial vertebrates for the action of the "Ala Maiky" project of WWF. In collaboration with WWF.', '2003-02-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (53, 'Biological inventories', 'Obtaining data on terrestrial organisms to help with the management of a new marine protected area. In collaboration with WWF.', '2005-09-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (54, 'Biological inventories', 'To understand patterns of terrestrial animal distribution in this forested corridor, evaluation of remaining natural habitats, and the important of the remaining forest for the conservation of biodiversity. In collaboration with WWF and Fanamby.', '2005-11-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (55, 'Biological inventories', 'Obtaining field data on terrestrial vertebrates for the extension of the Kirindy Mite National Park. In collaboration with WWF and Madagascar national Parks.', '2007-02-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (56, 'Biological inventories', 'Obtaining field data on the biological riches of identified protected areas for the extension of a humid forest of a UNESCO World Heritage site. In collaboration with UNESCO World Heritage program.', '2008-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (57, 'Biological inventories', 'Obtaining field data for a biological compensation program associated with a mining project. In collaboration with Ambatovy Project.', '2009-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (58, 'Biological inventories', 'Obtaining scientific information on the RS of Andranomena ant the Ampataka forest. In collaboration with Madagascar National Parks', '2010-03-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (59, 'Biological inventories', 'Biological exploration of the dry forest on karst of Beanka. In collaboration with the Universities of Geneva and Antananarivo.', '2011-11-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (60, 'Biological inventories', 'Biological exploration for the conception of a management and conservation plan. In collaboration with PGME-GIZ', '2011-12-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (61, 'Biological inventories', 'Exploration of the biological diversity of Bemanevika Forest. In collaboration with the Peregrine Fund.', '2013-10-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (62, 'Elevational transect in the Andohahela protected area', 'In late 2022
the Vahatra team will redo another elevational transect in the Andohahela
protected area in the same fashion as Marojejy and part of the The Rainforest
of the Atsinanana.', '2022-10-15', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (63, 'Micro-endemism in Madagascar', 'A new hypothesis and model of micro-endemism in Madagascar and its application to the conservation of Malagasy biodiversity. (Presented in French.)', '2008-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (64, 'New Traversodontidae', 'Two new Traversodontidae from the Triassic of Madagascar: implications for paleoecology and the issue of endemic Malagasy terrestrial vertebrates in the Pre-Jurassic. (Presented in French.)', '2009-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (87, 'E-book on the protected areas of madagascar and other user tools', 'In late 2015, Association Vahatra received a three-year grant from CEPF to
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
late 2021 and the first phase of the project has now been completed.', '2015-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (65, 'Geographic Information Systems', 'Geographic Information Systems at the service of conservation: case studies. (Presented in French.)', '2010-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (66, 'Effects of cyclone', 'Effects of cyclone or habitat disturbance on Varecia variegata (reproduction, feeding behavior, etc.). (Presented in French.)', '2011-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (67, 'Fragmentation and genetic diversity', 'Fragmentation of habitat and genetic diversity in space and time. (Presented in French.) ', '2011-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (68, 'Invasive alien species', 'The impact of invasive alien species on island biodiversity - What solutions? (Presented in French.) ', '2012-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (69, 'Extinct animals and ecosystems of Madagascar', 'Windows into the extraordinary extinct animals and ecosystems of Madagascar. (Presented in French.) ', '2012-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (70, 'Genetics', 'Population genetics, conservation genetics, and their applications. (Presented in French.) ', '2012-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (71, 'Genetic diversity and Genetix computer program', 'Measures of genetic diversity and application of the Genetix computer program. (Presented in French.) ', '2013-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (72, 'ArcGIS', 'ArcGIS training. (Presented in French.) ', '2014-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (73, 'High spatial resolution cloud climatology', 'High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities', '2015-01-01', NULL, 'A2');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (83, 'Climate change', 'The intent of this project is to measure possible effects of global climatic change on certain endemic terrestrial vertebrates. This is being accomplished by revisiting three different mountains on the island intensively studied along an elevational gradient over 15 years ago and repeating the inventory methods down to very fine details, such as the same dates and placements of different types of traps. While data on the presence and absence of a given taxonomic group will be used in comparing the previous and recent inventories, the unique aspect we have added to the project is employing molecular genetic data. We will becomparing shifts in haplotypic frequencies through time and this measure may be directly correlated with global warming, pushing animals to higher altitudes to find preferable biotypes.', '2015-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (84, 'Transmissible diseases', 'In this project, followed viro-serological and vector populations of wild vertebrates and a quantitative assessment on a regional risk of introduction and spread of the disease are done. This is a project funded by the CRVOI (Centre for Research and Watch on emerging diseases in the Indian Ocean) Reunion and associated team from the Institut Pasteur de Madagascar (IPM). The latter has been working for several years on transmission mechanisms of many diseases. 
The specific objectives of this project are to:
    -assess the intensity of viral circulation and circulation periods in a pilot area of Madagascar,
    -identify potential wild reservoirs of the virus in Madagascar,
    -establish an epidemiological assessment in Madagascar,
    -identify the various potential modes of introduction and transmission in Madagascar, and assess the risk of endemicity of the disease.
', '2015-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (85, 'Conservation biology', 'Vahatra is also interested in different types of research involving:
    -vertebrates taxonomy and phylogeny
    -vertebrates biogeography
    -ecology and biology
    -conservation
    -impact assessment
 ', '2015-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (86, 'StopRats', 'Stoprats is a multi-partner project financed by the Secretariat of the African and Caribbean Group, led by Natural Resources Institute, University of Greenwich, United Kingdom and including countries like Namibia, Madagascar, Sierra Leone, South Africa, Swaziland , Tanzania. The general objectives of the project are to build capacity in science, in technology and innovation in the management of rodent pests and to contribute to the sustainable development of Africa and Madagascar, so that these institutions could have knowledge of the main indicators of poverty through rodent impacts on agricultural production and food security systems.

Students from the Institute of Technical Science and Environment, University of Fianarantsoa, from the Animal Biology Department, University of Antananarivo, a team of environmental educators, and colleagues from the Institut Pasteur de Madagascar, provide the smooth running of the activities of this project.

In 2014, fifteen scientists from the countries members of Stoprats project were in Madagascar for the field school. Then the series of investigations were conducted in the Malagasy highplands to have knowledge about the extent of damage caused by rats and the methods used to fight against these problems. Meetings with stakeholders on the problems of rats, namely, the responsible of the agriculture, breeding and health were also conducted in Fianarantsoa. Researches on diets and habitats used by the rats and endemic rodents, by using stable isotopes have been undertaken as part of this project.', '2014-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (88, 'Indian house Crow eradication and invasive species surveillance', 'In the context of this project, Madagascar Fauna and Flora Group (MFG)
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
major accomplishment.', '2015-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (89, 'Land use in the Sava region and global health challenges', 'This project is based on a grant awarded to Duke University, with Dr.
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
project continues until mid-2023.', '2019-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (90, 'Restauration Patrimoine mondial: Forêts humides de l’Atsinanana', 'The moist evergreen moist evergreen forests of the eastern region of
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
of the Atsinanana.', '2021-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (91, 'Diversity and transmission dynamics of infectious agents in malagasy bats', 'The scientific objectives of this project are to characterize the diversity of
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
requested from the granting agency. We are still awaiting that decision', '2020-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (92, 'Save the rainforest sweden (Rädda Regnskog) project at Ambohitantely', 'The Réserve Spéciale d’Ambohitantely is one of the last remnant Central
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
the main forest.', '2021-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (93, 'Developing effective rodent control strategies to reduce disease risk in ecologically and culturally diverse rural landscapes', 'The project, named REDROZ (Reduce Rodent Zoonosis), aims at reducing
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
in the fieldwork in the context of capacity building.', '2021-01-01', NULL, 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (1, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud : Cap Est', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (2, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (3, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (4, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (5, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (6, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (7, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (8, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (9, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (10, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (11, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (12, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (13, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (14, 'Visit villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (15, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (16, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (17, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (18, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (19, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (20, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (21, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (22, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (23, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (24, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (25, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (26, 'Visit villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', '2015-01-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (103, 'Test field school', 'Ceci n''est qu''un test', '2022-08-01', NULL, 'A1');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (74, 'Grosphus mavo', 'the remarkable diversity of the genus Grosphus simon, 1880 (scorpiones: buthidae) in southern madagascar and in particular in the region of cap sainte marie. Arachnida – Rivista Aracnologica Italiana, 27(1): 2-35.', '2020-01-01', 'endemic scorpion in the extreme south of the island', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (75, 'Haemaphysalis galidiae', 'Description of a new species of Haemaphysalis koch, 1844 (Acari: ixodidae) from the H. (Rhipistoma) asiatica subgroup, parasite of an endemic malagasy carnivoran (family eupleridae). Systematic Parasitology, 97: 591-599.', '2020-01-01', 'endemic tick known from endemic carnivora', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (76, 'Ixodes soarimalalae', 'Description of three new species of ixodes Latreille, 1795 (acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637.', '2020-01-01', 'endemic tick known from malagasy shrew tenrecs and named after Voahangy soarimalala', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (77, 'Ixodes uilenbergi', 'Description of three new species of Ixodes latreille, 1795 (Acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637.', '2020-01-01', 'endemic tick known from different species of malagasy tenrecs', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (78, 'Ixodes uncus', ' Description of three new species of ixodes Latreille, 1795 (Acari: ixodidae), parasites of tenrecs (Afrotheria: tenrecidae) on madagascar. Systematic Parasitology, 97: 623-637', '2020-01-01', 'endemic tick known from malagasy shrew tenrecs', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (79, 'Mantidactylus ambony ', ' ‘Barcode fishing’ for archival Dna from historical type material overcomes taxonomic hurdles, enabling the description of a new frog species. Scientific Reports, 10, 19109 (2020).', '2020-01-01', 'endemic to a massif in the extreme north of the island', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (80, 'Platypelis ranjomena', 'genetic variability and partial integrative revision of Platypelis frogs (microhylidae) with red flash marks from eastern madagascar. Vertebrate Zoology, 70(2): 141-156', '2020-01-01', '(endemic the central east and northeastern madagascar', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (81, 'Uroplatus fangorn', 'towards completion of species inventory of smallsized leaf-tailed geckos: two new species of Uroplatus from northern madagascar. Zootaxa, 4892(2): 251-275.', '2020-01-01', 'endemic gecko to a massif in the north of the island', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (82, 'Uroplatus fivehy', 'towards completion of species inventory of smallsized leaf-tailed geckos: two new species of Uroplatus from northern madagascar. Zootaxa, 4892(2): 251-275.', '2020-01-01', 'endemic gecko to a massif in the north of the island', 'A4');
INSERT INTO public.activity (id, title, description, date, note, idtypeactivity) VALUES (99, 'Ours polaire', NULL, '2022-09-01', 'test kely fotsiny', 'A4');


--
-- Data for Name: activityimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.activityimage (id, idactivity, image) VALUES (1, 52, 'mikea01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (2, 53, 'nosyhara01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (3, 54, 'anjozorobe01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (4, 55, 'kirindymitea01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (5, 56, 'midongy01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (6, 57, 'ambatovy01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (7, 58, 'andranomena01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (8, 59, 'beanka01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (9, 60, 'salaryeng.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (10, 61, 'bemanevika01.gif');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (16, 99, 'hans-jurgen-mager-AZ31hv9kdzE-unsplash.jpg');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (25, 103, 'Amena 057.jpg');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (26, 103, 'Picture 615.jpg');
INSERT INTO public.activityimage (id, idactivity, image) VALUES (27, 103, 'Picture 634.jpg');


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
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (20, 99, 'I1');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (21, 99, 'I33');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (26, 103, 'I13');
INSERT INTO public.activityinstitution (id, idactivity, idinst) VALUES (27, 103, 'I1');


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
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (66, 99, 91);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (72, 103, 66);
INSERT INTO public.activityperson (id, idactivity, idperson) VALUES (73, 103, 50);


--
-- Data for Name: administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.administrator (id, username, mail, password) VALUES ('ADM1', 'Vahatra', 'rotsyvonimanitra@hotmail.com', 'pbkdf2_sha256$320000$mJXSsBH7OkNLznzIECUbDG$paGjnBWxKZg7f+9gdbIDAdMtGelgnaGA+/yzI/VOGGE=');


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
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'association', 'memberviewposts');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'association', 'degree');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'association', 'department');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'association', 'imagetype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'association', 'institution');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'association', 'member');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'association', 'person');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'association', 'post');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'association', 'typemember');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'association', 'studentdegree');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'association', 'partner');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'association', 'messageofyear');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (19, 'association', 'memberpostinst');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (20, 'association', 'image');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (21, 'activities', 'intervenantfieldschool');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (22, 'activities', 'activity');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (23, 'activities', 'location');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (24, 'activities', 'typeactivity');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (25, 'activities', 'typesubactivity');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (26, 'activities', 'visit');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (27, 'activities', 'fieldschool');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (28, 'activities', 'activityperson');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (29, 'activities', 'activityinstitution');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (30, 'activities', 'activityimage');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (31, 'publications', 'publication');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (32, 'publications', 'typepublication');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (33, 'publications', 'publicationdetail');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (34, 'publications', 'publicationauthor');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (35, 'admin', 'administrator');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (36, 'sequences', 'sequence');


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'association', '0001_initial', '2022-08-29 07:11:05.733637-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'activities', '0001_initial', '2022-08-29 07:11:07.790085-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'contenttypes', '0001_initial', '2022-08-29 07:11:08.071015-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'auth', '0001_initial', '2022-08-29 07:11:10.463022-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'admin', '0002_logentry_remove_auto_add', '2022-08-29 07:11:10.762635-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-29 07:11:10.777851-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'contenttypes', '0002_remove_content_type_name', '2022-08-29 07:11:10.812318-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0002_alter_permission_name_max_length', '2022-08-29 07:11:10.822331-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0003_alter_user_email_max_length', '2022-08-29 07:11:10.831307-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0004_alter_user_username_opts', '2022-08-29 07:11:10.839815-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0005_alter_user_last_login_null', '2022-08-29 07:11:10.853778-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0006_require_contenttypes_0002', '2022-08-29 07:11:10.856771-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0007_alter_validators_add_error_messages', '2022-08-29 07:11:10.866664-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0008_alter_user_username_max_length', '2022-08-29 07:11:10.979476-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0009_alter_user_last_name_max_length', '2022-08-29 07:11:11.012013-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0010_alter_group_name_max_length', '2022-08-29 07:11:11.121417-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'auth', '0011_update_proxy_permissions', '2022-08-29 07:11:11.174553-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'auth', '0012_alter_user_first_name_max_length', '2022-08-29 07:11:11.213908-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'publications', '0001_initial', '2022-08-29 07:11:12.113767-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'sessions', '0001_initial', '2022-08-29 07:11:12.375259-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'activities', '0002_alter_activityimage_options', '2022-08-30 08:01:23.17467-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'association', '0002_degree_post_alter_imagetype_options_studentdegree_and_more', '2022-08-30 08:01:23.181111-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'publications', '0002_alter_publicationauthor_options_and_more', '2022-08-30 08:01:23.1861-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'admin', '0001_initial', '2022-08-31 07:57:04.766265-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'admin', '0002_alter_administrator_username', '2022-08-31 10:48:16.994362-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'sequences', '0001_initial', '2022-09-05 06:55:00.573623-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'sequences', '0002_alter_sequence_last', '2022-09-05 06:55:00.835734-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'activities', '0002_remove_activityimage_idimage_activityimage_image', '2022-09-05 10:11:40.730795-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'association', '0002_remove_member_idimage_member_image', '2022-09-05 10:11:40.753094-01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'publications', '0002_remove_publication_idimageback_and_more', '2022-09-05 10:11:40.835872-01');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('14kpcie5e2pwqq9oxhsb5m321uncy3r8', 'eyJfc2Vzc2lvbl9leHBpcnkiOjAsImFkbWluIjoiQURNMSJ9:1oTNBd:I9pJ7LQvaFXMosZ8QwcDx08tRyMcBYx8bAnSnCkWXBA', '2022-09-14 11:51:17.3512-01');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('hfcu54w1cr47257eisrdgf73qff7gwp1', 'eyJhZG1pbiI6IkFETTEifQ:1oTNCY:pJeKVLAqM4EnqOpW4I3O617Wo7aRH4k8rjVRqrglPTQ', '2022-09-14 11:52:14.51081-01');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('ecimiu23wfkeo4knwpfi4zxlupc1p78y', '.eJxVjMsOwiAQRf-FtSE8JXTp3m8gAzNY1IApbVJj_Hdt0oVu7zn3vFiAZR7D0mkKBdnAJDv8bhHSjeoG8Ar10nhqdZ5K5JvCd9r5uSHdT7v7Fxihj9-3N07k7MESRaW9hexJSczWGJ-ktU5ozDIqq51IqI6EThsCUAkMSqW2aKfeS6uB1keZnmwQ7w-RFj82:1oTNEB:FZULmKPFuNLgpy1VVJzJoSQ0Bu86-L173sTkDDKqyoI', '2022-09-14 11:53:55.886972-01');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('vxlczur386dweikj3xnd52wc43fimv9d', 'eyJfc2Vzc2lvbl9leHBpcnkiOjB9:1oTeI6:gPHHRQ65MezyYxNG2PvXhk-Dd3eRWrpRcXzt5IuiCyA', '2022-09-15 06:07:06.435487-01');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('ut0aminiilzm855kxqvakbc4ft2k26t0', 'eyJfc2Vzc2lvbl9leHBpcnkiOjAsImFkbWluIjoiQURNMSJ9:1oTibY:Pt1Gr9vZlB8rKpnLIA6OEBOd8cvkTEj4l6DHzkALoSY', '2022-09-15 10:43:28.654859-01');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('8dwwyzau63hurcsvm3bakofkwvsgnfe2', 'eyJfc2Vzc2lvbl9leHBpcnkiOjB9:1oVYOl:HEP9aok1qcCDJIZOW3Wp1MzXnWZMEzpYFzBZeAoJoMk', '2022-09-20 12:13:51.675972-01');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('8cmphysp161nfty057tt5o0b3utfjl8x', 'eyJfc2Vzc2lvbl9leHBpcnkiOjB9:1oWcC6:DoQrXHcKd0PAVbRcJSg0FoeqUAgBgc06cLSN-MVOTkw', '2022-09-23 10:29:10.122151-01');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('x248r8vnwq3qpd0dae7234nxevc2j7o4', 'eyJfc2Vzc2lvbl9leHBpcnkiOjB9:1oXj8R:L7VZSA-42_uJObLJdskBqdUI0zBWZd5jAGz7D62mmy4', '2022-09-26 12:05:59.865104-01');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('vb3k01lu20ac92xxdbk4um9yp7wq4md0', 'eyJfc2Vzc2lvbl9leHBpcnkiOjB9:1oXjpO:7qayWMD7B6pdGJto_dR_OMwnWahn816er7GHsJhftQs', '2022-09-26 12:50:22.756191-01');


--
-- Data for Name: fieldschool; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (1, 'D1', 'I2', 27);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (2, 'D4', 'I16', 27);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (3, 'D5', 'I3', 27);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (4, 'D1', 'I2', 28);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (5, 'D4', 'I16', 28);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (6, 'D5', 'I3', 28);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (7, 'D1', 'I2', 29);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (8, 'D1', 'I2', 30);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (9, 'D2', 'I9', 30);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (10, 'D4', 'I16', 30);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (11, 'D5', 'I3', 30);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (12, 'D1', 'I2', 31);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (13, 'D1', 'I2', 32);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (14, 'D4', 'I16', 32);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (15, 'D5', 'I3', 32);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (16, 'D1', 'I2', 33);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (17, 'D4', 'I16', 33);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (18, NULL, 'I17', 33);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (19, NULL, 'I18', 33);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (20, 'D1', 'I2', 34);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (21, NULL, 'I17', 34);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (22, NULL, 'I18', 34);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (23, 'D1', 'I2', 35);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (24, NULL, 'I18', 35);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (25, 'D1', 'I2', 36);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (26, NULL, 'I17', 36);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (27, 'D1', 'I2', 37);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (28, 'D1', 'I2', 38);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (29, NULL, 'I17', 38);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (30, NULL, 'I19', 38);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (31, 'D1', 'I2', 39);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (32, NULL, 'I5', 39);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (33, 'D1', 'I2', 40);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (34, 'D6', 'I9', 40);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (35, 'D1', 'I2', 41);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (36, 'D1', 'I2', 42);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (37, 'D1', 'I2', 43);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (38, 'D1', 'I2', 44);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (39, 'D1', 'I2', 45);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (40, 'D1', 'I2', 46);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (41, 'D1', 'I2', 47);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (42, NULL, 'I5', 47);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (43, 'D1', 'I2', 48);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (44, 'D1', 'I2', 49);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (45, 'D1', 'I2', 50);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (46, 'D6', 'I9', 50);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (47, 'D1', 'I2', 51);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (51, 'D4', 'I2', 65);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (52, 'D1', 'I2', 65);
INSERT INTO public.fieldschool (id, iddept, idinst, idvisit) VALUES (53, NULL, 'I13', 65);


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: postgres
--



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
INSERT INTO public.location (id, name, longitude, latitude) VALUES (31, 'Ambohitantely', 47.2833, -18.1667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (32, 'Tampolo Fenérive-Est', 49.9667, -15.7333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (33, 'Midongy du Sud', 47.0167, -23.5833);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (34, 'Bemaraha', 45.1667, -19.3333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (35, 'Marojejy', 49.7333, -14.4333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (36, 'Daraina', 49.6667, -13.2);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (37, 'Ankarana', 48.5, -16.95);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (38, 'Ankazomivady', 47.1833, -20.7667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (40, 'Ankaratra', 47.2, -19.4167);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (41, 'Maromiza', 48.45, -18.95);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (42, 'Mikea', 43.3833, -22.5);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (43, 'Nosy Hara', 49.0167, -12.2333);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (44, 'Anjozorobe', 47.8667, -18.4);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (45, 'Kirindy-Mitea', 44.138666112, -20.806163442);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (46, 'Ambatovy', 48.3, -18.8167);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (47, 'Beanka', 44.559567, -17.925304);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (48, 'Andohahela', 46.7, -24.6);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (30, 'Andranomena', 44.33333, -21.46667);
INSERT INTO public.location (id, name, longitude, latitude) VALUES (39, 'Andranomay', 47.95, -18.5);


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (1, 'raselimananaachille@gmail.com', 'Founding member. His fields of interest include herpetology, including systematics, biogeography, ecology and biological evaluation as well as study of environmental impact. Responsible for courses on reptiles and amphibians biology for second year students as well as biogeography, ecological monitoring and ecomorphology for master level students.', 1, 2, 'achille.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (2, 'jraherilalao@gmail.com', 'Founding member. She has interests in ornithology including biology, ecology, systematics, biogeography, biological evaluation, and the study of environmental impact. Responsible for teaching of bird biology for second year students as well as evolutionary biology and biodiversity evaluation, especially terrestrial vertebrates for master level students.', 2, 2, 'marie_jeanne.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (3, 'voahangysoarimalala@gmail.com', 'Founding member. Her research interests include mammals, especially small mammals and carnivores which includes systematics, biogeography, ecology, biological evaluation and environmental impact study. Responsible for teaching ecology and animal systematics for first and second year students; biodiversity conservation and valorisation for third year students.', 3, 2, 'voahangy.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (4, 'sgoodman@fieldmuseum.org', ' Founding member. His fields of research interests include several domains such as mammals, bats and birds. He is particularly interested in biology, ecology, systematics, biogeography, paleoecology, etc.', 4, 2, 'steve.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (11, NULL, 'He is actually retired', 11, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (12, NULL, NULL, 12, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (13, NULL, 'He is actually retired', 13, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (14, NULL, NULL, 14, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (15, NULL, NULL, 15, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (16, NULL, NULL, 16, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (17, NULL, NULL, 17, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (18, NULL, NULL, 18, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (19, NULL, NULL, 19, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (20, NULL, NULL, 20, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (21, NULL, NULL, 21, 1, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (5, 'msraharinirina@gmail.com', 'Sabrina joined the association in October 2015.', 5, 4, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (6, NULL, ' Ledada
started working with the ETP some 29 years ago and transferred to
Vahatra in October 2007. He has helped organize logistics for hundreds
of field missions to some of the remotest areas on Madagascar.', 6, 4, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (7, NULL, 'She has worked with
Vahatra since May 2016.', 7, 4, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (8, NULL, NULL, 8, 4, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (9, NULL, NULL, 9, 4, 'none.jpg');
INSERT INTO public.member (id, mail, description, idperson, idtypemember, image) VALUES (10, NULL, NULL, 10, 4, 'none.jpg');


--
-- Data for Name: memberpostinst; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (1, NULL, 'I1', 1, 'P1');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (2, 'D1', 'I2', 1, 'P2');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (3, NULL, 'I1', 2, 'P3');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (4, NULL, 'I1', 2, 'P4');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (5, NULL, 'I1', 2, 'P5');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (6, 'D1', 'I2', 2, 'P2');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (7, NULL, 'I1', 3, 'P3');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (8, NULL, 'I1', 3, 'P6');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (9, NULL, 'I1', 3, 'P7');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (10, 'D1', 'I2', 3, 'P9');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (11, 'D1', 'I3', 3, 'P2');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (12, NULL, 'I1', 4, 'P10');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (13, NULL, 'I1', 4, 'P11');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (14, NULL, 'I1', 4, 'P12');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (15, 'D1', 'I2', 4, 'P13');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (16, 'D1', 'I2', 4, 'P2');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (17, 'D1', 'I4', 4, 'P2');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (18, NULL, 'I1', 5, 'P14');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (19, NULL, 'I1', 6, 'P15');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (20, NULL, 'I1', 7, 'P16');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (21, NULL, 'I1', 8, 'P17');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (22, NULL, 'I1', 8, 'P18');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (23, NULL, 'I1', 9, 'P17');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (24, NULL, 'I1', 9, 'P18');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (25, NULL, 'I1', 10, 'P17');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (26, NULL, 'I1', 10, 'P18');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (27, 'D1', 'I2', 11, 'P2');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (28, NULL, 'I5', 12, 'P19');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (29, NULL, NULL, 13, 'P20');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (30, NULL, NULL, 13, 'P21');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (31, NULL, 'I6', 13, 'P28');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (32, NULL, 'I7', 14, 'P22');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (33, NULL, 'I8', 14, 'P23');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (34, 'D2', 'I9', 15, 'P2');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (35, NULL, 'I2', 15, 'P24');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (36, NULL, 'I10', 16, 'P25');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (37, NULL, 'I11', 17, 'P25');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (38, 'D3', 'I12', 18, 'P2');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (39, NULL, 'I13', 19, 'P26');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (40, NULL, 'I14', 20, 'P27');
INSERT INTO public.memberpostinst (id, iddept, idinst, idmember, idpost) VALUES (41, NULL, 'I15', 21, 'P1');


--
-- Data for Name: messageofyear; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.messageofyear (id, year, description, idmember) VALUES (1, 2021, 'After two successive years of anguish in the shadow of the Covid-19 pandemic, living and working in greater serenity during the year 2021 was everyone’s wish and with the hope of catching up with much that could not be done in 2020.
Unfortunately, the situation has only worsened in 2021, despite the precautions taken at a previously non-imaginable scale to prevent the spread of the disease and the associated vaccination efforts. The impacts of Covid-19 are multiple not only in the domains of health and work, but also redirecting the life and dynamics of society in general, as well as local and international communities. With the worry of being contaminated, fear and panic reign everywhere and people are afraid of being in contact with their friends and even families. Superimposed on this is the many individuals that fell sick and worse those that succumbed to the virus. It is a total psychosis. Life has slowed down and hovers in limitless anxiety, without anyone being able to say how and when it will end. Here in Madagascar associated with the lack of clear dissemination of information, the situation is largely unknown concerning the prevalence of the disease in Malagasy society and the number of deaths; at the time of writing this message only about 3% of the population of Madagascar has being vaccinated.
However, we realize that this is not a time for the lighthearted, that is to say to give up hope. Learning to live with the prevailing situation is the best strategy to cross this difficult period. It is in this spirit of harmonizing the way of life, even given the existing conditions, that the Association Vahatra has been able to advance with some level of serenity through the year 2021. The members and students affiliated with the association have been 100% fully vaccinated, some already with boosters, and taking the needed precautions in social contexts to protect better one other and with the intent to complete what was planned to be accomplish in 2021.
Thus, despite the difficulties and uncertain conditions in which we had to work, the association was able to make numerous important achievements. (Please see different portions of this annual report for further details.) These include, for example, large-scale biological inventories, as part of the BIOCOM project in collaboration with UNESCO with funding from The Korea International Cooperation Agency (KOICA) that were carried out in the protected areas of Montagne des Français in March and in the Marojejy in October and November. In addition, this year we were able to launch an ambitious new project with funding from Save the Rainforest Sweden that aims to support the efforts to conserve the Ambohitantely protected area via three different axes: research on aquatic insects; ecological restoration, including a the large-scale installation of firebreaks surrounding the remaining forests; and the establishment of a multifunctional biological station. The Ambohitantely project illustrates the association’s desire to have a broad approach to its interventions directly needed to the management and protection of biodiversity, in addition to what we have been doing for many years concerning research, dissemination of information on the island’s biodiversity, and human capacity building. Taken together these different aspects help to advance the national perspective on the importance of science and train a whole range of young Malagasy scientists, which in the end is to protect the natural patrimony of the island.
In addition, the Madagascar Protected Areas portal is up and functioning (see https://protectedareas.mg/) and a revised version of the three volume titanic project The Terrestrial Protected Areas of Madagascar: Their History, Description and Biota published by Vahatra in 2018 is now in e-book form (see http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html ). In addition, despite a range of Covid-19 restrictions, the staff and students associated with Vahatra presented an HDR memoir, two PhD thesis, and five Masters, as well as a large assortment of scientific articles being published or submitted. Admittedly, the current world health crisis is a nightmare for any institution whatever their field of intervention, but accepting to live with the current situation and finding other solutions to overcome the challenge is the only way forward. Let us hope that with the experiences already lived during this past fateful year, we will all be able to face 2022 with a new and positive perspective and with more hope for the future. Good luck to all because with a valiant heart nothing is impossible!', 1);


--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.partner (id, description, link, logo, idinst) VALUES (1, 'working for the creation and delimitation of new protected areas on Madagascar.', 'https://protectedareas.mg/', 'protected-areas.png', 'I31');
INSERT INTO public.partner (id, description, link, logo, idinst) VALUES (2, ' helping with the establishment of a Biodiversity Business Operational Program (BBOP)', 'https://ambatovy.com/en/', 'ambatovy.png', 'I32');
INSERT INTO public.partner (id, description, link, logo, idinst) VALUES (3, 'helping with the up-dating of a database associated with Malagasy biodiversity.', 'https://www.rebioma.org/', 'rebioma.jpg', 'I33');
INSERT INTO public.partner (id, description, link, logo, idinst) VALUES (4, 'biological evaluation and analysis of human pressures in a new UNESCO site.', 'https://tanymeva.org/', 'tanymeva.png', 'I34');
INSERT INTO public.partner (id, description, link, logo, idinst) VALUES (5, 'scientific aid in evaluating biodiversity and training of field agents.', 'https://www.parcs-madagascar.com/', 'mnp.png', 'I7');
INSERT INTO public.partner (id, description, link, logo, idinst) VALUES (6, ' helping with the compilation of data concerning Malagasy taxa.', 'https://cites.org/eng', 'cites.png', 'I35');
INSERT INTO public.partner (id, description, link, logo, idinst) VALUES (7, ' helping with the preparation of national report for the Convention on Biodiversity.', 'https://www.environnement.mg/', 'logo-medd-presidence.png', 'I36');
INSERT INTO public.partner (id, description, link, logo, idinst) VALUES (8, 'Capacity building for conservation agents and students. This project is generously funded by Helmsley Charitable Trust (HCT)', 'https://www.peregrinefund.org/', 'peregrine.png', 'I37');


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person (id, name, username, title) VALUES (1, 'Raselimanana', 'Achille P.', 'Pr.');
INSERT INTO public.person (id, name, username, title) VALUES (2, 'Raherilalao', 'Marie Jeanne', 'Dr.');
INSERT INTO public.person (id, name, username, title) VALUES (3, 'Soarimalala', 'Voahangy', 'Dr.');
INSERT INTO public.person (id, name, username, title) VALUES (4, 'Goodman', 'Steven M.', 'Pr.');
INSERT INTO public.person (id, name, username, title) VALUES (5, 'Raharinirina', 'Sabrina', 'Ms.');
INSERT INTO public.person (id, name, username, title) VALUES (6, 'Ratsirahaingotiana', 'Sandra', 'Ms.');
INSERT INTO public.person (id, name, username, title) VALUES (7, 'Razafindravao', 'Rachel (Ledada)', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (8, 'Malaimbohitsy', 'Elisa', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (9, 'Avisoa', 'Mara', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (10, 'Tsitindria', 'François', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (11, 'Rakotondravony', 'Daniel', 'Pr.');
INSERT INTO public.person (id, name, username, title) VALUES (12, 'Ratsifandrihamanana', 'Nanie', 'Ms.');
INSERT INTO public.person (id, name, username, title) VALUES (13, 'Ratrimoarivony', 'Guy', 'General');
INSERT INTO public.person (id, name, username, title) VALUES (14, 'Andrianarivo', 'Chantal', 'Ms.');
INSERT INTO public.person (id, name, username, title) VALUES (15, 'Ratsirarson', 'Joelisoa', 'Pr.');
INSERT INTO public.person (id, name, username, title) VALUES (16, 'Rakotoary', 'Jean Chrysostome', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (17, 'Andriambololona', 'Raoelina', 'Pr.');
INSERT INTO public.person (id, name, username, title) VALUES (18, 'Ganzhorn', 'Jörg U.', 'Pr.');
INSERT INTO public.person (id, name, username, title) VALUES (19, 'Goodman', 'Paul', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (20, 'Langrand', 'Olivier', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (21, 'Polsky', 'Michael', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (22, 'Ranivoharimanana', 'Lovasoa', 'Ms.');
INSERT INTO public.person (id, name, username, title) VALUES (23, 'REBIOMA', 'Equipe', '');
INSERT INTO public.person (id, name, username, title) VALUES (24, 'Ratsimbazafy', 'Jonah', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (25, 'Chikhi', 'Lounès', 'Mr.');
INSERT INTO public.person (id, name, username, title) VALUES (26, 'Rakotondratsimba', 'Mbola', 'Ms.');
INSERT INTO public.person (id, name, username, title) VALUES (27, 'Douglas', 'Michael', 'Dr.');
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

INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (1, 'Volume 1 - Les forêts sèches de Madagascar', 'This first issue of Malagasy Nature is a monograph of 200 pages on Madagascar dry forests, associated with inventories conducted by a group of scientists in Madagascar, which are among the founding members of the Association Vahatra.', '2009-01-01', 1, 'mn1.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (2, 'Volume 2', '', '2009-01-01', 1, 'mn2.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (4, 'Volume 4', '', '2010-01-01', 1, 'mn4.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (5, 'Volume 5', '', '2011-01-01', 1, 'mn5.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (6, 'Volume 6', '', '2013-01-01', 1, 'mn6.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (7, 'Volume 7', '', '2013-01-01', 1, 'mn7.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (8, 'Volume 8', '', '2014-01-01', 1, 'mn8.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (9, 'Volume 9', '', '2015-01-01', 1, 'mn9.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (10, 'Volume 10', '', '2016-01-01', 1, 'mn10.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (11, 'Volume 11', '', '2017-01-01', 1, 'mn11.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (12, 'Volume 12', '', '2017-01-01', 1, 'mn12.gif', 'mn12_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (13, 'Volume 13', '', '2019-01-01', 1, 'mn13.gif', 'mn13_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (14, 'Volume 14', '', '2020-01-01', 1, 'mn14.gif', 'mn14_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (15, 'Volume 15', '', '2021-01-01', 1, 'mn15.gif', 'mn15_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (16, 'Les chauves-souris de Madagascar', '129 pp and 77 figures.', '2011-01-01', 2, 'g1.gif', 'g1_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (17, 'Les petits mammifères de Madagascar', '176 pp and 100 figures.', '2011-01-01', 2, 'g2.gif', 'g2_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (18, 'Histoire naturelle des familles et sous-familles endémiques d''oiseaux de Madagascar', 'pp 148 and 54 figures.', '2011-01-01', 2, 'g3.gif', 'g3_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (19, 'Les Carnivora de Madagascar', 'pp 158 and 73 figures.', '2012-01-01', 2, 'g4.gif', 'g1_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (20, 'Les animaux et écosystèmes de l''Holocène disparus de Madagascar', 'pp 249, 34 figures and 20 plates.', '2013-01-01', 2, 'g5.gif', 'g5_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (21, 'Les amphibiens des zones arides du Sud et de l''Ouest de Madagascar', 'pp 180 and 129 figures', '2014-01-01', 2, 'g6.gif', 'g6_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (22, 'Les amphibiens du Nord de Madagascar', 'pp 354 and 197 figures, with pictograms.', '2018-01-01', 2, 'g7.gif', 'g7_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (23, 'Fourmis de Madagascar : un guide pour les 62 genres / Ants of Madagascar: a guide for the 62 genera', 'A bilingual French-English book. 253 pp.', '2019-01-01', 2, 'g8.gif', 'g8_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (24, 'Libellules et demoiselles de Madagascar et des Iles de l’Océan Indien occidentale / Dragonflies and damselflies of Madagascar and the western Indian Ocean Islands', 'A bilingual French-English book. 194 pp.', '2021-01-01', 2, 'g9.gif', 'g9_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (28, 'The terrestrial protected areas of Madagascar: their history, description and biota.', '', '2018-01-01', 3, 'op4.gif', 'op4_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (26, 'Memoirs and thesis', '', '2015-01-01', 3, 'op2.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (25, 'Publications', '', '2015-01-01', 3, 'op1.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (27, 'Atlas of selected land vertebrates of Madagascar', 'While the past few decades have seen numerous publications about the extraordinary and highly endemic terrestrial vertebrate fauna of Madagascar, ranging from technical papers, to species descriptions, and field guides, no detailed mapping exercise has been completed in the form of an atlas. The purpose of this book is that, to bring together information from numerous sources and present distributional maps for a wide range of taxa, descriptive texts to interpret patterns, and, for most, habitat models (Maxent). For the different reptiles, birds, and mammals treated herein, this atlas is intended as a reference for students, researchers, naturalists, and conservationists.', '2013-01-01', 3, 'op3.jpg', 'op3_back.gif');
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (3, 'Volume 3: Biodiversity, exploration, and conservation of the natural habitats associated with the Ambatovy project', 'The third volume of Malagasy Nature presents a series of studies undertaken in the Ambatovy forests, near Moramanga. These studies were made within the framework of a research on the biodiversity partially covered forest zones, exposed to the mining by the Ambatovy Project. They were done to support the project conservation program.

Besides the description of the mining project conservation and ecological monitoring programmes, this Volume 3 shows the diverse biological and ecological information on various groups in particular, the invertebrates, the vertebrates, as well as the plants. It also compiles the results of the inventories of a zone near the region of Andasibe which was extensively studied for decades, in particular emphasizing the new discoveries on the flora and the fauna for these last 20 years. The new data presented in this volume show the biological importance of the studied zones. They will form basic information for the ecological and specific changes monitoring within the local biodiversity in time and in space.', '2010-01-01', 1, 'mn3.gif', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (29, 'The New Natural History of Madagascar', 'In 2003, Steve Goodman and Jonathan P. Benstead (University of Georgia)
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
and partners of Association Vahatra', '2023-01-01', 3, 'nnhm.jpg', NULL);
INSERT INTO public.publication (id, title, description, date, idtype, imagefront, imageback) VALUES (30, 'The Natural History of Madagascar', ' Separated from the mainland of Africa for 160 million years, Madagascar has evolved an incredible wealth of biodiversity, with thousands of species that can be found nowhere else on earth. For instance, of its estimated 12,000 plant species, nearly 10,000 are unique to Madagascar. Malagasy animals are just as spectacular, from its almost forty currently recognized species of lemurs―a primate group found only here―to the numerous species of tiny dwarf chameleons. With astounding frequency scientists discover a previously unknown species in Madagascar―and at almost the same rate another natural area of habitat is degraded or destroyed, a combination that recently led conservation organizations to name Madagascar one of the most important and threatened conservation priorities on the planet.

The Natural History of Madagascar provides the most comprehensive, up-to-date synthesis available of this island nation''s priceless biological treasures. Contributions by nearly three hundred world-renowned experts cover the history of scientific exploration in Madagascar, its geology and soils, climate, forest ecology, human ecology, marine and coastal ecosystems, plants, invertebrates, fishes, amphibians, reptiles, birds, and mammals. Detailed discussions of conservation efforts in Madagascar highlight several successful park reserve programs that could serve as models for other areas. Beautifully illustrated throughout, the book includes over one hundred color illustrations, with fifty color photos by nature photographer Harald Schütz, as well as more than three hundred black-and-white photographs and line drawings.

The Natural History of Madagascar will be the invaluable reference for anyone interested in the Malagasy environment, from biologists and conservationists to policymakers and ecotourists. ', '2003-01-01', 3, 'nhm.jpg', NULL);


--
-- Data for Name: publicationauthor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (1, 2, 1);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (2, 4, 1);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (3, 1, 1);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (4, 3, 1);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (5, 28, 1);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (6, 29, 1);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (7, 30, 1);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (8, 2, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (9, 4, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (10, 3, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (11, 31, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (12, 32, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (13, 33, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (14, 34, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (15, 35, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (16, 36, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (17, 37, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (18, 38, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (19, 39, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (20, 40, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (21, 41, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (22, 42, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (23, 43, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (24, 44, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (25, 45, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (26, 46, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (27, 47, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (28, 48, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (29, 49, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (30, 50, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (31, 51, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (32, 52, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (33, 53, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (34, 54, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (35, 55, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (36, 56, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (37, 57, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (38, 58, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (39, 59, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (40, 60, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (41, 61, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (42, 20, 2);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (43, 4, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (44, 1, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (45, 2, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (46, 62, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (47, 63, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (48, 64, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (49, 65, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (50, 66, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (51, 67, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (52, 68, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (53, 69, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (54, 70, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (55, 71, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (56, 72, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (57, 73, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (58, 74, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (59, 75, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (60, 76, 3);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (61, 4, 29);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (62, 4, 30);
INSERT INTO public.publicationauthor (id, idperson, idpublication) VALUES (63, 77, 30);


--
-- Data for Name: publicationdetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (1, 'Préface', 'volume1/mn01_preface.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (2, 'Introduction', 'volume1/mn01_01.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (3, 'Exploration et connaissance biologique des différents sites inventoriés', 'volume1/mn01_02.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (4, 'Herpétofaune des forêts sèches malgaches', 'volume1/mn01_03.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (5, 'L’avifaune des forêts sèches malgaches ', 'volume1/mn01_04.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (6, 'Les petits mammifères non-volants des forêts sèches malgaches', 'volume1/mn01_05.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (7, 'Les lémuriens des forêts sèches malgaches', 'volume1/mn01_06.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (8, 'Pressions et menaces dans la région forestière sèche malgache', 'volume1/mn01_07.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (9, 'Aspect de la conservation des forêts sèches de Madagascar', NULL, 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (10, 'La création des aires protégées dans le sud et sud ouest de Madagascar : approche et méthodologie', 'volume1/mn01_08.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (11, 'Index', 'volume1/mn01_index.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (12, 'Format for contribution', 'volume1/mn01_format.pdf', 1);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (13, 'Préface', 'volume2/mn02_00.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (14, 'A review of the impacts of anthropogenic habitat change on terrestrial biodiversity in Madagascar: Implications for the design and management of new protected areas', 'volume2/mn02_01.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (15, 'Vertébrés terrestres des fragments forestiers de la Montagne d’Ambatotsirongorongo, site dans le Système des Aires Protégées de Madagascar de la Région Anosy, Tolagnaro', 'volume2/mn02_02.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (16, 'Reptiles, amphibiens et gradient altitudinal dans la région de Daraina, extrême nord-est de Madagasca', 'volume2/mn02_03.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (17, 'A review of the endoparasites of the lemurs of Madagascar', 'volume2/mn02_04.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (18, 'Les populations d’oiseaux aquatiques en périphérie d’une ferme de crevetticulture (OSO Farming)', 'volume2/mn02_05.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (19, 'Etude ethnobotanique des ignames (Dioscorea sp.) dans la forêt Mikea et le couloir d’Antseva (sud-ouest de Madagascar)', 'volume2/mn02_06.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (20, 'Variations morphométrique et moléculaire chez Miniopterus majori (Chiroptera : Miniopteridae) de Madagascar', 'volume2/mn02_07.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (21, 'The species of Grosphus Simon (Scorpiones, Buthidae) distributed in the northern and eastern regions of Madagascar with the description of a new species', 'volume2/mn02_08.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (22, 'Frugivory and facilitation of seed germination by the Velvet Asity, Philepitta castanea (Muller, 1776), in the rainforest understory of Ranomafana National Park, Madagascar', 'volume2/mn02_notes_01.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (23, 'The diet of the endemic bat Myzopoda aurita (Myzopodidae) based on fecal analysis', 'volume2/mn02_notes_02.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (24, 'Notes on the diet of the Barn Owl (Aves: Tytonidae: Tyto alba) from Zohin’Andavaka, Beahitse, extreme southwestern Madagascar', 'volume2/mn02_notes_03.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (25, 'Urban avian population and possible heavy metal contamination at Parc Tsaratsoatra, Alarobia, Antananarivo, Madagascar', 'volume2/mn02_notes_04.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (26, 'New distributional record of Appert’s Tetraka (Xanthomixis apperti) from Salary Bay, Mikea Forest, Madagascar', 'volume2/mn02_notes_05.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (27, 'The Sooty Gull, Larus hemprichii (Aves: Laridae), on Nosy Ve: first records for Madagascar', 'volume2/mn02_notes_06.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (28, 'Index ', 'volume2/mn02_index.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (29, 'Notes aux contributeurs dans Malagasy Nature', 'volume2/mn02_contributeurs.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (30, 'Format for contributions to Malagasy Nature', 'volume2/mn02_contribution.pdf', 2);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (31, 'Préface', 'volume3/mn03_00.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (32, 'Ambatovy project: Mining in a challenging biodiversity setting in Madagascar', 'volume3/mn03_01.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (33, 'Biological research conducted in the general Andasibe region of Madagascar with emphasis on enumerating the local biotic diversity', 'volume3/mn03_02.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (34, 'Introduction to the early 2009 biological inventories conducted by the Association Vahatra in the Ambatovy-Analamay region', 'volume3/mn03_03.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (35, 'Floristic inventory of the Ambatovy-Analamay mine site and comparison to other sites in Madagascar', 'volume3/mn03_04.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (36, 'Survey of leaf litter ant species and assessment of invasive ants in the mining sites at Ambatovy, Madagascar', 'volume3/mn03_05.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (37, 'Watercourse ecological sensitivity classification as a management framework to ameliorate pipeline construction impacts associated with the Ambatovy project', 'volume3/mn03_06.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (38, 'The amphibians and reptiles of the Ambatovy-Analamay region', 'volume3/mn03_07.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (39, 'The birds of the Ambatovy-Analamay region', 'volume3/mn03_08.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (40, 'The non-volant and non-primate mammals of the Ambatovy-Analamay forest ', 'volume3/mn03_09.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (41, 'The lemurs of the Ambatovy-Analamay region', 'volume3/mn03_10.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (42, 'The Ambatovy lemur population spatial monitoring program: Summary of primary objectives and methods', 'volume3/mn03_11.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (43, 'Index', 'volume3/mn03_contributeurs.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (44, 'Notes aux contributeurs dans Malagasy Nature', 'volume3/mn03_contribution.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (45, 'Format for contributions to Malagasy Nature', 'volume3/mn03_index.pdf', 3);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (46, 'Rock matrix surrounding subfossil lemur skull yields diverse collection of mammalian subfossils: Implications for reconstructing Madagascar’s paleoenvironments', 'volume4/mn04_01.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (47, 'Influences des pièges sur la réitération et la sexualité des utriculaires aquatiques : cas d’Utricularia gibba et U. stellaris (Lentibulariaceae)', 'volume4/mn04_02.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (48, 'Estimation de la densité des populations d’une espèce menacée de tortue terrestre (Astrochelys radiata) dans le Parc National Tsimanampetsotsa au Sud de Madagascar', 'volume4/mn04_03.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (49, 'Liste des noms vernaculaires en langue française des espèces de chauves - souris de Madagascar', 'volume4/mn04_04.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (50, 'Distributions et caractéristiques des microhabitats de Microcebus griseorufus (Cheirogaleidae) dans le Parc National de Tsimanampetsotsa (Sud ouest de Madagascar)', 'volume4/mn04_05.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (51, 'Madagascar Buzzard (Buteo brachypterus) nest in association with the colonial nesting Sakalava Weaver (Ploceus sakalava)', 'volume4/mn04_notes_01.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (52, 'Petits mammifères (Afrosoricida et Rodentia) nouvellement recensés dans le Parc National d’Andohahela (parcelle 1), Madagascar', 'volume4/mn04_notes_02.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (53, 'Espèces d’amphibiens et de reptiles nouvellement recensés dans le Parc National d’Andohahela, Madagascar', 'volume4/mn04_notes_03.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (54, 'Index', 'volume4/mn04_index.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (55, 'Notes aux contributeurs dans Malagasy Nature', 'volume4/mn04_contributeurs.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (56, 'Format for contributions to Malagasy Nature', 'volume4/mn04_contribution.pdf', 4);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (57, 'Structure dentaire : Implication pour la paléoécologie des Traversodontidae (Eucynodontia) du Trias de Madagascar', 'volume5/mn05_01.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (58, 'Phenology of different vegetation types in Tsimanampetsotsa National Park, southwestern Madagascar', 'volume5/mn05_02.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (59, 'Analyse structurale des formations végétales du Parc National d’Andohahela, habitat de Microcebus spp. (Sud-est de Madagascar)', 'volume5/mn05_03.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (60, 'Conservation status of some commercialized succulent species of Madagascar', 'volume5/mn05_04.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (61, 'Diet of the Mascarene grass frog, Ptychadena mascareniensis, in Madagascar', 'volume5/mn05_05.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (62, 'Un premier aperçu de la diversité herpétofaunique d’un bloc forestier isolé, la forêt sèche de Beanka, dans la partie Ouest de Madagascar', 'volume5/mn05_06.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (63, 'Habitat préférentiel d’Uroplatus giganteus (Reptilia, Gekkonidae), dans le complexe de la Montagne d’Ambre, Nord de Madagascar', 'volume5/mn05_07.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (64, 'A case of the sympatric occurrence of Microgale brevicaudata and M. grandidieri (Afrosoricida, Tenrecidae) in the Beanka Forest, Maintirano', 'volume5/mn05_08.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (65, 'Inventaire de chauves-souris dans la concession forestière de Kirindy CNFEREF, Morondava, Madagascar', 'volume5/mn05_09.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (66, 'Bats of the Beanka Forest, a limestone karstic zone near Maintirano, central western Madagascar', 'volume5/mn05_10.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (67, 'Sakalava weaver (Ploceus sakalava) nesting association with raptors: An alternative hypothesis', 'volume5/mn05_notes01.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (68, 'Des Molossidae dans un arbre gîte de la région de Menabe central : description et biologie', 'volume5/mn05_notes02.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (69, 'Index ', 'volume5/mn05_index.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (70, 'Notes aux contributeurs dans Malagasy Nature', 'volume5/mn05_contributeurs.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (71, 'Format for contributions to Malagasy Nature', 'volume5/mn05_contribution.pdf', 5);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (72, 'Note to readers - Note aux lecteurs', 'volume6/mn06_00.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (73, 'Un premier aperçu de la faune de vertébrés du bush épineux de Salary-Bekodoy, à l’ouest du Parc National de Mikea, Madagascar', 'volume6/mn06_01.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (74, 'Phenology of different vegetation types in the dry forest of Andohahela National Park, southeastern Madagascar', 'volume6/mn06_02.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (75, 'Three new Aloe species from Madagascar', 'volume6/mn06_03.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (76, 'Etudes dendrométriques et dendrochronologiques de neuf espèces de Commiphora Jacq. (Burseraceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume6/mn06_04.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (77, 'Influence de la variabilité climatique sur la phénologie de la forêt de la Réserve Spéciale de Bezà Mahafaly', 'volume6/mn06_05.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (78, 'Can differences in floristic composition explain variation in the abundance of two sympatric mouse lemur species (Microcebus) in the Ankarafantsika National Park, northwestern Madagascar?', 'volume6/mn06_06.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (79, 'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 1. Identification bioacoustique et habitat préférentiel', 'volume6/mn06_07.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (80, 'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 2. Variation interspécifique et saisonnière du régime alimentaire', 'volume6/mn06_08.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (81, 'Sighting of a ring-tailed vontsira (Galidia elegans) in the gallery forest of Berenty Private Reserve, southeastern Madagascar', 'volume6/mn06_09.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (82, 'Two records of albinism in Malagasy birds', 'volume6/mn06_10.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (83, 'Format for contributions to Malagasy Nature', 'volume6/mn06_11.pdf', 6);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (84, 'Préface et remerciements/Preface and acknowledgements', 'volume7/mn07preface.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (85, 'La forêt de Beanka, Région Melaky, Ouest de Madagascar : introduction et présentation du milieu', 'volume7/mn07chapter01.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (86, 'Current conservation trends in the Beanka Reserve', 'volume7/mn07chapter02.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (87, 'Caves of the Beanka karst, Melaky Region, western Madagascar', 'volume7/mn07chapter03.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (88, 'Rapport sur une mission archéologique à Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter04.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (89, 'Cartographie de la couverture forestière du massif de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter05.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (90, 'Structure et composition floristique de la forêt sur faciès karstique de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter06.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (91, 'Inventaire des plantes vasculaires de la région de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter07.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (92, 'The non-marine molluscs of Tsingy Beanka, Melaky Region, western Madagascar', 'volume7/mn07chapter08.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (93, 'Diversity of ants in burned and unburned grassland, and dry deciduous forest in the Beanka Reserve, Melaky Region, western Madagascar', 'volume7/mn07chapter09.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (94, 'Distribution et diversité des communautés terrestres et fouisseuses de vertébrés et d’invertébrés dans un écotone savane-forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter10.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (95, 'Faune herpétologique de la forêt de Beanka, Région Melaky : richesse biologique, intérêt biogéographique et importance dans la conservation de la biodiversité malgache', 'volume7/mn07chapter11.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (96, 'Premier aperçu de la diversité des oiseaux de la forêt sèche sur tsingy de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter12.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (97, 'Aperçu sur l’écologie de Mentocrex beankaensis (Aves, Rallidae) de la forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter13.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (98, 'Diversité des petits mammifères sur une formation de tsingy : cas de la forêt de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter14.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (99, 'Lemurs of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter15.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (100, 'The importance of field inventories and associated studies to understand biodiversity patterns: The case of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter16.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (101, 'Index', 'volume7/mn07index.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (102, 'Notes aux contributeurs/Format for contributions', 'volume7/mn07contributeurs.pdf', 7);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (103, 'Paleoecological analysis of elephant bird (Aepyornithidae) remains from the Late Pleistocene and Holocene formations of southern Madagascar', 'volume8/mn08_chapter01.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (104, 'Endemic non-bambusoid genera of grasses (Poaceae) in Madagascar: Review of current knowledge', 'volume8/mn08_chapter02.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (105, 'Investigating behavior and ecology of Aphaenogaster swammerdami (Formicidae) in selectively logged forest: 20 years later – a happy ant?', 'volume8/mn08_chapter03.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (106, 'First record of Corethrellidae (Diptera), frog-biting midges, in Madagascar', 'volume8/mn08_chapter04.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (107, 'The species composition and distribution of hematophagous insects collected by light-traps in and near cave systems of Madagascar', 'volume8/mn08_chapter05.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (108, 'The dietary habits of Barn Owls (Tyto alba) in the spiny bush of southwestern Madagascar', 'volume8/mn08_chapter06.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (109, 'Duchemin’s ‘Linnet’: Was there a second species of native fody Foudia sp. in the Granitic Seychelles? – with additional evidence for the mid-19th century introduction of F. madagascariensis', 'volume8/mn08_chapter07.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (110, 'Vocalisations de Pipistrellus spp. sensu lato de Madagascar : Expérience sur l’effet de confinement', 'volume8/mn08_chapter08.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (111, 'The bats of the Kianjavato-Vatovavy region, lowland eastern central Madagascar', 'volume8/mn08_chapter09.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (112, 'An albino molossid bat from the southwestern Indian Ocean region', 'volume8/mn08_note01.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (113, 'A record of vertebrate carnivory by the Crested Drongo (Dicrurus forficatus)', 'volume8/mn08_note02.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (114, 'Format for contributions to Malagasy Nature', 'volume8/mn08_formatforcontributions.pdf', 8);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (115, 'Dynamique post-culturale de la végétation dans la presqu’île d’Ampasindava, Domaine du Sambirano, Nord-ouest de Madagascar', 'volume9/mn09_00.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (116, 'Biodiversité de l’entomofaune des rizières de la région de Lac Alaotra (Madagascar)', 'volume9/mn09_01.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (117, 'Puces (Insecta : Siphonaptera) d’Ambohitantely, Madagascar : Spécificité et phénologie', 'volume9/mn09_02.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (118, 'Suivi de la communauté aviaire aquatique dans la Nouvelle Aire Protégée Mandrozo, Ouest de Madagascar', 'volume9/mn09_03.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (119, 'Préférence alimentaire des chauves-souris de Kianjavato, région de Vatovavy-Fitovinany, Madagascar', 'volume9/mn09_04.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (120, 'Comportement alimentaire des communautés de chauves-souris animalivores de Kirindy (CNFEREF) et d’Antsahabe, Madagascar : répartition, partage et disponibilité de niche alimentaire', 'volume9/mn09_05.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (121, 'The importance of water bodies for insectivorous bats in a Malagasy dry deciduous forest: A case example from Kirindy (CNFEREF)', 'volume9/mn09_06.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (122, 'Terrestrial “forest-dwelling” endemic small mammals captured outside of natural habitats in the Moramanga District, central eastern Madagascar', 'volume9/mn09_07.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (123, 'Remains of an aye-aye (Daubentonia madagascariensis) at the edge of the Parc National d’Ankarana, Région Diana', 'volume9/mn09_08.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (124, 'Documented occurrence of Taphozous mauritianus (E. Geoffroy, 1818) in Mayotte (Comoros Archipelago)', 'volume9/mn09_09.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (125, 'Third record of pied avocet (Recurvirostra avosetta) for Madagascar', 'volume9/mn09_10.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (126, 'Format for contributions to Malagasy Nature', 'volume9/mn09_11.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (127, 'Notes aux contributeurs dans Malagasy Nature', 'volume9/mn09_12.pdf', 9);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (128, 'Préface et remerciements', 'volume10/mn10_00.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (129, 'Variabilité et changement du climat à Bezà Mahafaly', 'volume10/mn10_01.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (130, 'Dynamique de la couverture forestière dans la Réserve Spéciale de Bezà Mahafaly et sesenvirons', 'volume10/mn10_02.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (131, 'Mammalian biodiversity at Bezà Mahafaly: An update', 'volume10/mn10_03.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (132, 'Diurnal lemurs at Bezà Mahafaly: Resilience and risk', 'volume10/mn10_04.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (133, 'Dynamique de l’herpétofaune de Bezà Mahafaly', 'volume10/mn10_05.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (134, 'Suivi de l’avifaune de Bezà Mahafaly', 'volume10/mn10_06.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (135, 'Dynamiques socio-économiques et utilisation des ressources naturelles dans la Réserve Spéciale de Bezà Mahafaly et ses environs', 'volume10/mn10_07.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (136, 'Gouvernance de la Réserve Spéciale de Bezà Mahafaly', 'volume10/mn10_08.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (137, 'Epilogue : Progrès et perspectives', 'volume10/mn10_09.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (138, 'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (139, 'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf', 10);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (140, 'Results of a biological inventory of the Nosy Ankao island group, Parc National de Loky-Manambato, northeastern Madagascar', 'volume11/mn11.pdf', 11);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (141, 'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf', 11);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (142, 'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf', 11);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (143, 'Les unités paysagères dela péninsule d’Ampasindava (Nord-ouest de Madagascar), un terroir sous haute pression de déforestation', 'volume12/mn12_00.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (144, 'Influence des caractéristiques forestières et des perturbations anthropogéniques sur la distribution des lémuriens de la Forêt Classée d’Ankadivory (Tsinjoarivo-Ambatolampy)', 'volume12/mn12_01.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (145, 'Updated extinction risk assessments of Madagascar’s freshwater decapod crustaceans reveal fewer threatened species but more Data Deficient species', 'volume12/mn12_02.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (146, 'Sex-ratio chez les puces (Insecta : Siphonaptera) d’Ambohitantely, Hautes Terres Centrales de Madagascar', 'volume12/mn12_03.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (147, 'Découverte de la construction du nid de l’aigle serpentaire de Madagascar (Eutriorchis astur) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume12/mn12_04.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (148, 'Les tiques dures (Acari : Ixodidae) ectoparasites de micromammifères non-volants dans la forêt d’Ambohitantely, Madagascar', 'volume12/mn12_05.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (149, 'Survie et variation temporelle de la taille de la population de Rousettus madagascariensis (Chiroptera : Pteropodidae) de la Grotte des Chauves-souris d’Ankarana, Nord de Madagascar', 'volume12/mn12_06.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (200, 'Tome I: Introduction', 'PA book_t1.pdf', 28);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (150, 'Diversité et écologie des petits mammifères dans les habitats forestiers et anthropiques du District de Moramanga, Centre-est de Madagascar', 'volume12/mn12_07.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (151, 'The distribution and ecology of invasive alien vertebrate species in the greater Toamasina region, central eastern Madagascar', 'volume12/mn12_08.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (152, 'Nest of the Malagasy Pond Heron Ardeola idae in northern Madagascar', 'volume12/mn12_09.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (153, 'Occurrence of Taphozous mauritianus (Emballonuridae) in Maintirano, western Madagascar', 'volume12/mn12_10.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (154, 'Format for contributions to Malagasy Nature', 'volume12/mn12_11.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (155, 'Notes aux contributeurs dans Malagasy Nature', 'volume12/mn12_12.pdf', 12);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (156, 'Morphologie pollinique de la flore de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_00.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (157, 'Morphométrie des fruits et des graines de Ficus (Moraceae) de la forêt sèche de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_01.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (158, 'Euphorbia pseudodidiereoides, une nouvelle euphorbe épineuse du Centre-sud de Madagascar', 'volume13/mn13_02.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (159, 'A review of Trypanosoma species known from Malagasy vertebrates', 'volume13/mn13_03.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (160, 'Revue des stratégies nationales sur la biosécurité et perspectives sur la gestion des espèces exotiques envahissantes à Madagascar', 'volume13/mn13_04.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (161, 'Population structure, activity pattern, and microhabitat use of Phelsuma klemmeri at Mandrozo, Madagascar', 'volume13/mn13_05.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (162, 'Succès de la reproduction et comportements de Polyboroide rayé (Polyboroides radiatus) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume13/mn13_06.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (163, 'Les chauves-souris du Paysage Harmonieux Protégé du Complexe Tsimembo Manambolomaty, Région Melaky, Madagascar : diversité et biogéographie', 'volume13/mn13_07.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (164, 'Seasonal movements of insectivorous bat species in southwestern Madagascar', 'volume13/mn13_08.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (165, 'Les rats dans le monde rural du Centre-est et du Centre-sud de Madagascar : dommages causés et systèmes de contrôle', 'volume13/mn13_09.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (166, 'Feeding ecology of the bokiboky, Mungotictis decemlineata (family Eupleridae)', 'volume13/mn13_010.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (167, 'Mise à jour de la distribution du crapaud commun d’Asie (Duttaphrynus melanostictus) dans le sud de Toamasina, Madagascar', 'volume13/mn13_011.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (168, 'Le bananier aquatique, Typhonodorum madagascariense (famille des Araceae) dans la commune rurale d’Ankililoaka, Sud-ouest de Madagascar', 'volume13/mn13_012.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (169, 'Absence of Trypanosoma infection among Hoplobatrachus tigerinus (Amphibia: Dicroglossidae) from Boeny, western Madagascar', 'volume13/mn13_013.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (170, 'Format for contributions to Malagasy Nature', 'volume13/mn13_014.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (171, 'Notes aux contributeurs dans Malagasy Nature', 'volume13/mn13_015.pdf', 13);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (172, 'Tribute to Martin Edwin Nicoll (1954-2020): Forty years (1980-2020) of a British scientist dedicated to the conservation of Malagasy biodiversity', 'volume14/mn14_00.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (173, 'Effet de l’exploitation minière sur les facteurs productifs comme l’agriculture et la production de charbon de bois et la dynamique de déforestation dans le Sud-ouest de Madagascar', 'volume14/mn14_01.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (174, 'Etude dendrométrique et dendrochronologique de trois espèces de Cedrelopsis Baillon, (Rutaceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume14/mn14_02.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (175, 'Resting site choice depends on age in Opisthacanthus madagascariensis (Scorpiones: Hormuridae) in dry deciduous forest, western Madagascar', 'volume14/mn14_03.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (176, 'A rapid avifaunal survey of the Mahimborondro Protected Area, northern Madagascar', 'volume14/mn14_04.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (177, 'Field body temperatures in the rainforest frog Mantidactylus (Brygoomantis) bellyi from northern Madagascar: Variance and predictors', 'volume14/mn14_05.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (178, 'Population dynamics of Lemur catta at selected sleeping sites of Tsimanampesotse National Park', 'volume14/mn14_06.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (179, 'Canopy chameleon (Furcifer willsii) consumption by common big-eyed snake (Mimophis mahfalensis) in Fivahona Forest, eastern Madagascar', 'volume14/mn14_07.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (180, 'First sighting of the House Crow Corvus splendens on Nosy Be', 'volume14/mn14_08.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (181, 'Format for contributions to Malagasy Nature', 'volume14/mn14_09.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (182, 'Notes aux contributeurs dans Malagasy Nature', 'volume14/mn14_10.pdf', 14);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (183, 'Foreword', 'volume15/mn15_00.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (184, 'Introduction: The way of the future — new paleosciences research led by Malagasy scientists', 'volume15/mn15_01.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (185, 'Applying human niche construction theory to study settlement choice in southwest Madagascar, 16th-19th centuries CE', 'volume15/mn15_02.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (186, 'Nontrivial responses of vegetation to compound disturbances: A case study of Malagasy grasslands', 'volume15/mn15_03.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (187, 'Adaptation of subsistence strategies of the southwestern Malagasy in the face of climate change', 'volume15/mn15_04.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (188, 'The Malagasy monsoon over the Holocene: A review from speleothem δ18Oc records ', 'volume15/mn15_05.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (189, 'Paleoecological evidence for late Holocene aridification from the Taolambiby subfossil site of southwestern Madagascar', 'volume15/mn15_06.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (190, 'Description of the subfossil crocodylians from a new Late Pleistocene subfossil site (Tsaramody, Sambaina Basin) in central Madagascar', 'volume15/mn15_07.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (191, 'Comparing the paleoclimates of northwestern and southwestern Madagascar during the late Holocene: Implications for the role of climate in megafaunal extinction', 'volume15/mn15_08.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (192, 'Subfossil birds from a submerged cave in southwestern Madagascar', 'volume15/mn15_09.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (193, 'The growth and development of Pachylemur, a large-bodied Lemuridae', 'volume15/mn15_10.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (194, 'The stories people tell, and how they can contribute to our understanding of megafaunal decline and extinction in Madagascar', 'volume15/mn15_11.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (195, 'Format for contributions to Malagasy Nature', 'volume15/mn15_12.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (196, 'Notes aux contributeurs dans Malagasy Nature', 'volume15/mn15_13.pdf', 15);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (198, NULL, '2014_memoiresandthesis.pdf', 26);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (199, '', 'Atlas.pdf', 27);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (201, 'Tome II: Northern and Eastern Madagascar', 'PA book_t2.pdf', 28);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (202, 'Tome III: Western and Southern Madagascar - Synthesis', 'PA book_t3.pdf', 28);
INSERT INTO public.publicationdetail (id, name, pdf, idpublication) VALUES (197, '', '2014_publicationeng.pdf', 25);


--
-- Data for Name: sequences_sequence; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sequences_sequence (name, last) VALUES ('institution', 38);


--
-- Data for Name: studentdegree; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: typeactivity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typeactivity (id, type) VALUES ('A2', 'Conference');
INSERT INTO public.typeactivity (id, type) VALUES ('A3', 'Research');
INSERT INTO public.typeactivity (id, type) VALUES ('A4', 'Project');
INSERT INTO public.typeactivity (id, type) VALUES ('A1', 'Visit');


--
-- Data for Name: typemember; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typemember (id, type, description) VALUES (1, 'board of directors', 'In the context of providing clear and long-term advice for the development of new programs and the management of the association, Vahatra places considerable importance on the board of directors.');
INSERT INTO public.typemember (id, type, description) VALUES (3, 'students', 'Students enrolled within the Malagasy university system, particularly in the field of biology and environmental ecology, are the principal focus of the Vahatra program to help with their advancement and capacity building. We aim at having 12-15 students working with us at any given time. Once a student has finished their degree, the place is open for another incoming student.');
INSERT INTO public.typemember (id, type, description) VALUES (2, 'scientists', 'They are the founding members of the association.');
INSERT INTO public.typemember (id, type, description) VALUES (4, 'staff', 'The current staff includes seven individuals');


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
INSERT INTO public.typesubactivity (id, type, idtypeactivity) VALUES ('SA1', 'science for the people', 'A1');


--
-- Data for Name: visit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (1, NULL, 1, 1, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (2, NULL, 2, 2, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (3, NULL, 3, 3, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (4, NULL, 4, 4, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (5, NULL, 5, 5, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (6, NULL, 6, 6, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (7, NULL, 7, 7, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (8, NULL, 8, 8, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (9, NULL, 9, 9, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (10, NULL, 10, 10, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (11, NULL, 11, 11, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (12, NULL, 12, 12, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (13, NULL, 13, 13, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (14, NULL, 14, 14, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (15, NULL, 15, 15, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (16, NULL, 16, 16, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (17, NULL, 17, 17, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (18, NULL, 18, 18, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (19, NULL, 19, 19, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (20, NULL, 20, 20, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (21, NULL, 21, 21, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (22, NULL, 22, 22, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (23, NULL, 23, 23, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (24, NULL, 24, 24, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (25, NULL, 25, 25, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (26, NULL, 26, 26, 'SA1');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (27, NULL, 27, 27, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (28, NULL, 28, 27, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (29, NULL, 29, 14, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (30, NULL, 30, 27, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (31, NULL, 31, 14, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (32, NULL, 32, 27, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (33, NULL, 33, 28, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (34, NULL, 34, 29, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (35, NULL, 35, 30, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (36, NULL, 36, 29, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (37, NULL, 37, 31, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (38, NULL, 38, 41, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (39, NULL, 39, 31, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (40, NULL, 40, 32, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (41, NULL, 41, 33, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (42, NULL, 42, 27, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (43, NULL, 43, 34, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (44, NULL, 44, 35, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (45, NULL, 45, 36, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (46, NULL, 46, 37, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (47, NULL, 47, 38, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (48, NULL, 48, 31, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (49, NULL, 49, 39, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (50, NULL, 50, 32, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (51, NULL, 51, 40, 'SA2');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (52, '2003-03-01', 52, 42, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (53, '2005-10-01', 53, 43, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (54, '2006-02-01', 54, 44, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (55, '2007-03-01', 55, 45, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (56, '2008-03-01', 56, 33, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (57, '2009-02-01', 57, 46, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (58, '2010-04-01', 58, 30, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (59, NULL, 59, 47, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (60, NULL, 60, 28, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (61, NULL, 61, 14, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (62, '2022-11-30', 62, 48, 'SA3');
INSERT INTO public.visit (id, dateend, idactivity, idlocation, idtypesubactivity) VALUES (65, '2022-09-06', 103, 8, 'SA2');


--
-- Name: activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activity_id_seq', 103, true);


--
-- Name: activityimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activityimage_id_seq', 27, true);


--
-- Name: activityinstitution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activityinstitution_id_seq', 27, true);


--
-- Name: activityperson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activityperson_id_seq', 73, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 36, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: fieldschool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fieldschool_id_seq', 53, true);


--
-- Name: image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.image_id_seq', 59, true);


--
-- Name: imagetype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.imagetype_id_seq', 9, true);


--
-- Name: location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.location_id_seq', 48, true);


--
-- Name: member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.member_id_seq', 21, true);


--
-- Name: memberpostinst_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.memberpostinst_id_seq', 41, true);


--
-- Name: messageofyear_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messageofyear_id_seq', 1, true);


--
-- Name: partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partner_id_seq', 8, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 97, true);


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

SELECT pg_catalog.setval('public.publicationdetail_id_seq', 202, true);


--
-- Name: studentdegree_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.studentdegree_id_seq', 1, false);


--
-- Name: typemember_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.typemember_id_seq', 4, true);


--
-- Name: typepublication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.typepublication_id_seq', 1, false);


--
-- Name: visit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visit_id_seq', 65, true);


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
-- Name: administrator administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrator
    ADD CONSTRAINT administrator_pkey PRIMARY KEY (id);


--
-- Name: administrator administrator_username_2343b464_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrator
    ADD CONSTRAINT administrator_username_2343b464_uniq UNIQUE (username);


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
-- Name: memberpostinst memberpostinst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT memberpostinst_pkey PRIMARY KEY (id);


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
-- Name: sequences_sequence sequences_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequences_sequence
    ADD CONSTRAINT sequences_sequence_pkey PRIMARY KEY (name);


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
-- Name: activity_idtypeactivity_8153ff68; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX activity_idtypeactivity_8153ff68 ON public.activity USING btree (idtypeactivity);


--
-- Name: activity_idtypeactivity_8153ff68_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX activity_idtypeactivity_8153ff68_like ON public.activity USING btree (idtypeactivity varchar_pattern_ops);


--
-- Name: activityimage_idactivity_76641d8a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX activityimage_idactivity_76641d8a ON public.activityimage USING btree (idactivity);


--
-- Name: activityinstitution_idactivity_ef745460; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX activityinstitution_idactivity_ef745460 ON public.activityinstitution USING btree (idactivity);


--
-- Name: activityinstitution_idinst_d34d2727; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX activityinstitution_idinst_d34d2727 ON public.activityinstitution USING btree (idinst);


--
-- Name: activityinstitution_idinst_d34d2727_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX activityinstitution_idinst_d34d2727_like ON public.activityinstitution USING btree (idinst varchar_pattern_ops);


--
-- Name: activityperson_idactivity_410644dd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX activityperson_idactivity_410644dd ON public.activityperson USING btree (idactivity);


--
-- Name: activityperson_idperson_9c78d1db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX activityperson_idperson_9c78d1db ON public.activityperson USING btree (idperson);


--
-- Name: administrator_id_5fa297e8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX administrator_id_5fa297e8_like ON public.administrator USING btree (id varchar_pattern_ops);


--
-- Name: administrator_username_2343b464_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX administrator_username_2343b464_like ON public.administrator USING btree (username varchar_pattern_ops);


--
-- Name: degree_id_b5c41a28_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX degree_id_b5c41a28_like ON public.degree USING btree (id varchar_pattern_ops);


--
-- Name: department_id_60525937_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX department_id_60525937_like ON public.department USING btree (id varchar_pattern_ops);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: fieldschool_iddept_c231946d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldschool_iddept_c231946d ON public.fieldschool USING btree (iddept);


--
-- Name: fieldschool_iddept_c231946d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldschool_iddept_c231946d_like ON public.fieldschool USING btree (iddept varchar_pattern_ops);


--
-- Name: fieldschool_idinst_93831da0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldschool_idinst_93831da0 ON public.fieldschool USING btree (idinst);


--
-- Name: fieldschool_idinst_93831da0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldschool_idinst_93831da0_like ON public.fieldschool USING btree (idinst varchar_pattern_ops);


--
-- Name: fieldschool_idvisit_0fb3b620; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldschool_idvisit_0fb3b620 ON public.fieldschool USING btree (idvisit);


--
-- Name: image_idtype_9ed792c0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX image_idtype_9ed792c0 ON public.image USING btree (idtype);


--
-- Name: institution_id_a19545b5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX institution_id_a19545b5_like ON public.institution USING btree (id varchar_pattern_ops);


--
-- Name: member_idperson_4b45cdf7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX member_idperson_4b45cdf7 ON public.member USING btree (idperson);


--
-- Name: member_idtypemember_a1701687; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX member_idtypemember_a1701687 ON public.member USING btree (idtypemember);


--
-- Name: memberpostinst_iddept_130bb226; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX memberpostinst_iddept_130bb226 ON public.memberpostinst USING btree (iddept);


--
-- Name: memberpostinst_iddept_130bb226_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX memberpostinst_iddept_130bb226_like ON public.memberpostinst USING btree (iddept varchar_pattern_ops);


--
-- Name: memberpostinst_idinst_dc6e2b3f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX memberpostinst_idinst_dc6e2b3f ON public.memberpostinst USING btree (idinst);


--
-- Name: memberpostinst_idinst_dc6e2b3f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX memberpostinst_idinst_dc6e2b3f_like ON public.memberpostinst USING btree (idinst varchar_pattern_ops);


--
-- Name: memberpostinst_idmember_ec7fad30; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX memberpostinst_idmember_ec7fad30 ON public.memberpostinst USING btree (idmember);


--
-- Name: memberpostinst_idpost_dfb553ea; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX memberpostinst_idpost_dfb553ea ON public.memberpostinst USING btree (idpost);


--
-- Name: memberpostinst_idpost_dfb553ea_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX memberpostinst_idpost_dfb553ea_like ON public.memberpostinst USING btree (idpost varchar_pattern_ops);


--
-- Name: messageofyear_idmember_2ab1dbf4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX messageofyear_idmember_2ab1dbf4 ON public.messageofyear USING btree (idmember);


--
-- Name: partner_idinst_630ec2e1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX partner_idinst_630ec2e1 ON public.partner USING btree (idinst);


--
-- Name: partner_idinst_630ec2e1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX partner_idinst_630ec2e1_like ON public.partner USING btree (idinst varchar_pattern_ops);


--
-- Name: post_id_a84460e4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_id_a84460e4_like ON public.post USING btree (id varchar_pattern_ops);


--
-- Name: publication_idtype_701fb9f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX publication_idtype_701fb9f0 ON public.publication USING btree (idtype);


--
-- Name: publicationauthor_idperson_ceef0fe3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX publicationauthor_idperson_ceef0fe3 ON public.publicationauthor USING btree (idperson);


--
-- Name: publicationauthor_idpublication_fa82b830; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX publicationauthor_idpublication_fa82b830 ON public.publicationauthor USING btree (idpublication);


--
-- Name: publicationdetail_idpublication_59d64763; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX publicationdetail_idpublication_59d64763 ON public.publicationdetail USING btree (idpublication);


--
-- Name: sequences_sequence_name_667d3102_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sequences_sequence_name_667d3102_like ON public.sequences_sequence USING btree (name varchar_pattern_ops);


--
-- Name: studentdegree_iddegree_d1c0adc8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX studentdegree_iddegree_d1c0adc8 ON public.studentdegree USING btree (iddegree);


--
-- Name: studentdegree_iddegree_d1c0adc8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX studentdegree_iddegree_d1c0adc8_like ON public.studentdegree USING btree (iddegree varchar_pattern_ops);


--
-- Name: studentdegree_idmember_477a4423; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX studentdegree_idmember_477a4423 ON public.studentdegree USING btree (idmember);


--
-- Name: typeactivity_id_68c15a44_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX typeactivity_id_68c15a44_like ON public.typeactivity USING btree (id varchar_pattern_ops);


--
-- Name: typesubactivity_id_fecf8b03_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX typesubactivity_id_fecf8b03_like ON public.typesubactivity USING btree (id varchar_pattern_ops);


--
-- Name: typesubactivity_idtypeactivity_b4e8418d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX typesubactivity_idtypeactivity_b4e8418d ON public.typesubactivity USING btree (idtypeactivity);


--
-- Name: typesubactivity_idtypeactivity_b4e8418d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX typesubactivity_idtypeactivity_b4e8418d_like ON public.typesubactivity USING btree (idtypeactivity varchar_pattern_ops);


--
-- Name: visit_idactivity_323a22de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX visit_idactivity_323a22de ON public.visit USING btree (idactivity);


--
-- Name: visit_idlocation_9dc07eb8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX visit_idlocation_9dc07eb8 ON public.visit USING btree (idlocation);


--
-- Name: visit_idtypesubactivity_a95a7f7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX visit_idtypesubactivity_a95a7f7d ON public.visit USING btree (idtypesubactivity);


--
-- Name: visit_idtypesubactivity_a95a7f7d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX visit_idtypesubactivity_a95a7f7d_like ON public.visit USING btree (idtypesubactivity varchar_pattern_ops);


--
-- Name: activity activity_idtypeactivity_8153ff68_fk_typeactivity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_idtypeactivity_8153ff68_fk_typeactivity_id FOREIGN KEY (idtypeactivity) REFERENCES public.typeactivity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: activityimage activityimage_idactivity_76641d8a_fk_activity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityimage
    ADD CONSTRAINT activityimage_idactivity_76641d8a_fk_activity_id FOREIGN KEY (idactivity) REFERENCES public.activity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: activityinstitution activityinstitution_idactivity_ef745460_fk_activity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityinstitution
    ADD CONSTRAINT activityinstitution_idactivity_ef745460_fk_activity_id FOREIGN KEY (idactivity) REFERENCES public.activity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: activityinstitution activityinstitution_idinst_d34d2727_fk_institution_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityinstitution
    ADD CONSTRAINT activityinstitution_idinst_d34d2727_fk_institution_id FOREIGN KEY (idinst) REFERENCES public.institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: activityperson activityperson_idactivity_410644dd_fk_activity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityperson
    ADD CONSTRAINT activityperson_idactivity_410644dd_fk_activity_id FOREIGN KEY (idactivity) REFERENCES public.activity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: activityperson activityperson_idperson_9c78d1db_fk_person_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activityperson
    ADD CONSTRAINT activityperson_idperson_9c78d1db_fk_person_id FOREIGN KEY (idperson) REFERENCES public.person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fieldschool fieldschool_iddept_c231946d_fk_department_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldschool
    ADD CONSTRAINT fieldschool_iddept_c231946d_fk_department_id FOREIGN KEY (iddept) REFERENCES public.department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fieldschool fieldschool_idinst_93831da0_fk_institution_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldschool
    ADD CONSTRAINT fieldschool_idinst_93831da0_fk_institution_id FOREIGN KEY (idinst) REFERENCES public.institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fieldschool fieldschool_idvisit_0fb3b620_fk_visit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldschool
    ADD CONSTRAINT fieldschool_idvisit_0fb3b620_fk_visit_id FOREIGN KEY (idvisit) REFERENCES public.visit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: image image_idtype_9ed792c0_fk_imagetype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_idtype_9ed792c0_fk_imagetype_id FOREIGN KEY (idtype) REFERENCES public.imagetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: member member_idperson_4b45cdf7_fk_person_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_idperson_4b45cdf7_fk_person_id FOREIGN KEY (idperson) REFERENCES public.person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: member member_idtypemember_a1701687_fk_typemember_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_idtypemember_a1701687_fk_typemember_id FOREIGN KEY (idtypemember) REFERENCES public.typemember(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: memberpostinst memberpostinst_iddept_130bb226_fk_department_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT memberpostinst_iddept_130bb226_fk_department_id FOREIGN KEY (iddept) REFERENCES public.department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: memberpostinst memberpostinst_idinst_dc6e2b3f_fk_institution_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT memberpostinst_idinst_dc6e2b3f_fk_institution_id FOREIGN KEY (idinst) REFERENCES public.institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: memberpostinst memberpostinst_idmember_ec7fad30_fk_member_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT memberpostinst_idmember_ec7fad30_fk_member_id FOREIGN KEY (idmember) REFERENCES public.member(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: memberpostinst memberpostinst_idpost_dfb553ea_fk_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberpostinst
    ADD CONSTRAINT memberpostinst_idpost_dfb553ea_fk_post_id FOREIGN KEY (idpost) REFERENCES public.post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: messageofyear messageofyear_idmember_2ab1dbf4_fk_member_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messageofyear
    ADD CONSTRAINT messageofyear_idmember_2ab1dbf4_fk_member_id FOREIGN KEY (idmember) REFERENCES public.member(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: partner partner_idinst_630ec2e1_fk_institution_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_idinst_630ec2e1_fk_institution_id FOREIGN KEY (idinst) REFERENCES public.institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: publication publication_idtype_701fb9f0_fk_typepublication_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publication_idtype_701fb9f0_fk_typepublication_id FOREIGN KEY (idtype) REFERENCES public.typepublication(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: publicationauthor publicationauthor_idperson_ceef0fe3_fk_person_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationauthor
    ADD CONSTRAINT publicationauthor_idperson_ceef0fe3_fk_person_id FOREIGN KEY (idperson) REFERENCES public.person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: publicationauthor publicationauthor_idpublication_fa82b830_fk_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationauthor
    ADD CONSTRAINT publicationauthor_idpublication_fa82b830_fk_publication_id FOREIGN KEY (idpublication) REFERENCES public.publication(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: publicationdetail publicationdetail_idpublication_59d64763_fk_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicationdetail
    ADD CONSTRAINT publicationdetail_idpublication_59d64763_fk_publication_id FOREIGN KEY (idpublication) REFERENCES public.publication(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: studentdegree studentdegree_iddegree_d1c0adc8_fk_degree_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentdegree
    ADD CONSTRAINT studentdegree_iddegree_d1c0adc8_fk_degree_id FOREIGN KEY (iddegree) REFERENCES public.degree(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: studentdegree studentdegree_idmember_477a4423_fk_member_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentdegree
    ADD CONSTRAINT studentdegree_idmember_477a4423_fk_member_id FOREIGN KEY (idmember) REFERENCES public.member(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: typesubactivity typesubactivity_idtypeactivity_b4e8418d_fk_typeactivity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typesubactivity
    ADD CONSTRAINT typesubactivity_idtypeactivity_b4e8418d_fk_typeactivity_id FOREIGN KEY (idtypeactivity) REFERENCES public.typeactivity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: visit visit_idactivity_323a22de_fk_activity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT visit_idactivity_323a22de_fk_activity_id FOREIGN KEY (idactivity) REFERENCES public.activity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: visit visit_idlocation_9dc07eb8_fk_location_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT visit_idlocation_9dc07eb8_fk_location_id FOREIGN KEY (idlocation) REFERENCES public.location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: visit visit_idtypesubactivity_a95a7f7d_fk_typesubactivity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visit
    ADD CONSTRAINT visit_idtypesubactivity_a95a7f7d_fk_typesubactivity_id FOREIGN KEY (idtypesubactivity) REFERENCES public.typesubactivity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

