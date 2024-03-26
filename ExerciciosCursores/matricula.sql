--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-26 11:10:07

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
-- TOC entry 274 (class 1259 OID 5787144)
-- Name: matricula; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.matricula (
    id_matricula integer NOT NULL,
    codigoaluno integer,
    codigodisciplina integer
);


ALTER TABLE public.matricula OWNER TO iicxlgwo;

--
-- TOC entry 273 (class 1259 OID 5787142)
-- Name: matricula_id_matricula_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.matricula_id_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.matricula_id_matricula_seq OWNER TO iicxlgwo;

--
-- TOC entry 4209 (class 0 OID 0)
-- Dependencies: 273
-- Name: matricula_id_matricula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.matricula_id_matricula_seq OWNED BY public.matricula.id_matricula;


--
-- TOC entry 4064 (class 2604 OID 5787147)
-- Name: matricula id_matricula; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.matricula ALTER COLUMN id_matricula SET DEFAULT nextval('public.matricula_id_matricula_seq'::regclass);


--
-- TOC entry 4203 (class 0 OID 5787144)
-- Dependencies: 274
-- Data for Name: matricula; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.matricula (id_matricula, codigoaluno, codigodisciplina) FROM stdin;
1	1	2
2	2	3
3	3	1
4	4	4
5	1	1
\.


--
-- TOC entry 4210 (class 0 OID 0)
-- Dependencies: 273
-- Name: matricula_id_matricula_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.matricula_id_matricula_seq', 5, true);


--
-- TOC entry 4066 (class 2606 OID 5787149)
-- Name: matricula matricula_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (id_matricula);


-- Completed on 2024-03-26 11:10:10

--
-- PostgreSQL database dump complete
--

