--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-24 22:05:09

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
-- TOC entry 265 (class 1259 OID 5783327)
-- Name: bebida; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.bebida (
    id_bebida integer NOT NULL,
    descricao character varying(30),
    codigofabricante integer
);


ALTER TABLE public.bebida OWNER TO iicxlgwo;

--
-- TOC entry 264 (class 1259 OID 5783325)
-- Name: bebida_id_bebida_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.bebida_id_bebida_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bebida_id_bebida_seq OWNER TO iicxlgwo;

--
-- TOC entry 4196 (class 0 OID 0)
-- Dependencies: 264
-- Name: bebida_id_bebida_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.bebida_id_bebida_seq OWNED BY public.bebida.id_bebida;


--
-- TOC entry 4048 (class 2604 OID 5783330)
-- Name: bebida id_bebida; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.bebida ALTER COLUMN id_bebida SET DEFAULT nextval('public.bebida_id_bebida_seq'::regclass);


--
-- TOC entry 4190 (class 0 OID 5783327)
-- Dependencies: 265
-- Data for Name: bebida; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.bebida (id_bebida, descricao, codigofabricante) FROM stdin;
1	Nescafé	1
2	Pepsi	2
3	Coca-Cola Original	3
4	Red Bull Energy Drink	4
\.


--
-- TOC entry 4197 (class 0 OID 0)
-- Dependencies: 264
-- Name: bebida_id_bebida_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.bebida_id_bebida_seq', 4, true);


--
-- TOC entry 4050 (class 2606 OID 5783332)
-- Name: bebida bebida_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.bebida
    ADD CONSTRAINT bebida_pkey PRIMARY KEY (id_bebida);


--
-- TOC entry 4051 (class 2606 OID 5783333)
-- Name: bebida bebida_codigofabricante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.bebida
    ADD CONSTRAINT bebida_codigofabricante_fkey FOREIGN KEY (codigofabricante) REFERENCES public.fabricante(id_fabricante);


-- Completed on 2024-03-24 22:05:12

--
-- PostgreSQL database dump complete
--

