--
-- PostgreSQL database dump
--

\restrict basDCeykJTTKXnfRhkutc6vVym4l5IGHZekrkZcMl70xXrr9HzhJQo7qlPEWfOh

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: attendance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendance (
    id integer NOT NULL,
    student_id integer,
    lesson_date date,
    status character varying(30)
);


ALTER TABLE public.attendance OWNER TO postgres;

--
-- Name: attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_id_seq OWNER TO postgres;

--
-- Name: attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendance_id_seq OWNED BY public.attendance.id;


--
-- Name: blocked_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blocked_sites (
    id integer NOT NULL,
    site_url character varying(200),
    reason character varying(200)
);


ALTER TABLE public.blocked_sites OWNER TO postgres;

--
-- Name: blocked_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blocked_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blocked_sites_id_seq OWNER TO postgres;

--
-- Name: blocked_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blocked_sites_id_seq OWNED BY public.blocked_sites.id;


--
-- Name: filter_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filter_rules (
    id integer NOT NULL,
    category character varying(100),
    action character varying(30)
);


ALTER TABLE public.filter_rules OWNER TO postgres;

--
-- Name: filter_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filter_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.filter_rules_id_seq OWNER TO postgres;

--
-- Name: filter_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filter_rules_id_seq OWNED BY public.filter_rules.id;


--
-- Name: grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    student_id integer,
    lesson_id integer,
    grade integer
);


ALTER TABLE public.grades OWNER TO postgres;

--
-- Name: grades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grades_id_seq OWNER TO postgres;

--
-- Name: grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;


--
-- Name: lessons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lessons (
    id integer NOT NULL,
    subject character varying(100),
    lesson_date date
);


ALTER TABLE public.lessons OWNER TO postgres;

--
-- Name: lessons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lessons_id_seq OWNER TO postgres;

--
-- Name: lessons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    full_name character varying(100),
    class_name character varying(20)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: attendance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance ALTER COLUMN id SET DEFAULT nextval('public.attendance_id_seq'::regclass);


--
-- Name: blocked_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blocked_sites ALTER COLUMN id SET DEFAULT nextval('public.blocked_sites_id_seq'::regclass);


--
-- Name: filter_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_rules ALTER COLUMN id SET DEFAULT nextval('public.filter_rules_id_seq'::regclass);


--
-- Name: grades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);


--
-- Name: lessons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: attendance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendance (id, student_id, lesson_date, status) FROM stdin;
\.


--
-- Data for Name: blocked_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blocked_sites (id, site_url, reason) FROM stdin;
\.


--
-- Data for Name: filter_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filter_rules (id, category, action) FROM stdin;
\.


--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grades (id, student_id, lesson_id, grade) FROM stdin;
\.


--
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lessons (id, subject, lesson_date) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, full_name, class_name) FROM stdin;
\.


--
-- Name: attendance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendance_id_seq', 1, false);


--
-- Name: blocked_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blocked_sites_id_seq', 1, false);


--
-- Name: filter_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filter_rules_id_seq', 1, false);


--
-- Name: grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grades_id_seq', 1, false);


--
-- Name: lessons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lessons_id_seq', 1, false);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 1, false);


--
-- Name: attendance attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (id);


--
-- Name: blocked_sites blocked_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blocked_sites
    ADD CONSTRAINT blocked_sites_pkey PRIMARY KEY (id);


--
-- Name: filter_rules filter_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filter_rules
    ADD CONSTRAINT filter_rules_pkey PRIMARY KEY (id);


--
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


--
-- Name: lessons lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: TABLE attendance; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.attendance TO teacher_rw;
GRANT SELECT ON TABLE public.attendance TO journal_ro;


--
-- Name: SEQUENCE attendance_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.attendance_id_seq TO teacher_rw;
GRANT SELECT,USAGE ON SEQUENCE public.attendance_id_seq TO admin_school;
GRANT SELECT,USAGE ON SEQUENCE public.attendance_id_seq TO filter_admin;


--
-- Name: TABLE blocked_sites; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.blocked_sites TO filter_admin;


--
-- Name: SEQUENCE blocked_sites_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.blocked_sites_id_seq TO teacher_rw;
GRANT SELECT,USAGE ON SEQUENCE public.blocked_sites_id_seq TO admin_school;
GRANT SELECT,USAGE ON SEQUENCE public.blocked_sites_id_seq TO filter_admin;


--
-- Name: TABLE filter_rules; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.filter_rules TO filter_admin;


--
-- Name: SEQUENCE filter_rules_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.filter_rules_id_seq TO teacher_rw;
GRANT SELECT,USAGE ON SEQUENCE public.filter_rules_id_seq TO admin_school;
GRANT SELECT,USAGE ON SEQUENCE public.filter_rules_id_seq TO filter_admin;


--
-- Name: TABLE grades; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.grades TO teacher_rw;
GRANT SELECT ON TABLE public.grades TO journal_ro;


--
-- Name: SEQUENCE grades_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.grades_id_seq TO teacher_rw;
GRANT SELECT,USAGE ON SEQUENCE public.grades_id_seq TO admin_school;
GRANT SELECT,USAGE ON SEQUENCE public.grades_id_seq TO filter_admin;


--
-- Name: TABLE lessons; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.lessons TO teacher_rw;
GRANT SELECT ON TABLE public.lessons TO journal_ro;


--
-- Name: SEQUENCE lessons_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.lessons_id_seq TO teacher_rw;
GRANT SELECT,USAGE ON SEQUENCE public.lessons_id_seq TO admin_school;
GRANT SELECT,USAGE ON SEQUENCE public.lessons_id_seq TO filter_admin;


--
-- Name: TABLE students; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.students TO teacher_rw;
GRANT SELECT ON TABLE public.students TO journal_ro;


--
-- Name: SEQUENCE students_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.students_id_seq TO teacher_rw;
GRANT SELECT,USAGE ON SEQUENCE public.students_id_seq TO admin_school;
GRANT SELECT,USAGE ON SEQUENCE public.students_id_seq TO filter_admin;


--
-- PostgreSQL database dump complete
--

\unrestrict basDCeykJTTKXnfRhkutc6vVym4l5IGHZekrkZcMl70xXrr9HzhJQo7qlPEWfOh

