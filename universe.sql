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
    name character varying(50) NOT NULL,
    old boolean,
    exist boolean,
    p integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    exist boolean,
    old boolean,
    planet_id integer NOT NULL,
    p integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: p; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.p (
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    ages integer NOT NULL,
    weight numeric NOT NULL,
    description text NOT NULL,
    p_id integer NOT NULL
);


ALTER TABLE public.p OWNER TO freecodecamp;

--
-- Name: p_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.p_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p_p_id_seq OWNER TO freecodecamp;

--
-- Name: p_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.p_p_id_seq OWNED BY public.p.p_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    old boolean,
    exist boolean,
    star_id integer NOT NULL,
    p integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    exist boolean,
    old boolean,
    galaxy_id integer NOT NULL,
    p integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: p p_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.p ALTER COLUMN p_id SET DEFAULT nextval('public.p_p_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'hi', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'hi1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'hi2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'hi3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'hi4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'hi5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'hi6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'himoon', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'himoon1', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'himoon2', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'himoon3', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, 'himoon4', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (6, 'himoon5', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (7, 'himoon6', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (8, 'himoon7', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (9, 'himoon8', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (10, 'himoon9', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (11, 'himoon10', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (12, 'himoon11', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (13, 'himoon12', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (14, 'himoon13', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (15, 'himoon14', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (16, 'himoon15', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (17, 'himoon16', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (18, 'himoon17', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (19, 'himoon18', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (20, 'himoon19', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (21, 'himoon20', NULL, NULL, 1, NULL);


--
-- Data for Name: p; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.p VALUES ('John Doe', 25, 30, 70.5, 'A fitness enthusiast who loves weightlifting.', 1);
INSERT INTO public.p VALUES ('Jane Smith', 32, 40, 65.8, 'An avid traveler and food blogger.', 2);
INSERT INTO public.p VALUES ('Alex Carter', 28, 35, 80.2, 'A software engineer with a passion for AI.', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'hiplanet', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'hiplanet', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'hiplanet1', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'hiplanet2', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'hiplanet3', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'hiplanet4', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'hiplanet5', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'hiplanet6', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'hiplanet7', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'hiplanet8', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'hiplanet9', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'hiplanet10', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (13, 'hiplanet11', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (14, 'hiplanet12', NULL, NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'histar', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'histar1', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'histar2', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'histar3', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'histar4', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'histar5', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (7, 'histar6', NULL, NULL, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: p_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.p_p_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: p p_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.p
    ADD CONSTRAINT p_pkey PRIMARY KEY (p_id);


--
-- Name: p pc; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.p
    ADD CONSTRAINT pc UNIQUE (p_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy t; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT t UNIQUE (galaxy_id);


--
-- Name: star t1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT t1 UNIQUE (star_id);


--
-- Name: planet t2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT t2 UNIQUE (planet_id);


--
-- Name: moon t3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT t3 UNIQUE (moon_id);


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

