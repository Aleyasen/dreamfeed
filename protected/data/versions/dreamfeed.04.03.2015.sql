-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2015 at 11:16 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fiddler`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'check-in', 'check-in'),
(2, 'link', 'posting a link'),
(3, 'status', 'post or update status'),
(4, 'photo', 'photo'),
(5, 'video', 'upload a video'),
(6, 'comment', 'comment'),
(7, 'others', 'group created/event created/post on wall/note created/app story/post in group'),
(8, 'all', 'sum of all categories');

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
CREATE TABLE IF NOT EXISTS `friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fbid` varchar(30) NOT NULL,
  `user` bigint(20) NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  `chosen` int(11) DEFAULT NULL,
  `initial` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `name` (`name`),
  KEY `user_2` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50743 ;

--
-- Dumping data for table `friend`
--

INSERT INTO `friend` (`id`, `fbid`, `user`, `name`, `chosen`, `initial`, `changed`) VALUES
(50327, '1924477', 159, 'Zahra Golshani', NULL, NULL, NULL),
(50328, '1929103', 159, 'Wookyung Lee', NULL, NULL, NULL),
(50329, '3223232', 159, 'Zohreh Zoe G', NULL, NULL, NULL),
(50330, '21003982', 159, 'Mohammad Ali Safari', NULL, NULL, NULL),
(50331, '33502378', 159, 'Wayne Wu', NULL, NULL, NULL),
(50332, '502833273', 159, 'Hossein Akhlaghpour', NULL, NULL, NULL),
(50333, '510997224', 159, 'Saba Aflaki', NULL, NULL, NULL),
(50334, '512646986', 159, 'Sally Xiaodan Zhang', NULL, NULL, NULL),
(50335, '517137748', 159, 'Ajoy Savio Fernandes', NULL, NULL, NULL),
(50336, '521329425', 159, 'Farnaz Ronaghi', NULL, NULL, NULL),
(50337, '521589775', 159, 'Tayyebe Asgari', NULL, NULL, NULL),
(50338, '522024741', 159, 'Azin Ashgar', NULL, NULL, NULL),
(50339, '522143610', 159, 'Gh Esfandani', NULL, NULL, NULL),
(50340, '522267167', 159, 'Mahdie Dehghan', NULL, NULL, NULL),
(50341, '522494269', 159, 'Afra Abnar', NULL, NULL, NULL),
(50342, '522563219', 159, 'Amin Fazli', NULL, NULL, NULL),
(50343, '522610786', 159, 'Seyed Hossein Mortazavi', NULL, NULL, NULL),
(50344, '536134540', 159, 'Yu-Chun Yen', NULL, NULL, NULL),
(50345, '536144084', 159, 'Daniel Khashabi', NULL, NULL, NULL),
(50346, '540174323', 159, 'Zia Jalali', NULL, NULL, NULL),
(50347, '540465881', 159, 'Ehsan Sh', NULL, NULL, NULL),
(50348, '542610713', 159, 'Saeideh Bakhshi', NULL, NULL, NULL),
(50349, '542988476', 159, 'Kellie Warren Penn', NULL, NULL, NULL),
(50350, '543702584', 159, 'Farzaneh Taherkhani', NULL, NULL, NULL),
(50351, '543916327', 159, 'Omid Hatami', NULL, NULL, NULL),
(50352, '544487932', 159, 'Maryam Hamidirad', NULL, NULL, NULL),
(50353, '546383935', 159, 'Narsis Agbgi', NULL, NULL, NULL),
(50354, '549356273', 159, 'Sima Azimipoor', NULL, NULL, NULL),
(50355, '551788476', 159, 'Iman Isazadeh', NULL, NULL, NULL),
(50356, '556452825', 159, 'Roshanak Vesali', NULL, NULL, NULL),
(50357, '558605619', 159, 'Sudābe Eynali', NULL, NULL, NULL),
(50358, '566619443', 159, 'Hoda Ehsan', NULL, NULL, NULL),
(50359, '569292553', 159, 'Atieh Sarraf', NULL, NULL, NULL),
(50360, '576111763', 159, 'Anahita Moaddab', NULL, NULL, NULL),
(50361, '598596461', 159, 'Maliheh Monshizadeh', NULL, NULL, NULL),
(50362, '600220836', 159, 'Maryam Eslami', NULL, NULL, NULL),
(50363, '605235497', 159, 'Pooja Jain', NULL, NULL, NULL),
(50364, '609411497', 159, 'Mahdie Seyed', NULL, NULL, NULL),
(50365, '611699059', 159, 'Smr Daruki', NULL, NULL, NULL),
(50366, '613429245', 159, 'Parisa Amiri Eliasi', NULL, NULL, NULL),
(50367, '620045244', 159, 'Fabian Prieto Ñañez', NULL, NULL, NULL),
(50368, '628700462', 159, 'Banafsheh Behzad', NULL, NULL, NULL),
(50369, '631056433', 159, 'Shubhanshu Mishra', NULL, NULL, NULL),
(50370, '633438706', 159, 'Zahra Jalili', NULL, NULL, NULL),
(50371, '641265525', 159, 'Mahsa Hayeri', NULL, NULL, NULL),
(50372, '645833550', 159, 'Sara Nazemian', NULL, NULL, NULL),
(50373, '646212485', 159, 'Elham Sh', NULL, NULL, NULL),
(50374, '659253293', 159, 'Behnam Tavakoli', NULL, NULL, NULL),
(50375, '664164753', 159, 'Sin E Jim', NULL, NULL, NULL),
(50376, '664485475', 159, 'Mas Mohammadi', NULL, NULL, NULL),
(50377, '665504795', 159, 'Saeideh Gaeini', NULL, NULL, NULL),
(50378, '671336447', 159, 'Fateme Fotuhi', NULL, NULL, NULL),
(50379, '679797505', 159, 'Mahdie Jadaliha', NULL, NULL, NULL),
(50380, '680950583', 159, 'Maryam Booshehrian', NULL, NULL, NULL),
(50381, '685330351', 159, 'Sara Bp', NULL, NULL, NULL),
(50382, '687687755', 159, 'Vera Qingzi Liao', NULL, NULL, NULL),
(50383, '693872358', 159, 'Salehe Ghasempur', NULL, NULL, NULL),
(50384, '693924916', 159, 'Naeemeh Omidvar', NULL, NULL, NULL),
(50385, '699286511', 159, 'Nazanin Bakhshi', NULL, NULL, NULL),
(50386, '699607238', 159, 'Mohammad Azadeh', NULL, NULL, NULL),
(50387, '700884074', 159, 'Arash Khatibi', NULL, NULL, NULL),
(50388, '725354634', 159, 'John Espinosa', NULL, NULL, NULL),
(50389, '728525023', 159, 'Karrie G. Karahalios', NULL, NULL, NULL),
(50390, '734123366', 159, 'Mary McGregor Pietrowicz', NULL, NULL, NULL),
(50391, '741554534', 159, 'Maryam Hosseini', NULL, NULL, NULL),
(50392, '748813532', 159, 'Ali Rabbani', NULL, NULL, NULL),
(50393, '752357555', 159, 'Nima Pourdamghani', NULL, NULL, NULL),
(50394, '758213646', 159, 'Nahid Yousefi', NULL, NULL, NULL),
(50395, '768484159', 159, 'Parisa Kaghazgaran', NULL, NULL, NULL),
(50396, '770173881', 159, 'Monire Montazeri', NULL, NULL, NULL),
(50397, '833453348', 159, 'Annie Rong', NULL, NULL, NULL),
(50398, '837322411', 159, 'Farzaneh Radnyia', NULL, NULL, NULL),
(50399, '838216504', 159, 'Hoda Akbari', NULL, NULL, NULL),
(50400, '846109473', 159, 'Narges Shahidi', NULL, NULL, NULL),
(50401, '854445222', 159, 'Hidy Kong', NULL, NULL, NULL),
(50402, '1004944674', 159, 'Mahsa Mohammadi', NULL, NULL, NULL),
(50403, '1016088729', 159, 'Fatima Kamali', NULL, NULL, NULL),
(50404, '1018524834', 159, 'Mehrnoush Shahhosseini', NULL, NULL, NULL),
(50405, '1019613315', 159, 'Marzieh Razavi', NULL, NULL, NULL),
(50406, '1027344584', 159, 'Marjan Ghazvini Nejad', NULL, NULL, NULL),
(50407, '1037477680', 159, 'Negar Nazari', NULL, NULL, NULL),
(50408, '1041360447', 159, 'At Asa', NULL, NULL, NULL),
(50409, '1054515959', 159, 'Mohammad Ghodsi', NULL, NULL, NULL),
(50410, '1055784518', 159, 'Amin Sadeghi', NULL, NULL, NULL),
(50411, '1055935312', 159, 'Romina Eslami', NULL, NULL, NULL),
(50412, '1059054766', 159, 'Shivangi Prasad', NULL, NULL, NULL),
(50413, '1059115259', 159, 'Nafise Syd', NULL, NULL, NULL),
(50414, '1070073650', 159, 'Ati Taheri', NULL, NULL, NULL),
(50415, '1070887043', 159, 'Hale Dizaji', NULL, NULL, NULL),
(50416, '1079365194', 159, 'Mehraneh Liaee', NULL, NULL, NULL),
(50417, '1080420483', 159, 'Amir Shaikhha', NULL, NULL, NULL),
(50418, '1086255107', 159, 'HamidReza Maghbooli', NULL, NULL, NULL),
(50419, '1105121057', 159, 'Amirhossein Aleyasin', NULL, NULL, NULL),
(50420, '1115194643', 159, 'Negar Reiskarimian', NULL, NULL, NULL),
(50421, '1116181673', 159, 'Parnian Alimi', NULL, NULL, NULL),
(50422, '1127303649', 159, 'Maryam Habibi', NULL, NULL, NULL),
(50423, '1133850813', 159, 'Sharareh Alipour', NULL, NULL, NULL),
(50424, '1141626587', 159, 'Shohreh Sh', NULL, NULL, NULL),
(50425, '1142100918', 159, 'Mehrnoosh Sameki', NULL, NULL, NULL),
(50426, '1142211686', 159, 'LaLeh Ab', NULL, NULL, NULL),
(50427, '1143321504', 159, 'Simin Moh', NULL, NULL, NULL),
(50428, '1144298315', 159, 'Ghazaleh Haghighat', NULL, NULL, NULL),
(50429, '1144424634', 159, 'Erfan Zamanian', NULL, NULL, NULL),
(50430, '1150041349', 159, 'Parisa Delfani', NULL, NULL, NULL),
(50431, '1152111451', 159, 'Zeynab Zarei', NULL, NULL, NULL),
(50432, '1152407252', 159, 'Shiva Shahrokhi', NULL, NULL, NULL),
(50433, '1153851746', 159, 'Samane Kazemi', NULL, NULL, NULL),
(50434, '1157373987', 159, 'Alireza Ghasemi', NULL, NULL, NULL),
(50435, '1160391788', 159, 'Maede Sadeghi', NULL, NULL, NULL),
(50436, '1163003590', 159, 'Mehrdad Khaledi', NULL, NULL, NULL),
(50437, '1163781625', 159, 'Hakimeh Amiri', NULL, NULL, NULL),
(50438, '1165094160', 159, 'Emily Tran', NULL, NULL, NULL),
(50439, '1167801409', 159, 'Thisismetta Nat', NULL, NULL, NULL),
(50440, '1172661328', 159, 'Samra Tavakkol', NULL, NULL, NULL),
(50441, '1174328805', 159, 'Moslem Habibi', NULL, NULL, NULL),
(50442, '1176321565', 159, 'Lili Karimi', NULL, NULL, NULL),
(50443, '1180840711', 159, 'Meysam Aghighi', NULL, NULL, NULL),
(50444, '1182322114', 159, 'Fatemesadat Shahravesh', NULL, NULL, NULL),
(50445, '1184943952', 159, 'Adel Ahmadyan', NULL, NULL, NULL),
(50446, '1185882245', 159, 'Mohammad Salehe', NULL, NULL, NULL),
(50447, '1186953905', 159, 'Mohammad Ali Jazayeri', NULL, NULL, NULL),
(50448, '1188501132', 159, 'Neda Mirian', NULL, NULL, NULL),
(50449, '1190361214', 159, 'Mahboobeh Riahi', NULL, NULL, NULL),
(50450, '1201924982', 159, 'Fatemeh Lashkari', NULL, NULL, NULL),
(50451, '1207598061', 159, 'Ali Golshani', NULL, NULL, NULL),
(50452, '1208616089', 159, 'Ghasem Vakili', NULL, NULL, NULL),
(50453, '1209227892', 159, 'Mar Jan', NULL, NULL, NULL),
(50454, '1213722023', 159, 'Mehdi Shakiba', NULL, NULL, NULL),
(50455, '1215265106', 159, 'Mehrnaz Fallah Tafti', NULL, NULL, NULL),
(50456, '1219408685', 159, 'Moh Mal', NULL, NULL, NULL),
(50457, '1219454643', 159, 'Hamed Jamalifar', NULL, NULL, NULL),
(50458, '1221071467', 159, 'Elahe Ghalebi', NULL, NULL, NULL),
(50459, '1222522701', 159, 'Ali Nazari', NULL, NULL, NULL),
(50460, '1228901730', 159, 'Nastaran Nikparto', NULL, NULL, NULL),
(50461, '1236056147', 159, 'Raziye Salarifard', NULL, NULL, NULL),
(50462, '1245108107', 159, 'Mohammad Mahini', NULL, NULL, NULL),
(50463, '1248319891', 159, 'Faez Na', NULL, NULL, NULL),
(50464, '1248934478', 159, 'Zeinab Ahrabi', NULL, NULL, NULL),
(50465, '1250553831', 159, 'Samira Tofighi', NULL, NULL, NULL),
(50466, '1253670762', 159, 'Mina GhDr', NULL, NULL, NULL),
(50467, '1259752931', 159, 'Sanny Lin', NULL, NULL, NULL),
(50468, '1265086316', 159, 'Farideh Mirjalili', NULL, NULL, NULL),
(50469, '1268015107', 159, 'Mostafa Najafiyazdi', NULL, NULL, NULL),
(50470, '1272083567', 159, 'Parisa Khanipour', NULL, NULL, NULL),
(50471, '1275308247', 159, 'Zhaleh Gh', NULL, NULL, NULL),
(50472, '1276115706', 159, 'Azadeh Daneshpour', NULL, NULL, NULL),
(50473, '1276122377', 159, 'Milad Gholami', NULL, NULL, NULL),
(50474, '1279366111', 159, 'Shahrzad Azizaddini', NULL, NULL, NULL),
(50475, '1283130686', 159, 'Hesam Setareh', NULL, NULL, NULL),
(50476, '1291706919', 159, 'Mahboobeh Kabiri', NULL, NULL, NULL),
(50477, '1294020713', 159, 'Neda Na', NULL, NULL, NULL),
(50478, '1294069670', 159, 'Azar Irani', NULL, NULL, NULL),
(50479, '1295445268', 159, 'Reza Babaei', NULL, NULL, NULL),
(50480, '1298389415', 159, 'Roxana At', NULL, NULL, NULL),
(50481, '1298465597', 159, 'Sadaf Tayefeh', NULL, NULL, NULL),
(50482, '1305203307', 159, 'Zahra Motemanni', NULL, NULL, NULL),
(50483, '1313082423', 159, 'فاطمه السادات المدرسی طس', NULL, NULL, NULL),
(50484, '1313766186', 159, 'Sa Ma', NULL, NULL, NULL),
(50485, '1320035560', 159, 'Elahe Sadat Hosseini', NULL, NULL, NULL),
(50486, '1328081627', 159, 'Zahra Hooshmand', NULL, NULL, NULL),
(50487, '1329773359', 159, 'Ameneh Gholipour', NULL, NULL, NULL),
(50488, '1334121241', 159, 'Hamid Mahini', NULL, NULL, NULL),
(50489, '1342125554', 159, 'Leila Talebpour', NULL, NULL, NULL),
(50490, '1342989918', 159, 'Yousof Naderi', NULL, NULL, NULL),
(50491, '1343478044', 159, 'Soroor Laffafchi', NULL, NULL, NULL),
(50492, '1343944321', 159, 'Zahra Ch', NULL, NULL, NULL),
(50493, '1352532569', 159, 'Zahra Taheri', NULL, NULL, NULL),
(50494, '1356867877', 159, 'Niloufar Salehi', NULL, NULL, NULL),
(50495, '1373843456', 159, 'Abolfazl Farahani', NULL, NULL, NULL),
(50496, '1377582543', 159, 'Mehrdad Moradi', NULL, NULL, NULL),
(50497, '1378954795', 159, 'Marzie Nabi', NULL, NULL, NULL),
(50498, '1393331355', 159, 'Shima Shoja', NULL, NULL, NULL),
(50499, '1393856618', 159, 'Shera Malayeri', NULL, NULL, NULL),
(50500, '1394602219', 159, 'Roya Eslami', NULL, NULL, NULL),
(50501, '1395252475', 159, 'Saeedeh Zahmatkesh', NULL, NULL, NULL),
(50502, '1395475635', 159, 'Reyhaneh Boroujerdi', NULL, NULL, NULL),
(50503, '1396827394', 159, 'Marzieh Tahaei', NULL, NULL, NULL),
(50504, '1400118338', 159, 'Payam Siyari', NULL, NULL, NULL),
(50505, '1401233957', 159, 'Frzne Dghni', NULL, NULL, NULL),
(50506, '1412620612', 159, 'Amir Amirzadeh', NULL, NULL, NULL),
(50507, '1416734385', 159, 'Elaheh Farshadee', NULL, NULL, NULL),
(50508, '1439907637', 159, 'Fæze Usf', NULL, NULL, NULL),
(50509, '1442042437', 159, 'Samira Barouti', NULL, NULL, NULL),
(50510, '1442563440', 159, 'Ani HOmeira', NULL, NULL, NULL),
(50511, '1447696892', 159, 'Farnaz Behnia', NULL, NULL, NULL),
(50512, '1451171351', 159, 'Mostafa Salehi', NULL, NULL, NULL),
(50513, '1461875339', 159, 'Tahereh Rahmani', NULL, NULL, NULL),
(50514, '1472581808', 159, 'Nasi Ra Hi Mn', NULL, NULL, NULL),
(50515, '1475002729', 159, 'Ladan Rabiee', NULL, NULL, NULL),
(50516, '1481992369', 159, 'Maryam Zeini', NULL, NULL, NULL),
(50517, '1494886206', 159, 'Nikita Spirin', NULL, NULL, NULL),
(50518, '1495273030', 159, 'Sadat Nafise', NULL, NULL, NULL),
(50519, '1495455527', 159, 'Nayereh Gholampour', NULL, NULL, NULL),
(50520, '1498264750', 159, 'Mina Mahdavi', NULL, NULL, NULL),
(50521, '1498280649', 159, 'Sarah Poormohammad', NULL, NULL, NULL),
(50522, '1527194151', 159, 'Hamid R. Rabiee', NULL, NULL, NULL),
(50523, '1528065758', 159, 'Farz Aneh', NULL, NULL, NULL),
(50524, '1530879703', 159, 'Mina Ghashami', NULL, NULL, NULL),
(50525, '1543952508', 159, 'Yasaman Sefidgar', NULL, NULL, NULL),
(50526, '1553227464', 159, 'Mehrdad Farajtabar', NULL, NULL, NULL),
(50527, '1557252711', 159, 'Mahdie Salehi', NULL, NULL, NULL),
(50528, '1564746864', 159, 'Sarah Jafarbeiki', NULL, NULL, NULL),
(50529, '1592193976', 159, 'Ali Mousavi', NULL, NULL, NULL),
(50530, '1593368893', 159, 'Setareh Sajadi', NULL, NULL, NULL),
(50531, '1594372748', 159, 'Shima Salehi', NULL, NULL, NULL),
(50532, '1595362999', 159, 'Hamide Beh', NULL, NULL, NULL),
(50533, '1609399019', 159, 'Hn Hs', NULL, NULL, NULL),
(50534, '1626512446', 159, 'Mim Majd', NULL, NULL, NULL),
(50535, '1637061615', 159, 'Nazanin Makkinejad', NULL, NULL, NULL),
(50536, '1638200159', 159, 'Elaheh Mansouri', NULL, NULL, NULL),
(50537, '1652180403', 159, 'Maryam Abdollahzadeh', NULL, NULL, NULL),
(50538, '1661782234', 159, 'Neda Fotoohi', NULL, NULL, NULL),
(50539, '1665367833', 159, 'Mohammad Reza Zolfaghari', NULL, NULL, NULL),
(50540, '1672182208', 159, 'Mari Bagheri', NULL, NULL, NULL),
(50541, '1686109652', 159, 'Bahar Fn', NULL, NULL, NULL),
(50542, '1687037444', 159, 'Maryam Kazerooni', NULL, NULL, NULL),
(50543, '1694602289', 159, 'Amrollah Seifoddini', NULL, NULL, NULL),
(50544, '1701040153', 159, 'Saeed Mohajeri', NULL, NULL, NULL),
(50545, '1703066314', 159, 'Nooshin Eghbal', NULL, NULL, NULL),
(50546, '1709419847', 159, 'Siyamak Mohajeri', NULL, NULL, NULL),
(50547, '1719327367', 159, 'Na Sim', NULL, NULL, NULL),
(50548, '1726341792', 159, 'Maryam Mohiti', NULL, NULL, NULL),
(50549, '1729914695', 159, 'Nahid A''alam', NULL, NULL, NULL),
(50550, '1730086154', 159, 'Zoh Reh', NULL, NULL, NULL),
(50551, '1735611120', 159, 'Maryam Aminian', NULL, NULL, NULL),
(50552, '1738616321', 159, 'Elham Jebalbarezi', NULL, NULL, NULL),
(50553, '1744281094', 159, 'Maryam Haeri', NULL, NULL, NULL),
(50554, '1759591129', 159, 'Matin Ashtiani', NULL, NULL, NULL),
(50555, '1780988001', 159, 'Ne DA', NULL, NULL, NULL),
(50556, '1783869631', 159, 'Samaneh Dehghan', NULL, NULL, NULL),
(50557, '1806737832', 159, 'Sadjad Asghari-Esfeden', NULL, NULL, NULL),
(50558, '1808833052', 159, 'Ali Sadeghi', NULL, NULL, NULL),
(50559, '1809999340', 159, 'Hadi Asheri', NULL, NULL, NULL),
(50560, '1813210698', 159, 'Elaheh Abootorabi', NULL, NULL, NULL),
(50561, '1822506880', 159, 'Baharan Mirzasoleiman', NULL, NULL, NULL),
(50562, '1823385964', 159, 'Marzieh Saadat', NULL, NULL, NULL),
(50563, '1826638427', 159, 'Mojgan Peace', NULL, NULL, NULL),
(50564, '1845062011', 159, 'Roya Feizi', NULL, NULL, NULL),
(50565, '100000000353102', 159, 'Nasrin Pak', NULL, NULL, NULL),
(50566, '100000005100476', 159, 'Neda Azarpey', NULL, NULL, NULL),
(50567, '100000014287077', 159, 'Sahar Tahernezhad', NULL, NULL, NULL),
(50568, '100000041727779', 159, 'Anahita Alavi', NULL, NULL, NULL),
(50569, '100000068630305', 159, 'Maryam Darab', NULL, NULL, NULL),
(50570, '100000167439431', 159, 'Maryam Ghanavi', NULL, NULL, NULL),
(50571, '100000175991067', 159, 'Nafiseh Ganji', NULL, NULL, NULL),
(50572, '100000181652330', 159, 'Soheila Samiee', NULL, NULL, NULL),
(50573, '100000197964083', 159, 'Bahareh Ebrahimi', NULL, NULL, NULL),
(50574, '100000213276870', 159, 'Mehrnaz Malek', NULL, NULL, NULL),
(50575, '100000219159733', 159, 'Soudeh Ghorbani', NULL, NULL, NULL),
(50576, '100000221187771', 159, 'Nayyere Taeb', NULL, NULL, NULL),
(50577, '100000252542430', 159, 'Samira Salimpour', NULL, NULL, NULL),
(50578, '100000266841966', 159, 'Mahboobe Dashti', NULL, NULL, NULL),
(50579, '100000309607127', 159, 'Fateme Bahmaee', NULL, NULL, NULL),
(50580, '100000345407181', 159, 'Shamisa Bagha', NULL, NULL, NULL),
(50581, '100000360343095', 159, 'Reihane Boghrati', NULL, NULL, NULL),
(50582, '100000370460570', 159, 'Somayeh Bahrami', NULL, NULL, NULL),
(50583, '100000377929470', 159, 'Zeinab Dehghani', NULL, NULL, NULL),
(50584, '100000389332555', 159, 'Sangeetha AJ', NULL, NULL, NULL),
(50585, '100000563204161', 159, 'Eslami Mehdi Abadi Hossein', NULL, NULL, NULL),
(50586, '100000597734613', 159, 'Farahnaz Fa', NULL, NULL, NULL),
(50587, '100000629910347', 159, 'Jennifer Gahee Kim', NULL, NULL, NULL),
(50588, '100000678431010', 159, 'Ali Ghalami', NULL, NULL, NULL),
(50589, '100000688149498', 159, 'Maryam Barouti', NULL, NULL, NULL),
(50590, '100000692554680', 159, 'Mohsen Taghaddosi', NULL, NULL, NULL),
(50591, '100000728071081', 159, 'Zahra Vafadoost', NULL, NULL, NULL),
(50592, '100000860477685', 159, 'Elena Shn', NULL, NULL, NULL),
(50593, '100000944683891', 159, 'Dildora Atadjanova', NULL, NULL, NULL),
(50594, '100000991078687', 159, 'Tahora Nazer', NULL, NULL, NULL),
(50595, '100000998093761', 159, 'Minoo Roghani', NULL, NULL, NULL),
(50596, '100001004881828', 159, 'Parisa Hosseinzadeh', NULL, NULL, NULL),
(50597, '100001033016384', 159, 'Neda Aleyasin', NULL, NULL, NULL),
(50598, '100001050715583', 159, 'Lola Yiğit', NULL, NULL, NULL),
(50599, '100001071452474', 159, 'Zohre Chamani', NULL, NULL, NULL),
(50600, '100001147908829', 159, 'Mahdieh Abbasi', NULL, NULL, NULL),
(50601, '100001190067901', 159, 'Mahsa Elyasi', NULL, NULL, NULL),
(50602, '100001195711271', 159, 'Sajedeh Sadat Yazdanparast', NULL, NULL, NULL),
(50603, '100001289313227', 159, 'Arezoo Rajabi', NULL, NULL, NULL),
(50604, '100001301255856', 159, 'Mehdi Rezagholizadeh', NULL, NULL, NULL),
(50605, '100001302124415', 159, 'Ara Sh', NULL, NULL, NULL),
(50606, '100001312029845', 159, 'Smne Irani', NULL, NULL, NULL),
(50607, '100001358912895', 159, 'Ehsan Eslami', NULL, NULL, NULL),
(50608, '100001369656898', 159, 'Mahnaz Khorsandi', NULL, NULL, NULL),
(50609, '100001373001468', 159, 'Far Gh', NULL, NULL, NULL),
(50610, '100001451678301', 159, 'Armita Sa', NULL, NULL, NULL),
(50611, '100001472718903', 159, 'Hamid Ramazani', NULL, NULL, NULL),
(50612, '100001480483679', 159, 'Hossein Bahmaee', NULL, NULL, NULL),
(50613, '100001518773986', 159, 'So Gol Sh', NULL, NULL, NULL),
(50614, '100001539734586', 159, 'Simin Rahimian', NULL, NULL, NULL),
(50615, '100001543551212', 159, 'Neda Moghtaderi', NULL, NULL, NULL),
(50616, '100001553151811', 159, 'Sahar Harati', NULL, NULL, NULL),
(50617, '100001563158566', 159, 'Sanorita Dey', NULL, NULL, NULL),
(50618, '100001569225475', 159, 'Zohre Asheghmoalla', NULL, NULL, NULL),
(50619, '100001575111440', 159, 'Sahar Araam', NULL, NULL, NULL),
(50620, '100001628475543', 159, 'Ela He', NULL, NULL, NULL),
(50621, '100001665090740', 159, 'Fatemeh Abdikhani', NULL, NULL, NULL),
(50622, '100001670686878', 159, 'Shima Nezamipour', NULL, NULL, NULL),
(50623, '100001678826194', 159, 'Zeynab Esmaeli', NULL, NULL, NULL),
(50624, '100001688721761', 159, 'Parham Marzban', NULL, NULL, NULL),
(50625, '100001738474365', 159, 'Fatemeh Mobasheri', NULL, NULL, NULL),
(50626, '100001739446649', 159, 'Shadi Abdollahian', NULL, NULL, NULL),
(50627, '100001765006060', 159, 'Elaheh Hatami', NULL, NULL, NULL),
(50628, '100001827828402', 159, 'Maryam Momenin', NULL, NULL, NULL),
(50629, '100001856018852', 159, 'Mahnaz Dehghan', NULL, NULL, NULL),
(50630, '100001890242382', 159, 'Milad Naseri', NULL, NULL, NULL),
(50631, '100001892865922', 159, 'Be Mo', NULL, NULL, NULL),
(50632, '100001897252098', 159, 'Hossein DaroonParvar', NULL, NULL, NULL),
(50633, '100001948087406', 159, 'Reza Aleyasin', NULL, NULL, NULL),
(50634, '100001972911534', 159, 'Fa Ayh', NULL, NULL, NULL),
(50635, '100001981530051', 159, 'Samaneh Asayesh', NULL, NULL, NULL),
(50636, '100001999146360', 159, 'Ali Yekkehkhany', NULL, NULL, NULL),
(50637, '100002014312779', 159, 'Arghavan Ayatolahi', NULL, NULL, NULL),
(50638, '100002015493897', 159, 'Mersad Mehrnahad', NULL, NULL, NULL),
(50639, '100002051708282', 159, 'سعیده قنادباشی', NULL, NULL, NULL),
(50640, '100002062218581', 159, 'Mahsa Ghorbani', NULL, NULL, NULL),
(50641, '100002156465420', 159, 'Aimee Rickman', NULL, NULL, NULL),
(50642, '100002197642144', 159, 'Zohre Mkz', NULL, NULL, NULL),
(50643, '100002218506125', 159, 'Zohreh Sabbagh', NULL, NULL, NULL),
(50644, '100002247729470', 159, 'Haoran Yu', NULL, NULL, NULL),
(50645, '100002294537054', 159, 'Huaming Rao', NULL, NULL, NULL),
(50646, '100002303489202', 159, 'Mina Khd', NULL, NULL, NULL),
(50647, '100002328150620', 159, 'Narges Yousefnezhad', NULL, NULL, NULL),
(50648, '100002336950671', 159, 'Fa Ja', NULL, NULL, NULL),
(50649, '100002424549979', 159, 'Mostafa Eslami', NULL, NULL, NULL),
(50650, '100002485996118', 159, 'Atefeh Kharrat', NULL, NULL, NULL),
(50651, '100002491823409', 159, 'Sarah Gh', NULL, NULL, NULL),
(50652, '100002497099452', 159, 'Parvin Alemi', NULL, NULL, NULL),
(50653, '100002517120694', 159, 'Simin Mahmoudi', NULL, NULL, NULL),
(50654, '100002522763530', 159, 'Zahra Fattahi', NULL, NULL, NULL),
(50655, '100002536933317', 159, 'Mah Sun K', NULL, NULL, NULL),
(50656, '100002601422110', 159, 'Saeede Ebrahimi', NULL, NULL, NULL),
(50657, '100002727406267', 159, 'Motahare Baghestani', NULL, NULL, NULL),
(50658, '100002894704940', 159, 'Zubair Jaan', NULL, NULL, NULL),
(50659, '100002904081643', 159, 'Ailar Zafranchi', NULL, NULL, NULL),
(50660, '100003059145919', 159, 'Lala Shahabi', NULL, NULL, NULL),
(50661, '100003080359894', 159, 'Maryam Behrooz', NULL, NULL, NULL),
(50662, '100003080762000', 159, 'Mahshid Yassaei', NULL, NULL, NULL),
(50663, '100003094144352', 159, 'Farzane Radnyia', NULL, NULL, NULL),
(50664, '100003142514151', 159, 'Parviz Marzban', NULL, NULL, NULL),
(50665, '100003208965894', 159, 'Kian Amindavar', NULL, NULL, NULL),
(50666, '100003215475334', 159, 'Shiva SH Mirzaee', NULL, NULL, NULL),
(50667, '100003235260084', 159, 'Tahereh Jafari', NULL, NULL, NULL),
(50668, '100003354524136', 159, 'Majid Hoseyni', NULL, NULL, NULL),
(50669, '100003383683505', 159, 'Rahele Babapour', NULL, NULL, NULL),
(50670, '100003487042249', 159, 'Hamid Reza Eslami', NULL, NULL, NULL),
(50671, '100003539317572', 159, 'Hasti Nikzad', NULL, NULL, NULL),
(50672, '100003593591118', 159, 'Ali Eslami Mahdi Abadi', NULL, NULL, NULL),
(50673, '100003605508526', 159, 'Mahya Ghazizdeh', NULL, NULL, NULL),
(50674, '100003615362781', 159, 'Maryam Mahboub', NULL, NULL, NULL),
(50675, '100003631103732', 159, 'Ar Ap', NULL, NULL, NULL),
(50676, '100003632646453', 159, 'Mina Yaghmaie', NULL, NULL, NULL),
(50677, '100003790846541', 159, 'Atena Akbari', NULL, NULL, NULL),
(50678, '100003791706349', 159, 'Fariba Amirpour', NULL, NULL, NULL),
(50679, '100003834109498', 159, 'Samira Zanbagh', NULL, NULL, NULL),
(50680, '100004005823083', 159, 'Mostafa Taheri', NULL, NULL, NULL),
(50681, '100004026627405', 159, 'Maryam Eslamy', NULL, NULL, NULL),
(50682, '100004050806647', 159, 'ناهید علیمحمدی', NULL, NULL, NULL),
(50683, '100004066761323', 159, 'Elham Eslami', NULL, NULL, NULL),
(50684, '100004091202182', 159, 'Zahra Zohrevand', NULL, NULL, NULL),
(50685, '100004161723285', 159, 'Maryam Amirpoor', NULL, NULL, NULL),
(50686, '100004169019131', 159, 'Mahdi Shane', NULL, NULL, NULL),
(50687, '100004187104510', 159, 'Yasa Mehraby', NULL, NULL, NULL),
(50688, '100004210087529', 159, 'Ashkan Mehrabi', NULL, NULL, NULL),
(50689, '100004249839545', 159, 'Sara Aleyasin', NULL, NULL, NULL),
(50690, '100004257364035', 159, 'Mengya  Xia', NULL, NULL, NULL),
(50691, '100004263421673', 159, 'Par Nian', NULL, NULL, NULL),
(50692, '100004320216752', 159, 'Fateme Yousefi', NULL, NULL, NULL),
(50693, '100004396773157', 159, 'Afsaneh Feli', NULL, NULL, NULL),
(50694, '100004449192999', 159, 'Narges Mehrabi', NULL, NULL, NULL),
(50695, '100004465568805', 159, 'Leila Talebpour', NULL, NULL, NULL),
(50696, '100004475284510', 159, 'Afagh Shirzad', NULL, NULL, NULL),
(50697, '100004481647180', 159, 'Mohammadreza Karimi', NULL, NULL, NULL),
(50698, '100004496490152', 159, 'Amir Masoud Eslami', NULL, NULL, NULL),
(50699, '100004496591197', 159, 'Yahya Eslami', NULL, NULL, NULL),
(50700, '100004497159917', 159, 'Foroogh Eslami', NULL, NULL, NULL),
(50701, '100004504871986', 159, 'Mariam Amirpor', NULL, NULL, NULL),
(50702, '100004570956939', 159, 'Sepideh Najafi', NULL, NULL, NULL),
(50703, '100004594243739', 159, 'Ati Akbari', NULL, NULL, NULL),
(50704, '100004763700663', 159, 'Le Sa', NULL, NULL, NULL),
(50705, '100004788096470', 159, 'Ashkan Mehraby', NULL, NULL, NULL),
(50706, '100004794634171', 159, 'Fateme Akhoundi', NULL, NULL, NULL),
(50707, '100004800754379', 159, 'Monir Moniri', NULL, NULL, NULL),
(50708, '100004918831974', 159, 'Faramarz Ravanparvar', NULL, NULL, NULL),
(50709, '100004928657439', 159, 'Babak Behzad', NULL, NULL, NULL),
(50710, '100004930471631', 159, 'Salman Amindavar', NULL, NULL, NULL),
(50711, '100004946584825', 159, 'Mohamad Shane', NULL, NULL, NULL),
(50712, '100004999453410', 159, 'Fateme Eslami', NULL, NULL, NULL),
(50713, '100005021674803', 159, 'Mariam Amirpoor', NULL, NULL, NULL),
(50714, '100005096739500', 159, 'Zia Eslami', NULL, NULL, NULL),
(50715, '100005107028900', 159, 'Azadeh Eslami', NULL, NULL, NULL),
(50716, '100005111112293', 159, 'Ellie Torabi', NULL, NULL, NULL),
(50717, '100005213584639', 159, 'Ali Feali', NULL, NULL, NULL),
(50718, '100005249825318', 159, 'Ashkan Mehrabi', NULL, NULL, NULL),
(50719, '100005806936569', 159, 'Farideh Amirpoor', NULL, NULL, NULL),
(50720, '100005888949094', 159, 'Nasrin Rahmani', NULL, NULL, NULL),
(50721, '100005956901117', 159, 'Kevin Hamilton', NULL, NULL, NULL),
(50722, '100006464957799', 159, 'Maryam Shane', NULL, NULL, NULL),
(50723, '100006718654922', 159, 'Elahe Shirzad', NULL, NULL, NULL),
(50724, '100006787783966', 159, 'Hani Es', NULL, NULL, NULL),
(50725, '100006941539021', 159, 'Soheila Shane', NULL, NULL, NULL),
(50726, '100006995976743', 159, 'Mahya Ahmadi', NULL, NULL, NULL),
(50727, '100007067052834', 159, 'Namim Namimi', NULL, NULL, NULL),
(50728, '100007149303869', 159, 'Hakim Faraji', NULL, NULL, NULL),
(50729, '100007288308936', 159, 'Farideh Amirpoor', NULL, NULL, NULL),
(50730, '100007453093832', 159, 'Maryam Saeidpour', NULL, NULL, NULL),
(50731, '100007470724604', 159, 'محمد حسن دهقان', NULL, NULL, NULL),
(50732, '100007498332936', 159, 'Faranak Foghahayi', NULL, NULL, NULL),
(50733, '100007504692624', 159, 'Mahtab Gholami', NULL, NULL, NULL),
(50734, '100007578210816', 159, 'Soheila Shaneh', NULL, NULL, NULL),
(50735, '100007588750378', 159, 'Sh Ahmadianfard', NULL, NULL, NULL),
(50736, '100007653812264', 159, 'Elaheh Firouz', NULL, NULL, NULL),
(50737, '100007713061068', 159, 'Azadeh Alyasin', NULL, NULL, NULL),
(50738, '100007734191778', 159, 'Soheilaa Shane', NULL, NULL, NULL),
(50739, '100007840546622', 159, 'BT Usf', NULL, NULL, NULL),
(50740, '100007896756183', 159, 'Kimia Tajik', NULL, NULL, NULL),
(50741, '100008003384328', 159, 'حدیث پناهی', NULL, NULL, NULL),
(50742, '100008160851704', 159, 'Adel Kharrat', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
CREATE TABLE IF NOT EXISTS `goal` (
  `id` int(11) NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(2048) NOT NULL,
  `desc` varchar(2048) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_timestamp` (`created_timestamp`,`title`(767),`desc`(767)),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`id`, `created_timestamp`, `title`, `desc`, `user`) VALUES
(10, '2015-02-23 00:00:00', 'More Technical Post', 'I like to read more post related to technology.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL,
  `goal_id` int(11) NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activity` varchar(2048) NOT NULL,
  `result` varchar(2048) NOT NULL,
  `result_type` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goal_id` (`goal_id`,`created_timestamp`,`activity`(767),`result`(767),`result_type`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `goal_id`, `created_timestamp`, `activity`, `result`, `result_type`, `user`) VALUES
(1, 2, '0000-00-00 00:00:00', 'I mark every political feeds in my post as I don''t want to see this.', 'No more political feeds in my current feeds for now.', 0, 0),
(2, 2, '0000-00-00 00:00:00', 'I mark every political feeds in my post as I don''t want to see this.', 'No more political feeds in my current feeds for now.', 0, 0),
(3, 2, '0000-00-00 00:00:00', 'I mark every political feeds in my post as I don''t want to see this.', 'No more political feeds in my current feeds for now.', 0, 0),
(4, 2, '0000-00-00 00:00:00', 'I mark every political feeds in my post as I don''t want to see this.', 'No more political feeds in my current feeds for now.', 0, 0),
(5, 2, '2015-02-25 00:00:00', 'I mark every political feeds in my post as I don''t want to see this.', 'No more political feeds in my current feeds for now.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `friend` bigint(20) NOT NULL,
  `category` bigint(20) NOT NULL,
  `seen` bigint(20) NOT NULL,
  `not_seen` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `friend_id` (`friend`,`category`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_data`
--

DROP TABLE IF EXISTS `post_data`;
CREATE TABLE IF NOT EXISTS `post_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `friend` bigint(20) DEFAULT NULL,
  `post_id` varchar(100) DEFAULT NULL,
  `seen` tinyint(1) DEFAULT NULL,
  `from_id` varchar(64) DEFAULT NULL,
  `from_name` varchar(200) DEFAULT NULL,
  `story` text,
  `link` text,
  `picture` text,
  `source` text,
  `name` text,
  `description` text,
  `message` text,
  `user` bigint(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `chosen` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `from_img` varchar(1024) NOT NULL,
  `from_text` varchar(1024) NOT NULL,
  `group_name` varchar(1024) NOT NULL,
  `link_desc` varchar(1024) NOT NULL,
  `link_domain` varchar(1024) NOT NULL,
  `link_img_url` varchar(1024) NOT NULL,
  `like_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `is_share` int(11) NOT NULL,
  `video_img` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `friend` (`friend`,`from_id`),
  KEY `user` (`user`),
  KEY `post_id` (`post_id`,`seen`),
  KEY `created_time` (`created_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104303 ;

--
-- Dumping data for table `post_data`
--

INSERT INTO `post_data` (`id`, `friend`, `post_id`, `seen`, `from_id`, `from_name`, `story`, `link`, `picture`, `source`, `name`, `description`, `message`, `user`, `created_time`, `chosen`, `changed`, `type`, `from_img`, `from_text`, `group_name`, `link_desc`, `link_domain`, `link_img_url`, `like_count`, `comment_count`, `is_share`, `video_img`) VALUES
(104228, 50666, '100003215475334_758143694302806', NULL, '100003215475334', 'Shiva SH Mirzaee', 'Shiva SH Mirzaee commented on a post from February 7 at 12:50pm.', 'https://www.facebook.com/photo.php?fbid=10205854854188920&set=a.10205854820908088.1073741829.1184943952&type=1', 'https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/s130x130/10432479_10205854854188920_922589041296027409_n.jpg?oh=cd2dbf1a5906f689373fbfb305e8e433&oe=55707F9C&__gda__=1434532151_833c7315aaf9ce658e00a11b1ae96c1d', NULL, 'Adel', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104229, 50419, '1105121057_10205260356004176', NULL, '1105121057', 'Amirhossein Aleyasin', NULL, 'https://petitions.whitehouse.gov/petition/file-charges-against-47-us-senators-violation-logan-act-attempting-undermine-nuclear-agreement/NKQnpJS9', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQDK1wuRd0oH9Wm5&w=130&h=130&url=http%3A%2F%2Fpetitions.whitehouse.gov%2Fprofiles%2Fpetitions%2Fthemes%2Fpetitions44%2Fimg%2Ffb_share_we_the_people.png&cfs=1', NULL, 'File charges against the 47 U.S. Senators in violation of The Logan Act in attempting to...', 'On March 9th, 2015, forty-seven United States Senators committed a treasonous offense when they decided to violate the Logan Act, a 1799 law which forbids unauthorized citizens from negotiating with foreign governments. Violation of the Logan Act is a felony, punishable under federal law with impris…', 'Just 13,682 is needed! \n\n(5:41pm)', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104230, 50666, '100003215475334_758148577635651', NULL, '100003215475334', 'Shiva SH Mirzaee', NULL, 'https://www.facebook.com/photo.php?fbid=758148494302326&set=a.108920725891776.10225.100003215475334&type=1', 'https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/s130x130/1907472_758148494302326_3306719887064990290_n.jpg?oh=7dea1f61e376c7376157fc0c099dac58&oe=55886692&__gda__=1438114272_c08ef00e021d0f296b2b21f0b5561595', NULL, NULL, NULL, 'بالاخره بعد از یه سال و اندی همت کردیم رفتیم عکسامونو گرفتیم :D', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104231, 50702, '100004570956939_419678921527803', NULL, '100004570956939', 'Sepideh Najafi', 'Sepideh Najafi shared Persian Vines''s video.', 'https://www.facebook.com/video.php?v=1547718892154753', 'https://fbcdn-vthumb-a.akamaihd.net/hvthumb-ak-xpf1/v/t15.0-10/s130x130/10995847_1547718992154743_1547718892154753_49144_1258_b.jpg?oh=02afaad63c0ab7599696c14dc119a8d6&oe=55BB0D15&__gda__=1434765087_734e846430329b52cbb9f8baf8e62d98', 'https://fbcdn-video-m-a.akamaihd.net/hvideo-ak-xaf1/v/t42.1790-2/11049933_915408005148873_1391578012_n.mp4?rl=381&vabr=212&oh=b1b05d8b382232b29e5efd42d2e84455&oe=5501B395&__gda__=1426181431_d6947b6dd8f8bf9641d210ec1cc8e527', 'Persian Vines', 'نبینی از دستت رفته   امريكا اينارو ببينه از بي نتيجه بودن تحريم خود زني ميكنه', 'Nabiniid az dastetoon rafteee', 159, '0000-00-00 00:00:00', NULL, NULL, 'video', '', '', '', '', '', '', 0, 0, 0, ''),
(104232, NULL, '102099916530784_904555006285267', NULL, '102099916530784', 'Humans of New York', NULL, 'https://www.facebook.com/humansofnewyork/photos/a.102107073196735.4429.102099916530784/904554962951938/?type=1', 'https://scontent.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/s130x130/10423262_904554962951938_788842099214550210_n.jpg?oh=5077471951da03bce52225cce3d5fe7e&oe=5573563E', NULL, NULL, NULL, '"It''s our first time out this year."', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104233, 50544, '1701040153_10200236510071031', NULL, '1701040153', 'Saeed Mohajeri', 'Saeed Mohajeri added 3 new photos.', 'https://www.facebook.com/photo.php?fbid=10200236490470541&set=a.1010742084420.1458.1701040153&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/s130x130/10408757_10200236490470541_3847647011054230202_n.jpg?oh=40db323bcbbdc632b32e573ad24775a8&oe=557B1710', NULL, NULL, NULL, 'من از طرف محسن تقدسی (Mohsen Taghaddosi) به #ویکی_چالش دعوت شدم.\nدر پاسخ به این دعوت من صفحه «وضعیت جسمی اکبر هاشمی رفسنجانی» را ایجاد کردم: http://fa.wikipedia.org/wiki/وضعیت_جسمی_اکبر_هاشمی_رفسنجانی\nدوستانی که از آنها دعوت می‌کنم به این چالش بپیوندند:\nجواد ظریف (Javad Zarif)\nهمایون شجریان (Homayoun Shajarian)\nآلن ایر (Alan Eyre)\nسفانه محقق نیشابوری (Safaneh Mohaghegh Neyshabouri)\nشیخ الاسلام مولانا عبدالحمید\nطرح #ویکی_چالش سه هدف دارد: کمک به زبان فارسی، کمک به گسترش دانش، کمک به دیگر فارسی‌زبانان. پیوستن به ویکی‌چالش چیزی جز انجام سه مرحله‌ی ساده نیست:\n۱- یک صفحه از ویکی‌پدیای فارسی را انتخاب کنید.\n۲- دست‌کم یک جمله - با ذکر دست‌کم یک منبع - به آن اضافه کنید. حتی اگر در موضوعی تخصص دارید طبق قوانین ویکی‌پدیا ذکر منبع لازم است. (برای افزودن منبع از دکمه‌ای که در بالای جعبه‌ی ویرایش به شکل یک کتاب باز است استفاده کنید.)\n۳- لینک صفحه‌ای که ویرایش کرده‌اید را به اشتراک بگذارید، و پنج نفر از دوستانتان را به این چالش دعوت کنید. (فراموش نکنید این متن را با ذکر نام دعوت‌کننده‌تان در پُستی که می‌نویسید قرار دهید.)\n(برای باخبر شدن از جزئیات بیشتر، به صفحه‌ی دعوت به مشارکت در ویکی پدیا در فیس‌بوک بپیوندید:‌ http://bit.ly/wikiChalesh)', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104234, 50416, '1079365194_10204835847350866', NULL, '1079365194', 'Mehraneh Liaee', NULL, NULL, NULL, NULL, NULL, NULL, 'بچه های بوستون سنجد و سمنو از کجا می خرین؟', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104235, 50347, '540465881_10152581759145882', NULL, '540465881', 'Ehsan Sh', NULL, 'http://nyr.kr/1E2YJZX', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQAm5dXbRGVCMMrV&w=130&h=130&url=http%3A%2F%2Fwww.newyorker.com%2Fwp-content%2Fuploads%2F2015%2F03%2FBorowitz-Can-They-Get-Along-1200-630.jpg&cfs=1&sx=0&sy=0&sw=630&sh=630', NULL, 'Iran Offers to Mediate Talks Between Republicans and Obama', 'Stating that “their continuing hostilities are a threat to world peace,” Iran offered to host talks between congressional Republicans and President Obama.', 'والا به خدا!', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104236, NULL, '102099916530784_904387839635317', NULL, '102099916530784', 'Humans of New York', NULL, 'https://www.facebook.com/humansofnewyork/photos/a.102107073196735.4429.102099916530784/904387759635325/?type=1', 'https://scontent.xx.fbcdn.net/hphotos-xtf1/v/t1.0-9/s130x130/11060304_904387759635325_6839542668902387876_n.jpg?oh=c0d59b4abf5f2f7fa0e0ae8477d14550&oe=55BC035E', NULL, NULL, NULL, '“I just went to the International Children’s Film Festival, and it was all sold out, but one lady had an extra ticket and just gave it to me!  Can you believe that?  That’s a $13 ticket!  It was a Japanese anime film, everything was hand painted.  It was just the best.  Look at those sunflowers in that window.  Aren’t they gorgeous?  Photograph me next to them!”', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104237, NULL, '1040480765967986_1047796498569746', NULL, '1040480765967986', 'سوتی های من در خارج', NULL, NULL, NULL, NULL, NULL, NULL, 'خاطره‌ی یکی از دوستان:\n\nیه استاد دانمارکی داریم توی دانشکده‌مون، که تقریبا نصف حرفاش رو نمیشه فهمید. خیلی آدم نایس و متشخص و با محبتی هست. ترم اولی که اومده بودم کانادا باهاش درس داشتم. اون اوایل خیلی سعی می‌کردم خودم رو آدم باهوش و باسوادی جلوه بدم. تمرینای درس رو با هر زحمتی بود تا آخر حل می‌کردم و یکی دو باری هم روی تمرینا برام کامنت نوشته بود که دمت گرم، راه حلت قشنگ هست و این باعث شده بود که من یک غرور کاذبی بهم دست بده. نمی‌خواستم جلوش سوتی بدم که فکر کنه خنگم. اون موقع به زحمت بیست درصد از صحبتاش رو متوجه می‌شدم. خوشبختانه چون درس تئوری بود و همه چیز رو روی تخته می‌نوشت خیلی مشکلی توی فهم مطالب نداشتم ولی موقعی که تخته سیاهی در کار نبود مصیبت شروع می‌شد. یه بار توی آسانسور بودم که این استادمون هم سوار شد. یه سوالی پرسید ولی اصلا نفهمیدم چی می‌گه. یکی دو بار گفتم:\n\n?Pardon me\n\nو سوالش رو تکرار کرد. تا اون وسط من یه کلمه اساینمنت رو متوجه شدم و حدس زدم که سوالش حتما اینه که تمرینای این هفته چطور پیش میره. گفتم:\n\n.It''s good\n\n و با یک لبخند و کمی تکون دادن سر به بالا و پایین قضیه رو به شکل آبرومندانه‌ای جمع کردم. از آسانسور که اومدیم بیرون یه چیز دیگه ای گفت که من دیگه این دفعه هیچی ازش متوجه نشدم. ولی غرورم اجازه نداد بهش بگم تکرار کنه. پیش خودم گفتم حتما\n \nHave a nice day یا   See you later\n\n یا یه چیزی شبیه هست که موقع پیاده شدن از آسانسور میگن دیگه. منم دوباره با چاشنی لبخند و تکون دادن سر گفتم:\n\nYa… see you later \n\n برای تازه کارا بگم که این یَ اول جمله یکی از تکنیکای مهم و نسبتا کم خطر ماستمالی هست که کاربرد وسیعی داره. یک کلمه دو حرفی هست ولی یک دنیا حرف داره. اگر خوب ادا بشه، بدون اینکه فهمیده باشی طرف مقابلت چی گفته میتونی بهش بگی که نه تنها فهمیدم چی گفتی، بلکه باهات موافق هم هستم. اگر هم چیزی نگفته باشه که نیاز به موافقت داشته باشه، خوب حرف اضافه به نظر میاد و معنای خاصی نداره. \n\nیه چند متری که از آسانسور دور شدم یه نفس راحتی کشیدم و برگشتم ببینم این استادمون کدوم طرفی رفته. دیدم وایساده با چهره بهت زده و دهن باز داره منو نگاه می‌کنه. نگو یه سوالی پرسیده بود و منتظر جواب من بود که من گفته بودم:\n\nsee you later\n\n خدا شاهده، چند ساله دارم فکر می‌کنم سوال دومش در مورد چی بوده،‌ هنوز به نتیجه نرسیدم.', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104238, 50621, '100001665090740_847269805338515', NULL, '100001665090740', 'Fatemeh Abdikhani', NULL, NULL, NULL, NULL, NULL, NULL, 'اس ام اس رسيده از همسر:\n"بسته از ایران رسید باز کنم؟ یکیش تلق تولوق میکنه مورچه نره توش!"', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104239, 50419, '1105121057_10205249070962057', NULL, '1105121057', 'Amirhossein Aleyasin', NULL, NULL, NULL, NULL, NULL, NULL, 'من از طرف امین صادقی (Amin Sadeghi) به #ویکی_چالش دعوت شدم.\nمن صفحه « دبیرستان علامه حلی اراک (دوره اول) » را که دبیرستان من در سالیان گذشته بوده را در ویکی پدیا ویرایش کردم. \nhttps://fa.wikipedia.org/wiki/%D8%AF%D8%A8%DB%8C%D8%B1%D8%B3%D8%AA%D8%A7%D9%86_%D8%B9%D9%84%D8%A7%D9%85%D9%87_%D8%AD%D9%84%DB%8C_%D8%A7%D8%B1%D8%A7%DA%A9_(%D8%AF%D9%88%D8%B1%D9%87_%D8%A7%D9%88%D9%84)\n\nدوستانی که از آنها دعوت می‌کنم به این چالش بپیوندند:\nمطهره اسلامی Motahhare Eslami\nرضا آل یاسین Reza Aleyasin\nمسعود محمدی Mas Mohammadi\nعلی ابویسانی Ali Abavisani\nمهرداد فرج تبار Mehrdad Farajtabar\nطرح #ویکی_چالش سه هدف دارد: کمک به زبان فارسی، کمک به گسترش دانش، کمک به دیگر فارسی‌زبانان. پیوستن به ویکی‌چالش چیزی جز انجام سه مرحله‌ی ساده نیست:\n۱- یک صفحه از ویکی‌پدیای فارسی را انتخاب کنید.\n۲- دست‌کم یک جمله - با ذکر دست‌کم یک منبع - به آن اضافه کنید. حتی اگر در موضوعی تخصص دارید طبق قوانین ویکی‌پدیا ذکر منبع لازم است. (برای افزودن منبع از دکمه‌ای که در بالای جعبه‌ی ویرایش به شکل یک کتاب باز است استفاده کنید.)\n۳- لینک صفحه‌ای که ویرایش کرده‌اید را به اشتراک بگذارید، و پنج نفر از دوستانتان را به این چالش دعوت کنید. (فراموش نکنید این متن را با ذکر نام دعوت‌کننده‌تان در پُستی که می‌نویسید قرار دهید.)\n(برای باخبر شدن از جزئیات بیشتر، به صفحه‌ی دعوت به مشارکت در ویکی پدیا در فیس‌بوک بپیوندید: http://bit.ly/wikiChalesh)', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104240, 50481, '1298465597_10203864883004668', NULL, '1298465597', 'Sadaf Tayefeh', NULL, NULL, NULL, NULL, NULL, NULL, 'مرسي هوا كه تو هفته نوروز ما اين قدر خوبي ', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104241, 50662, '100003080762000_720797531366266', NULL, '100003080762000', 'Mahshid Yassaei', NULL, 'http://www.newyorker.com/humor/borowitz-report/iran-offers-to-mediate-talks-between-republicans-and-obama?mbid=social_facebook', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQAm5dXbRGVCMMrV&w=130&h=130&url=http%3A%2F%2Fwww.newyorker.com%2Fwp-content%2Fuploads%2F2015%2F03%2FBorowitz-Can-They-Get-Along-1200-630.jpg&cfs=1&sx=0&sy=0&sw=630&sh=630', NULL, 'Iran Offers to Mediate Talks Between Republicans and Obama - The New Yorker', 'Stating that “their continuing hostilities are a threat to world peace,” Iran offered to host talks between congressional Republicans and President Obama.', 'haaaaahaaaa...."it has become clear that both sides currently talk more to Iran than to each other."', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104242, 50590, '100000692554680_923544144345329', NULL, '100000692554680', 'Mohsen Taghaddosi', NULL, NULL, NULL, NULL, NULL, NULL, 'Mohammad Javad Zarif is TRENDING right now! :D Wowwww!\n\nOne of the comments:\n\nIt is not often that I would say kind words about Iran, but in this instance I must agree with the Iranian prime minister. What the Republicans do at times is beyond belief. I sincerely hope that the signators of that letter to Iran have broken some law and that the DOJ goes after them. Sick.', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104243, 50481, '1298465597_10203870992517402', NULL, '1298465597', 'Sadaf Tayefeh', NULL, 'https://www.dropbox.com/s/7x456q2lhf4b22o/Teaser.mp4?dl=0', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQA2ZiA6SJO2w8Y8&w=130&h=130&url=https%3A%2F%2Fphotos-6.dropbox.com%2Ft%2F2%2FAAAkw645TZex92cFZoIvyhiXdXhR-V-1guX4ZQkBR3PRxA%2F12%2F223451930%2Fjpeg%2F320x320%2F1%2F_%2F0%2F4%2FTeaser.mp4%2FCJq2xmogASACIAMoASgC%2F7x456q2lhf4b22o%2FAAA9cqI_IVaBYjTMFRXRgCNEa%2FTeaser.mp4&cfs=1&sx=0&sy=0&sw=320&sh=320', NULL, 'Teaser.mp4', 'Shared with Dropbox', 'بياين همه بليط بگيريم كه زحمت هاي همه كساني كه برامون مي رقصن، وسايل صحنه رو مي خرن و آماده مي كنن، برامون آهنگ هاي قشنگ مي ذارن آخر شب كه باهاشون برقصيم به هدر نره! ممنون :)', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104244, NULL, '1040480765967986_1048437501838979', NULL, '1040480765967986', 'سوتی های من در خارج', NULL, NULL, NULL, NULL, NULL, NULL, 'بعضی وقتا لازم نیست آدم بره خارج از کشور که کارش گیر کنه...\n\nیکی از دوستام یه بار رفته بود مشهد، دنبال نوک مداد اتود میگشت.\nتوی هر مغازه‌ی لوازم التحریری که میرفت و می‌پرسید "نوک مداد اتود" دارید میگفتن نه! \nآخر روز متوجه شده باید میگفته "مغز مداد فشاری"!!! :)))))))))', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104245, 50575, '100000219159733_1083265861690709', NULL, '100000219159733', 'Soudeh Ghorbani', NULL, 'https://twitter.com/JZarif/status/575129824395681792?s=04', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQC6eZtK_oS8C7Js&w=130&h=130&url=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F378800000778458771%2Fe799d6f842ce4c24b5785e4b6fd1a0d8_400x400.jpeg&cfs=1&sx=0&sy=0&sw=400&sh=400', NULL, 'Javad Zarif on Twitter', '“.@SenTomCotton ICYMI my response. In English. http://t.co/jEleaAjGaG”', '"In English"', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104246, 50590, '100000692554680_923257181040692', NULL, '100000692554680', 'Mohsen Taghaddosi', NULL, 'http://fa.wikipedia.org/wiki/%D8%AA%D9%86%D8%A8%D9%84%DB%8C', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQDdod80YRcwn0Ln&w=130&h=130&url=http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F3%2F32%2FDaniel_Hern%25C3%25A1ndez_Morillo_-_Perezosa_%2528Idle_Woman%2529_-_Google_Art_Project.jpg%2F300px-Daniel_Hern%25C3%25A1ndez_Morillo_-_Perezosa_%2528Idle_Woman%2529_-_Google_Art_Project.jpg&cfs=1&sx=0&sy=0&sw=195&sh=195', NULL, 'تنبلی - ویکی‌پدیا، دانشنامهٔ آزاد', 'تنبلی، کاهلی و تن‌پروری به معنی عدم تمایل به فعالیت یا تلاش، علی‌رغم برخورداری از توانایی کافی‌ست.[۱]', 'من از طرف امید حاتمی (Omid Hatami) به #ویکی_چالش دعوت شدم.\nدر لبیک به این دعوت من صفحه «تنبلی» را بروز کردم:\nhttp://fa.wikipedia.org/wiki/%D8%AA%D9%86%D8%A8%D9%84%DB%8C\n\nدوستانی که از آنها دعوت می‌کنم به این چالش بپیوندند:\n\nسعید مهاجری Saeed Mohajeri\nمعصومه تقدسی Masoome Taghaddosi\nحسین شیرزادی Hossein Shirzadi\nکامیار الله وردی Kamyar Allahverdi\nحمیدرضا نصیری Hamidreza Nassiri\n\nطرح #ویکی_چالش سه هدف دارد: کمک به زبان فارسی، کمک به گسترش دانش، کمک به دیگر فارسی‌زبانان. پیوستن به ویکی‌چالش چیزی جز انجام سه مرحله‌ی ساده نیست:\n۱- یک صفحه از ویکی‌پدیای فارسی را انتخاب کنید.\n۲- دست‌کم یک جمله - با ذکر دست‌کم یک منبع - به آن اضافه کنید. حتی اگر در موضوعی تخصص دارید طبق قوانین ویکی‌پدیا ذکر منبع لازم است. (برای افزودن منبع از دکمه‌ای که در بالای جعبه‌ی ویرایش به شکل یک کتاب باز است استفاده کنید.)\n۳- لینک صفحه‌ای که ویرایش کرده‌اید را به اشتراک بگذارید، و پنج نفر از دوستانتان را به این چالش دعوت کنید. (فراموش نکنید این متن را با ذکر نام دعوت‌کننده‌تان در پُستی که می‌نویسید قرار دهید.)\n(برای باخبر شدن از جزئیات بیشتر، به صفحه‌ی دعوت به مشارکت در ویکی پدیا در فیس‌بوک بپیوندید:‌ http://bit.ly/wikiChalesh)', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104247, NULL, '102099916530784_903434633063971', NULL, '102099916530784', 'Humans of New York', NULL, 'https://www.facebook.com/humansofnewyork/photos/a.102107073196735.4429.102099916530784/903366193070815/?type=1', 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/s130x130/1422602_903366193070815_6046675119446668406_n.jpg?oh=1c3369bd8f1277cbf0f4cef7ec1f3243&oe=5576AF50&__gda__=1434990114_49beae65cabe7281e3b3887c9782a6fb', NULL, NULL, NULL, '"Whenever he''s feeling stressed about work, I do an imitation of our bulldog''s ''I want chicken'' face."', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104248, 50470, '1272083567_10203747905079413', NULL, '1272083567', 'Parisa Khanipour', NULL, NULL, NULL, NULL, NULL, NULL, 'Today President Obama visited our campus to give a talk, and although I wasn''t able to go, I was overwhelmed by the good feelings surrounding the visit. This was the second time I experienced a president''s visit to a campus I go to, the first one back home was welcomed by protests, and the second one by long lines of enthusiastic students to get tickets to the event. Gosh it feels different to live on the other side of the world, and sometimes like today, it just feels so much easier and more peaceful. Funny little world we live in :) \nhttps://www.youtube.com/watch?v=ZFYnxzGX_uM&t=156', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104249, 50613, '100001518773986_861931953867422', NULL, '100001518773986', 'So Gol Sh', 'So Gol Sh shared ‎جوکهای داغ داغ√‎''s photo.', 'https://www.facebook.com/HOTjOkHOTjOk/photos/a.144609022354925.33020.143837719098722/471258223023335/?type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/s130x130/10438359_471258223023335_8104164637554513841_n.jpg?oh=20358760588a166b27c859d038c3963c&oe=55884E2E', NULL, 'جوکهای داغ داغ√', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104250, NULL, '143837719098722_471258223023335', NULL, '143837719098722', 'جوکهای داغ داغ√', NULL, 'https://www.facebook.com/HOTjOkHOTjOk/photos/a.144609022354925.33020.143837719098722/471258223023335/?type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/s130x130/10438359_471258223023335_8104164637554513841_n.jpg?oh=20358760588a166b27c859d038c3963c&oe=55884E2E', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104251, 50575, '100000219159733_1081873818496580', NULL, '100000219159733', 'Soudeh Ghorbani', NULL, NULL, NULL, NULL, NULL, NULL, '"Whatever women must do, they must do twice as well as men to be thought half as good.  Luckily, this is not difficult." --Charlotte Whitton', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104252, 50513, '1461875339_10203886184182631', NULL, '1461875339', 'Tahereh Rahmani', 'Tahereh Rahmani shared ‎ادبیات کودکان‎''s video.', 'https://www.facebook.com/video.php?v=863936570334251', 'https://fbcdn-vthumb-a.akamaihd.net/hvthumb-ak-xpf1/v/t15.0-10/s130x130/11049062_863939803667261_863936570334251_63336_1848_b.jpg?oh=e71cb3f522e73fbddc52fec26c9f5165&oe=55731CA4&__gda__=1434169671_d074f5cf7e4e84b4d0be4a6b7b91c29f', 'https://scontent.xx.fbcdn.net/hvideo-xfa1/v/t42.1790-2/11050410_863939763667265_653950824_n.mp4?rl=370&vabr=206&oh=bb0772e278829590777ef9ff7492321e&oe=5502AA68', 'ادبیات کودکان', '... هاجر عروسی داره\r\nتاج خروس داره\r\nهاجرک ناز قندی\r\nیه چیزی بگم نخندی\r\nوقتی حنا می ذاشتی\r\nابروهاتو ور می داشتی\r\nزلفاتو وا می کردی\r\nخالتو سیا می کردی\r\nزهره نیومد تماشا\r\nنکن اگه دیدی حاشا ...\r\n\r\nطراح، کارگردان و انیماتور: مهین جواهریان\r\nکانون پرورش فکری کودکان و نوجوانان ۱۳۸۷\r\n\r\n#koodaki_movie\r\n-------------------------------\r\nکتاب‌ های خوب برای کودکان و نوجوانان در کتاب هدهد\r\n-------------------------------\r\nیادهای کودکی، شعرهای #کودکان، نوشته های #کودکی و تازه های کودکان\r\nدر\r\nصفحه‌ی\r\nادبیات کودکان﻿', NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'video', '', '', '', '', '', '', 0, 0, 0, ''),
(104253, 50513, '1461875339_10203886131661318', NULL, '1461875339', 'Tahereh Rahmani', 'Tahereh Rahmani posted 3 updates.', NULL, NULL, NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104254, 50336, '521329425_10152802379134426', NULL, '521329425', 'Farnaz Ronaghi', 'Farnaz Ronaghi updated her cover photo.', 'https://www.facebook.com/photo.php?fbid=10152802378909426&set=p.10152802378909426&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/s130x130/11024744_10152802378909426_5127764416734296151_n.jpg?oh=bc57af62915704c9258a9fd982cf815e&oe=55872847', NULL, NULL, NULL, 'Tehran by Safa Mahmoodian', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104255, 50621, '100001665090740_846877212044441', NULL, '100001665090740', 'Fatemeh Abdikhani', 'Fatemeh Abdikhani changed her profile picture.', 'https://www.facebook.com/photo.php?fbid=846877198711109&set=a.102275456504624.3629.100001665090740&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/p110x80/11033194_846877198711109_3068144271226191121_n.jpg?oh=717c9e75e36341616306bc227ac816c0&oe=55B8B656', NULL, 'Fatemeh Abdikhani', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104256, 50358, '566619443_10153203139969444', NULL, '566619443', 'Hoda Ehsan', 'Hoda Ehsan with Hossein Ebrhimi', 'https://www.facebook.com/photo.php?fbid=10153203139914444&set=a.10151135241909444.459346.566619443&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/q84/s130x130/11034917_10153203139914444_7735324065241605719_n.jpg?oh=e66a8fae3d39c9f27510c95eefca7a02&oe=5585BDAC', NULL, NULL, NULL, 'دنیا رو بی تو نمی خوام یه لحظه ...', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104257, 50613, '100001518773986_861847143875903', NULL, '100001518773986', 'So Gol Sh', 'So Gol Sh shared ‎در سرزمین من هر چه را نمی فهمند مسخره می کنند‎''s photo.', 'https://www.facebook.com/DAR.SARZAMIN.MAN/photos/a.223808361110480.1073741828.162546150570035/449772241847423/?type=1', 'https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/s130x130/10428456_449772241847423_5558787477354393136_n.jpg?oh=c380dccb8f9502c5893ff5c354887a82&oe=558DBA24&__gda__=1435432898_93222d0a220fb3548df2151f42b2276d', NULL, 'در سرزمین من هر چه را نمی فهمند مسخره می کنند', 'آنکه با خود حرف می زند دیوانه نیست، او عاقلترین است\n\nفیودور داستایفسکی', NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104258, NULL, '162546150570035_449772241847423', NULL, '162546150570035', 'در سرزمین من هر چه را نمی فهمند مسخره می کنند', NULL, 'https://www.facebook.com/DAR.SARZAMIN.MAN/photos/a.223808361110480.1073741828.162546150570035/449772241847423/?type=1', 'https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/s130x130/10428456_449772241847423_5558787477354393136_n.jpg?oh=c380dccb8f9502c5893ff5c354887a82&oe=558DBA24&__gda__=1435432898_93222d0a220fb3548df2151f42b2276d', NULL, NULL, NULL, 'آنکه با خود حرف می زند دیوانه نیست، او عاقلترین است\n\nفیودور داستایفسکی', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104259, 50521, '1498280649_10203589553088252', NULL, '1498280649', 'Sarah Poormohammad', NULL, NULL, NULL, NULL, NULL, NULL, 'استاد شریف ما ،بعد از دادن آمار ده درصدی بیکاری بین افرادتحصیل نکرده و چهل درصدی بین افراد تحصیل کرده و آمار خیره کننده دیگری فرمودند که خب نتیجه چی میشه؟ جوون تحصیل کرده به جای کار تولیدی میره میشینه خونه پیش مادرو پدرش میگه من تبلت میخوام من لپتاپ میخوام.جلو اینترنت میشینه و میگه من زن میخوام و نوشابه میخوام :) قضاوت با شماست.....', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104260, 50362, '600220836_10153063548700837', NULL, '600220836', 'Maryam Eslami', 'Maryam Eslami with Masih Ferdosian and 8 others', 'https://www.facebook.com/photo.php?fbid=10153066203010837&set=a.10151378609165837.534269.600220836&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/s130x130/10502192_10153066203010837_6664239030613239224_n.jpg?oh=fbadeadd337e067695e9a33f3ffe0b9b&oe=558C0163', NULL, NULL, NULL, '"Pink city" :)\nindoor soccer tournament! ⚽️', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104261, 50613, '100001518773986_862574207136530', NULL, '100001518773986', 'So Gol Sh', 'So Gol Sh shared Hanif Omranzadeh''s photo.', 'https://www.facebook.com/Hanif5555/photos/a.114198355280942.10612.112949928739118/949817348385701/?type=1', 'https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/s130x130/1503947_949817348385701_2019586974187480099_n.jpg?oh=b95ab8f30f17ff8495cd9b1a6a8be660&oe=55744950&__gda__=1433621207_72fe9ba16f3778cdc0dbcda3dfa139f7', NULL, 'Hanif Omranzadeh', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104262, NULL, '112949928739118_949817348385701', NULL, '112949928739118', 'Hanif Omranzadeh', NULL, 'https://www.facebook.com/Hanif5555/photos/a.114198355280942.10612.112949928739118/949817348385701/?type=1', 'https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/s130x130/1503947_949817348385701_2019586974187480099_n.jpg?oh=b95ab8f30f17ff8495cd9b1a6a8be660&oe=55744950&__gda__=1433621207_72fe9ba16f3778cdc0dbcda3dfa139f7', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104263, 50613, '100001518773986_861915043869113', NULL, '100001518773986', 'So Gol Sh', 'So Gol Sh changed her profile picture.', 'https://www.facebook.com/photo.php?fbid=861915023869115&set=a.143920345668590.28264.100001518773986&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/p130x130/11044606_861915023869115_3598011590741121453_n.jpg?oh=d535aab462cc631887a5cbb154cbe7fc&oe=5579BCF4', NULL, 'So Gol Sh', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104264, 50388, '725354634_10152888558134635', NULL, '725354634', 'John Espinosa', NULL, NULL, NULL, NULL, NULL, NULL, 'My study was approved! I am officially most likely not going to scar anyone with my research.', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104265, 50429, '1144424634_10206003294858493', NULL, '1144424634', 'Erfan Zamanian', NULL, 'https://www.youtube.com/watch?v=8as_BN5h5YQ', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQByYdOqxtX9Gozb&w=130&h=130&url=http%3A%2F%2Fi.ytimg.com%2Fvi%2F8as_BN5h5YQ%2Fhqdefault.jpg&cfs=1', 'https://www.youtube.com/embed/8as_BN5h5YQ?autoplay=1', 'Arvo Pärt. Fur Alina.', 'Arvo Pärt. Fur Alina.', '"A need to concentrate on each sound, so that every blade of grass would be as important as a flower"\n\n- Arvo Pärt\n\nhttps://www.youtube.com/watch?v=8as_BN5h5YQ', 159, '0000-00-00 00:00:00', NULL, NULL, 'video', '', '', '', '', '', '', 0, 0, 0, ''),
(104266, 50470, '1272083567_10203745327734981', NULL, '1272083567', 'Parisa Khanipour', NULL, 'http://bjorklab.psych.ucla.edu/research.html', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQAasJxP8N07i3nI&w=130&h=130&url=http%3A%2F%2Fbjorklab.psych.ucla.edu%2Fimages%2FBanner.jpg&cfs=1', NULL, 'Bjork Learning and Forgetting Lab - Research', 'I. Retrieval as a Memory Modifier The testing effect Retrieval-induced forgetting New theory of disuse II. How We Learn versus How We Think We Learn: Desirable Difficulties in Theory and Practice Introduction to desirable difficulties Spacing Generation Interleaving Perceptual desirable difficulties…', 'Had to read this for a seminar today, and thought of the Wikipedia challenge and some of the topics you have chosen these days. It''s a very interesting and easy read about how we learn.', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104267, 50595, '100000998093761_864398330270095', NULL, '100000998093761', 'Minoo Roghani', NULL, 'https://www.facebook.com/photo.php?fbid=864398313603430&set=p.864398313603430&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/p130x130/10858504_864398313603430_1075558247874056185_n.jpg?oh=e25a29ec6ed929b8951e0f5b1ce6a0ec&oe=55721731', NULL, NULL, NULL, 'تولدت مبارك مهديه جون، انشاالله هميشه شاد و سلامت باشى.', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104268, 50613, '100001518773986_862674913793126', NULL, '100001518773986', 'So Gol Sh', 'So Gol Sh shared ‎مرکز مشاوره خانواده و روانشناسی معین‎''s photo.', 'https://www.facebook.com/137710462980574/photos/a.139569116128042.37494.137710462980574/792873794130901/?type=1', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/s130x130/10155087_792873794130901_5009582815896337000_n.jpg?oh=3c53031e60c76956705fbbd04558fdcd&oe=55716FAE', NULL, 'مرکز مشاوره خانواده و روانشناسی معین', 'مرکز مشاوره خانواده و روانشناسی معین - مالزی\nمرکز مشاوره جنسی معین- مالزی Center of Sexology\nمن کیستم؟', NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104269, NULL, '137710462980574_792873794130901', NULL, '137710462980574', 'مرکز مشاوره خانواده و روانشناسی معین', NULL, 'https://www.facebook.com/137710462980574/photos/a.139569116128042.37494.137710462980574/792873794130901/?type=1', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/s130x130/10155087_792873794130901_5009582815896337000_n.jpg?oh=3c53031e60c76956705fbbd04558fdcd&oe=55716FAE', NULL, NULL, NULL, 'مرکز مشاوره خانواده و روانشناسی معین - مالزی\nمرکز مشاوره جنسی معین- مالزی Center of Sexology\nمن کیستم؟', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104270, 50396, '770173881_10152848730088882', NULL, '770173881', 'Monire Montazeri', 'Monire Montazeri with Shabnam Varshoi', 'https://www.facebook.com/photo.php?fbid=10152848730098882&set=a.10151576261613882.1073741828.770173881&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/p130x130/11061774_10152848730098882_3760426477314521594_n.jpg?oh=ac8edbd895eec0b33a87fe1a68e6b50a&oe=5586A1ED', NULL, 'monire on Instagram: “.\nمیگم موبایلت خراب میشه که\nمیگه باس بندازمش دور\n#شبنم #معماری_گلین #ضربی #پشفته”', '‫. میگم موبایلت خراب میشه که میگه باس بندازمش دور #شبنم #معماری_گلین #ضربی #پشفته‬', '.\nمیگم موبایلت خراب میشه که\nمیگه باس بندازمش دور\n#شبنم #معماری_گلین #ضربی #پشفته', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104271, 50721, '100005956901117_348811671994060', NULL, '100005956901117', 'Kevin Hamilton', NULL, 'https://www.youtube.com/watch?v=OKPC-T3jjRg', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQC54ZAXIBFsK6SI&w=130&h=130&url=http%3A%2F%2Fi.ytimg.com%2Fvi%2FOKPC-T3jjRg%2Fhqdefault.jpg&cfs=1', 'https://www.youtube.com/embed/OKPC-T3jjRg?autoplay=1', 'PS22 Chorus "Jóga" by Björk', 'http://ps22chorus.blogspot.com http://facebook.com/ps22chorus http://twitter.com/ps22chorus Coming to you live from PS22, here''s yet another amazing accompli...', 'oof those MOMA reviews. But here''s a great cover.\nhttps://www.youtube.com/watch?v=OKPC-T3jjRg', 159, '0000-00-00 00:00:00', NULL, NULL, 'video', '', '', '', '', '', '', 0, 0, 0, ''),
(104272, 50613, '100001518773986_861894007204550', NULL, '100001518773986', 'So Gol Sh', 'So Gol Sh shared Farhad Majidi''s photo.', 'https://www.facebook.com/F7Majidi.Captain.Fantasitc/photos/a.421104604593224.82430.421103391260012/832122893491391/?type=1', 'https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/s130x130/11058416_832122893491391_4544487656364034508_n.jpg?oh=5e2a6be59a08c753cfe1e9dfe9cd4a50&oe=55789EF0&__gda__=1435246614_d0210b5ceec6affe5d16efcacae5defb', NULL, 'Farhad Majidi', NULL, 'kapitane ghalbha', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104273, NULL, '421103391260012_832122893491391', NULL, '421103391260012', 'Farhad Majidi', NULL, 'https://www.facebook.com/F7Majidi.Captain.Fantasitc/photos/a.421104604593224.82430.421103391260012/832122893491391/?type=1', 'https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/s130x130/11058416_832122893491391_4544487656364034508_n.jpg?oh=5e2a6be59a08c753cfe1e9dfe9cd4a50&oe=55789EF0&__gda__=1435246614_d0210b5ceec6affe5d16efcacae5defb', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104274, 50349, '542988476_10152847371728477', NULL, '542988476', 'Kellie Warren Penn', NULL, 'http://www.zulily.com/invite/kpenn360', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQApPATADdhU50xJ&w=130&h=130&url=http%3A%2F%2Fmedia.zulily.com%2Fimages%2Fzulily_logo_highres_on-purple-square.png&cfs=1', NULL, 'You''re invited to zulily', 'Come shop with me at zulily! They have new things every day--it''s like a treasure trunk of cute stuff up to 70% off. Membership is free and I think you''ll really like it.', 'American Girl is on  Zulily today!  http://www.zulily.com/invite/kpenn360', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104275, 50646, '100002303489202_792783357475106', NULL, '100002303489202', 'Mina Khd', NULL, 'http://www.yektube.net/boye-eydi-farhad_553cf1f8a.html', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQA9QQr1KTVIPm87&w=130&h=130&url=http%3A%2F%2Fi.ytimg.com%2Fvi%2FY4HXoXNtnYE%2F0.jpg&cfs=1&sx=0&sy=0&sw=360&sh=360', NULL, 'Boye eydi - Farhad', 'Old Persian Music...', 'دلم ایران میخواد... انصافا عید، فقط ایرانه که ادم شور و شادی و هیجان داره :"(', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104276, 50413, '1059115259_10204733949082798', NULL, '1059115259', 'Nafise Syd', 'Nafise Syd updated her cover photo.', 'https://www.facebook.com/photo.php?fbid=10204733947202751&set=a.2603877890422.2130686.1059115259&type=1', 'https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/q82/s130x130/11058553_10204733947202751_1165650340651037815_n.jpg?oh=727043201a851ae5213544ccbe4e7a98&oe=55BA8241&__gda__=1434828231_5aab2149ee31eb9104a1c0dec26ff76f', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104277, 50702, '100004570956939_419686818193680', NULL, '100004570956939', 'Sepideh Najafi', 'Sepideh Najafi changed her profile picture.', 'https://www.facebook.com/photo.php?fbid=419686791527016&set=a.103448593150839.8056.100004570956939&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/p130x130/11041730_419686791527016_5728639298850897149_n.jpg?oh=e26f558862c427f9a1e2cc2fed7dfbd4&oe=558FFAAD', NULL, 'Sepideh Najafi', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104278, 50396, '770173881_10152848730088882', NULL, '770173881', 'Monire Montazeri', NULL, 'https://www.facebook.com/photo.php?fbid=10152848736943882&set=a.10151576261613882.1073741828.770173881&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/p130x130/10941036_10152848736943882_851379059084120505_n.jpg?oh=5ea74fc416c4d979bb57018a52b2c446&oe=558289D0', NULL, 'monire on Instagram: “آسمان مال من است\nامروز، جشنواره معماری گلین”', '‫آسمان مال من است امروز، جشنواره معماری گلین‬', 'آسمان مال من است\nامروز، جشنواره معماری گلین', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104279, 50409, '1054515959_10204642645960124', NULL, '1054515959', 'Mohammad Ghodsi', 'Mohammad Ghodsi added a new photo.', 'https://www.facebook.com/photo.php?fbid=10204642631959774&set=a.1086757243201.2015626.1054515959&type=1', 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/s130x130/1506974_10204642631959774_5931920691394435257_n.jpg?oh=34f838cf7221bc80e6c8717b7bc13186&oe=5588B0FF&__gda__=1433613652_68b28c4f1ac7c73fd89b7e1dd1b574d4', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104280, 50384, '693924916_10153179810419917', NULL, '693924916', 'Naeemeh Omidvar', 'Naeemeh Omidvar updated her cover photo.', 'https://www.facebook.com/photo.php?fbid=10153179809979917&set=a.10150679288704917.413038.693924916&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/s130x130/11038796_10153179809979917_2529370984533471887_n.jpg?oh=1e90e4dc0292e1a2439aa8401cec043d&oe=55BE42BA', NULL, NULL, NULL, ':)', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104281, 50481, '1298465597_10203865280694610', NULL, '1298465597', 'Sadaf Tayefeh', 'Sadaf Tayefeh and 2 others were tagged in Nasrin Hosseini''s photos.', 'https://www.facebook.com/photo.php?fbid=10205147270113504&set=p.10205147270113504&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/s130x130/10277063_10205147270113504_176227047800887786_n.jpg?oh=e882b30fe90742d1f33c58c91e2e808b&oe=558C695E', NULL, 'Nasrin', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104282, NULL, '1597285221_10205147270113504', NULL, '1597285221', 'Nasrin Hosseini', 'Nasrin Hosseini is with Babak Behzad and 11 others.', 'https://www.facebook.com/photo.php?fbid=10205147270113504&set=p.10205147270113504&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/s130x130/10277063_10205147270113504_176227047800887786_n.jpg?oh=e882b30fe90742d1f33c58c91e2e808b&oe=558C695E', NULL, 'Photos of Sadaf and 2 other friends', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104283, 50523, '1528065758_10206253174678120', NULL, '1528065758', 'Farz Aneh', 'Farz Aneh updated her cover photo.', 'https://www.facebook.com/photo.php?fbid=10203423253971871&set=p.10203423253971871&type=1', 'https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/q89/s130x130/1958218_10203423253971871_1509050480_n.jpg?oh=6e4c4159df1de281e27e317bdcc75869&oe=55834039&__gda__=1434282677_771bd63b77c4bed730bd409a6189039a', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104284, 50396, '770173881_10152848730088882', NULL, '770173881', 'Monire Montazeri', NULL, 'https://www.facebook.com/photo.php?fbid=10152848736743882&set=a.10151576261613882.1073741828.770173881&type=1', 'https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/p130x130/1898250_10152848736743882_7910322833464402975_n.jpg?oh=6918671b1de0be95323ecf843831e054&oe=558B0D0A&__gda__=1434201307_cc8b2cb6e096673800f59ab276045ad4', NULL, 'monire on Instagram: “.\n#ساقی و #چادر_قجری و سعی در #حفظ_اسلام\n#یزد و #ساباط های #بافت_قدیمی ِ #کوچه_سهل_بن_علی و #دانشکده_هنر_و_معماری و #موتور هاش”', '‫. #ساقی و #چادر_قجری و سعی در #حفظ_اسلام #یزد و #ساباط های #بافت_قدیمی ِ #کوچه_سهل_بن_علی و #دانشکده_هنر_و_معماری و #موتور هاش‬', '.\n#ساقی و #چادر_قجری و سعی در #حفظ_اسلام\n#یزد و #ساباط های #بافت_قدیمی ِ #کوچه_سهل_بن_علی و #دانشکده_هنر_و_معماری و #موتور هاش', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104285, 50379, '679797505_10153630274727506', NULL, '679797505', 'Mahdie Jadaliha', NULL, NULL, NULL, NULL, NULL, NULL, 'Happy birthday Mahdie joon!', 159, '0000-00-00 00:00:00', NULL, NULL, 'status', '', '', '', '', '', '', 0, 0, 0, ''),
(104286, 50396, '770173881_10152848730088882', NULL, '770173881', 'Monire Montazeri', NULL, 'https://www.facebook.com/photo.php?fbid=10152848735073882&set=a.10151576261613882.1073741828.770173881&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xtf1/v/t1.0-9/p130x130/11012871_10152848735073882_3343559521253528016_n.jpg?oh=9806503fed0f77400f69dab4192987b5&oe=558DAE5B', NULL, 'monire on Instagram: “امروز به بهانه ی ورودی های جدید رشته ی نقاشی ۱. دقت کردین حراست چه ملایم شده؟ انگار دیگه اجازه ی گیر دادن ندارن، از حالتِ پاچه گیری خارج…”', '‫امروز به بهانه ی ورودی های جدید رشته ی نقاشی ۱. دقت کردین حراست چه ملایم شده؟ انگار دیگه اجازه ی گیر دادن ندارن، از حالتِ پاچه گیری خارج شده به حالت "عجیجم شیلنگِ آب جیزه" درآمده اند. ۲. یکی به ما بگه به غیر از حیاطِ سلف (سیما رسولیان - ورزش) کجای دانشکده دوربین مدار بسته گذاشتن؟ حداقل تکلیفمون روشن شه کجاها جیزه :دی ۳. هر سال که میگذره این صفریا سوسولتر و بچه ننه تر و پررو تر میشن! امسال که سی نفر هم بودن و قشنگ سال بالاییاشون رو میذاشتن تو جیبشون. ۴. هیچ وقت با صفریا سگ نبودم، ولی انگار لازمه ی حساب بردن اینه که دائم تحقیرشون کنی. قبلا سال بالایی بودن یه حرمتی داشت ... حیف که این روزها کسی حرمتها رو نگه نمیداره.‬', 'امروز به بهانه ی ورودی های جدید رشته ی نقاشی\n۱. دقت کردین حراست چه ملایم شده؟ انگار دیگه اجازه ی گیر دادن ندارن، از حالتِ پاچه گیری خارج شده به حالت "عجیجم شیلنگِ آب جیزه" درآمده اند.\n۲. یکی به ما بگه به غیر از حیاطِ سلف (سیما رسولیان - ورزش) کجای دانشکده دوربین مدار بسته گذاشتن؟ حداقل تکلیفمون روشن شه کجاها جیزه :دی\n۳. هر سال که میگذره این صفریا سوسولتر و بچه ننه تر و پررو تر میشن! امسال که سی نفر هم بودن و قشنگ سال بالاییاشون رو میذاشتن تو جیبشون.\n۴. هیچ وقت با صفریا سگ نبودم، ولی انگار لازمه ی حساب بردن اینه که دائم تحقیرشون کنی. قبلا سال بالایی بودن یه حرمتی داشت ... حیف که این روزها کسی حرمتها رو نگه نمیداره.', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, '');
INSERT INTO `post_data` (`id`, `friend`, `post_id`, `seen`, `from_id`, `from_name`, `story`, `link`, `picture`, `source`, `name`, `description`, `message`, `user`, `created_time`, `chosen`, `changed`, `type`, `from_img`, `from_text`, `group_name`, `link_desc`, `link_domain`, `link_img_url`, `like_count`, `comment_count`, `is_share`, `video_img`) VALUES
(104287, 50343, '522610786_10152838473825787', NULL, '522610786', 'Seyed Hossein Mortazavi', 'Seyed Hossein Mortazavi updated his cover photo.', 'https://www.facebook.com/photo.php?fbid=10151416236460787&set=p.10151416236460787&type=1', 'https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/s130x130/164218_10151416236460787_745683076_n.jpg?oh=e8d596861d7780d5bf57543fad133b7a&oe=55803E70&__gda__=1434129678_ffb880dc8b49edaddc4c7ede0ac37b5d', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104288, 50474, '1279366111_10203920710039672', NULL, '1279366111', 'Shahrzad Azizaddini', 'Shahrzad Azizaddini with Saeed Arefanian at St. Louis Bread Co.', 'https://www.facebook.com/photo.php?fbid=10203920709679663&set=a.10203435934680591.1073741825.1279366111&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/s130x130/10155103_10203920709679663_8050433331803505692_n.jpg?oh=28af81e82fa2d03b618363e60a2bc2d9&oe=557B4DE8', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104289, 50454, '1213722023_10203541224230576', NULL, '1213722023', 'Mehdi Shakiba', NULL, 'http://shar.es/1fbytM', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQA34IwipSMvd-48&w=130&h=130&url=http%3A%2F%2Fbazgasht.info%2Fimg%2Ficon1.png&cfs=1', NULL, 'انگیزه‌ها و موانع بازگشت به ایران', 'بسیاری از ما که در خارج از ایران مشغول تحصیل و زندگی هستیم، دغدغه‌ی بازگشت به ایران را داریم و به آن به طور جدی فکر می‌کنیم. تصمیم برای ماندن و یا برگشتن برای بسیاری از ما تصمیم دشواری است چرا که عوامل متعددی در این تصمیم گیری نقش دارند و هر یک از این عوامل برای افراد مختلف وزنهای متفاوتی دارند. بعد…', '"در پاییز ۱۳۹۳ یک مطالعه‌ی آماری انجام دادیم که مخاطب اصلی آن ایرانیان تحصیل کرده‌ (و یا در حال تحصیل) در خارج از کشور بودند. در این نظرسنجی بیش از ۴۵۰۰ نفر دانشجویان و فارغ التحصیلان ایرانی خارج از کشور شرکت کردند و دغدغه های خود را شرح دادند. \nنتیجه‌ی تحقیق در این وب‌گاه منتشر شده است."', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104290, 50486, '1328081627_10206327161961090', NULL, '1328081627', 'Zahra Hooshmand', NULL, 'http://bit.ly/1wnUpqx', 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQAlw2yyikOvvUTp&w=130&h=130&url=https%3A%2F%2Fscontent-dfw.xx.fbcdn.net%2Fhphotos-xap1%2Ft31.0-8%2Fs720x720%2F1654886_10152589816252522_5205828987471082176_o.jpg&cfs=1&sx=224&sy=0&sw=496&sh=496', NULL, 'Iran Foreign Minister Javad Zarif explains international law to Senate Republicans', 'The next time Republicans in the Senate try to explain treaties and the U.S. Constitution to Iranian officials, they may want to pick someone other than a foreign minister with a masters and PhD in international relations from the University of Denver, plus two degrees from San Francisco State Unive…', 'Don''t try to explain treaties to a man with a PhD in international relations from the University of Denver:', 159, '0000-00-00 00:00:00', NULL, NULL, 'link', '', '', '', '', '', '', 0, 0, 0, ''),
(104291, 50388, '725354634_10152884625199635', NULL, '725354634', 'John Espinosa', 'John Espinosa updated his cover photo.', 'https://www.facebook.com/photo.php?fbid=10152884624854635&set=a.10150679710459635.398778.725354634&type=1', 'https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/s130x130/11042995_10152884624854635_5053756472439506841_n.jpg?oh=89920a811efbdd4fdb94bc3469e6d795&oe=557BDB7C&__gda__=1433989922_67dc8bb2542f88f5e33322e5c1e3214d', NULL, NULL, NULL, 'Locks on a bridge in Köln to commerate marriages.', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104292, 50506, '1412620612_10206298655771271', NULL, '1412620612', 'Amir Amirzadeh', 'Amir Amirzadeh changed his profile picture.', 'https://www.facebook.com/photo.php?fbid=10206298655411262&set=a.1599786680553.2080961.1412620612&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/p130x130/11009341_10206298655411262_8862566839706985738_n.jpg?oh=8d115ec7bd96900ec6ce7fd3e435e33b&oe=55BE23D2', NULL, 'Amir Amirzadeh', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104293, 50491, '1343478044_10206283973321914', NULL, '1343478044', 'Soroor Laffafchi', 'Soroor Laffafchi updated her cover photo.', 'https://www.facebook.com/photo.php?fbid=10206199688134837&set=p.10206199688134837&type=1', 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/s130x130/988477_10206199688134837_6612511792367797526_n.jpg?oh=c869494ff2ba1dfb27c600977c8d9ada&oe=558F7D8C&__gda__=1435462332_12006ea348bab3c5b25337bd5c451950', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104294, 50654, '100002522763530_821375064623245', NULL, '100002522763530', 'Zahra Fattahi', 'Zahra Fattahi was tagged in Moeinreza Ghafoory''s photo.', 'https://www.facebook.com/photo.php?fbid=10203394490965481&set=p.10203394490965481&type=1', 'https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/s130x130/10644971_10203394490965481_6265546646152902201_n.jpg?oh=b0977e612f3ba424b6188658663c6601&oe=55836DC2&__gda__=1434134996_aba55931dd731cb9eb60faf87b913ddf', NULL, 'Moeinreza', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104295, NULL, '1308065634_10203394490965481', NULL, '1308065634', 'Moeinreza Ghafoory', 'Moeinreza Ghafoory was with Zahra Fattahi and 3 others.', 'https://www.facebook.com/photo.php?fbid=10203394490965481&set=p.10203394490965481&type=1', 'https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/s130x130/10644971_10203394490965481_6265546646152902201_n.jpg?oh=b0977e612f3ba424b6188658663c6601&oe=55836DC2&__gda__=1434134996_aba55931dd731cb9eb60faf87b913ddf', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104296, 50662, '100003080762000_719546294824723', NULL, '100003080762000', 'Mahshid Yassaei', 'Mahshid Yassaei uploaded a new video: ‎بهار بهار باز اومده دوباره‎.', 'https://www.facebook.com/video.php?v=719546294824723', 'https://fbcdn-vthumb-a.akamaihd.net/hvthumb-ak-xpf1/v/t15.0-10/s130x130/11048799_719546601491359_719546294824723_15026_1188_b.jpg?oh=a96d83cb6be8c2b1db73e34f9b5067b8&oe=55B948AB&__gda__=1434794568_a9592d5efb3692fe886b75995112db37', 'https://scontent.xx.fbcdn.net/hvideo-xpa1/v/t42.1790-2/10991891_719546551491364_2006424170_n.mp4?rl=307&vabr=171&oh=72127b8b1f4c3426fa494c3b792773e8&oe=5502B75E', 'بهار بهار باز اومده دوباره', NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'video', '', '', '', '', '', '', 0, 0, 0, ''),
(104297, 50342, '522563219_10152875656138220', NULL, '522563219', 'Amin Fazli', 'Amin Fazli was tagged in Elham Bagheri''s photo.', 'https://www.facebook.com/photo.php?fbid=10153097817742829&set=p.10153097817742829&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/s130x130/11050171_10153097817742829_3861201152157529667_n.jpg?oh=a8bb8db0a829095479213987ac424025&oe=557CE971', NULL, 'Elham', 'دوستاي خوب فرزانگاني و شهيد سلطاني\nخيريه ي خانم سبزه پرور كه دويست خانواده رو تحت پوشش دارن براي عيد شديدا احتياج به كمك مالي داره .دوستاني كه تمايل به كمك دارن لطفا مبالغشون رو به اين حساب بانک تجارت افسانه سبزه پرور \n6273 5310 9039 3276 واريز كنن و اسم و مبلغ رو به من خبر بدن.از همتون پيشاپيش ممنونم\nلطفا به بقيه هم اطلاع رساني كنيد', NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104298, NULL, '644627828_10153097817742829', NULL, '644627828', 'Elham Bagheri', NULL, 'https://www.facebook.com/photo.php?fbid=10153097817742829&set=p.10153097817742829&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/s130x130/11050171_10153097817742829_3861201152157529667_n.jpg?oh=a8bb8db0a829095479213987ac424025&oe=557CE971', NULL, NULL, NULL, 'دوستاي خوب فرزانگاني و شهيد سلطاني\nخيريه ي خانم سبزه پرور كه دويست خانواده رو تحت پوشش دارن براي عيد شديدا احتياج به كمك مالي داره .دوستاني كه تمايل به كمك دارن لطفا مبالغشون رو به اين حساب بانک تجارت افسانه سبزه پرور \n6273 5310 9039 3276 واريز كنن و اسم و مبلغ رو به من خبر بدن.از همتون پيشاپيش ممنونم\nلطفا به بقيه هم اطلاع رساني كنيد', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104299, 50595, '100000998093761_864398330270095', NULL, '100000998093761', 'Minoo Roghani', NULL, 'https://www.facebook.com/photo.php?fbid=864398313603430&set=p.864398313603430&type=1', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/p130x130/10858504_864398313603430_1075558247874056185_n.jpg?oh=e25a29ec6ed929b8951e0f5b1ce6a0ec&oe=55721731', NULL, NULL, NULL, 'تولدت مبارك مهديه جون، انشاالله هميشه شاد و سلامت باشى.', 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104300, 50491, '1343478044_10206283973321914', NULL, '1343478044', 'Soroor Laffafchi', 'Soroor Laffafchi updated her cover photo.', 'https://www.facebook.com/photo.php?fbid=10206199688134837&set=p.10206199688134837&type=1', 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/s130x130/988477_10206199688134837_6612511792367797526_n.jpg?oh=c869494ff2ba1dfb27c600977c8d9ada&oe=558F7D8C&__gda__=1435462332_12006ea348bab3c5b25337bd5c451950', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104301, 50491, '1343478044_10206283973321914', NULL, '1343478044', 'Soroor Laffafchi', 'Soroor Laffafchi updated her cover photo.', 'https://www.facebook.com/photo.php?fbid=10206199688134837&set=p.10206199688134837&type=1', 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/s130x130/988477_10206199688134837_6612511792367797526_n.jpg?oh=c869494ff2ba1dfb27c600977c8d9ada&oe=558F7D8C&__gda__=1435462332_12006ea348bab3c5b25337bd5c451950', NULL, NULL, NULL, NULL, 159, '0000-00-00 00:00:00', NULL, NULL, 'photo', '', '', '', '', '', '', 0, 0, 0, ''),
(104302, NULL, NULL, NULL, '100003215475334', NULL, NULL, 'https://www.facebook.com/photo.php?fbid=10205854854188920&set=a.10205854820908088.1073741829.1184943952&type=1', 'https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/s130x130/10432479_10205854854188920_922589041296027409_n.jpg?oh=cd2dbf1a5906f689373fbfb305e8e433&oe=55707F9C&__gda__=1434532151_833c7315aaf9ce658e00a11b1ae96c1d', NULL, '100003215475334', NULL, 'some text content', 159, '1970-01-17 05:19:40', NULL, NULL, NULL, 'http://fb.com/pic', 'XYZ shared something', 'CS', 'No Description', 'flickr', 'http://flickr.com/xyz', 20, 30, 1, 'http://youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fbid` varchar(30) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fbid`, `name`, `start_time`, `end_time`, `code`, `created_at`) VALUES
(159, '100002052515858', NULL, '2015-03-08 00:00:00', '2015-03-11 00:54:11', 'lbvuLN', '2015-03-11 00:54:19');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`friend`) REFERENCES `friend` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_data`
--
ALTER TABLE `post_data`
  ADD CONSTRAINT `post_data_ibfk_1` FOREIGN KEY (`friend`) REFERENCES `friend` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_data_ibfk_3` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
