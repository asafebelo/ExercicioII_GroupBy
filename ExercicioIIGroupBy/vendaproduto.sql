--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-31 22:24:07

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
-- TOC entry 241 (class 1259 OID 5635626)
-- Name: vendaproduto; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.vendaproduto (
    id integer NOT NULL,
    vendaid integer,
    produtoid integer,
    quantidade integer
);


ALTER TABLE public.vendaproduto OWNER TO iicxlgwo;

--
-- TOC entry 4102 (class 0 OID 5635626)
-- Dependencies: 241
-- Data for Name: vendaproduto; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.vendaproduto (id, vendaid, produtoid, quantidade) FROM stdin;
1	1	1	2
2	1	3	1
3	2	2	1
4	2	3	2
5	3	1	1
\.


--
-- TOC entry 3968 (class 2606 OID 5635630)
-- Name: vendaproduto vendaproduto_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.vendaproduto
    ADD CONSTRAINT vendaproduto_pkey PRIMARY KEY (id);


--
-- TOC entry 3969 (class 2606 OID 5635636)
-- Name: vendaproduto vendaproduto_produtoid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.vendaproduto
    ADD CONSTRAINT vendaproduto_produtoid_fkey FOREIGN KEY (produtoid) REFERENCES public.produto(id);


--
-- TOC entry 3970 (class 2606 OID 5635631)
-- Name: vendaproduto vendaproduto_vendaid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.vendaproduto
    ADD CONSTRAINT vendaproduto_vendaid_fkey FOREIGN KEY (vendaid) REFERENCES public.venda(id);


-- Completed on 2024-01-31 22:24:11

--
-- PostgreSQL database dump complete
--

