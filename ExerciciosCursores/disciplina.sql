--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-26 11:09:47

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
-- TOC entry 250 (class 1259 OID 5783078)
-- Name: disciplina; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.disciplina (
    id_disciplina integer NOT NULL,
    nome character varying(40)
);


ALTER TABLE public.disciplina OWNER TO iicxlgwo;

--
-- TOC entry 249 (class 1259 OID 5783076)
-- Name: disciplina_id_disciplina_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.disciplina_id_disciplina_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.disciplina_id_disciplina_seq OWNER TO iicxlgwo;

--
-- TOC entry 4209 (class 0 OID 0)
-- Dependencies: 249
-- Name: disciplina_id_disciplina_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.disciplina_id_disciplina_seq OWNED BY public.disciplina.id_disciplina;


--
-- TOC entry 4064 (class 2604 OID 5783081)
-- Name: disciplina id_disciplina; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.disciplina ALTER COLUMN id_disciplina SET DEFAULT nextval('public.disciplina_id_disciplina_seq'::regclass);


--
-- TOC entry 4203 (class 0 OID 5783078)
-- Dependencies: 250
-- Data for Name: disciplina; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.disciplina (id_disciplina, nome) FROM stdin;
1	Matemática
2	Português
3	História
4	Educação Física
\.


--
-- TOC entry 4210 (class 0 OID 0)
-- Dependencies: 249
-- Name: disciplina_id_disciplina_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.disciplina_id_disciplina_seq', 4, true);


--
-- TOC entry 4066 (class 2606 OID 5783083)
-- Name: disciplina disciplina_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT disciplina_pkey PRIMARY KEY (id_disciplina);


-- Completed on 2024-03-26 11:09:49

--
-- PostgreSQL database dump complete
--

