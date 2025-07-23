--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 618);
INSERT INTO public.games VALUES (2, 1, 682);
INSERT INTO public.games VALUES (3, 2, 274);
INSERT INTO public.games VALUES (4, 2, 969);
INSERT INTO public.games VALUES (5, 1, 14);
INSERT INTO public.games VALUES (6, 1, 193);
INSERT INTO public.games VALUES (7, 1, 736);
INSERT INTO public.games VALUES (8, 3, 22);
INSERT INTO public.games VALUES (9, 3, 16);
INSERT INTO public.games VALUES (10, 3, 12);
INSERT INTO public.games VALUES (11, 4, 144);
INSERT INTO public.games VALUES (12, 4, 956);
INSERT INTO public.games VALUES (13, 5, 188);
INSERT INTO public.games VALUES (14, 5, 293);
INSERT INTO public.games VALUES (15, 4, 584);
INSERT INTO public.games VALUES (16, 4, 246);
INSERT INTO public.games VALUES (17, 4, 865);
INSERT INTO public.games VALUES (18, 6, 535);
INSERT INTO public.games VALUES (19, 6, 498);
INSERT INTO public.games VALUES (20, 7, 138);
INSERT INTO public.games VALUES (21, 7, 593);
INSERT INTO public.games VALUES (22, 6, 637);
INSERT INTO public.games VALUES (23, 6, 346);
INSERT INTO public.games VALUES (24, 6, 347);
INSERT INTO public.games VALUES (25, 8, 654);
INSERT INTO public.games VALUES (26, 8, 568);
INSERT INTO public.games VALUES (27, 9, 241);
INSERT INTO public.games VALUES (28, 9, 95);
INSERT INTO public.games VALUES (29, 8, 28);
INSERT INTO public.games VALUES (30, 8, 970);
INSERT INTO public.games VALUES (31, 8, 972);
INSERT INTO public.games VALUES (32, 10, 912);
INSERT INTO public.games VALUES (33, 10, 257);
INSERT INTO public.games VALUES (34, 11, 517);
INSERT INTO public.games VALUES (35, 11, 972);
INSERT INTO public.games VALUES (36, 10, 906);
INSERT INTO public.games VALUES (37, 10, 485);
INSERT INTO public.games VALUES (38, 10, 831);
INSERT INTO public.games VALUES (39, 3, 16);
INSERT INTO public.games VALUES (40, 12, 156);
INSERT INTO public.games VALUES (41, 12, 679);
INSERT INTO public.games VALUES (42, 13, 61);
INSERT INTO public.games VALUES (43, 13, 271);
INSERT INTO public.games VALUES (44, 12, 152);
INSERT INTO public.games VALUES (45, 12, 286);
INSERT INTO public.games VALUES (46, 12, 318);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'trucvhc', 4, 12);
INSERT INTO public.users VALUES (2, 'user_1753237460320', 2, 274);
INSERT INTO public.users VALUES (1, 'user_1753237460321', 5, 14);
INSERT INTO public.users VALUES (13, 'user_1753238443836', 2, 61);
INSERT INTO public.users VALUES (12, 'user_1753238443837', 5, 152);
INSERT INTO public.users VALUES (5, 'user_1753237725271', 2, 188);
INSERT INTO public.users VALUES (4, 'user_1753237725272', 5, 144);
INSERT INTO public.users VALUES (7, 'user_1753237769546', 2, 138);
INSERT INTO public.users VALUES (6, 'user_1753237769547', 5, 346);
INSERT INTO public.users VALUES (9, 'user_1753238087634', 2, 95);
INSERT INTO public.users VALUES (8, 'user_1753238087635', 5, 28);
INSERT INTO public.users VALUES (11, 'user_1753238162054', 2, 517);
INSERT INTO public.users VALUES (10, 'user_1753238162055', 5, 257);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 46, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

