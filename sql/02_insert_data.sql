--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2026-10-15 01:37:49

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4891 (class 0 OID 25399)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, registration_date, city, age, gender) FROM stdin;
1	2024-01-12	Moscow	24	male
2	2024-01-18	Saint Petersburg	29	female
3	2024-02-03	Kazan	21	male
4	2024-02-14	Moscow	32	female
5	2024-03-01	Novosibirsk	27	male
6	2024-03-19	Yekaterinburg	26	female
7	2024-04-07	Moscow	35	male
8	2024-04-24	Samara	23	female
9	2024-05-11	Saint Petersburg	31	male
10	2024-05-30	Kazan	28	female
11	2024-06-15	Moscow	22	male
12	2024-06-21	Ufa	25	female
13	2024-07-08	Perm	30	male
14	2024-07-20	Moscow	27	female
15	2024-08-02	Omsk	34	male
16	2024-08-16	Saint Petersburg	20	female
17	2024-09-04	Kazan	24	male
18	2024-09-27	Moscow	33	female
19	2024-10-10	Rostov-on-Don	28	male
20	2024-10-23	Yekaterinburg	26	female
21	2024-11-11	Moscow	29	male
22	2024-11-25	Saint Petersburg	22	female
23	2024-12-07	Kazan	31	male
24	2024-12-19	Moscow	25	female
25	2025-01-05	Novosibirsk	27	male
26	2025-01-14	Moscow	23	female
27	2025-02-02	Samara	36	male
28	2025-02-19	Saint Petersburg	28	female
29	2025-03-10	Moscow	21	male
30	2025-03-10	Kazan	30	female
\.


--
-- TOC entry 4895 (class 0 OID 25416)
-- Dependencies: 222
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, user_id, order_date, status) FROM stdin;
1	1	2024-02-05 12:10:00	completed
2	2	2024-02-12 15:40:00	completed
3	3	2024-03-01 10:20:00	completed
4	1	2024-03-18 17:30:00	completed
5	4	2024-03-25 13:00:00	completed
6	5	2024-04-04 16:15:00	completed
7	6	2024-04-14 11:45:00	cancelled
8	2	2024-04-26 14:30:00	completed
9	7	2024-05-07 18:10:00	completed
10	8	2024-05-20 09:40:00	completed
11	3	2024-05-29 19:00:00	completed
12	9	2024-06-03 12:30:00	completed
13	10	2024-06-19 15:25:00	completed
14	1	2024-06-28 13:15:00	completed
15	11	2024-07-06 17:45:00	completed
16	12	2024-07-19 10:10:00	completed
17	13	2024-08-02 16:30:00	completed
18	14	2024-08-18 12:20:00	completed
19	9	2024-08-30 18:50:00	completed
20	15	2024-09-05 11:00:00	completed
21	16	2024-09-21 14:20:00	completed
22	17	2024-10-03 13:35:00	completed
23	18	2024-10-17 16:10:00	completed
24	2	2024-10-29 18:25:00	completed
25	19	2024-11-06 12:50:00	completed
26	20	2024-11-18 15:15:00	completed
27	1	2024-11-29 20:10:00	completed
28	21	2024-12-02 14:00:00	completed
29	22	2024-12-12 10:45:00	completed
30	23	2024-12-21 17:20:00	refunded
31	24	2024-12-27 19:00:00	completed
32	3	2025-01-08 11:30:00	completed
33	25	2025-01-15 13:45:00	completed
34	26	2025-01-24 16:20:00	completed
35	4	2025-02-05 12:15:00	completed
36	27	2025-02-16 15:50:00	completed
37	28	2025-02-27 18:40:00	cancelled
38	29	2025-03-11 10:30:00	completed
39	30	2025-03-23 14:10:00	completed
40	1	2025-04-02 17:15:00	completed
41	2	2025-04-14 11:20:00	completed
42	9	2025-04-28 16:45:00	completed
43	3	2025-05-08 12:50:00	completed
44	14	2025-05-21 18:20:00	completed
45	21	2025-06-04 13:00:00	completed
\.


--
-- TOC entry 4893 (class 0 OID 25408)
-- Dependencies: 220
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, product_name, category, price, brand, purchase_price) FROM stdin;
1	Nike Air Force 1	Sneakers	12990.00	Nike	7700.00
2	Nike Air Max 270	Sneakers	15990.00	Nike	9300.00
3	Nike Dunk Low	Sneakers	14990.00	Nike	8400.00
4	Nike Air Jordan 1 Low	Sneakers	16990.00	Nike	9500.00
5	Adidas Samba OG	Sneakers	13990.00	Adidas	8000.00
6	Adidas Campus 00s	Sneakers	12990.00	Adidas	7200.00
7	Adidas Gazelle	Sneakers	11990.00	Adidas	6700.00
8	Adidas Ultraboost Light	Sneakers	17990.00	Adidas	10300.00
9	New Balance 530	Sneakers	13990.00	New Balance	8100.00
10	New Balance 574	Sneakers	12990.00	New Balance	7200.00
11	New Balance 2002R	Sneakers	18990.00	New Balance	10800.00
12	Puma Suede Classic	Sneakers	9990.00	Puma	5400.00
13	Puma RS-X	Sneakers	12990.00	Puma	7100.00
14	Reebok Club C 85	Sneakers	10990.00	Reebok	5900.00
15	Reebok Classic Leather	Sneakers	10990.00	Reebok	6100.00
16	Asics Gel-Kayano 14	Sneakers	17990.00	Asics	10100.00
17	Asics Gel-NYC	Sneakers	15990.00	Asics	8900.00
18	Vans Old Skool	Sneakers	8990.00	Vans	4800.00
19	Converse Chuck 70	Sneakers	9990.00	Converse	5500.00
20	Salomon XT-6	Sneakers	19990.00	Salomon	11300.00
\.


--
-- TOC entry 4897 (class 0 OID 25430)
-- Dependencies: 224
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (order_item_id, order_id, product_id, quantity, price, unit_cost) FROM stdin;
7	7	12	1	9990.00	\N
37	37	14	1	10990.00	\N
1	1	1	1	12990.00	7500.00
2	2	5	1	13990.00	7800.00
3	3	9	1	13990.00	7900.00
4	4	3	1	14990.00	8200.00
5	5	18	1	8990.00	4700.00
6	6	2	1	15990.00	9000.00
8	8	6	1	12990.00	7000.00
9	9	4	1	16990.00	9500.00
10	10	14	1	10990.00	5900.00
11	11	10	1	12990.00	7200.00
12	12	8	1	17990.00	10300.00
13	13	15	1	10990.00	6100.00
14	14	11	1	18990.00	10800.00
15	15	7	1	11990.00	6500.00
16	16	19	1	9990.00	5300.00
17	17	13	1	12990.00	7100.00
18	18	16	1	17990.00	10100.00
19	19	5	1	13990.00	7800.00
20	20	20	1	19990.00	11300.00
21	21	1	1	12990.00	7500.00
22	22	17	1	15990.00	8900.00
23	23	9	1	13990.00	7900.00
24	24	2	1	15990.00	9000.00
25	25	18	1	8990.00	4700.00
26	26	6	1	12990.00	7000.00
27	27	4	1	16990.00	9500.00
28	28	12	1	9990.00	5400.00
29	29	3	1	14990.00	8200.00
30	30	10	1	12990.00	7200.00
31	31	7	1	11990.00	6700.00
32	32	11	1	18990.00	10800.00
33	33	19	1	9990.00	5300.00
34	34	5	1	13990.00	8000.00
35	35	16	1	17990.00	10100.00
36	36	1	1	12990.00	7700.00
38	38	20	1	19990.00	11300.00
39	39	9	1	13990.00	8100.00
40	40	2	1	15990.00	9300.00
41	41	6	1	12990.00	7200.00
42	42	3	1	14990.00	8400.00
43	43	10	1	12990.00	7200.00
44	44	15	1	10990.00	6100.00
45	45	17	1	15990.00	8900.00
46	4	19	1	9990.00	5300.00
47	10	18	1	8990.00	4700.00
48	14	5	1	13990.00	7800.00
49	19	12	1	9990.00	5400.00
50	27	7	1	11990.00	6500.00
51	32	18	1	8990.00	4800.00
52	40	14	1	10990.00	5900.00
53	45	19	1	9990.00	5500.00
\.


--
-- TOC entry 4899 (class 0 OID 25449)
-- Dependencies: 226
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (payment_id, order_id, payment_date, amount, payment_method, status) FROM stdin;
1	1	2024-02-05 12:15:00	12990.00	card	paid
2	2	2024-02-12 15:45:00	13990.00	sbp	paid
3	3	2024-03-01 10:25:00	13990.00	card	paid
4	4	2024-03-18 17:35:00	24980.00	card	paid
5	5	2024-03-25 13:05:00	8990.00	sbp	paid
6	6	2024-04-04 16:20:00	15990.00	card	paid
7	7	2024-04-14 11:50:00	9990.00	card	failed
8	8	2024-04-26 14:35:00	12990.00	sbp	paid
9	9	2024-05-07 18:15:00	16990.00	card	paid
10	10	2024-05-20 09:45:00	19980.00	sbp	paid
11	11	2024-05-29 19:05:00	12990.00	card	paid
12	12	2024-06-03 12:35:00	17990.00	card	paid
13	13	2024-06-19 15:30:00	10990.00	sbp	paid
14	14	2024-06-28 13:20:00	32980.00	card	paid
15	15	2024-07-06 17:50:00	11990.00	card	paid
16	16	2024-07-19 10:15:00	9990.00	sbp	paid
17	17	2024-08-02 16:35:00	12990.00	card	paid
18	18	2024-08-18 12:25:00	17990.00	card	paid
19	19	2024-08-30 18:55:00	23980.00	sbp	paid
20	20	2024-09-05 11:05:00	19990.00	card	paid
21	21	2024-09-21 14:25:00	12990.00	card	paid
22	22	2024-10-03 13:40:00	15990.00	sbp	paid
23	23	2024-10-17 16:15:00	13990.00	card	paid
24	24	2024-10-29 18:30:00	15990.00	card	paid
25	25	2024-11-06 12:55:00	8990.00	sbp	paid
26	26	2024-11-18 15:20:00	12990.00	card	paid
27	27	2024-11-29 20:15:00	28980.00	card	paid
28	28	2024-12-02 14:05:00	9990.00	sbp	paid
29	29	2024-12-12 10:50:00	14990.00	card	paid
30	30	2024-12-21 17:25:00	12990.00	card	refunded
31	31	2024-12-27 19:05:00	11990.00	card	paid
32	32	2025-01-08 11:35:00	27980.00	sbp	paid
33	33	2025-01-15 13:50:00	9990.00	card	paid
34	34	2025-01-24 16:25:00	13990.00	card	paid
35	35	2025-02-05 12:20:00	17990.00	sbp	paid
36	36	2025-02-16 15:55:00	12990.00	card	paid
37	37	2025-02-27 18:45:00	10990.00	card	failed
38	38	2025-03-11 10:35:00	19990.00	sbp	paid
39	39	2025-03-23 14:15:00	13990.00	card	paid
40	40	2025-04-02 17:20:00	26980.00	card	paid
41	41	2025-04-14 11:25:00	12990.00	sbp	paid
42	42	2025-04-28 16:50:00	14990.00	card	paid
43	43	2025-05-08 12:55:00	12990.00	card	paid
44	44	2025-05-21 18:25:00	10990.00	sbp	paid
45	45	2025-06-04 13:05:00	25980.00	card	paid
\.


--
-- TOC entry 4901 (class 0 OID 25465)
-- Dependencies: 228
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchases (purchase_id, product_id, purchase_date, quantity, unit_purchase_price) FROM stdin;
1	1	2024-01-16	2	7500.00
2	5	2024-01-23	3	7800.00
3	9	2024-02-10	2	7900.00
4	3	2024-02-27	2	8200.00
5	19	2024-02-27	3	5300.00
6	18	2024-03-05	3	4700.00
7	2	2024-03-15	2	9000.00
8	12	2024-03-25	3	5400.00
9	6	2024-04-06	2	7000.00
10	4	2024-04-17	3	9500.00
11	14	2024-04-30	3	5900.00
12	10	2024-05-09	3	7200.00
13	8	2024-05-14	2	10300.00
14	15	2024-05-30	3	6100.00
15	11	2024-06-08	3	10800.00
16	7	2024-06-16	2	6500.00
17	13	2024-07-13	2	7100.00
18	16	2024-07-29	3	10100.00
19	20	2024-08-16	3	11300.00
20	17	2024-09-13	3	8900.00
21	7	2024-12-07	2	6700.00
22	18	2024-12-19	2	4800.00
23	5	2025-01-04	2	8000.00
24	1	2025-01-27	2	7700.00
25	9	2025-03-03	2	8100.00
26	2	2025-03-13	2	9300.00
27	6	2025-03-25	2	7200.00
28	3	2025-04-08	2	8400.00
29	19	2025-05-15	2	5500.00
\.


--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 223
-- Name: order_items_order_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 53, true);


--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 45, true);


--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 225
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_payment_id_seq', 45, true);


--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 20, true);


--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 227
-- Name: purchases_purchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchases_purchase_id_seq', 29, true);


--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


-- Completed on 2026-10-15 01:37:49

--
-- PostgreSQL database dump complete
--

