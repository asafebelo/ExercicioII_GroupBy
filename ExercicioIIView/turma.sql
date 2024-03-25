--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-24 17:16:28

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
-- TOC entry 258 (class 1259 OID 5783094)
-- Name: turma; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.turma (
    id_turma integer NOT NULL,
    nome character varying(10),
    codigodisciplina integer,
    codigoprofessor integer
);


ALTER TABLE public.turma OWNER TO iicxlgwo;

--
-- TOC entry 257 (class 1259 OID 5783092)
-- Name: turma_id_turma_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.turma_id_turma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.turma_id_turma_seq OWNER TO iicxlgwo;

--
-- TOC entry 4175 (class 0 OID 0)
-- Dependencies: 257
-- Name: turma_id_turma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.turma_id_turma_seq OWNED BY public.turma.id_turma;


--
-- TOC entry 4029 (class 2604 OID 5783097)
-- Name: turma id_turma; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.turma ALTER COLUMN id_turma SET DEFAULT nextval('public.turma_id_turma_seq'::regclass);


--
-- TOC entry 4169 (class 0 OID 5783094)
-- Dependencies: 258
-- Data for Name: turma; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.turma (id_turma, nome, codigodisciplina, codigoprofessor) FROM stdin;
1	A	1	2
2	B	2	3
3	C	3	4
4	D	4	1
\.


--
-- TOC entry 4176 (class 0 OID 0)
-- Dependencies: 257
-- Name: turma_id_turma_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.turma_id_turma_seq', 4, true);


--
-- TOC entry 4031 (class 2606 OID 5783099)
-- Name: turma turma_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT turma_pkey PRIMARY KEY (id_turma);


--
-- TOC entry 4032 (class 2606 OID 5783100)
-- Name: turma turma_codigodisciplina_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT turma_codigodisciplina_fkey FOREIGN KEY (codigodisciplina) REFERENCES public.disciplina(id_disciplina);


--
-- TOC entry 4033 (class 2606 OID 5783105)
-- Name: turma turma_codigoprofessor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT turma_codigoprofessor_fkey FOREIGN KEY (codigoprofessor) REFERENCES public.professor(id_professor);


-- Completed on 2024-03-24 17:16:33

--
-- PostgreSQL database dump complete
--

