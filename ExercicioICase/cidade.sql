--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-23 15:50:45

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
-- TOC entry 252 (class 1259 OID 5782835)
-- Name: cidade; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.cidade (
    id_cidade integer NOT NULL,
    nome character varying(30),
    codigoestado integer
);


ALTER TABLE public.cidade OWNER TO iicxlgwo;

--
-- TOC entry 251 (class 1259 OID 5782833)
-- Name: cidade_id_cidade_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.cidade_id_cidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cidade_id_cidade_seq OWNER TO iicxlgwo;

--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 251
-- Name: cidade_id_cidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.cidade_id_cidade_seq OWNED BY public.cidade.id_cidade;


--
-- TOC entry 4000 (class 2604 OID 5782838)
-- Name: cidade id_cidade; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.cidade ALTER COLUMN id_cidade SET DEFAULT nextval('public.cidade_id_cidade_seq'::regclass);


--
-- TOC entry 4136 (class 0 OID 5782835)
-- Dependencies: 252
-- Data for Name: cidade; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.cidade (id_cidade, nome, codigoestado) FROM stdin;
1	São Paulo	1
2	Los Angeles	2
3	Toronto	3
4	Paris	4
5	Munique	5
\.


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 251
-- Name: cidade_id_cidade_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.cidade_id_cidade_seq', 5, true);


--
-- TOC entry 4002 (class 2606 OID 5782840)
-- Name: cidade cidade_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id_cidade);


--
-- TOC entry 4003 (class 2606 OID 5782841)
-- Name: cidade cidade_codigoestado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_codigoestado_fkey FOREIGN KEY (codigoestado) REFERENCES public.estado(id_estado);


-- Completed on 2024-03-23 15:50:50

--
-- PostgreSQL database dump complete
--

