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
    guesses integer DEFAULT 0 NOT NULL
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

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3);
INSERT INTO public.games VALUES (2, 31, 1);
INSERT INTO public.games VALUES (3, 31, 1);
INSERT INTO public.games VALUES (4, 32, 1);
INSERT INTO public.games VALUES (5, 32, 1);
INSERT INTO public.games VALUES (6, 31, 1);
INSERT INTO public.games VALUES (7, 31, 1);
INSERT INTO public.games VALUES (8, 31, 1);
INSERT INTO public.games VALUES (9, 33, 91);
INSERT INTO public.games VALUES (10, 33, 758);
INSERT INTO public.games VALUES (11, 34, 902);
INSERT INTO public.games VALUES (12, 34, 325);
INSERT INTO public.games VALUES (13, 33, 248);
INSERT INTO public.games VALUES (14, 33, 1);
INSERT INTO public.games VALUES (15, 33, 700);
INSERT INTO public.games VALUES (16, 26, 1);
INSERT INTO public.games VALUES (17, 26, 1);
INSERT INTO public.games VALUES (18, 35, 3);
INSERT INTO public.games VALUES (19, 26, 3);
INSERT INTO public.games VALUES (20, 26, 1);
INSERT INTO public.games VALUES (21, 36, 481);
INSERT INTO public.games VALUES (22, 36, 856);
INSERT INTO public.games VALUES (23, 37, 451);
INSERT INTO public.games VALUES (24, 37, 482);
INSERT INTO public.games VALUES (25, 36, 545);
INSERT INTO public.games VALUES (26, 36, 199);
INSERT INTO public.games VALUES (27, 36, 266);
INSERT INTO public.games VALUES (28, 38, 3);
INSERT INTO public.games VALUES (29, 39, 645);
INSERT INTO public.games VALUES (30, 39, 430);
INSERT INTO public.games VALUES (31, 40, 828);
INSERT INTO public.games VALUES (32, 40, 563);
INSERT INTO public.games VALUES (33, 39, 928);
INSERT INTO public.games VALUES (34, 39, 336);
INSERT INTO public.games VALUES (35, 39, 984);
INSERT INTO public.games VALUES (36, 41, 247);
INSERT INTO public.games VALUES (37, 41, 702);
INSERT INTO public.games VALUES (38, 42, 909);
INSERT INTO public.games VALUES (39, 42, 404);
INSERT INTO public.games VALUES (40, 41, 537);
INSERT INTO public.games VALUES (41, 41, 857);
INSERT INTO public.games VALUES (42, 41, 144);
INSERT INTO public.games VALUES (43, 26, 5);
INSERT INTO public.games VALUES (44, 44, 806);
INSERT INTO public.games VALUES (45, 44, 731);
INSERT INTO public.games VALUES (46, 45, 677);
INSERT INTO public.games VALUES (47, 45, 201);
INSERT INTO public.games VALUES (48, 44, 729);
INSERT INTO public.games VALUES (49, 44, 613);
INSERT INTO public.games VALUES (50, 44, 374);
INSERT INTO public.games VALUES (51, 46, 176);
INSERT INTO public.games VALUES (52, 46, 668);
INSERT INTO public.games VALUES (53, 47, 339);
INSERT INTO public.games VALUES (54, 47, 551);
INSERT INTO public.games VALUES (55, 46, 495);
INSERT INTO public.games VALUES (56, 46, 858);
INSERT INTO public.games VALUES (57, 46, 871);
INSERT INTO public.games VALUES (58, 48, 569);
INSERT INTO public.games VALUES (59, 48, 978);
INSERT INTO public.games VALUES (60, 49, 497);
INSERT INTO public.games VALUES (61, 49, 786);
INSERT INTO public.games VALUES (62, 48, 734);
INSERT INTO public.games VALUES (63, 48, 547);
INSERT INTO public.games VALUES (64, 48, 436);
INSERT INTO public.games VALUES (65, 50, 881);
INSERT INTO public.games VALUES (66, 50, 763);
INSERT INTO public.games VALUES (67, 51, 750);
INSERT INTO public.games VALUES (68, 51, 180);
INSERT INTO public.games VALUES (69, 50, 86);
INSERT INTO public.games VALUES (70, 50, 995);
INSERT INTO public.games VALUES (71, 50, 850);
INSERT INTO public.games VALUES (72, 52, 561);
INSERT INTO public.games VALUES (73, 52, 996);
INSERT INTO public.games VALUES (74, 53, 139);
INSERT INTO public.games VALUES (75, 53, 772);
INSERT INTO public.games VALUES (76, 52, 809);
INSERT INTO public.games VALUES (77, 52, 548);
INSERT INTO public.games VALUES (78, 52, 990);
INSERT INTO public.games VALUES (79, 26, 10);
INSERT INTO public.games VALUES (80, 54, 10);
INSERT INTO public.games VALUES (81, 54, 661);
INSERT INTO public.games VALUES (82, 55, 587);
INSERT INTO public.games VALUES (83, 55, 799);
INSERT INTO public.games VALUES (84, 54, 881);
INSERT INTO public.games VALUES (85, 54, 73);
INSERT INTO public.games VALUES (86, 54, 393);
INSERT INTO public.games VALUES (87, 56, 157);
INSERT INTO public.games VALUES (88, 56, 323);
INSERT INTO public.games VALUES (89, 57, 996);
INSERT INTO public.games VALUES (90, 57, 231);
INSERT INTO public.games VALUES (91, 56, 990);
INSERT INTO public.games VALUES (92, 56, 147);
INSERT INTO public.games VALUES (93, 56, 424);
INSERT INTO public.games VALUES (94, 58, 848);
INSERT INTO public.games VALUES (95, 58, 281);
INSERT INTO public.games VALUES (96, 59, 485);
INSERT INTO public.games VALUES (97, 59, 988);
INSERT INTO public.games VALUES (98, 58, 989);
INSERT INTO public.games VALUES (99, 58, 891);
INSERT INTO public.games VALUES (100, 58, 107);
INSERT INTO public.games VALUES (101, 60, 211);
INSERT INTO public.games VALUES (102, 60, 735);
INSERT INTO public.games VALUES (103, 61, 333);
INSERT INTO public.games VALUES (104, 61, 516);
INSERT INTO public.games VALUES (105, 60, 40);
INSERT INTO public.games VALUES (106, 60, 988);
INSERT INTO public.games VALUES (107, 60, 699);
INSERT INTO public.games VALUES (108, 62, 413);
INSERT INTO public.games VALUES (109, 62, 501);
INSERT INTO public.games VALUES (110, 63, 993);
INSERT INTO public.games VALUES (111, 63, 50);
INSERT INTO public.games VALUES (112, 62, 162);
INSERT INTO public.games VALUES (113, 62, 690);
INSERT INTO public.games VALUES (114, 62, 140);
INSERT INTO public.games VALUES (115, 64, 209);
INSERT INTO public.games VALUES (116, 64, 281);
INSERT INTO public.games VALUES (117, 65, 211);
INSERT INTO public.games VALUES (118, 65, 464);
INSERT INTO public.games VALUES (119, 64, 621);
INSERT INTO public.games VALUES (120, 64, 989);
INSERT INTO public.games VALUES (121, 64, 73);
INSERT INTO public.games VALUES (122, 66, 680);
INSERT INTO public.games VALUES (123, 66, 990);
INSERT INTO public.games VALUES (124, 67, 361);
INSERT INTO public.games VALUES (125, 67, 76);
INSERT INTO public.games VALUES (126, 66, 249);
INSERT INTO public.games VALUES (127, 66, 865);
INSERT INTO public.games VALUES (128, 66, 278);
INSERT INTO public.games VALUES (129, 68, 943);
INSERT INTO public.games VALUES (130, 68, 322);
INSERT INTO public.games VALUES (131, 69, 146);
INSERT INTO public.games VALUES (132, 69, 880);
INSERT INTO public.games VALUES (133, 68, 906);
INSERT INTO public.games VALUES (134, 68, 788);
INSERT INTO public.games VALUES (135, 68, 362);
INSERT INTO public.games VALUES (136, 70, 776);
INSERT INTO public.games VALUES (137, 70, 428);
INSERT INTO public.games VALUES (138, 71, 738);
INSERT INTO public.games VALUES (139, 71, 532);
INSERT INTO public.games VALUES (140, 70, 507);
INSERT INTO public.games VALUES (141, 70, 175);
INSERT INTO public.games VALUES (142, 70, 260);
INSERT INTO public.games VALUES (143, 72, 828);
INSERT INTO public.games VALUES (144, 72, 796);
INSERT INTO public.games VALUES (145, 73, 312);
INSERT INTO public.games VALUES (146, 73, 966);
INSERT INTO public.games VALUES (147, 72, 435);
INSERT INTO public.games VALUES (148, 72, 846);
INSERT INTO public.games VALUES (149, 72, 895);
INSERT INTO public.games VALUES (150, 74, 940);
INSERT INTO public.games VALUES (151, 74, 908);
INSERT INTO public.games VALUES (152, 75, 334);
INSERT INTO public.games VALUES (153, 75, 593);
INSERT INTO public.games VALUES (154, 74, 638);
INSERT INTO public.games VALUES (155, 74, 162);
INSERT INTO public.games VALUES (156, 74, 24);
INSERT INTO public.games VALUES (157, 76, 551);
INSERT INTO public.games VALUES (158, 76, 642);
INSERT INTO public.games VALUES (159, 77, 406);
INSERT INTO public.games VALUES (160, 77, 27);
INSERT INTO public.games VALUES (161, 76, 447);
INSERT INTO public.games VALUES (162, 76, 888);
INSERT INTO public.games VALUES (163, 76, 445);
INSERT INTO public.games VALUES (164, 78, 195);
INSERT INTO public.games VALUES (165, 78, 721);
INSERT INTO public.games VALUES (166, 79, 933);
INSERT INTO public.games VALUES (167, 79, 173);
INSERT INTO public.games VALUES (168, 78, 694);
INSERT INTO public.games VALUES (169, 78, 131);
INSERT INTO public.games VALUES (170, 78, 5);
INSERT INTO public.games VALUES (171, 80, 136);
INSERT INTO public.games VALUES (172, 80, 353);
INSERT INTO public.games VALUES (173, 81, 251);
INSERT INTO public.games VALUES (174, 81, 868);
INSERT INTO public.games VALUES (175, 80, 239);
INSERT INTO public.games VALUES (176, 80, 733);
INSERT INTO public.games VALUES (177, 80, 523);
INSERT INTO public.games VALUES (178, 82, 652);
INSERT INTO public.games VALUES (179, 82, 594);
INSERT INTO public.games VALUES (180, 83, 571);
INSERT INTO public.games VALUES (181, 83, 385);
INSERT INTO public.games VALUES (182, 82, 398);
INSERT INTO public.games VALUES (183, 82, 714);
INSERT INTO public.games VALUES (184, 82, 560);
INSERT INTO public.games VALUES (185, 84, 946);
INSERT INTO public.games VALUES (186, 84, 175);
INSERT INTO public.games VALUES (187, 85, 481);
INSERT INTO public.games VALUES (188, 85, 517);
INSERT INTO public.games VALUES (189, 84, 903);
INSERT INTO public.games VALUES (190, 84, 892);
INSERT INTO public.games VALUES (191, 84, 593);
INSERT INTO public.games VALUES (192, 86, 270);
INSERT INTO public.games VALUES (193, 86, 26);
INSERT INTO public.games VALUES (194, 87, 770);
INSERT INTO public.games VALUES (195, 87, 13);
INSERT INTO public.games VALUES (196, 86, 428);
INSERT INTO public.games VALUES (197, 86, 126);
INSERT INTO public.games VALUES (198, 86, 70);
INSERT INTO public.games VALUES (199, 88, 684);
INSERT INTO public.games VALUES (200, 88, 132);
INSERT INTO public.games VALUES (201, 89, 510);
INSERT INTO public.games VALUES (202, 89, 159);
INSERT INTO public.games VALUES (203, 88, 558);
INSERT INTO public.games VALUES (204, 88, 26);
INSERT INTO public.games VALUES (205, 88, 381);
INSERT INTO public.games VALUES (206, 90, 857);
INSERT INTO public.games VALUES (207, 90, 659);
INSERT INTO public.games VALUES (208, 91, 967);
INSERT INTO public.games VALUES (209, 91, 736);
INSERT INTO public.games VALUES (210, 90, 340);
INSERT INTO public.games VALUES (211, 90, 387);
INSERT INTO public.games VALUES (212, 90, 616);
INSERT INTO public.games VALUES (213, 26, 15);
INSERT INTO public.games VALUES (214, 92, 128);
INSERT INTO public.games VALUES (215, 92, 983);
INSERT INTO public.games VALUES (216, 93, 574);
INSERT INTO public.games VALUES (217, 93, 194);
INSERT INTO public.games VALUES (218, 92, 853);
INSERT INTO public.games VALUES (219, 92, 510);
INSERT INTO public.games VALUES (220, 92, 731);
INSERT INTO public.games VALUES (221, 26, 2);
INSERT INTO public.games VALUES (222, 94, 844);
INSERT INTO public.games VALUES (223, 94, 880);
INSERT INTO public.games VALUES (224, 95, 412);
INSERT INTO public.games VALUES (225, 95, 473);
INSERT INTO public.games VALUES (226, 94, 997);
INSERT INTO public.games VALUES (227, 94, 226);
INSERT INTO public.games VALUES (228, 94, 58);
INSERT INTO public.games VALUES (229, 96, 782);
INSERT INTO public.games VALUES (230, 96, 527);
INSERT INTO public.games VALUES (231, 97, 757);
INSERT INTO public.games VALUES (232, 97, 780);
INSERT INTO public.games VALUES (233, 96, 984);
INSERT INTO public.games VALUES (234, 96, 36);
INSERT INTO public.games VALUES (235, 96, 293);
INSERT INTO public.games VALUES (236, 26, 1);
INSERT INTO public.games VALUES (237, 98, 410);
INSERT INTO public.games VALUES (238, 98, 113);
INSERT INTO public.games VALUES (239, 99, 854);
INSERT INTO public.games VALUES (240, 99, 919);
INSERT INTO public.games VALUES (241, 98, 686);
INSERT INTO public.games VALUES (242, 98, 623);
INSERT INTO public.games VALUES (243, 98, 367);
INSERT INTO public.games VALUES (244, 100, 659);
INSERT INTO public.games VALUES (245, 100, 215);
INSERT INTO public.games VALUES (246, 101, 378);
INSERT INTO public.games VALUES (247, 101, 827);
INSERT INTO public.games VALUES (248, 100, 153);
INSERT INTO public.games VALUES (249, 100, 530);
INSERT INTO public.games VALUES (250, 100, 408);
INSERT INTO public.games VALUES (251, 102, 759);
INSERT INTO public.games VALUES (252, 102, 159);
INSERT INTO public.games VALUES (253, 103, 503);
INSERT INTO public.games VALUES (254, 103, 417);
INSERT INTO public.games VALUES (255, 102, 777);
INSERT INTO public.games VALUES (256, 102, 405);
INSERT INTO public.games VALUES (257, 102, 211);
INSERT INTO public.games VALUES (258, 104, 785);
INSERT INTO public.games VALUES (259, 104, 567);
INSERT INTO public.games VALUES (260, 105, 761);
INSERT INTO public.games VALUES (261, 105, 554);
INSERT INTO public.games VALUES (262, 104, 389);
INSERT INTO public.games VALUES (263, 104, 769);
INSERT INTO public.games VALUES (264, 104, 963);
INSERT INTO public.games VALUES (265, 106, 677);
INSERT INTO public.games VALUES (266, 106, 460);
INSERT INTO public.games VALUES (267, 107, 673);
INSERT INTO public.games VALUES (268, 107, 856);
INSERT INTO public.games VALUES (269, 106, 978);
INSERT INTO public.games VALUES (270, 106, 126);
INSERT INTO public.games VALUES (271, 106, 461);
INSERT INTO public.games VALUES (272, 108, 11);
INSERT INTO public.games VALUES (273, 109, 210);
INSERT INTO public.games VALUES (274, 109, 777);
INSERT INTO public.games VALUES (275, 110, 545);
INSERT INTO public.games VALUES (276, 110, 393);
INSERT INTO public.games VALUES (277, 109, 419);
INSERT INTO public.games VALUES (278, 109, 62);
INSERT INTO public.games VALUES (279, 109, 631);
INSERT INTO public.games VALUES (280, 111, 565);
INSERT INTO public.games VALUES (281, 111, 963);
INSERT INTO public.games VALUES (282, 112, 918);
INSERT INTO public.games VALUES (283, 112, 844);
INSERT INTO public.games VALUES (284, 111, 642);
INSERT INTO public.games VALUES (285, 111, 642);
INSERT INTO public.games VALUES (286, 111, 150);
INSERT INTO public.games VALUES (287, 113, 327);
INSERT INTO public.games VALUES (288, 113, 636);
INSERT INTO public.games VALUES (289, 114, 254);
INSERT INTO public.games VALUES (290, 114, 111);
INSERT INTO public.games VALUES (291, 113, 405);
INSERT INTO public.games VALUES (292, 113, 989);
INSERT INTO public.games VALUES (293, 113, 660);
INSERT INTO public.games VALUES (294, 115, 520);
INSERT INTO public.games VALUES (295, 115, 266);
INSERT INTO public.games VALUES (296, 116, 522);
INSERT INTO public.games VALUES (297, 116, 894);
INSERT INTO public.games VALUES (298, 115, 519);
INSERT INTO public.games VALUES (299, 115, 198);
INSERT INTO public.games VALUES (300, 115, 609);
INSERT INTO public.games VALUES (301, 117, 403);
INSERT INTO public.games VALUES (302, 117, 585);
INSERT INTO public.games VALUES (303, 118, 506);
INSERT INTO public.games VALUES (304, 118, 831);
INSERT INTO public.games VALUES (305, 117, 650);
INSERT INTO public.games VALUES (306, 117, 653);
INSERT INTO public.games VALUES (307, 117, 750);
INSERT INTO public.games VALUES (308, 119, 232);
INSERT INTO public.games VALUES (309, 119, 74);
INSERT INTO public.games VALUES (310, 120, 865);
INSERT INTO public.games VALUES (311, 120, 552);
INSERT INTO public.games VALUES (312, 119, 90);
INSERT INTO public.games VALUES (313, 119, 491);
INSERT INTO public.games VALUES (314, 119, 418);
INSERT INTO public.games VALUES (315, 26, 2);
INSERT INTO public.games VALUES (316, 26, 1);
INSERT INTO public.games VALUES (317, 121, 680);
INSERT INTO public.games VALUES (318, 121, 596);
INSERT INTO public.games VALUES (319, 122, 626);
INSERT INTO public.games VALUES (320, 122, 188);
INSERT INTO public.games VALUES (321, 121, 771);
INSERT INTO public.games VALUES (322, 121, 5);
INSERT INTO public.games VALUES (323, 121, 651);
INSERT INTO public.games VALUES (324, 26, 2);
INSERT INTO public.games VALUES (325, 26, 3);
INSERT INTO public.games VALUES (326, 26, 1);
INSERT INTO public.games VALUES (327, 123, 289);
INSERT INTO public.games VALUES (328, 123, 601);
INSERT INTO public.games VALUES (329, 124, 720);
INSERT INTO public.games VALUES (330, 124, 441);
INSERT INTO public.games VALUES (331, 123, 344);
INSERT INTO public.games VALUES (332, 123, 850);
INSERT INTO public.games VALUES (333, 123, 23);
INSERT INTO public.games VALUES (334, 125, 676);
INSERT INTO public.games VALUES (335, 125, 705);
INSERT INTO public.games VALUES (336, 126, 762);
INSERT INTO public.games VALUES (337, 126, 270);
INSERT INTO public.games VALUES (338, 125, 25);
INSERT INTO public.games VALUES (339, 125, 881);
INSERT INTO public.games VALUES (340, 125, 107);
INSERT INTO public.games VALUES (341, 127, 140);
INSERT INTO public.games VALUES (342, 127, 961);
INSERT INTO public.games VALUES (343, 128, 278);
INSERT INTO public.games VALUES (344, 128, 733);
INSERT INTO public.games VALUES (345, 127, 824);
INSERT INTO public.games VALUES (346, 127, 602);
INSERT INTO public.games VALUES (347, 127, 246);
INSERT INTO public.games VALUES (348, 129, 297);
INSERT INTO public.games VALUES (349, 129, 466);
INSERT INTO public.games VALUES (350, 130, 772);
INSERT INTO public.games VALUES (351, 130, 920);
INSERT INTO public.games VALUES (352, 129, 351);
INSERT INTO public.games VALUES (353, 129, 301);
INSERT INTO public.games VALUES (354, 129, 336);
INSERT INTO public.games VALUES (355, 131, 445);
INSERT INTO public.games VALUES (356, 131, 622);
INSERT INTO public.games VALUES (357, 132, 665);
INSERT INTO public.games VALUES (358, 132, 954);
INSERT INTO public.games VALUES (359, 131, 804);
INSERT INTO public.games VALUES (360, 131, 978);
INSERT INTO public.games VALUES (361, 131, 35);
INSERT INTO public.games VALUES (362, 133, 34);
INSERT INTO public.games VALUES (363, 133, 469);
INSERT INTO public.games VALUES (364, 134, 314);
INSERT INTO public.games VALUES (365, 134, 933);
INSERT INTO public.games VALUES (366, 133, 244);
INSERT INTO public.games VALUES (367, 133, 835);
INSERT INTO public.games VALUES (368, 133, 866);
INSERT INTO public.games VALUES (369, 135, 131);
INSERT INTO public.games VALUES (370, 135, 665);
INSERT INTO public.games VALUES (371, 136, 139);
INSERT INTO public.games VALUES (372, 136, 200);
INSERT INTO public.games VALUES (373, 135, 458);
INSERT INTO public.games VALUES (374, 135, 931);
INSERT INTO public.games VALUES (375, 135, 953);
INSERT INTO public.games VALUES (376, 137, 672);
INSERT INTO public.games VALUES (377, 137, 569);
INSERT INTO public.games VALUES (378, 138, 521);
INSERT INTO public.games VALUES (379, 138, 421);
INSERT INTO public.games VALUES (380, 137, 189);
INSERT INTO public.games VALUES (381, 137, 913);
INSERT INTO public.games VALUES (382, 137, 754);
INSERT INTO public.games VALUES (383, 139, 248);
INSERT INTO public.games VALUES (384, 139, 726);
INSERT INTO public.games VALUES (385, 140, 999);
INSERT INTO public.games VALUES (386, 140, 221);
INSERT INTO public.games VALUES (387, 139, 347);
INSERT INTO public.games VALUES (388, 139, 527);
INSERT INTO public.games VALUES (389, 139, 912);
INSERT INTO public.games VALUES (390, 141, 977);
INSERT INTO public.games VALUES (391, 141, 538);
INSERT INTO public.games VALUES (392, 142, 768);
INSERT INTO public.games VALUES (393, 142, 307);
INSERT INTO public.games VALUES (394, 141, 666);
INSERT INTO public.games VALUES (395, 141, 143);
INSERT INTO public.games VALUES (396, 141, 155);
INSERT INTO public.games VALUES (397, 143, 612);
INSERT INTO public.games VALUES (398, 143, 652);
INSERT INTO public.games VALUES (399, 144, 928);
INSERT INTO public.games VALUES (400, 144, 331);
INSERT INTO public.games VALUES (401, 143, 560);
INSERT INTO public.games VALUES (402, 143, 885);
INSERT INTO public.games VALUES (403, 143, 489);
INSERT INTO public.games VALUES (404, 145, 693);
INSERT INTO public.games VALUES (405, 145, 705);
INSERT INTO public.games VALUES (406, 146, 52);
INSERT INTO public.games VALUES (407, 146, 983);
INSERT INTO public.games VALUES (408, 145, 570);
INSERT INTO public.games VALUES (409, 145, 443);
INSERT INTO public.games VALUES (410, 145, 52);
INSERT INTO public.games VALUES (411, 147, 885);
INSERT INTO public.games VALUES (412, 147, 670);
INSERT INTO public.games VALUES (413, 148, 314);
INSERT INTO public.games VALUES (414, 148, 906);
INSERT INTO public.games VALUES (415, 147, 227);
INSERT INTO public.games VALUES (416, 147, 967);
INSERT INTO public.games VALUES (417, 147, 981);
INSERT INTO public.games VALUES (418, 149, 103);
INSERT INTO public.games VALUES (419, 149, 933);
INSERT INTO public.games VALUES (420, 150, 387);
INSERT INTO public.games VALUES (421, 150, 334);
INSERT INTO public.games VALUES (422, 149, 580);
INSERT INTO public.games VALUES (423, 149, 781);
INSERT INTO public.games VALUES (424, 149, 335);
INSERT INTO public.games VALUES (425, 151, 155);
INSERT INTO public.games VALUES (426, 151, 553);
INSERT INTO public.games VALUES (427, 152, 426);
INSERT INTO public.games VALUES (428, 152, 106);
INSERT INTO public.games VALUES (429, 151, 593);
INSERT INTO public.games VALUES (430, 151, 401);
INSERT INTO public.games VALUES (431, 151, 329);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1750031041191');
INSERT INTO public.users VALUES (3, 'user_1750031041190');
INSERT INTO public.users VALUES (8, 'user_1750031438350');
INSERT INTO public.users VALUES (10, 'user_1750031438349');
INSERT INTO public.users VALUES (15, 'user_1750031902851');
INSERT INTO public.users VALUES (16, 'user_1750031902850');
INSERT INTO public.users VALUES (17, 'user_1750032184667');
INSERT INTO public.users VALUES (18, 'user_1750032184666');
INSERT INTO public.users VALUES (19, 'user_1750032423990');
INSERT INTO public.users VALUES (20, 'user_1750032423989');
INSERT INTO public.users VALUES (21, 'user_1750032493139');
INSERT INTO public.users VALUES (22, 'user_1750032493138');
INSERT INTO public.users VALUES (23, 'user_1750032527806');
INSERT INTO public.users VALUES (24, 'user_1750032527805');
INSERT INTO public.users VALUES (25, 'test1');
INSERT INTO public.users VALUES (26, 'test3');
INSERT INTO public.users VALUES (27, 'user_1750032927647');
INSERT INTO public.users VALUES (28, 'user_1750032927646');
INSERT INTO public.users VALUES (29, 'user_1750033110569');
INSERT INTO public.users VALUES (30, 'user_1750033110568');
INSERT INTO public.users VALUES (31, 'user_1750033412883');
INSERT INTO public.users VALUES (32, 'user_1750033412882');
INSERT INTO public.users VALUES (33, 'user_1750033500112');
INSERT INTO public.users VALUES (34, 'user_1750033500111');
INSERT INTO public.users VALUES (35, 'test10');
INSERT INTO public.users VALUES (36, 'user_1750034912842');
INSERT INTO public.users VALUES (37, 'user_1750034912841');
INSERT INTO public.users VALUES (38, 'testnull');
INSERT INTO public.users VALUES (39, 'user_1750035013613');
INSERT INTO public.users VALUES (40, 'user_1750035013612');
INSERT INTO public.users VALUES (41, 'user_1750035334466');
INSERT INTO public.users VALUES (42, 'user_1750035334465');
INSERT INTO public.users VALUES (43, 'testtest');
INSERT INTO public.users VALUES (44, 'user_1750036002239');
INSERT INTO public.users VALUES (45, 'user_1750036002238');
INSERT INTO public.users VALUES (46, 'user_1750036914128');
INSERT INTO public.users VALUES (47, 'user_1750036914127');
INSERT INTO public.users VALUES (48, 'user_1750037603208');
INSERT INTO public.users VALUES (49, 'user_1750037603207');
INSERT INTO public.users VALUES (50, 'user_1750037704068');
INSERT INTO public.users VALUES (51, 'user_1750037704067');
INSERT INTO public.users VALUES (52, 'user_1750037742266');
INSERT INTO public.users VALUES (53, 'user_1750037742265');
INSERT INTO public.users VALUES (54, 'user_1750038338235');
INSERT INTO public.users VALUES (55, 'user_1750038338234');
INSERT INTO public.users VALUES (56, 'user_1750038355789');
INSERT INTO public.users VALUES (57, 'user_1750038355788');
INSERT INTO public.users VALUES (58, 'user_1750038367189');
INSERT INTO public.users VALUES (59, 'user_1750038367188');
INSERT INTO public.users VALUES (60, 'user_1750038465662');
INSERT INTO public.users VALUES (61, 'user_1750038465661');
INSERT INTO public.users VALUES (62, 'user_1750038511393');
INSERT INTO public.users VALUES (63, 'user_1750038511392');
INSERT INTO public.users VALUES (64, 'user_1750038520326');
INSERT INTO public.users VALUES (65, 'user_1750038520325');
INSERT INTO public.users VALUES (66, 'user_1750038528203');
INSERT INTO public.users VALUES (67, 'user_1750038528202');
INSERT INTO public.users VALUES (68, 'user_1750038585241');
INSERT INTO public.users VALUES (69, 'user_1750038585240');
INSERT INTO public.users VALUES (70, 'user_1750038656809');
INSERT INTO public.users VALUES (71, 'user_1750038656808');
INSERT INTO public.users VALUES (72, 'user_1750038679931');
INSERT INTO public.users VALUES (73, 'user_1750038679930');
INSERT INTO public.users VALUES (74, 'user_1750038732677');
INSERT INTO public.users VALUES (75, 'user_1750038732676');
INSERT INTO public.users VALUES (76, 'user_1750038743392');
INSERT INTO public.users VALUES (77, 'user_1750038743391');
INSERT INTO public.users VALUES (78, 'user_1750038753654');
INSERT INTO public.users VALUES (79, 'user_1750038753653');
INSERT INTO public.users VALUES (80, 'user_1750038901936');
INSERT INTO public.users VALUES (81, 'user_1750038901935');
INSERT INTO public.users VALUES (82, 'user_1750038920094');
INSERT INTO public.users VALUES (83, 'user_1750038920093');
INSERT INTO public.users VALUES (84, 'user_1750039133760');
INSERT INTO public.users VALUES (85, 'user_1750039133759');
INSERT INTO public.users VALUES (86, 'user_1750039437770');
INSERT INTO public.users VALUES (87, 'user_1750039437769');
INSERT INTO public.users VALUES (88, 'user_1750039464849');
INSERT INTO public.users VALUES (89, 'user_1750039464848');
INSERT INTO public.users VALUES (90, 'user_1750039542190');
INSERT INTO public.users VALUES (91, 'user_1750039542189');
INSERT INTO public.users VALUES (92, 'user_1750039668561');
INSERT INTO public.users VALUES (93, 'user_1750039668560');
INSERT INTO public.users VALUES (94, 'user_1750039875045');
INSERT INTO public.users VALUES (95, 'user_1750039875044');
INSERT INTO public.users VALUES (96, 'user_1750039893907');
INSERT INTO public.users VALUES (97, 'user_1750039893906');
INSERT INTO public.users VALUES (98, 'user_1750040075624');
INSERT INTO public.users VALUES (99, 'user_1750040075623');
INSERT INTO public.users VALUES (100, 'user_1750040205764');
INSERT INTO public.users VALUES (101, 'user_1750040205763');
INSERT INTO public.users VALUES (102, 'user_1750040231891');
INSERT INTO public.users VALUES (103, 'user_1750040231890');
INSERT INTO public.users VALUES (104, 'user_1750040270544');
INSERT INTO public.users VALUES (105, 'user_1750040270543');
INSERT INTO public.users VALUES (106, 'user_1750040290207');
INSERT INTO public.users VALUES (107, 'user_1750040290206');
INSERT INTO public.users VALUES (108, 'testnew34');
INSERT INTO public.users VALUES (109, 'user_1750040459404');
INSERT INTO public.users VALUES (110, 'user_1750040459403');
INSERT INTO public.users VALUES (111, 'user_1750040488077');
INSERT INTO public.users VALUES (112, 'user_1750040488076');
INSERT INTO public.users VALUES (113, 'user_1750040632323');
INSERT INTO public.users VALUES (114, 'user_1750040632322');
INSERT INTO public.users VALUES (115, 'user_1750040688743');
INSERT INTO public.users VALUES (116, 'user_1750040688742');
INSERT INTO public.users VALUES (117, 'user_1750040744288');
INSERT INTO public.users VALUES (118, 'user_1750040744287');
INSERT INTO public.users VALUES (119, 'user_1750040924647');
INSERT INTO public.users VALUES (120, 'user_1750040924646');
INSERT INTO public.users VALUES (121, 'user_1750041078990');
INSERT INTO public.users VALUES (122, 'user_1750041078989');
INSERT INTO public.users VALUES (123, 'user_1750041262462');
INSERT INTO public.users VALUES (124, 'user_1750041262461');
INSERT INTO public.users VALUES (125, 'user_1750041289893');
INSERT INTO public.users VALUES (126, 'user_1750041289892');
INSERT INTO public.users VALUES (127, 'user_1750041312189');
INSERT INTO public.users VALUES (128, 'user_1750041312188');
INSERT INTO public.users VALUES (129, 'user_1750041424654');
INSERT INTO public.users VALUES (130, 'user_1750041424653');
INSERT INTO public.users VALUES (131, 'user_1750041463064');
INSERT INTO public.users VALUES (132, 'user_1750041463063');
INSERT INTO public.users VALUES (133, 'user_1750041540414');
INSERT INTO public.users VALUES (134, 'user_1750041540413');
INSERT INTO public.users VALUES (135, 'user_1750041595449');
INSERT INTO public.users VALUES (136, 'user_1750041595448');
INSERT INTO public.users VALUES (137, 'user_1750041618627');
INSERT INTO public.users VALUES (138, 'user_1750041618626');
INSERT INTO public.users VALUES (139, 'user_1750042083200');
INSERT INTO public.users VALUES (140, 'user_1750042083199');
INSERT INTO public.users VALUES (141, 'user_1750042122391');
INSERT INTO public.users VALUES (142, 'user_1750042122390');
INSERT INTO public.users VALUES (143, 'user_1750042139610');
INSERT INTO public.users VALUES (144, 'user_1750042139609');
INSERT INTO public.users VALUES (145, 'user_1750042194204');
INSERT INTO public.users VALUES (146, 'user_1750042194203');
INSERT INTO public.users VALUES (147, 'user_1750042198552');
INSERT INTO public.users VALUES (148, 'user_1750042198551');
INSERT INTO public.users VALUES (149, 'user_1750042302910');
INSERT INTO public.users VALUES (150, 'user_1750042302909');
INSERT INTO public.users VALUES (151, 'user_1750042362674');
INSERT INTO public.users VALUES (152, 'user_1750042362673');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 431, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 152, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

