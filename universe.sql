--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years numeric,
    description text,
    distance integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    has_life boolean,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years numeric,
    star_id integer,
    description character varying(100)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: regent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.regent (
    id integer NOT NULL,
    name character varying(100),
    description character varying(100),
    distance integer
);


ALTER TABLE public.regent OWNER TO freecodecamp;

--
-- Name: regent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.regent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regent_id_seq OWNER TO freecodecamp;

--
-- Name: regent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.regent_id_seq OWNED BY public.regent.id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    has_life boolean,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: regent id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.regent ALTER COLUMN id SET DEFAULT nextval('public.regent_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'a', 12, 'abc', NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'b', 13, 'def', NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'c', 14, 'fgh', NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'e', 23, 'po', NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'f', 54, 'oi', NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (7, 'g', 67, 'ap', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'ap', false, 125, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'ai', true, 78, 2);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (21, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (22, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (23, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (24, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (25, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (26, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (27, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (28, 'aop', true, 548, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (29, 'op', true, 5478, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (30, 'aop', true, 548, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'ax', 122, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'am', 50, 4, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'ad', 94, 5, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'sm', 503, 4, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'dad', 194, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'pi', 312, 4, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'gm', 1503, 5, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'daad', 794, 4, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'xpi', 1312, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'ggm', 1673, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'ghnc', 1794, 4, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'pdf', 512, 5, NULL);


--
-- Data for Name: regent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.regent VALUES (1, 'a', NULL, NULL);
INSERT INTO public.regent VALUES (2, 'b', NULL, NULL);
INSERT INTO public.regent VALUES (3, 'x', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'a', true, 122, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'b', true, 1299, 3);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'c', false, 282, 4);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'd', true, 129, 3);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (7, 'e', false, 282, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (8, 'f', true, 542, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 30, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: regent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.regent_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: regent regent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.regent
    ADD CONSTRAINT regent_pkey PRIMARY KEY (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

