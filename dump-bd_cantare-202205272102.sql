--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-05-27 21:02:27

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

--
-- TOC entry 3354 (class 1262 OID 24600)
-- Name: bd_cantare; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE bd_cantare WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Paraguay.1252';


ALTER DATABASE bd_cantare OWNER TO postgres;

\connect bd_cantare

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 24686)
-- Name: artistas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artistas (
    art_id integer NOT NULL,
    art_nombre character varying,
    art_canciones character varying,
    art_fecha timestamp without time zone
);


ALTER TABLE public.artistas OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24685)
-- Name: artistas_art_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artistas_art_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artistas_art_id_seq OWNER TO postgres;

--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 215
-- Name: artistas_art_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artistas_art_id_seq OWNED BY public.artistas.art_id;


--
-- TOC entry 214 (class 1259 OID 24662)
-- Name: canciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.canciones (
    can_id integer NOT NULL,
    can_nombre character varying,
    can_fecha timestamp without time zone,
    can_comentario text,
    can_lyrics text,
    can_artista character varying
);


ALTER TABLE public.canciones OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24661)
-- Name: canciones_can_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.canciones_can_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.canciones_can_id_seq OWNER TO postgres;

--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 213
-- Name: canciones_can_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.canciones_can_id_seq OWNED BY public.canciones.can_id;


--
-- TOC entry 212 (class 1259 OID 24650)
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    ped_id integer NOT NULL,
    usu_id_pedido integer,
    ped_fecha timestamp without time zone
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24649)
-- Name: pedidos_ped_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_ped_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pedidos_ped_id_seq OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 211
-- Name: pedidos_ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_ped_id_seq OWNED BY public.pedidos.ped_id;


--
-- TOC entry 210 (class 1259 OID 24641)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    usu_codigo integer NOT NULL,
    usu_nombre character varying,
    usu_documento character varying,
    usu_telefono character varying,
    usu_email character varying,
    usu_pass character varying,
    usu_fecha timestamp without time zone,
    usu_token character varying
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24640)
-- Name: usuarios_usu_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_usu_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_usu_codigo_seq OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_usu_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_usu_codigo_seq OWNED BY public.usuarios.usu_codigo;


--
-- TOC entry 218 (class 1259 OID 24695)
-- Name: videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videos (
    vid_id integer NOT NULL,
    vid_nombre character varying,
    vid_fecha timestamp without time zone
);


ALTER TABLE public.videos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24694)
-- Name: videos_vid_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.videos_vid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_vid_id_seq OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 217
-- Name: videos_vid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.videos_vid_id_seq OWNED BY public.videos.vid_id;


--
-- TOC entry 3187 (class 2604 OID 24689)
-- Name: artistas art_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artistas ALTER COLUMN art_id SET DEFAULT nextval('public.artistas_art_id_seq'::regclass);


--
-- TOC entry 3186 (class 2604 OID 24665)
-- Name: canciones can_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.canciones ALTER COLUMN can_id SET DEFAULT nextval('public.canciones_can_id_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 24653)
-- Name: pedidos ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN ped_id SET DEFAULT nextval('public.pedidos_ped_id_seq'::regclass);


--
-- TOC entry 3184 (class 2604 OID 24644)
-- Name: usuarios usu_codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN usu_codigo SET DEFAULT nextval('public.usuarios_usu_codigo_seq'::regclass);


--
-- TOC entry 3188 (class 2604 OID 24698)
-- Name: videos vid_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos ALTER COLUMN vid_id SET DEFAULT nextval('public.videos_vid_id_seq'::regclass);


--
-- TOC entry 3346 (class 0 OID 24686)
-- Dependencies: 216
-- Data for Name: artistas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artistas (art_id, art_nombre, art_canciones, art_fecha) FROM stdin;
\.


--
-- TOC entry 3344 (class 0 OID 24662)
-- Dependencies: 214
-- Data for Name: canciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.canciones (can_id, can_nombre, can_fecha, can_comentario, can_lyrics, can_artista) FROM stdin;
16	Royals	2022-05-27 15:21:50.586	2019	I've never seen a diamond in the flesh \nI cut my teeth on wedding rings in the movies \nAnd I'm not proud of my address, \nIn the torn-up town, no post code envy \nBut every song's like gold teeth, grey goose, trippin' in the bathroom \n\nBlood stains, ball gowns, trashin' the hotel room, \n\nWe don't care, we're driving Cadillacs in our dreams. \n\nBut everybody's like crystal, Maybach, diamonds on your time piece. \n\nJet planes, islands, tigers on a gold leash. \n\nWe don't care, we aren't caught up in your love affair. \n\n\n\nAnd we'll never be royals (royals). \n\nIt don't run in our blood, \n\nThat kind of lux just ain't for us. \n\nWe crave a different kind of buzz. \n\nLet me be your ruler (ruler), \n\nYou can call me queen Bee \n\nAnd baby I'll rule, I'll rule, I'll rule, I'll rule. \n\nLet me live that fantasy. \n\n\n\nMy friends and I  we've cracked the code. \n\nWe count our dollars on the train to the party. \n\nAnd everyone who knows us knows that we're fine with this, \n\nWe didn't come for money. \n\n\n\nBut every song's like gold teeth, grey goose, trippin' in the bathroom. \n\nBlood stains, ball gowns, trashin' the hotel room, \n\nWe don't care, we're driving Cadillacs in our dreams. \n\nBut everybody's like crystal, Maybach, diamonds on your time piece. \n\nJet planes, islands, tigers on a gold leash \n\nWe don't care we aren't caught up in your love affair \n\n\n\nAnd we'll never be royals (royals). \n\nIt don't run in our blood \n\nThat kind of lux just ain't for us \n\nWe crave a different kind of buzz. \n\nLet me be your ruler (ruler), \n\nYou can call me queen Bee \n\nAnd baby I'll rule, I'll rule, I'll rule, I'll rule. \n\nLet me live that fantasy. \n\n\n\nOooh ooooh ohhh \n\nWe're bigger than we ever dreamed, \n\nAnd I'm in love with being queen. \n\nOooooh ooooh ohhhhh \n\nLife is game without a care \n\nWe aren't caught up in your love affair. \n\n\n\nAnd we'll never be royals (royals). \n\nIt don't run in our blood \n\nThat kind of lux just ain't for us \n\nWe crave a different kind of buzz \n\nLet me be your ruler (ruler), \n\nYou can call me queen Bee \n\nAnd baby I'll rule, I'll rule, I'll rule, I'll rule. \n\nLet me live that fantasy.	Lorde
17	Caro	2022-05-27 15:21:50.586		Paroles de la chanson Caro par Bad Bunny\r\nMe ven y me preguntan por qué visto caro, eh\n¿Tú no ves que yo soy caro?\nDe lejos se nota que mi flow es caro, eh\nQue con nadie me comparo\nYo le llego y normal, ey\nMe miran raro, eh\nPero a nada yo le paro\nYo sé cuánto valgo\nYo sé que soy caro, eh\nQue pa' ti soy caro\n\nAntes mami decía "Está to' caro", eh\nEso' tiempo' se acabaron\nYo soy como Durán, yo la cojo y va pa'l aro, prr\nComo si fueran disparo'\nLas regla' yo las rompo' y las reparo, eh\n\nYo sé que ese culo e' caro\nLo' mismo bebo Moët, eh\nQue bebo guaro\n"¿Tú ere'?" Otra ve' me preguntaron\n\nQué carajo' te importa a ti, ey\nCómo soy yo, ey\nQué digo yo, ey\nQué hago yo\nQué carajo' te importa a ti, ey\nCómo soy yo, ey\nQué digo yo, ey\nQué hago yo\nQue carajo te importa a ti\n\nVive tu vida, yo vivo la mía\nCriticar sin dar ejemplo, qué jodí'a manía\nPor sólo ser yo y no como se suponía\n\nHasta que nos dé pulmonía\nY aquel se encojonó porque no contesté, sorry\nNo quiero hablar con uste', eh\nYo tengo la salsa, también ballet\nPor eso cuando dejo la máquina en el valet\n\nMe ven y me preguntan por qué visto caro, eh\n¿Tú no ves que yo soy caro?\nDe lejos se nota que mi flow es caro, eh\nQue con nadie me comparo\nYo le llego y normal, ey\nMe miran raro, eh\nPero a nada yo le paro\nYo sé cuánto valgo\nYo sé que soy caro, eh\nQue pa' ti soy caro\n\n[Bad Bunny, Ricky Martin, Bad Bunny & Ricky Martin]\n\n¿Por qué no puedo ser así?\n¿En qué te hago daño a ti?\n¿En qué te hago daño a ti?\nYo solamente soy feliz\n¿Por qué no puedo ser así?\n¿En qué te hago daño a ti?\n¿En qué te hago daño a ti?\nY solamente soy feliz\nSolamente soy feliz\nSolamente soy feliz (Solamente)\nSolamente soy feliz (Solamente)\n\nY ser feliz nunca me ha salido caro, eh (No)\nAhora veo todo claro\nCon dinero y sin dinero, mi flow es caro, eh\nY con nadie me comparo\nHoy yo le llego y normal, eh\nMe miran raro, eh\n\nPero a nada yo le paro\nYo sé cuánto valgo, yo sé que soy caro, eh\nQue pa' ti soy caro, eh\n\nBad Bunny, baby, ba-, ba-\nWuh	Bad bunny
18	Fuego	2022-05-27 15:21:50.586		(Instrumental)\r\nSoy el fuego que...	Alok
20	Amorfoda	2022-05-27 15:21:50.586		No quiero que más nadie me hable de amor\r\nYa me cansé, to' esos trucos ya me los sé\r\nEsos dolores los pasé, yeh, yeh, yeh\r\nNo quiero que más nadie me hable de amor\r\nYa me cansé, to' esos trucos ya me los sé\r\nEsos dolores los pasé\n\n\n\nHoy te odio en el secreto, ante todo lo confieso\n\nSi pudiera te pidiera que devuelva' to' los besos que te di\n\nLa' palabra' y todo el tiempo que perdí\n\nMe arrepiento una y mil veces de haber confiao' en ti (huh)\n\nQuisiera que te sientas como yo me siento (siento)\n\nQuisiera ser como tú: sin sentimiento' (-miento)\n\nQuisiera sacarte de mi pensamiento (-miento)\n\nQuisiera cambiarle el final al cuento\n\nToas' las barras y los tragos han sido testigo'\n\nDel dolor que me causaste y to' lo que hiciste conmigo\n\nUn infeliz en el amor que aún no te supera\n\nY que ahora camina solo sin nadie por toas' las acera'\n\nPreguntándole a Dios si en verdad el amor existe\n\nY por qué si yo era tan bueno toa' esta mierda tú me hiciste (-ciste)\n\nLo más cabrón es que tú ve todo como un chiste\n\nSiempre voy a maldecir el día en que naciste\n\nLos chocolates que te di y todas las flores (-res)\n\nSe convierten hoy en día en pesadilla' y dolore'\n\nYo ya perdí la fe de que tú mejore' (-jore')\n\nSi después de la lluvia sale el arcoíri' pero sin colore', yeh\n\n\n\nNo quiero que más nadie me hable de amor\n\nYa me cansé, ya esos trucos ya me los sé\n\nEsos dolores los pasé, yeh, yeh, yeh\n\nNo quiero que más nadie me hable de amor\n\nYa me cansé, ya esos trucos ya me los sé\n\nEsos dolores los pasé, yeh, yeh, yeh	Bad Bunny
21	Como Mirarte	2022-05-27 15:21:50.586		No me salen las palabras, para expresarte que te quiero\r\nno sé cómo explicarte, que me haces sentir\r\ncomo si fuera el verano, y el invierno no existiera\r\ncomo se separa todo\r\ny con esa sonrisa que cambia la vida\r\nmiraste hacia aquí y ya no puedo contemplar\n\nque tú no seas la que me ama\n\n\n\nY como mirarte\n\nesos ojos que me dejan en enero\n\ncuando sé que no son míos y me muero\n\nel destino no nos quiere ver pasar ohh\n\ny como decirte \n\nque no quiero que este amor sea pasajero\n\nque de pronto se dé un día y yo te espero\n\nel destino no nos tiene que importar\n\n\n\nNo se cómo ser yo mismo si no estás al lado mío\n\nSe harán largos estos meses, si no estás junto a mí\n\nY con esa sonrisa \n\nque nunca se olvida llegaste y te vi \n\ny ya no puedo soportar \n\nque tu no seas la que me ama\n\n\n\nY como mirarte\n\nesos ojos que me dejan en enero\n\ncuando sé que no son míos y me muero\n\nel destino no nos quiere ver pasar ohh \n\ny como decirte \n\nque no quiero que este amor sea pasajero\n\nque de pronto se dé un día y yo te espero\n\nel destino no nos tiene que importar\n\n\n\nY como olvidarte \n\nsi la vida me enseño que vas primero \n\nno me importa la distancia yo te quiero \n\ny al final se que a mi lado vas a estar \n\nvoy a esperarte \n\ncuando se ama de verdad no existe el tiempo \n\ny te juro que no es el final del cuento \n\nel destino no nos puede separar \n\n\n\nComo mirarte ...	Sebastian Yatra
24	Otro trago	2022-05-27 15:21:50.586		Sigue aquí tomándose otro trago\r\nSu ex-novio con otra está (Ah-ah)\r\nLos amigos subieron un estado (Ah-ah)\r\nQue hoy de farra se van\r\nTe cambió siendo mejor que ella (No-no-no-no, oh-oh)\n\nPor mujeres y un par de botella' (No-no-no-no, oh-oh)\n\nPor amigos que no son amigos en verda' (Verda'; Ice)\n\nPorque sé que te van a escribir cuando él se va\n\n(Everybody go to the discotheque)\n\n\n\nY ahora a lo oscuro y sin disimulo (Eso e' así)\n\nOlvidando las pena', la pillé (Ah)\n\nAhora hace lo que quiere, cuando quiere (Oh-oh)\n\nY si no quiere, serás otro que se jode también (here we go)\n\n\n\nCuando el DJ pone la música (Eso e' así)\n\nElla baila como nunca (Pa' que sepa)\n\nY ahora a lo oscuro (Oh-oh), y sin disimulo (Oh-oh)\n\nOlvidando las pena', la pillé (Ra-ta-ta-tá)\n\n\n\nCuando el DJ pone la música\n\nElla baila como nunca (The real Rondo)\n\nAhora hace lo que quiere, cuando quiere\n\nY si no quiere, serás otro que se jode también\n\n(Oh-oh-oh; Stop that shit, nigga)\n\n\n\nAhora pa' ella los días son grise' (Eso e' así)\n\nPorque su' mañana' no son felice' (Ah)\n\nLo que eran beso', ahora son cicatrice' (Pa' que sepa)\n\nEstá soltera y pa' la calle dice (Ra-ta-ta-tá)\n\n\n\nDeja que yo te coja y te monte en la Mercede' roja (Eso e' así)\n\nVoy a que eso abajo se te moja (Se te moja; Ah)\n\nPa' que conmigo te sonroja' (here we go)\n\nNo trate todo lo malo te despoja\n\nHazle la maleti'\n\nQue hace tiempo que se olvidó de ti (Eso e' así)\n\n\n\nYo quiero financiarte, ma'\n\nYo quiero darte el peti' (Oh-oh)\n\nTú 'tás linda con tu cuerpecito petite (Ah)\n\nY esa barriguita con más cuadrito que tretis\n\nBaby, what you look?\n\n\n\nMañana, desayunamo' Fruity Loops (Oh my god)\n\nYo voy a darte y eso lo' sabe' tú (Ah)\n\nEntramo' al cuarto pero no apague la lu'\n\nQue yo vo' a castigarte e' por tu mala actitu' (Listen)\n\n\n\nCuando el DJ pone la música (Eso e' así)\n\nElla baila como nunca (Pa' que sepa)\n\nY ahora a lo oscuro (Oh-oh), y sin disimulo (Oh-oh)\n\nOlvidando las pena' la pillé\n\n\n\nCuando el DJ pone la música (Ra-ta-ta-tá)\n\nElla baila como nunca (The real Rondo)\n\nAhora hace lo que quiere, cuando quiere\n\nY si no quiere, serás otro que se jode también\n\n\n\nCuando el DJ pone la música, música (-Ca)\n\nElla se va hasta abajo con todo su can' (Woh-oh)\n\nAhora baila, fuma, toma sola\n\nLlega a la casa y no le dicen na'\n\n\n\nQué vida, pa' que nunca se la acabe a ella ('Tá)\n\n'Tá borracha pero pide otra botella (Oh-oh-oh)\n\nEs que a esa hora tiene la nota en alta\n\nLa felicidad en ella resalta\n\n\n\nY ahora a lo oscuro y sin disimulo (Eso e' así)\n\nOlvidando las pena', la pillé (Ah)\n\nAhora hace lo que quiere, cuando quiere (Oh-oh)\n\nY si no quiere, serás otro que se jode también (here we go)\n\n\n\nCuando el DJ pone la música (Eso e' así)\n\nElla baila como nunca (Pa' que sepa)\n\nY ahora a lo oscuro (Oh-oh), y sin disimulo (Oh-oh)\n\nOlvidando las pena', la pillé\n\n\n\nCuando el DJ pone la música (Ra-ta-ta-tá)\n\nElla baila como nunca (The real Rondo)\n\nAhora hace lo que quiere, cuando quiere\n\nY si no quiere, serás ese otro que se jode también\n\n(Oh-oh-oh; Stop that shit, nigga)	Sech
25	Moscow Mule	2022-05-27 15:21:50.586		Si yo no te escribo, tú no me escribe', ey\r\nSi tú quieres, te busco, yo sé dónde tú vive'\r\nQuizá hoy está aborrecía'\r\nPero por dentro tú tiene' alegría\r\nSi quieres te la saco\n\nDos trago' y sabes que me pongo bellaco\n\nNo somo' na', pero estamo' envuelto' hace rato, oh-oh\n\nWhatsApp sin el retrato, no guarda mi contacto (Ey, ey, ey, ey)\n\nPero se la saco\n\nDos trago' y sabes que me pongo bellaco\n\nNo somo' na', pero estamo' envuelto' hace rato, oh-oh\n\nWhatsApp sin el retrato, no guarda mi contacto-to\n\n\n\nTodo e' underwater (Ey)\n\nBaby, vamo' pa'l cuarto quarter\n\nEn la Uru' comiéndono' el pate\n\nTe vo'a dar duro pa' que no me compare'\n\nEy, cuida'o con ese mahón, que se va a romper (Ey)\n\nEse booty lo va a romper (Ey)\n\nYo no sé si yo te vuelvo a ver\n\nSi mañana me vo'a perder\n\nTú ere' una player, me hiciste un crossover\n\nEsta ve' metiste, me diste game over, eh-eh (Huh)\n\nPorque no puedo olvidar\n\nEl perreo aquel, que se fue viral\n\nDime si mañana te va' a quedar\n\nDespués de la alarma te lo voy a dar\n\nEy, hoy tú no va' a trabajar, jeje, no\n\n\n\nSi quieres te la saco\n\nDos trago' y sabes que me pongo bellaco\n\nNo somo' na', pero estamo' envuelto' hace rato, oh-oh\n\nWhatsApp sin el retrato, no guarda mi contacto\n\nPero se la saco\n\nDos trago' y sabes que me pongo bellaco\n\nNo somo' na', pero estamo' envuelto' hace rato, oh-oh\n\nWhatsApp sin el retrato, no guarda mi contacto\n\n\n\nMe gustan así, piquetúa\n\nMami, qué rica te ve' esnúa'\n\nQuizás no sentiste lo que yo sentí\n\nPero aún te debo una noche en la suite\n\nPa' darte tabla, dale, mami, habla\n\nTú ere' una diablona, no te haga'\n\nPa' darte tabla, dale, mami, habla\n\nTú ere' una diablona, no te haga'\n\n\n\nNo, no, no, no (No, no, no, no)\n\nNo, no, no, no (No, no, no, no)\n\nNo, no, no, no (No, no, no, no)\n\nEy, yo no sé tú, pero yo quisiera amanecer esnú'\n\nEn una playa por Balí, si no, Cancún\n\nPide otro moscow mule (Ey)\n\n\n\nQue ando en nota, nota\n\nVen y choca\n\nConmigo que se joda\n\nBaby, tú 'tás grandota\n\nPero hoy ando en nota, nota\n\nVen y choca\n\nConmigo que se joda, eh\n\nQue se joda, ey\n\n\n\nMami, tú quieres perreo (Tú quieres perreo)\n\nTú quieres perreo (Tú quieres perreo)\n\nTú quieres bellaqueo (Tú quieres bellaqueo)\n\nTú quieres bellaqueo (Tú quieres bellaqueo)\n\nMami, tú quieres perreo (Tú quieres perreo)\n\nTú quieres perreo (Tú quieres perreo)\n\nTú quieres bellaqueo (Tú quieres bellaqueo)\n\nTú quieres bellaqueo (Tú quieres bellaqueo)	Bad Bunny
26	Pepas	2022-05-27 15:21:50.586		Paroles de la chanson Pepas par Farruko\r\nNo me importa lo que de mí se diga\nViva usted su vida, que yo vivo la mía\nQue solo e' una, disfruta el momento\nQue el tiempo se acaba y pa'trás no vira\n\nBebiendo, fumando y jodiendo\nSigo vacilando de party to' los día'\nY síguelo, oh-oh-oh, oh-oh-oh, oh-oh (¡Farru!)\nSíguelo, oh-oh-oh, oh-oh-oh, oh-oh (La rola y pepa)\n\nPepa' y agua pa' la seca\nTo' el mundo en pastilla en la discoteca\nPepa' y agua pa' la seca\nTo' el mundo en pastilla en la discoteca\n\n\nDesacata'o\nEmpastilla'o\n(Qué maldita nota)\n(Arcoíris)\n¡Fa-Farru!\n\nSube las mano' y las botella' pa' arriba (¡Blep!)\nSiempre la movie la tenemo' prendía'\nHoy vamo' a darle hasta que se haga de día\nSigo rulin, 'toy en la mía\n\nSalió el sol, wol (Sol)\nTráeme la hookah y el alcohol (Y el alcohol)\nY préndelo, oh-oh, woh-oh-oh (Woh-oh)\nEsto se salió de control (De control)\nY síguelo, oh-oh-oh, oh-oh-oh, oh-oh (La rola y pepa)\n\n\nPepa' y agua pa' la seca\nTo' el mundo en pastilla en la discoteca (Desacata'o)\nPepa' y agua pa' la seca\nTo' el mundo en pastilla en la discoteca (Empastilla'o)\n\n¡Blep!\n¡Fa-Farru!\n(Qué maldita nota)\n(Arcoíris)\n\nNo me importa lo que de mí se diga\nVida usted su vida, que yo vivo la mía\nQue solo e' una, disfruta el momento\nQue el tiempo se acaba y pa'trás no vira\n\n\nBebiendo, fumando y jodiendo\nSigo vacilando de party to' los día'\nY síguelo, oh-oh-oh, oh-oh-oh, oh-oh (¡Farru!)\nSíguelo, oh-oh-oh, oh-oh-oh, oh-oh (La rola y pepa)\n\nPepa' y agua pa' la seca\nTo' el mundo en pastilla en la discoteca\nPepa' y agua pa' la seca\nTo' el mundo en pastilla en la discoteca\n\nDesacata'o\nEmpastilla'o\n(Qué maldita nota)\n(Arcoíris)\n¡Fa-Farru!\n\nDímelo, Chino\n\nThe Most Winning\nVictor Cárdenas\nWhite Star\nSharo Towers\nLa 167\nLa 167	Farruko
27	Creo en ti	2022-05-27 22:33:52.856		Ya no importa cada noche que esperé,\r\ncada calle o laberinto que crucé,\r\nporque el cielo ha conspirado a mi favor,\r\ny a un segundo de rendirme te encontré.\r\nPiel con piel,\n\nel corazón se me desarma,\n\nme haces bien,\n\nenciendes luces en mi alma.\n\n\n\nCreo en ti, y en este amor,\n\nque me vuelve indestructible,\n\nque detuvo mi caida libre,\n\ncreo en ti, y mi dolor,\n\nse quedó kilómetros atrás,\n\nmis fantasmas hoy por fin están en paz.\n\n\n\nEl pasado es un mal sueño que acabó,\n\nun incendio que en tus brazos se apagó,\n\ncuando estaba a medio paso de caer,\n\nmis silencios se encontraron con tu voz,\n\nte segui y reescribiste mi futuro,\n\nes aquí mi único lugar seguro.\n\n\n\nCreo en ti, y en este amor,\n\nque me vuelve indestructible,\n\nque detuvo mi caida libre,\n\ncreo en ti, y mi dolor,\n\nse quedó kilómetros atrás,\n\nmis fantasmas hoy por fin están en paz.\n\n\n\n\n\n(Gracias a Uzz Ra por esta letra)	Reik
22	No Me doy por vencido	2022-05-27 15:21:50.586		Paroles de la chanson No Me Doy Por Vencido par Luis Fonsi\r\nSong: 'No Me Doy Por Vencido' \n\nOriginal Artist: Luis Fonsi \n\nSongwriters: Lusi Fonsi / Claudia Brant \n\nSAMP control: 100% \n\n'No Me Doy Por Vencido' remained in the coveted #1 spot of Billboardï¿½s Hot Latin Songs chart a staggering 19 weeks, a feat equaled by only 5 song in the chartï¿½s entire 20 year history ï¿½ in total, the song spent 49 weeks on this chart, and went on to be named the 2009 ASCAP Latin Song of the Year. \n\nLuis Fonsi is a consolidated Latin artist and an accomplished songwriter whose beautiful songs and poignant voice have garnered him multiple awards and nominations including Grammy, ASCAP, Billboard, Premios Juventud and more. Over the span of his career, Fonsi has recorded and released seven studio albums including one in English.	Luis Fonsi
28	Diles	2022-05-27 23:29:18.126	Esta es mi prueba	Prende otro phillie bebé\r\nQue ya mismo éste se apaga\r\nVamos para el cuarto polvo\r\nYa esto es una saga\r\nDice que le gusta hacerlo con mis temas de trap\r\nY si te preguntan por qué pa' el sexo yo soy tu fav\n\n\n\nDiles, que yo me se tus poses favoritas\n\nQue te hablo malo y que eso te excita\n\nQue te hago todo lo que necesitas\n\nPa' hacerte venir\n\n\n\nDiles, que yo me se tus poses favoritas\n\nQue te hablo malo y que eso te excita\n\nQue te hago todo lo que necesitas\n\nPa' hacerte venir\n\n\n\nVamos a hacerlo dentro del carro y pichea el hotel\n\nQue tengo ganas bebé y no hay tiempo para perder\n\nCristales tintiao', nadie nos va a ver\n\nEstamos bellacos y queremos meter\n\nTu y yo solitos dale apaga el cel\n\nQue te voy a hacer lo que no te hace él\n\nY wow! Los cristales del carro se empañan\n\nTu carita de angel me engaña\n\nYo soy sano pero tu me dañas\n\nY wow! Prendi un kreepy y se puso lucia\n\nMe dio un blowjob mientras conducia\n\nSe trepo y me seducia\n\nDiles a estos bobos que no se comparen\n\nSi ellos son Lexus, yo soy un McLaren\n\nSiempre de Polo Ralph Lauren\n\nCon gotas pa' que los ojos se aclaren\n\nEl aire prendido y como quiera hace calor\n\nSi te preguntan por qué es que yo te chingo mejor, baby...\n\n\n\nDiles, que yo me se tus poses favoritas\n\nQue te hablo malo y que eso te excita\n\nQue te hago todo lo que necesitas\n\nPa' hacerte venir\n\n\n\nDiles, que yo me se tus poses favoritas\n\nQue te hablo malo y que eso te excita\n\nQue te hago todo lo que necesitas\n\nPa' hacerte venir\n\n\n\nTu y yo haciéndolo nos vemos cabron\n\nDale bebé, quitate el mahon\n\nQue ya yo eché pa' tras el sillon\n\nVamo' a hacerlo en el capsulon\n\nSe transforma cuando ella ve humo (cuando ella ve humo!)\n\nMe dice que como yo no hay ninguno (Woh!)\n\nNunca quiere que esto se termine\n\nPero después de dos horas pregunta que si ya me vine\n\nHacemos de to', nunca te limitas\n\nTu misma lo pones, me lo facilitas\n\nMe encanta cuando me aruñas y me gritas\n\nMe encanta que dures, nunca te me quitas\n\nHot pants de Victoria's, conmigo los estrena\n\nBesos, mordidas, palabras obscenas\n\nElla no es actriz porno, pero conmigo hace pal' de escenas\n\nElla fuma y chinga desde la high\n\nSiempre jangueando a escondidas del pai'\n\nTiene un mahon que no es de su size\n\nY yo loco de hacerle un creampie\n\nTodos le tiran, pero siempre en vano\n\nTodos le tiran, pero yo soy el que siempre le gano\n\n\n\nDiles, que yo me se tus poses favoritas\n\nQue te hablo malo y que eso te excita\n\nQue te hago todo lo que necesitas\n\nPa' hacerte venir\n\n\n\nDiles, que yo me se tus poses favoritas\n\nQue te hablo malo y que eso te excita\n\nQue te hago todo lo que necesitas\n\nPa' hacerte venir	Bad bunny
29	Ojitos lindos	2022-05-27 23:57:02.616		Hace mucho tiempo no le hago caso al corazón\r\nY pasan los día', los mese’ pensando en to' lo' (En to’ lo', en to' lo')\r\nHa llegado el tiempo para usar la razón\r\nAntes que sea tarde y sin querer me parta en do' (Parta en do')\r\nAntes de que salga el sol, pisa el acelerador\n\nAunque vaya sin freno' y pierda el control\n\nNada más'seremos do’, tú y yo acariciándono’\n\nEn medio del tiempo, sin decir adió'\n\n\n\nY solo mírame con esos ojito’ lindo'\n\nQue con eso' yo también he vuеlto a nacer\n\n\n\nHace tiempo (Tiеmpo) que no agarro a nadie de la mano (Mano)\n\nHace tiempo (Tiempo) que no envío "buenos días, te amo" (Te amo)\n\nPero, tú me tienes enreda'o, me envolví\n\nIba por mi camino y me perdí (Ey, ey)\n\nMi mirada cambió cuando tus ojos vi (Tus ojos vi)\n\nBye-bye a los culo’, ni me despedí\n\nYo no te busqué, no, chocamo' en el trayecto\n\nCon tu alma en la calle conecto (-necto)\n\nTranquila, no tiene que ser perfecto, no\n\nAquí no existe el pecado y equivocarse es bonito\n\nLos errore' son placere', igual que to' tus besito'\n\n\n\nY solo mírame con esos ojito' lindo'\n\nQue con eso' yo también he vuelto a nacer\n\nY solo mírame con esos ojito' lindo'\n\nQue con eso' yo también he vuelto a nacer\n\n\n\nTú y yo, tú y yo, tú y yo\n\nTú y yo, tú y yo\n\nTú y yo, tú y yo, tú y yo\n\nTú y yo, tú y yo\n\nTú y yo, tú y yo\n\nTú y yo, tú y yo\n\n\n\nYo no me dejo llevar de nadie\n\nYo solo me dejo llevar de tu sonrisa\n\nY del lunar cerquita de tu boca\n\nSi yo 'toy loco, tú estás loquita\n\nPero, baby, como tú no hay otra, no\n\nQuiero regalarte girasole'\n\nIr pa' la playa y buscarte caracole'\n\nCuando estoy contigo, yo no miro el Role'\n\nVamo' a bailar doscientas cancione'\n\nNadie me pone como tú me pone' (Pone')\n\nMm-mmm, mm-mmm-mmm-mmm\n\nMm-mmm, mm-mmm-mmm-mmm\n\nYo le hablo a Dio' y tú ere' su respuesta\n\nAprendí que los momento' lindo' nunca cuestan\n\nComo cuando me regalas tu mirada\n\nY el sol su puesta (Ey), y el sol su puesta (Ey)\n\nCuando estoy encima de ti, de ti\n\nMami, yo me olvido de to', de to'\n\nNo hace falta nadie aquí\n\nSolamente tú y yo\n\n\n\nAntes de que salga el sol, pisa el acelerador\n\nAunque vaya sin freno' y pierda el control\n\nNada más seremos do', tú y yo acariciándono'\n\nEn medio del tiempo, sin decir adió'\n\n\n\nY solo mírame con esos ojito' lindo'\n\nQue con eso' yo también he vuelto a nacer\n\nY solo mírame con esos ojito' lindo'\n\nQue con eso' yo también he vuelto a nacer	Bad bunny
\.


--
-- TOC entry 3342 (class 0 OID 24650)
-- Dependencies: 212
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (ped_id, usu_id_pedido, ped_fecha) FROM stdin;
\.


--
-- TOC entry 3340 (class 0 OID 24641)
-- Dependencies: 210
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (usu_codigo, usu_nombre, usu_documento, usu_telefono, usu_email, usu_pass, usu_fecha, usu_token) FROM stdin;
26	test	12342	1231234	asdf	123	\N	\N
27	Test	4880887	0975147852	test@gmail.com	123	\N	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VfZW1haWwiOiJ0ZXN0QGdtYWlsLmNvbSIsInVzdV9jb2RpZ28iOjI3LCJpYXQiOjE2NTM2OTYxMDZ9.zOM6OUHMDaXcH_P_yFMliNIWhZt0jMqjyOqLwHT7dMw
18	juan	32132	3213213	asdfsadf	123	\N	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3Vfbm9tYnJlIjoianVhbiIsInVzdV9jb2RpZ28iOjE4LCJpYXQiOjE2NTM1MzMwNDQsImV4cCI6MzAwMDE2NTM1MzMwNDR9.-zcJp0YLkTrqo7tinRWpGz-HxaASu1nFqqpWqlP0FN8
6	pedro	234234234	23423455	caceres@gmail.com	123	\N	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3Vfbm9tYnJlIjoicGVkcm8iLCJ1c3VfY29kaWdvIjo2LCJpYXQiOjE2NTM1MzQyNjAsImV4cCI6MTY1MzUzNDI5MH0.EKzVaXo5qgSeXAqjVBq7iWymKBNy4SYHFHJ6HyhNYNw
16	saida pereira	488223565	213832321	a@a.com	123	\N	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VfZW1haWwiOiJhQGEuY29tIiwidXN1X2NvZGlnbyI6MTYsImlhdCI6MTY1MzYxODQzOH0.3hU5njGaSXn0VM8YxUb0Nau34AMyiYfBI7bL4JGsNTM
19	perlalkll	32132	3213213	asdfsadf	123	\N	
\.


--
-- TOC entry 3348 (class 0 OID 24695)
-- Dependencies: 218
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.videos (vid_id, vid_nombre, vid_fecha) FROM stdin;
\.


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 215
-- Name: artistas_art_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artistas_art_id_seq', 1, false);


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 213
-- Name: canciones_can_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.canciones_can_id_seq', 29, true);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 211
-- Name: pedidos_ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_ped_id_seq', 1, false);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_usu_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_usu_codigo_seq', 27, true);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 217
-- Name: videos_vid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.videos_vid_id_seq', 1, false);


--
-- TOC entry 3196 (class 2606 OID 24693)
-- Name: artistas artistas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artistas
    ADD CONSTRAINT artistas_pkey PRIMARY KEY (art_id);


--
-- TOC entry 3194 (class 2606 OID 24669)
-- Name: canciones canciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.canciones
    ADD CONSTRAINT canciones_pkey PRIMARY KEY (can_id);


--
-- TOC entry 3192 (class 2606 OID 24655)
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (ped_id);


--
-- TOC entry 3190 (class 2606 OID 24648)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usu_codigo);


--
-- TOC entry 3198 (class 2606 OID 24702)
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (vid_id);


--
-- TOC entry 3199 (class 2606 OID 24656)
-- Name: pedidos pedidos_usu_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_usu_id_pedido_fkey FOREIGN KEY (usu_id_pedido) REFERENCES public.usuarios(usu_codigo);


-- Completed on 2022-05-27 21:02:28

--
-- PostgreSQL database dump complete
--

