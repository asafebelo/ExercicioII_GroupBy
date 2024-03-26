--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-26 10:13:43

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
-- TOC entry 274 (class 1259 OID 5786738)
-- Name: livro; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.livro (
    id_livro integer NOT NULL,
    titulo character varying(35),
    editora character varying(20),
    preco real
);


ALTER TABLE public.livro OWNER TO iicxlgwo;

--
-- TOC entry 273 (class 1259 OID 5786736)
-- Name: livro_id_livro_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.livro_id_livro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.livro_id_livro_seq OWNER TO iicxlgwo;

--
-- TOC entry 4216 (class 0 OID 0)
-- Dependencies: 273
-- Name: livro_id_livro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.livro_id_livro_seq OWNED BY public.livro.id_livro;


--
-- TOC entry 4069 (class 2604 OID 5786741)
-- Name: livro id_livro; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.livro ALTER COLUMN id_livro SET DEFAULT nextval('public.livro_id_livro_seq'::regclass);


--
-- TOC entry 4210 (class 0 OID 5786738)
-- Dependencies: 274
-- Data for Name: livro; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.livro (id_livro, titulo, editora, preco) FROM stdin;
1	Dom Quixote	O Bom Brasil	6.9
2	Capitães de Areia	Sempre Revivendo	23.4
3	Alice no País das Maravilhas	O Bom Brasil	10.8
4	Gravity Falls Nº 3	Disney	4.6
\.


--
-- TOC entry 4217 (class 0 OID 0)
-- Dependencies: 273
-- Name: livro_id_livro_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.livro_id_livro_seq', 4, true);


--
-- TOC entry 4071 (class 2606 OID 5786743)
-- Name: livro livro_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_pkey PRIMARY KEY (id_livro);


-- Completed on 2024-03-26 10:13:45

--
-- PostgreSQL database dump complete
--

