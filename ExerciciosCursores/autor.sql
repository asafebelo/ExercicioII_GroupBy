--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-26 10:13:59

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
-- TOC entry 276 (class 1259 OID 5787042)
-- Name: autor; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.autor (
    id_autor integer NOT NULL,
    nome character varying(30),
    estadonatal character varying(30)
);


ALTER TABLE public.autor OWNER TO iicxlgwo;

--
-- TOC entry 275 (class 1259 OID 5787040)
-- Name: autor_id_autor_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.autor_id_autor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.autor_id_autor_seq OWNER TO iicxlgwo;

--
-- TOC entry 4216 (class 0 OID 0)
-- Dependencies: 275
-- Name: autor_id_autor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.autor_id_autor_seq OWNED BY public.autor.id_autor;


--
-- TOC entry 4069 (class 2604 OID 5787045)
-- Name: autor id_autor; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.autor ALTER COLUMN id_autor SET DEFAULT nextval('public.autor_id_autor_seq'::regclass);


--
-- TOC entry 4210 (class 0 OID 5787042)
-- Dependencies: 276
-- Data for Name: autor; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.autor (id_autor, nome, estadonatal) FROM stdin;
1	Asafe Belo Borges	Cuiabá
2	Leonardo Wilhelm DiCaprio	Califórnia
3	Oprah Gail Winfrey	Mississípi
4	Zé Bonitinho	São Paulo
\.


--
-- TOC entry 4217 (class 0 OID 0)
-- Dependencies: 275
-- Name: autor_id_autor_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.autor_id_autor_seq', 4, true);


--
-- TOC entry 4071 (class 2606 OID 5787047)
-- Name: autor autor_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (id_autor);


-- Completed on 2024-03-26 10:14:02

--
-- PostgreSQL database dump complete
--

