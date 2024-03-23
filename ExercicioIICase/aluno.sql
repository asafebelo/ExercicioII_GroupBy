--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-23 12:17:11

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
-- TOC entry 246 (class 1259 OID 5782515)
-- Name: aluno; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.aluno (
    id_aluno integer NOT NULL,
    nome character varying(20),
    codigocarteira integer
);


ALTER TABLE public.aluno OWNER TO iicxlgwo;

--
-- TOC entry 245 (class 1259 OID 5782513)
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
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 245
-- Name: aluno_id_aluno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.aluno_id_aluno_seq OWNED BY public.aluno.id_aluno;


--
-- TOC entry 3985 (class 2604 OID 5782518)
-- Name: aluno id_aluno; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.aluno ALTER COLUMN id_aluno SET DEFAULT nextval('public.aluno_id_aluno_seq'::regclass);


--
-- TOC entry 4121 (class 0 OID 5782515)
-- Dependencies: 246
-- Data for Name: aluno; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.aluno (id_aluno, nome, codigocarteira) FROM stdin;
1	Asafe	1
2	Caio	2
3	Luiza	4
4	Ana	5
5	Diego	3
\.


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 245
-- Name: aluno_id_aluno_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.aluno_id_aluno_seq', 5, true);


--
-- TOC entry 3987 (class 2606 OID 5782520)
-- Name: aluno aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id_aluno);


--
-- TOC entry 3988 (class 2606 OID 5782521)
-- Name: aluno aluno_codigocarteira_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_codigocarteira_fkey FOREIGN KEY (codigocarteira) REFERENCES public.carteiramotorista(id_carteira);


-- Completed on 2024-03-23 12:17:15

--
-- PostgreSQL database dump complete
--

