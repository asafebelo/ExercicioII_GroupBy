--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-24 17:16:13

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
-- TOC entry 256 (class 1259 OID 5783086)
-- Name: professor; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.professor (
    id_professor integer NOT NULL,
    nome character varying(30)
);


ALTER TABLE public.professor OWNER TO iicxlgwo;

--
-- TOC entry 255 (class 1259 OID 5783084)
-- Name: professor_id_professor_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.professor_id_professor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.professor_id_professor_seq OWNER TO iicxlgwo;

--
-- TOC entry 4173 (class 0 OID 0)
-- Dependencies: 255
-- Name: professor_id_professor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.professor_id_professor_seq OWNED BY public.professor.id_professor;


--
-- TOC entry 4029 (class 2604 OID 5783089)
-- Name: professor id_professor; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.professor ALTER COLUMN id_professor SET DEFAULT nextval('public.professor_id_professor_seq'::regclass);


--
-- TOC entry 4167 (class 0 OID 5783086)
-- Dependencies: 256
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.professor (id_professor, nome) FROM stdin;
1	Caio Matheus
2	Paula Lorena
3	Ana Maria
4	José Neves
\.


--
-- TOC entry 4174 (class 0 OID 0)
-- Dependencies: 255
-- Name: professor_id_professor_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.professor_id_professor_seq', 4, true);


--
-- TOC entry 4031 (class 2606 OID 5783091)
-- Name: professor professor_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (id_professor);


-- Completed on 2024-03-24 17:16:17

--
-- PostgreSQL database dump complete
--

