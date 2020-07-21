-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Tem 2020, 14:30:43
-- Sunucu sürümü: 10.4.8-MariaDB
-- PHP Sürümü: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS Project;

CREATE DATABASE  IF NOT EXISTS Project;

use Project;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `project`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `journal`
--

CREATE TABLE `journal` (
  `name` char(200) DEFAULT NULL,
  `jid` int(11) NOT NULL,
  `reviewer` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `journal`
--

INSERT INTO `journal` (`name`, `jid`, `reviewer`) VALUES
('Chemistry', 31, NULL),
('Electrical Engineering & Computer Sciences', 32, NULL),
('Mathematics', 33, NULL),
('Agriculture and Forestry', 34, NULL),
('Botany', 35, NULL),
('Physics', 36, NULL),
('Earth Sciences', 37, NULL),
('Engineering and Environmental Sciences', 38, NULL),
('Medical Sciences', 39, NULL),
('Biology', 40, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `publications`
--

CREATE TABLE `publications` (
  `title` char(200) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `subject` char(200) DEFAULT NULL,
  `date` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `publications`
--

INSERT INTO `publications` (`title`, `pid`, `subject`, `date`) VALUES
('Sonochemical degradation of Basic Red 29 in aqueous media', 21, NULL, '31.07.2016'),
('Cavitation detection in centrifugal pumps using pressure time-domain features', 22, NULL, '30.05.2017'),
('Delta-shocks and vacuums as limits of flux approximation for the pressureless type system', 23, NULL, '17.08.2018'),
('Identification of olive cultivars using image processing techniques', 24, NULL, '19.05.2016'),
('On-line self-learning PID controller design of SSSC using self-recurrent wavelet neural networks', 25, NULL, '03.06.2013'),
('Classification of Camellia species from 3 sections using leaf anatomical data with back-propagation neural networks and support vector machines', 26, NULL, '30.10.2013'),
('Epilepsy diagnosis using artificial neural network learned by PSO', 27, NULL, '23.02.2015'),
('Exponential stability of periodic solutions of recurrent neural networks with functional dependence on piecewise constant argument', 28, NULL, '07.05.2017'),
('An approach based on neural computation to simulate transition metals using tight binding measurements', 29, NULL, '15.03.2016'),
('A method based on the Van der Hoven spectrum for performance evaluation in prediction of wind speed', 30, NULL, '13.06.2013'),
('A study of friction factor formulation in pipes using artificial intelligence techniques and explicit equations', 31, NULL, '17.08.2010'),
('Artificial Neural Network Analysis for Prediction of Headache Prognosis in Elderly Patients', 32, NULL, '24.09.2007'),
('A low-voltage and low-power sinh-domain universal biquadratic  lter forlow-frequency applications', 33, NULL, '30.10.2013'),
('Aftermath of the Human Genome Project: an era of struggle and discovery', 34, NULL, '02.01.2017'),
('The ciliopathy gene product Cep290 is required for primary cilium formation and microtubule network organization', 35, NULL, '04.07.2018'),
('The effects of fiber length and fiber loading on the mechanicalproperties of wood-plastic (polypropylene) composites', 36, NULL, '11.03.2009'),
(' Investigation of the effect of β-lactam antibiotics and serum on growth and gene expression in Escherichiacoli strain JJ1886', 37, NULL, '26.07.2018'),
('Data analysis through social media according to the classified crime', 38, NULL, '01.11.2018'),
('Turkish lexicon expansion by using finite state automata', 39, NULL, '10.12.2018'),
('Exploring feature sets for Turkish word sense disambiguation', 40, NULL, '07.08.2015'),
('Investigation of the effects of magnetic field exposure on febrile seizure latency, seizure duration, and electroencephalographic recordings in a rat febrile convulsion model', 41, NULL, '15.01.2014'),
('The Effects of Shock Waves on the Rat Fetus', 42, NULL, '13.05.1997'),
('Combinatorial Optimization in Forest Ecosystem ManagementModeling', 43, NULL, '03.08.2000'),
('Prooxidant effects of melatonin: a brief review', 44, NULL, '20.05.2015'),
('Recent advances in organ-on-a-chip technologies and future challenges: a review', 45, NULL, '17.05.2017'),
('Adsorption of copper ions and alizarin red S from aqueous solutions onto apolymeric nanocomposite in single and binary systems', 46, NULL, '23.06.2017'),
('Development of a method for the determination of cadmium levels in seawater by ame atomic absorption spectrometry using an online cloud-point extractionsystem', 47, NULL, '10.10.2016'),
('A ring crossover genetic algorithm for the unit commitment problem', 48, NULL, '21.06.2015'),
('Fire y algorithm with multiple workers for the power system unit commitmentproblem', 49, NULL, '13.09.2015'),
('Channel estimation using an adaptive neuro fuzzy inference system in theOFDM-IDMA system', 50, NULL, '20.12.2015'),
('Applying metaheuristic optimization methods to design novel adaptive PI-type fuzzy logic controllers for load-frequency control in a large-scale power grid', 51, NULL, '03.10.2015'),
('Lorenz-like system design using cellular neural networks', 52, NULL, '15.05.2018'),
('Low complexity link level performance prediction for SIMO systems', 53, NULL, '15.09.2017'),
('On the stochastic decomposition property of single server retrial queuing systems', 54, NULL, '03.10.2016'),
('Localization of a nonlocal interaction', 55, NULL, '24.07.2017'),
('Feather-like hornblende aggregates in the phyllites from the southern Sanandaj–Sirjan zone, Iran; their origin and mode of formation', 56, NULL, '25.10.2017'),
('Significance of using a nonlinear analysis technique, the Lyapunov exponent, on the understanding of the dynamics of the cardiorespiratory system in rats', 57, NULL, '27.01.2015'),
('Quality of life and fall risk in frail hospitalized elderly patients', 58, NULL, '03.05.2017');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `scholars`
--

CREATE TABLE `scholars` (
  `name` char(200) DEFAULT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `scholars`
--

INSERT INTO `scholars` (`name`, `sid`) VALUES
('ZINEB BOUTAMINE', 11),
('POUYA SAMANIPOUR', 14),
('JINJING LIU', 17),
('ABDULLAH BEYAZ', 19),
('Soheil GANJEFAR', 20),
('Wu JIANG', 21),
('Nesibe YALC¸ IN', 22),
('Marat AKHMET', 23),
('Adel BELAYADI', 24),
('Elif KAYA', 25),
('Farzin SALMASI', 26),
('Bahar TAŞDELEN', 27),
('Farooq KHANDAY', 28),
('Zainab HAMDOUN', 29),
('Elif Nur FIRAT-KARALAR', 30),
('Farshid BASIJI', 31),
('Elif BOZÇAL DAĞDEVİREN', 32),
('Serkan SAVAŞ', 33),
('Burak ÖZTÜRK', 34),
('Bahar ILGEN', 35),
('Tuncer DEMİR', 36),
('Orhan YALÇIN', 37),
('Emin Zeki BAfiKENT', 38),
('Malwina Sylwia MUNIK', 39),
('Hüseyin AVCI', 40),
('Omnia ALI', 41),
('Uelber Silva VIEIRA', 42),
('Syed Basit Ali BUKHARI', 43),
('Banumalar KOODALSAMY', 44),
('Necmi TAŞPINAR', 45),
('ThiMaiPhuong DAO', 46),
('Enis GÜNAY', 47),
('Alam ZAIB', 48),
('Nawel ARRAR', 49),
('Ujjwal LAHA', 50),
('Hossein FATEHI', 51),
('Mustafa ÖZBEK', 52),
('Zeynel Abidin ÖZTÜRK', 53),
('RAMAZAN ÖZTÜRK', 54),
('Mojtaba ALIZADEH', 55),
('Hongfei LU', 56),
('Nesibe YALC¸ IN', 57),
('Leila AIT-GOUGAM', 58),
('Burak BARUTÇU', 59),
('Mohammad Ali GHORBANI', 60),
('Sema HELVACI', 61),
('Nisar SHAH', 62),
('Hashimul EHSAN', 63),
('Vahidreza SAFDARI', 64),
('Burcu CAN', 65),
('Eşref ADALI', 66),
('İdris BİLGİÇ', 67),
('Cem EKMEKÇİOĞLU', 68),
('Sahar MOHAMED', 69),
('Mardson Vasconcelos MACIEL', 70),
('Aftab AHMAD', 71),
('Manikandan BAIRAVAN VEERAYAN', 72),
('Şakir ŞIMŞIR', 73),
('YaoNan WANG', 74),
('Asif KHAN', 75),
('Natalia DJELLAB', 76),
('Sanjib Kr DAS', 77),
('Hesamaddin MOEINZADEH', 78),
('Necip KUTLU', 79),
('İbrahim Halil TÜRKBEYLER', 80),
('Fawzia MEKIDECHE-CHAFA', 81),
('Ahmet Cüneyd TANTUĞ', 82),
('Thais Souza NERI', 83),
('Shahid KHATTAK', 84);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `school`
--

CREATE TABLE `school` (
  `scid` int(11) NOT NULL,
  `name` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `school`
--

INSERT INTO `school` (`scid`, `name`) VALUES
(41, 'Laboratory of Environmental Engineering, Department of Process Engineering, Faculty of Engineering,'),
(42, 'Badji Mokhtar-Annaba University, Annaba, Algeria'),
(43, 'Department of Mathematics, Yunnan University, Kunming, P.R. China'),
(44, 'Department of Agricultural Machinery and Technologies Engineering, Faculty of Agriculture, Ankara University, Ankara, Turkey'),
(45, 'Department of Electrical Engineering, Bu-Ali Sina University, Hamedan, Iran'),
(46, '1 College of Life Science, Zhejiang Sci-Tech University, Hangzhou, P.R. China'),
(47, '1Department of Computer Engineering, Bilecik S¸eyh Edebali University, Bilecik, Turkey'),
(48, 'Department of Mathematics, Middle East Technical University, Ankara, Turkey'),
(49, 'Department of Theoretical Physics, Faculty of Physics, University of Sciences and Technology Houari Boumediene, Algiers, Algeria'),
(50, 'Renewable Energy Division, Energy Institute, İstanbul Technical University, 34469 Maslak, İstanbul, Turkey'),
(51, 'Department of Water Engineering, Faculty of Agriculture, Tabriz University, Tabriz-IRAN'),
(52, 'Department of Biostatistics, Faculty of Medicine, Mersin University, Mersin - TURKEY'),
(53, 'Department of Electronics and Instrumentation Technology, University of Kashmir, Srinagar, India'),
(54, 'Department of Biology, University of Houston-Victoria, Victoria, TX, USA'),
(55, 'Department of Molecular Biology and Genetics, Faculty of Science, Koç University, İstanbul, Turkey'),
(56, 'Department of Agriculture and Natural Resources, Islamic Azad University, Karaj Branch, Karaj, IRAN'),
(57, 'Section of Basic and Industrial Microbiology, Department of Biology, Faculty of Science, İstanbul University, İstanbul, Turkey'),
(58, 'Yenikent Ahmet Çiçek Vocational and Technical Anatolian High School, Ankara, Turkey'),
(59, 'Department of Computer Engineering, Faculty of Engineering, Hacettepe University, Ankara, Turkey'),
(60, 'Computer and Informatics Faculty, Istanbul Technical University, Istanbul, Turkey'),
(61, 'Department of Physiology, Faculty of Medicine, Gaziantep University, Gaziantep, Turkey'),
(62, 'Department of Urology, Fırat University Schoolof Medicine, Elazığ-Turkey'),
(63, 'Karadeniz Teknik Üniversitesi, Orman Fakültesi, Orman Mühendisli¤i Bölümü, 61080 Trabzon - TÜRK‹YE'),
(64, 'Institute of Environmental Health, Centre for Public Health, Medical University of Vienna, Vienna, Austria'),
(65, 'Department of Metallurgical and Materials Engineering, Eskisehir Osmangazi University, Eskisehir, Turkey'),
(66, 'Department of Chemistry, Faculty of Science, Helwan University, Ain Helwan, Cairo, Egypt'),
(67, 'Laboratory of Analytical Chemistry, State University of Southwestern Bahia, Jequie, Bahia, Brazil'),
(68, 'Department of Electrical Engineering, University of Engineering and Technology, Taxila, Pakistan'),
(69, 'Department of Electrical and Electronics Engineering, Mepco Schlenk Engineering College, Sivakasi,TamilNadu, India'),
(70, 'Department of Electrical and Electronics Engineering, Faculty of Engineering, Erciyes University, Kayseri, Turkey'),
(71, 'College of Electrical and Information Engineering, Hunan University, Changsha, Hunan, P.R. China'),
(72, 'Department of Electrical Engineering, COMSATS Institute of Information Technology, Abbottabad, Pakistan'),
(73, 'Probability and Statistics Laboratory, Badji Mokhtar-Annaba University, Annaba, Algeria'),
(74, 'Department of Physics, National Institute of Technology, Jamshedpur, Jharkhand, India'),
(75, 'Department of Geology, Faculty of Sciences, Shahid Bahonar University of Kerman, Kerman, Iran'),
(76, 'Department of Physiology, Faculty of Medicine, Celal Bayar University, Manisa, Turkey'),
(77, 'Division of Geriatric Medicine, Department of Internal Medicine, Faculty of Medicine, Gaziantep University, Gaziantep, Turkey');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `title`
--

CREATE TABLE `title` (
  `title` char(200) DEFAULT NULL,
  `subject` char(200) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `title`
--

INSERT INTO `title` (`title`, `subject`, `pid`) VALUES
('Sonochemical degradation of Basic Red 29 in aqueous media', 'Chemistry', 21),
('Cavitation detection in centrifugal pumps using pressure time-domain features', 'Electrical Engineering & Computer Sciences', 22),
('Delta-shocks and vacuums as limits of flux approximation for the pressureless type system', 'Mathematics', 23),
('Identification of olive cultivars using image processing techniques', 'Agriculture and Forestry', 24),
('On-line self-learning PID controller design of SSSC using self-recurrent wavelet neural networks', 'Electrical Engineering & Computer Sciences', 25),
('Classification of Camellia species from 3 sections using leaf anatomical data with back-propagation neural networks and support vector machines', 'Botany', 26),
('Epilepsy diagnosis using artificial neural network learned by PSO', 'Electrical Engineering & Computer Sciences', 27),
('Exponential stability of periodic solutions of recurrent neural networks with functional dependence on piecewise constant argument', 'Mathematics', 28),
('An approach based on neural computation to simulate transition metals using tight binding measurements', 'Physics', 29),
('A method based on the Van der Hoven spectrum for performance evaluation in prediction of wind speed', 'Earth Sciences', 30),
('A study of friction factor formulation in pipes using artificial intelligence techniques and explicit equations', 'Engineering and Environmental Sciences', 31),
('Artificial Neural Network Analysis for Prediction of Headache Prognosis in Elderly Patients', 'Medical Sciences', 32),
('A low-voltage and low-power sinh-domain universal biquadratic  lter forlow-frequency applications', 'Electrical Engineering & Computer Sciences', 33),
('Aftermath of the Human Genome Project: an era of struggle and discovery', 'Biology', 34),
('The ciliopathy gene product Cep290 is required for primary cilium formation and microtubule network organization', 'Biology', 35),
('The effects of fiber length and fiber loading on the mechanicalproperties of wood-plastic (polypropylene) composites', 'Agriculture and Forestry', 36),
(' Investigation of the effect of β-lactam antibiotics and serum on growth and gene expression in Escherichiacoli strain JJ1886', 'Medical Sciences', 37),
('Data analysis through social media according to the classified crime', 'Electrical Engineering & Computer Sciences', 38),
('Turkish lexicon expansion by using finite state automata', 'Electrical Engineering & Computer Sciences', 39),
('Exploring feature sets for Turkish word sense disambiguation', 'Electrical Engineering & Computer Sciences', 40),
('Investigation of the effects of magnetic field exposure on febrile seizure latency, seizure duration, and electroencephalographic recordings in a rat febrile convulsion model', 'Medical Sciences', 41),
('The Effects of Shock Waves on the Rat Fetus', 'Medical Sciences', 42),
('Combinatorial Optimization in Forest Ecosystem ManagementModeling', 'Agriculture and Forestry', 43),
('Prooxidant effects of melatonin: a brief review', 'Biology', 44),
('Recent advances in organ-on-a-chip technologies and future challenges: a review', 'Chemistry', 45),
('Adsorption of copper ions and alizarin red S from aqueous solutions onto apolymeric nanocomposite in single and binary systems', 'Chemistry', 46),
('Development of a method for the determination of cadmium levels in seawater by ame atomic absorption spectrometry using an online cloud-point extractionsystem', 'Chemistry', 47),
('A ring crossover genetic algorithm for the unit commitment problem', 'Electrical Engineering & Computer Sciences', 48),
('Fire y algorithm with multiple workers for the power system unit commitmentproblem', 'Electrical Engineering & Computer Sciences', 49),
('Channel estimation using an adaptive neuro fuzzy inference system in theOFDM-IDMA system', 'Electrical Engineering & Computer Sciences', 50),
('Applying metaheuristic optimization methods to design novel adaptive PI-type fuzzy logic controllers for load-frequency control in a large-scale power grid', 'Electrical Engineering & Computer Sciences', 51),
('Lorenz-like system design using cellular neural networks', 'Electrical Engineering & Computer Sciences', 52),
('Low complexity link level performance prediction for SIMO systems', 'Electrical Engineering & Computer Sciences', 53),
('On the stochastic decomposition property of single server retrial queuing systems', 'Mathematics', 54),
('Localization of a nonlocal interaction', 'Physics', 55),
('Feather-like hornblende aggregates in the phyllites from the southern Sanandaj–Sirjan zone, Iran; their origin and mode of formation', 'Earth Sciences', 56),
('Significance of using a nonlinear analysis technique, the Lyapunov exponent, on the understanding of the dynamics of the cardiorespiratory system in rats', 'Medical Sciences', 57),
('Quality of life and fall risk in frail hospitalized elderly patients', 'Medical Sciences', 58);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`jid`);

--
-- Tablo için indeksler `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `scholars`
--
ALTER TABLE `scholars`
  ADD PRIMARY KEY (`sid`);

--
-- Tablo için indeksler `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`scid`);

--
-- Tablo için indeksler `title`
--
ALTER TABLE `title`
  ADD KEY `pid` (`pid`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `title`
--
ALTER TABLE `title`
  ADD CONSTRAINT `title_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `publications` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
