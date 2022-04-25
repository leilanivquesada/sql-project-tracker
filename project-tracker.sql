--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: grades; Type: TABLE; Schema: public; Owner: leilaniquesdad
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    student_github character varying(30),
    project_title character varying(30),
    grade integer
);


ALTER TABLE public.grades OWNER TO leilaniquesdad;

--
-- Name: grades_id_seq; Type: SEQUENCE; Schema: public; Owner: leilaniquesdad
--

CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grades_id_seq OWNER TO leilaniquesdad;

--
-- Name: grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leilaniquesdad
--

ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: leilaniquesdad
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    title character varying(30),
    description text,
    max_grade integer
);


ALTER TABLE public.projects OWNER TO leilaniquesdad;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: leilaniquesdad
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO leilaniquesdad;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leilaniquesdad
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: leilaniquesdad
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(30),
    last_name character varying(30),
    github character varying(30)
);


ALTER TABLE public.students OWNER TO leilaniquesdad;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: leilaniquesdad
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO leilaniquesdad;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leilaniquesdad
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: grades id; Type: DEFAULT; Schema: public; Owner: leilaniquesdad
--

ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: leilaniquesdad
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: leilaniquesdad
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: leilaniquesdad
--

COPY public.grades (id, student_github, project_title, grade) FROM stdin;
1	jhacks	Markov	10
2	jhacks	Blockly	2
3	sdevelops	Markov	50
4	sdevelops	Blockly	100
6	mickeymouse	Nintendo	10
7	mickeymouse	Markov	40
8	mickeymouse	Blockly	75
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: leilaniquesdad
--

COPY public.projects (id, title, description, max_grade) FROM stdin;
1	Markov	Tweets generated from Markov chains	50
2	Blockly	Programmatic Logic Puzzle Game	100
3	Virtual Poker	A Game of Probability and Math	100
4	Minecraft	A Video Game Project	100
5	Nintendo Emulator	Game using pixels, sprites, game theory	50
6	Computer Calculator	Practicing order of operations in console	10
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: leilaniquesdad
--

COPY public.students (id, first_name, last_name, github) FROM stdin;
1	Jane	Hacker	jhacks
2	Sarah	Developer	sdevelops
3	Leilani	Quesada	leilanivquesada
4	Mickey	Mouse	mickeymouse
5	Jessica	Mow	jessicamow
\.


--
-- Name: grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leilaniquesdad
--

SELECT pg_catalog.setval('public.grades_id_seq', 9, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leilaniquesdad
--

SELECT pg_catalog.setval('public.projects_id_seq', 6, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leilaniquesdad
--

SELECT pg_catalog.setval('public.students_id_seq', 5, true);


--
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: leilaniquesdad
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: leilaniquesdad
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: leilaniquesdad
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

