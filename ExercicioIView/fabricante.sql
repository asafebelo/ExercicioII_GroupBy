--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-24 22:04:54

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
-- TOC entry 263 (class 1259 OID 5783314)
-- Name: fabricante; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.fabricante (
    id_fabricante integer NOT NULL,
    nome character varying(25),
    codigocidade integer
);


ALTER TABLE public.fabricante OWNER TO iicxlgwo;

--
-- TOC entry 262 (class 1259 OID 5783312)
-- Name: fabricante_id_fabricante_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.fabricante_id_fabricante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fabricante_id_fabricante_seq OWNER TO iicxlgwo;

--
-- TOC entry 4196 (class 0 OID 0)
-- Dependencies: 262
-- Name: fabricante_id_fabricante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.fabricante_id_fabricante_seq OWNED BY public.fabricante.id_fabricante;


--
-- TOC entry 4048 (class 2604 OID 5783317)
-- Name: fabricante id_fabricante; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.fabricante ALTER COLUMN id_fabricante SET DEFAULT nextval('public.fabricante_id_fabricante_seq'::regclass);


--
-- TOC entry 4190 (class 0 OID 5783314)
-- Dependencies: 263
-- Data for Name: fabricante; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.fabricante (id_fabricante, nome, codigocidade) FROM stdin;
1	Nestle	1
2	PepsiCo Inc	2
3	The Coca-Cola Company	3
4	Red Bull GmbH	4
\.


--
-- TOC entry 4197 (class 0 OID 0)
-- Dependencies: 262
-- Name: fabricante_id_fabricante_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.fabricante_id_fabricante_seq', 4, true);


--
-- TOC entry 4050 (class 2606 OID 5783319)
-- Name: fabricante fabricante_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.fabricante
    ADD CONSTRAINT fabricante_pkey PRIMARY KEY (id_fabricante);


--
-- TOC entry 4051 (class 2606 OID 5783320)
-- Name: fabricante fabricante_codigocidade_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.fabricante
    ADD CONSTRAINT fabricante_codigocidade_fkey FOREIGN KEY (codigocidade) REFERENCES public.cidade(id_cidade);


-- Completed on 2024-03-24 22:04:58

--
-- PostgreSQL database dump complete
--

