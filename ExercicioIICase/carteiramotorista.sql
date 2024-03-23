--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-23 12:17:26

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
-- TOC entry 244 (class 1259 OID 5782507)
-- Name: carteiramotorista; Type: TABLE; Schema: public; Owner: iicxlgwo
--

CREATE TABLE public.carteiramotorista (
    id_carteira integer NOT NULL,
    tipocarteira character varying(1)
);


ALTER TABLE public.carteiramotorista OWNER TO iicxlgwo;

--
-- TOC entry 243 (class 1259 OID 5782505)
-- Name: carteiramotorista_id_carteira_seq; Type: SEQUENCE; Schema: public; Owner: iicxlgwo
--

CREATE SEQUENCE public.carteiramotorista_id_carteira_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.carteiramotorista_id_carteira_seq OWNER TO iicxlgwo;

--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 243
-- Name: carteiramotorista_id_carteira_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iicxlgwo
--

ALTER SEQUENCE public.carteiramotorista_id_carteira_seq OWNED BY public.carteiramotorista.id_carteira;


--
-- TOC entry 3985 (class 2604 OID 5782510)
-- Name: carteiramotorista id_carteira; Type: DEFAULT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.carteiramotorista ALTER COLUMN id_carteira SET DEFAULT nextval('public.carteiramotorista_id_carteira_seq'::regclass);


--
-- TOC entry 4120 (class 0 OID 5782507)
-- Dependencies: 244
-- Data for Name: carteiramotorista; Type: TABLE DATA; Schema: public; Owner: iicxlgwo
--

COPY public.carteiramotorista (id_carteira, tipocarteira) FROM stdin;
1	A
2	B
3	C
4	D
5	E
\.


--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 243
-- Name: carteiramotorista_id_carteira_seq; Type: SEQUENCE SET; Schema: public; Owner: iicxlgwo
--

SELECT pg_catalog.setval('public.carteiramotorista_id_carteira_seq', 5, true);


--
-- TOC entry 3987 (class 2606 OID 5782512)
-- Name: carteiramotorista carteiramotorista_pkey; Type: CONSTRAINT; Schema: public; Owner: iicxlgwo
--

ALTER TABLE ONLY public.carteiramotorista
    ADD CONSTRAINT carteiramotorista_pkey PRIMARY KEY (id_carteira);


-- Completed on 2024-03-23 12:17:30

--
-- PostgreSQL database dump complete
--

