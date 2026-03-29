SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'ac4054c3-a6d9-4ca2-9bf4-d85a6c863dc2', '{"action":"user_signedup","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"team","traits":{"provider":"google"}}', '2025-06-01 21:02:35.517929+00', ''),
	('00000000-0000-0000-0000-000000000000', '1db2477c-6735-4866-a1e3-e5bd65d60f5c', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2025-06-01 21:16:27.011288+00', ''),
	('00000000-0000-0000-0000-000000000000', '48ccd4d2-ae71-40e5-b309-1c9276d851cc', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2025-06-01 21:50:27.30171+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7822d6e-eb84-4eb3-8844-071da1423058', '{"action":"logout","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account"}', '2025-06-01 21:53:43.591093+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c37fc2f-b7f3-4b51-9048-4acc6bbc9e59', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2025-06-01 21:53:55.174566+00', ''),
	('00000000-0000-0000-0000-000000000000', '471b041a-fa78-41ff-95e2-bedff0bace48', '{"action":"logout","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account"}', '2025-06-01 21:54:02.708656+00', ''),
	('00000000-0000-0000-0000-000000000000', '49c75979-794b-4b47-ba83-7b147590fd76', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2025-06-01 21:57:14.579797+00', ''),
	('00000000-0000-0000-0000-000000000000', '67895b9f-fb0b-4e05-92e0-759d37e0d836', '{"action":"logout","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account"}', '2025-06-01 21:57:27.637128+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2010763-c0c2-4b10-8490-84f2b133389e', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2025-06-01 21:57:35.229404+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b546470d-99e5-421e-8ad7-60aa2b3391d9', '{"action":"logout","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account"}', '2025-06-01 21:57:40.696518+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b6a806f9-6717-47cf-bc3b-f4a3f82f9332', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2025-06-02 11:44:28.793538+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7844bb3-d6f8-4b1a-8408-884d3dcb468f', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2025-06-02 11:54:40.118032+00', ''),
	('00000000-0000-0000-0000-000000000000', '2bfe8967-e89a-4849-b44b-b63a8af639d9', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 12:53:05.338418+00', ''),
	('00000000-0000-0000-0000-000000000000', '16474830-5138-4187-a012-d6b07dbd5c3f', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 12:53:05.339265+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bfa96e2d-2315-4737-93d7-add4d5ebe4be', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 13:51:14.329831+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd540b088-ed32-4ec9-be83-7fe386992185', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 13:51:14.330674+00', ''),
	('00000000-0000-0000-0000-000000000000', '9907a105-4492-474d-bceb-aed769ad5540', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 15:45:48.090971+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5170c0e-7200-4dfb-b61a-492162e8d613', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 15:45:48.092655+00', ''),
	('00000000-0000-0000-0000-000000000000', 'db8a2a9a-06b3-4772-a023-805966313640', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 17:18:40.797892+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce786ddf-32b4-45db-a484-4a2157c6008a', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 17:18:40.798855+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fba6d27-e20d-4c28-ab55-1f5c92c3d36e', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 18:16:45.508366+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffb158d0-1620-4503-894e-ba0f40156373', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 18:16:45.509295+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b80846f1-a538-475a-a6bc-02387f23a094', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 19:14:54.694944+00', ''),
	('00000000-0000-0000-0000-000000000000', '1bffdbab-934f-419e-a96f-ec10c63f4786', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 19:14:54.69583+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4d4e8b9-c214-43a3-b277-fdc953a9326b', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 20:27:57.765889+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc13b0e9-b358-416f-8806-c694c4b79f81', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 20:27:57.766701+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3bc327b-a698-43b8-a5e0-7ab0178c66be', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 21:54:26.137521+00', ''),
	('00000000-0000-0000-0000-000000000000', '0626bf71-4a81-41f3-85c4-6cf235fb84e1', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 21:54:26.138356+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebfc8e74-0958-4a77-844f-94cd67b9a3ff', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 22:55:03.062662+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6e37f73-c171-4fa7-a631-cee84a3a7bdd', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-02 22:55:03.063571+00', ''),
	('00000000-0000-0000-0000-000000000000', '5144c6d4-9640-4b61-b935-aa48c247afa4', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 00:39:54.493113+00', ''),
	('00000000-0000-0000-0000-000000000000', '771042a3-fc7b-408f-9def-aac10a8ef3cb', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 00:39:54.494018+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef8d0832-b5ca-488b-a62b-d7be15429dff', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 01:41:11.326544+00', ''),
	('00000000-0000-0000-0000-000000000000', '13c8250f-5ab0-47c6-a75c-51d891d4cae3', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 01:41:11.3275+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7f065bd-4094-4f50-9ed2-429e42414c31', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 02:42:01.178118+00', ''),
	('00000000-0000-0000-0000-000000000000', '9748d48a-6575-4e90-bd13-679419fac512', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 02:42:01.179175+00', ''),
	('00000000-0000-0000-0000-000000000000', '116e5cf3-8cfb-49dd-9db4-09e5ae0a1270', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 03:40:25.57268+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5f4518b-326a-4b40-b8fd-4a14122a5156', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 03:40:25.573588+00', ''),
	('00000000-0000-0000-0000-000000000000', '95c743a5-8f79-4f4f-8e80-bc60310b134f', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 04:47:58.334216+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c123e4c-b1c9-4245-8138-b318a27afaf6', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 04:47:58.335116+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cfa0da3c-94c1-484c-bff8-d5b7741bbcaf', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 05:46:03.663329+00', ''),
	('00000000-0000-0000-0000-000000000000', '84a50d5e-6bfa-4a18-892d-9f78f51a5c6a', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 05:46:03.664281+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd25af03c-a253-49c1-93a5-7b141f6413df', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 06:55:39.576211+00', ''),
	('00000000-0000-0000-0000-000000000000', '87bb0b5e-1ff1-4f8f-a35b-5959cba84f68', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 06:55:39.577165+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b7c8a2cd-b0a8-43e7-b969-ff51e17b9a20', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 07:53:44.53998+00', ''),
	('00000000-0000-0000-0000-000000000000', '37952d88-7582-48b7-a77d-4d90b7967a81', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 07:53:44.540831+00', ''),
	('00000000-0000-0000-0000-000000000000', '872e2e7d-1f4d-4904-8ae9-cf09ebe55708', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 08:51:55.751679+00', ''),
	('00000000-0000-0000-0000-000000000000', '089744ac-7d8c-4190-9631-9ae9ff489ea5', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 08:51:55.752656+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b223a13-22d5-4cca-a6b9-1dccfdf8948a', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 09:50:05.611604+00', ''),
	('00000000-0000-0000-0000-000000000000', '31b7562d-086c-4d73-9879-cc314c41dca3', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 09:50:05.612482+00', ''),
	('00000000-0000-0000-0000-000000000000', '41ac04a3-a669-40e8-8d89-f1fa8c4ee119', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 11:00:07.149565+00', ''),
	('00000000-0000-0000-0000-000000000000', '69d6184f-7c92-4c21-9740-0648875544b0', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 11:00:07.150564+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ced67b7-bb62-4edb-989b-2855a9ab62c1', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 11:58:26.500967+00', ''),
	('00000000-0000-0000-0000-000000000000', '3bf67ca3-a38d-4d34-9f19-cd7a47363a6d', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 11:58:26.5019+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3abe4da-89d3-47aa-8901-fefbc87aa289', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 12:57:08.678336+00', ''),
	('00000000-0000-0000-0000-000000000000', '50dca9f2-bf50-43aa-a102-34a92b422509', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 12:57:08.679155+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0545ed1-3461-40e3-83b0-904e40aafa28', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 13:55:16.553257+00', ''),
	('00000000-0000-0000-0000-000000000000', '62f2eb79-f104-4a42-8f88-4d9352f526a5', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 13:55:16.554082+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa1d9d3a-dc04-42e1-9598-579924a9d5b8', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 14:53:32.29771+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acb44684-e580-4108-b26b-bb58db7a5218', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 14:53:32.298526+00', ''),
	('00000000-0000-0000-0000-000000000000', '05417454-b28e-4f84-8f6b-2d859aed6512', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 15:51:59.733998+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0c1b84b-9258-490b-b1a2-332eaf0b125b', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 15:51:59.734887+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6b5633f-9ca1-474b-a281-4d6a1cb849a9', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 16:50:26.328849+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a42867a6-dc3d-448d-8b18-88c9980db5d1', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 16:50:26.329741+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ab85f1c-e476-44f0-81dd-6ec81886a11b', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 17:48:35.043797+00', ''),
	('00000000-0000-0000-0000-000000000000', '81effe2b-fc51-435f-844d-3bbdfdfc3d06', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 17:48:35.044882+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8650db3-8d5b-4b35-9dce-48f317ef0c8b', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 18:52:35.779539+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e65cf2f-7a6f-4f1b-9600-2d934e810479', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 18:52:35.780395+00', ''),
	('00000000-0000-0000-0000-000000000000', '20a655d3-8da4-45d1-9a46-40420f3bf410', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 20:01:04.805391+00', ''),
	('00000000-0000-0000-0000-000000000000', '039f97df-1539-4d01-921f-2f2ba6114bcd', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 20:01:04.806278+00', ''),
	('00000000-0000-0000-0000-000000000000', '23b78556-ddc0-4ee0-91d7-028e00be803b', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 20:59:12.617109+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c5546b8-36ee-4c40-bae4-79315c360c5d', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 20:59:12.618011+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f210ab71-4975-40d8-b072-cdaeff84a553', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 21:57:21.633768+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e6f8081-0f4a-4059-8c58-5bca4eff26b4', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 21:57:21.634674+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1f34541-5b46-4694-ab51-8b8d0ed5bf3f', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 23:02:44.275526+00', ''),
	('00000000-0000-0000-0000-000000000000', '801eaabe-9a2f-40ec-8b2f-66df4bf7be43', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-03 23:02:44.276425+00', ''),
	('00000000-0000-0000-0000-000000000000', '191f3ff9-15b8-4dd8-a0c5-87cbbe0f9c0e', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 00:01:55.947985+00', ''),
	('00000000-0000-0000-0000-000000000000', '08a94afa-ab0b-481d-a4d2-70b9109a54c4', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 00:01:55.948822+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de518087-2af9-48ca-aeaa-ae85eee88db4', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 01:00:19.141583+00', ''),
	('00000000-0000-0000-0000-000000000000', '76153d50-d362-4b84-ab75-c3d11ff2a74e', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 01:00:19.142502+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d2f5ae9-4784-47ce-b02f-31b77c1cb4a6', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 02:05:27.69437+00', ''),
	('00000000-0000-0000-0000-000000000000', '285d0339-c7a8-4c20-86dc-d127523c22ef', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 02:05:27.695231+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce05b861-0ac2-4174-8cd2-f332f35283a2', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 03:06:27.450861+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b924f758-fd95-4a7c-975f-d0553bad7dde', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 03:06:27.451778+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cadc5f0d-c6ea-4d24-958f-5e370914ffab', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 04:16:20.458491+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b97f43df-9377-4097-b10e-b580de2dfd03', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 04:16:20.459347+00', ''),
	('00000000-0000-0000-0000-000000000000', '07163363-f07e-4a35-b2c0-c448481ab0f0', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 05:15:04.090706+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a33eb33e-c48a-4f19-a9df-365dd0d36648', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 05:15:04.091591+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ceeb2896-c63e-478f-adca-3649e013ed32', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 06:14:25.795737+00', ''),
	('00000000-0000-0000-0000-000000000000', '89defc00-4772-4b4b-bcae-baa5c6f6c024', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 06:14:25.796592+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1f0df84-a306-422b-9cd7-aede937ae7c4', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 07:24:12.742357+00', ''),
	('00000000-0000-0000-0000-000000000000', '433bcf78-f3cd-4555-a9c3-fc756e9e288d', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 07:24:12.743157+00', ''),
	('00000000-0000-0000-0000-000000000000', '53b083b5-6456-4037-a912-f00407683a21', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 08:22:41.597404+00', ''),
	('00000000-0000-0000-0000-000000000000', '340e5845-ae29-44d4-9863-97fac43ac833', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 08:22:41.598304+00', ''),
	('00000000-0000-0000-0000-000000000000', '853aff10-1b01-43d4-bab9-c07910b72c8c', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 09:21:27.226957+00', ''),
	('00000000-0000-0000-0000-000000000000', '037fa56c-30e4-488b-83f1-12854575c85a', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 09:21:27.227813+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f08a022d-3fc3-450a-b11e-fb8530a61584', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 10:19:42.445856+00', ''),
	('00000000-0000-0000-0000-000000000000', '471107a0-a795-42e0-9a16-225239f17f88', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 10:19:42.446794+00', ''),
	('00000000-0000-0000-0000-000000000000', '70394b69-d44b-49c3-b527-f348d8b2eda0', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 11:22:31.069395+00', ''),
	('00000000-0000-0000-0000-000000000000', '8377f752-8cdd-48c5-a02c-e79fc6e9ca8f', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 11:22:31.070348+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ecbbc1f-8bb4-4f6f-b5bf-2d62296b284a', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 12:25:55.622994+00', ''),
	('00000000-0000-0000-0000-000000000000', '38c77e3b-9481-4ccd-95b9-384a4d35f3d4', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 12:25:55.624428+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a12af6b-4bfa-47ba-b359-0661abec981a', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 13:24:09.300855+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3520947-d29d-4383-8085-b0624d30df7d', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 13:24:09.301806+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eaedec30-68f3-48fa-8dfd-8f4445ba7df2', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 14:22:14.317427+00', ''),
	('00000000-0000-0000-0000-000000000000', '753bb1ac-2545-4a99-ba69-effe536b7bef', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 14:22:14.318354+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da65df06-21bc-4d6d-98e4-b17b7677c16a', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 15:20:27.879427+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b205ea20-b37b-4dc3-a0de-645b81d4a6e0', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 15:20:27.88088+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc23a794-5248-4a34-af62-d6556f1430b5', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 16:18:36.945891+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c6e1775-2495-46b7-bc51-4e276dc20e83', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 16:18:36.946866+00', ''),
	('00000000-0000-0000-0000-000000000000', '77aad5dc-24c3-4e55-94c1-91e523987741', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 17:24:27.319271+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3e317fe-4686-4235-ac04-b5da0b5d8c25', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 17:24:27.320217+00', ''),
	('00000000-0000-0000-0000-000000000000', '9af698ec-6502-44cb-82da-4c071c579ca1', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 18:32:14.00907+00', ''),
	('00000000-0000-0000-0000-000000000000', 'baa4fbe6-60b2-4097-bd2c-5b6c3aee8828', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 18:32:14.010273+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1e8a3b8-4c9e-43a5-9fdf-81ac8d56b05d', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 19:43:33.120096+00', ''),
	('00000000-0000-0000-0000-000000000000', '14dfc27a-9b4e-4081-ba81-ba9fc6dc0df8', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 19:43:33.121033+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ba25d55-687e-4fbf-8b4d-174da8fb29be', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 20:46:56.300856+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c721fd45-6a2c-45f0-a1fb-585fe7b87673', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 20:46:56.302445+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a57b0e2f-ebe7-4fae-9911-c4cd996341b3', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 22:00:01.891888+00', ''),
	('00000000-0000-0000-0000-000000000000', '6dab4f77-1c82-45e5-9b1e-910882d9c3f9', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 22:00:01.895066+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa9b340f-6023-4485-8200-fa538dbf6437', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 23:01:00.565695+00', ''),
	('00000000-0000-0000-0000-000000000000', 'afefdb89-9e86-4618-a2f9-77b2e0aecfd1', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-04 23:01:00.566993+00', ''),
	('00000000-0000-0000-0000-000000000000', '526565fb-74fb-40d4-9b71-9f07177a6333', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 00:03:13.942252+00', ''),
	('00000000-0000-0000-0000-000000000000', '0735de1f-135a-4e28-a6d3-ba365593dfb6', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 00:03:13.943112+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5530731-08e5-4357-b56f-22cdff378787', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 01:01:44.339105+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbf0e440-a9cd-4152-bae9-42c2663ed4c8', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 01:01:44.33998+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1678bec-15f5-4a3b-957d-44ece9292c03', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 02:03:35.364198+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a61697f-0e7d-42cc-913c-ee8181051107', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 02:03:35.365228+00', ''),
	('00000000-0000-0000-0000-000000000000', '56b359f6-d43c-4127-bdfb-1260912addbf', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 03:09:22.088124+00', ''),
	('00000000-0000-0000-0000-000000000000', '33bf5700-5381-40e0-bff5-020a398771c4', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 03:09:22.088966+00', ''),
	('00000000-0000-0000-0000-000000000000', '72dc562b-e6d3-488e-9835-64ccaab8b7db', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 04:07:53.047906+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf001147-5624-4e91-812b-580a27a49ae3', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 04:07:53.048784+00', ''),
	('00000000-0000-0000-0000-000000000000', '85ccb3ce-acf3-4d6b-b6a6-8790a7bf03e7', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 05:06:09.610195+00', ''),
	('00000000-0000-0000-0000-000000000000', '9032c6f0-240d-4a0f-b6d5-bec583bbd596', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 05:06:09.611064+00', ''),
	('00000000-0000-0000-0000-000000000000', '78205f59-262c-43bf-9124-c08049abc42d', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 06:16:23.689684+00', ''),
	('00000000-0000-0000-0000-000000000000', '234d55e5-ab54-43ce-96fa-a242e47324dc', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 06:16:23.690556+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d591e24-7b78-459b-a04d-89866af944ec', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 07:14:31.939279+00', ''),
	('00000000-0000-0000-0000-000000000000', '2bd9e84d-dd92-473a-8a06-1835cb8373cd', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 07:14:31.940229+00', ''),
	('00000000-0000-0000-0000-000000000000', '56407dd3-a8bd-4117-b7be-1ce6a94a2d44', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 08:20:02.422533+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee2cff36-ae49-4e02-bb76-0c9395eeb2b9', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 08:20:02.423466+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eff8a881-c963-4f52-82f2-3fea2ce8847a', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 09:21:29.391405+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acd41218-4d93-4222-a556-f93a7885c09d', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 09:21:29.392267+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ab9cb8d-3cf5-402f-a9c4-e1939367ff2b', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 10:19:34.808796+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4899769-d761-4b2b-a817-edcd234961a3', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 10:19:34.812882+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd16b2c78-4348-4c5e-bf30-445411082d5d', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 11:17:51.145778+00', ''),
	('00000000-0000-0000-0000-000000000000', '0918bdc8-0b72-4544-91a8-3afbcfd30ecc', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 11:17:51.146752+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d0bf4c8-21bb-4850-afee-b079acc988e7', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 12:15:54.308047+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f29d04b0-6e83-4d54-ac4f-a8ec75060b94', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-05 12:15:54.308989+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4f1d1a2-9019-468c-901c-d80c1ac055f0', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-06 19:39:48.399548+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e28f765-2c8b-4d59-8879-74a8a7e8f047', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-06 19:39:48.402879+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e16866f8-4d1d-4969-941d-1f0044f048da', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-06 20:54:54.056412+00', ''),
	('00000000-0000-0000-0000-000000000000', '73c69daa-59fa-4dcf-bea9-0b2e8358dc62', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-06 20:54:54.058216+00', ''),
	('00000000-0000-0000-0000-000000000000', '517877a6-10ad-40f1-b77e-6a4291a019cc', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-06 22:11:24.026097+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf070f89-f9ad-4c04-ba9f-425afcd8efeb', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-06 22:11:24.027183+00', ''),
	('00000000-0000-0000-0000-000000000000', '72bbd316-cbf4-4214-9a80-8437b90e7cef', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-06 23:44:53.79938+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2cb0cea-bbe4-4b0b-911f-dea78de15f8a', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2025-06-06 23:44:53.800232+00', ''),
	('00000000-0000-0000-0000-000000000000', '99254c46-c3fb-4fc2-8b21-9b41ba17f0cf', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2026-03-01 14:54:45.650158+00', ''),
	('00000000-0000-0000-0000-000000000000', '38b06097-b3ee-426e-882e-37565fadf584', '{"action":"token_refreshed","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2026-03-29 14:00:14.762916+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5419302-0801-4af3-9f97-0667a9d74934', '{"action":"token_revoked","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"token"}', '2026-03-29 14:00:14.768411+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cac82f92-3ca4-4560-ad5e-4cefd90bce18', '{"action":"logout","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account"}', '2026-03-29 14:12:57.83286+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd122fdbe-7d2d-4ccd-80e9-f9d3d2ed4cec', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2026-03-29 14:14:46.958341+00', ''),
	('00000000-0000-0000-0000-000000000000', '50d3836e-46bb-471d-94cc-a70bc6dea49e', '{"action":"logout","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account"}', '2026-03-29 14:14:51.163739+00', ''),
	('00000000-0000-0000-0000-000000000000', '6cb8d698-773e-46c5-80d7-5ebbe799c7a3', '{"action":"login","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2026-03-29 14:33:10.340457+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf100b7b-0cfe-4e66-b004-3d43efb8dc69', '{"action":"logout","actor_id":"92b6a2ed-8377-4c36-89b8-92e9d4015f73","actor_name":"Russell Gordon","actor_username":"rgordon@lcs.on.ca","actor_via_sso":false,"log_type":"account"}', '2026-03-29 14:33:13.095604+00', '');


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', 'authenticated', 'authenticated', 'rgordon@lcs.on.ca', NULL, '2025-06-01 21:02:35.520085+00', NULL, '', NULL, '', NULL, '', '', NULL, '2026-03-29 14:33:10.341985+00', '{"provider": "google", "providers": ["google"]}', '{"iss": "https://accounts.google.com", "sub": "111450826756825169792", "name": "Russell Gordon", "email": "rgordon@lcs.on.ca", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLhbengqC3MP-WZCSnMLXJ1MBZCMF3wm58YWe266ioYbJNFR70=s96-c", "full_name": "Russell Gordon", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocLhbengqC3MP-WZCSnMLXJ1MBZCMF3wm58YWe266ioYbJNFR70=s96-c", "provider_id": "111450826756825169792", "custom_claims": {"hd": "lcs.on.ca"}, "email_verified": true, "phone_verified": false}', NULL, '2025-06-01 21:02:35.5016+00', '2026-03-29 14:33:10.344728+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('111450826756825169792', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', '{"iss": "https://accounts.google.com", "sub": "111450826756825169792", "name": "Russell Gordon", "email": "rgordon@lcs.on.ca", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLhbengqC3MP-WZCSnMLXJ1MBZCMF3wm58YWe266ioYbJNFR70=s96-c", "full_name": "Russell Gordon", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocLhbengqC3MP-WZCSnMLXJ1MBZCMF3wm58YWe266ioYbJNFR70=s96-c", "provider_id": "111450826756825169792", "custom_claims": {"hd": "lcs.on.ca"}, "email_verified": true, "phone_verified": false}', 'google', '2025-06-01 21:02:35.514043+00', '2025-06-01 21:02:35.514106+00', '2026-03-29 14:33:10.336888+00', '6c271b6c-532d-42f2-8b60-5011cef2f7c8');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") VALUES
	('2c164b0d-6c73-48ed-af75-eacee2674d8c', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', '2025-06-01 21:02:35.523507+00', '2025-06-01 21:02:35.523507+00', NULL, 'aal1', NULL, NULL, 'ElectricRide/1 CFNetwork/1568.300.101 Darwin/24.3.0', '76.67.148.60', NULL, NULL, NULL, NULL, NULL),
	('fcd5e37d-0e0b-42d2-ade4-7b6a399e76f7', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', '2025-06-01 21:16:27.013279+00', '2025-06-01 21:16:27.013279+00', NULL, 'aal1', NULL, NULL, 'ElectricRide/1 CFNetwork/1568.300.101 Darwin/24.3.0', '76.67.148.60', NULL, NULL, NULL, NULL, NULL),
	('40723761-4eb8-4459-92ca-88c0d3aea60e', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', '2025-06-02 11:44:28.794461+00', '2025-06-02 11:44:28.794461+00', NULL, 'aal1', NULL, NULL, 'ElectricRide/1 CFNetwork/1568.300.101 Darwin/24.3.0', '76.67.148.60', NULL, NULL, NULL, NULL, NULL),
	('6e3b7689-691b-4885-bc3b-5ad3c4e17e61', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', '2025-06-02 11:54:40.119214+00', '2025-06-06 23:44:53.804379+00', NULL, 'aal1', NULL, '2025-06-06 23:44:53.804304', 'ElectricRide/1 CFNetwork/1568.300.101 Darwin/24.3.0', '199.212.1.84', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('2c164b0d-6c73-48ed-af75-eacee2674d8c', '2025-06-01 21:02:35.531884+00', '2025-06-01 21:02:35.531884+00', 'oauth', '5b64e772-ea45-4c0b-b5e0-c0cd5e87b7e7'),
	('fcd5e37d-0e0b-42d2-ade4-7b6a399e76f7', '2025-06-01 21:16:27.01672+00', '2025-06-01 21:16:27.01672+00', 'oauth', '16da9ca3-45e5-417d-9063-a3f996ab29d1'),
	('40723761-4eb8-4459-92ca-88c0d3aea60e', '2025-06-02 11:44:28.798759+00', '2025-06-02 11:44:28.798759+00', 'oauth', '794e4b0c-6d34-4497-9298-8b33084471bf'),
	('6e3b7689-691b-4885-bc3b-5ad3c4e17e61', '2025-06-02 11:54:40.124865+00', '2025-06-02 11:54:40.124865+00', 'oauth', 'f8145492-8f86-45ce-8b97-5df3e279390f');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 1, 'omqmh6bydazo', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', false, '2025-06-01 21:02:35.526865+00', '2025-06-01 21:02:35.526865+00', NULL, '2c164b0d-6c73-48ed-af75-eacee2674d8c'),
	('00000000-0000-0000-0000-000000000000', 2, 'sr7d4hsc4nkb', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', false, '2025-06-01 21:16:27.014496+00', '2025-06-01 21:16:27.014496+00', NULL, 'fcd5e37d-0e0b-42d2-ade4-7b6a399e76f7'),
	('00000000-0000-0000-0000-000000000000', 7, 'dauhdllaimvn', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', false, '2025-06-02 11:44:28.795447+00', '2025-06-02 11:44:28.795447+00', NULL, '40723761-4eb8-4459-92ca-88c0d3aea60e'),
	('00000000-0000-0000-0000-000000000000', 8, 'afno26vvohni', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 11:54:40.122195+00', '2025-06-02 12:53:05.339742+00', NULL, '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 9, '7azpjxobgww6', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 12:53:05.341156+00', '2025-06-02 13:51:14.331171+00', 'afno26vvohni', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 10, 'wj6fktjwlmea', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 13:51:14.331812+00', '2025-06-02 15:45:48.093309+00', '7azpjxobgww6', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 11, '6lubiuhjynid', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 15:45:48.094086+00', '2025-06-02 17:18:40.799393+00', 'wj6fktjwlmea', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 12, 'uy3u7amtwrjj', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 17:18:40.800062+00', '2025-06-02 18:16:45.509911+00', '6lubiuhjynid', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 13, '4d5uz3wbpeau', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 18:16:45.510654+00', '2025-06-02 19:14:54.696344+00', 'uy3u7amtwrjj', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 14, 'oqcfkc5hyf5y', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 19:14:54.696971+00', '2025-06-02 20:27:57.767216+00', '4d5uz3wbpeau', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 15, '4d4kmjr36bx4', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 20:27:57.767835+00', '2025-06-02 21:54:26.13888+00', 'oqcfkc5hyf5y', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 16, 's2qtc2p7c45e', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 21:54:26.139519+00', '2025-06-02 22:55:03.064305+00', '4d4kmjr36bx4', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 17, 'jpori6xid5ku', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-02 22:55:03.065027+00', '2025-06-03 00:39:54.494507+00', 's2qtc2p7c45e', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 18, 'om5aan5hbnih', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 00:39:54.495128+00', '2025-06-03 01:41:11.328039+00', 'jpori6xid5ku', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 19, 'opzrdo4tpyvc', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 01:41:11.330163+00', '2025-06-03 02:42:01.179691+00', 'om5aan5hbnih', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 20, 'qcs2fa4dcxd6', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 02:42:01.180419+00', '2025-06-03 03:40:25.57418+00', 'opzrdo4tpyvc', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 21, 'pdnhuqntpc37', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 03:40:25.575679+00', '2025-06-03 04:47:58.335672+00', 'qcs2fa4dcxd6', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 22, 'fsznfume23zt', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 04:47:58.336437+00', '2025-06-03 05:46:03.664766+00', 'pdnhuqntpc37', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 23, 'pncwqxzqessl', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 05:46:03.665445+00', '2025-06-03 06:55:39.577729+00', 'fsznfume23zt', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 24, 'mjyyj3n36pne', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 06:55:39.578415+00', '2025-06-03 07:53:44.541294+00', 'pncwqxzqessl', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 25, 'gwmmskya3pna', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 07:53:44.541949+00', '2025-06-03 08:51:55.753186+00', 'mjyyj3n36pne', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 26, 'rel52bjkxsib', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 08:51:55.753891+00', '2025-06-03 09:50:05.613057+00', 'gwmmskya3pna', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 27, 'w7hocueqqvsb', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 09:50:05.613752+00', '2025-06-03 11:00:07.151117+00', 'rel52bjkxsib', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 28, 'l46dq3m27s2z', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 11:00:07.152729+00', '2025-06-03 11:58:26.502532+00', 'w7hocueqqvsb', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 29, '3mx4zyq2slm5', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 11:58:26.503271+00', '2025-06-03 12:57:08.679712+00', 'l46dq3m27s2z', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 30, 'xlos5nl6mon7', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 12:57:08.680407+00', '2025-06-03 13:55:16.554557+00', '3mx4zyq2slm5', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 31, 'vibi6msywfwa', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 13:55:16.555194+00', '2025-06-03 14:53:32.299253+00', 'xlos5nl6mon7', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 32, 'wwwt2y5xhmlr', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 14:53:32.299924+00', '2025-06-03 15:51:59.735486+00', 'vibi6msywfwa', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 33, 'w6ot2jdwyild', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 15:51:59.736134+00', '2025-06-03 16:50:26.330306+00', 'wwwt2y5xhmlr', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 34, '36f6uos4cmrl', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 16:50:26.331028+00', '2025-06-03 17:48:35.045496+00', 'w6ot2jdwyild', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 35, '3ckw6fst6had', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 17:48:35.046356+00', '2025-06-03 18:52:35.780965+00', '36f6uos4cmrl', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 36, '2tdvdapzkrso', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 18:52:35.781656+00', '2025-06-03 20:01:04.806766+00', '3ckw6fst6had', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 37, 'dacozesi4oud', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 20:01:04.807412+00', '2025-06-03 20:59:12.618509+00', '2tdvdapzkrso', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 38, 'q6kcalofnjic', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 20:59:12.619196+00', '2025-06-03 21:57:21.635173+00', 'dacozesi4oud', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 39, 'tsyc5mkj3aja', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 21:57:21.635865+00', '2025-06-03 23:02:44.276941+00', 'q6kcalofnjic', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 40, 'ncgkgf5sopux', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-03 23:02:44.277628+00', '2025-06-04 00:01:55.949372+00', 'tsyc5mkj3aja', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 41, 'txknpsvedgn5', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 00:01:55.950041+00', '2025-06-04 01:00:19.143034+00', 'ncgkgf5sopux', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 42, 'fv7ltkc5i7xy', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 01:00:19.14374+00', '2025-06-04 02:05:27.695847+00', 'txknpsvedgn5', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 43, '4tl6hq5atxxp', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 02:05:27.696538+00', '2025-06-04 03:06:27.452421+00', 'fv7ltkc5i7xy', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 44, 'p5dtxu2sdz7w', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 03:06:27.454032+00', '2025-06-04 04:16:20.459859+00', '4tl6hq5atxxp', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 45, 'c4rwqn7dixqv', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 04:16:20.460625+00', '2025-06-04 05:15:04.092141+00', 'p5dtxu2sdz7w', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 46, 'edupjswenwee', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 05:15:04.092807+00', '2025-06-04 06:14:25.797232+00', 'c4rwqn7dixqv', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 47, 'ulgweag73ira', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 06:14:25.797947+00', '2025-06-04 07:24:12.743638+00', 'edupjswenwee', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 48, 'nckoz4jes6cu', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 07:24:12.744277+00', '2025-06-04 08:22:41.598841+00', 'ulgweag73ira', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 49, '77qrfa2yn2df', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 08:22:41.599626+00', '2025-06-04 09:21:27.22834+00', 'nckoz4jes6cu', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 50, 'ildnsxi5khpn', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 09:21:27.229997+00', '2025-06-04 10:19:42.447301+00', '77qrfa2yn2df', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 51, 'oxmeetbc3umg', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 10:19:42.448058+00', '2025-06-04 11:22:31.070958+00', 'ildnsxi5khpn', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 52, 'cw2kgdkruf3q', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 11:22:31.07418+00', '2025-06-04 12:25:55.624998+00', 'oxmeetbc3umg', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 53, 'e35dr3jsdmav', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 12:25:55.625718+00', '2025-06-04 13:24:09.302476+00', 'cw2kgdkruf3q', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 54, 'gqwoe4miq3qo', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 13:24:09.303157+00', '2025-06-04 14:22:14.318891+00', 'e35dr3jsdmav', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 65, 'mwhapvahwxlg', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 01:01:44.34114+00', '2025-06-05 02:03:35.365861+00', 'qgg642p24oz4', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 55, 'xmenamq7cwpv', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 14:22:14.319636+00', '2025-06-04 15:20:27.881372+00', 'gqwoe4miq3qo', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 66, '5d4y66gawlpf', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 02:03:35.366574+00', '2025-06-05 03:09:22.089489+00', 'mwhapvahwxlg', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 56, 'weyggz7kwffv', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 15:20:27.882036+00', '2025-06-04 16:18:36.947358+00', 'xmenamq7cwpv', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 57, 'gogkblbosogk', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 16:18:36.948043+00', '2025-06-04 17:24:27.320736+00', 'weyggz7kwffv', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 67, 'o46wpjydgxnh', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 03:09:22.090919+00', '2025-06-05 04:07:53.049377+00', '5d4y66gawlpf', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 58, 'df2c6vdqnusw', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 17:24:27.321465+00', '2025-06-04 18:32:14.011017+00', 'gogkblbosogk', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 59, 'wlsciy37nysn', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 18:32:14.012783+00', '2025-06-04 19:43:33.121616+00', 'df2c6vdqnusw', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 68, 'nzoegt3wlf47', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 04:07:53.050116+00', '2025-06-05 05:06:09.611532+00', 'o46wpjydgxnh', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 60, 'xeookqalmk2u', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 19:43:33.123932+00', '2025-06-04 20:46:56.302946+00', 'wlsciy37nysn', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 61, 'xtgwqtwgkx24', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 20:46:56.303643+00', '2025-06-04 22:00:01.896243+00', 'xeookqalmk2u', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 69, 'p36hvyw6ct26', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 05:06:09.612188+00', '2025-06-05 06:16:23.691094+00', 'nzoegt3wlf47', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 62, 'faxd5g46uwxi', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 22:00:01.899623+00', '2025-06-04 23:01:00.567913+00', 'xtgwqtwgkx24', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 63, '3smiitgja5uv', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-04 23:01:00.569157+00', '2025-06-05 00:03:13.943611+00', 'faxd5g46uwxi', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 70, 'axcpppqglnup', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 06:16:23.691839+00', '2025-06-05 07:14:31.940767+00', 'p36hvyw6ct26', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 64, 'qgg642p24oz4', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 00:03:13.944989+00', '2025-06-05 01:01:44.340496+00', '3smiitgja5uv', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 71, '4nhndvhwcmjs', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 07:14:31.941541+00', '2025-06-05 08:20:02.423976+00', 'axcpppqglnup', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 72, 'mmivpc6wcjdp', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 08:20:02.424641+00', '2025-06-05 09:21:29.392786+00', '4nhndvhwcmjs', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 73, 'qyugh3bbvdnf', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 09:21:29.393475+00', '2025-06-05 10:19:34.813479+00', 'mmivpc6wcjdp', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 74, 'awtp6bgbxoei', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 10:19:34.814319+00', '2025-06-05 11:17:51.14737+00', 'qyugh3bbvdnf', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 75, '35rhdozpc6ar', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 11:17:51.148081+00', '2025-06-05 12:15:54.309471+00', 'awtp6bgbxoei', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 76, '4kwqxrlpqhoy', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-05 12:15:54.312108+00', '2025-06-06 19:39:48.404281+00', '35rhdozpc6ar', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 77, 'hmu6sjwloai7', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-06 19:39:48.406396+00', '2025-06-06 20:54:54.058966+00', '4kwqxrlpqhoy', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 78, 'w5pinfr7gjqj', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-06 20:54:54.059827+00', '2025-06-06 22:11:24.027863+00', 'hmu6sjwloai7', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 79, '32ymjwazalxv', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', true, '2025-06-06 22:11:24.029412+00', '2025-06-06 23:44:53.800699+00', 'w5pinfr7gjqj', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61'),
	('00000000-0000-0000-0000-000000000000', 80, 'dqtbnsv4gr4v', '92b6a2ed-8377-4c36-89b8-92e9d4015f73', false, '2025-06-06 23:44:53.802074+00', '2025-06-06 23:44:53.802074+00', '32ymjwazalxv', '6e3b7689-691b-4885-bc3b-5ad3c4e17e61');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: colour; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."colour" ("id", "name") OVERRIDING SYSTEM VALUE VALUES
	(1, 'White'),
	(2, 'Black'),
	(3, 'Silver'),
	(4, 'Red'),
	(5, 'Blue'),
	(6, 'Gray'),
	(7, 'Green'),
	(8, 'Orange'),
	(9, 'Purple'),
	(10, 'Yellow');


--
-- Data for Name: drivetrain; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."drivetrain" ("id", "acronym", "description") OVERRIDING SYSTEM VALUE VALUES
	(1, 'RWD', 'Rear-wheel drive'),
	(2, 'AWD', 'All-wheel drive'),
	(3, 'FWD', 'Front-wheel drive');


--
-- Data for Name: make; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."make" ("id", "brand_name") OVERRIDING SYSTEM VALUE VALUES
	(1, 'Tesla'),
	(2, 'Chevrolet'),
	(3, 'Rivian'),
	(4, 'Ford'),
	(5, 'BMW'),
	(6, 'Nissan'),
	(7, 'Hyundai');


--
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."model" ("id", "name", "make_id") OVERRIDING SYSTEM VALUE VALUES
	(1, 'Model S', 1),
	(2, 'Model 3', 1),
	(3, 'Model X', 1),
	(4, 'Model Y', 1),
	(5, 'Bolt EV', 2),
	(6, 'Volt', 2),
	(7, 'Equinox EV', 2),
	(8, 'R1T', 3),
	(9, 'R1S', 3),
	(10, 'Mustang Mach-E', 4),
	(11, 'F-150 Lightning', 4),
	(12, 'i3', 5),
	(13, 'iX', 5),
	(14, 'i4', 5),
	(15, 'Leaf', 6),
	(16, 'Ariya', 6),
	(17, 'Ioniq 5', 7),
	(18, 'Kona Electric', 7);


--
-- Data for Name: patron; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."patron" ("id", "first_name", "last_name", "email_address", "phone_number") OVERRIDING SYSTEM VALUE VALUES
	(1, 'Sarah', 'Johnson', 'sarah.johnson@email.com', '416-555-0101'),
	(2, 'Michael', 'Chen', 'michael.chen@email.com', '647-555-0102'),
	(3, 'Emily', 'Rodriguez', 'emily.rodriguez@email.com', '905-555-0103'),
	(4, 'David', 'Thompson', 'david.thompson@email.com', '416-555-0104'),
	(5, 'Jessica', 'Williams', 'jessica.williams@email.com', '647-555-0105'),
	(6, 'Andrew', 'Brown', 'andrew.brown@email.com', '905-555-0106'),
	(7, 'Rachel', 'Davis', 'rachel.davis@email.com', '416-555-0107'),
	(8, 'Christopher', 'Miller', 'christopher.miller@email.com', '647-555-0108'),
	(9, 'Amanda', 'Wilson', 'amanda.wilson@email.com', '905-555-0109'),
	(10, 'James', 'Moore', 'james.moore@email.com', '416-555-0110'),
	(11, 'Lisa', 'Taylor', 'lisa.taylor@email.com', '647-555-0111'),
	(12, 'Robert', 'Anderson', 'robert.anderson@email.com', '905-555-0112'),
	(13, 'Jennifer', 'Thomas', 'jennifer.thomas@email.com', '416-555-0113'),
	(14, 'William', 'Jackson', 'william.jackson@email.com', '647-555-0114'),
	(15, 'Michelle', 'White', 'michelle.white@email.com', '905-555-0115'),
	(16, 'Steven', 'Harris', 'steven.harris@email.com', '416-555-0116'),
	(17, 'Laura', 'Martin', 'laura.martin@email.com', '647-555-0117'),
	(18, 'Kevin', 'Garcia', 'kevin.garcia@email.com', '905-555-0118'),
	(19, 'Nicole', 'Martinez', 'nicole.martinez@email.com', '416-555-0119'),
	(20, 'Daniel', 'Robinson', 'daniel.robinson@email.com', '647-555-0120'),
	(21, 'Stephanie', 'Clark', 'stephanie.clark@email.com', '905-555-0121'),
	(22, 'Matthew', 'Lewis', 'matthew.lewis@email.com', '416-555-0122'),
	(23, 'Ashley', 'Lee', 'ashley.lee@email.com', '647-555-0123'),
	(24, 'Joshua', 'Walker', 'joshua.walker@email.com', '905-555-0124'),
	(25, 'Megan', 'Hall', 'megan.hall@email.com', '416-555-0125'),
	(26, 'Anthony', 'Allen', 'anthony.allen@email.com', '647-555-0126'),
	(27, 'Samantha', 'Young', 'samantha.young@email.com', '905-555-0127'),
	(28, 'Brian', 'Hernandez', 'brian.hernandez@email.com', '416-555-0128'),
	(29, 'Kimberly', 'King', 'kimberly.king@email.com', '647-555-0129'),
	(30, 'Mark', 'Wright', 'mark.wright@email.com', '905-555-0130'),
	(31, 'Angela', 'Lopez', 'angela.lopez@email.com', '416-555-0131'),
	(32, 'Paul', 'Hill', 'paul.hill@email.com', '647-555-0132'),
	(33, 'Amy', 'Scott', 'amy.scott@email.com', '905-555-0133'),
	(34, 'Jason', 'Green', 'jason.green@email.com', '416-555-0134'),
	(35, 'Melissa', 'Adams', 'melissa.adams@email.com', '647-555-0135'),
	(36, 'Ryan', 'Baker', 'ryan.baker@email.com', '905-555-0136'),
	(37, 'Heather', 'Gonzalez', 'heather.gonzalez@email.com', '416-555-0137'),
	(38, 'Eric', 'Nelson', 'eric.nelson@email.com', '647-555-0138'),
	(39, 'Rebecca', 'Carter', 'rebecca.carter@email.com', '905-555-0139'),
	(40, 'Adam', 'Mitchell', 'adam.mitchell@email.com', '416-555-0140'),
	(46, 'Russell Gordon', '', 'rgordon@lcs.on.ca', ''),
	(47, 'Russell Gordon', '', 'rgordon@lcs.on.ca', '');


--
-- Data for Name: year; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."year" ("id", "name") OVERRIDING SYSTEM VALUE VALUES
	(1, '2018'),
	(2, '2019'),
	(3, '2020'),
	(4, '2021'),
	(5, '2022'),
	(6, '2023'),
	(7, '2024'),
	(8, '2025');


--
-- Data for Name: vehicle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."vehicle" ("id", "make_id", "model_id", "year_id", "colour_id", "drivetrain_id") VALUES
	(1, 1, 1, 6, 1, 2),
	(2, 1, 2, 7, 2, 2),
	(3, 1, 3, 5, 3, 2),
	(4, 1, 4, 6, 4, 2),
	(5, 2, 5, 5, 5, 3),
	(6, 2, 6, 4, 6, 3),
	(7, 2, 7, 8, 1, 3),
	(8, 3, 8, 6, 7, 2),
	(9, 3, 9, 7, 2, 2),
	(10, 4, 10, 5, 8, 2),
	(11, 4, 11, 6, 3, 2),
	(12, 4, 10, 7, 4, 1),
	(13, 5, 12, 3, 9, 1),
	(14, 5, 13, 7, 1, 2),
	(15, 5, 14, 6, 2, 1),
	(16, 6, 15, 4, 5, 3),
	(17, 6, 16, 7, 6, 2),
	(18, 6, 15, 5, 10, 3),
	(19, 7, 17, 6, 1, 2),
	(20, 7, 18, 5, 4, 3),
	(21, 7, 17, 7, 2, 1),
	(22, 7, 18, 6, 5, 3),
	(23, 1, 2, 4, 3, 1),
	(24, 2, 5, 6, 7, 3),
	(25, 4, 10, 6, 9, 2);


--
-- Data for Name: listing; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."listing" ("id", "price", "description", "listed_on", "sold_on", "is_active", "vehicle_id", "patron_id") VALUES
	(1, 75000, 'This exceptional Tesla Model S is in pristine condition with only 15,000 kilometers on the odometer. The vehicle has been meticulously maintained with all scheduled services performed at authorized Tesla service centers. Features include Enhanced Autopilot, premium interior package with white leather seats, 21-inch Turbine wheels, and glass roof. The exterior paint is flawless with no scratches or dents, and all electronic systems function perfectly. Battery health remains at 98% capacity. Complete service records available and comes with remaining factory warranty.', '2024-05-15 14:30:00+00', NULL, true, 1, 1),
	(2, 42000, 'Outstanding Tesla Model 3 with incredibly low mileage of just 8,500 kilometers, making it practically brand new. This vehicle has been garage-kept and driven only on weekends by a non-smoking owner. The black exterior finish is showroom quality with protective paint film applied from day one. Interior features premium materials in excellent condition with heated seats, premium audio system, and full self-driving capability hardware installed. All software updates current, supercharging enabled, and mobile connector included. Perfect commuter car with exceptional efficiency and reliability.', '2024-05-20 18:15:00+00', NULL, true, 2, 3),
	(3, 95000, 'Stunning Tesla Model X in immaculate condition with 22,000 kilometers of careful driving. This family-friendly SUV features the iconic falcon wing doors that operate flawlessly, 7-seat configuration with premium white interior, and panoramic windshield. The vehicle has never been in an accident and shows no signs of wear. All advanced safety features including collision avoidance and emergency braking work perfectly. Recent software update installed, and the air suspension system has been recently serviced. Comes with complete documentation, original purchase receipts, and two sets of keys.', '2024-05-22 13:45:00+00', NULL, true, 3, 5),
	(4, 58000, 'Excellent Tesla Model Y Performance in remarkable condition with 18,500 kilometers. This sporty crossover combines luxury with practicality, featuring dual motor all-wheel drive, performance upgrade package, and 21-inch Überturbine wheels. The interior boasts heated and ventilated seats, premium audio system, and tinted windows for privacy. Paint protection film covers high-impact areas, and ceramic coating ensures lasting shine. Regular maintenance performed, tire condition excellent, and all electronic systems functioning optimally. Perfect blend of performance, efficiency, and everyday usability.', '2024-05-25 20:20:00+00', NULL, true, 4, 7),
	(5, 28000, 'Reliable Chevrolet Bolt EV in excellent mechanical and cosmetic condition with 35,000 kilometers of mainly city driving. This efficient electric vehicle has been owned by a senior who used it primarily for local errands and shopping trips. The battery shows no degradation signs and still achieves full rated range. Interior is immaculate with non-smoking environment, while the exterior has minor parking lot scratches that have been professionally touched up. Recent battery software update applied, charging port functions perfectly, and comes with Level 2 home charging equipment.', '2024-05-18 15:30:00+00', NULL, true, 5, 9),
	(6, 85000, 'Adventure-ready Rivian R1T in exceptional condition with only 12,000 kilometers of mixed highway and off-road use. This revolutionary electric pickup features the innovative Tank Turn capability, air suspension, and quad-motor all-wheel drive system. The truck bed with power tonneau cover is in perfect condition, and the front trunk (frunk) shows minimal wear. All terrain tires have 90% tread remaining, underbody protection shows normal wear from light off-roading, and all electrical systems including the massive touchscreen interface work flawlessly. Complete with camping accessories and portable power outlets.', '2024-05-28 17:45:00+00', NULL, true, 8, 11),
	(7, 92000, 'Spacious Rivian R1S family SUV in outstanding condition with 16,800 kilometers driven primarily on highways for family road trips. This three-row electric SUV offers unmatched versatility with air suspension that adjusts perfectly for various driving conditions. All seats are in excellent condition with minimal wear, the panoramic glass roof is crystal clear, and the premium audio system delivers exceptional sound quality. The vehicle has been professionally detailed monthly, never smoked in, and stored in a climate-controlled garage. Comes with complete service history and all original accessories.', '2024-05-26 12:15:00+00', NULL, true, 9, 13),
	(8, 55000, 'Stylish Ford Mustang Mach-E with premium package in superb condition showing 21,000 kilometers of careful driving. This electric crossover combines iconic Mustang styling with cutting-edge EV technology. Features include hands-free driving assist, premium Bang & Olufsen sound system, panoramic fixed-glass roof, and intelligent all-wheel drive. The interior leather seats show no visible wear, the large touchscreen responds perfectly, and all charging capabilities work flawlessly. Recent software updates installed, and the vehicle comes with complete maintenance records and extended warranty coverage.', '2024-05-29 19:30:00+00', NULL, true, 10, 15),
	(9, 32000, 'Chevrolet Volt with extended range capability in very good condition with 45,000 kilometers of mixed driving. This plug-in hybrid offers the best of both worlds with electric driving for daily commutes and gas engine for longer trips. The electric drive system operates smoothly, battery holds charge well, and the gasoline engine runs quietly when needed. Interior shows normal wear appropriate for age, exterior has minor stone chips on front bumper, and all maintenance has been performed on schedule. Ideal for those wanting electric driving with range anxiety eliminated.', '2024-04-10 16:00:00+00', NULL, false, 6, 17),
	(10, 65000, 'Ford F-150 Lightning with work package in solid condition with 28,000 kilometers of light commercial use. This electric truck has been used primarily for local construction work, with the bed showing appropriate wear from hauling materials. The work package includes additional power outlets, rubber floor mats, and enhanced payload capacity. All electrical systems including the professional power outlets function correctly, the truck bed power outlets have been invaluable for job sites, and the vehicle has never been overloaded. Some cosmetic wear consistent with work truck usage but mechanically sound.', '2024-04-15 14:45:00+00', NULL, false, 11, 19),
	(11, 25000, 'Compact BMW i3 in good condition with 52,000 kilometers, perfect for urban driving and tight parking spaces. This unique electric city car features carbon fiber construction, rear-wheel drive, and instant torque delivery. The interior sustainable materials are holding up well with minimal wear, the distinctive exterior design still turns heads, and the narrow tires are recently replaced. Some minor scratches from city parking are present but add character to this eco-friendly vehicle. Charging is quick and convenient, making this ideal for city dwellers who want luxury electric mobility.', '2024-04-20 18:30:00+00', NULL, false, 13, 21),
	(12, 30000, 'Efficient Nissan Leaf with impressively low mileage of just 25,000 kilometers in excellent condition. This reliable electric vehicle has been garage-kept and driven by a careful owner who primarily used it for short commutes. The battery health indicator shows excellent status with no capacity loss, and the vehicle still achieves full EPA-rated range. Interior is pristine with no stains or excessive wear, exterior paint is in excellent condition with only minor door dings, and all electronic systems including the charging port work perfectly. Comes with original documentation and charging cables.', '2024-04-25 13:15:00+00', NULL, false, 16, 23),
	(13, 48000, 'Modern Hyundai Ioniq 5 with fast charging capability in excellent condition showing 19,500 kilometers of highway driving. This innovative electric crossover features ultra-fast 800V charging architecture, spacious interior with lounge-style seating, and vehicle-to-load capability for powering external devices. The exterior design is striking and the paint finish remains flawless, while the interior sustainable materials show no wear. All advanced driver assistance features work perfectly, the large infotainment screen is responsive, and the dual wireless charging pads function correctly. Exceptional efficiency and comfort combined.', '2024-05-01 20:45:00+00', NULL, false, 19, 25),
	(14, 70000, 'BMW iX luxury electric SUV was in exceptional condition with 24,000 kilometers when sold. This flagship electric vehicle featured the latest iDrive system, crystal interior trim, and Bowers & Wilkins surround sound system. The vehicle had been meticulously maintained with all services performed at BMW dealerships. The exterior showed no damage and the interior was immaculate throughout the sale process. Advanced driver assistance features including parking assist and traffic jam assist worked flawlessly. The buyer received complete service records and remaining factory warranty coverage.', '2024-03-15 15:20:00+00', '2024-04-02 18:30:00+00', false, 14, 27),
	(15, 45000, 'BMW i4 sedan with premium features was in outstanding condition with 31,000 kilometers at time of sale. This electric gran coupe combined traditional BMW driving dynamics with zero-emission operation. Features included M Sport package, premium leather seating, and professional navigation system. The vehicle had been garage-kept and showed minimal wear throughout. All electronic systems functioned perfectly, the charging system worked efficiently, and maintenance was current. The sale included original purchase documentation, service history, and all original accessories including charging cables.', '2024-03-20 17:15:00+00', '2024-04-08 14:45:00+00', false, 15, 29),
	(16, 35000, 'Nissan Ariya crossover with all-wheel drive was in very good condition with 27,500 kilometers when sold. This modern electric SUV featured ProPILOT Assist, premium interior materials, and e-4ORCE all-wheel drive technology. The vehicle had been regularly serviced and showed normal wear appropriate for its age. Battery performance remained excellent with no degradation noted, and all charging capabilities worked correctly. The buyer appreciated the spacious interior, smooth ride quality, and advanced safety features. Complete maintenance records were transferred with the vehicle.', '2024-03-25 13:30:00+00', '2024-04-12 20:20:00+00', false, 17, 31),
	(17, 33000, 'Nissan Leaf with new battery technology was in good condition with 38,000 kilometers at sale. This efficient electric vehicle had recently received a battery software update and showed solid performance throughout ownership. The interior showed moderate wear consistent with daily use, while the exterior had minor parking lot scratches but no major damage. All charging functions worked properly, and the vehicle achieved reasonable range for its age. The sale included charging cables, owner manuals, and complete service documentation from the authorized dealer network.', '2024-04-01 19:45:00+00', '2024-04-18 15:30:00+00', false, 18, 33),
	(18, 38000, 'Hyundai Kona Electric compact SUV was in excellent condition with 22,800 kilometers when sold. This efficient electric crossover offered impressive range and reliability throughout ownership. The interior was well-maintained with minimal wear, and the exterior finish was protected with regular waxing. All electronic systems including the infotainment display worked correctly, climate control was efficient, and the charging system operated without issues. The vehicle had been serviced according to schedule and came with remaining warranty coverage that transferred to the new owner.', '2024-04-05 16:30:00+00', '2024-04-22 17:45:00+00', false, 20, 35),
	(19, 50000, 'Hyundai Ioniq 5 with rear-wheel drive was in superb condition with only 14,200 kilometers when sold. This innovative electric vehicle featured ultra-fast charging, spacious interior design, and advanced technology throughout. The exterior paint was flawless with no visible damage, while the interior sustainable materials showed no wear signs. All advanced features including the large touchscreen, wireless charging, and vehicle-to-load functionality worked perfectly. The buyer received all original accessories, documentation, and remaining comprehensive warranty coverage.', '2024-04-10 12:15:00+00', '2024-04-25 19:30:00+00', false, 21, 37),
	(20, 52000, 'Chevrolet Equinox EV in brand new condition with just 3,500 kilometers was sold quickly due to its exceptional state. This latest electric SUV from General Motors featured the newest Ultium battery technology, Super Cruise capability, and premium interior appointments. The vehicle was essentially new with no visible wear anywhere, all protective films still in place, and original factory smell present. Every electronic system functioned flawlessly, and the vehicle came with complete factory warranty, all original documentation, and dealer-installed accessories.', '2024-04-12 18:00:00+00', '2024-04-28 14:15:00+00', false, 7, 39),
	(21, 40000, 'Tesla Model 3 RWD in silver was in excellent condition with 26,500 kilometers when sold. This rear-wheel drive variant offered exceptional efficiency and smooth operation throughout ownership. The silver exterior finish was well-maintained with only minor stone chips, while the interior showed minimal wear from careful use. All Tesla software features worked correctly, supercharging capability was fully functional, and the vehicle had received all recent over-the-air updates. The sale included mobile connector, documentation, and transfer of remaining warranty coverage.', '2024-03-30 14:30:00+00', '2024-04-15 16:45:00+00', false, 23, 2),
	(22, 29000, 'Chevrolet Bolt EV in green with impressively low mileage of 18,900 kilometers was sold in excellent condition. This efficient electric vehicle had been used primarily for local driving and showed minimal wear throughout. The unique green exterior color was well-preserved with professional paint protection, while the interior remained pristine from non-smoking ownership. Battery performance was exceptional with no capacity loss noted, charging worked perfectly, and all scheduled maintenance had been completed. The buyer received charging equipment, manuals, and complete service history.', '2024-04-08 20:15:00+00', '2024-04-24 13:30:00+00', false, 24, 4),
	(23, 56000, 'Ford Mustang Mach-E in purple with full premium package was sold in outstanding condition with 23,700 kilometers. This fully-loaded electric crossover featured every available option including hands-free driving technology, premium audio system, and panoramic glass roof. The striking purple exterior finish was showroom quality with professional ceramic coating, while the premium interior materials showed no visible wear. All advanced technology features functioned perfectly, and the vehicle had been garage-kept throughout ownership. Sale included complete documentation and extended warranty transfer.', '2024-04-18 15:45:00+00', '2024-05-05 18:20:00+00', false, 25, 6),
	(24, 47000, 'Hyundai Kona Electric in blue was sold in like-new condition with only 11,400 kilometers. This compact electric SUV had been meticulously maintained and showed virtually no wear from careful ownership. The vibrant blue exterior was protected with paint protection film, while the interior remained immaculate throughout. All electronic systems performed flawlessly, charging was efficient and reliable, and the vehicle achieved excellent range ratings. The buyer received all original accessories, complete documentation, and full remaining factory warranty coverage for peace of mind.', '2024-05-02 17:20:00+00', '2024-05-20 20:15:00+00', false, 22, 8);


--
-- Data for Name: saved; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."saved" ("id", "saved_on", "patron_id", "listing_id") VALUES
	(1, '2024-05-16 13:15:00+00', 2, 1),
	(2, '2024-05-16 13:20:00+00', 2, 4),
	(3, '2024-05-21 18:30:00+00', 4, 2),
	(4, '2024-05-21 18:35:00+00', 4, 5),
	(5, '2024-05-23 15:45:00+00', 6, 3),
	(6, '2024-05-23 15:50:00+00', 6, 6),
	(7, '2024-05-27 20:20:00+00', 8, 7),
	(8, '2024-05-27 20:25:00+00', 8, 8),
	(9, '2024-05-30 14:30:00+00', 10, 1),
	(10, '2024-05-30 14:35:00+00', 10, 6),
	(11, '2024-05-19 16:15:00+00', 1, 2),
	(12, '2024-05-24 19:45:00+00', 3, 6),
	(13, '2024-05-26 13:30:00+00', 5, 8),
	(14, '2024-05-28 18:20:00+00', 7, 1),
	(15, '2024-05-29 15:15:00+00', 9, 7),
	(16, '2024-05-17 17:45:00+00', 12, 5),
	(17, '2024-05-18 14:20:00+00', 14, 4),
	(18, '2024-05-19 20:30:00+00', 16, 3),
	(19, '2024-05-22 12:45:00+00', 18, 8),
	(20, '2024-05-24 16:50:00+00', 20, 6),
	(21, '2024-05-25 19:15:00+00', 22, 2),
	(22, '2024-05-26 15:40:00+00', 24, 7),
	(23, '2024-05-27 18:25:00+00', 26, 1),
	(24, '2024-05-28 13:55:00+00', 28, 5),
	(25, '2024-05-29 17:10:00+00', 30, 4),
	(26, '2024-05-30 20:35:00+00', 32, 8),
	(27, '2024-05-30 14:50:00+00', 34, 6),
	(28, '2024-05-29 19:25:00+00', 36, 3),
	(29, '2024-05-28 16:40:00+00', 38, 7),
	(30, '2024-05-27 13:20:00+00', 40, 2),
	(31, '2025-05-31 15:17:24.556028+00', 2, 8),
	(32, '2025-05-31 15:50:16+00', 2, 5),
	(33, '2025-05-31 20:22:43+00', 8, 5),
	(34, '2025-05-31 20:24:44+00', 9, 8),
	(36, '2025-05-31 20:28:50+00', 8, 6),
	(37, '2025-05-31 20:32:31+00', 10, 5),
	(38, '2025-05-31 20:34:24+00', 9, 5),
	(39, '2025-05-31 20:36:12+00', 9, 6),
	(40, '2025-05-31 20:37:17+00', 9, 4),
	(41, '2025-05-31 20:37:52+00', 9, 3),
	(42, '2025-05-31 21:24:34+00', 15, 5),
	(43, '2025-05-31 21:25:45+00', 15, 2),
	(44, '2025-05-31 21:32:38+00', 15, 3),
	(45, '2025-05-31 21:37:24+00', 6, 5),
	(46, '2025-05-31 21:37:42+00', 6, 7),
	(48, '2025-05-31 21:39:48+00', 8, 2),
	(49, '2025-05-31 22:29:01+00', 11, 3),
	(50, '2025-05-31 22:29:10+00', 11, 5),
	(51, '2025-05-31 22:29:36+00', 21, 3),
	(52, '2025-06-01 13:04:18+00', 3, 5),
	(54, '2025-06-01 15:30:29+00', 8, 3),
	(58, '2026-03-29 14:12:52+00', 46, 4);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 84, true);


--
-- Name: colour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."colour_id_seq"', 10, true);


--
-- Name: drivetrain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."drivetrain_id_seq"', 3, true);


--
-- Name: listing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."listing_id_seq"', 24, true);


--
-- Name: make_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."make_id_seq"', 7, true);


--
-- Name: model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."model_id_seq"', 18, true);


--
-- Name: patron_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."patron_id_seq"', 47, true);


--
-- Name: saved_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."saved_id_seq"', 58, true);


--
-- Name: vehicle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."vehicle_id_seq"', 25, true);


--
-- Name: year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."year_id_seq"', 8, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
