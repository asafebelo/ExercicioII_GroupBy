--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-20 08:25:31

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
-- TOC entry 241 (class 1259 OID 5759942)
-- Name: cliente; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome character varying(30)
);


ALTER TABLE public.cliente OWNER TO iicxlgwo;

--
-- TOC entry 240 (class 1259 OID 5759940)
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO iicxlgwo;

--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 240
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- TOC entry 3983 (class 2604 OID 5759945)
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- TOC entry 4119 (class 0 OID 5759942)
-- Dependencies: 241
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.cliente (id_cliente, nome) FROM stdin;
1	Asafe
2	Douglas
3	Lucas
\.


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 240
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 3, true);


--
-- TOC entry 3985 (class 2606 OID 5759947)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


-- Completed on 2024-03-20 08:25:36

--
-- PostgreSQL database dump complete
--

