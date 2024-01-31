--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 7, 12);
INSERT INTO public.games VALUES (2, 679, 13);
INSERT INTO public.games VALUES (3, 616, 13);
INSERT INTO public.games VALUES (4, 876, 14);
INSERT INTO public.games VALUES (5, 489, 14);
INSERT INTO public.games VALUES (6, 405, 13);
INSERT INTO public.games VALUES (7, 509, 13);
INSERT INTO public.games VALUES (8, 276, 13);
INSERT INTO public.games VALUES (9, 457, 16);
INSERT INTO public.games VALUES (10, 70, 16);
INSERT INTO public.games VALUES (11, 256, 17);
INSERT INTO public.games VALUES (12, 450, 17);
INSERT INTO public.games VALUES (13, 422, 16);
INSERT INTO public.games VALUES (14, 79, 16);
INSERT INTO public.games VALUES (15, 330, 16);
INSERT INTO public.games VALUES (16, 685, 18);
INSERT INTO public.games VALUES (17, 123, 18);
INSERT INTO public.games VALUES (18, 216, 19);
INSERT INTO public.games VALUES (19, 414, 19);
INSERT INTO public.games VALUES (20, 802, 18);
INSERT INTO public.games VALUES (21, 737, 18);
INSERT INTO public.games VALUES (22, 149, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1706695116268');
INSERT INTO public.users VALUES (2, 'user_1706695116267');
INSERT INTO public.users VALUES (3, 'user_1706695201901');
INSERT INTO public.users VALUES (4, 'user_1706695201900');
INSERT INTO public.users VALUES (5, 'user_1706695615875');
INSERT INTO public.users VALUES (6, 'user_1706695615874');
INSERT INTO public.users VALUES (7, 'user_1706695868259');
INSERT INTO public.users VALUES (8, 'user_1706695868258');
INSERT INTO public.users VALUES (9, 'user_1706699108374');
INSERT INTO public.users VALUES (10, 'user_1706699108373');
INSERT INTO public.users VALUES (11, 'Daniel');
INSERT INTO public.users VALUES (12, 'Mugabo');
INSERT INTO public.users VALUES (13, 'user_1706699880714');
INSERT INTO public.users VALUES (14, 'user_1706699880713');
INSERT INTO public.users VALUES (15, 'MUGABO');
INSERT INTO public.users VALUES (16, 'user_1706699931593');
INSERT INTO public.users VALUES (17, 'user_1706699931592');
INSERT INTO public.users VALUES (18, 'user_1706699986372');
INSERT INTO public.users VALUES (19, 'user_1706699986371');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 22, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


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

