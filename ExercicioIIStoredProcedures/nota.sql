--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-25 15:54:17

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
-- TOC entry 272 (class 1259 OID 5786039)
-- Name: nota; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.nota (
    id_nota integer NOT NULL,
    aluno character varying(50),
    nota double precision
);


ALTER TABLE public.nota OWNER TO iicxlgwo;

--
-- TOC entry 271 (class 1259 OID 5786037)
-- Name: nota_id_nota_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.nota_id_nota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nota_id_nota_seq OWNER TO iicxlgwo;

--
-- TOC entry 4201 (class 0 OID 0)
-- Dependencies: 271
-- Name: nota_id_nota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.nota_id_nota_seq OWNED BY public.nota.id_nota;


--
-- TOC entry 4054 (class 2604 OID 5786042)
-- Name: nota id_nota; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.nota ALTER COLUMN id_nota SET DEFAULT nextval('public.nota_id_nota_seq'::regclass);


--
-- TOC entry 4195 (class 0 OID 5786039)
-- Dependencies: 272
-- Data for Name: nota; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.nota (id_nota, aluno, nota) FROM stdin;
1	Asafe	8.5
2	Asafe	7.5
3	Asafe	9
4	Laura	6
5	Laura	7.9
6	Laura	8.4
7	Carlos	9
8	Carlos	5.8
9	Carlos	10
\.


--
-- TOC entry 4202 (class 0 OID 0)
-- Dependencies: 271
-- Name: nota_id_nota_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.nota_id_nota_seq', 9, true);


--
-- TOC entry 4056 (class 2606 OID 5786044)
-- Name: nota nota_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.nota
    ADD CONSTRAINT nota_pkey PRIMARY KEY (id_nota);


-- Completed on 2024-03-25 15:54:21

--
-- PostgreSQL database dump complete
--

