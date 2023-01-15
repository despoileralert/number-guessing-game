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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    name character varying(25),
    games integer,
    best_attempts integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users_games (
    name character varying(25),
    guesses_in_thatgame integer
);


ALTER TABLE public.users_games OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1673791269527', 2, 5);
INSERT INTO public.users VALUES ('user_1673791269528', 5, 9);
INSERT INTO public.users VALUES ('user_1673791302507', 2, 17);
INSERT INTO public.users VALUES ('user_1673791302508', 5, 19);
INSERT INTO public.users VALUES ('user_1673791500427', 2, 38);
INSERT INTO public.users VALUES ('user_1673791500428', 5, 12);
INSERT INTO public.users VALUES ('user_1673791514455', 2, 13);
INSERT INTO public.users VALUES ('user_1673791514456', 5, 10);
INSERT INTO public.users VALUES ('user_1673791522455', 2, 29);
INSERT INTO public.users VALUES ('user_1673791522456', 5, 8);
INSERT INTO public.users VALUES ('toheuleong', 1, 9);
INSERT INTO public.users VALUES ('user_1673791664751', 2, 13);
INSERT INTO public.users VALUES ('user_1673791664752', 5, 14);
INSERT INTO public.users VALUES ('user_1673791740066', 2, 9);
INSERT INTO public.users VALUES ('user_1673791740067', 5, 11);
INSERT INTO public.users VALUES ('user_1673791936161', 2, 34);
INSERT INTO public.users VALUES ('user_1673791936162', 5, 2);
INSERT INTO public.users VALUES ('user_1673791943582', 2, 32);
INSERT INTO public.users VALUES ('user_1673791943583', 5, 18);


--
-- Data for Name: users_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users_games VALUES ('user_1673791269528', 9);
INSERT INTO public.users_games VALUES ('user_1673791269528', 43);
INSERT INTO public.users_games VALUES ('user_1673791269527', 5);
INSERT INTO public.users_games VALUES ('user_1673791269527', 25);
INSERT INTO public.users_games VALUES ('user_1673791269528', 21);
INSERT INTO public.users_games VALUES ('user_1673791269528', 22);
INSERT INTO public.users_games VALUES ('user_1673791269528', 14);
INSERT INTO public.users_games VALUES ('user_1673791302508', 23);
INSERT INTO public.users_games VALUES ('user_1673791302508', 47);
INSERT INTO public.users_games VALUES ('user_1673791302507', 17);
INSERT INTO public.users_games VALUES ('user_1673791302507', 39);
INSERT INTO public.users_games VALUES ('user_1673791302508', 19);
INSERT INTO public.users_games VALUES ('user_1673791302508', 47);
INSERT INTO public.users_games VALUES ('user_1673791302508', 23);
INSERT INTO public.users_games VALUES ('user_1673791500428', 12);
INSERT INTO public.users_games VALUES ('user_1673791500428', 33);
INSERT INTO public.users_games VALUES ('user_1673791500427', 42);
INSERT INTO public.users_games VALUES ('user_1673791500427', 38);
INSERT INTO public.users_games VALUES ('user_1673791500428', 50);
INSERT INTO public.users_games VALUES ('user_1673791500428', 35);
INSERT INTO public.users_games VALUES ('user_1673791500428', 28);
INSERT INTO public.users_games VALUES ('user_1673791514456', 43);
INSERT INTO public.users_games VALUES ('user_1673791514456', 10);
INSERT INTO public.users_games VALUES ('user_1673791514455', 50);
INSERT INTO public.users_games VALUES ('user_1673791514455', 13);
INSERT INTO public.users_games VALUES ('user_1673791514456', 39);
INSERT INTO public.users_games VALUES ('user_1673791514456', 26);
INSERT INTO public.users_games VALUES ('user_1673791514456', 22);
INSERT INTO public.users_games VALUES ('user_1673791522456', 17);
INSERT INTO public.users_games VALUES ('user_1673791522456', 28);
INSERT INTO public.users_games VALUES ('user_1673791522455', 29);
INSERT INTO public.users_games VALUES ('user_1673791522455', 44);
INSERT INTO public.users_games VALUES ('user_1673791522456', 8);
INSERT INTO public.users_games VALUES ('user_1673791522456', 43);
INSERT INTO public.users_games VALUES ('user_1673791522456', 43);
INSERT INTO public.users_games VALUES ('toheuleong', 9);
INSERT INTO public.users_games VALUES ('user_1673791664752', 41);
INSERT INTO public.users_games VALUES ('user_1673791664752', 21);
INSERT INTO public.users_games VALUES ('user_1673791664751', 13);
INSERT INTO public.users_games VALUES ('user_1673791664751', 28);
INSERT INTO public.users_games VALUES ('user_1673791664752', 44);
INSERT INTO public.users_games VALUES ('user_1673791664752', 39);
INSERT INTO public.users_games VALUES ('user_1673791664752', 14);
INSERT INTO public.users_games VALUES ('user_1673791740067', 28);
INSERT INTO public.users_games VALUES ('user_1673791740067', 11);
INSERT INTO public.users_games VALUES ('user_1673791740066', 29);
INSERT INTO public.users_games VALUES ('user_1673791740066', 9);
INSERT INTO public.users_games VALUES ('user_1673791740067', 27);
INSERT INTO public.users_games VALUES ('user_1673791740067', 45);
INSERT INTO public.users_games VALUES ('user_1673791740067', 40);
INSERT INTO public.users_games VALUES ('user_1673791936162', 44);
INSERT INTO public.users_games VALUES ('user_1673791936162', 22);
INSERT INTO public.users_games VALUES ('user_1673791936161', 34);
INSERT INTO public.users_games VALUES ('user_1673791936161', 41);
INSERT INTO public.users_games VALUES ('user_1673791936162', 26);
INSERT INTO public.users_games VALUES ('user_1673791936162', 37);
INSERT INTO public.users_games VALUES ('user_1673791936162', 2);
INSERT INTO public.users_games VALUES ('user_1673791943583', 46);
INSERT INTO public.users_games VALUES ('user_1673791943583', 18);
INSERT INTO public.users_games VALUES ('user_1673791943582', 33);
INSERT INTO public.users_games VALUES ('user_1673791943582', 32);
INSERT INTO public.users_games VALUES ('user_1673791943583', 34);
INSERT INTO public.users_games VALUES ('user_1673791943583', 51);
INSERT INTO public.users_games VALUES ('user_1673791943583', 38);


--
-- PostgreSQL database dump complete
--

