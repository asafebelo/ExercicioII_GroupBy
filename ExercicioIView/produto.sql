--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-24 22:05:19

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
-- TOC entry 267 (class 1259 OID 5783340)
-- Name: produto; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    descricao character varying(30),
    codigofabricante integer
);


ALTER TABLE public.produto OWNER TO iicxlgwo;

--
-- TOC entry 266 (class 1259 OID 5783338)
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
-- TOC entry 4196 (class 0 OID 0)
-- Dependencies: 266
-- Name: produto_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;


--
-- TOC entry 4048 (class 2604 OID 5783343)
-- Name: produto id_produto; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);


--
-- TOC entry 4190 (class 0 OID 5783340)
-- Dependencies: 267
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.produto (id_produto, descricao, codigofabricante) FROM stdin;
1	Nesquik	1
2	Mountain Dew	2
3	Sprite	3
4	Red Bull Sugarfree	4
\.


--
-- TOC entry 4197 (class 0 OID 0)
-- Dependencies: 266
-- Name: produto_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.produto_id_produto_seq', 4, true);


--
-- TOC entry 4050 (class 2606 OID 5783345)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);


--
-- TOC entry 4051 (class 2606 OID 5783346)
-- Name: produto produto_codigofabricante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_codigofabricante_fkey FOREIGN KEY (codigofabricante) REFERENCES public.fabricante(id_fabricante);


-- Completed on 2024-03-24 22:05:23

--
-- PostgreSQL database dump complete
--

