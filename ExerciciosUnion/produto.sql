--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-20 08:25:19

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
-- TOC entry 243 (class 1259 OID 5759950)
-- Name: produto; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    nome character varying(30),
    preco double precision
);


ALTER TABLE public.produto OWNER TO iicxlgwo;

--
-- TOC entry 242 (class 1259 OID 5759948)
-- Name: produto_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produto_id_produto_seq OWNER TO iicxlgwo;

--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 242
-- Name: produto_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;


--
-- TOC entry 3983 (class 2604 OID 5759953)
-- Name: produto id_produto; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);


--
-- TOC entry 4119 (class 0 OID 5759950)
-- Dependencies: 243
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.produto (id_produto, nome, preco) FROM stdin;
1	Lápis	3.5
2	Borracha	2.25
3	Caneta	4.99
\.


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 242
-- Name: produto_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.produto_id_produto_seq', 3, true);


--
-- TOC entry 3985 (class 2606 OID 5759955)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);


-- Completed on 2024-03-20 08:25:24

--
-- PostgreSQL database dump complete
--

