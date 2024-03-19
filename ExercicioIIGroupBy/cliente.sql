--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-31 22:29:18

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
-- TOC entry 238 (class 1259 OID 5635606)
-- Name: cliente; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(200),
    endereco character varying(255)
);


ALTER TABLE public.cliente OWNER TO iicxlgwo;

--
-- TOC entry 4100 (class 0 OID 5635606)
-- Dependencies: 238
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.cliente (id, nome, endereco) FROM stdin;
1	João Silva	Rua A, 123
2	Maria Oliveira	Avenida B, 456
3	Carlos Santos	Travessa C, 789
\.


--
-- TOC entry 3968 (class 2606 OID 5635610)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


-- Completed on 2024-01-31 22:29:22

--
-- PostgreSQL database dump complete
--

