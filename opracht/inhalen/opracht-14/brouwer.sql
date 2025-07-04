-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2025 at 08:05 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bieren`
--

-- --------------------------------------------------------

--
-- Table structure for table `brouwer`
--

DROP TABLE IF EXISTS `brouwer`;
CREATE TABLE IF NOT EXISTS `brouwer` (
  `brouwcode` int NOT NULL,
  `naam` varchar(50) DEFAULT NULL,
  `land` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`brouwcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brouwer`
--

INSERT INTO `brouwer` (`brouwcode`, `naam`, `land`) VALUES
(678, 'EX-MORRELS', 'ENG'),
(679, '3 FLOYDS', 'USA'),
(680, '3 FONTEINEN', 'BEL'),
(681, '3 HORNEN', 'NED'),
(682, 'ABBAYE DE ROCS', 'BEL'),
(683, 'ABBAZIA ALPIRSBACH', 'GER'),
(684, 'ACHILLES', 'BEL'),
(685, 'ADAMBRAU', 'AUT'),
(686, 'ADDIS SCOPEL', 'ITA'),
(687, 'ADELSKRONEN', 'GER'),
(688, 'ADNAMS', 'ENG'),
(689, 'AFFLIGEM', 'BEL'),
(690, 'AGROCOOP. PIK-BECEJ', 'KRO'),
(691, 'ALBANI', 'DEN'),
(692, 'ALCATRAZ', 'USA'),
(693, 'ALESMITH', 'USA'),
(694, 'ALLOA', 'SCO'),
(695, 'ALPHAND', 'FRA'),
(696, 'ALTENMUNSTER', 'GER'),
(697, 'AMARCORD - SPRING', 'ITA'),
(698, 'AMSTEL', 'NED'),
(699, 'ANCHOR', 'USA'),
(700, 'ANDERSON VALLEY', 'USA'),
(701, 'ANHEUSER - BUSH', 'USA'),
(702, 'ANNOEULLIN', 'FRA'),
(703, 'ARCEN', 'NED'),
(704, 'ARCOBRAU', 'GER'),
(705, 'ARIZONA ROADHOUSE', 'USA'),
(706, 'ARTISANS BRASSEURS', 'BEL'),
(707, 'ARTOIS', 'BEL'),
(708, 'ASASHI', 'JAP'),
(709, 'ASH VINE', 'ENG'),
(710, 'ASIA PACIFIC', 'SING'),
(711, 'AUCHAN', 'BEL'),
(712, 'AUGUSTINER', 'GER'),
(713, 'AYING', 'GER'),
(714, 'BABB', 'ITA'),
(715, 'BADGER', 'ENG'),
(716, 'BAJA', 'USA'),
(717, 'BALADIN', 'ITA'),
(718, 'BALLARD', 'ENG'),
(719, 'BALLAST POINT', 'USA'),
(720, 'BALTIKA', 'POL'),
(721, 'BALTUS', 'USA'),
(722, 'BANDERSNATCH', 'USA'),
(723, 'BARCHESSA DI VILLA POLA', 'ITA'),
(724, 'BARNSLEY', 'ENG'),
(725, 'BASS', 'ENG'),
(726, 'BASS MUSEUM', 'ENG'),
(727, 'BATEMANS', 'ENG'),
(728, 'BAVARIA', 'BRA'),
(729, 'BAVARIA', 'NED'),
(730, 'BAVARIA - ST. PAULI', 'GER'),
(731, 'BAVIK', 'BEL'),
(732, 'BEAMISH', 'IRL'),
(733, 'BEBA', 'ITA'),
(734, 'BECKERS', 'GER'),
(735, 'BECKS', 'GER'),
(736, 'BELHAVEN', 'SCO'),
(737, 'BELHAVEN - MONKSCROFT', 'SCO'),
(738, 'BELHAVEN - TRAQUAIR HOUSE', 'SCO'),
(739, 'BELLEVUE', 'BEL'),
(740, 'BELLS', 'USA'),
(741, 'BENIFONTAINE', 'FRA'),
(742, 'BERGHOFF', 'USA'),
(743, 'BEXTRIM', 'GER'),
(744, 'BF&D', 'ITA'),
(745, 'BI-DU', 'ITA'),
(746, 'BIERARIA TSCHLIN', 'SUI'),
(747, 'BINDING', 'GER'),
(748, 'BIOS - VAN STEENBERGE', 'BEL'),
(749, 'BIOS (ABB CORSENDONK)', 'BEL'),
(750, 'BIRRIFICIO ARTIGIANO', 'ITA'),
(751, 'BIRRIFICIO DEL BORGO', 'ITA'),
(752, 'BIRRIFICIO DI COMO', 'ITA'),
(753, 'BIRRIFICIO ITALIANO', 'ITA'),
(754, 'BIRRIFICIO LODIGIANO', 'ITA'),
(755, 'BIRRIFICIO TORINO', 'ITA'),
(756, 'BIRTANG', 'BIR'),
(757, 'BLACK MOUNTAIN', 'USA'),
(758, 'BLACK SHEEP', 'ENG'),
(759, 'BLUE ANCHOR', 'ENG'),
(760, 'BOELENS', 'BEL'),
(761, 'BOHEMIA', 'MEX'),
(762, 'BOON', 'BEL'),
(763, 'BOON RAWD', 'THAI'),
(764, 'BOSTEELS', 'BEL'),
(765, 'BOSTON BEER CO.', 'USA'),
(766, 'BOSTON BEER CO.                   1', 'USA'),
(767, 'BR. FRANCHES-MONTAGNES', 'SUI'),
(768, 'BRAHMA', 'BRA'),
(769, 'BRAINS', 'WAL'),
(770, 'BRAKSPEAR', 'ENG'),
(771, 'BRAND', 'NED'),
(772, 'BRASSERIE DAMBLY', 'BEL'),
(773, 'BRASSERIE DE TAHITI', 'TAH'),
(774, 'BRASSERIES BRUXELLOISES', 'BEL'),
(775, 'BRASSERIES SEMEUSE', 'FRA'),
(776, 'BRAUHAUS FREIBERG', 'GER'),
(777, 'BRAUHAUS FREISTADT', 'AUT'),
(778, 'BRAUHAUS INGOLSTADT', 'GER'),
(779, 'BRAUHAUS NUSSDORF', 'AUT'),
(780, 'BRAUHAUS PFORZHEIM', 'GER'),
(781, 'BRECKENRIDGE', 'USA'),
(782, 'BREDA', 'NED'),
(783, 'BRINKHOFF', 'GER'),
(784, 'BRINKUS', 'GER'),
(785, 'BRITT', 'FRA'),
(786, 'BROOKLYN', 'USA'),
(787, 'BROUGHTON', 'SCO'),
(788, 'BRUNEHAUT', 'BEL'),
(789, 'BUCANERO', 'CUBA'),
(790, 'BUDVAR', 'CEC'),
(791, 'BURGERBRAU BAMBERG', 'GER'),
(792, 'BURTON BRIDGE', 'ENG'),
(793, 'BUSALLA', 'ITA'),
(794, 'BUTCOMBE', 'ENG'),
(795, 'C. SCHMIDT', 'USA'),
(796, 'CAFFREY', 'IRL'),
(797, 'CALANDA', 'SUI'),
(798, 'CALEDONIAN', 'ENG'),
(799, 'CALEDONIAN', 'SCO'),
(800, 'CALVER', 'ENG'),
(801, 'CANARDOU', 'FRA'),
(802, 'CANTILLON', 'BEL'),
(803, 'CARDINAL', 'SUI'),
(804, 'CARLING', 'CAN'),
(805, 'CARLOW', 'IRL'),
(806, 'CARLSBERG', 'DEN'),
(807, 'CARLSBERG - PORETTI', 'DEN'),
(808, 'CASTELLO DI UDINE', 'ITA'),
(809, 'CASTLEMAINE', 'AUS'),
(810, 'CELIS', 'USA'),
(811, 'CENTRAL DE CERVEJAS', 'POR'),
(812, 'CENTRALE DELLA BIRRA', 'ITA'),
(813, 'CERES', 'DEN'),
(814, 'CERV. NATIONAL DOMINICANA', 'DOM'),
(815, 'CERVECERIA HONDURENA', 'HON'),
(816, 'CERVESUR', 'PERU'),
(817, 'CERVISIA', 'ITA'),
(818, 'CEYLON', 'SHK'),
(819, 'CHARLES WELLS', 'ENG'),
(820, 'CIMES', 'FRA'),
(821, 'CITTAVECCHIA', 'ITA'),
(822, 'CNUDDE', 'BEL'),
(823, 'COBRA', 'INDIA'),
(824, 'COMMONWEALTH NY', 'USA'),
(825, 'COMPAGNIE DES 3 EPIS', 'FRA'),
(826, 'CONISTON', 'ENG'),
(827, 'COOP', 'SUI'),
(828, 'COREFF', 'FRA'),
(829, 'CORNISH', 'ENG'),
(830, 'CORONADO', 'USA'),
(831, 'COTLEIGH', 'ENG'),
(832, 'COURAGE', 'ENG'),
(833, 'CREST', 'ENG'),
(834, 'CROMBE', 'BEL'),
(835, 'DALESIDE', 'ENG'),
(836, 'DAMM', 'SPA'),
(837, 'DE BIE', 'BEL'),
(838, 'DE BLOCK', 'BEL'),
(839, 'DE CAM', 'BEL'),
(840, 'DE DOLLE BROUWERS', 'BEL'),
(841, 'DE GOUDEN BOOM', 'BEL'),
(842, 'DE HOPDUVEL', 'BEL'),
(843, 'DE KEERSMAEKER', 'BEL'),
(844, 'DE KIKVORSCH', 'NED'),
(845, 'DE KLUIS', 'BEL'),
(846, 'DE KONINK', 'BEL'),
(847, 'DE NEVE', 'BEL'),
(848, 'DE PROEF', 'BEL'),
(849, 'DE RANKE', 'BEL'),
(850, 'DE RIDDER', 'NED'),
(851, 'DE SMEDT', 'BEL'),
(852, 'DE SMEDT - CELIS', 'USA'),
(853, 'DE SMEDT (ABB AFFLIGEM)', 'BEL'),
(854, 'DE SMEDT (ABB DAULNE)', 'BEL'),
(855, 'DE SMEDT (ABB DE BROGNE)', 'BEL'),
(856, 'DE SNOECK - STRUBBE', 'BEL'),
(857, 'DE TROCH', 'BEL'),
(858, 'DEININGER KRONENBRAU', 'GER'),
(859, 'DESCHUTES', 'USA'),
(860, 'DEVENISH', 'ENG'),
(861, 'DEVENISH                          1', 'ENG'),
(862, 'DIEBELS', 'GER'),
(863, 'DINCKEL ACKER', 'GER'),
(864, 'DINKELACKER', 'GER'),
(865, 'DOGFISH HEAD', 'USA'),
(866, 'DOGFISH HEAD                      1', 'USA'),
(867, 'DOOL', 'BEL'),
(868, 'DOPPO', 'JAP'),
(869, 'DORTMUNDER ACTIEN BRAUREI', 'GER'),
(870, 'DORTMUNDER KRONEN', 'GER'),
(871, 'DORTMUNDER UNION BRAUREI', 'GER'),
(872, 'DREHER', 'ITA'),
(873, 'DRYBOROUGH', 'SCO'),
(874, 'DU BOCQ', 'BEL'),
(875, 'DU BOCQ (ABB CORSENDONK)', 'BEL'),
(876, 'DUBLIN', 'IRL'),
(877, 'DUBUISSON', 'BEL'),
(878, 'DUPONT', 'BEL'),
(879, 'DUYCK', 'FRA'),
(880, 'ECAUSSINNES', 'BEL'),
(881, 'EDER', 'GER'),
(882, 'EDWIN CHESIRE', 'SCO'),
(883, 'EGGENBERGER', 'AUT'),
(884, 'EGGENBERGER', 'SUI'),
(885, 'EGIS', 'ISL'),
(886, 'EICHBAUM', 'GER'),
(887, 'EICHOF', 'SUI'),
(888, 'EINBECKER', 'GER'),
(889, 'ELGOODS', 'ENG'),
(890, 'ELLEZELLOISE', 'BEL'),
(891, 'ELRIDGE POPE', 'ENG'),
(892, 'ENFANTS DE GAYANT', 'FRA'),
(893, 'ENGEL', 'GER'),
(894, 'ERDINGER WEISSBRAU', 'GER'),
(895, 'ERSTE KULMBACHER ACTIENB.', 'GER'),
(896, 'ESPECIALIDADES CERVECERAS', 'MEX'),
(897, 'EULER', 'GER'),
(898, 'EVANS', 'USA'),
(899, 'EVERARDS', 'ENG'),
(900, 'EXMOOR', 'ENG'),
(901, 'EX-WITHBREAD', 'ENG'),
(902, 'EYLENBOSCH', 'BEL'),
(903, 'FALKEN', 'SWE'),
(904, 'FANTOME', 'BEL'),
(905, 'FARSONS', 'MALTA'),
(906, 'FAXE', 'DEN'),
(907, 'FELDSCHLOSSCHEN', 'GER'),
(908, 'FIRKIN', 'ENG'),
(909, 'FIRKIN', 'FRA'),
(910, 'FISCHER - ADELSHOFFEN', 'FRA'),
(911, 'FLAGSHIP', 'ENG'),
(912, 'FLORISGAARDEN', 'BEL'),
(913, 'FLYING DOG', 'USA'),
(914, 'FLYING FISH', 'USA'),
(915, 'FOHRENBURGER', 'AUT'),
(916, 'FORST', 'ITA'),
(917, 'FOSTERS - COURAGE', 'AUS'),
(918, 'FOUR PEAKS', 'USA'),
(919, 'FRANKEN', 'GER'),
(920, 'FREEDOM', 'ENG'),
(921, 'FREEMINER', 'ENG'),
(922, 'FRIART', 'BEL'),
(923, 'FRUHS', 'GER'),
(924, 'FULLERS', 'ENG'),
(925, 'FURSTENBERG', 'GER'),
(926, 'GAFFEL', 'GER'),
(927, 'GALES', 'ENG'),
(928, 'GAMBRINUS', 'GER'),
(929, 'GARDE', 'GER'),
(930, 'GATZWEILER', 'GER'),
(931, 'GBP', 'ITA'),
(932, 'GEARY', 'USA'),
(933, 'GENERAL LAFAYETTE', 'USA'),
(934, 'GIBBS MEW', 'ENG'),
(935, 'GIRARDIN', 'BEL'),
(936, 'GOOSE ISLAND', 'USA'),
(937, 'GORDON BIERSCH', 'USA'),
(938, 'GRADO PLATO', 'ITA'),
(939, 'GRAND UNION', 'ENG'),
(940, 'GRANDE BRASSERIE MODERNE', 'FRA'),
(941, 'GRANDS COLS', 'FRA'),
(942, 'GREENALL WHITLEY', 'ENG'),
(943, 'GREENE KING', 'ENG'),
(944, 'GRIESKIRCHNER', 'AUT'),
(945, 'GROLSCH', 'NED'),
(946, 'GUINNESS', 'IRL'),
(947, 'GUINNESS- SAPPORO', 'JAP'),
(948, 'GULPEN - ZWARTE RUITER', 'NED'),
(949, 'GULPENER', 'BEL'),
(950, 'H. WEST', 'NED'),
(951, 'HAACHT', 'BEL'),
(952, 'HAARLEMS', 'NED'),
(953, 'HABERECKL', 'GER'),
(954, 'HACKER-PSCHORR', 'GER'),
(955, 'HALL & WOODHOUSE', 'ENG'),
(956, 'HAMPSHIRE', 'ENG'),
(957, 'HANNEN', 'GER'),
(958, 'HANS HOPF', 'GER'),
(959, 'HANSA', 'GER'),
(960, 'HANSA', 'NOR'),
(961, 'HANSSENS', 'BEL'),
(962, 'HARBOE', 'DEN'),
(963, 'HART', 'USA'),
(964, 'HARVEYS', 'ENG'),
(965, 'HARVIESTOUN', 'SCO'),
(966, 'HASEN', 'GER'),
(967, 'HEARTLAND', 'USA'),
(968, 'HEATHER ALE', 'SCO'),
(969, 'HEIDELBERGER SCHLOSSQUELL', 'GER'),
(970, 'HEINEKEN', 'ITA'),
(971, 'HEINEKEN', 'NED'),
(972, 'HELLER', 'GER'),
(973, 'HENNINGER - SIB', 'GER'),
(974, 'HERBERT WERNER', 'GER'),
(975, 'HERFORDER', 'GER'),
(976, 'HERREHHAUSER', 'GER'),
(977, 'HERRNBRAU', 'GER'),
(978, 'HET ANKER', 'BEL'),
(979, 'HGI', 'GER'),
(980, 'HIGHGATE', 'ENG'),
(981, 'HIJOS DE RIVERA', 'SPA'),
(982, 'HILDEN', 'NIRL'),
(983, 'HIRTER', 'AUT'),
(984, 'HOFBRAUHAUS', 'GER'),
(985, 'HOFBRAUHAUS FREISING', 'GER'),
(986, 'HOFMARK', 'GER'),
(987, 'HOFSTETTEN', 'AUT'),
(988, 'HOLSTEN', 'GER'),
(989, 'HOOK NORTON', 'ENG'),
(990, 'HOP BACK', 'ENG'),
(991, 'HOSL', 'GER'),
(992, 'HOUGARDEN ARTOIS', 'BEL'),
(993, 'HURLIMANN', 'SUI'),
(994, 'HUYGHE - ARTEVELDE', 'BEL'),
(995, 'I.N.P.', 'ITA'),
(996, 'ICHNUSA', 'ITA'),
(997, 'IJ', 'NED'),
(998, 'IND COOPE', 'ENG'),
(999, 'INVERALMOND', 'SCO'),
(1000, 'IRLBACHER', 'GER'),
(1001, 'JAHNS', 'GER'),
(1002, 'JEANNE DARC', 'FRA'),
(1003, 'JEANNE DARC                      1', 'FRA'),
(1004, 'JOHN MARTIN', 'ENG'),
(1005, 'JOHN MARTIN', 'SCO'),
(1006, 'JOHN SMITHS', 'ENG'),
(1007, 'JOSEPH SIGL', 'AUT'),
(1008, 'JUPILER', 'BEL'),
(1009, 'KADEWE', 'GER'),
(1010, 'KAISERBRAU', 'GER'),
(1011, 'KAISERDOM', 'GER'),
(1012, 'KALTENBERG', 'GER'),
(1013, 'KALTENHAUSEN', 'AUT'),
(1014, 'KANTERBRAU', 'FRA'),
(1015, 'KARLSBRAU', 'GER'),
(1016, 'KENYA', 'KEN'),
(1017, 'KINDL', 'GER'),
(1018, 'KING & BARNES', 'ENG'),
(1019, 'KIRIN', 'JAP'),
(1020, 'KITZMANN', 'GER'),
(1021, 'KLOSTERBRAUEREI ANDECHS', 'GER'),
(1022, 'KNEITING', 'GER'),
(1023, 'KOEPFF - ABB. WEINGARTEN', 'GER'),
(1024, 'KOMPANIA PIWOWARSKA', 'POL'),
(1025, 'KONA', 'USA'),
(1026, 'KONIG', 'GER'),
(1027, 'KRONENBOURG', 'FRA'),
(1028, 'KULMBACHER SCHWEIZERHOF', 'GER'),
(1029, 'KUNSTHUIS', 'BEL'),
(1030, 'KUPPERS', 'GER'),
(1031, 'KUR', 'GER'),
(1032, 'KYOTO', 'JAP'),
(1033, 'LA BINCHOISE', 'BEL'),
(1034, 'LA CHOUFFE', 'BEL'),
(1035, 'LA CHOULETTE', 'FRA'),
(1036, 'LA CORNUE', 'FRA'),
(1037, 'LA FABBRICA', 'ITA'),
(1038, 'LA JOLLA', 'USA'),
(1039, 'LA TRAPPE', 'BEL'),
(1040, 'LA ZARAGOZANA', 'SPA'),
(1041, 'LABATT - MORETTI', 'CAN'),
(1042, 'LAGUNITAS', 'USA'),
(1043, 'LAMBRATE', 'ITA'),
(1044, 'LANCELOT', 'FRA'),
(1045, 'LAPIN KULTA', 'FIN'),
(1046, 'LASKO', 'SLO'),
(1047, 'LAUVAUX', 'BEL'),
(1048, 'LEES', 'ENG'),
(1049, 'LEFEBVRE', 'BEL'),
(1050, 'LEFEBVRE (ABB BONNE ESP.)', 'BEL'),
(1051, 'LEFEBVRE (ABB FLOREFFE)', 'BEL'),
(1052, 'LEFT COAST', 'USA'),
(1053, 'LEFT HAND', 'USA'),
(1054, 'LIDL', 'GER'),
(1055, 'LIEFMANS', 'BEL'),
(1056, 'LINDEMANS', 'BEL'),
(1057, 'LINDEN', 'GER'),
(1058, 'LOCHER', 'SUI'),
(1059, 'LOCKWOODS', 'ITA'),
(1060, 'LOSCHER', 'GER'),
(1061, 'LOUWAEGE', 'BEL'),
(1062, 'LOWENBRAU', 'GER'),
(1063, 'M. BROWN', 'ENG'),
(1064, 'M.S. GUIBERT - INTERBREW', 'BEL'),
(1065, 'MACLAY', 'SCO'),
(1066, 'MAES', 'BEL'),
(1067, 'MAGIC HAT', 'USA'),
(1068, 'MAGNOLIA', 'USA'),
(1069, 'MAHRS', 'GER'),
(1070, 'MAISEL', 'GER'),
(1071, 'MALZMUHLE', 'GER'),
(1072, 'MANNSFIELD', 'ENG'),
(1073, 'MARQUIS DE BOSH', 'NED'),
(1074, 'MARSTONS', 'ENG'),
(1075, 'MARTENS', 'BEL'),
(1076, 'MATT', 'USA'),
(1077, 'MATTHEW BROWN', 'ENG'),
(1078, 'MAXIMILIAAN', 'NED'),
(1079, 'MC GUIRES', 'USA'),
(1080, 'MC MULLEN', 'ENG'),
(1081, 'MENABREA', 'ITA'),
(1082, 'MENDOCINO', 'USA'),
(1083, 'METEOR', 'FRA'),
(1084, 'MIBRANA', 'BEL'),
(1085, 'MILLER', 'USA'),
(1086, 'MOCTEZUMA', 'MEX'),
(1087, 'MODELO', 'MEX'),
(1088, 'MONT BLANC', 'FRA'),
(1089, 'MONTEGIOCO', 'ITA'),
(1090, 'MOORTGAT', 'BEL'),
(1091, 'MOORTGAT (ABB MAREDSOUS)', 'BEL'),
(1092, 'MORDUE', 'ENG'),
(1093, 'MORETTI', 'ITA'),
(1094, 'MORLAND', 'ENG'),
(1095, 'MOULIN DES MOINES', 'FRA'),
(1096, 'MOUSTIER-ST-MARIE', 'FRA'),
(1097, 'MURPHY - DREHER', 'IRL'),
(1098, 'MUTZIG', 'FRA'),
(1099, 'N.V. DECA', 'BEL'),
(1100, 'NEPTUN', 'DEN'),
(1101, 'NEPTUNE', 'USA'),
(1102, 'NETHERGATE', 'ENG'),
(1103, 'NEW BELGIUM', 'USA'),
(1104, 'NEW GLARUS', 'USA'),
(1105, 'NIAGARA FALLS', 'CAN'),
(1106, 'NORTH COAST', 'USA'),
(1107, 'OHANLONS', 'ENG'),
(1108, 'OAKHAM', 'ENG'),
(1109, 'OFFICINA DELLA BIRRA - BOGGIO', 'ITA'),
(1110, 'OFFICINA DELLA BIRRA - BOGGIO', 'SUI'),
(1111, 'OFFICINA DELLA BIRRA - BRESSO', 'ITA'),
(1112, 'OLD COLUMBIA', 'USA'),
(1113, 'OLD WEST', 'USA'),
(1114, 'OLPP', 'GER'),
(1115, 'OLYMPIA', 'USA'),
(1116, 'OMMEGANG', 'USA'),
(1117, 'ORANGE', 'ENG'),
(1118, 'ORANJEBOOM', 'NED'),
(1119, 'ORKNEY', 'SCO'),
(1120, 'OSTERR. BRAU AG', 'AUT'),
(1121, 'OTTAKRINGER', 'AUT'),
(1122, 'OTTER CREEK', 'ENG'),
(1123, 'OTTER CREEK', 'USA'),
(1124, 'OUD BEERSEL', 'BEL'),
(1125, 'PABST', 'USA'),
(1126, 'PAELEMAN', 'BEL'),
(1127, 'PAFFGEN', 'GER'),
(1128, 'PAINE', 'ENG'),
(1129, 'PALM', 'BEL'),
(1130, 'PALMBRAU ZORN', 'GER'),
(1131, 'PAPER CITY', 'USA'),
(1132, 'PATRIZIER', 'GER'),
(1133, 'PAULANER THOMASBRAU', 'GER'),
(1134, 'PELFORTH', 'FRA'),
(1135, 'PELICAN', 'USA'),
(1136, 'PEOPLES PINT', 'IRL'),
(1137, 'PEOPLES PINT', 'USA'),
(1138, 'PERNSTEJN', 'CEC'),
(1139, 'PERONI', 'ITA'),
(1140, 'PETES', 'USA'),
(1141, 'PIETRA', 'FRA'),
(1142, 'PINKUS MULLER', 'GER'),
(1143, 'PITFIELD', 'ENG'),
(1144, 'PIVA ISOKOVA - NIKSIC', 'KRO'),
(1145, 'PIVARA APATIN', 'KRO'),
(1146, 'PLZN (PILSEN)', 'CEC'),
(1147, 'POLSTER - MENABREA', 'GER'),
(1148, 'PORETTI', 'ITA'),
(1149, 'PORTERHOUSE', 'IRL'),
(1150, 'PORTLAND', 'USA'),
(1151, 'POSTHORN', 'NED'),
(1152, 'PRINZ', 'ITA'),
(1153, 'PUNTIGAM', 'AUT'),
(1154, 'PUSTERTALER', 'ITA'),
(1155, 'PYRAMID', 'USA'),
(1156, 'RADERMACHER', 'BEL'),
(1157, 'RAUCHENFELS', 'GER'),
(1158, 'RCH', 'ENG'),
(1159, 'REDHOOK', 'USA'),
(1160, 'REGENTEN', 'GER'),
(1161, 'REICHELBRAU', 'GER'),
(1162, 'RIDLEY', 'ENG'),
(1163, 'RIEDENBURGER', 'GER'),
(1164, 'RIEGELE', 'GER'),
(1165, 'RINGNES', 'NOR'),
(1166, 'RINGWOOD', 'ENG'),
(1167, 'RITTER', 'GER'),
(1168, 'RIVA', 'BEL'),
(1169, 'ROBINSONS', 'ENG'),
(1170, 'ROCHEFORTOISE', 'BEL'),
(1171, 'ROCK BOTTOM', 'USA'),
(1172, 'RODENBACH', 'BEL'),
(1173, 'ROGUE', 'USA'),
(1174, 'ROHRLBRAU', 'GER'),
(1175, 'ROMAN', 'BEL'),
(1176, 'ROOSTER', 'ENG'),
(1177, 'ROSEN', 'GER'),
(1178, 'ROSENBRAUREI', 'GER'),
(1179, 'ROTHAUS', 'GER'),
(1180, 'ROUTE 66', 'USA'),
(1181, 'RUDDLE', 'ENG'),
(1182, 'RULLES', 'BEL'),
(1183, 'S. BERNARDUS', 'BEL'),
(1184, 'S. LEONARD', 'FRA'),
(1185, 'S. MICHAEL', 'NOR'),
(1186, 'S. MIGUEL ESPANA', 'FIL'),
(1187, 'S. SYLVESTRE', 'FRA'),
(1188, 'SAARFURST', 'GER'),
(1189, 'SAILERBRAU', 'GER'),
(1190, 'SAINT OMER', 'FRA'),
(1191, 'SAMUEL SMITH', 'ENG'),
(1192, 'SANDLER', 'GER'),
(1193, 'SANE', 'ITA'),
(1194, 'SAPPORO', 'JAP'),
(1195, 'SARAH HUGHES', 'ENG'),
(1196, 'SBA', 'FRA'),
(1197, 'SCARAMPOLA', 'ITA'),
(1198, 'SCHAFF', 'GER'),
(1199, 'SCHAFLY', 'USA'),
(1200, 'SCHARTNER', 'AUT'),
(1201, 'SCHELDEBROUWERIJ', 'NED'),
(1202, 'SCHLOSS KALTENBERG', 'GER'),
(1203, 'SCHLOSS STARKENBERG', 'AUT'),
(1204, 'SCHLOSSB. SOLDENAU', 'GER'),
(1205, 'SCHNEIDER', 'GER'),
(1206, 'SCHWABEN', 'GER'),
(1207, 'SCOTTISH & NEWCASTLE', 'ENG'),
(1208, 'SCOTTISH & NEWCASTLE', 'SCO'),
(1209, 'SEVRES', 'FRA'),
(1210, 'SHANGAI BREWERIES', 'CINA'),
(1211, 'SHARP', 'ENG'),
(1212, 'SHEPHERD NEAME', 'ENG'),
(1213, 'SHERDEL HOF', 'GER'),
(1214, 'SHOFFERHOFER', 'GER'),
(1215, 'SIERRA NEVADA', 'USA'),
(1216, 'SILENRIEUX', 'BEL'),
(1217, 'SILLY', 'BEL'),
(1218, 'SIMMERBERG', 'GER'),
(1219, 'SINEBRYCHOFF', 'FIN'),
(1220, 'SION', 'GER'),
(1221, 'SKINNERS', 'ENG'),
(1222, 'SKOL', 'NED'),
(1223, 'SLAGHMUYLDER', 'BEL'),
(1224, 'SMILES', 'ENG'),
(1225, 'SMITHWICKS', 'IRL'),
(1226, 'SOLANA', 'USA'),
(1227, 'SONORA', 'USA'),
(1228, 'SORA LAMA', 'ITA'),
(1229, 'SPATEN', 'GER'),
(1230, 'SPENDRUPS', 'SWE'),
(1231, 'SQUATTERS', 'USA'),
(1232, 'ST. AMAND', 'FRA'),
(1233, 'ST. AUSTELL', 'ENG'),
(1234, 'ST. CHRISTOFFEL', 'NED'),
(1235, 'ST. JOHANNES BRAU', 'ITA'),
(1236, 'ST. JOZEF', 'NED'),
(1237, 'ST. MONON', 'BEL'),
(1238, 'ST. PETERS', 'ENG'),
(1239, 'STANGLBRAU', 'GER'),
(1240, 'STARBESS - ROME', 'ITA'),
(1241, 'STARBESS - ROME                   1', 'ITA'),
(1242, 'STAROBNO', 'CEC'),
(1243, 'STAROPRAMEN', 'CEC'),
(1244, 'STAUDER', 'GER'),
(1245, 'STEELHEAD', 'USA'),
(1246, 'STEIRERBRAU', 'AUT'),
(1247, 'STELVIO', 'ITA'),
(1248, 'STERKENS', 'BEL'),
(1249, 'STIEGL', 'AUT'),
(1250, 'STIFTSBRAUEREI SCHLAGL', 'AUT'),
(1251, 'STONE', 'USA'),
(1252, 'STONES', 'ENG'),
(1253, 'STRAFFE HENDRIJK', 'BEL'),
(1254, 'STRANGEWAYS', 'ENG'),
(1255, 'STROH', 'USA'),
(1256, 'SWIJNKELS', 'NED'),
(1257, 'TEIGNWORTHY', 'ENG'),
(1258, 'TEMPO', 'ISR'),
(1259, 'TENNENTS CALEDONIAN', 'SCO'),
(1260, 'TETLEY', 'ENG'),
(1261, 'THE COOPERS  YARD PUB', 'ITA'),
(1262, 'THE FROG & ROSBIF PUB', 'FRA'),
(1263, 'THE ROSE STREET BREWERY', 'SCO'),
(1264, 'THEAKSTON', 'ENG'),
(1265, 'THERESIANER', 'ITA'),
(1266, 'THIRSTY BEAR', 'USA'),
(1267, 'THURN UND TAXIS', 'GER'),
(1268, 'TIMMERMANS', 'BEL'),
(1269, 'TIMOTHY TAYLOR', 'ENG'),
(1270, 'TINIMA CAMAGUEY', 'CUBA'),
(1271, 'TITANIC', 'ENG'),
(1272, 'TOMLINSONS', 'ENG'),
(1273, 'TORRECHIARA', 'ITA'),
(1274, 'TRAPPIST ABB. ACHEL', 'BEL'),
(1275, 'TRAPPIST ABB. DE SCOURMONT', 'BEL'),
(1276, 'TRAPPIST ABB. KOENIGHOEVE', 'NED'),
(1277, 'TRAPPIST ABB. KOENIGHOEVEN', 'NED'),
(1278, 'TRAPPIST ABB. ORVAL', 'BEL'),
(1279, 'TRAPPIST ABB. ROCHEFORT', 'BEL'),
(1280, 'TRAPPIST ABB. WESTMALLE', 'BEL'),
(1281, 'TRAPPIST ABB. WESTVLETEREN', 'BEL'),
(1282, 'TRAQUAIR HOUSE', 'SCO'),
(1283, 'TRENT - S.GEMINIANO', 'ENG'),
(1284, 'TRIBBIERA', 'FRA'),
(1285, 'TRIFTERN BAUER', 'GER'),
(1286, 'TRIPLE F', 'ENG'),
(1287, 'TROLL', 'ITA'),
(1288, 'TRUMANS', 'ENG'),
(1289, 'TSINGTAO', 'CINA'),
(1290, 'TUBORG', 'DEN'),
(1291, 'TUBORG - PORETTI', 'DEN'),
(1292, 'TUCHER', 'GER'),
(1293, 'UERIGE', 'GER'),
(1294, 'UNERTL', 'GER'),
(1295, 'UNIBROUE', 'CAN'),
(1296, 'UNIBROUE', 'FRA'),
(1297, 'UNICER', 'POR'),
(1298, 'UNION', 'BEL'),
(1299, 'UNION', 'SLO'),
(1300, 'UNION DE BRASSERIES', 'FRA'),
(1301, 'UNITED BREWERIES', 'INDIA'),
(1302, 'UNSER BURGERBRAU', 'GER'),
(1303, 'UPTOWN SCOTTSDALE', 'USA'),
(1304, 'URBAN', 'DEN'),
(1305, 'USHERS', 'ENG'),
(1306, 'UTRECHTSE', 'NED'),
(1307, 'VAL DE SAMBRE', 'BEL'),
(1308, 'VAL-DIEU', 'BEL'),
(1309, 'VALHALLA', 'SCO'),
(1310, 'VALLEY BEER', 'ITA'),
(1311, 'VAN DE BOSSCHE', 'BEL'),
(1312, 'VAN DER LINDEN', 'BEL'),
(1313, 'VAN EECKE', 'BEL'),
(1314, 'VAN HONSEBROUCK', 'BEL'),
(1315, 'VAN STEENBERGE', 'BEL'),
(1316, 'VAPEUR', 'BEL'),
(1317, 'VECCHIO BIRRAIO', 'ITA'),
(1318, 'VECCHIO CALABRESE', 'ITA'),
(1319, 'VELTINS', 'GER'),
(1320, 'VER. KARTNER VILLACH', 'AUT'),
(1321, 'VERHAEGHE', 'BEL'),
(1322, 'VES GLT COMBINAT', 'GER'),
(1323, 'VICTORY', 'USA'),
(1324, 'WADWORTH', 'ENG'),
(1325, 'WARSTEINER', 'GER'),
(1326, 'WATNEY', 'ENG'),
(1327, 'WEBSTER', 'ENG'),
(1328, 'WEIHENSTEPHAN', 'GER'),
(1329, 'WELTENBURG', 'GER'),
(1330, 'WELTON DORKINGS', 'ENG'),
(1331, 'WEYERBACHER', 'USA'),
(1332, 'WHITBREAD', 'ENG'),
(1333, 'WIBROE', 'DEN'),
(1334, 'WIENINGER', 'GER'),
(1335, 'WJ KING', 'ENG'),
(1336, 'WOLF', 'ENG'),
(1337, 'WOLTERS', 'GER'),
(1338, 'WOLVERHAMPTON & DUDLEY', 'ENG'),
(1339, 'WOODFORDES', 'ENG'),
(1340, 'WUHRER', 'ITA'),
(1341, 'WUNSTER', 'ITA'),
(1342, 'WURZBURGER HOFBRAU', 'GER'),
(1343, 'WYCHWOOD', 'ENG'),
(1344, 'WYE VALLEY', 'ENG'),
(1345, 'XXX', 'USA'),
(1346, 'XXX', 'INDIA'),
(1347, 'YACHIYO', 'JAP'),
(1348, 'YAKIMA', 'USA'),
(1349, 'YOUNGS', 'ENG'),
(1350, 'ZAGREBACKE', 'KRO'),
(1351, 'ZAHRE SAURIS', 'ITA'),
(1352, 'ZHEJIANG QIANJIANG', 'CINA'),
(1353, 'ZHIGULI', 'URSS'),
(1354, 'ZYVIEC', 'POL');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
