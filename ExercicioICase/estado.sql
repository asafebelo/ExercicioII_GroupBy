--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-23 15:50:30

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
-- TOC entry 250 (class 1259 OID 5782822)
-- Name: estado; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.estado (
    id_estado integer NOT NULL,
    nome character varying(30),
    sigla character varying(2),
    codigopais integer
);


ALTER TABLE public.estado OWNER TO iicxlgwo;

--
-- TOC entry 249 (class 1259 OID 5782820)
-- Name: estado_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.estado_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_id_estado_seq OWNER TO iicxlgwo;

--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 249
-- Name: estado_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.estado_id_estado_seq OWNED BY public.estado.id_estado;


--
-- TOC entry 4000 (class 2604 OID 5782825)
-- Name: estado id_estado; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.estado ALTER COLUMN id_estado SET DEFAULT nextval('public.estado_id_estado_seq'::regclass);


--
-- TOC entry 4136 (class 0 OID 5782822)
-- Dependencies: 250
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.estado (id_estado, nome, sigla, codigopais) FROM stdin;
1	São Paulo	SP	1
2	California	CA	2
3	Ontário	ON	3
4	Île-de-France	IF	4
5	Baviera	BY	5
\.


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 249
-- Name: estado_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.estado_id_estado_seq', 5, true);


--
-- TOC entry 4002 (class 2606 OID 5782827)
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);


--
-- TOC entry 4003 (class 2606 OID 5782828)
-- Name: estado estado_codigopais_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_codigopais_fkey FOREIGN KEY (codigopais) REFERENCES public.pais(id_pais);


-- Completed on 2024-03-23 15:50:34

--
-- PostgreSQL database dump complete
--

