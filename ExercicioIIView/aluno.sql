--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-24 17:15:43

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
-- TOC entry 252 (class 1259 OID 5783070)
-- Name: aluno; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.aluno (
    id_aluno integer NOT NULL,
    nome character varying(30)
);


ALTER TABLE public.aluno OWNER TO iicxlgwo;

--
-- TOC entry 251 (class 1259 OID 5783068)
-- Name: aluno_id_aluno_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.aluno_id_aluno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aluno_id_aluno_seq OWNER TO iicxlgwo;

--
-- TOC entry 4173 (class 0 OID 0)
-- Dependencies: 251
-- Name: aluno_id_aluno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.aluno_id_aluno_seq OWNED BY public.aluno.id_aluno;


--
-- TOC entry 4029 (class 2604 OID 5783073)
-- Name: aluno id_aluno; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.aluno ALTER COLUMN id_aluno SET DEFAULT nextval('public.aluno_id_aluno_seq'::regclass);


--
-- TOC entry 4167 (class 0 OID 5783070)
-- Dependencies: 252
-- Data for Name: aluno; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.aluno (id_aluno, nome) FROM stdin;
1	Asafe
2	Luiza
3	Matheus
4	Calebe
\.


--
-- TOC entry 4174 (class 0 OID 0)
-- Dependencies: 251
-- Name: aluno_id_aluno_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.aluno_id_aluno_seq', 4, true);


--
-- TOC entry 4031 (class 2606 OID 5783075)
-- Name: aluno aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id_aluno);


-- Completed on 2024-03-24 17:15:48

--
-- PostgreSQL database dump complete
--

