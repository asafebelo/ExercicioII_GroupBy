--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-19 18:19:02

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
-- TOC entry 245 (class 1259 OID 5759958)
-- Name: venda; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.venda (
    id_venda integer NOT NULL,
    codigocliente integer,
    codigoproduto integer,
    quantidade integer
);


ALTER TABLE public.venda OWNER TO iicxlgwo;

--
-- TOC entry 244 (class 1259 OID 5759956)
-- Name: venda_id_venda_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.venda_id_venda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.venda_id_venda_seq OWNER TO iicxlgwo;

--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 244
-- Name: venda_id_venda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.venda_id_venda_seq OWNED BY public.venda.id_venda;


--
-- TOC entry 3983 (class 2604 OID 5759961)
-- Name: venda id_venda; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.venda ALTER COLUMN id_venda SET DEFAULT nextval('public.venda_id_venda_seq'::regclass);


--
-- TOC entry 4121 (class 0 OID 5759958)
-- Dependencies: 245
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.venda (id_venda, codigocliente, codigoproduto, quantidade) FROM stdin;
1	1	1	2
2	1	2	3
3	2	2	1
4	2	3	5
5	3	1	2
6	3	2	1
7	3	3	4
\.


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 244
-- Name: venda_id_venda_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.venda_id_venda_seq', 7, true);


--
-- TOC entry 3985 (class 2606 OID 5759963)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id_venda);


--
-- TOC entry 3986 (class 2606 OID 5759964)
-- Name: venda venda_codigocliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_codigocliente_fkey FOREIGN KEY (codigocliente) REFERENCES public.cliente(id_cliente);


--
-- TOC entry 3987 (class 2606 OID 5759969)
-- Name: venda venda_codigoproduto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_codigoproduto_fkey FOREIGN KEY (codigoproduto) REFERENCES public.produto(id_produto);


-- Completed on 2024-03-19 18:19:11

--
-- PostgreSQL database dump complete
--

