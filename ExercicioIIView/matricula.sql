--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-24 17:16:40

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
-- TOC entry 260 (class 1259 OID 5783112)
-- Name: matricula; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.matricula (
    id_matricula integer NOT NULL,
    codigoaluno integer,
    codigoturma integer
);


ALTER TABLE public.matricula OWNER TO iicxlgwo;

--
-- TOC entry 259 (class 1259 OID 5783110)
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
-- TOC entry 4175 (class 0 OID 0)
-- Dependencies: 259
-- Name: matricula_id_matricula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.matricula_id_matricula_seq OWNED BY public.matricula.id_matricula;


--
-- TOC entry 4029 (class 2604 OID 5783115)
-- Name: matricula id_matricula; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.matricula ALTER COLUMN id_matricula SET DEFAULT nextval('public.matricula_id_matricula_seq'::regclass);


--
-- TOC entry 4169 (class 0 OID 5783112)
-- Dependencies: 260
-- Data for Name: matricula; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.matricula (id_matricula, codigoaluno, codigoturma) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
\.


--
-- TOC entry 4176 (class 0 OID 0)
-- Dependencies: 259
-- Name: matricula_id_matricula_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.matricula_id_matricula_seq', 4, true);


--
-- TOC entry 4031 (class 2606 OID 5783117)
-- Name: matricula matricula_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (id_matricula);


--
-- TOC entry 4032 (class 2606 OID 5783118)
-- Name: matricula matricula_codigoaluno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_codigoaluno_fkey FOREIGN KEY (codigoaluno) REFERENCES public.aluno(id_aluno);


--
-- TOC entry 4033 (class 2606 OID 5783123)
-- Name: matricula matricula_codigoturma_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_codigoturma_fkey FOREIGN KEY (codigoturma) REFERENCES public.turma(id_turma);


-- Completed on 2024-03-24 17:16:44

--
-- PostgreSQL database dump complete
--

