--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-31 22:28:35

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
-- TOC entry 240 (class 1259 OID 5635616)
-- Name: venda; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.venda (
    id integer NOT NULL,
    data date,
    total numeric(5,2),
    clienteid integer
);


ALTER TABLE public.venda OWNER TO iicxlgwo;

--
-- TOC entry 4101 (class 0 OID 5635616)
-- Dependencies: 240
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.venda (id, data, total, clienteid) FROM stdin;
1	2024-01-31	109.97	1
2	2024-02-01	139.98	2
3	2024-02-02	89.99	3
4	2024-02-01	50.01	1
\.


--
-- TOC entry 3968 (class 2606 OID 5635620)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


--
-- TOC entry 3969 (class 2606 OID 5635621)
-- Name: venda venda_clienteid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_clienteid_fkey FOREIGN KEY (clienteid) REFERENCES public.cliente(id);


-- Completed on 2024-01-31 22:28:39

--
-- PostgreSQL database dump complete
--

