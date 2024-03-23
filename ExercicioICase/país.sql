--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-23 15:50:08

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
-- TOC entry 248 (class 1259 OID 5782814)
-- Name: pais; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.pais (
    id_pais integer NOT NULL,
    nome character varying(30),
    sigla character varying(2)
);


ALTER TABLE public.pais OWNER TO iicxlgwo;

--
-- TOC entry 247 (class 1259 OID 5782812)
-- Name: pais_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.pais_id_pais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pais_id_pais_seq OWNER TO iicxlgwo;

--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 247
-- Name: pais_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.pais_id_pais_seq OWNED BY public.pais.id_pais;


--
-- TOC entry 4000 (class 2604 OID 5782817)
-- Name: pais id_pais; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.pais ALTER COLUMN id_pais SET DEFAULT nextval('public.pais_id_pais_seq'::regclass);


--
-- TOC entry 4135 (class 0 OID 5782814)
-- Dependencies: 248
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.pais (id_pais, nome, sigla) FROM stdin;
1	Brasil	BR
2	Estados Unidos	US
3	Canadá	CA
4	França	FR
5	Alemanha	AL
\.


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 247
-- Name: pais_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.pais_id_pais_seq', 5, true);


--
-- TOC entry 4002 (class 2606 OID 5782819)
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id_pais);


-- Completed on 2024-03-23 15:50:12

--
-- PostgreSQL database dump complete
--

