--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-31 22:29:57

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
-- TOC entry 239 (class 1259 OID 5635611)
-- Name: produto; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying(200),
    preco numeric(5,2)
);


ALTER TABLE public.produto OWNER TO iicxlgwo;

--
-- TOC entry 4100 (class 0 OID 5635611)
-- Dependencies: 239
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.produto (id, nome, preco) FROM stdin;
1	Camiseta	29.99
2	Calça Jeans	59.99
3	Tênis	79.99
\.


--
-- TOC entry 3968 (class 2606 OID 5635615)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


-- Completed on 2024-01-31 22:30:02

--
-- PostgreSQL database dump complete
--

