-- Active: 1699420720198@@127.0.0.1@3306@acm
-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 09:28 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `banking-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--
CREATE DATABASE IF NOT EXISTS `banking-system`;

use `banking-system`;

CREATE TABLE
    `accounts` (
        `id` int(11) NOT NULL,
        `customer_id` int(11) DEFAULT NULL,
        `account_type` int(11) DEFAULT NULL,
        `amount` int(11) DEFAULT NULL,
        `is_locked` tinyint(1) DEFAULT NULL,
        `created_at` timestamp NOT NULL,
        `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) ENGINE = MyISAM DEFAULT CHARSET = latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_status`
--

CREATE TABLE
    `account_status` (
        `id` int(11) NOT NULL,
        `account_id` int(11) DEFAULT NULL,
        `customer_id` int(11) DEFAULT NULL,
        `account_type` int(11) DEFAULT NULL,
        `status` tinyint(1) DEFAULT NULL,
        `message` varchar(255) DEFAULT NULL,
        `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) ENGINE = MyISAM DEFAULT CHARSET = latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE
    `cities` (
        `id` int(11) NOT NULL,
        `name` varchar(30) NOT NULL,
        `state_id` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO
    `cities` (`id`, `name`, `state_id`)
VALUES (1, 'Bombuflat', 1), (2, 'Garacharma', 1), (3, 'Port Blair', 1), (4, 'Rangat', 1), (5, 'Addanki', 2), (6, 'Adivivaram', 2), (7, 'Adoni', 2), (8, 'Aganampudi', 2), (9, 'Ajjaram', 2), (10, 'Akividu', 2), (11, 'Akkarampalle', 2), (12, 'Akkayapalle', 2), (13, 'Akkireddipalem', 2), (14, 'Alampur', 2), (15, 'Amalapuram', 2), (16, 'Amudalavalasa', 2), (17, 'Amur', 2), (18, 'Anakapalle', 2), (19, 'Anantapur', 2), (20, 'Andole', 2), (21, 'Atmakur', 2), (22, 'Attili', 2), (23, 'Avanigadda', 2), (24, 'Badepalli', 2), (25, 'Badvel', 2), (26, 'Balapur', 2), (27, 'Bandarulanka', 2), (28, 'Banganapalle', 2), (29, 'Bapatla', 2), (30, 'Bapulapadu', 2), (31, 'Belampalli', 2), (32, 'Bestavaripeta', 2), (33, 'Betamcherla', 2), (34, 'Bhattiprolu', 2), (35, 'Bhimavaram', 2), (36, 'Bhimunipatnam', 2), (37, 'Bobbili', 2), (38, 'Bombuflat', 2), (39, 'Bommuru', 2), (40, 'Bugganipalle', 2), (41, 'Challapalle', 2), (42, 'Chandur', 2), (43, 'Chatakonda', 2), (44, 'Chemmumiahpet', 2), (45, 'Chidiga', 2), (46, 'Chilakaluripet', 2), (47, 'Chimakurthy', 2), (48, 'Chinagadila', 2), (49, 'Chinagantyada', 2), (50, 'Chinnachawk', 2), (51, 'Chintalavalasa', 2), (52, 'Chipurupalle', 2), (53, 'Chirala', 2), (54, 'Chittoor', 2), (55, 'Chodavaram', 2), (56, 'Choutuppal', 2), (57, 'Chunchupalle', 2), (58, 'Cuddapah', 2), (59, 'Cumbum', 2), (60, 'Darnakal', 2), (61, 'Dasnapur', 2), (62, 'Dauleshwaram', 2), (63, 'Dharmavaram', 2), (64, 'Dhone', 2), (65, 'Dommara Nandyal', 2), (66, 'Dowlaiswaram', 2), (67, 'East Godavari Dist.', 2), (68, 'Eddumailaram', 2), (69, 'Edulapuram', 2), (70, 'Ekambara kuppam', 2), (71, 'Eluru', 2), (72, 'Enikapadu', 2), (73, 'Fakirtakya', 2), (74, 'Farrukhnagar', 2), (75, 'Gaddiannaram', 2), (76, 'Gajapathinagaram', 2), (77, 'Gajularega', 2), (78, 'Gajuvaka', 2), (79, 'Gannavaram', 2), (80, 'Garacharma', 2), (81, 'Garimellapadu', 2), (82, 'Giddalur', 2), (83, 'Godavarikhani', 2), (84, 'Gopalapatnam', 2), (85, 'Gopalur', 2), (86, 'Gorrekunta', 2), (87, 'Gudivada', 2), (88, 'Gudur', 2), (89, 'Guntakal', 2), (90, 'Guntur', 2), (91, 'Guti', 2), (92, 'Hindupur', 2), (93, 'Hukumpeta', 2), (94, 'Ichchapuram', 2), (95, 'Isnapur', 2), (96, 'Jaggayyapeta', 2), (97, 'Jallaram Kamanpur', 2), (98, 'Jammalamadugu', 2), (99, 'Jangampalli', 2), (100, 'Jarjapupeta', 2), (101, 'Kadiri', 2), (102, 'Kaikalur', 2), (103, 'Kakinada', 2), (104, 'Kallur', 2), (105, 'Kalyandurg', 2), (106, 'Kamalapuram', 2), (107, 'Kamareddi', 2), (108, 'Kanapaka', 2), (109, 'Kanigiri', 2), (110, 'Kanithi', 2), (111, 'Kankipadu', 2), (112, 'Kantabamsuguda', 2), (113, 'Kanuru', 2), (114, 'Karnul', 2), (115, 'Katheru', 2), (116, 'Kavali', 2), (117, 'Kazipet', 2), (118, 'Khanapuram Haveli', 2), (119, 'Kodar', 2), (120, 'Kollapur', 2), (121, 'Kondapalem', 2), (122, 'Kondapalle', 2), (123, 'Kondukur', 2), (124, 'Kosgi', 2), (125, 'Kothavalasa', 2), (126, 'Kottapalli', 2), (127, 'Kovur', 2), (128, 'Kovurpalle', 2), (129, 'Kovvur', 2), (130, 'Krishna', 2), (131, 'Kuppam', 2), (132, 'Kurmannapalem', 2), (133, 'Kurnool', 2), (134, 'Lakshettipet', 2), (135, 'Lalbahadur Nagar', 2), (136, 'Machavaram', 2), (137, 'Macherla', 2), (138, 'Machilipatnam', 2), (139, 'Madanapalle', 2), (140, 'Madaram', 2), (141, 'Madhuravada', 2), (142, 'Madikonda', 2), (143, 'Madugule', 2), (144, 'Mahabubnagar', 2), (145, 'Mahbubabad', 2), (146, 'Malkajgiri', 2), (147, 'Mamilapalle', 2), (148, 'Mancheral', 2), (149, 'Mandapeta', 2), (150, 'Mandasa', 2), (151, 'Mangalagiri', 2), (152, 'Manthani', 2), (153, 'Markapur', 2), (154, 'Marturu', 2), (155, 'Metpalli', 2), (156, 'Mindi', 2), (157, 'Mirpet', 2), (158, 'Moragudi', 2), (159, 'Mothugudam', 2), (160, 'Nagari', 2), (161, 'Nagireddipalle', 2), (162, 'Nandigama', 2), (163, 'Nandikotkur', 2), (164, 'Nandyal', 2), (165, 'Narasannapeta', 2), (166, 'Narasapur', 2), (167, 'Narasaraopet', 2), (168, 'Narayanavanam', 2), (169, 'Narsapur', 2), (170, 'Narsingi', 2), (171, 'Narsipatnam', 2), (172, 'Naspur', 2), (173, 'Nathayyapalem', 2), (174, 'Nayudupeta', 2), (175, 'Nelimaria', 2), (176, 'Nellore', 2), (177, 'Nidadavole', 2), (178, 'Nuzvid', 2), (179, 'Omerkhan daira', 2), (180, 'Ongole', 2), (181, 'Osmania University', 2), (182, 'Pakala', 2), (183, 'Palakole', 2), (184, 'Palakurthi', 2), (185, 'Palasa', 2), (186, 'Palempalle', 2), (187, 'Palkonda', 2), (188, 'Palmaner', 2), (189, 'Pamur', 2), (190, 'Panjim', 2), (191, 'Papampeta', 2), (192, 'Parasamba', 2), (193, 'Parvatipuram', 2), (194, 'Patancheru', 2), (195, 'Payakaraopet', 2), (196, 'Pedagantyada', 2), (197, 'Pedana', 2), (198, 'Peddapuram', 2), (199, 'Pendurthi', 2), (200, 'Penugonda', 2), (201, 'Penukonda', 2), (202, 'Phirangipuram', 2), (203, 'Pithapuram', 2), (204, 'Ponnur', 2), (205, 'Port Blair', 2), (206, 'Pothinamallayyapalem', 2), (207, 'Prakasam', 2), (208, 'Prasadampadu', 2), (209, 'Prasantinilayam', 2), (210, 'Proddatur', 2), (211, 'Pulivendla', 2), (212, 'Punganuru', 2), (213, 'Puttur', 2), (214, 'Qutubullapur', 2), (215, 'Rajahmundry', 2), (216, 'Rajamahendri', 2), (217, 'Rajampet', 2), (218, 'Rajendranagar', 2), (219, 'Rajoli', 2), (220, 'Ramachandrapuram', 2), (221, 'Ramanayyapeta', 2), (222, 'Ramapuram', 2), (223, 'Ramarajupalli', 2), (224, 'Ramavarappadu', 2), (225, 'Rameswaram', 2), (226, 'Rampachodavaram', 2), (227, 'Ravulapalam', 2), (228, 'Rayachoti', 2), (229, 'Rayadrug', 2), (230, 'Razam', 2), (231, 'Razole', 2), (232, 'Renigunta', 2), (233, 'Repalle', 2), (234, 'Rishikonda', 2), (235, 'Salur', 2), (236, 'Samalkot', 2), (237, 'Sattenapalle', 2), (238, 'Seetharampuram', 2), (239, 'Serilungampalle', 2), (240, 'Shankarampet', 2), (241, 'Shar', 2), (242, 'Singarayakonda', 2), (243, 'Sirpur', 2), (244, 'Sirsilla', 2), (245, 'Sompeta', 2), (246, 'Sriharikota', 2), (247, 'Srikakulam', 2), (248, 'Srikalahasti', 2), (249, 'Sriramnagar', 2), (250, 'Sriramsagar', 2), (251, 'Srisailam', 2), (
        252,
        'Srisailamgudem Devasthanam',
        2
    ), (253, 'Sulurpeta', 2), (254, 'Suriapet', 2), (255, 'Suryaraopet', 2), (256, 'Tadepalle', 2), (257, 'Tadepalligudem', 2), (258, 'Tadpatri', 2), (259, 'Tallapalle', 2), (260, 'Tanuku', 2), (261, 'Tekkali', 2), (262, 'Tenali', 2), (263, 'Tigalapahad', 2), (264, 'Tiruchanur', 2), (265, 'Tirumala', 2), (266, 'Tirupati', 2), (267, 'Tirvuru', 2), (268, 'Trimulgherry', 2), (269, 'Tuni', 2), (270, 'Turangi', 2), (271, 'Ukkayapalli', 2), (272, 'Ukkunagaram', 2), (273, 'Uppal Kalan', 2), (274, 'Upper Sileru', 2), (275, 'Uravakonda', 2), (276, 'Vadlapudi', 2), (277, 'Vaparala', 2), (278, 'Vemalwada', 2), (279, 'Venkatagiri', 2), (280, 'Venkatapuram', 2), (281, 'Vepagunta', 2), (282, 'Vetapalem', 2), (283, 'Vijayapuri', 2), (284, 'Vijayapuri South', 2), (285, 'Vijayawada', 2), (286, 'Vinukonda', 2), (287, 'Visakhapatnam', 2), (288, 'Vizianagaram', 2), (289, 'Vuyyuru', 2), (290, 'Wanparti', 2), (291, 'West Godavari Dist.', 2), (292, 'Yadagirigutta', 2), (293, 'Yarada', 2), (294, 'Yellamanchili', 2), (295, 'Yemmiganur', 2), (296, 'Yenamalakudru', 2), (297, 'Yendada', 2), (298, 'Yerraguntla', 2), (299, 'Along', 3), (300, 'Basar', 3), (301, 'Bondila', 3), (302, 'Changlang', 3), (303, 'Daporijo', 3), (304, 'Deomali', 3), (305, 'Itanagar', 3), (306, 'Jairampur', 3), (307, 'Khonsa', 3), (308, 'Naharlagun', 3), (309, 'Namsai', 3), (310, 'Pasighat', 3), (311, 'Roing', 3), (312, 'Seppa', 3), (313, 'Tawang', 3), (314, 'Tezu', 3), (315, 'Ziro', 3), (316, 'Abhayapuri', 4), (317, 'Ambikapur', 4), (318, 'Amguri', 4), (319, 'Anand Nagar', 4), (320, 'Badarpur', 4), (
        321,
        'Badarpur Railway Town',
        4
    ), (322, 'Bahbari Gaon', 4), (323, 'Bamun Sualkuchi', 4), (324, 'Barbari', 4), (325, 'Barpathar', 4), (326, 'Barpeta', 4), (327, 'Barpeta Road', 4), (328, 'Basugaon', 4), (329, 'Bihpuria', 4), (330, 'Bijni', 4), (331, 'Bilasipara', 4), (332, 'Biswanath Chariali', 4), (333, 'Bohori', 4), (334, 'Bokajan', 4), (335, 'Bokokhat', 4), (336, 'Bongaigaon', 4), (
        337,
        'Bongaigaon Petro-chemical Town',
        4
    ), (338, 'Borgolai', 4), (339, 'Chabua', 4), (340, 'Chandrapur Bagicha', 4), (341, 'Chapar', 4), (342, 'Chekonidhara', 4), (343, 'Choto Haibor', 4), (344, 'Dergaon', 4), (345, 'Dharapur', 4), (346, 'Dhekiajuli', 4), (347, 'Dhemaji', 4), (348, 'Dhing', 4), (349, 'Dhubri', 4), (350, 'Dhuburi', 4), (351, 'Dibrugarh', 4), (352, 'Digboi', 4), (353, 'Digboi Oil Town', 4), (354, 'Dimaruguri', 4), (355, 'Diphu', 4), (356, 'Dispur', 4), (357, 'Doboka', 4), (358, 'Dokmoka', 4), (359, 'Donkamokan', 4), (360, 'Duliagaon', 4), (361, 'Duliajan', 4), (362, 'Duliajan No.1', 4), (363, 'Dum Duma', 4), (364, 'Durga Nagar', 4), (365, 'Gauripur', 4), (366, 'Goalpara', 4), (367, 'Gohpur', 4), (368, 'Golaghat', 4), (369, 'Golakganj', 4), (370, 'Gossaigaon', 4), (371, 'Guwahati', 4), (372, 'Haflong', 4), (373, 'Hailakandi', 4), (374, 'Hamren', 4), (375, 'Hauli', 4), (376, 'Hauraghat', 4), (377, 'Hojai', 4), (378, 'Jagiroad', 4), (379, 'Jagiroad Paper Mill', 4), (380, 'Jogighopa', 4), (381, 'Jonai Bazar', 4), (382, 'Jorhat', 4), (383, 'Kampur Town', 4), (384, 'Kamrup', 4), (385, 'Kanakpur', 4), (386, 'Karimganj', 4), (387, 'Kharijapikon', 4), (388, 'Kharupetia', 4), (389, 'Kochpara', 4), (390, 'Kokrajhar', 4), (391, 'Kumar Kaibarta Gaon', 4), (392, 'Lakhimpur', 4), (393, 'Lakhipur', 4), (394, 'Lala', 4), (395, 'Lanka', 4), (396, 'Lido Tikok', 4), (397, 'Lido Town', 4), (398, 'Lumding', 4), (
        399,
        'Lumding Railway Colony',
        4
    ), (400, 'Mahur', 4), (401, 'Maibong', 4), (402, 'Majgaon', 4), (403, 'Makum', 4), (404, 'Mangaldai', 4), (405, 'Mankachar', 4), (406, 'Margherita', 4), (407, 'Mariani', 4), (408, 'Marigaon', 4), (409, 'Moran', 4), (410, 'Moranhat', 4), (411, 'Nagaon', 4), (412, 'Naharkatia', 4), (413, 'Nalbari', 4), (414, 'Namrup', 4), (415, 'Naubaisa Gaon', 4), (416, 'Nazira', 4), (
        417,
        'New Bongaigaon Railway Colony',
        4
    ), (418, 'Niz-Hajo', 4), (419, 'North Guwahati', 4), (420, 'Numaligarh', 4), (421, 'Palasbari', 4), (422, 'Panchgram', 4), (423, 'Pathsala', 4), (424, 'Raha', 4), (425, 'Rangapara', 4), (426, 'Rangia', 4), (427, 'Salakati', 4), (428, 'Sapatgram', 4), (429, 'Sarthebari', 4), (430, 'Sarupathar', 4), (431, 'Sarupathar Bengali', 4), (432, 'Senchoagaon', 4), (433, 'Sibsagar', 4), (434, 'Silapathar', 4), (435, 'Silchar', 4), (436, 'Silchar Part-X', 4), (437, 'Sonari', 4), (438, 'Sorbhog', 4), (439, 'Sualkuchi', 4), (440, 'Tangla', 4), (441, 'Tezpur', 4), (442, 'Tihu', 4), (443, 'Tinsukia', 4), (444, 'Titabor', 4), (445, 'Udalguri', 4), (446, 'Umrangso', 4), (
        447,
        'Uttar Krishnapur Part-I',
        4
    ), (448, 'Amarpur', 5), (449, 'Ara', 5), (450, 'Araria', 5), (451, 'Areraj', 5), (452, 'Asarganj', 5), (453, 'Aurangabad', 5), (454, 'Bagaha', 5), (455, 'Bahadurganj', 5), (456, 'Bairgania', 5), (457, 'Bakhtiyarpur', 5), (458, 'Banka', 5), (459, 'Banmankhi', 5), (460, 'Bar Bigha', 5), (461, 'Barauli', 5), (462, 'Barauni Oil Township', 5), (463, 'Barh', 5), (464, 'Barhiya', 5), (465, 'Bariapur', 5), (466, 'Baruni', 5), (467, 'Begusarai', 5), (468, 'Behea', 5), (469, 'Belsand', 5), (470, 'Bettiah', 5), (471, 'Bhabua', 5), (472, 'Bhagalpur', 5), (473, 'Bhimnagar', 5), (474, 'Bhojpur', 5), (475, 'Bihar', 5), (476, 'Bihar Sharif', 5), (477, 'Bihariganj', 5), (478, 'Bikramganj', 5), (479, 'Birpur', 5), (480, 'Bodh Gaya', 5), (481, 'Buxar', 5), (482, 'Chakia', 5), (483, 'Chanpatia', 5), (484, 'Chhapra', 5), (485, 'Chhatapur', 5), (486, 'Colgong', 5), (487, 'Dalsingh Sarai', 5), (488, 'Darbhanga', 5), (489, 'Daudnagar', 5), (490, 'Dehri', 5), (491, 'Dhaka', 5), (492, 'Dighwara', 5), (493, 'Dinapur', 5), (494, 'Dinapur Cantonment', 5), (495, 'Dumra', 5), (496, 'Dumraon', 5), (497, 'Fatwa', 5), (498, 'Forbesganj', 5), (499, 'Gaya', 5), (500, 'Gazipur', 5), (501, 'Ghoghardiha', 5), (502, 'Gogri Jamalpur', 5), (503, 'Gopalganj', 5), (504, 'Habibpur', 5), (505, 'Hajipur', 5), (506, 'Hasanpur', 5), (507, 'Hazaribagh', 5), (508, 'Hilsa', 5), (509, 'Hisua', 5), (510, 'Islampur', 5), (511, 'Jagdispur', 5), (512, 'Jahanabad', 5), (513, 'Jamalpur', 5), (514, 'Jamhaur', 5), (515, 'Jamui', 5), (516, 'Janakpur Road', 5), (517, 'Janpur', 5), (518, 'Jaynagar', 5), (519, 'Jha Jha', 5), (520, 'Jhanjharpur', 5), (521, 'Jogbani', 5), (522, 'Kanti', 5), (523, 'Kasba', 5), (524, 'Kataiya', 5), (525, 'Katihar', 5), (526, 'Khagaria', 5), (527, 'Khagaul', 5), (528, 'Kharagpur', 5), (529, 'Khusrupur', 5), (530, 'Kishanganj', 5), (531, 'Koath', 5), (532, 'Koilwar', 5), (533, 'Lakhisarai', 5), (534, 'Lalganj', 5), (535, 'Lauthaha', 5), (536, 'Madhepura', 5), (537, 'Madhubani', 5), (538, 'Maharajganj', 5), (539, 'Mahnar Bazar', 5), (540, 'Mairwa', 5), (541, 'Makhdumpur', 5), (542, 'Maner', 5), (543, 'Manihari', 5), (544, 'Marhaura', 5), (545, 'Masaurhi', 5), (546, 'Mirganj', 5), (547, 'Mohiuddinagar', 5), (548, 'Mokama', 5), (549, 'Motihari', 5), (550, 'Motipur', 5), (551, 'Munger', 5), (552, 'Murliganj', 5), (553, 'Muzaffarpur', 5), (554, 'Nabinagar', 5), (555, 'Narkatiaganj', 5), (556, 'Nasriganj', 5), (557, 'Natwar', 5), (558, 'Naugachhia', 5), (559, 'Nawada', 5), (560, 'Nirmali', 5), (561, 'Nokha', 5), (562, 'Paharpur', 5), (563, 'Patna', 5), (564, 'Phulwari', 5), (565, 'Piro', 5), (566, 'Purnia', 5), (567, 'Pusa', 5), (568, 'Rafiganj', 5), (569, 'Raghunathpur', 5), (570, 'Rajgir', 5), (571, 'Ramnagar', 5), (572, 'Raxaul', 5), (573, 'Revelganj', 5), (574, 'Rusera', 5), (575, 'Sagauli', 5), (576, 'Saharsa', 5), (577, 'Samastipur', 5), (578, 'Sasaram', 5), (579, 'Shahpur', 5), (580, 'Shaikhpura', 5), (581, 'Sherghati', 5), (582, 'Shivhar', 5), (583, 'Silao', 5), (584, 'Sitamarhi', 5), (585, 'Siwan', 5), (586, 'Sonepur', 5), (587, 'Sultanganj', 5), (588, 'Supaul', 5), (589, 'Teghra', 5), (590, 'Tekari', 5), (591, 'Thakurganj', 5), (592, 'Vaishali', 5), (593, 'Waris Aliganj', 5), (594, 'Chandigarh', 6), (595, 'Ahiwara', 7), (596, 'Akaltara', 7), (597, 'Ambagarh Chauki', 7), (598, 'Ambikapur', 7), (599, 'Arang', 7), (600, 'Bade Bacheli', 7), (601, 'Bagbahara', 7), (602, 'Baikunthpur', 7), (603, 'Balod', 7), (604, 'Baloda', 7), (605, 'Baloda Bazar', 7), (606, 'Banarsi', 7), (607, 'Basna', 7), (608, 'Bemetra', 7), (609, 'Bhanpuri', 7), (610, 'Bhatapara', 7), (611, 'Bhatgaon', 7), (612, 'Bhilai', 7), (613, 'Bilaspur', 7), (614, 'Bilha', 7), (615, 'Birgaon', 7), (616, 'Bodri', 7), (617, 'Champa', 7), (618, 'Charcha', 7), (619, 'Charoda', 7), (620, 'Chhuikhadan', 7), (621, 'Chirmiri', 7), (622, 'Dantewada', 7), (623, 'Deori', 7), (624, 'Dhamdha', 7), (625, 'Dhamtari', 7), (626, 'Dharamjaigarh', 7), (627, 'Dipka', 7), (628, 'Doman Hill Colliery', 7), (629, 'Dongargaon', 7), (630, 'Dongragarh', 7), (631, 'Durg', 7), (632, 'Frezarpur', 7), (633, 'Gandai', 7), (634, 'Gariaband', 7), (635, 'Gaurela', 7), (636, 'Gelhapani', 7), (637, 'Gharghoda', 7), (638, 'Gidam', 7), (639, 'Gobra Nawapara', 7), (640, 'Gogaon', 7), (641, 'Hatkachora', 7), (642, 'Jagdalpur', 7), (643, 'Jamui', 7), (644, 'Jashpurnagar', 7), (645, 'Jhagrakhand', 7), (646, 'Kanker', 7), (647, 'Katghora', 7), (648, 'Kawardha', 7), (649, 'Khairagarh', 7), (650, 'Khamhria', 7), (651, 'Kharod', 7), (652, 'Kharsia', 7), (653, 'Khonga Pani', 7), (654, 'Kirandu', 7), (655, 'Kirandul', 7), (656, 'Kohka', 7), (657, 'Kondagaon', 7), (658, 'Korba', 7), (659, 'Korea', 7), (660, 'Koria Block', 7), (661, 'Kota', 7), (662, 'Kumhari', 7), (663, 'Kumud Katta', 7), (664, 'Kurasia', 7), (665, 'Kurud', 7), (666, 'Lingiyadih', 7), (667, 'Lormi', 7), (668, 'Mahasamund', 7), (669, 'Mahendragarh', 7), (670, 'Mehmand', 7), (671, 'Mongra', 7), (672, 'Mowa', 7), (673, 'Mungeli', 7), (674, 'Nailajanjgir', 7), (675, 'Namna Kalan', 7), (676, 'Naya Baradwar', 7), (677, 'Pandariya', 7), (678, 'Patan', 7), (679, 'Pathalgaon', 7), (680, 'Pendra', 7), (681, 'Phunderdihari', 7), (682, 'Pithora', 7), (683, 'Raigarh', 7), (684, 'Raipur', 7), (685, 'Rajgamar', 7), (686, 'Rajhara', 7), (687, 'Rajnandgaon', 7), (688, 'Ramanuj Ganj', 7), (689, 'Ratanpur', 7), (690, 'Sakti', 7), (691, 'Saraipali', 7), (692, 'Sarajpur', 7), (693, 'Sarangarh', 7), (694, 'Shivrinarayan', 7), (695, 'Simga', 7), (696, 'Sirgiti', 7), (697, 'Takhatpur', 7), (698, 'Telgaon', 7), (699, 'Tildanewra', 7), (700, 'Urla', 7), (701, 'Vishrampur', 7), (702, 'Amli', 8), (703, 'Silvassa', 8), (704, 'Daman', 9), (705, 'Diu', 9), (706, 'Delhi', 10), (707, 'New Delhi', 10), (708, 'Aldona', 11), (709, 'Altinho', 11), (710, 'Aquem', 11), (711, 'Arpora', 11), (712, 'Bambolim', 11), (713, 'Bandora', 11), (714, 'Bardez', 11), (715, 'Benaulim', 11), (716, 'Betora', 11), (717, 'Bicholim', 11), (718, 'Calapor', 11), (719, 'Candolim', 11), (720, 'Caranzalem', 11), (721, 'Carapur', 11), (722, 'Chicalim', 11), (723, 'Chimbel', 11), (724, 'Chinchinim', 11), (725, 'Colvale', 11), (726, 'Corlim', 11), (727, 'Cortalim', 11), (728, 'Cuncolim', 11), (729, 'Curchorem', 11), (730, 'Curti', 11), (731, 'Davorlim', 11), (732, 'Dona Paula', 11), (733, 'Goa', 11), (734, 'Guirim', 11), (735, 'Jua', 11), (736, 'Kalangat', 11), (737, 'Kankon', 11), (738, 'Kundaim', 11), (739, 'Loutulim', 11), (740, 'Madgaon', 11), (741, 'Mapusa', 11), (742, 'Margao', 11), (743, 'Margaon', 11), (744, 'Miramar', 11), (745, 'Morjim', 11), (746, 'Mormugao', 11), (747, 'Navelim', 11), (748, 'Pale', 11), (749, 'Panaji', 11), (750, 'Parcem', 11), (751, 'Parra', 11), (752, 'Penha de Franca', 11), (753, 'Pernem', 11), (754, 'Pilerne', 11), (755, 'Pissurlem', 11), (756, 'Ponda', 11), (757, 'Porvorim', 11), (758, 'Quepem', 11), (759, 'Queula', 11), (760, 'Raia', 11), (761, 'Reis Magos', 11), (762, 'Salcette', 11), (763, 'Saligao', 11), (764, 'Sancoale', 11), (765, 'Sanguem', 11), (766, 'Sanquelim', 11), (767, 'Sanvordem', 11), (768, 'Sao Jose-de-Areal', 11), (769, 'Sattari', 11), (770, 'Serula', 11), (771, 'Sinquerim', 11), (772, 'Siolim', 11), (773, 'Taleigao', 11), (774, 'Tivim', 11), (775, 'Valpoi', 11), (776, 'Varca', 11), (777, 'Vasco', 11), (778, 'Verna', 11), (779, 'Abrama', 12), (780, 'Adalaj', 12), (781, 'Adityana', 12), (782, 'Advana', 12), (783, 'Ahmedabad', 12), (784, 'Ahwa', 12), (785, 'Alang', 12), (786, 'Ambaji', 12), (787, 'Ambaliyasan', 12), (788, 'Amod', 12), (789, 'Amreli', 12), (790, 'Amroli', 12), (791, 'Anand', 12), (792, 'Andada', 12), (793, 'Anjar', 12), (794, 'Anklav', 12), (795, 'Ankleshwar', 12), (796, 'Anklesvar INA', 12), (797, 'Antaliya', 12), (798, 'Arambhada', 12), (799, 'Asarma', 12), (800, 'Atul', 12), (801, 'Babra', 12), (802, 'Bag-e-Firdosh', 12), (803, 'Bagasara', 12), (804, 'Bahadarpar', 12), (805, 'Bajipura', 12), (806, 'Bajva', 12), (807, 'Balasinor', 12), (808, 'Banaskantha', 12), (809, 'Bansda', 12), (810, 'Bantva', 12), (811, 'Bardoli', 12), (812, 'Barwala', 12), (813, 'Bayad', 12), (814, 'Bechar', 12), (815, 'Bedi', 12), (816, 'Beyt', 12), (817, 'Bhachau', 12), (818, 'Bhanvad', 12), (819, 'Bharuch', 12), (820, 'Bharuch INA', 12), (821, 'Bhavnagar', 12), (822, 'Bhayavadar', 12), (823, 'Bhestan', 12), (824, 'Bhuj', 12), (825, 'Bilimora', 12), (826, 'Bilkha', 12), (827, 'Billimora', 12), (828, 'Bodakdev', 12), (829, 'Bodeli', 12), (830, 'Bopal', 12), (831, 'Boria', 12), (832, 'Boriavi', 12), (833, 'Borsad', 12), (834, 'Botad', 12), (835, 'Cambay', 12), (836, 'Chaklasi', 12), (837, 'Chala', 12), (838, 'Chalala', 12), (839, 'Chalthan', 12), (840, 'Chanasma', 12), (841, 'Chandisar', 12), (842, 'Chandkheda', 12), (843, 'Chanod', 12), (844, 'Chaya', 12), (845, 'Chenpur', 12), (846, 'Chhapi', 12), (847, 'Chhaprabhatha', 12), (848, 'Chhatral', 12), (849, 'Chhota Udepur', 12), (850, 'Chikhli', 12), (851, 'Chiloda', 12), (852, 'Chorvad', 12), (853, 'Chotila', 12), (854, 'Dabhoi', 12), (855, 'Dadara', 12), (856, 'Dahod', 12), (857, 'Dakor', 12), (858, 'Damnagar', 12), (859, 'Deesa', 12), (860, 'Delvada', 12), (861, 'Devgadh Baria', 12), (862, 'Devsar', 12), (863, 'Dhandhuka', 12), (864, 'Dhanera', 12), (865, 'Dhangdhra', 12), (866, 'Dhansura', 12), (867, 'Dharampur', 12), (868, 'Dhari', 12), (869, 'Dhola', 12), (870, 'Dholka', 12), (871, 'Dholka Rural', 12), (872, 'Dhoraji', 12), (873, 'Dhrangadhra', 12), (874, 'Dhrol', 12), (875, 'Dhuva', 12), (876, 'Dhuwaran', 12), (877, 'Digvijaygram', 12), (878, 'Disa', 12), (879, 'Dungar', 12), (880, 'Dungarpur', 12), (881, 'Dungra', 12), (882, 'Dwarka', 12), (883, 'Flelanganj', 12), (884, 'GSFC Complex', 12), (885, 'Gadhda', 12), (886, 'Gandevi', 12), (887, 'Gandhidham', 12), (888, 'Gandhinagar', 12), (889, 'Gariadhar', 12), (890, 'Ghogha', 12), (891, 'Godhra', 12), (892, 'Gondal', 12), (893, 'Hajira INA', 12), (894, 'Halol', 12), (895, 'Halvad', 12), (896, 'Hansot', 12), (897, 'Harij', 12), (898, 'Himatnagar', 12), (899, 'Ichchhapor', 12), (900, 'Idar', 12), (901, 'Jafrabad', 12), (902, 'Jalalpore', 12), (903, 'Jambusar', 12), (904, 'Jamjodhpur', 12), (905, 'Jamnagar', 12), (906, 'Jasdan', 12), (907, 'Jawaharnagar', 12), (908, 'Jetalsar', 12), (909, 'Jetpur', 12), (910, 'Jodiya', 12), (911, 'Joshipura', 12), (912, 'Junagadh', 12), (913, 'Kadi', 12), (914, 'Kadodara', 12), (915, 'Kalavad', 12), (916, 'Kali', 12), (917, 'Kaliawadi', 12), (918, 'Kalol', 12), (919, 'Kalol INA', 12), (920, 'Kandla', 12), (921, 'Kanjari', 12), (922, 'Kanodar', 12), (923, 'Kapadwanj', 12), (924, 'Karachiya', 12), (925, 'Karamsad', 12), (926, 'Karjan', 12), (927, 'Kathial', 12), (928, 'Kathor', 12), (929, 'Katpar', 12), (930, 'Kavant', 12), (931, 'Keshod', 12), (932, 'Kevadiya', 12), (933, 'Khambhaliya', 12), (934, 'Khambhat', 12), (935, 'Kharaghoda', 12), (936, 'Khed Brahma', 12), (937, 'Kheda', 12), (938, 'Kheralu', 12), (939, 'Kodinar', 12), (940, 'Kosamba', 12), (941, 'Kundla', 12), (942, 'Kutch', 12), (943, 'Kutiyana', 12), (944, 'Lakhtar', 12), (945, 'Lalpur', 12), (946, 'Lambha', 12), (947, 'Lathi', 12), (948, 'Limbdi', 12), (949, 'Limla', 12), (950, 'Lunavada', 12), (951, 'Madhapar', 12), (952, 'Maflipur', 12), (953, 'Mahemdavad', 12), (954, 'Mahudha', 12), (955, 'Mahuva', 12), (956, 'Mahuvar', 12), (957, 'Makarba', 12), (958, 'Makarpura', 12), (959, 'Makassar', 12), (960, 'Maktampur', 12), (961, 'Malia', 12), (962, 'Malpur', 12), (963, 'Manavadar', 12), (964, 'Mandal', 12), (965, 'Mandvi', 12), (966, 'Mangrol', 12), (967, 'Mansa', 12), (968, 'Meghraj', 12), (969, 'Mehsana', 12), (970, 'Mendarla', 12), (971, 'Mithapur', 12), (972, 'Modasa', 12), (973, 'Mogravadi', 12), (974, 'Morbi', 12), (975, 'Morvi', 12), (976, 'Mundra', 12), (977, 'Nadiad', 12), (978, 'Naliya', 12), (979, 'Nanakvada', 12), (980, 'Nandej', 12), (981, 'Nandesari', 12), (982, 'Nandesari INA', 12), (983, 'Naroda', 12), (984, 'Navagadh', 12), (985, 'Navagam Ghed', 12), (986, 'Navsari', 12), (987, 'Ode', 12), (988, 'Okaf', 12), (989, 'Okha', 12), (990, 'Olpad', 12), (991, 'Paddhari', 12), (992, 'Padra', 12), (993, 'Palanpur', 12), (994, 'Palej', 12), (995, 'Pali', 12), (996, 'Palitana', 12), (997, 'Paliyad', 12), (998, 'Pandesara', 12), (999, 'Panoli', 12), (1000, 'Pardi', 12), (1001, 'Parnera', 12), (1002, 'Parvat', 12), (1003, 'Patan', 12), (1004, 'Patdi', 12), (1005, 'Petlad', 12), (
        1006,
        'Petrochemical Complex',
        12
    ), (1007, 'Porbandar', 12), (1008, 'Prantij', 12), (1009, 'Radhanpur', 12), (1010, 'Raiya', 12), (1011, 'Rajkot', 12), (1012, 'Rajpipla', 12), (1013, 'Rajula', 12), (1014, 'Ramod', 12), (1015, 'Ranavav', 12), (1016, 'Ranoli', 12), (1017, 'Rapar', 12), (1018, 'Sahij', 12), (1019, 'Salaya', 12), (1020, 'Sanand', 12), (1021, 'Sankheda', 12), (1022, 'Santrampur', 12), (1023, 'Saribujrang', 12), (1024, 'Sarigam INA', 12), (1025, 'Sayan', 12), (1026, 'Sayla', 12), (1027, 'Shahpur', 12), (1028, 'Shahwadi', 12), (1029, 'Shapar', 12), (1030, 'Shivrajpur', 12), (1031, 'Siddhapur', 12), (1032, 'Sidhpur', 12), (1033, 'Sihor', 12), (1034, 'Sika', 12), (1035, 'Singarva', 12), (1036, 'Sinor', 12), (1037, 'Sojitra', 12), (1038, 'Sola', 12), (1039, 'Songadh', 12), (1040, 'Suraj Karadi', 12), (1041, 'Surat', 12), (1042, 'Surendranagar', 12), (1043, 'Talaja', 12), (1044, 'Talala', 12), (1045, 'Talod', 12), (1046, 'Tankara', 12), (1047, 'Tarsali', 12), (1048, 'Thangadh', 12), (1049, 'Tharad', 12), (1050, 'Thasra', 12), (1051, 'Udyognagar', 12), (1052, 'Ukai', 12), (1053, 'Umbergaon', 12), (1054, 'Umbergaon INA', 12), (1055, 'Umrala', 12), (1056, 'Umreth', 12), (1057, 'Un', 12), (1058, 'Una', 12), (1059, 'Unjha', 12), (1060, 'Upleta', 12), (1061, 'Utran', 12), (1062, 'Uttarsanda', 12), (1063, 'V.U. Nagar', 12), (1064, 'V.V. Nagar', 12), (1065, 'Vadia', 12), (1066, 'Vadla', 12), (1067, 'Vadnagar', 12), (1068, 'Vadodara', 12), (1069, 'Vaghodia INA', 12), (1070, 'Valbhipur', 12), (1071, 'Vallabh Vidyanagar', 12), (1072, 'Valsad', 12), (1073, 'Valsad INA', 12), (1074, 'Vanthali', 12), (1075, 'Vapi', 12), (1076, 'Vapi INA', 12), (1077, 'Vartej', 12), (1078, 'Vasad', 12), (1079, 'Vasna Borsad INA', 12), (1080, 'Vaso', 12), (1081, 'Veraval', 12), (1082, 'Vidyanagar', 12), (1083, 'Vijalpor', 12), (1084, 'Vijapur', 12), (1085, 'Vinchhiya', 12), (1086, 'Vinzol', 12), (1087, 'Virpur', 12), (1088, 'Visavadar', 12), (1089, 'Visnagar', 12), (1090, 'Vyara', 12), (1091, 'Wadhwan', 12), (1092, 'Waghai', 12), (1093, 'Waghodia', 12), (1094, 'Wankaner', 12), (1095, 'Zalod', 12), (1096, 'Ambala', 13), (1097, 'Ambala Cantt', 13), (1098, 'Asan Khurd', 13), (1099, 'Asandh', 13), (1100, 'Ateli', 13), (1101, 'Babiyal', 13), (1102, 'Bahadurgarh', 13), (1103, 'Ballabgarh', 13), (1104, 'Barwala', 13), (1105, 'Bawal', 13), (1106, 'Bawani Khera', 13), (1107, 'Beri', 13), (1108, 'Bhiwani', 13), (1109, 'Bilaspur', 13), (1110, 'Buria', 13), (1111, 'Charkhi Dadri', 13), (1112, 'Chhachhrauli', 13), (1113, 'Chita', 13), (1114, 'Dabwali', 13), (1115, 'Dharuhera', 13), (1116, 'Dundahera', 13), (1117, 'Ellenabad', 13), (1118, 'Farakhpur', 13), (1119, 'Faridabad', 13), (1120, 'Farrukhnagar', 13), (1121, 'Fatehabad', 13), (1122, 'Firozpur Jhirka', 13), (1123, 'Gannaur', 13), (1124, 'Ghraunda', 13), (1125, 'Gohana', 13), (1126, 'Gurgaon', 13), (1127, 'Haileymandi', 13), (1128, 'Hansi', 13), (1129, 'Hasanpur', 13), (1130, 'Hathin', 13), (1131, 'Hisar', 13), (1132, 'Hissar', 13), (1133, 'Hodal', 13), (1134, 'Indri', 13), (1135, 'Jagadhri', 13), (1136, 'Jakhal Mandi', 13), (1137, 'Jhajjar', 13), (1138, 'Jind', 13), (1139, 'Julana', 13), (1140, 'Kaithal', 13), (1141, 'Kalanur', 13), (1142, 'Kalanwali', 13), (1143, 'Kalayat', 13), (1144, 'Kalka', 13), (1145, 'Kanina', 13), (1146, 'Kansepur', 13), (1147, 'Kardhan', 13), (1148, 'Karnal', 13), (1149, 'Kharkhoda', 13), (1150, 'Kheri Sampla', 13), (1151, 'Kundli', 13), (1152, 'Kurukshetra', 13), (1153, 'Ladrawan', 13), (1154, 'Ladwa', 13), (1155, 'Loharu', 13), (1156, 'Maham', 13), (1157, 'Mahendragarh', 13), (1158, 'Mustafabad', 13), (1159, 'Nagai Chaudhry', 13), (1160, 'Narayangarh', 13), (1161, 'Narnaul', 13), (1162, 'Narnaund', 13), (1163, 'Narwana', 13), (1164, 'Nilokheri', 13), (1165, 'Nuh', 13), (1166, 'Palwal', 13), (1167, 'Panchkula', 13), (1168, 'Panipat', 13), (
        1169,
        'Panipat Taraf Ansar',
        13
    ), (
        1170,
        'Panipat Taraf Makhdum Zadgan',
        13
    ), (
        1171,
        'Panipat Taraf Rajputan',
        13
    ), (1172, 'Pehowa', 13), (1173, 'Pinjaur', 13), (1174, 'Punahana', 13), (1175, 'Pundri', 13), (1176, 'Radaur', 13), (1177, 'Raipur Rani', 13), (1178, 'Rania', 13), (1179, 'Ratiya', 13), (1180, 'Rewari', 13), (1181, 'Rohtak', 13), (1182, 'Ropar', 13), (1183, 'Sadauri', 13), (1184, 'Safidon', 13), (1185, 'Samalkha', 13), (1186, 'Sankhol', 13), (1187, 'Sasauli', 13), (1188, 'Shahabad', 13), (1189, 'Sirsa', 13), (1190, 'Siwani', 13), (1191, 'Sohna', 13), (1192, 'Sonipat', 13), (1193, 'Sukhrali', 13), (1194, 'Taoru', 13), (1195, 'Taraori', 13), (1196, 'Tauru', 13), (1197, 'Thanesar', 13), (1198, 'Tilpat', 13), (1199, 'Tohana', 13), (1200, 'Tosham', 13), (1201, 'Uchana', 13), (1202, 'Uklana Mandi', 13), (1203, 'Uncha Siwana', 13), (1204, 'Yamunanagar', 13), (1205, 'Arki', 14), (1206, 'Baddi', 14), (1207, 'Bakloh', 14), (1208, 'Banjar', 14), (1209, 'Bhota', 14), (1210, 'Bhuntar', 14), (1211, 'Bilaspur', 14), (1212, 'Chamba', 14), (1213, 'Chaupal', 14), (1214, 'Chuari Khas', 14), (1215, 'Dagshai', 14), (1216, 'Dalhousie', 14), (
        1217,
        'Dalhousie Cantonment',
        14
    ), (1218, 'Damtal', 14), (1219, 'Daulatpur', 14), (1220, 'Dera Gopipur', 14), (1221, 'Dhalli', 14), (1222, 'Dharamshala', 14), (1223, 'Gagret', 14), (1224, 'Ghamarwin', 14), (1225, 'Hamirpur', 14), (1226, 'Jawala Mukhi', 14), (1227, 'Jogindarnagar', 14), (1228, 'Jubbal', 14), (1229, 'Jutogh', 14), (1230, 'Kala Amb', 14), (1231, 'Kalpa', 14), (1232, 'Kangra', 14), (1233, 'Kasauli', 14), (1234, 'Kot Khai', 14), (1235, 'Kullu', 14), (1236, 'Kulu', 14), (1237, 'Manali', 14), (1238, 'Mandi', 14), (1239, 'Mant Khas', 14), (1240, 'Mehatpur Basdehra', 14), (1241, 'Nadaun', 14), (1242, 'Nagrota', 14), (1243, 'Nahan', 14), (1244, 'Naina Devi', 14), (1245, 'Nalagarh', 14), (1246, 'Narkanda', 14), (1247, 'Nurpur', 14), (1248, 'Palampur', 14), (1249, 'Pandoh', 14), (1250, 'Paonta Sahib', 14), (1251, 'Parwanoo', 14), (1252, 'Parwanu', 14), (1253, 'Rajgarh', 14), (1254, 'Rampur', 14), (1255, 'Rawalsar', 14), (1256, 'Rohru', 14), (1257, 'Sabathu', 14), (1258, 'Santokhgarh', 14), (1259, 'Sarahan', 14), (1260, 'Sarka Ghat', 14), (1261, 'Seoni', 14), (1262, 'Shimla', 14), (1263, 'Sirmaur', 14), (1264, 'Solan', 14), (1265, 'Solon', 14), (1266, 'Sundarnagar', 14), (1267, 'Sundernagar', 14), (1268, 'Talai', 14), (1269, 'Theog', 14), (1270, 'Tira Sujanpur', 14), (1271, 'Una', 14), (1272, 'Yol', 14), (1273, 'Achabal', 15), (1274, 'Akhnur', 15), (1275, 'Anantnag', 15), (1276, 'Arnia', 15), (1277, 'Awantipora', 15), (1278, 'Badami Bagh', 15), (1279, 'Bandipur', 15), (1280, 'Banihal', 15), (1281, 'Baramula', 15), (1282, 'Baramulla', 15), (1283, 'Bari Brahmana', 15), (1284, 'Bashohli', 15), (1285, 'Batote', 15), (1286, 'Bhaderwah', 15), (1287, 'Bijbiara', 15), (1288, 'Billawar', 15), (1289, 'Birwah', 15), (1290, 'Bishna', 15), (1291, 'Budgam', 15), (1292, 'Charari Sharief', 15), (1293, 'Chenani', 15), (1294, 'Doda', 15), (1295, 'Duru-Verinag', 15), (1296, 'Gandarbat', 15), (1297, 'Gho Manhasan', 15), (1298, 'Gorah Salathian', 15), (1299, 'Gulmarg', 15), (1300, 'Hajan', 15), (1301, 'Handwara', 15), (1302, 'Hiranagar', 15), (1303, 'Jammu', 15), (1304, 'Jammu Cantonment', 15), (1305, 'Jammu Tawi', 15), (1306, 'Jourian', 15), (1307, 'Kargil', 15), (1308, 'Kathua', 15), (1309, 'Katra', 15), (1310, 'Khan Sahib', 15), (1311, 'Khour', 15), (1312, 'Khrew', 15), (1313, 'Kishtwar', 15), (1314, 'Kud', 15), (1315, 'Kukernag', 15), (1316, 'Kulgam', 15), (1317, 'Kunzer', 15), (1318, 'Kupwara', 15), (1319, 'Lakhenpur', 15), (1320, 'Leh', 15), (1321, 'Magam', 15), (1322, 'Mattan', 15), (1323, 'Naushehra', 15), (1324, 'Pahalgam', 15), (1325, 'Pampore', 15), (1326, 'Parole', 15), (1327, 'Pattan', 15), (1328, 'Pulwama', 15), (1329, 'Punch', 15), (1330, 'Qazigund', 15), (1331, 'Rajauri', 15), (1332, 'Ramban', 15), (1333, 'Ramgarh', 15), (1334, 'Ramnagar', 15), (1335, 'Ranbirsingh Pora', 15), (1336, 'Reasi', 15), (1337, 'Rehambal', 15), (1338, 'Samba', 15), (1339, 'Shupiyan', 15), (1340, 'Sopur', 15), (1341, 'Srinagar', 15), (1342, 'Sumbal', 15), (1343, 'Sunderbani', 15), (1344, 'Talwara', 15), (1345, 'Thanamandi', 15), (1346, 'Tral', 15), (1347, 'Udhampur', 15), (1348, 'Uri', 15), (1349, 'Vijaypur', 15), (1350, 'Adityapur', 16), (1351, 'Amlabad', 16), (1352, 'Angarpathar', 16), (1353, 'Ara', 16), (1354, 'Babua Kalan', 16), (1355, 'Bagbahra', 16), (1356, 'Baliapur', 16), (1357, 'Baliari', 16), (1358, 'Balkundra', 16), (1359, 'Bandhgora', 16), (1360, 'Barajamda', 16), (1361, 'Barhi', 16), (1362, 'Barka Kana', 16), (1363, 'Barki Saraiya', 16), (1364, 'Barughutu', 16), (1365, 'Barwadih', 16), (1366, 'Basaria', 16), (1367, 'Basukinath', 16), (1368, 'Bermo', 16), (1369, 'Bhagatdih', 16), (1370, 'Bhaurah', 16), (1371, 'Bhojudih', 16), (1372, 'Bhuli', 16), (1373, 'Bokaro', 16), (1374, 'Borio Bazar', 16), (1375, 'Bundu', 16), (1376, 'Chaibasa', 16), (1377, 'Chaitudih', 16), (1378, 'Chakradharpur', 16), (1379, 'Chakulia', 16), (1380, 'Chandaur', 16), (1381, 'Chandil', 16), (1382, 'Chandrapura', 16), (1383, 'Chas', 16), (1384, 'Chatra', 16), (1385, 'Chhatatanr', 16), (1386, 'Chhotaputki', 16), (1387, 'Chiria', 16), (1388, 'Chirkunda', 16), (1389, 'Churi', 16), (1390, 'Daltenganj', 16), (1391, 'Danguwapasi', 16), (1392, 'Dari', 16), (1393, 'Deoghar', 16), (1394, 'Deorikalan', 16), (1395, 'Devghar', 16), (1396, 'Dhanbad', 16), (1397, 'Dhanwar', 16), (1398, 'Dhaunsar', 16), (1399, 'Dugda', 16), (1400, 'Dumarkunda', 16), (1401, 'Dumka', 16), (1402, 'Egarkunr', 16), (1403, 'Gadhra', 16), (1404, 'Garwa', 16), (1405, 'Ghatsila', 16), (1406, 'Ghorabandha', 16), (1407, 'Gidi', 16), (1408, 'Giridih', 16), (1409, 'Gobindpur', 16), (1410, 'Godda', 16), (1411, 'Godhar', 16), (1412, 'Golphalbari', 16), (1413, 'Gomoh', 16), (1414, 'Gua', 16), (1415, 'Gumia', 16), (1416, 'Gumla', 16), (1417, 'Haludbani', 16), (1418, 'Hazaribag', 16), (1419, 'Hesla', 16), (1420, 'Husainabad', 16), (1421, 'Isri', 16), (1422, 'Jadugora', 16), (1423, 'Jagannathpur', 16), (1424, 'Jamadoba', 16), (1425, 'Jamshedpur', 16), (1426, 'Jamtara', 16), (1427, 'Jarangdih', 16), (1428, 'Jaridih', 16), (1429, 'Jasidih', 16), (1430, 'Jena', 16), (1431, 'Jharia', 16), (1432, 'Jharia Khas', 16), (1433, 'Jhinkpani', 16), (1434, 'Jhumri Tilaiya', 16), (1435, 'Jorapokhar', 16), (1436, 'Jugsalai', 16), (1437, 'Kailudih', 16), (1438, 'Kalikapur', 16), (1439, 'Kandra', 16), (1440, 'Kanke', 16), (1441, 'Katras', 16), (1442, 'Kedla', 16), (1443, 'Kenduadih', 16), (1444, 'Kharkhari', 16), (1445, 'Kharsawan', 16), (1446, 'Khelari', 16), (1447, 'Khunti', 16), (1448, 'Kiri Buru', 16), (1449, 'Kiriburu', 16), (1450, 'Kodarma', 16), (1451, 'Kuju', 16), (1452, 'Kurpania', 16), (1453, 'Kustai', 16), (1454, 'Lakarka', 16), (1455, 'Lapanga', 16), (1456, 'Latehar', 16), (1457, 'Lohardaga', 16), (1458, 'Loiya', 16), (1459, 'Loyabad', 16), (1460, 'Madhupur', 16), (1461, 'Mahesh Mundi', 16), (1462, 'Maithon', 16), (1463, 'Malkera', 16), (1464, 'Mango', 16), (1465, 'Manoharpur', 16), (1466, 'Marma', 16), (
        1467,
        'Meghahatuburu Forest village',
        16
    ), (1468, 'Mera', 16), (1469, 'Meru', 16), (1470, 'Mihijam', 16), (1471, 'Mugma', 16), (1472, 'Muri', 16), (1473, 'Mushabani', 16), (1474, 'Nagri Kalan', 16), (1475, 'Netarhat', 16), (1476, 'Nirsa', 16), (1477, 'Noamundi', 16), (1478, 'Okni', 16), (1479, 'Orla', 16), (1480, 'Pakaur', 16), (1481, 'Palamau', 16), (1482, 'Palawa', 16), (1483, 'Panchet', 16), (1484, 'Panrra', 16), (1485, 'Paratdih', 16), (1486, 'Pathardih', 16), (1487, 'Patratu', 16), (1488, 'Phusro', 16), (1489, 'Pondar Kanali', 16), (1490, 'Rajmahal', 16), (1491, 'Ramgarh', 16), (1492, 'Ranchi', 16), (1493, 'Ray', 16), (1494, 'Rehla', 16), (1495, 'Religara', 16), (1496, 'Rohraband', 16), (1497, 'Sahibganj', 16), (1498, 'Sahnidih', 16), (1499, 'Saraidhela', 16), (1500, 'Saraikela', 16), (1501, 'Sarjamda', 16), (1502, 'Saunda', 16), (1503, 'Sewai', 16), (1504, 'Sijhua', 16), (1505, 'Sijua', 16), (1506, 'Simdega', 16), (1507, 'Sindari', 16), (1508, 'Sinduria', 16), (1509, 'Sini', 16), (1510, 'Sirka', 16), (1511, 'Siuliban', 16), (1512, 'Surubera', 16), (1513, 'Tati', 16), (1514, 'Tenudam', 16), (1515, 'Tisra', 16), (1516, 'Topa', 16), (1517, 'Topchanchi', 16), (1518, 'Adityanagar', 17), (1519, 'Adityapatna', 17), (1520, 'Afzalpur', 17), (1521, 'Ajjampur', 17), (1522, 'Aland', 17), (1523, 'Almatti Sitimani', 17), (1524, 'Alnavar', 17), (1525, 'Alur', 17), (1526, 'Ambikanagara', 17), (1527, 'Anekal', 17), (1528, 'Ankola', 17), (1529, 'Annigeri', 17), (1530, 'Arkalgud', 17), (1531, 'Arsikere', 17), (1532, 'Athni', 17), (1533, 'Aurad', 17), (1534, 'Badagavettu', 17), (1535, 'Badami', 17), (1536, 'Bagalkot', 17), (1537, 'Bagepalli', 17), (1538, 'Bailhongal', 17), (1539, 'Baindur', 17), (1540, 'Bajala', 17), (1541, 'Bajpe', 17), (1542, 'Banavar', 17), (1543, 'Bangarapet', 17), (1544, 'Bankapura', 17), (1545, 'Bannur', 17), (1546, 'Bantwal', 17), (1547, 'Basavakalyan', 17), (1548, 'Basavana Bagevadi', 17), (1549, 'Belagula', 17), (1550, 'Belakavadiq', 17), (1551, 'Belgaum', 17), (1552, 'Belgaum Cantonment', 17), (1553, 'Bellary', 17), (1554, 'Belluru', 17), (1555, 'Beltangadi', 17), (1556, 'Belur', 17), (1557, 'Belvata', 17), (1558, 'Bengaluru', 17), (1559, 'Bhadravati', 17), (1560, 'Bhalki', 17), (1561, 'Bhatkal', 17), (1562, 'Bhimarayanagudi', 17), (1563, 'Bhogadi', 17), (1564, 'Bidar', 17), (1565, 'Bijapur', 17), (1566, 'Bilgi', 17), (1567, 'Birur', 17), (1568, 'Bommanahalli', 17), (1569, 'Bommasandra', 17), (1570, 'Byadgi', 17), (1571, 'Byatarayanapura', 17), (1572, 'Chakranagar Colony', 17), (1573, 'Challakere', 17), (1574, 'Chamrajnagar', 17), (1575, 'Chamundi Betta', 17), (1576, 'Channagiri', 17), (1577, 'Channapatna', 17), (1578, 'Channarayapatna', 17), (1579, 'Chickballapur', 17), (1580, 'Chik Ballapur', 17), (1581, 'Chikkaballapur', 17), (1582, 'Chikmagalur', 17), (1583, 'Chiknayakanhalli', 17), (1584, 'Chikodi', 17), (1585, 'Chincholi', 17), (1586, 'Chintamani', 17), (1587, 'Chitaguppa', 17), (1588, 'Chitapur', 17), (1589, 'Chitradurga', 17), (1590, 'Coorg', 17), (1591, 'Dandeli', 17), (1592, 'Dargajogihalli', 17), (1593, 'Dasarahalli', 17), (1594, 'Davangere', 17), (1595, 'Devadurga', 17), (1596, 'Devagiri', 17), (1597, 'Devanhalli', 17), (1598, 'Dharwar', 17), (1599, 'Dhupdal', 17), (1600, 'Dod Ballapur', 17), (1601, 'Donimalai', 17), (1602, 'Gadag', 17), (1603, 'Gajendragarh', 17), (1604, 'Ganeshgudi', 17), (1605, 'Gangawati', 17), (1606, 'Gangoli', 17), (1607, 'Gauribidanur', 17), (1608, 'Gokak', 17), (1609, 'Gokak Falls', 17), (1610, 'Gonikoppal', 17), (1611, 'Gorur', 17), (1612, 'Gottikere', 17), (1613, 'Gubbi', 17), (1614, 'Gudibanda', 17), (1615, 'Gulbarga', 17), (1616, 'Guledgudda', 17), (1617, 'Gundlupet', 17), (1618, 'Gurmatkal', 17), (1619, 'Haliyal', 17), (1620, 'Hangal', 17), (1621, 'Harihar', 17), (1622, 'Harpanahalli', 17), (1623, 'Hassan', 17), (1624, 'Hatti', 17), (1625, 'Hatti Gold Mines', 17), (1626, 'Haveri', 17), (1627, 'Hebbagodi', 17), (1628, 'Hebbalu', 17), (1629, 'Hebri', 17), (1630, 'Heggadadevanakote', 17), (1631, 'Herohalli', 17), (1632, 'Hidkal', 17), (1633, 'Hindalgi', 17), (1634, 'Hirekerur', 17), (1635, 'Hiriyur', 17), (1636, 'Holalkere', 17), (1637, 'Hole Narsipur', 17), (1638, 'Homnabad', 17), (1639, 'Honavar', 17), (1640, 'Honnali', 17), (1641, 'Hosakote', 17), (1642, 'Hosanagara', 17), (1643, 'Hosangadi', 17), (1644, 'Hosdurga', 17), (1645, 'Hoskote', 17), (1646, 'Hospet', 17), (1647, 'Hubli', 17), (1648, 'Hukeri', 17), (1649, 'Hunasagi', 17), (1650, 'Hunasamaranahalli', 17), (1651, 'Hungund', 17), (1652, 'Hunsur', 17), (1653, 'Huvina Hadagalli', 17), (1654, 'Ilkal', 17), (1655, 'Indi', 17), (1656, 'Jagalur', 17), (1657, 'Jamkhandi', 17), (1658, 'Jevargi', 17), (1659, 'Jog Falls', 17), (1660, 'Kabini Colony', 17), (1661, 'Kadur', 17), (1662, 'Kalghatgi', 17), (1663, 'Kamalapuram', 17), (1664, 'Kampli', 17), (1665, 'Kanakapura', 17), (1666, 'Kangrali BK', 17), (1667, 'Kangrali KH', 17), (1668, 'Kannur', 17), (1669, 'Karkala', 17), (1670, 'Karwar', 17), (1671, 'Kemminja', 17), (1672, 'Kengeri', 17), (1673, 'Kerur', 17), (1674, 'Khanapur', 17), (1675, 'Kodigenahalli', 17), (1676, 'Kodiyal', 17), (1677, 'Kodlipet', 17), (1678, 'Kolar', 17), (1679, 'Kollegal', 17), (1680, 'Konanakunte', 17), (1681, 'Konanur', 17), (1682, 'Konnur', 17), (1683, 'Koppa', 17), (1684, 'Koppal', 17), (1685, 'Koratagere', 17), (1686, 'Kotekara', 17), (1687, 'Kothnur', 17), (1688, 'Kotturu', 17), (1689, 'Krishnapura', 17), (1690, 'Krishnarajanagar', 17), (1691, 'Krishnarajapura', 17), (1692, 'Krishnarajasagara', 17), (1693, 'Krishnarajpet', 17), (1694, 'Kudchi', 17), (1695, 'Kudligi', 17), (1696, 'Kudremukh', 17), (1697, 'Kumsi', 17), (1698, 'Kumta', 17), (1699, 'Kundapura', 17), (1700, 'Kundgol', 17), (1701, 'Kunigal', 17), (1702, 'Kurgunta', 17), (1703, 'Kushalnagar', 17), (1704, 'Kushtagi', 17), (1705, 'Kyathanahalli', 17), (1706, 'Lakshmeshwar', 17), (1707, 'Lingsugur', 17), (1708, 'Londa', 17), (1709, 'Maddur', 17), (1710, 'Madhugiri', 17), (1711, 'Madikeri', 17), (1712, 'Magadi', 17), (1713, 'Magod Falls', 17), (1714, 'Mahadeswara Hills', 17), (1715, 'Mahadevapura', 17), (1716, 'Mahalingpur', 17), (1717, 'Maisuru', 17), (1718, 'Maisuru Cantonment', 17), (1719, 'Malavalli', 17), (1720, 'Mallar', 17), (1721, 'Malpe', 17), (1722, 'Malur', 17), (1723, 'Manchenahalli', 17), (1724, 'Mandya', 17), (1725, 'Mangalore', 17), (1726, 'Mangaluru', 17), (1727, 'Manipal', 17), (1728, 'Manvi', 17), (1729, 'Maski', 17), (1730, 'Mastikatte Colony', 17), (1731, 'Mayakonda', 17), (1732, 'Melukote', 17), (1733, 'Molakalmuru', 17), (1734, 'Mudalgi', 17), (1735, 'Mudbidri', 17), (1736, 'Muddebihal', 17), (1737, 'Mudgal', 17), (1738, 'Mudhol', 17), (1739, 'Mudigere', 17), (1740, 'Mudushedde', 17), (1741, 'Mulbagal', 17), (1742, 'Mulgund', 17), (1743, 'Mulki', 17), (1744, 'Mulur', 17), (1745, 'Mundargi', 17), (1746, 'Mundgod', 17), (1747, 'Munirabad', 17), (1748, 'Munnur', 17), (1749, 'Murudeshwara', 17), (1750, 'Mysore', 17), (1751, 'Nagamangala', 17), (1752, 'Nanjangud', 17), (1753, 'Naragund', 17), (1754, 'Narasimharajapura', 17), (1755, 'Naravi', 17), (1756, 'Narayanpur', 17), (1757, 'Naregal', 17), (1758, 'Navalgund', 17), (1759, 'Nelmangala', 17), (1760, 'Nipani', 17), (1761, 'Nitte', 17), (1762, 'Nyamati', 17), (1763, 'Padu', 17), (1764, 'Pandavapura', 17), (1765, 'Pattanagere', 17), (1766, 'Pavagada', 17), (1767, 'Piriyapatna', 17), (1768, 'Ponnampet', 17), (1769, 'Puttur', 17), (1770, 'Rabkavi', 17), (1771, 'Raichur', 17), (1772, 'Ramanagaram', 17), (1773, 'Ramdurg', 17), (1774, 'Ranibennur', 17), (1775, 'Raybag', 17), (1776, 'Robertsonpet', 17), (1777, 'Ron', 17), (1778, 'Sadalgi', 17), (1779, 'Sagar', 17), (1780, 'Sakleshpur', 17), (1781, 'Saligram', 17), (1782, 'Sandur', 17), (1783, 'Sanivarsante', 17), (1784, 'Sankeshwar', 17), (1785, 'Sargur', 17), (1786, 'Sathyamangala', 17), (1787, 'Saundatti Yellamma', 17), (1788, 'Savanur', 17), (1789, 'Sedam', 17), (1790, 'Shahabad', 17), (1791, 'Shahabad A.C.C.', 17), (1792, 'Shahapur', 17), (1793, 'Shahpur', 17), (1794, 'Shaktinagar', 17), (1795, 'Shiggaon', 17), (1796, 'Shikarpur', 17), (1797, 'Shimoga', 17), (1798, 'Shirhatti', 17), (1799, 'Shorapur', 17), (1800, 'Shravanabelagola', 17), (1801, 'Shrirangapattana', 17), (1802, 'Siddapur', 17), (1803, 'Sidlaghatta', 17), (1804, 'Sindgi', 17), (1805, 'Sindhnur', 17), (1806, 'Sira', 17), (1807, 'Sirakoppa', 17), (1808, 'Sirsi', 17), (1809, 'Siruguppa', 17), (1810, 'Someshwar', 17), (1811, 'Somvarpet', 17), (1812, 'Sorab', 17), (1813, 'Sringeri', 17), (1814, 'Srinivaspur', 17), (1815, 'Sulya', 17), (1816, 'Suntikopa', 17), (1817, 'Talikota', 17), (1818, 'Tarikera', 17), (1819, 'Tekkalakota', 17), (1820, 'Terdal', 17), (1821, 'Thokur', 17), (1822, 'Thumbe', 17), (1823, 'Tiptur', 17), (1824, 'Tirthahalli', 17), (
        1825,
        'Tirumakudal Narsipur',
        17
    ), (1826, 'Tonse', 17), (1827, 'Tumkur', 17), (1828, 'Turuvekere', 17), (1829, 'Udupi', 17), (1830, 'Ullal', 17), (1831, 'Uttarahalli', 17), (1832, 'Venkatapura', 17), (1833, 'Vijayapura', 17), (1834, 'Virarajendrapet', 17), (1835, 'Wadi', 17), (1836, 'Wadi A.C.C.', 17), (1837, 'Yadgir', 17), (1838, 'Yelahanka', 17), (1839, 'Yelandur', 17), (1840, 'Yelbarga', 17), (1841, 'Yellapur', 17), (1842, 'Yenagudde', 17), (1843, 'Adimaly', 19), (1844, 'Adoor', 19), (1845, 'Adur', 19), (1846, 'Akathiyur', 19), (1847, 'Alangad', 19), (1848, 'Alappuzha', 19), (1849, 'Aluva', 19), (1850, 'Ancharakandy', 19), (1851, 'Angamaly', 19), (1852, 'Aroor', 19), (1853, 'Arukutti', 19), (1854, 'Attingal', 19), (1855, 'Avinissery', 19), (1856, 'Azhikode North', 19), (1857, 'Azhikode South', 19), (1858, 'Azhiyur', 19), (1859, 'Balussery', 19), (1860, 'Bangramanjeshwar', 19), (1861, 'Beypur', 19), (1862, 'Brahmakulam', 19), (1863, 'Chala', 19), (1864, 'Chalakudi', 19), (1865, 'Changanacheri', 19), (1866, 'Chauwara', 19), (1867, 'Chavakkad', 19), (1868, 'Chelakkara', 19), (1869, 'Chelora', 19), (1870, 'Chendamangalam', 19), (1871, 'Chengamanad', 19), (1872, 'Chengannur', 19), (1873, 'Cheranallur', 19), (1874, 'Cheriyakadavu', 19), (1875, 'Cherthala', 19), (1876, 'Cherukunnu', 19), (1877, 'Cheruthazham', 19), (1878, 'Cheruvannur', 19), (1879, 'Cheruvattur', 19), (1880, 'Chevvur', 19), (1881, 'Chirakkal', 19), (1882, 'Chittur', 19), (1883, 'Chockli', 19), (1884, 'Churnikkara', 19), (1885, 'Dharmadam', 19), (1886, 'Edappal', 19), (1887, 'Edathala', 19), (1888, 'Elayavur', 19), (1889, 'Elur', 19), (1890, 'Eranholi', 19), (1891, 'Erattupetta', 19), (1892, 'Ernakulam', 19), (1893, 'Eruvatti', 19), (1894, 'Ettumanoor', 19), (1895, 'Feroke', 19), (1896, 'Guruvayur', 19), (1897, 'Haripad', 19), (1898, 'Hosabettu', 19), (1899, 'Idukki', 19), (1900, 'Iringaprom', 19), (1901, 'Irinjalakuda', 19), (1902, 'Iriveri', 19), (1903, 'Kadachira', 19), (1904, 'Kadalundi', 19), (1905, 'Kadamakkudy', 19), (1906, 'Kadirur', 19), (1907, 'Kadungallur', 19), (1908, 'Kakkodi', 19), (1909, 'Kalady', 19), (1910, 'Kalamassery', 19), (1911, 'Kalliasseri', 19), (1912, 'Kalpetta', 19), (1913, 'Kanhangad', 19), (1914, 'Kanhirode', 19), (1915, 'Kanjikkuzhi', 19), (1916, 'Kanjikode', 19), (1917, 'Kanjirappalli', 19), (1918, 'Kannadiparamba', 19), (1919, 'Kannangad', 19), (1920, 'Kannapuram', 19), (1921, 'Kannur', 19), (1922, 'Kannur Cantonment', 19), (1923, 'Karunagappally', 19), (1924, 'Karuvamyhuruthy', 19), (1925, 'Kasaragod', 19), (1926, 'Kasargod', 19), (1927, 'Kattappana', 19), (1928, 'Kayamkulam', 19), (1929, 'Kedamangalam', 19), (1930, 'Kochi', 19), (1931, 'Kodamthuruthu', 19), (1932, 'Kodungallur', 19), (1933, 'Koduvally', 19), (1934, 'Koduvayur', 19), (1935, 'Kokkothamangalam', 19), (1936, 'Kolazhy', 19), (1937, 'Kollam', 19), (1938, 'Komalapuram', 19), (1939, 'Koothattukulam', 19), (1940, 'Koratty', 19), (1941, 'Kothamangalam', 19), (1942, 'Kottarakkara', 19), (1943, 'Kottayam', 19), (1944, 'Kottayam Malabar', 19), (1945, 'Kottuvally', 19), (1946, 'Koyilandi', 19), (1947, 'Kozhikode', 19), (1948, 'Kudappanakunnu', 19), (1949, 'Kudlu', 19), (1950, 'Kumarakom', 19), (1951, 'Kumily', 19), (1952, 'Kunnamangalam', 19), (1953, 'Kunnamkulam', 19), (1954, 'Kurikkad', 19), (1955, 'Kurkkanchery', 19), (1956, 'Kuthuparamba', 19), (1957, 'Kuttakulam', 19), (1958, 'Kuttikkattur', 19), (1959, 'Kuttur', 19), (1960, 'Malappuram', 19), (1961, 'Mallappally', 19), (1962, 'Manjeri', 19), (1963, 'Manjeshwar', 19), (1964, 'Mannancherry', 19), (1965, 'Mannar', 19), (1966, 'Mannarakkat', 19), (1967, 'Maradu', 19), (1968, 'Marathakkara', 19), (1969, 'Marutharod', 19), (1970, 'Mattannur', 19), (1971, 'Mavelikara', 19), (1972, 'Mavilayi', 19), (1973, 'Mavur', 19), (1974, 'Methala', 19), (1975, 'Muhamma', 19), (1976, 'Mulavukad', 19), (1977, 'Mundakayam', 19), (1978, 'Munderi', 19), (1979, 'Munnar', 19), (1980, 'Muthakunnam', 19), (1981, 'Muvattupuzha', 19), (1982, 'Muzhappilangad', 19), (1983, 'Nadapuram', 19), (1984, 'Nadathara', 19), (1985, 'Narath', 19), (1986, 'Nattakam', 19), (1987, 'Nedumangad', 19), (1988, 'Nenmenikkara', 19), (1989, 'New Mahe', 19), (1990, 'Neyyattinkara', 19), (1991, 'Nileshwar', 19), (1992, 'Olavanna', 19), (1993, 'Ottapalam', 19), (1994, 'Ottappalam', 19), (1995, 'Paduvilayi', 19), (1996, 'Palai', 19), (1997, 'Palakkad', 19), (1998, 'Palayad', 19), (1999, 'Palissery', 19), (2000, 'Pallikkunnu', 19), (2001, 'Paluvai', 19), (2002, 'Panniyannur', 19), (2003, 'Pantalam', 19), (2004, 'Panthiramkavu', 19), (2005, 'Panur', 19), (2006, 'Pappinisseri', 19), (2007, 'Parassala', 19), (2008, 'Paravur', 19), (2009, 'Pathanamthitta', 19), (2010, 'Pathanapuram', 19), (2011, 'Pathiriyad', 19), (2012, 'Pattambi', 19), (2013, 'Pattiom', 19), (2014, 'Pavaratty', 19), (2015, 'Payyannur', 19), (2016, 'Peermade', 19), (2017, 'Perakam', 19), (2018, 'Peralasseri', 19), (2019, 'Peringathur', 19), (2020, 'Perinthalmanna', 19), (2021, 'Perole', 19), (2022, 'Perumanna', 19), (2023, 'Perumbaikadu', 19), (2024, 'Perumbavoor', 19), (2025, 'Pinarayi', 19), (2026, 'Piravam', 19), (2027, 'Ponnani', 19), (2028, 'Pottore', 19), (2029, 'Pudukad', 19), (2030, 'Punalur', 19), (2031, 'Puranattukara', 19), (2032, 'Puthunagaram', 19), (2033, 'Puthuppariyaram', 19), (2034, 'Puzhathi', 19), (2035, 'Ramanattukara', 19), (2036, 'Shoranur', 19), (2037, 'Sultans Battery', 19), (2038, 'Sulthan Bathery', 19), (2039, 'Talipparamba', 19), (2040, 'Thaikkad', 19), (2041, 'Thalassery', 19), (2042, 'Thannirmukkam', 19), (2043, 'Theyyalingal', 19), (2044, 'Thiruvalla', 19), (2045, 'Thiruvananthapuram', 19), (2046, 'Thiruvankulam', 19), (2047, 'Thodupuzha', 19), (2048, 'Thottada', 19), (2049, 'Thrippunithura', 19), (2050, 'Thrissur', 19), (2051, 'Tirur', 19), (2052, 'Udma', 19), (2053, 'Vadakara', 19), (2054, 'Vaikam', 19), (2055, 'Valapattam', 19), (2056, 'Vallachira', 19), (2057, 'Varam', 19), (2058, 'Varappuzha', 19), (2059, 'Varkala', 19), (2060, 'Vayalar', 19), (2061, 'Vazhakkala', 19), (2062, 'Venmanad', 19), (2063, 'Villiappally', 19), (2064, 'Wayanad', 19), (2065, 'Agethi', 20), (2066, 'Amini', 20), (2067, 'Androth Island', 20), (2068, 'Kavaratti', 20), (2069, 'Minicoy', 20), (2070, 'Agar', 21), (2071, 'Ajaigarh', 21), (2072, 'Akoda', 21), (2073, 'Akodia', 21), (2074, 'Alampur', 21), (2075, 'Alirajpur', 21), (2076, 'Alot', 21), (2077, 'Amanganj', 21), (2078, 'Amarkantak', 21), (2079, 'Amarpatan', 21), (2080, 'Amarwara', 21), (2081, 'Ambada', 21), (2082, 'Ambah', 21), (2083, 'Amla', 21), (2084, 'Amlai', 21), (2085, 'Anjad', 21), (2086, 'Antri', 21), (2087, 'Anuppur', 21), (2088, 'Aron', 21), (2089, 'Ashoknagar', 21), (2090, 'Ashta', 21), (2091, 'Babai', 21), (2092, 'Bada Malhera', 21), (2093, 'Badagaon', 21), (2094, 'Badagoan', 21), (2095, 'Badarwas', 21), (2096, 'Badawada', 21), (2097, 'Badi', 21), (2098, 'Badkuhi', 21), (2099, 'Badnagar', 21), (2100, 'Badnawar', 21), (2101, 'Badod', 21), (2102, 'Badoda', 21), (2103, 'Badra', 21), (2104, 'Bagh', 21), (2105, 'Bagli', 21), (2106, 'Baihar', 21), (2107, 'Baikunthpur', 21), (2108, 'Bakswaha', 21), (2109, 'Balaghat', 21), (2110, 'Baldeogarh', 21), (2111, 'Bamaniya', 21), (2112, 'Bamhani', 21), (2113, 'Bamor', 21), (2114, 'Bamora', 21), (2115, 'Banda', 21), (2116, 'Bangawan', 21), (2117, 'Bansatar Kheda', 21), (2118, 'Baraily', 21), (2119, 'Barela', 21), (2120, 'Barghat', 21), (2121, 'Bargi', 21), (2122, 'Barhi', 21), (2123, 'Barigarh', 21), (2124, 'Barwaha', 21), (2125, 'Barwani', 21), (2126, 'Basoda', 21), (2127, 'Begamganj', 21), (2128, 'Beohari', 21), (2129, 'Berasia', 21), (2130, 'Betma', 21), (2131, 'Betul', 21), (2132, 'Betul Bazar', 21), (2133, 'Bhainsdehi', 21), (2134, 'Bhamodi', 21), (2135, 'Bhander', 21), (2136, 'Bhanpura', 21), (2137, 'Bharveli', 21), (2138, 'Bhaurasa', 21), (2139, 'Bhavra', 21), (2140, 'Bhedaghat', 21), (2141, 'Bhikangaon', 21), (2142, 'Bhilakhedi', 21), (2143, 'Bhind', 21), (2144, 'Bhitarwar', 21), (2145, 'Bhopal', 21), (2146, 'Bhuibandh', 21), (2147, 'Biaora', 21), (2148, 'Bijawar', 21), (2149, 'Bijeypur', 21), (2150, 'Bijrauni', 21), (2151, 'Bijuri', 21), (2152, 'Bilaua', 21), (2153, 'Bilpura', 21), (
        2154,
        'Bina Railway Colony',
        21
    ), (2155, 'Bina-Etawa', 21), (2156, 'Birsinghpur', 21), (2157, 'Boda', 21), (2158, 'Budhni', 21), (2159, 'Burhanpur', 21), (2160, 'Burhar', 21), (2161, 'Chachaura Binaganj', 21), (2162, 'Chakghat', 21), (2163, 'Chandameta Butar', 21), (2164, 'Chanderi', 21), (2165, 'Chandia', 21), (2166, 'Chandla', 21), (2167, 'Chaurai Khas', 21), (2168, 'Chhatarpur', 21), (2169, 'Chhindwara', 21), (2170, 'Chhota Chhindwara', 21), (2171, 'Chichli', 21), (2172, 'Chitrakut', 21), (2173, 'Churhat', 21), (2174, 'Daboh', 21), (2175, 'Dabra', 21), (2176, 'Damoh', 21), (2177, 'Damua', 21), (2178, 'Datia', 21), (2179, 'Deodara', 21), (2180, 'Deori', 21), (2181, 'Deori Khas', 21), (2182, 'Depalpur', 21), (2183, 'Devendranagar', 21), (2184, 'Devhara', 21), (2185, 'Dewas', 21), (2186, 'Dhamnod', 21), (2187, 'Dhana', 21), (2188, 'Dhanpuri', 21), (2189, 'Dhar', 21), (2190, 'Dharampuri', 21), (2191, 'Dighawani', 21), (2192, 'Diken', 21), (2193, 'Dindori', 21), (2194, 'Dola', 21), (2195, 'Dumar Kachhar', 21), (2196, 'Dungariya Chhapara', 21), (2197, 'Gadarwara', 21), (2198, 'Gairatganj', 21), (
        2199,
        'Gandhi Sagar Hydel Colony',
        21
    ), (2200, 'Ganjbasoda', 21), (2201, 'Garhakota', 21), (2202, 'Garhi Malhara', 21), (2203, 'Garoth', 21), (2204, 'Gautapura', 21), (2205, 'Ghansor', 21), (2206, 'Ghuwara', 21), (2207, 'Gogaon', 21), (2208, 'Gogapur', 21), (2209, 'Gohad', 21), (2210, 'Gormi', 21), (2211, 'Govindgarh', 21), (2212, 'Guna', 21), (2213, 'Gurh', 21), (2214, 'Gwalior', 21), (2215, 'Hanumana', 21), (2216, 'Harda', 21), (2217, 'Harpalpur', 21), (2218, 'Harrai', 21), (2219, 'Harsud', 21), (2220, 'Hatod', 21), (2221, 'Hatpipalya', 21), (2222, 'Hatta', 21), (2223, 'Hindoria', 21), (2224, 'Hirapur', 21), (2225, 'Hoshangabad', 21), (2226, 'Ichhawar', 21), (2227, 'Iklehra', 21), (2228, 'Indergarh', 21), (2229, 'Indore', 21), (2230, 'Isagarh', 21), (2231, 'Itarsi', 21), (2232, 'Jabalpur', 21), (
        2233,
        'Jabalpur Cantonment',
        21
    ), (2234, 'Jabalpur G.C.F', 21), (2235, 'Jaisinghnagar', 21), (2236, 'Jaithari', 21), (2237, 'Jaitwara', 21), (2238, 'Jamai', 21), (2239, 'Jaora', 21), (2240, 'Jatachhapar', 21), (2241, 'Jatara', 21), (2242, 'Jawad', 21), (2243, 'Jawar', 21), (2244, 'Jeronkhalsa', 21), (2245, 'Jhabua', 21), (2246, 'Jhundpura', 21), (2247, 'Jiran', 21), (2248, 'Jirapur', 21), (2249, 'Jobat', 21), (2250, 'Joura', 21), (2251, 'Kailaras', 21), (2252, 'Kaimur', 21), (2253, 'Kakarhati', 21), (2254, 'Kalichhapar', 21), (2255, 'Kanad', 21), (2256, 'Kannod', 21), (2257, 'Kantaphod', 21), (2258, 'Kareli', 21), (2259, 'Karera', 21), (2260, 'Kari', 21), (2261, 'Karnawad', 21), (2262, 'Karrapur', 21), (2263, 'Kasrawad', 21), (2264, 'Katangi', 21), (2265, 'Katni', 21), (2266, 'Kelhauri', 21), (2267, 'Khachrod', 21), (2268, 'Khajuraho', 21), (2269, 'Khamaria', 21), (2270, 'Khand', 21), (2271, 'Khandwa', 21), (2272, 'Khaniyadhana', 21), (2273, 'Khargapur', 21), (2274, 'Khargone', 21), (2275, 'Khategaon', 21), (2276, 'Khetia', 21), (2277, 'Khilchipur', 21), (2278, 'Khirkiya', 21), (2279, 'Khujner', 21), (2280, 'Khurai', 21), (2281, 'Kolaras', 21), (2282, 'Kotar', 21), (2283, 'Kothi', 21), (2284, 'Kotma', 21), (2285, 'Kukshi', 21), (2286, 'Kumbhraj', 21), (2287, 'Kurwai', 21), (2288, 'Lahar', 21), (2289, 'Lakhnadon', 21), (2290, 'Lateri', 21), (2291, 'Laundi', 21), (2292, 'Lidhora Khas', 21), (2293, 'Lodhikheda', 21), (2294, 'Loharda', 21), (2295, 'Machalpur', 21), (2296, 'Madhogarh', 21), (2297, 'Maharajpur', 21), (2298, 'Maheshwar', 21), (2299, 'Mahidpur', 21), (2300, 'Maihar', 21), (2301, 'Majholi', 21), (2302, 'Makronia', 21), (2303, 'Maksi', 21), (2304, 'Malaj Khand', 21), (2305, 'Malanpur', 21), (2306, 'Malhargarh', 21), (2307, 'Manasa', 21), (2308, 'Manawar', 21), (2309, 'Mandav', 21), (2310, 'Mandideep', 21), (2311, 'Mandla', 21), (2312, 'Mandleshwar', 21), (2313, 'Mandsaur', 21), (2314, 'Manegaon', 21), (2315, 'Mangawan', 21), (2316, 'Manglaya Sadak', 21), (2317, 'Manpur', 21), (2318, 'Mau', 21), (2319, 'Mauganj', 21), (2320, 'Meghnagar', 21), (2321, 'Mehara Gaon', 21);

INSERT INTO
    `cities` (`id`, `name`, `state_id`)
VALUES (2322, 'Mehgaon', 21), (2323, 'Mhaugaon', 21), (2324, 'Mhow', 21), (2325, 'Mihona', 21), (2326, 'Mohgaon', 21), (2327, 'Morar', 21), (2328, 'Morena', 21), (2329, 'Morwa', 21), (2330, 'Multai', 21), (2331, 'Mundi', 21), (2332, 'Mungaoli', 21), (2333, 'Murwara', 21), (2334, 'Nagda', 21), (2335, 'Nagod', 21), (2336, 'Nagri', 21), (2337, 'Naigarhi', 21), (2338, 'Nainpur', 21), (2339, 'Nalkheda', 21), (2340, 'Namli', 21), (2341, 'Narayangarh', 21), (2342, 'Narsimhapur', 21), (2343, 'Narsingarh', 21), (2344, 'Narsinghpur', 21), (2345, 'Narwar', 21), (2346, 'Nasrullaganj', 21), (2347, 'Naudhia', 21), (2348, 'Naugaon', 21), (2349, 'Naurozabad', 21), (2350, 'Neemuch', 21), (2351, 'Nepa Nagar', 21), (
        2352,
        'Neuton Chikhli Kalan',
        21
    ), (2353, 'Nimach', 21), (2354, 'Niwari', 21), (2355, 'Obedullaganj', 21), (2356, 'Omkareshwar', 21), (2357, 'Orachha', 21), (
        2358,
        'Ordinance Factory Itarsi',
        21
    ), (2359, 'Pachmarhi', 21), (
        2360,
        'Pachmarhi Cantonment',
        21
    ), (2361, 'Pachore', 21), (2362, 'Palchorai', 21), (2363, 'Palda', 21), (2364, 'Palera', 21), (2365, 'Pali', 21), (2366, 'Panagar', 21), (2367, 'Panara', 21), (2368, 'Pandaria', 21), (2369, 'Pandhana', 21), (2370, 'Pandhurna', 21), (2371, 'Panna', 21), (2372, 'Pansemal', 21), (2373, 'Parasia', 21), (2374, 'Pasan', 21), (2375, 'Patan', 21), (2376, 'Patharia', 21), (2377, 'Pawai', 21), (2378, 'Petlawad', 21), (2379, 'Phuph Kalan', 21), (2380, 'Pichhore', 21), (2381, 'Pipariya', 21), (2382, 'Pipliya Mandi', 21), (2383, 'Piploda', 21), (2384, 'Pithampur', 21), (2385, 'Polay Kalan', 21), (2386, 'Porsa', 21), (2387, 'Prithvipur', 21), (2388, 'Raghogarh', 21), (2389, 'Rahatgarh', 21), (2390, 'Raisen', 21), (2391, 'Rajakhedi', 21), (2392, 'Rajgarh', 21), (2393, 'Rajnagar', 21), (2394, 'Rajpur', 21), (2395, 'Rampur Baghelan', 21), (2396, 'Rampur Naikin', 21), (2397, 'Rampura', 21), (2398, 'Ranapur', 21), (2399, 'Ranipura', 21), (2400, 'Ratangarh', 21), (2401, 'Ratlam', 21), (2402, 'Ratlam Kasba', 21), (2403, 'Rau', 21), (2404, 'Rehli', 21), (2405, 'Rehti', 21), (2406, 'Rewa', 21), (2407, 'Sabalgarh', 21), (2408, 'Sagar', 21), (2409, 'Sagar Cantonment', 21), (2410, 'Sailana', 21), (2411, 'Sanawad', 21), (2412, 'Sanchi', 21), (2413, 'Sanwer', 21), (2414, 'Sarangpur', 21), (2415, 'Sardarpur', 21), (2416, 'Sarni', 21), (2417, 'Satai', 21), (2418, 'Satna', 21), (2419, 'Satwas', 21), (2420, 'Sausar', 21), (2421, 'Sehore', 21), (2422, 'Semaria', 21), (2423, 'Sendhwa', 21), (2424, 'Seondha', 21), (2425, 'Seoni', 21), (2426, 'Seoni Malwa', 21), (2427, 'Sethia', 21), (2428, 'Shahdol', 21), (2429, 'Shahgarh', 21), (2430, 'Shahpur', 21), (2431, 'Shahpura', 21), (2432, 'Shajapur', 21), (2433, 'Shamgarh', 21), (2434, 'Sheopur', 21), (2435, 'Shivpuri', 21), (2436, 'Shujalpur', 21), (2437, 'Sidhi', 21), (2438, 'Sihora', 21), (2439, 'Singolo', 21), (2440, 'Singrauli', 21), (2441, 'Sinhasa', 21), (2442, 'Sirgora', 21), (2443, 'Sirmaur', 21), (2444, 'Sironj', 21), (2445, 'Sitamau', 21), (2446, 'Sohagpur', 21), (2447, 'Sonkatch', 21), (2448, 'Soyatkalan', 21), (2449, 'Suhagi', 21), (2450, 'Sultanpur', 21), (2451, 'Susner', 21), (2452, 'Suthaliya', 21), (2453, 'Tal', 21), (2454, 'Talen', 21), (2455, 'Tarana', 21), (2456, 'Taricharkalan', 21), (2457, 'Tekanpur', 21), (2458, 'Tendukheda', 21), (2459, 'Teonthar', 21), (2460, 'Thandia', 21), (2461, 'Tikamgarh', 21), (2462, 'Timarni', 21), (2463, 'Tirodi', 21), (2464, 'Udaipura', 21), (2465, 'Ujjain', 21), (2466, 'Ukwa', 21), (2467, 'Umaria', 21), (2468, 'Unchahara', 21), (2469, 'Unhel', 21), (
        2470,
        'Vehicle Factory Jabalpur',
        21
    ), (2471, 'Vidisha', 21), (2472, 'Vijayraghavgarh', 21), (2473, 'Waraseoni', 21), (2474, 'Achalpur', 22), (2475, 'Aheri', 22), (
        2476,
        'Ahmadnagar Cantonment',
        22
    ), (2477, 'Ahmadpur', 22), (2478, 'Ahmednagar', 22), (2479, 'Ajra', 22), (2480, 'Akalkot', 22), (2481, 'Akkalkuwa', 22), (2482, 'Akola', 22), (2483, 'Akot', 22), (2484, 'Alandi', 22), (2485, 'Alibag', 22), (2486, 'Allapalli', 22), (2487, 'Alore', 22), (2488, 'Amalner', 22), (2489, 'Ambad', 22), (2490, 'Ambajogai', 22), (2491, 'Ambernath', 22), (
        2492,
        'Ambivali Tarf Wankhal',
        22
    ), (2493, 'Amgaon', 22), (2494, 'Amravati', 22), (2495, 'Anjangaon', 22), (2496, 'Arvi', 22), (2497, 'Ashta', 22), (2498, 'Ashti', 22), (2499, 'Aurangabad', 22), (
        2500,
        'Aurangabad Cantonment',
        22
    ), (2501, 'Ausa', 22), (2502, 'Babhulgaon', 22), (2503, 'Badlapur', 22), (2504, 'Balapur', 22), (2505, 'Ballarpur', 22), (2506, 'Baramati', 22), (2507, 'Barshi', 22), (2508, 'Basmat', 22), (2509, 'Beed', 22), (2510, 'Bhadravati', 22), (2511, 'Bhagur', 22), (2512, 'Bhandara', 22), (2513, 'Bhigvan', 22), (2514, 'Bhingar', 22), (2515, 'Bhiwandi', 22), (2516, 'Bhokhardan', 22), (2517, 'Bhor', 22), (2518, 'Bhosari', 22), (2519, 'Bhum', 22), (2520, 'Bhusawal', 22), (2521, 'Bid', 22), (2522, 'Biloli', 22), (2523, 'Birwadi', 22), (2524, 'Boisar', 22), (2525, 'Bop Khel', 22), (2526, 'Brahmapuri', 22), (2527, 'Budhgaon', 22), (2528, 'Buldana', 22), (2529, 'Buldhana', 22), (2530, 'Butibori', 22), (2531, 'Chakan', 22), (2532, 'Chalisgaon', 22), (2533, 'Chandrapur', 22), (2534, 'Chandur', 22), (2535, 'Chandur Bazar', 22), (2536, 'Chandvad', 22), (2537, 'Chicholi', 22), (2538, 'Chikhala', 22), (2539, 'Chikhaldara', 22), (2540, 'Chikhli', 22), (2541, 'Chinchani', 22), (2542, 'Chinchwad', 22), (2543, 'Chiplun', 22), (2544, 'Chopda', 22), (2545, 'Dabhol', 22), (2546, 'Dahance', 22), (2547, 'Dahanu', 22), (2548, 'Daharu', 22), (2549, 'Dapoli Camp', 22), (2550, 'Darwa', 22), (2551, 'Daryapur', 22), (2552, 'Dattapur', 22), (2553, 'Daund', 22), (2554, 'Davlameti', 22), (2555, 'Deglur', 22), (2556, 'Dehu Road', 22), (2557, 'Deolali', 22), (2558, 'Deolali Pravara', 22), (2559, 'Deoli', 22), (2560, 'Desaiganj', 22), (2561, 'Deulgaon Raja', 22), (2562, 'Dewhadi', 22), (2563, 'Dharangaon', 22), (2564, 'Dharmabad', 22), (2565, 'Dharur', 22), (2566, 'Dhatau', 22), (2567, 'Dhule', 22), (2568, 'Digdoh', 22), (2569, 'Diglur', 22), (2570, 'Digras', 22), (2571, 'Dombivli', 22), (2572, 'Dondaicha', 22), (2573, 'Dudhani', 22), (2574, 'Durgapur', 22), (2575, 'Dyane', 22), (2576, 'Edandol', 22), (2577, 'Eklahare', 22), (2578, 'Faizpur', 22), (2579, 'Fekari', 22), (2580, 'Gadchiroli', 22), (2581, 'Gadhinghaj', 22), (2582, 'Gandhi Nagar', 22), (2583, 'Ganeshpur', 22), (2584, 'Gangakher', 22), (2585, 'Gangapur', 22), (2586, 'Gevrai', 22), (2587, 'Ghatanji', 22), (2588, 'Ghoti', 22), (2589, 'Ghugus', 22), (2590, 'Ghulewadi', 22), (2591, 'Godoli', 22), (2592, 'Gondia', 22), (2593, 'Guhagar', 22), (2594, 'Hadgaon', 22), (2595, 'Harnai Beach', 22), (2596, 'Hinganghat', 22), (2597, 'Hingoli', 22), (2598, 'Hupari', 22), (2599, 'Ichalkaranji', 22), (2600, 'Igatpuri', 22), (2601, 'Indapur', 22), (2602, 'Jaisinghpur', 22), (2603, 'Jalgaon', 22), (2604, 'Jalna', 22), (2605, 'Jamkhed', 22), (2606, 'Jawhar', 22), (2607, 'Jaysingpur', 22), (2608, 'Jejuri', 22), (2609, 'Jintur', 22), (2610, 'Junnar', 22), (2611, 'Kabnur', 22), (2612, 'Kagal', 22), (2613, 'Kalamb', 22), (2614, 'Kalamnuri', 22), (2615, 'Kalas', 22), (2616, 'Kalmeshwar', 22), (2617, 'Kalundre', 22), (2618, 'Kalyan', 22), (2619, 'Kamthi', 22), (2620, 'Kamthi Cantonment', 22), (2621, 'Kandari', 22), (2622, 'Kandhar', 22), (2623, 'Kandri', 22), (2624, 'Kandri II', 22), (2625, 'Kanhan', 22), (2626, 'Kankavli', 22), (2627, 'Kannad', 22), (2628, 'Karad', 22), (2629, 'Karanja', 22), (2630, 'Karanje Tarf', 22), (2631, 'Karivali', 22), (2632, 'Karjat', 22), (2633, 'Karmala', 22), (2634, 'Kasara Budruk', 22), (2635, 'Katai', 22), (2636, 'Katkar', 22), (2637, 'Katol', 22), (2638, 'Kegaon', 22), (2639, 'Khadkale', 22), (2640, 'Khadki', 22), (2641, 'Khamgaon', 22), (2642, 'Khapa', 22), (2643, 'Kharadi', 22), (2644, 'Kharakvasla', 22), (2645, 'Khed', 22), (2646, 'Kherdi', 22), (2647, 'Khoni', 22), (2648, 'Khopoli', 22), (2649, 'Khuldabad', 22), (2650, 'Kinwat', 22), (2651, 'Kodoli', 22), (2652, 'Kolhapur', 22), (2653, 'Kon', 22), (2654, 'Kondumal', 22), (2655, 'Kopargaon', 22), (2656, 'Kopharad', 22), (2657, 'Koradi', 22), (2658, 'Koregaon', 22), (2659, 'Korochi', 22), (2660, 'Kudal', 22), (2661, 'Kundaim', 22), (2662, 'Kundalwadi', 22), (2663, 'Kurandvad', 22), (2664, 'Kurduvadi', 22), (2665, 'Kusgaon Budruk', 22), (2666, 'Lanja', 22), (2667, 'Lasalgaon', 22), (2668, 'Latur', 22), (2669, 'Loha', 22), (2670, 'Lohegaon', 22), (2671, 'Lonar', 22), (2672, 'Lonavala', 22), (2673, 'Madhavnagar', 22), (2674, 'Mahabaleshwar', 22), (2675, 'Mahad', 22), (2676, 'Mahadula', 22), (2677, 'Maindargi', 22), (2678, 'Majalgaon', 22), (2679, 'Malegaon', 22), (2680, 'Malgaon', 22), (2681, 'Malkapur', 22), (2682, 'Malwan', 22), (2683, 'Manadur', 22), (2684, 'Manchar', 22), (2685, 'Mangalvedhe', 22), (2686, 'Mangrul Pir', 22), (2687, 'Manmad', 22), (2688, 'Manor', 22), (2689, 'Mansar', 22), (2690, 'Manwath', 22), (2691, 'Mapuca', 22), (2692, 'Matheran', 22), (2693, 'Mehkar', 22), (2694, 'Mhasla', 22), (2695, 'Mhaswad', 22), (2696, 'Mira Bhayandar', 22), (2697, 'Miraj', 22), (2698, 'Mohpa', 22), (2699, 'Mohpada', 22), (2700, 'Moram', 22), (2701, 'Morshi', 22), (2702, 'Mowad', 22), (2703, 'Mudkhed', 22), (2704, 'Mukhed', 22), (2705, 'Mul', 22), (2706, 'Mulshi', 22), (2707, 'Mumbai', 22), (2708, 'Murbad', 22), (2709, 'Murgud', 22), (2710, 'Murtijapur', 22), (2711, 'Murud', 22), (2712, 'Nachane', 22), (2713, 'Nagardeole', 22), (2714, 'Nagothane', 22), (2715, 'Nagpur', 22), (2716, 'Nakoda', 22), (2717, 'Nalasopara', 22), (2718, 'Naldurg', 22), (2719, 'Nanded', 22), (2720, 'Nandgaon', 22), (2721, 'Nandura', 22), (2722, 'Nandurbar', 22), (2723, 'Narkhed', 22), (2724, 'Nashik', 22), (2725, 'Navapur', 22), (2726, 'Navi Mumbai', 22), (2727, 'Navi Mumbai Panvel', 22), (2728, 'Neral', 22), (2729, 'Nigdi', 22), (2730, 'Nilanga', 22), (2731, 'Nildoh', 22), (2732, 'Nimbhore', 22), (2733, 'Ojhar', 22), (2734, 'Osmanabad', 22), (2735, 'Pachgaon', 22), (2736, 'Pachora', 22), (2737, 'Padagha', 22), (2738, 'Paithan', 22), (2739, 'Palghar', 22), (2740, 'Pali', 22), (2741, 'Panchgani', 22), (2742, 'Pandhakarwada', 22), (2743, 'Pandharpur', 22), (2744, 'Panhala', 22), (2745, 'Panvel', 22), (2746, 'Paranda', 22), (2747, 'Parbhani', 22), (2748, 'Parli', 22), (2749, 'Parola', 22), (2750, 'Partur', 22), (2751, 'Pasthal', 22), (2752, 'Patan', 22), (2753, 'Pathardi', 22), (2754, 'Pathri', 22), (2755, 'Patur', 22), (2756, 'Pawni', 22), (2757, 'Pen', 22), (2758, 'Pethumri', 22), (2759, 'Phaltan', 22), (2760, 'Pimpri', 22), (2761, 'Poladpur', 22), (2762, 'Pulgaon', 22), (2763, 'Pune', 22), (2764, 'Pune Cantonment', 22), (2765, 'Purna', 22), (2766, 'Purushottamnagar', 22), (2767, 'Pusad', 22), (2768, 'Rahimatpur', 22), (2769, 'Rahta Pimplas', 22), (2770, 'Rahuri', 22), (2771, 'Raigad', 22), (2772, 'Rajapur', 22), (2773, 'Rajgurunagar', 22), (2774, 'Rajur', 22), (2775, 'Rajura', 22), (2776, 'Ramtek', 22), (2777, 'Ratnagiri', 22), (2778, 'Ravalgaon', 22), (2779, 'Raver', 22), (2780, 'Revadanda', 22), (2781, 'Risod', 22), (2782, 'Roha Ashtami', 22), (2783, 'Sakri', 22), (2784, 'Sandor', 22), (2785, 'Sangamner', 22), (2786, 'Sangli', 22), (2787, 'Sangole', 22), (2788, 'Sasti', 22), (2789, 'Sasvad', 22), (2790, 'Satana', 22), (2791, 'Satara', 22), (2792, 'Savantvadi', 22), (2793, 'Savda', 22), (2794, 'Savner', 22), (2795, 'Sawari Jawharnagar', 22), (2796, 'Selu', 22), (2797, 'Shahada', 22), (2798, 'Shahapur', 22), (2799, 'Shegaon', 22), (2800, 'Shelar', 22), (2801, 'Shendurjana', 22), (2802, 'Shirdi', 22), (2803, 'Shirgaon', 22), (2804, 'Shirpur', 22), (2805, 'Shirur', 22), (2806, 'Shirwal', 22), (2807, 'Shivatkar', 22), (2808, 'Shrigonda', 22), (2809, 'Shrirampur', 22), (2810, 'Shrirampur Rural', 22), (2811, 'Sillewada', 22), (2812, 'Sillod', 22), (2813, 'Sindhudurg', 22), (2814, 'Sindi', 22), (
        2815,
        'Sindi Turf Hindnagar',
        22
    ), (2816, 'Sindkhed Raja', 22), (2817, 'Singnapur', 22), (2818, 'Sinnar', 22), (2819, 'Sirur', 22), (2820, 'Sitasawangi', 22), (2821, 'Solapur', 22), (2822, 'Sonai', 22), (2823, 'Sonegaon', 22), (2824, 'Soyagaon', 22), (2825, 'Srivardhan', 22), (2826, 'Surgana', 22), (2827, 'Talegaon Dabhade', 22), (2828, 'Taloda', 22), (2829, 'Taloja', 22), (2830, 'Talwade', 22), (2831, 'Tarapur', 22), (2832, 'Tasgaon', 22), (2833, 'Tathavade', 22), (2834, 'Tekadi', 22), (2835, 'Telhara', 22), (2836, 'Thane', 22), (2837, 'Tirira', 22), (2838, 'Totaladoh', 22), (2839, 'Trimbak', 22), (2840, 'Tuljapur', 22), (2841, 'Tumsar', 22), (2842, 'Uchgaon', 22), (2843, 'Udgir', 22), (2844, 'Ulhasnagar', 22), (2845, 'Umarga', 22), (2846, 'Umarkhed', 22), (2847, 'Umarsara', 22), (2848, 'Umbar Pada Nandade', 22), (2849, 'Umred', 22), (
        2850,
        'Umri Pragane Balapur',
        22
    ), (2851, 'Uran', 22), (2852, 'Uran Islampur', 22), (2853, 'Utekhol', 22), (2854, 'Vada', 22), (2855, 'Vadgaon', 22), (2856, 'Vadgaon Kasba', 22), (2857, 'Vaijapur', 22), (2858, 'Vanvadi', 22), (2859, 'Varangaon', 22), (2860, 'Vasai', 22), (2861, 'Vasantnagar', 22), (2862, 'Vashind', 22), (2863, 'Vengurla', 22), (2864, 'Virar', 22), (2865, 'Visapur', 22), (2866, 'Vite', 22), (2867, 'Vithalwadi', 22), (2868, 'Wadi', 22), (2869, 'Waghapur', 22), (2870, 'Wai', 22), (2871, 'Wajegaon', 22), (2872, 'Walani', 22), (2873, 'Wanadongri', 22), (2874, 'Wani', 22), (2875, 'Wardha', 22), (2876, 'Warora', 22), (2877, 'Warthi', 22), (2878, 'Warud', 22), (2879, 'Washim', 22), (2880, 'Yaval', 22), (2881, 'Yavatmal', 22), (2882, 'Yeola', 22), (2883, 'Yerkheda', 22), (2884, 'Andro', 23), (2885, 'Bijoy Govinda', 23), (2886, 'Bishnupur', 23), (2887, 'Churachandpur', 23), (2888, 'Heriok', 23), (2889, 'Imphal', 23), (2890, 'Jiribam', 23), (2891, 'Kakching', 23), (2892, 'Kakching Khunou', 23), (2893, 'Khongman', 23), (2894, 'Kumbi', 23), (2895, 'Kwakta', 23), (2896, 'Lamai', 23), (2897, 'Lamjaotongba', 23), (2898, 'Lamshang', 23), (2899, 'Lilong', 23), (2900, 'Mayang Imphal', 23), (2901, 'Moirang', 23), (2902, 'Moreh', 23), (2903, 'Nambol', 23), (
        2904,
        'Naoriya Pakhanglakpa',
        23
    ), (2905, 'Ningthoukhong', 23), (2906, 'Oinam', 23), (2907, 'Porompat', 23), (2908, 'Samurou', 23), (2909, 'Sekmai Bazar', 23), (2910, 'Senapati', 23), (2911, 'Sikhong Sekmai', 23), (2912, 'Sugnu', 23), (
        2913,
        'Thongkhong Laxmi Bazar',
        23
    ), (2914, 'Thoubal', 23), (2915, 'Torban', 23), (2916, 'Wangjing', 23), (2917, 'Wangoi', 23), (2918, 'Yairipok', 23), (2919, 'Baghmara', 24), (2920, 'Cherrapunji', 24), (2921, 'Jawai', 24), (2922, 'Madanrting', 24), (2923, 'Mairang', 24), (2924, 'Mawlai', 24), (2925, 'Nongmynsong', 24), (2926, 'Nongpoh', 24), (2927, 'Nongstoin', 24), (2928, 'Nongthymmai', 24), (2929, 'Pynthorumkhrah', 24), (2930, 'Resubelpara', 24), (2931, 'Shillong', 24), (
        2932,
        'Shillong Cantonment',
        24
    ), (2933, 'Tura', 24), (2934, 'Williamnagar', 24), (2935, 'Aizawl', 25), (2936, 'Bairabi', 25), (2937, 'Biate', 25), (2938, 'Champhai', 25), (2939, 'Darlawn', 25), (2940, 'Hnahthial', 25), (2941, 'Kawnpui', 25), (2942, 'Khawhai', 25), (2943, 'Khawzawl', 25), (2944, 'Kolasib', 25), (2945, 'Lengpui', 25), (2946, 'Lunglei', 25), (2947, 'Mamit', 25), (2948, 'North Vanlaiphai', 25), (2949, 'Saiha', 25), (2950, 'Sairang', 25), (2951, 'Saitul', 25), (2952, 'Serchhip', 25), (2953, 'Thenzawl', 25), (2954, 'Tlabung', 25), (2955, 'Vairengte', 25), (2956, 'Zawlnuam', 25), (2957, 'Chumukedima', 26), (2958, 'Dimapur', 26), (2959, 'Kohima', 26), (2960, 'Mokokchung', 26), (2961, 'Mon', 26), (2962, 'Phek', 26), (2963, 'Tuensang', 26), (2964, 'Wokha', 26), (2965, 'Zunheboto', 26), (2966, 'Anandapur', 29), (2967, 'Angul', 29), (2968, 'Aska', 29), (2969, 'Athgarh', 29), (2970, 'Athmallik', 29), (2971, 'Balagoda', 29), (2972, 'Balangir', 29), (2973, 'Balasore', 29), (2974, 'Baleshwar', 29), (2975, 'Balimeta', 29), (2976, 'Balugaon', 29), (2977, 'Banapur', 29), (2978, 'Bangura', 29), (2979, 'Banki', 29), (2980, 'Banposh', 29), (2981, 'Barbil', 29), (2982, 'Bargarh', 29), (2983, 'Baripada', 29), (2984, 'Barpali', 29), (2985, 'Basudebpur', 29), (2986, 'Baudh', 29), (2987, 'Belagachhia', 29), (2988, 'Belaguntha', 29), (2989, 'Belpahar', 29), (2990, 'Berhampur', 29), (2991, 'Bhadrak', 29), (2992, 'Bhanjanagar', 29), (2993, 'Bhawanipatna', 29), (2994, 'Bhuban', 29), (2995, 'Bhubaneswar', 29), (2996, 'Binika', 29), (2997, 'Birmitrapur', 29), (2998, 'Bishama Katek', 29), (2999, 'Bolangir', 29), (3000, 'Brahmapur', 29), (3001, 'Brajrajnagar', 29), (3002, 'Buguda', 29), (3003, 'Burla', 29), (3004, 'Byasanagar', 29), (3005, 'Champua', 29), (3006, 'Chandapur', 29), (3007, 'Chandbali', 29), (3008, 'Chandili', 29), (3009, 'Charibatia', 29), (3010, 'Chatrapur', 29), (3011, 'Chikitigarh', 29), (3012, 'Chitrakonda', 29), (3013, 'Choudwar', 29), (3014, 'Cuttack', 29), (3015, 'Dadhapatna', 29), (3016, 'Daitari', 29), (3017, 'Damanjodi', 29), (3018, 'Deogarh', 29), (3019, 'Deracolliery', 29), (3020, 'Dhamanagar', 29), (3021, 'Dhenkanal', 29), (3022, 'Digapahandi', 29), (3023, 'Dungamal', 29), (
        3024,
        'Fertilizer Corporation of Indi',
        29
    ), (3025, 'Ganjam', 29), (3026, 'Ghantapada', 29), (3027, 'Gopalpur', 29), (3028, 'Gudari', 29), (3029, 'Gunupur', 29), (3030, 'Hatibandha', 29), (3031, 'Hinjilikatu', 29), (3032, 'Hirakud', 29), (3033, 'Jagatsinghapur', 29), (3034, 'Jajpur', 29), (3035, 'Jalda', 29), (3036, 'Jaleswar', 29), (3037, 'Jatni', 29), (3038, 'Jaypur', 29), (3039, 'Jeypore', 29), (3040, 'Jharsuguda', 29), (3041, 'Jhumpura', 29), (3042, 'Joda', 29), (3043, 'Junagarh', 29), (3044, 'Kamakhyanagar', 29), (3045, 'Kantabanji', 29), (3046, 'Kantilo', 29), (3047, 'Karanja', 29), (3048, 'Kashinagara', 29), (3049, 'Kataka', 29), (3050, 'Kavisuryanagar', 29), (3051, 'Kendrapara', 29), (3052, 'Kendujhar', 29), (3053, 'Keonjhar', 29), (3054, 'Kesinga', 29), (3055, 'Khaliapali', 29), (3056, 'Khalikote', 29), (3057, 'Khandaparha', 29), (3058, 'Kharhial', 29), (3059, 'Kharhial Road', 29), (3060, 'Khatiguda', 29), (3061, 'Khurda', 29), (3062, 'Kochinda', 29), (3063, 'Kodala', 29), (3064, 'Konark', 29), (3065, 'Koraput', 29), (3066, 'Kotaparh', 29), (3067, 'Lanjigarh', 29), (3068, 'Lattikata', 29), (3069, 'Makundapur', 29), (3070, 'Malkangiri', 29), (3071, 'Mukhiguda', 29), (3072, 'Nabarangpur', 29), (3073, 'Nalco', 29), (3074, 'Naurangapur', 29), (3075, 'Nayagarh', 29), (3076, 'Nilagiri', 29), (3077, 'Nimaparha', 29), (3078, 'Nuapada', 29), (3079, 'Nuapatna', 29), (3080, 'OCL Industrialship', 29), (3081, 'Padampur', 29), (3082, 'Paradip', 29), (3083, 'Paradwip', 29), (3084, 'Parlakimidi', 29), (3085, 'Patamundai', 29), (3086, 'Patnagarh', 29), (3087, 'Phulabani', 29), (3088, 'Pipili', 29), (3089, 'Polasara', 29), (3090, 'Pratapsasan', 29), (3091, 'Puri', 29), (3092, 'Purushottampur', 29), (3093, 'Rairangpur', 29), (3094, 'Raj Gangpur', 29), (3095, 'Rambha', 29), (3096, 'Raurkela', 29), (
        3097,
        'Raurkela Civil Township',
        29
    ), (3098, 'Rayagada', 29), (3099, 'Redhakhol', 29), (3100, 'Remuna', 29), (3101, 'Rengali', 29), (3102, 'Rourkela', 29), (3103, 'Sambalpur', 29), (3104, 'Sinapali', 29), (3105, 'Sonepur', 29), (3106, 'Sorada', 29), (3107, 'Soro', 29), (3108, 'Sunabeda', 29), (3109, 'Sundargarh', 29), (3110, 'Talcher', 29), (
        3111,
        'Talcher Thermal Power Station ',
        29
    ), (3112, 'Tarabha', 29), (3113, 'Tensa', 29), (3114, 'Titlagarh', 29), (3115, 'Udala', 29), (3116, 'Udayagiri', 29), (3117, 'Umarkot', 29), (3118, 'Vikrampur', 29), (3119, 'Ariankuppam', 31), (3120, 'Karaikal', 31), (3121, 'Kurumbapet', 31), (3122, 'Mahe', 31), (3123, 'Ozhukarai', 31), (3124, 'Pondicherry', 31), (3125, 'Villianur', 31), (3126, 'Yanam', 31), (3127, 'Abohar', 32), (3128, 'Adampur', 32), (3129, 'Ahmedgarh', 32), (3130, 'Ajnala', 32), (3131, 'Akalgarh', 32), (3132, 'Alawalpur', 32), (3133, 'Amloh', 32), (3134, 'Amritsar', 32), (
        3135,
        'Amritsar Cantonment',
        32
    ), (3136, 'Anandpur Sahib', 32), (3137, 'Badhni Kalan', 32), (3138, 'Bagh Purana', 32), (3139, 'Balachaur', 32), (3140, 'Banaur', 32), (3141, 'Banga', 32), (3142, 'Banur', 32), (3143, 'Baretta', 32), (3144, 'Bariwala', 32), (3145, 'Barnala', 32), (3146, 'Bassi Pathana', 32), (3147, 'Batala', 32), (3148, 'Bathinda', 32), (3149, 'Begowal', 32), (3150, 'Behrampur', 32), (3151, 'Bhabat', 32), (3152, 'Bhadur', 32), (3153, 'Bhankharpur', 32), (3154, 'Bharoli Kalan', 32), (3155, 'Bhawanigarh', 32), (3156, 'Bhikhi', 32), (3157, 'Bhikhiwind', 32), (3158, 'Bhisiana', 32), (3159, 'Bhogpur', 32), (3160, 'Bhuch', 32), (3161, 'Bhulath', 32), (3162, 'Budha Theh', 32), (3163, 'Budhlada', 32), (3164, 'Chima', 32), (3165, 'Chohal', 32), (3166, 'Dasuya', 32), (3167, 'Daulatpur', 32), (3168, 'Dera Baba Nanak', 32), (3169, 'Dera Bassi', 32), (3170, 'Dhanaula', 32), (3171, 'Dharam Kot', 32), (3172, 'Dhariwal', 32), (3173, 'Dhilwan', 32), (3174, 'Dhuri', 32), (3175, 'Dinanagar', 32), (3176, 'Dirba', 32), (3177, 'Doraha', 32), (3178, 'Faridkot', 32), (3179, 'Fateh Nangal', 32), (3180, 'Fatehgarh Churian', 32), (3181, 'Fatehgarh Sahib', 32), (3182, 'Fazilka', 32), (3183, 'Firozpur', 32), (
        3184,
        'Firozpur Cantonment',
        32
    ), (3185, 'Gardhiwala', 32), (3186, 'Garhshankar', 32), (3187, 'Ghagga', 32), (3188, 'Ghanaur', 32), (3189, 'Giddarbaha', 32), (3190, 'Gobindgarh', 32), (3191, 'Goniana', 32), (3192, 'Goraya', 32), (3193, 'Gurdaspur', 32), (3194, 'Guru Har Sahai', 32), (3195, 'Hajipur', 32), (3196, 'Handiaya', 32), (3197, 'Hariana', 32), (3198, 'Hoshiarpur', 32), (3199, 'Hussainpur', 32), (3200, 'Jagraon', 32), (3201, 'Jaitu', 32), (3202, 'Jalalabad', 32), (3203, 'Jalandhar', 32), (
        3204,
        'Jalandhar Cantonment',
        32
    ), (3205, 'Jandiala', 32), (3206, 'Jugial', 32), (3207, 'Kalanaur', 32), (3208, 'Kapurthala', 32), (3209, 'Karoran', 32), (3210, 'Kartarpur', 32), (3211, 'Khamanon', 32), (3212, 'Khanauri', 32), (3213, 'Khanna', 32), (3214, 'Kharar', 32), (3215, 'Khem Karan', 32), (3216, 'Kot Fatta', 32), (3217, 'Kot Isa Khan', 32), (3218, 'Kot Kapura', 32), (3219, 'Kotkapura', 32), (3220, 'Kurali', 32), (3221, 'Lalru', 32), (3222, 'Lehra Gaga', 32), (3223, 'Lodhian Khas', 32), (3224, 'Longowal', 32), (3225, 'Ludhiana', 32), (3226, 'Machhiwara', 32), (3227, 'Mahilpur', 32), (3228, 'Majitha', 32), (3229, 'Makhu', 32), (3230, 'Malaut', 32), (3231, 'Malerkotla', 32), (3232, 'Maloud', 32), (3233, 'Mandi Gobindgarh', 32), (3234, 'Mansa', 32), (3235, 'Maur', 32), (3236, 'Moga', 32), (3237, 'Mohali', 32), (3238, 'Moonak', 32), (3239, 'Morinda', 32), (3240, 'Mukerian', 32), (3241, 'Muktsar', 32), (3242, 'Mullanpur Dakha', 32), (3243, 'Mullanpur Garibdas', 32), (3244, 'Munak', 32), (3245, 'Muradpura', 32), (3246, 'Nabha', 32), (3247, 'Nakodar', 32), (3248, 'Nangal', 32), (3249, 'Nawashahr', 32), (3250, 'Naya Nangal', 32), (3251, 'Nehon', 32), (3252, 'Nurmahal', 32), (3253, 'Pathankot', 32), (3254, 'Patiala', 32), (3255, 'Patti', 32), (3256, 'Pattran', 32), (3257, 'Payal', 32), (3258, 'Phagwara', 32), (3259, 'Phillaur', 32), (3260, 'Qadian', 32), (3261, 'Rahon', 32), (3262, 'Raikot', 32), (3263, 'Raja Sansi', 32), (3264, 'Rajpura', 32), (3265, 'Ram Das', 32), (3266, 'Raman', 32), (3267, 'Rampura', 32), (3268, 'Rayya', 32), (3269, 'Rupnagar', 32), (3270, 'Rurki Kasba', 32), (3271, 'Sahnewal', 32), (3272, 'Samana', 32), (3273, 'Samrala', 32), (3274, 'Sanaur', 32), (3275, 'Sangat', 32), (3276, 'Sangrur', 32), (3277, 'Sansarpur', 32), (3278, 'Sardulgarh', 32), (3279, 'Shahkot', 32), (3280, 'Sham Churasi', 32), (3281, 'Shekhpura', 32), (3282, 'Sirhind', 32), (3283, 'Sri Hargobindpur', 32), (3284, 'Sujanpur', 32), (3285, 'Sultanpur Lodhi', 32), (3286, 'Sunam', 32), (3287, 'Talwandi Bhai', 32), (3288, 'Talwara', 32), (3289, 'Tappa', 32), (3290, 'Tarn Taran', 32), (3291, 'Urmar Tanda', 32), (3292, 'Zira', 32), (3293, 'Zirakpur', 32), (3294, 'Abu Road', 33), (3295, 'Ajmer', 33), (3296, 'Aklera', 33), (3297, 'Alwar', 33), (3298, 'Amet', 33), (3299, 'Antah', 33), (3300, 'Anupgarh', 33), (3301, 'Asind', 33), (3302, 'Bagar', 33), (3303, 'Bagru', 33), (3304, 'Bahror', 33), (3305, 'Bakani', 33), (3306, 'Bali', 33), (3307, 'Balotra', 33), (3308, 'Bandikui', 33), (3309, 'Banswara', 33), (3310, 'Baran', 33), (3311, 'Bari', 33), (3312, 'Bari Sadri', 33), (3313, 'Barmer', 33), (3314, 'Basi', 33), (3315, 'Basni Belima', 33), (3316, 'Baswa', 33), (3317, 'Bayana', 33), (3318, 'Beawar', 33), (3319, 'Begun', 33), (3320, 'Bhadasar', 33), (3321, 'Bhadra', 33), (3322, 'Bhalariya', 33), (3323, 'Bharatpur', 33), (3324, 'Bhasawar', 33), (3325, 'Bhawani Mandi', 33), (3326, 'Bhawri', 33), (3327, 'Bhilwara', 33), (3328, 'Bhindar', 33), (3329, 'Bhinmal', 33), (3330, 'Bhiwadi', 33), (3331, 'Bijoliya Kalan', 33), (3332, 'Bikaner', 33), (3333, 'Bilara', 33), (3334, 'Bissau', 33), (3335, 'Borkhera', 33), (3336, 'Budhpura', 33), (3337, 'Bundi', 33), (3338, 'Chatsu', 33), (3339, 'Chechat', 33), (3340, 'Chhabra', 33), (3341, 'Chhapar', 33), (3342, 'Chhipa Barod', 33), (3343, 'Chhoti Sadri', 33), (3344, 'Chirawa', 33), (3345, 'Chittaurgarh', 33), (3346, 'Chittorgarh', 33), (3347, 'Chomun', 33), (3348, 'Churu', 33), (3349, 'Daosa', 33), (3350, 'Dariba', 33), (3351, 'Dausa', 33), (3352, 'Deoli', 33), (3353, 'Deshnok', 33), (3354, 'Devgarh', 33), (3355, 'Devli', 33), (3356, 'Dhariawad', 33), (3357, 'Dhaulpur', 33), (3358, 'Dholpur', 33), (3359, 'Didwana', 33), (3360, 'Dig', 33), (3361, 'Dungargarh', 33), (3362, 'Dungarpur', 33), (3363, 'Falna', 33), (3364, 'Fatehnagar', 33), (3365, 'Fatehpur', 33), (3366, 'Gajsinghpur', 33), (3367, 'Galiakot', 33), (3368, 'Ganganagar', 33), (3369, 'Gangapur', 33), (3370, 'Goredi Chancha', 33), (3371, 'Gothra', 33), (3372, 'Govindgarh', 33), (3373, 'Gulabpura', 33), (3374, 'Hanumangarh', 33), (3375, 'Hindaun', 33), (3376, 'Indragarh', 33), (3377, 'Jahazpur', 33), (3378, 'Jaipur', 33), (3379, 'Jaisalmer', 33), (3380, 'Jaiselmer', 33), (3381, 'Jaitaran', 33), (3382, 'Jalore', 33), (3383, 'Jhalawar', 33), (3384, 'Jhalrapatan', 33), (3385, 'Jhunjhunun', 33), (3386, 'Jobner', 33), (3387, 'Jodhpur', 33), (3388, 'Kaithun', 33), (3389, 'Kaman', 33), (3390, 'Kankroli', 33), (3391, 'Kanor', 33), (3392, 'Kapasan', 33), (3393, 'Kaprain', 33), (3394, 'Karanpura', 33), (3395, 'Karauli', 33), (3396, 'Kekri', 33), (3397, 'Keshorai Patan', 33), (3398, 'Kesrisinghpur', 33), (3399, 'Khairthal', 33), (3400, 'Khandela', 33), (3401, 'Khanpur', 33), (3402, 'Kherli', 33), (3403, 'Kherliganj', 33), (3404, 'Kherwara Chhaoni', 33), (3405, 'Khetri', 33), (3406, 'Kiranipura', 33), (3407, 'Kishangarh', 33), (3408, 'Kishangarh Ranwal', 33), (3409, 'Kolvi Rajendrapura', 33), (3410, 'Kot Putli', 33), (3411, 'Kota', 33), (3412, 'Kuchaman', 33), (3413, 'Kuchera', 33), (3414, 'Kumbhalgarh', 33), (3415, 'Kumbhkot', 33), (3416, 'Kumher', 33), (3417, 'Kushalgarh', 33), (3418, 'Lachhmangarh', 33), (3419, 'Ladnun', 33), (3420, 'Lakheri', 33), (3421, 'Lalsot', 33), (3422, 'Losal', 33), (3423, 'Madanganj', 33), (3424, 'Mahu Kalan', 33), (3425, 'Mahwa', 33), (3426, 'Makrana', 33), (3427, 'Malpura', 33), (3428, 'Mandal', 33), (3429, 'Mandalgarh', 33), (3430, 'Mandawar', 33), (3431, 'Mandwa', 33), (3432, 'Mangrol', 33), (3433, 'Manohar Thana', 33), (3434, 'Manoharpur', 33), (3435, 'Marwar', 33), (3436, 'Merta', 33), (3437, 'Modak', 33), (3438, 'Mount Abu', 33), (3439, 'Mukandgarh', 33), (3440, 'Mundwa', 33), (3441, 'Nadbai', 33), (3442, 'Naenwa', 33), (3443, 'Nagar', 33), (3444, 'Nagaur', 33), (3445, 'Napasar', 33), (3446, 'Naraina', 33), (3447, 'Nasirabad', 33), (3448, 'Nathdwara', 33), (3449, 'Nawa', 33), (3450, 'Nawalgarh', 33), (3451, 'Neem Ka Thana', 33), (3452, 'Neemrana', 33), (3453, 'Newa Talai', 33), (3454, 'Nimaj', 33), (3455, 'Nimbahera', 33), (3456, 'Niwai', 33), (3457, 'Nohar', 33), (3458, 'Nokha', 33), (3459, 'One SGM', 33), (3460, 'Padampur', 33), (3461, 'Pali', 33), (3462, 'Partapur', 33), (3463, 'Parvatsar', 33), (3464, 'Pasoond', 33), (3465, 'Phalna', 33), (3466, 'Phalodi', 33), (3467, 'Phulera', 33), (3468, 'Pilani', 33), (3469, 'Pilibanga', 33), (3470, 'Pindwara', 33), (3471, 'Pipalia Kalan', 33), (3472, 'Pipar', 33), (3473, 'Pirawa', 33), (3474, 'Pokaran', 33), (3475, 'Pratapgarh', 33), (3476, 'Pushkar', 33), (3477, 'Raipur', 33), (3478, 'Raisinghnagar', 33), (3479, 'Rajakhera', 33), (3480, 'Rajaldesar', 33), (3481, 'Rajgarh', 33), (3482, 'Rajsamand', 33), (3483, 'Ramganj Mandi', 33), (3484, 'Ramgarh', 33), (3485, 'Rani', 33), (3486, 'Raniwara', 33), (3487, 'Ratan Nagar', 33), (3488, 'Ratangarh', 33), (3489, 'Rawatbhata', 33), (3490, 'Rawatsar', 33), (3491, 'Rikhabdev', 33), (3492, 'Ringas', 33), (3493, 'Sadri', 33), (3494, 'Sadulshahar', 33), (3495, 'Sagwara', 33), (3496, 'Salumbar', 33), (3497, 'Sambhar', 33), (3498, 'Samdari', 33), (3499, 'Sanchor', 33), (3500, 'Sangariya', 33), (3501, 'Sangod', 33), (3502, 'Sardarshahr', 33), (3503, 'Sarwar', 33), (3504, 'Satal Kheri', 33), (3505, 'Sawai Madhopur', 33), (3506, 'Sewan Kalan', 33), (3507, 'Shahpura', 33), (3508, 'Sheoganj', 33), (3509, 'Sikar', 33), (3510, 'Sirohi', 33), (3511, 'Siwana', 33), (3512, 'Sogariya', 33), (3513, 'Sojat', 33), (3514, 'Sojat Road', 33), (3515, 'Sri Madhopur', 33), (3516, 'Sriganganagar', 33), (3517, 'Sujangarh', 33), (3518, 'Suket', 33), (3519, 'Sumerpur', 33), (3520, 'Sunel', 33), (3521, 'Surajgarh', 33), (3522, 'Suratgarh', 33), (3523, 'Swaroopganj', 33), (3524, 'Takhatgarh', 33), (3525, 'Taranagar', 33), (3526, 'Three STR', 33), (3527, 'Tijara', 33), (3528, 'Toda Bhim', 33), (3529, 'Toda Raisingh', 33), (3530, 'Todra', 33), (3531, 'Tonk', 33), (3532, 'Udaipur', 33), (3533, 'Udpura', 33), (3534, 'Uniara', 33), (3535, 'Vanasthali', 33), (3536, 'Vidyavihar', 33), (3537, 'Vijainagar', 33), (3538, 'Viratnagar', 33), (3539, 'Wer', 33), (3540, 'Gangtok', 34), (3541, 'Gezing', 34), (3542, 'Jorethang', 34), (3543, 'Mangan', 34), (3544, 'Namchi', 34), (3545, 'Naya Bazar', 34), (3546, 'No City', 34), (3547, 'Rangpo', 34), (3548, 'Sikkim', 34), (3549, 'Singtam', 34), (3550, 'Upper Tadong', 34), (3551, 'Abiramam', 35), (3552, 'Achampudur', 35), (3553, 'Acharapakkam', 35), (3554, 'Acharipallam', 35), (3555, 'Achipatti', 35), (3556, 'Adikaratti', 35), (3557, 'Adiramapattinam', 35), (3558, 'Aduturai', 35), (3559, 'Adyar', 35), (3560, 'Agaram', 35), (3561, 'Agasthiswaram', 35), (3562, 'Akkaraipettai', 35), (3563, 'Alagappapuram', 35), (3564, 'Alagapuri', 35), (3565, 'Alampalayam', 35), (3566, 'Alandur', 35), (3567, 'Alanganallur', 35), (3568, 'Alangayam', 35), (3569, 'Alangudi', 35), (3570, 'Alangulam', 35), (3571, 'Alanthurai', 35), (3572, 'Alapakkam', 35), (3573, 'Allapuram', 35), (3574, 'Alur', 35), (3575, 'Alwar Tirunagari', 35), (3576, 'Alwarkurichi', 35), (3577, 'Ambasamudram', 35), (3578, 'Ambur', 35), (3579, 'Ammainaickanur', 35), (3580, 'Ammaparikuppam', 35), (3581, 'Ammapettai', 35), (3582, 'Ammavarikuppam', 35), (3583, 'Ammur', 35), (3584, 'Anaimalai', 35), (3585, 'Anaiyur', 35), (3586, 'Anakaputhur', 35), (3587, 'Ananthapuram', 35), (3588, 'Andanappettai', 35), (3589, 'Andipalayam', 35), (3590, 'Andippatti', 35), (3591, 'Anjugramam', 35), (3592, 'Annamalainagar', 35), (3593, 'Annavasal', 35), (3594, 'Annur', 35), (3595, 'Anthiyur', 35), (3596, 'Appakudal', 35), (3597, 'Arachalur', 35), (3598, 'Arakandanallur', 35), (3599, 'Arakonam', 35), (3600, 'Aralvaimozhi', 35), (3601, 'Arani', 35), (3602, 'Arani Road', 35), (3603, 'Arantangi', 35), (3604, 'Arasiramani', 35), (3605, 'Aravakurichi', 35), (3606, 'Aravankadu', 35), (3607, 'Arcot', 35), (3608, 'Arimalam', 35), (3609, 'Ariyalur', 35), (3610, 'Ariyappampalayam', 35), (3611, 'Ariyur', 35), (3612, 'Arni', 35), (
        3613,
        'Arulmigu Thirumuruganpundi',
        35
    ), (3614, 'Arumanai', 35), (3615, 'Arumbavur', 35), (3616, 'Arumuganeri', 35), (3617, 'Aruppukkottai', 35), (3618, 'Ashokapuram', 35), (3619, 'Athani', 35), (3620, 'Athanur', 35), (3621, 'Athimarapatti', 35), (3622, 'Athipattu', 35), (3623, 'Athur', 35), (3624, 'Attayyampatti', 35), (3625, 'Attur', 35), (3626, 'Auroville', 35), (3627, 'Avadattur', 35), (3628, 'Avadi', 35), (3629, 'Avalpundurai', 35), (3630, 'Avaniapuram', 35), (3631, 'Avinashi', 35), (3632, 'Ayakudi', 35), (3633, 'Ayanadaippu', 35), (3634, 'Aygudi', 35), (3635, 'Ayothiapattinam', 35), (3636, 'Ayyalur', 35), (3637, 'Ayyampalayam', 35), (3638, 'Ayyampettai', 35), (3639, 'Azhagiapandiapuram', 35), (3640, 'Balakrishnampatti', 35), (3641, 'Balakrishnapuram', 35), (3642, 'Balapallam', 35), (3643, 'Balasamudram', 35), (3644, 'Bargur', 35), (3645, 'Belur', 35), (3646, 'Berhatty', 35), (3647, 'Bhavani', 35), (3648, 'Bhawanisagar', 35), (3649, 'Bhuvanagiri', 35), (3650, 'Bikketti', 35), (3651, 'Bodinayakkanur', 35), (
        3652,
        'Brahmana Periya Agraharam',
        35
    ), (3653, 'Buthapandi', 35), (3654, 'Buthipuram', 35), (3655, 'Chatrapatti', 35), (3656, 'Chembarambakkam', 35), (3657, 'Chengalpattu', 35), (3658, 'Chengam', 35), (3659, 'Chennai', 35), (3660, 'Chennasamudram', 35), (3661, 'Chennimalai', 35), (3662, 'Cheranmadevi', 35), (3663, 'Cheruvanki', 35), (3664, 'Chetpet', 35), (3665, 'Chettiarpatti', 35), (3666, 'Chettipalaiyam', 35), (
        3667,
        'Chettipalayam Cantonment',
        35
    ), (3668, 'Chettithangal', 35), (3669, 'Cheyur', 35), (3670, 'Cheyyar', 35), (3671, 'Chidambaram', 35), (3672, 'Chinalapatti', 35), (3673, 'Chinna Anuppanadi', 35), (3674, 'Chinna Salem', 35), (3675, 'Chinnakkampalayam', 35), (3676, 'Chinnammanur', 35), (3677, 'Chinnampalaiyam', 35), (3678, 'Chinnasekkadu', 35), (3679, 'Chinnavedampatti', 35), (3680, 'Chitlapakkam', 35), (3681, 'Chittodu', 35), (3682, 'Cholapuram', 35), (3683, 'Coimbatore', 35), (3684, 'Coonoor', 35), (3685, 'Courtalam', 35), (3686, 'Cuddalore', 35), (3687, 'Dalavaipatti', 35), (3688, 'Darasuram', 35), (3689, 'Denkanikottai', 35), (3690, 'Desur', 35), (3691, 'Devadanapatti', 35), (3692, 'Devakkottai', 35), (3693, 'Devakottai', 35), (3694, 'Devanangurichi', 35), (3695, 'Devarshola', 35), (3696, 'Devasthanam', 35), (3697, 'Dhalavoipuram', 35), (3698, 'Dhali', 35), (3699, 'Dhaliyur', 35), (3700, 'Dharapadavedu', 35), (3701, 'Dharapuram', 35), (3702, 'Dharmapuri', 35), (3703, 'Dindigul', 35), (3704, 'Dusi', 35), (3705, 'Edaganasalai', 35), (3706, 'Edaikodu', 35), (3707, 'Edakalinadu', 35), (3708, 'Elathur', 35), (3709, 'Elayirampannai', 35), (3710, 'Elumalai', 35), (3711, 'Eral', 35), (3712, 'Eraniel', 35), (3713, 'Eriodu', 35), (3714, 'Erode', 35), (3715, 'Erumaipatti', 35), (3716, 'Eruvadi', 35), (3717, 'Ethapur', 35), (3718, 'Ettaiyapuram', 35), (3719, 'Ettimadai', 35), (3720, 'Ezhudesam', 35), (3721, 'Ganapathipuram', 35), (3722, 'Gandhi Nagar', 35), (3723, 'Gangaikondan', 35), (3724, 'Gangavalli', 35), (3725, 'Ganguvarpatti', 35), (3726, 'Gingi', 35), (3727, 'Gopalasamudram', 35), (3728, 'Gopichettipalaiyam', 35), (3729, 'Gudalur', 35), (3730, 'Gudiyattam', 35), (3731, 'Guduvanchery', 35), (3732, 'Gummidipoondi', 35), (3733, 'Hanumanthampatti', 35), (3734, 'Harur', 35), (3735, 'Harveypatti', 35), (3736, 'Highways', 35), (3737, 'Hosur', 35), (3738, 'Hubbathala', 35), (3739, 'Huligal', 35), (3740, 'Idappadi', 35), (3741, 'Idikarai', 35), (3742, 'Ilampillai', 35), (3743, 'Ilanji', 35), (3744, 'Iluppaiyurani', 35), (3745, 'Iluppur', 35), (3746, 'Inam Karur', 35), (3747, 'Injambakkam', 35), (3748, 'Irugur', 35), (3749, 'Jaffrabad', 35), (3750, 'Jagathala', 35), (3751, 'Jalakandapuram', 35), (3752, 'Jalladiampet', 35), (3753, 'Jambai', 35), (3754, 'Jayankondam', 35), (3755, 'Jolarpet', 35), (3756, 'Kadambur', 35), (3757, 'Kadathur', 35), (3758, 'Kadayal', 35), (3759, 'Kadayampatti', 35), (3760, 'Kadayanallur', 35), (3761, 'Kadiapatti', 35), (3762, 'Kalakkad', 35), (3763, 'Kalambur', 35), (3764, 'Kalapatti', 35), (
        3765,
        'Kalappanaickenpatti',
        35
    ), (3766, 'Kalavai', 35), (3767, 'Kalinjur', 35), (3768, 'Kaliyakkavilai', 35), (3769, 'Kallakkurichi', 35), (3770, 'Kallakudi', 35), (3771, 'Kallidaikurichchi', 35), (3772, 'Kallukuttam', 35), (3773, 'Kallupatti', 35), (3774, 'Kalpakkam', 35), (3775, 'Kalugumalai', 35), (3776, 'Kamayagoundanpatti', 35), (3777, 'Kambainallur', 35), (3778, 'Kambam', 35), (3779, 'Kamuthi', 35), (3780, 'Kanadukathan', 35), (3781, 'Kanakkampalayam', 35), (3782, 'Kanam', 35), (3783, 'Kanchipuram', 35), (3784, 'Kandanur', 35), (3785, 'Kangayam', 35), (3786, 'Kangayampalayam', 35), (3787, 'Kangeyanallur', 35), (3788, 'Kaniyur', 35), (3789, 'Kanjikoil', 35), (3790, 'Kannadendal', 35), (3791, 'Kannamangalam', 35), (3792, 'Kannampalayam', 35), (3793, 'Kannankurichi', 35), (3794, 'Kannapalaiyam', 35), (3795, 'Kannivadi', 35), (3796, 'Kanyakumari', 35), (3797, 'Kappiyarai', 35), (3798, 'Karaikkudi', 35), (3799, 'Karamadai', 35), (3800, 'Karambakkam', 35), (3801, 'Karambakkudi', 35), (3802, 'Kariamangalam', 35), (3803, 'Kariapatti', 35), (3804, 'Karugampattur', 35), (
        3805,
        'Karumandi Chellipalayam',
        35
    ), (3806, 'Karumathampatti', 35), (3807, 'Karumbakkam', 35), (3808, 'Karungal', 35), (3809, 'Karunguzhi', 35), (3810, 'Karuppur', 35), (3811, 'Karur', 35), (3812, 'Kasipalaiyam', 35), (3813, 'Kasipalayam G', 35), (3814, 'Kathirvedu', 35), (3815, 'Kathujuganapalli', 35), (3816, 'Katpadi', 35), (3817, 'Kattivakkam', 35), (3818, 'Kattumannarkoil', 35), (3819, 'Kattupakkam', 35), (3820, 'Kattuputhur', 35), (3821, 'Kaveripakkam', 35), (3822, 'Kaveripattinam', 35), (3823, 'Kavundampalaiyam', 35), (3824, 'Kavundampalayam', 35), (3825, 'Kayalpattinam', 35), (3826, 'Kayattar', 35), (3827, 'Kelamangalam', 35), (3828, 'Kelambakkam', 35), (
        3829,
        'Kembainaickenpalayam',
        35
    ), (3830, 'Kethi', 35), (3831, 'Kilakarai', 35), (3832, 'Kilampadi', 35), (3833, 'Kilkulam', 35), (3834, 'Kilkunda', 35), (3835, 'Killiyur', 35), (3836, 'Killlai', 35), (3837, 'Kilpennathur', 35), (3838, 'Kilvelur', 35), (3839, 'Kinathukadavu', 35), (3840, 'Kiramangalam', 35), (3841, 'Kiranur', 35), (3842, 'Kiripatti', 35), (3843, 'Kizhapavur', 35), (3844, 'Kmarasamipatti', 35), (3845, 'Kochadai', 35), (3846, 'Kodaikanal', 35), (3847, 'Kodambakkam', 35), (3848, 'Kodavasal', 35), (3849, 'Kodumudi', 35), (3850, 'Kolachal', 35), (3851, 'Kolappalur', 35), (3852, 'Kolathupalayam', 35), (3853, 'Kolathur', 35), (3854, 'Kollankodu', 35), (3855, 'Kollankoil', 35), (3856, 'Komaralingam', 35), (3857, 'Komarapalayam', 35), (3858, 'Kombai', 35), (3859, 'Konakkarai', 35), (3860, 'Konavattam', 35), (3861, 'Kondalampatti', 35), (3862, 'Konganapuram', 35), (3863, 'Koradacheri', 35), (3864, 'Korampallam', 35), (3865, 'Kotagiri', 35), (3866, 'Kothinallur', 35), (3867, 'Kottaiyur', 35), (3868, 'Kottakuppam', 35), (3869, 'Kottaram', 35), (3870, 'Kottivakkam', 35), (3871, 'Kottur', 35), (3872, 'Kovilpatti', 35), (3873, 'Koyampattur', 35), (3874, 'Krishnagiri', 35), (3875, 'Krishnarayapuram', 35), (3876, 'Krishnasamudram', 35), (3877, 'Kuchanur', 35), (3878, 'Kuhalur', 35), (
        3879,
        'Kulasekarappattinam',
        35
    ), (3880, 'Kulasekarapuram', 35), (3881, 'Kulithalai', 35), (3882, 'Kumarapalaiyam', 35), (3883, 'Kumarapalayam', 35), (3884, 'Kumarapuram', 35), (3885, 'Kumbakonam', 35), (3886, 'Kundrathur', 35), (3887, 'Kuniyamuthur', 35), (3888, 'Kunnathur', 35), (3889, 'Kunur', 35), (3890, 'Kuraikundu', 35), (3891, 'Kurichi', 35), (3892, 'Kurinjippadi', 35), (3893, 'Kurudampalaiyam', 35), (3894, 'Kurumbalur', 35), (3895, 'Kuthalam', 35), (3896, 'Kuthappar', 35), (3897, 'Kuttalam', 35), (3898, 'Kuttanallur', 35), (3899, 'Kuzhithurai', 35), (3900, 'Labbaikudikadu', 35), (3901, 'Lakkampatti', 35), (3902, 'Lalgudi', 35), (3903, 'Lalpet', 35), (3904, 'Llayangudi', 35), (3905, 'Madambakkam', 35), (3906, 'Madanur', 35), (3907, 'Madathukulam', 35), (3908, 'Madhavaram', 35), (3909, 'Madippakkam', 35), (3910, 'Madukkarai', 35), (3911, 'Madukkur', 35), (3912, 'Madurai', 35), (3913, 'Maduranthakam', 35), (3914, 'Maduravoyal', 35), (3915, 'Mahabalipuram', 35), (3916, 'Makkinanpatti', 35), (3917, 'Mallamuppampatti', 35), (3918, 'Mallankinaru', 35), (3919, 'Mallapuram', 35), (3920, 'Mallasamudram', 35), (3921, 'Mallur', 35), (3922, 'Mamallapuram', 35), (3923, 'Mamsapuram', 35), (3924, 'Manachanallur', 35), (3925, 'Manali', 35), (3926, 'Manalmedu', 35), (3927, 'Manalurpet', 35), (3928, 'Manamadurai', 35), (3929, 'Manapakkam', 35), (3930, 'Manapparai', 35), (3931, 'Manavalakurichi', 35), (3932, 'Mandaikadu', 35), (3933, 'Mandapam', 35), (3934, 'Mangadu', 35), (3935, 'Mangalam', 35), (3936, 'Mangalampet', 35), (3937, 'Manimutharu', 35), (3938, 'Mannargudi', 35), (3939, 'Mappilaiurani', 35), (3940, 'Maraimalai Nagar', 35), (3941, 'Marakkanam', 35), (
        3942,
        'Maramangalathupatti',
        35
    ), (3943, 'Marandahalli', 35), (3944, 'Markayankottai', 35), (3945, 'Marudur', 35), (3946, 'Marungur', 35), (3947, 'Masinigudi', 35), (3948, 'Mathigiri', 35), (3949, 'Mattur', 35), (3950, 'Mayiladuthurai', 35), (3951, 'Mecheri', 35), (3952, 'Melacheval', 35), (
        3953,
        'Melachokkanathapuram',
        35
    ), (3954, 'Melagaram', 35), (3955, 'Melamadai', 35), (3956, 'Melamaiyur', 35), (3957, 'Melanattam', 35), (
        3958,
        'Melathiruppanthuruthi',
        35
    ), (3959, 'Melattur', 35), (3960, 'Melmananbedu', 35), (3961, 'Melpattampakkam', 35), (3962, 'Melur', 35), (3963, 'Melvisharam', 35), (3964, 'Mettupalayam', 35), (3965, 'Mettur', 35), (3966, 'Meyyanur', 35), (3967, 'Milavittan', 35), (3968, 'Minakshipuram', 35), (3969, 'Minambakkam', 35), (3970, 'Minjur', 35), (3971, 'Modakurichi', 35), (3972, 'Mohanur', 35), (3973, 'Mopperipalayam', 35), (3974, 'Mudalur', 35), (3975, 'Mudichur', 35), (3976, 'Mudukulathur', 35), (3977, 'Mukasipidariyur', 35), (3978, 'Mukkudal', 35), (3979, 'Mulagumudu', 35), (3980, 'Mulakaraipatti', 35), (3981, 'Mulanur', 35), (3982, 'Mullakkadu', 35), (3983, 'Muruganpalayam', 35), (3984, 'Musiri', 35), (3985, 'Muthupet', 35), (3986, 'Muthur', 35), (3987, 'Muttayyapuram', 35), (3988, 'Muttupet', 35), (3989, 'Muvarasampettai', 35), (3990, 'Myladi', 35), (3991, 'Mylapore', 35), (3992, 'Nadukkuthagai', 35), (3993, 'Naduvattam', 35), (3994, 'Nagapattinam', 35), (3995, 'Nagavakulam', 35), (3996, 'Nagercoil', 35), (3997, 'Nagojanahalli', 35), (3998, 'Nallampatti', 35), (3999, 'Nallur', 35), (4000, 'Namagiripettai', 35), (4001, 'Namakkal', 35), (4002, 'Nambiyur', 35), (4003, 'Nambutalai', 35), (4004, 'Nandambakkam', 35), (4005, 'Nandivaram', 35), (4006, 'Nangavalli', 35), (4007, 'Nangavaram', 35), (4008, 'Nanguneri', 35), (4009, 'Nanjikottai', 35), (4010, 'Nannilam', 35), (4011, 'Naranammalpuram', 35), (4012, 'Naranapuram', 35), (
        4013,
        'Narasimhanaickenpalayam',
        35
    ), (4014, 'Narasingapuram', 35), (4015, 'Narasojipatti', 35), (4016, 'Naravarikuppam', 35), (4017, 'Nasiyanur', 35), (4018, 'Natham', 35), (4019, 'Nathampannai', 35), (4020, 'Natrampalli', 35), (4021, 'Nattam', 35), (4022, 'Nattapettai', 35), (4023, 'Nattarasankottai', 35), (4024, 'Navalpattu', 35), (4025, 'Nazarethpettai', 35), (4026, 'Nazerath', 35), (4027, 'Neikkarapatti', 35), (4028, 'Neiyyur', 35), (4029, 'Nellikkuppam', 35), (4030, 'Nelliyalam', 35), (4031, 'Nemili', 35), (4032, 'Nemilicheri', 35), (4033, 'Neripperichal', 35), (4034, 'Nerkunram', 35), (4035, 'Nerkuppai', 35), (4036, 'Nerunjipettai', 35), (4037, 'Neykkarappatti', 35), (4038, 'Neyveli', 35), (4039, 'Nidamangalam', 35), (4040, 'Nilagiri', 35), (4041, 'Nilakkottai', 35), (4042, 'Nilankarai', 35), (4043, 'Odaipatti', 35), (4044, 'Odaiyakulam', 35), (4045, 'Oddanchatram', 35), (4046, 'Odugathur', 35), (4047, 'Oggiyamduraipakkam', 35), (4048, 'Olagadam', 35), (4049, 'Omalur', 35), (4050, 'Ooty', 35), (4051, 'Orathanadu', 35), (4052, 'Othakadai', 35), (4053, 'Othakalmandapam', 35), (4054, 'Ottapparai', 35), (4055, 'Pacode', 35), (4056, 'Padaividu', 35), (4057, 'Padianallur', 35), (4058, 'Padirikuppam', 35), (4059, 'Padmanabhapuram', 35), (4060, 'Padririvedu', 35), (4061, 'Palaganangudy', 35), (4062, 'Palaimpatti', 35), (4063, 'Palakkodu', 35), (4064, 'Palamedu', 35), (4065, 'Palani', 35), (4066, 'Palani Chettipatti', 35), (4067, 'Palavakkam', 35), (4068, 'Palavansathu', 35), (4069, 'Palayakayal', 35), (4070, 'Palayam', 35), (4071, 'Palayamkottai', 35), (4072, 'Palladam', 35), (4073, 'Pallapalayam', 35), (4074, 'Pallapatti', 35), (4075, 'Pallattur', 35), (4076, 'Pallavaram', 35), (4077, 'Pallikaranai', 35), (4078, 'Pallikonda', 35), (4079, 'Pallipalaiyam', 35), (
        4080,
        'Pallipalaiyam Agraharam',
        35
    ), (4081, 'Pallipattu', 35), (4082, 'Pammal', 35), (4083, 'Panagudi', 35), (4084, 'Panaimarathupatti', 35), (4085, 'Panapakkam', 35), (4086, 'Panboli', 35), (4087, 'Pandamangalam', 35), (4088, 'Pannaikadu', 35), (4089, 'Pannaipuram', 35), (4090, 'Pannuratti', 35), (4091, 'Panruti', 35), (4092, 'Papanasam', 35), (4093, 'Pappankurichi', 35), (4094, 'Papparapatti', 35), (4095, 'Pappireddipatti', 35), (4096, 'Paramakkudi', 35), (4097, 'Paramankurichi', 35), (4098, 'Paramathi', 35), (4099, 'Parangippettai', 35), (4100, 'Paravai', 35), (4101, 'Pasur', 35), (4102, 'Pathamadai', 35), (4103, 'Pattinam', 35), (4104, 'Pattiviranpatti', 35), (4105, 'Pattukkottai', 35), (4106, 'Pazhugal', 35), (4107, 'Pennadam', 35), (4108, 'Pennagaram', 35), (4109, 'Pennathur', 35), (4110, 'Peraiyur', 35), (4111, 'Peralam', 35), (4112, 'Perambalur', 35), (4113, 'Peranamallur', 35), (4114, 'Peravurani', 35), (4115, 'Periyakodiveri', 35), (4116, 'Periyakulam', 35), (
        4117,
        'Periyanayakkanpalaiyam',
        35
    ), (4118, 'Periyanegamam', 35), (4119, 'Periyapatti', 35), (4120, 'Periyasemur', 35), (4121, 'Pernambut', 35), (4122, 'Perumagalur', 35), (4123, 'Perumandi', 35), (4124, 'Perumuchi', 35), (4125, 'Perundurai', 35), (4126, 'Perungalathur', 35), (4127, 'Perungudi', 35), (4128, 'Perungulam', 35), (4129, 'Perur', 35), (
        4130,
        'Perur Chettipalaiyam',
        35
    ), (4131, 'Pethampalayam', 35), (
        4132,
        'Pethanaickenpalayam',
        35
    ), (4133, 'Pillanallur', 35), (4134, 'Pirkankaranai', 35), (4135, 'Polichalur', 35), (4136, 'Pollachi', 35), (4137, 'Polur', 35), (4138, 'Ponmani', 35), (4139, 'Ponnamaravathi', 35), (4140, 'Ponnampatti', 35), (4141, 'Ponneri', 35), (4142, 'Porur', 35), (4143, 'Pothanur', 35), (4144, 'Pothatturpettai', 35), (4145, 'Pudukadai', 35), (
        4146,
        'Pudukkottai Cantonment',
        35
    ), (4147, 'Pudukottai', 35), (
        4148,
        'Pudupalaiyam Aghraharam',
        35
    ), (4149, 'Pudupalayam', 35), (4150, 'Pudupatti', 35), (4151, 'Pudupattinam', 35), (4152, 'Pudur', 35), (4153, 'Puduvayal', 35), (4154, 'Pulambadi', 35), (4155, 'Pulampatti', 35), (4156, 'Puliyampatti', 35), (4157, 'Puliyankudi', 35), (4158, 'Puliyur', 35), (4159, 'Pullampadi', 35), (4160, 'Puluvapatti', 35), (4161, 'Punamalli', 35), (
        4162,
        'Punjai Puliyampatti',
        35
    ), (
        4163,
        'Punjai Thottakurichi',
        35
    ), (4164, 'Punjaipugalur', 35), (4165, 'Puthalam', 35), (4166, 'Putteri', 35), (4167, 'Puvalur', 35), (4168, 'Puzhal', 35), (4169, 'Puzhithivakkam', 35), (4170, 'Rajapalayam', 35), (4171, 'Ramanathapuram', 35), (4172, 'Ramapuram', 35), (4173, 'Rameswaram', 35), (4174, 'Ranipet', 35), (4175, 'Rasipuram', 35), (4176, 'Rayagiri', 35), (4177, 'Rithapuram', 35), (4178, 'Rosalpatti', 35), (4179, 'Rudravathi', 35), (4180, 'Sadayankuppam', 35), (4181, 'Saint Thomas Mount', 35), (4182, 'Salangapalayam', 35), (4183, 'Salem', 35), (4184, 'Samalapuram', 35), (4185, 'Samathur', 35), (4186, 'Sambavar Vadagarai', 35), (4187, 'Sankaramanallur', 35), (4188, 'Sankarankoil', 35), (4189, 'Sankarapuram', 35), (4190, 'Sankari', 35), (4191, 'Sankarnagar', 35), (4192, 'Saravanampatti', 35), (4193, 'Sarcarsamakulam', 35), (
        4194,
        'Sathiyavijayanagaram',
        35
    ), (4195, 'Sathuvachari', 35), (4196, 'Sathyamangalam', 35), (4197, 'Sattankulam', 35), (4198, 'Sattur', 35), (4199, 'Sayalgudi', 35), (4200, 'Sayapuram', 35), (4201, 'Seithur', 35), (4202, 'Sembakkam', 35), (4203, 'Semmipalayam', 35), (4204, 'Sennirkuppam', 35), (4205, 'Senthamangalam', 35), (4206, 'Sentharapatti', 35), (4207, 'Senur', 35), (4208, 'Sethiathoppu', 35), (4209, 'Sevilimedu', 35), (4210, 'Sevugampatti', 35), (4211, 'Shenbakkam', 35), (4212, 'Shencottai', 35), (4213, 'Shenkottai', 35), (4214, 'Sholavandan', 35), (4215, 'Sholinganallur', 35), (4216, 'Sholingur', 35), (4217, 'Sholur', 35), (4218, 'Sikkarayapuram', 35), (4219, 'Singampuneri', 35), (4220, 'Singanallur', 35), (4221, 'Singaperumalkoil', 35), (4222, 'Sirapalli', 35), (4223, 'Sirkali', 35), (4224, 'Sirugamani', 35), (4225, 'Sirumugai', 35), (4226, 'Sithayankottai', 35), (4227, 'Sithurajapuram', 35), (4228, 'Sivaganga', 35), (4229, 'Sivagiri', 35), (4230, 'Sivakasi', 35), (4231, 'Sivanthipuram', 35), (4232, 'Sivur', 35), (4233, 'Soranjeri', 35), (4234, 'South Kannanur', 35), (4235, 'South Kodikulam', 35), (4236, 'Srimushnam', 35), (4237, 'Sriperumpudur', 35), (4238, 'Sriramapuram', 35), (4239, 'Srirangam', 35), (4240, 'Srivaikuntam', 35), (4241, 'Srivilliputtur', 35), (4242, 'Suchindram', 35), (4243, 'Suliswaranpatti', 35), (4244, 'Sulur', 35), (4245, 'Sundarapandiam', 35), (4246, 'Sundarapandiapuram', 35), (4247, 'Surampatti', 35), (4248, 'Surandai', 35), (4249, 'Suriyampalayam', 35), (4250, 'Swamimalai', 35), (4251, 'TNPL Pugalur', 35), (4252, 'Tambaram', 35), (4253, 'Taramangalam', 35), (4254, 'Tattayyangarpettai', 35), (4255, 'Tayilupatti', 35), (4256, 'Tenkasi', 35), (4257, 'Thadikombu', 35), (4258, 'Thakkolam', 35), (4259, 'Thalainayar', 35), (4260, 'Thalakudi', 35), (4261, 'Thamaraikulam', 35), (4262, 'Thammampatti', 35), (4263, 'Thanjavur', 35), (4264, 'Thanthoni', 35), (4265, 'Tharangambadi', 35), (4266, 'Thedavur', 35), (4267, 'Thenambakkam', 35), (4268, 'Thengampudur', 35), (4269, 'Theni', 35), (4270, 'Theni Allinagaram', 35), (4271, 'Thenkarai', 35), (4272, 'Thenthamaraikulam', 35), (4273, 'Thenthiruperai', 35), (4274, 'Thesur', 35), (4275, 'Thevaram', 35), (4276, 'Thevur', 35), (4277, 'Thiagadurgam', 35), (4278, 'Thiagarajar Colony', 35), (4279, 'Thingalnagar', 35), (4280, 'Thiruchirapalli', 35), (4281, 'Thirukarungudi', 35), (4282, 'Thirukazhukundram', 35), (
        4283,
        'Thirumalayampalayam',
        35
    ), (4284, 'Thirumazhisai', 35), (4285, 'Thirunagar', 35), (4286, 'Thirunageswaram', 35), (4287, 'Thirunindravur', 35), (4288, 'Thirunirmalai', 35), (4289, 'Thiruparankundram', 35), (4290, 'Thiruparappu', 35), (4291, 'Thiruporur', 35), (4292, 'Thiruppanandal', 35), (4293, 'Thirupuvanam', 35), (4294, 'Thiruthangal', 35), (4295, 'Thiruthuraipundi', 35), (4296, 'Thiruvaivaru', 35), (4297, 'Thiruvalam', 35), (4298, 'Thiruvarur', 35), (4299, 'Thiruvattaru', 35), (4300, 'Thiruvenkatam', 35), (4301, 'Thiruvennainallur', 35), (4302, 'Thiruvithankodu', 35), (4303, 'Thisayanvilai', 35), (4304, 'Thittacheri', 35), (4305, 'Thondamuthur', 35), (4306, 'Thorapadi', 35), (4307, 'Thottipalayam', 35), (4308, 'Thottiyam', 35), (4309, 'Thudiyalur', 35), (4310, 'Thuthipattu', 35), (4311, 'Thuvakudi', 35), (4312, 'Timiri', 35), (4313, 'Tindivanam', 35), (4314, 'Tinnanur', 35), (4315, 'Tiruchchendur', 35), (4316, 'Tiruchengode', 35), (4317, 'Tirukkalukkundram', 35), (4318, 'Tirukkattuppalli', 35), (4319, 'Tirukkoyilur', 35), (4320, 'Tirumangalam', 35), (4321, 'Tirumullaivasal', 35), (4322, 'Tirumuruganpundi', 35), (4323, 'Tirunageswaram', 35), (4324, 'Tirunelveli', 35), (4325, 'Tirupathur', 35), (4326, 'Tirupattur', 35), (4327, 'Tiruppuvanam', 35), (4328, 'Tirupur', 35), (4329, 'Tirusulam', 35), (4330, 'Tiruttani', 35), (4331, 'Tiruvallur', 35), (4332, 'Tiruvannamalai', 35), (4333, 'Tiruverambur', 35), (4334, 'Tiruverkadu', 35), (4335, 'Tiruvethipuram', 35), (4336, 'Tiruvidaimarudur', 35), (4337, 'Tiruvottiyur', 35), (4338, 'Tittakudi', 35), (4339, 'Tondi', 35), (4340, 'Turaiyur', 35), (4341, 'Tuticorin', 35), (4342, 'Udagamandalam', 35), (
        4343,
        'Udagamandalam Valley',
        35
    ), (4344, 'Udankudi', 35), (4345, 'Udayarpalayam', 35), (4346, 'Udumalaipettai', 35), (4347, 'Udumalpet', 35), (4348, 'Ullur', 35), (4349, 'Ulundurpettai', 35), (4350, 'Unjalaur', 35), (4351, 'Unnamalaikadai', 35), (4352, 'Uppidamangalam', 35), (4353, 'Uppiliapuram', 35), (4354, 'Urachikkottai', 35), (4355, 'Urapakkam', 35), (4356, 'Usilampatti', 35), (4357, 'Uthangarai', 35), (4358, 'Uthayendram', 35), (4359, 'Uthiramerur', 35), (4360, 'Uthukkottai', 35), (4361, 'Uttamapalaiyam', 35), (4362, 'Uttukkuli', 35), (
        4363,
        'Vadakarai Kizhpadugai',
        35
    ), (4364, 'Vadakkanandal', 35), (4365, 'Vadakku Valliyur', 35), (4366, 'Vadalur', 35), (4367, 'Vadamadurai', 35), (4368, 'Vadavalli', 35), (4369, 'Vadipatti', 35), (4370, 'Vadugapatti', 35), (4371, 'Vaithiswarankoil', 35), (4372, 'Valangaiman', 35), (4373, 'Valasaravakkam', 35), (4374, 'Valavanur', 35), (4375, 'Vallam', 35), (4376, 'Valparai', 35), (4377, 'Valvaithankoshtam', 35), (4378, 'Vanavasi', 35), (4379, 'Vandalur', 35), (4380, 'Vandavasi', 35), (4381, 'Vandiyur', 35), (4382, 'Vaniputhur', 35), (4383, 'Vaniyambadi', 35), (4384, 'Varadarajanpettai', 35), (4385, 'Varadharajapuram', 35), (4386, 'Vasudevanallur', 35), (4387, 'Vathirairuppu', 35), (4388, 'Vattalkundu', 35), (4389, 'Vazhapadi', 35), (4390, 'Vedapatti', 35), (4391, 'Vedaranniyam', 35), (4392, 'Vedasandur', 35), (4393, 'Velampalaiyam', 35), (4394, 'Velankanni', 35), (4395, 'Vellakinar', 35), (4396, 'Vellakoil', 35), (4397, 'Vellalapatti', 35), (4398, 'Vellalur', 35), (4399, 'Vellanur', 35), (4400, 'Vellimalai', 35), (4401, 'Vellore', 35), (4402, 'Vellottamparappu', 35), (4403, 'Velluru', 35), (4404, 'Vengampudur', 35), (4405, 'Vengathur', 35), (4406, 'Vengavasal', 35), (4407, 'Venghatur', 35), (4408, 'Venkarai', 35), (4409, 'Vennanthur', 35), (4410, 'Veppathur', 35), (4411, 'Verkilambi', 35), (4412, 'Vettaikaranpudur', 35), (4413, 'Vettavalam', 35), (4414, 'Vijayapuri', 35), (4415, 'Vikramasingapuram', 35), (4416, 'Vikravandi', 35), (4417, 'Vilangudi', 35), (4418, 'Vilankurichi', 35), (4419, 'Vilapakkam', 35), (4420, 'Vilathikulam', 35), (4421, 'Vilavur', 35), (4422, 'Villukuri', 35), (4423, 'Villupuram', 35), (4424, 'Viraganur', 35), (4425, 'Virakeralam', 35), (4426, 'Virakkalpudur', 35), (4427, 'Virapandi', 35), (
        4428,
        'Virapandi Cantonment',
        35
    ), (4429, 'Virappanchatram', 35), (4430, 'Viravanallur', 35), (4431, 'Virudambattu', 35), (4432, 'Virudhachalam', 35), (4433, 'Virudhunagar', 35), (4434, 'Virupakshipuram', 35), (4435, 'Viswanatham', 35), (4436, 'Vriddhachalam', 35), (4437, 'Walajabad', 35), (4438, 'Walajapet', 35), (4439, 'Wellington', 35), (4440, 'Yercaud', 35), (4441, 'Zamin Uthukuli', 35), (4442, 'Achampet', 36), (4443, 'Adilabad', 36), (4444, 'Armoor', 36), (4445, 'Asifabad', 36), (4446, 'Badepally', 36), (4447, 'Banswada', 36), (4448, 'Bellampalli', 36), (4449, 'Bhadrachalam', 36), (4450, 'Bhainsa', 36), (4451, 'Bhongir', 36), (4452, 'Bhupalpally', 36), (4453, 'Bodhan', 36), (4454, 'Bollaram', 36), (4455, 'Devarkonda', 36), (4456, 'Farooqnagar', 36), (4457, 'Gadwal', 36), (4458, 'Gajwel', 36), (4459, 'Ghatkesar', 36), (4460, 'Hyderabad', 36), (4461, 'Jagtial', 36), (4462, 'Jangaon', 36), (4463, 'Kagaznagar', 36), (4464, 'Kalwakurthy', 36), (4465, 'Kamareddy', 36), (4466, 'Karimnagar', 36), (4467, 'Khammam', 36), (4468, 'Kodada', 36), (4469, 'Koratla', 36), (4470, 'Kottagudem', 36), (4471, 'Kyathampalle', 36), (4472, 'Madhira', 36), (4473, 'Mahabubabad', 36), (4474, 'Mahbubnagar', 36), (4475, 'Mancherial', 36), (4476, 'Mandamarri', 36), (4477, 'Manuguru', 36), (4478, 'Medak', 36);

INSERT INTO
    `cities` (`id`, `name`, `state_id`)
VALUES (4479, 'Medchal', 36), (4480, 'Miryalaguda', 36), (4481, 'Nagar Karnul', 36), (4482, 'Nakrekal', 36), (4483, 'Nalgonda', 36), (4484, 'Narayanpet', 36), (4485, 'Narsampet', 36), (4486, 'Nirmal', 36), (4487, 'Nizamabad', 36), (4488, 'Palwancha', 36), (4489, 'Peddapalli', 36), (4490, 'Ramagundam', 36), (
        4491,
        'Ranga Reddy district',
        36
    ), (4492, 'Sadasivpet', 36), (4493, 'Sangareddy', 36), (4494, 'Sarapaka', 36), (4495, 'Sathupalle', 36), (4496, 'Secunderabad', 36), (4497, 'Siddipet', 36), (4498, 'Singapur', 36), (4499, 'Sircilla', 36), (4500, 'Suryapet', 36), (4501, 'Tandur', 36), (4502, 'Vemulawada', 36), (4503, 'Vikarabad', 36), (4504, 'Wanaparthy', 36), (4505, 'Warangal', 36), (4506, 'Yellandu', 36), (4507, 'Zahirabad', 36), (4508, 'Agartala', 37), (4509, 'Amarpur', 37), (4510, 'Ambassa', 37), (4511, 'Badharghat', 37), (4512, 'Belonia', 37), (4513, 'Dharmanagar', 37), (4514, 'Gakulnagar', 37), (4515, 'Gandhigram', 37), (4516, 'Indranagar', 37), (4517, 'Jogendranagar', 37), (4518, 'Kailasahar', 37), (4519, 'Kamalpur', 37), (4520, 'Kanchanpur', 37), (4521, 'Khowai', 37), (4522, 'Kumarghat', 37), (4523, 'Kunjaban', 37), (4524, 'Narsingarh', 37), (4525, 'Pratapgarh', 37), (4526, 'Ranir Bazar', 37), (4527, 'Sabrum', 37), (4528, 'Sonamura', 37), (4529, 'Teliamura', 37), (4530, 'Udaipur', 37), (4531, 'Achhalda', 38), (4532, 'Achhnera', 38), (4533, 'Adari', 38), (4534, 'Afzalgarh', 38), (4535, 'Agarwal Mandi', 38), (4536, 'Agra', 38), (4537, 'Agra Cantonment', 38), (4538, 'Ahraura', 38), (4539, 'Ailum', 38), (4540, 'Air Force Area', 38), (4541, 'Ajhuwa', 38), (4542, 'Akbarpur', 38), (4543, 'Alapur', 38), (4544, 'Aliganj', 38), (4545, 'Aligarh', 38), (4546, 'Allahabad', 38), (
        4547,
        'Allahabad Cantonment',
        38
    ), (4548, 'Allahganj', 38), (4549, 'Amanpur', 38), (4550, 'Ambahta', 38), (4551, 'Amethi', 38), (4552, 'Amila', 38), (4553, 'Amilo', 38), (4554, 'Aminagar Sarai', 38), (
        4555,
        'Aminagar Urf Bhurbaral',
        38
    ), (4556, 'Amraudha', 38), (4557, 'Amroha', 38), (4558, 'Anandnagar', 38), (4559, 'Anpara', 38), (4560, 'Antu', 38), (4561, 'Anupshahr', 38), (4562, 'Aonla', 38), (4563, 'Armapur Estate', 38), (4564, 'Ashokpuram', 38), (
        4565,
        'Ashrafpur Kichhauchha',
        38
    ), (4566, 'Atarra', 38), (4567, 'Atasu', 38), (4568, 'Atrauli', 38), (4569, 'Atraulia', 38), (4570, 'Auraiya', 38), (4571, 'Aurangabad', 38), (4572, 'Aurangabad Bangar', 38), (4573, 'Auras', 38), (4574, 'Awagarh', 38), (4575, 'Ayodhya', 38), (4576, 'Azamgarh', 38), (4577, 'Azizpur', 38), (4578, 'Azmatgarh', 38), (4579, 'Babarpur Ajitmal', 38), (4580, 'Baberu', 38), (4581, 'Babina', 38), (4582, 'Babrala', 38), (4583, 'Babugarh', 38), (4584, 'Bachhiowan', 38), (4585, 'Bachhraon', 38), (4586, 'Bad', 38), (4587, 'Badaun', 38), (4588, 'Baghpat', 38), (4589, 'Bah', 38), (4590, 'Bahadurganj', 38), (4591, 'Baheri', 38), (4592, 'Bahjoi', 38), (4593, 'Bahraich', 38), (4594, 'Bahsuma', 38), (4595, 'Bahua', 38), (4596, 'Bajna', 38), (4597, 'Bakewar', 38), (4598, 'Bakiabad', 38), (4599, 'Baldeo', 38), (4600, 'Ballia', 38), (4601, 'Balrampur', 38), (4602, 'Banat', 38), (4603, 'Banda', 38), (4604, 'Bangarmau', 38), (4605, 'Banki', 38), (4606, 'Bansdih', 38), (4607, 'Bansgaon', 38), (4608, 'Bansi', 38), (4609, 'Barabanki', 38), (4610, 'Baragaon', 38), (4611, 'Baraut', 38), (4612, 'Bareilly', 38), (
        4613,
        'Bareilly Cantonment',
        38
    ), (4614, 'Barhalganj', 38), (4615, 'Barhani', 38), (4616, 'Barhapur', 38), (4617, 'Barkhera', 38), (4618, 'Barsana', 38), (4619, 'Barva Sagar', 38), (4620, 'Barwar', 38), (4621, 'Basti', 38), (4622, 'Begumabad Budhana', 38), (4623, 'Behat', 38), (4624, 'Behta Hajipur', 38), (4625, 'Bela', 38), (4626, 'Belthara', 38), (4627, 'Beniganj', 38), (4628, 'Beswan', 38), (4629, 'Bewar', 38), (4630, 'Bhadarsa', 38), (4631, 'Bhadohi', 38), (4632, 'Bhagwantnagar', 38), (4633, 'Bharatganj', 38), (4634, 'Bhargain', 38), (4635, 'Bharthana', 38), (4636, 'Bharuhana', 38), (4637, 'Bharwari', 38), (4638, 'Bhatni Bazar', 38), (4639, 'Bhatpar Rani', 38), (
        4640,
        'Bhawan Bahadurnagar',
        38
    ), (4641, 'Bhinga', 38), (4642, 'Bhojpur Dharampur', 38), (4643, 'Bhokarhedi', 38), (4644, 'Bhongaon', 38), (4645, 'Bhulepur', 38), (4646, 'Bidhuna', 38), (4647, 'Bighapur', 38), (4648, 'Bijnor', 38), (4649, 'Bijpur', 38), (4650, 'Bikapur', 38), (4651, 'Bilari', 38), (4652, 'Bilaspur', 38), (4653, 'Bilgram', 38), (4654, 'Bilhaur', 38), (4655, 'Bilram', 38), (4656, 'Bilrayaganj', 38), (4657, 'Bilsanda', 38), (4658, 'Bilsi', 38), (4659, 'Bindki', 38), (4660, 'Bisalpur', 38), (4661, 'Bisanda Buzurg', 38), (4662, 'Bisauli', 38), (4663, 'Bisharatganj', 38), (4664, 'Bisokhar', 38), (4665, 'Biswan', 38), (4666, 'Bithur', 38), (4667, 'Budaun', 38), (4668, 'Bugrasi', 38), (4669, 'Bulandshahar', 38), (4670, 'Burhana', 38), (4671, 'Chail', 38), (4672, 'Chak Imam Ali', 38), (4673, 'Chakeri', 38), (4674, 'Chakia', 38), (4675, 'Chandauli', 38), (4676, 'Chandausi', 38), (4677, 'Chandpur', 38), (4678, 'Charkhari', 38), (4679, 'Charthawal', 38), (4680, 'Chaumuhan', 38), (4681, 'Chhaprauli', 38), (4682, 'Chhara Rafatpur', 38), (4683, 'Chharprauli', 38), (4684, 'Chhata', 38), (4685, 'Chhatari', 38), (4686, 'Chhibramau', 38), (4687, 'Chhutmalpur', 38), (4688, 'Chilkana Sultanpur', 38), (4689, 'Chirgaon', 38), (4690, 'Chit Baragaon', 38), (4691, 'Chitrakut Dham', 38), (4692, 'Chopan', 38), (4693, 'Choubepur Kalan', 38), (4694, 'Chunar', 38), (4695, 'Churk Ghurma', 38), (4696, 'Colonelganj', 38), (4697, 'Dadri', 38), (4698, 'Dalmau', 38), (4699, 'Dankaur', 38), (4700, 'Dariyabad', 38), (4701, 'Dasna', 38), (4702, 'Dataganj', 38), (4703, 'Daurala', 38), (4704, 'Dayal Bagh', 38), (4705, 'Deoband', 38), (4706, 'Deoranian', 38), (4707, 'Deoria', 38), (4708, 'Dewa', 38), (4709, 'Dhampur', 38), (4710, 'Dhanauha', 38), (4711, 'Dhanauli', 38), (4712, 'Dhanaura', 38), (4713, 'Dharoti Khurd', 38), (4714, 'Dhauratanda', 38), (4715, 'Dhaurhra', 38), (4716, 'Dibai', 38), (4717, 'Dibiyapur', 38), (
        4718,
        'Dildarnagar Fatehpur',
        38
    ), (4719, 'Do Ghat', 38), (4720, 'Dohrighat', 38), (4721, 'Dostpur', 38), (4722, 'Dudhinagar', 38), (4723, 'Dulhipur', 38), (4724, 'Dundwaraganj', 38), (4725, 'Ekdil', 38), (4726, 'Erich', 38), (4727, 'Etah', 38), (4728, 'Etawah', 38), (4729, 'Faizabad', 38), (
        4730,
        'Faizabad Cantonment',
        38
    ), (4731, 'Faizganj', 38), (4732, 'Farah', 38), (4733, 'Faridnagar', 38), (4734, 'Faridpur', 38), (
        4735,
        'Faridpur Cantonment',
        38
    ), (4736, 'Fariha', 38), (4737, 'Farrukhabad', 38), (4738, 'Fatehabad', 38), (
        4739,
        'Fatehganj Pashchimi',
        38
    ), (4740, 'Fatehganj Purvi', 38), (4741, 'Fatehgarh', 38), (4742, 'Fatehpur', 38), (4743, 'Fatehpur Chaurasi', 38), (4744, 'Fatehpur Sikri', 38), (4745, 'Firozabad', 38), (4746, 'Gajraula', 38), (4747, 'Ganga Ghat', 38), (4748, 'Gangapur', 38), (4749, 'Gangoh', 38), (4750, 'Ganj Muradabad', 38), (4751, 'Garautha', 38), (4752, 'Garhi Pukhta', 38), (4753, 'Garhmukteshwar', 38), (4754, 'Gaura Barahaj', 38), (4755, 'Gauri Bazar', 38), (4756, 'Gausganj', 38), (4757, 'Gawan', 38), (4758, 'Ghatampur', 38), (4759, 'Ghaziabad', 38), (4760, 'Ghazipur', 38), (4761, 'Ghiror', 38), (4762, 'Ghorawal', 38), (4763, 'Ghosi', 38), (4764, 'Ghosia Bazar', 38), (4765, 'Ghughuli', 38), (4766, 'Gohand', 38), (4767, 'Gokul', 38), (4768, 'Gola Bazar', 38), (4769, 'Gola Gokarannath', 38), (4770, 'Gonda', 38), (4771, 'Gopamau', 38), (4772, 'Gopiganj', 38), (4773, 'Gorakhpur', 38), (4774, 'Gosainganj', 38), (4775, 'Govardhan', 38), (4776, 'Greater Noida', 38), (4777, 'Gulaothi', 38), (4778, 'Gulariya', 38), (4779, 'Gulariya Bhindara', 38), (4780, 'Gunnaur', 38), (4781, 'Gursahaiganj', 38), (4782, 'Gursarai', 38), (4783, 'Gyanpur', 38), (4784, 'Hafizpur', 38), (4785, 'Haidergarh', 38), (4786, 'Haldaur', 38), (4787, 'Hamirpur', 38), (4788, 'Handia', 38), (4789, 'Hapur', 38), (4790, 'Hardoi', 38), (4791, 'Harduaganj', 38), (4792, 'Hargaon', 38), (4793, 'Hariharpur', 38), (4794, 'Harraiya', 38), (4795, 'Hasanpur', 38), (4796, 'Hasayan', 38), (4797, 'Hastinapur', 38), (4798, 'Hata', 38), (4799, 'Hathras', 38), (4800, 'Hyderabad', 38), (4801, 'Ibrahimpur', 38), (4802, 'Iglas', 38), (4803, 'Ikauna', 38), (4804, 'Iltifatganj Bazar', 38), (
        4805,
        'Indian Telephone Industry Mank',
        38
    ), (4806, 'Islamnagar', 38), (4807, 'Itaunja', 38), (4808, 'Itimadpur', 38), (4809, 'Jagner', 38), (4810, 'Jahanabad', 38), (4811, 'Jahangirabad', 38), (4812, 'Jahangirpur', 38), (4813, 'Jais', 38), (4814, 'Jaithara', 38), (4815, 'Jalalabad', 38), (4816, 'Jalali', 38), (4817, 'Jalalpur', 38), (4818, 'Jalaun', 38), (4819, 'Jalesar', 38), (4820, 'Jamshila', 38), (4821, 'Jangipur', 38), (4822, 'Jansath', 38), (4823, 'Jarwal', 38), (4824, 'Jasrana', 38), (4825, 'Jaswantnagar', 38), (4826, 'Jatari', 38), (4827, 'Jaunpur', 38), (4828, 'Jewar', 38), (4829, 'Jhalu', 38), (4830, 'Jhansi', 38), (4831, 'Jhansi Cantonment', 38), (
        4832,
        'Jhansi Railway Settlement',
        38
    ), (4833, 'Jhinjhak', 38), (4834, 'Jhinjhana', 38), (4835, 'Jhusi', 38), (4836, 'Jhusi Kohna', 38), (4837, 'Jiyanpur', 38), (4838, 'Joya', 38), (4839, 'Jyoti Khuria', 38), (
        4840,
        'Jyotiba Phule Nagar',
        38
    ), (4841, 'Kabrai', 38), (4842, 'Kachhauna Patseni', 38), (4843, 'Kachhla', 38), (4844, 'Kachhwa', 38), (4845, 'Kadaura', 38), (4846, 'Kadipur', 38), (4847, 'Kailashpur', 38), (4848, 'Kaimganj', 38), (4849, 'Kairana', 38), (4850, 'Kakgaina', 38), (4851, 'Kakod', 38), (4852, 'Kakori', 38), (4853, 'Kakrala', 38), (4854, 'Kalinagar', 38), (4855, 'Kalpi', 38), (4856, 'Kamalganj', 38), (4857, 'Kampil', 38), (4858, 'Kandhla', 38), (4859, 'Kandwa', 38), (4860, 'Kannauj', 38), (4861, 'Kanpur', 38), (4862, 'Kant', 38), (4863, 'Kanth', 38), (4864, 'Kaptanganj', 38), (4865, 'Karaon', 38), (4866, 'Karari', 38), (4867, 'Karhal', 38), (4868, 'Karnawal', 38), (4869, 'Kasganj', 38), (4870, 'Katariya', 38), (4871, 'Katghar Lalganj', 38), (4872, 'Kathera', 38), (4873, 'Katra', 38), (4874, 'Katra Medniganj', 38), (4875, 'Kauriaganj', 38), (4876, 'Kemri', 38), (4877, 'Kerakat', 38), (4878, 'Khadda', 38), (4879, 'Khaga', 38), (4880, 'Khailar', 38), (4881, 'Khair', 38), (4882, 'Khairabad', 38), (4883, 'Khairagarh', 38), (4884, 'Khalilabad', 38), (4885, 'Khamaria', 38), (4886, 'Khanpur', 38), (4887, 'Kharela', 38), (4888, 'Khargupur', 38), (4889, 'Khariya', 38), (4890, 'Kharkhoda', 38), (4891, 'Khatauli', 38), (4892, 'Khatauli Rural', 38), (4893, 'Khekra', 38), (4894, 'Kheri', 38), (4895, 'Kheta Sarai', 38), (4896, 'Khudaganj', 38), (4897, 'Khurja', 38), (4898, 'Khutar', 38), (4899, 'Kiraoli', 38), (4900, 'Kiratpur', 38), (4901, 'Kishanpur', 38), (4902, 'Kishni', 38), (4903, 'Kithaur', 38), (4904, 'Koiripur', 38), (4905, 'Konch', 38), (4906, 'Kopaganj', 38), (4907, 'Kora Jahanabad', 38), (4908, 'Korwa', 38), (4909, 'Kosi Kalan', 38), (4910, 'Kota', 38), (4911, 'Kotra', 38), (4912, 'Kotwa', 38), (4913, 'Kulpahar', 38), (4914, 'Kunda', 38), (4915, 'Kundarki', 38), (4916, 'Kunwargaon', 38), (4917, 'Kurara', 38), (4918, 'Kurawali', 38), (4919, 'Kursath', 38), (4920, 'Kurthi Jafarpur', 38), (4921, 'Kushinagar', 38), (4922, 'Kusmara', 38), (4923, 'Laharpur', 38), (4924, 'Lakhimpur', 38), (4925, 'Lakhna', 38), (4926, 'Lalganj', 38), (4927, 'Lalitpur', 38), (4928, 'Lar', 38), (4929, 'Lawar', 38), (4930, 'Ledwa Mahuwa', 38), (4931, 'Lohta', 38), (4932, 'Loni', 38), (4933, 'Lucknow', 38), (4934, 'Machhlishahr', 38), (4935, 'Madhoganj', 38), (4936, 'Madhogarh', 38), (4937, 'Maghar', 38), (4938, 'Mahaban', 38), (4939, 'Maharajganj', 38), (4940, 'Mahmudabad', 38), (4941, 'Mahoba', 38), (4942, 'Maholi', 38), (4943, 'Mahona', 38), (4944, 'Mahroni', 38), (4945, 'Mailani', 38), (4946, 'Mainpuri', 38), (
        4947,
        'Majhara Pipar Ehatmali',
        38
    ), (4948, 'Majhauli Raj', 38), (4949, 'Malihabad', 38), (4950, 'Mallanwam', 38), (4951, 'Mandawar', 38), (4952, 'Manikpur', 38), (4953, 'Maniyar', 38), (4954, 'Manjhanpur', 38), (4955, 'Mankapur', 38), (4956, 'Marehra', 38), (4957, 'Mariahu', 38), (4958, 'Maruadih', 38), (4959, 'Maswasi', 38), (4960, 'Mataundh', 38), (4961, 'Mathu', 38), (4962, 'Mathura', 38), (4963, 'Mathura Cantonment', 38), (4964, 'Mau', 38), (4965, 'Mau Aima', 38), (4966, 'Maudaha', 38), (4967, 'Mauranipur', 38), (4968, 'Maurawan', 38), (4969, 'Mawana', 38), (4970, 'Meerut', 38), (4971, 'Mehnagar', 38), (4972, 'Mehndawal', 38), (4973, 'Mendu', 38), (4974, 'Milak', 38), (4975, 'Miranpur', 38), (4976, 'Mirat', 38), (4977, 'Mirat Cantonment', 38), (4978, 'Mirganj', 38), (4979, 'Mirzapur', 38), (4980, 'Misrikh', 38), (4981, 'Modinagar', 38), (4982, 'Mogra Badshahpur', 38), (4983, 'Mohan', 38), (4984, 'Mohanpur', 38), (4985, 'Mohiuddinpur', 38), (4986, 'Moradabad', 38), (4987, 'Moth', 38), (4988, 'Mubarakpur', 38), (4989, 'Mughal Sarai', 38), (
        4990,
        'Mughal Sarai Railway Settlemen',
        38
    ), (4991, 'Muhammadabad', 38), (4992, 'Muhammadi', 38), (4993, 'Mukrampur Khema', 38), (4994, 'Mundia', 38), (4995, 'Mundora', 38), (4996, 'Muradnagar', 38), (4997, 'Mursan', 38), (4998, 'Musafirkhana', 38), (4999, 'Muzaffarnagar', 38), (5000, 'Nadigaon', 38), (5001, 'Nagina', 38), (5002, 'Nagram', 38), (5003, 'Nai Bazar', 38), (5004, 'Nainana Jat', 38), (5005, 'Najibabad', 38), (5006, 'Nakur', 38), (5007, 'Nanaunta', 38), (5008, 'Nandgaon', 38), (5009, 'Nanpara', 38), (5010, 'Naraini', 38), (5011, 'Narauli', 38), (5012, 'Naraura', 38), (5013, 'Naugawan Sadat', 38), (5014, 'Nautanwa', 38), (5015, 'Nawabganj', 38), (5016, 'Nichlaul', 38), (5017, 'Nidhauli Kalan', 38), (5018, 'Nihtaur', 38), (5019, 'Nindaura', 38), (5020, 'Niwari', 38), (5021, 'Nizamabad', 38), (5022, 'Noida', 38), (
        5023,
        'Northern Railway Colony',
        38
    ), (5024, 'Nurpur', 38), (5025, 'Nyoria Husenpur', 38), (5026, 'Nyotini', 38), (5027, 'Obra', 38), (5028, 'Oel Dhakwa', 38), (5029, 'Orai', 38), (5030, 'Oran', 38), (
        5031,
        'Ordinance Factory Muradnagar',
        38
    ), (5032, 'Pachperwa', 38), (5033, 'Padrauna', 38), (5034, 'Pahasu', 38), (5035, 'Paintepur', 38), (5036, 'Pali', 38), (5037, 'Palia Kalan', 38), (5038, 'Parasi', 38), (5039, 'Parichha', 38), (5040, 'Parichhatgarh', 38), (5041, 'Parsadepur', 38), (5042, 'Patala', 38), (5043, 'Patiyali', 38), (5044, 'Patti', 38), (5045, 'Pawayan', 38), (5046, 'Phalauda', 38), (5047, 'Phaphund', 38), (5048, 'Phulpur', 38), (5049, 'Phulwaria', 38), (5050, 'Pihani', 38), (5051, 'Pilibhit', 38), (5052, 'Pilkana', 38), (5053, 'Pilkhuwa', 38), (5054, 'Pinahat', 38), (
        5055,
        'Pipalsana Chaudhari',
        38
    ), (5056, 'Pipiganj', 38), (5057, 'Pipraich', 38), (5058, 'Pipri', 38), (5059, 'Pratapgarh', 38), (5060, 'Pukhrayan', 38), (5061, 'Puranpur', 38), (5062, 'Purdil Nagar', 38), (5063, 'Purqazi', 38), (5064, 'Purwa', 38), (5065, 'Qasimpur', 38), (5066, 'Rabupura', 38), (5067, 'Radha Kund', 38), (5068, 'Rae Bareilly', 38), (5069, 'Raja Ka Rampur', 38), (5070, 'Rajapur', 38), (5071, 'Ramkola', 38), (5072, 'Ramnagar', 38), (5073, 'Rampur', 38), (5074, 'Rampur Bhawanipur', 38), (5075, 'Rampur Karkhana', 38), (5076, 'Rampur Maniharan', 38), (5077, 'Rampura', 38), (5078, 'Ranipur', 38), (5079, 'Rashidpur Garhi', 38), (5080, 'Rasra', 38), (5081, 'Rasulabad', 38), (5082, 'Rath', 38), (5083, 'Raya', 38), (5084, 'Renukut', 38), (5085, 'Reoti', 38), (5086, 'Richha', 38), (5087, 'Risia Bazar', 38), (5088, 'Rithora', 38), (5089, 'Robertsganj', 38), (5090, 'Roza', 38), (5091, 'Rudarpur', 38), (5092, 'Rudauli', 38), (5093, 'Rudayan', 38), (5094, 'Rura', 38), (
        5095,
        'Rustamnagar Sahaspur',
        38
    ), (5096, 'Sabatwar', 38), (5097, 'Sadabad', 38), (5098, 'Sadat', 38), (5099, 'Safipur', 38), (5100, 'Sahanpur', 38), (5101, 'Saharanpur', 38), (5102, 'Sahaspur', 38), (5103, 'Sahaswan', 38), (5104, 'Sahawar', 38), (5105, 'Sahibabad', 38), (5106, 'Sahjanwa', 38), (5107, 'Sahpau', 38), (5108, 'Saidpur', 38), (5109, 'Sainthal', 38), (5110, 'Saiyadraja', 38), (5111, 'Sakhanu', 38), (5112, 'Sakit', 38), (5113, 'Salarpur Khadar', 38), (5114, 'Salimpur', 38), (5115, 'Salon', 38), (5116, 'Sambhal', 38), (5117, 'Sambhawali', 38), (5118, 'Samdhan', 38), (5119, 'Samthar', 38), (5120, 'Sandi', 38), (5121, 'Sandila', 38), (5122, 'Sarai Mir', 38), (5123, 'Sarai akil', 38), (5124, 'Sarauli', 38), (5125, 'Sardhana', 38), (5126, 'Sarila', 38), (5127, 'Sarsawan', 38), (5128, 'Sasni', 38), (5129, 'Satrikh', 38), (5130, 'Saunkh', 38), (5131, 'Saurikh', 38), (5132, 'Seohara', 38), (5133, 'Sewal Khas', 38), (5134, 'Sewarhi', 38), (5135, 'Shahabad', 38), (5136, 'Shahganj', 38), (5137, 'Shahi', 38), (5138, 'Shahjahanpur', 38), (
        5139,
        'Shahjahanpur Cantonment',
        38
    ), (5140, 'Shahpur', 38), (5141, 'Shamli', 38), (5142, 'Shamsabad', 38), (5143, 'Shankargarh', 38), (5144, 'Shergarh', 38), (5145, 'Sherkot', 38), (5146, 'Shikarpur', 38), (5147, 'Shikohabad', 38), (5148, 'Shisgarh', 38), (5149, 'Shivdaspur', 38), (5150, 'Shivli', 38), (5151, 'Shivrajpur', 38), (5152, 'Shohratgarh', 38), (5153, 'Siddhanur', 38), (5154, 'Siddharthnagar', 38), (5155, 'Sidhauli', 38), (5156, 'Sidhpura', 38), (5157, 'Sikandarabad', 38), (5158, 'Sikandarpur', 38), (5159, 'Sikandra', 38), (5160, 'Sikandra Rao', 38), (5161, 'Singahi Bhiraura', 38), (5162, 'Sirathu', 38), (5163, 'Sirsa', 38), (5164, 'Sirsaganj', 38), (5165, 'Sirsi', 38), (5166, 'Sisauli', 38), (5167, 'Siswa Bazar', 38), (5168, 'Sitapur', 38), (5169, 'Siyana', 38), (5170, 'Som', 38), (5171, 'Sonbhadra', 38), (5172, 'Soron', 38), (5173, 'Suar', 38), (
        5174,
        'Sukhmalpur Nizamabad',
        38
    ), (5175, 'Sultanpur', 38), (5176, 'Sumerpur', 38), (5177, 'Suriyawan', 38), (5178, 'Swamibagh', 38), (5179, 'Tajpur', 38), (5180, 'Talbahat', 38), (5181, 'Talgram', 38), (5182, 'Tambaur', 38), (5183, 'Tanda', 38), (5184, 'Tatarpur Lallu', 38), (5185, 'Tetribazar', 38), (5186, 'Thakurdwara', 38), (5187, 'Thana Bhawan', 38), (
        5188,
        'Thiriya Nizamat Khan',
        38
    ), (5189, 'Tikaitnagar', 38), (5190, 'Tikri', 38), (5191, 'Tilhar', 38), (5192, 'Tindwari', 38), (5193, 'Tirwaganj', 38), (5194, 'Titron', 38), (5195, 'Tori Fatehpur', 38), (5196, 'Tulsipur', 38), (5197, 'Tundla', 38), (5198, 'Tundla Kham', 38), (
        5199,
        'Tundla Railway Colony',
        38
    ), (5200, 'Ugu', 38), (5201, 'Ujhani', 38), (5202, 'Ujhari', 38), (5203, 'Umri', 38), (5204, 'Umri Kalan', 38), (5205, 'Un', 38), (5206, 'Unchahar', 38), (5207, 'Unnao', 38), (5208, 'Usaihat', 38), (5209, 'Usawan', 38), (5210, 'Utraula', 38), (5211, 'Varanasi', 38), (
        5212,
        'Varanasi Cantonment',
        38
    ), (5213, 'Vijaigarh', 38), (5214, 'Vrindavan', 38), (5215, 'Wazirganj', 38), (5216, 'Zafarabad', 38), (5217, 'Zaidpur', 38), (5218, 'Zamania', 38), (5219, 'Almora', 39), (5220, 'Almora Cantonment', 39), (5221, 'Badrinathpuri', 39), (5222, 'Bageshwar', 39), (5223, 'Bah Bazar', 39), (5224, 'Banbasa', 39), (5225, 'Bandia', 39), (5226, 'Barkot', 39), (5227, 'Bazpur', 39), (5228, 'Bhim Tal', 39), (5229, 'Bhowali', 39), (5230, 'Chakrata', 39), (5231, 'Chamba', 39), (
        5232,
        'Chamoli and Gopeshwar',
        39
    ), (5233, 'Champawat', 39), (5234, 'Clement Town', 39), (
        5235,
        'Dehra Dun Cantonment',
        39
    ), (5236, 'Dehradun', 39), (5237, 'Dehrakhas', 39), (5238, 'Devaprayag', 39), (5239, 'Dhaluwala', 39), (5240, 'Dhandera', 39), (5241, 'Dharchula', 39), (5242, 'Dharchula Dehat', 39), (5243, 'Didihat', 39), (5244, 'Dineshpur', 39), (5245, 'Doiwala', 39), (5246, 'Dugadda', 39), (5247, 'Dwarahat', 39), (5248, 'Gadarpur', 39), (5249, 'Gangotri', 39), (5250, 'Gauchar', 39), (5251, 'Haldwani', 39), (5252, 'Haridwar', 39), (5253, 'Herbertpur', 39), (5254, 'Jaspur', 39), (5255, 'Jhabrera', 39), (5256, 'Joshimath', 39), (5257, 'Kachnal Gosain', 39), (5258, 'Kaladungi', 39), (5259, 'Kalagarh', 39), (5260, 'Karnaprayang', 39), (5261, 'Kashipur', 39), (5262, 'Kashirampur', 39), (5263, 'Kausani', 39), (5264, 'Kedarnath', 39), (5265, 'Kelakhera', 39), (5266, 'Khatima', 39), (5267, 'Kichha', 39), (5268, 'Kirtinagar', 39), (5269, 'Kotdwara', 39), (5270, 'Laksar', 39), (5271, 'Lalkuan', 39), (5272, 'Landaura', 39), (
        5273,
        'Landhaura Cantonment',
        39
    ), (5274, 'Lensdaun', 39), (5275, 'Logahat', 39), (
        5276,
        'Mahua Dabra Haripura',
        39
    ), (5277, 'Mahua Kheraganj', 39), (5278, 'Manglaur', 39), (5279, 'Masuri', 39), (
        5280,
        'Mohanpur Mohammadpur',
        39
    ), (5281, 'Muni Ki Reti', 39), (5282, 'Nagla', 39), (5283, 'Nainital', 39), (
        5284,
        'Nainital Cantonment',
        39
    ), (5285, 'Nandaprayang', 39), (5286, 'Narendranagar', 39), (5287, 'Pauri', 39), (5288, 'Pithoragarh', 39), (5289, 'Pratitnagar', 39), (5290, 'Raipur', 39), (5291, 'Raiwala', 39), (5292, 'Ramnagar', 39), (5293, 'Ranikhet', 39), (5294, 'Ranipur', 39), (5295, 'Rishikesh', 39), (
        5296,
        'Rishikesh Cantonment',
        39
    ), (5297, 'Roorkee', 39), (5298, 'Rudraprayag', 39), (5299, 'Rudrapur', 39), (5300, 'Rurki', 39), (5301, 'Rurki Cantonment', 39), (5302, 'Shaktigarh', 39), (5303, 'Sitarganj', 39), (5304, 'Srinagar', 39), (5305, 'Sultanpur', 39), (5306, 'Tanakpur', 39), (5307, 'Tehri', 39), (5308, 'Udham Singh Nagar', 39), (5309, 'Uttarkashi', 39), (5310, 'Vikasnagar', 39), (5311, 'Virbhadra', 39), (5312, '24 Parganas (n)', 41), (5313, '24 Parganas (s)', 41), (5314, 'Adra', 41), (5315, 'Ahmadpur', 41), (5316, 'Aiho', 41), (5317, 'Aistala', 41), (5318, 'Alipur Duar', 41), (
        5319,
        'Alipur Duar Railway Junction',
        41
    ), (5320, 'Alpur', 41), (5321, 'Amalhara', 41), (5322, 'Amkula', 41), (5323, 'Amlagora', 41), (5324, 'Amodghata', 41), (5325, 'Amtala', 41), (5326, 'Andul', 41), (5327, 'Anksa', 41), (5328, 'Ankurhati', 41), (5329, 'Anup Nagar', 41), (5330, 'Arambagh', 41), (5331, 'Argari', 41), (5332, 'Arsha', 41), (5333, 'Asansol', 41), (
        5334,
        'Ashoknagar Kalyangarh',
        41
    ), (5335, 'Aurangabad', 41), (5336, 'Bablari Dewanganj', 41), (5337, 'Badhagachhi', 41), (5338, 'Baduria', 41), (5339, 'Baghdogra', 41), (5340, 'Bagnan', 41), (5341, 'Bagra', 41), (5342, 'Bagula', 41), (5343, 'Baharampur', 41), (5344, 'Bahirgram', 41), (5345, 'Bahula', 41), (5346, 'Baidyabati', 41), (5347, 'Bairatisal', 41), (5348, 'Baj Baj', 41), (5349, 'Bakreswar', 41), (5350, 'Balaram Pota', 41), (5351, 'Balarampur', 41), (5352, 'Bali Chak', 41), (5353, 'Ballavpur', 41), (5354, 'Bally', 41), (5355, 'Balurghat', 41), (5356, 'Bamunari', 41), (
        5357,
        'Banarhat Tea Garden',
        41
    ), (5358, 'Bandel', 41), (5359, 'Bangaon', 41), (5360, 'Bankra', 41), (5361, 'Bankura', 41), (5362, 'Bansbaria', 41), (5363, 'Banshra', 41), (5364, 'Banupur', 41), (5365, 'Bara Bamonia', 41), (5366, 'Barakpur', 41), (
        5367,
        'Barakpur Cantonment',
        41
    ), (5368, 'Baranagar', 41), (5369, 'Barasat', 41), (5370, 'Barddhaman', 41), (5371, 'Barijhati', 41), (5372, 'Barjora', 41), (5373, 'Barrackpore', 41), (5374, 'Baruihuda', 41), (5375, 'Baruipur', 41), (5376, 'Barunda', 41), (5377, 'Basirhat', 41), (5378, 'Baska', 41), (5379, 'Begampur', 41), (5380, 'Beldanga', 41), (5381, 'Beldubi', 41), (5382, 'Belebathan', 41), (5383, 'Beliator', 41), (5384, 'Bhadreswar', 41), (5385, 'Bhandardaha', 41), (
        5386,
        'Bhangar Raghunathpur',
        41
    ), (
        5387,
        'Bhangri Pratham Khanda',
        41
    ), (5388, 'Bhanowara', 41), (5389, 'Bhatpara', 41), (5390, 'Bholar Dabri', 41), (5391, 'Bidhannagar', 41), (5392, 'Bidyadharpur', 41), (5393, 'Biki Hakola', 41), (5394, 'Bilandapur', 41), (5395, 'Bilpahari', 41), (5396, 'Bipra Noapara', 41), (5397, 'Birlapur', 41), (5398, 'Birnagar', 41), (5399, 'Bisarpara', 41), (5400, 'Bishnupur', 41), (5401, 'Bolpur', 41), (5402, 'Bongaon', 41), (5403, 'Bowali', 41), (5404, 'Burdwan', 41), (5405, 'Canning', 41), (5406, 'Cart Road', 41), (5407, 'Chachanda', 41), (5408, 'Chak Bankola', 41), (5409, 'Chak Enayetnagar', 41), (5410, 'Chak Kashipur', 41), (5411, 'Chakalampur', 41), (5412, 'Chakbansberia', 41), (5413, 'Chakdaha', 41), (5414, 'Chakpara', 41), (5415, 'Champahati', 41), (5416, 'Champdani', 41), (5417, 'Chamrail', 41), (5418, 'Chandannagar', 41), (5419, 'Chandpur', 41), (5420, 'Chandrakona', 41), (5421, 'Chapari', 41), (5422, 'Chapui', 41), (5423, 'Char Brahmanagar', 41), (5424, 'Char Maijdia', 41), (5425, 'Charka', 41), (5426, 'Chata Kalikapur', 41), (5427, 'Chauhati', 41), (5428, 'Checha Khata', 41), (5429, 'Chelad', 41), (5430, 'Chhora', 41), (5431, 'Chikrand', 41), (5432, 'Chittaranjan', 41), (5433, 'Contai', 41), (5434, 'Cooch Behar', 41), (5435, 'Dainhat', 41), (5436, 'Dakshin Baguan', 41), (5437, 'Dakshin Jhapardaha', 41), (
        5438,
        'Dakshin Rajyadharpur',
        41
    ), (5439, 'Dakshin Raypur', 41), (5440, 'Dalkola', 41), (5441, 'Dalurband', 41), (5442, 'Darap Pur', 41), (5443, 'Darjiling', 41), (5444, 'Daulatpur', 41), (5445, 'Debipur', 41), (5446, 'Defahat', 41), (5447, 'Deora', 41), (5448, 'Deulia', 41), (5449, 'Dhakuria', 41), (5450, 'Dhandadihi', 41), (5451, 'Dhanyakuria', 41), (5452, 'Dharmapur', 41), (5453, 'Dhatri Gram', 41), (5454, 'Dhuilya', 41), (5455, 'Dhulagari', 41), (5456, 'Dhulian', 41), (5457, 'Dhupgari', 41), (5458, 'Dhusaripara', 41), (5459, 'Diamond Harbour', 41), (5460, 'Digha', 41), (5461, 'Dignala', 41), (5462, 'Dinhata', 41), (5463, 'Dubrajpur', 41), (5464, 'Dumjor', 41), (5465, 'Durgapur', 41), (5466, 'Durllabhganj', 41), (5467, 'Egra', 41), (5468, 'Eksara', 41), (5469, 'Falakata', 41), (5470, 'Farakka', 41), (5471, 'Fatellapur', 41), (5472, 'Fort Gloster', 41), (5473, 'Gabberia', 41), (5474, 'Gadigachha', 41), (5475, 'Gairkata', 41), (5476, 'Gangarampur', 41), (5477, 'Garalgachha', 41), (5478, 'Garbeta Amlagora', 41), (5479, 'Garhbeta', 41), (5480, 'Garshyamnagar', 41), (5481, 'Garui', 41), (5482, 'Garulia', 41), (5483, 'Gayespur', 41), (5484, 'Ghatal', 41), (5485, 'Ghorsala', 41), (5486, 'Goaljan', 41), (5487, 'Goasafat', 41), (5488, 'Gobardanga', 41), (5489, 'Gobindapur', 41), (5490, 'Gopalpur', 41), (5491, 'Gopinathpur', 41), (5492, 'Gora Bazar', 41), (5493, 'Guma', 41), (5494, 'Gurdaha', 41), (5495, 'Guriahati', 41), (5496, 'Guskhara', 41), (5497, 'Habra', 41), (5498, 'Haldia', 41), (5499, 'Haldibari', 41), (5500, 'Halisahar', 41), (5501, 'Haora', 41), (5502, 'Harharia Chak', 41), (5503, 'Harindanga', 41), (5504, 'Haringhata', 41), (5505, 'Haripur', 41), (5506, 'Harishpur', 41), (5507, 'Hatgachha', 41), (5508, 'Hatsimla', 41), (5509, 'Hijuli', 41), (
        5510,
        'Hindustan Cables Town',
        41
    ), (5511, 'Hooghly', 41), (5512, 'Howrah', 41), (5513, 'Hugli-Chunchura', 41), (5514, 'Humaipur', 41), (
        5515,
        'Ichha Pur Defence Estate',
        41
    ), (5516, 'Ingraj Bazar', 41), (5517, 'Islampur', 41), (5518, 'Jafarpur', 41), (5519, 'Jagadanandapur', 41), (5520, 'Jagdishpur', 41), (5521, 'Jagtaj', 41), (5522, 'Jala Kendua', 41), (5523, 'Jaldhaka', 41), (5524, 'Jalkhura', 41), (5525, 'Jalpaiguri', 41), (5526, 'Jamuria', 41), (5527, 'Jangipur', 41), (5528, 'Jaygaon', 41), (5529, 'Jaynagar-Majilpur', 41), (5530, 'Jemari', 41), (5531, 'Jemari Township', 41), (5532, 'Jetia', 41), (5533, 'Jhalida', 41), (5534, 'Jhargram', 41), (5535, 'Jhorhat', 41), (5536, 'Jiaganj-Azimganj', 41), (5537, 'Joka', 41), (5538, 'Jot Kamal', 41), (5539, 'Kachu Pukur', 41), (5540, 'Kajora', 41), (5541, 'Kakdihi', 41), (5542, 'Kakdwip', 41), (5543, 'Kalaikunda', 41), (5544, 'Kalara', 41), (5545, 'Kalimpong', 41), (5546, 'Kaliyaganj', 41), (5547, 'Kalna', 41), (5548, 'Kalyani', 41), (5549, 'Kamarhati', 41), (5550, 'Kanaipur', 41), (5551, 'Kanchrapara', 41), (5552, 'Kandi', 41), (5553, 'Kanki', 41), (5554, 'Kankuria', 41), (5555, 'Kantlia', 41), (5556, 'Kanyanagar', 41), (5557, 'Karimpur', 41), (5558, 'Karsiyang', 41), (5559, 'Kasba', 41), (5560, 'Kasimbazar', 41), (5561, 'Katwa', 41), (5562, 'Kaugachhi', 41), (5563, 'Kenda', 41), (5564, 'Kendra Khottamdi', 41), (5565, 'Kendua', 41), (5566, 'Kesabpur', 41), (5567, 'Khagrabari', 41), (5568, 'Khalia', 41), (5569, 'Khalor', 41), (5570, 'Khandra', 41), (5571, 'Khantora', 41), (5572, 'Kharagpur', 41), (
        5573,
        'Kharagpur Railway Settlement',
        41
    ), (5574, 'Kharar', 41), (5575, 'Khardaha', 41), (
        5576,
        'Khari Mala Khagrabari',
        41
    ), (5577, 'Kharsarai', 41), (5578, 'Khatra', 41), (5579, 'Khodarampur', 41), (5580, 'Kodalia', 41), (5581, 'Kolaghat', 41), (
        5582,
        'Kolaghat Thermal Power Project',
        41
    ), (5583, 'Kolkata', 41), (5584, 'Konardihi', 41), (5585, 'Konnogar', 41), (5586, 'Krishnanagar', 41), (5587, 'Krishnapur', 41), (5588, 'Kshidirpur', 41), (5589, 'Kshirpai', 41), (5590, 'Kulihanda', 41), (5591, 'Kulti', 41), (5592, 'Kunustara', 41), (5593, 'Kuperskem', 41), (5594, 'Madanpur', 41), (5595, 'Madhusudanpur', 41), (5596, 'Madhyamgram', 41), (5597, 'Maheshtala', 41), (5598, 'Mahiari', 41), (5599, 'Mahikpur', 41), (5600, 'Mahira', 41), (5601, 'Mahishadal', 41), (5602, 'Mainaguri', 41), (5603, 'Makardaha', 41), (5604, 'Mal', 41), (5605, 'Malda', 41), (5606, 'Mandarbani', 41), (5607, 'Mansinhapur', 41), (5608, 'Masila', 41), (5609, 'Maslandapur', 41), (5610, 'Mathabhanga', 41), (5611, 'Mekliganj', 41), (5612, 'Memari', 41), (5613, 'Midnapur', 41), (5614, 'Mirik', 41), (5615, 'Monoharpur', 41), (5616, 'Mrigala', 41), (5617, 'Muragachha', 41), (5618, 'Murgathaul', 41), (5619, 'Murshidabad', 41), (
        5620,
        'Nabadhai Dutta Pukur',
        41
    ), (5621, 'Nabagram', 41), (5622, 'Nabgram', 41), (
        5623,
        'Nachhratpur Katabari',
        41
    ), (5624, 'Nadia', 41), (5625, 'Naihati', 41), (5626, 'Nalhati', 41), (5627, 'Nasra', 41), (5628, 'Natibpur', 41), (5629, 'Naupala', 41), (5630, 'Navadwip', 41), (
        5631,
        'Nebadhai Duttapukur',
        41
    ), (5632, 'New Barrackpore', 41), (5633, 'Ni Barakpur', 41), (5634, 'Nibra', 41), (5635, 'Noapara', 41), (5636, 'Nokpul', 41), (5637, 'North Barakpur', 41), (5638, 'Odlabari', 41), (5639, 'Old Maldah', 41), (5640, 'Ondal', 41), (5641, 'Pairagachha', 41), (5642, 'Palashban', 41), (5643, 'Panchla', 41), (5644, 'Panchpara', 41), (5645, 'Pandua', 41), (5646, 'Pangachhiya', 41), (5647, 'Paniara', 41), (5648, 'Panihati', 41), (5649, 'Panuhat', 41), (5650, 'Par Beliya', 41), (5651, 'Parashkol', 41), (5652, 'Parasia', 41), (5653, 'Parbbatipur', 41), (5654, 'Parui', 41), (5655, 'Paschim Jitpur', 41), (5656, 'Paschim Punro Para', 41), (5657, 'Patrasaer', 41), (
        5658,
        'Pattabong Tea Garden',
        41
    ), (5659, 'Patuli', 41), (5660, 'Patulia', 41), (5661, 'Phulia', 41), (5662, 'Podara', 41), (5663, 'Port Blair', 41), (5664, 'Prayagpur', 41), (5665, 'Pujali', 41), (5666, 'Purba Medinipur', 41), (5667, 'Purba Tajpur', 41), (5668, 'Purulia', 41), (5669, 'Raghudebbati', 41), (5670, 'Raghudebpur', 41), (5671, 'Raghunathchak', 41), (5672, 'Raghunathpur', 41), (
        5673,
        'Raghunathpur-Dankuni',
        41
    ), (5674, 'Raghunathpur-Magra', 41), (5675, 'Raigachhi', 41), (5676, 'Raiganj', 41), (5677, 'Raipur', 41), (5678, 'Rajarhat Gopalpur', 41), (5679, 'Rajpur', 41), (5680, 'Ramchandrapur', 41), (5681, 'Ramjibanpur', 41), (5682, 'Ramnagar', 41), (5683, 'Rampur Hat', 41), (5684, 'Ranaghat', 41), (5685, 'Raniganj', 41), (5686, 'Ratibati', 41), (5687, 'Raypur', 41), (5688, 'Rishra', 41), (5689, 'Rishra Cantonment', 41), (5690, 'Ruiya', 41), (5691, 'Sahajadpur', 41), (5692, 'Sahapur', 41), (5693, 'Sainthia', 41), (5694, 'Salap', 41), (5695, 'Sankarpur', 41), (5696, 'Sankrail', 41), (5697, 'Santoshpur', 41), (5698, 'Saontaidih', 41), (5699, 'Sarenga', 41), (5700, 'Sarpi', 41), (5701, 'Satigachha', 41), (5702, 'Serpur', 41), (5703, 'Shankhanagar', 41), (5704, 'Shantipur', 41), (5705, 'Shrirampur', 41), (5706, 'Siduli', 41), (5707, 'Siliguri', 41), (5708, 'Simla', 41), (5709, 'Singur', 41), (5710, 'Sirsha', 41), (5711, 'Siuri', 41), (5712, 'Sobhaganj', 41), (5713, 'Sodpur', 41), (5714, 'Sonamukhi', 41), (5715, 'Sonatikiri', 41), (5716, 'Srikantabati', 41), (5717, 'Srirampur', 41), (5718, 'Sukdal', 41), (5719, 'Taherpur', 41), (5720, 'Taki', 41), (5721, 'Talbandha', 41), (5722, 'Tamluk', 41), (5723, 'Tarakeswar', 41), (5724, 'Tentulberia', 41), (5725, 'Tentulkuli', 41), (
        5726,
        'Thermal Power Project',
        41
    ), (5727, 'Tinsukia', 41), (5728, 'Titagarh', 41), (5729, 'Tufanganj', 41), (5730, 'Ukhra', 41), (5731, 'Ula', 41), (5732, 'Ulubaria', 41), (5733, 'Uttar Durgapur', 41), (5734, 'Uttar Goara', 41), (5735, 'Uttar Kalas', 41), (5736, 'Uttar Kamakhyaguri', 41), (5737, 'Uttar Latabari', 41), (5738, 'Uttar Mahammadpur', 41), (5739, 'Uttar Pirpur', 41), (5740, 'Uttar Raypur', 41), (5741, 'Uttarpara-Kotrung', 41);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE
    `countries` (
        `id` int(11) NOT NULL,
        `sortname` varchar(3) NOT NULL,
        `name` varchar(150) NOT NULL,
        `phonecode` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO
    `countries` (
        `id`,
        `sortname`,
        `name`,
        `phonecode`
    )
VALUES (1, 'IN', 'India', 91);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE
    `customers` (
        `id` int(11) NOT NULL,
        `ssn_id` int(11) DEFAULT NULL,
        `name` varchar(255) DEFAULT NULL,
        `age` int(11) DEFAULT NULL,
        `address` varchar(255) DEFAULT NULL,
        `state` int(11) DEFAULT NULL,
        `city` int(11) DEFAULT NULL,
        `created_at` timestamp NOT NULL,
        `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) ENGINE = MyISAM DEFAULT CHARSET = latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_status`
--

CREATE TABLE
    `customer_status` (
        `id` int(11) NOT NULL,
        `customer_id` int(11) DEFAULT NULL,
        `ssn_id` int(11) DEFAULT NULL,
        `status` tinyint(1) DEFAULT NULL,
        `message` varchar(255) DEFAULT NULL,
        `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) ENGINE = MyISAM DEFAULT CHARSET = latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE
    `states` (
        `id` int(11) NOT NULL,
        `name` varchar(30) NOT NULL,
        `country_id` int(11) NOT NULL DEFAULT '1'
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `states`
--

INSERT INTO
    `states` (`id`, `name`, `country_id`)
VALUES (
        1,
        'Andaman and Nicobar Islands',
        1
    ), (2, 'Andhra Pradesh', 1), (3, 'Arunachal Pradesh', 1), (4, 'Assam', 1), (5, 'Bihar', 1), (6, 'Chandigarh', 1), (7, 'Chhattisgarh', 1), (8, 'Dadra and Nagar Haveli', 1), (9, 'Daman and Diu', 1), (10, 'Delhi', 1), (11, 'Goa', 1), (12, 'Gujarat', 1), (13, 'Haryana', 1), (14, 'Himachal Pradesh', 1), (15, 'Jammu and Kashmir', 1), (16, 'Jharkhand', 1), (17, 'Karnataka', 1), (18, 'Kenmore', 1), (19, 'Kerala', 1), (20, 'Lakshadweep', 1), (21, 'Madhya Pradesh', 1), (22, 'Maharashtra', 1), (23, 'Manipur', 1), (24, 'Meghalaya', 1), (25, 'Mizoram', 1), (26, 'Nagaland', 1), (27, 'Narora', 1), (28, 'Natwar', 1), (29, 'Odisha', 1), (30, 'Paschim Medinipur', 1), (31, 'Pondicherry', 1), (32, 'Punjab', 1), (33, 'Rajasthan', 1), (34, 'Sikkim', 1), (35, 'Tamil Nadu', 1), (36, 'Telangana', 1), (37, 'Tripura', 1), (38, 'Uttar Pradesh', 1), (39, 'Uttarakhand', 1), (40, 'Vaishali', 1), (41, 'West Bengal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions_control`
--

CREATE TABLE
    `transactions_control` (
        `id` int(11) NOT NULL,
        `transaction_id` varchar(255) NOT NULL,
        `account_id` int(11) NOT NULL,
        `description` varchar(100) DEFAULT NULL,
        `amount` int(11) DEFAULT NULL,
        `created_at` timestamp NOT NULL
    ) ENGINE = MyISAM DEFAULT CHARSET = latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_registrations`
--

CREATE TABLE
    `user_registrations` (
        `id` int(11) NOT NULL,
        `username` varchar(20) DEFAULT NULL,
        `password` varchar(255) DEFAULT NULL,
        `status` tinyint(1) DEFAULT NULL,
        `created_at` timestamp NOT NULL,
        `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) ENGINE = MyISAM DEFAULT CHARSET = latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
ADD PRIMARY KEY (`id`),
ADD
    KEY `customer_id` (`customer_id`);

--
-- Indexes for table `account_status`
--
ALTER TABLE `account_status`
ADD PRIMARY KEY (`id`),
ADD
    KEY `account_id` (`account_id`),
ADD
    KEY `customer_id` (`customer_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries` ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_status`
--
ALTER TABLE `customer_status`
ADD PRIMARY KEY (`id`),
ADD
    KEY `customer_id` (`customer_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states` ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `transactions_control`
--
ALTER TABLE `transactions_control` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registrations`
--
ALTER TABLE `user_registrations` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE
    `accounts` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 900000007;
--
-- AUTO_INCREMENT for table `account_status`
--
ALTER TABLE
    `account_status` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 12;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE
    `cities` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5742;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE
    `countries` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE
    `customers` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 900000005;
--
-- AUTO_INCREMENT for table `customer_status`
--
ALTER TABLE
    `customer_status` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 9;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE
    `states` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 42;
--
-- AUTO_INCREMENT for table `transactions_control`
--
ALTER TABLE
    `transactions_control` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 16;
--
-- AUTO_INCREMENT for table `user_registrations`
--
ALTER TABLE
    `user_registrations` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 900000005;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;