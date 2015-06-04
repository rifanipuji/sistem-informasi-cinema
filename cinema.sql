-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2015 at 02:06 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `detil_jadwal`
--

DROP TABLE IF EXISTS `detil_jadwal`;
CREATE TABLE IF NOT EXISTS `detil_jadwal` (
  `kd_jadwal` int(11) NOT NULL,
  `kd_film` int(11) NOT NULL,
  `studio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detil_jadwal`
--

INSERT INTO `detil_jadwal` (`kd_jadwal`, `kd_film`, `studio`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(1, 5, 5),
(2, 1, 1),
(2, 2, 2),
(2, 3, 3),
(2, 4, 4),
(2, 5, 5),
(3, 1, 1),
(3, 2, 2),
(3, 3, 3),
(3, 4, 4),
(3, 5, 5),
(4, 1, 1),
(4, 2, 2),
(4, 3, 3),
(4, 4, 4),
(4, 5, 5),
(5, 1, 1),
(5, 2, 2),
(5, 3, 3),
(5, 4, 4),
(5, 5, 5),
(6, 1, 1),
(6, 2, 2),
(6, 3, 3),
(6, 4, 4),
(6, 5, 5),
(7, 1, 1),
(7, 2, 2),
(7, 3, 3),
(7, 4, 4),
(7, 5, 5),
(8, 1, 1),
(8, 2, 2),
(8, 3, 3),
(8, 4, 4),
(8, 5, 5),
(9, 1, 1),
(9, 2, 2),
(9, 3, 3),
(9, 4, 4),
(9, 5, 5),
(10, 1, 1),
(10, 2, 2),
(10, 3, 3),
(10, 4, 4),
(10, 5, 5),
(11, 1, 1),
(11, 2, 2),
(11, 3, 3),
(11, 4, 4),
(11, 5, 5),
(12, 1, 1),
(12, 2, 2),
(12, 3, 3),
(12, 4, 4),
(12, 5, 5),
(13, 1, 1),
(13, 2, 2),
(13, 3, 3),
(13, 4, 4),
(13, 5, 5),
(14, 1, 1),
(14, 2, 2),
(14, 3, 3),
(14, 4, 4),
(14, 5, 5),
(15, 1, 1),
(15, 2, 2),
(15, 3, 3),
(15, 4, 4),
(15, 5, 5),
(16, 1, 1),
(16, 2, 2),
(16, 3, 3),
(16, 4, 4),
(16, 5, 5),
(17, 1, 1),
(17, 2, 2),
(17, 3, 3),
(17, 4, 4),
(17, 5, 5),
(18, 1, 1),
(18, 2, 2),
(18, 3, 3),
(18, 4, 4),
(18, 5, 5),
(19, 1, 1),
(19, 2, 2),
(19, 3, 3),
(19, 4, 4),
(19, 5, 5),
(20, 1, 1),
(20, 2, 2),
(20, 3, 3),
(20, 4, 4),
(20, 5, 5),
(21, 1, 1),
(21, 2, 2),
(21, 3, 3),
(21, 4, 4),
(21, 5, 5),
(22, 1, 1),
(22, 2, 2),
(22, 3, 3),
(22, 4, 4),
(22, 5, 5),
(23, 1, 1),
(23, 2, 2),
(23, 3, 3),
(23, 4, 4),
(23, 5, 5),
(24, 1, 1),
(24, 2, 2),
(24, 3, 3),
(24, 4, 4),
(24, 5, 5),
(25, 1, 1),
(25, 2, 2),
(25, 3, 3),
(25, 4, 4),
(25, 5, 5),
(26, 1, 1),
(26, 2, 2),
(26, 3, 3),
(26, 4, 4),
(26, 5, 5),
(27, 1, 1),
(27, 2, 2),
(27, 3, 3),
(27, 4, 4),
(27, 5, 5),
(28, 1, 1),
(28, 2, 2),
(28, 3, 3),
(28, 4, 4),
(28, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `detil_jadwal1`
--

DROP TABLE IF EXISTS `detil_jadwal1`;
CREATE TABLE IF NOT EXISTS `detil_jadwal1` (
  `kd_jadwal` int(11) NOT NULL,
  `kd_film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detil_jadwal1`
--

INSERT INTO `detil_jadwal1` (`kd_jadwal`, `kd_film`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `kd_film` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `rating` varchar(10) NOT NULL,
  `ket_usia` varchar(10) NOT NULL,
  `kd_kategori` varchar(10) NOT NULL,
  `trailer` varchar(300) NOT NULL,
  PRIMARY KEY (`kd_film`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`kd_film`, `judul`, `sinopsis`, `rating`, `ket_usia`, `kd_kategori`, `trailer`) VALUES
(1, 'AVENGERS AGE OF ULTRON', 'Ultron kini menjadi musuh bersama tim Avengers. Tidak mudah bagi tim untuk membasmi Ultron disaat mereka terancam tercerai berai karena berbeda pendapat. Tim Avengers harus bisa menghentikan rencana jahat Ultron dan membangun kekuatan bersama untuk menyelamatkan bumi dari kehancuran.', '8.0', 'dewasa', '1', 'avenger.mp4'),
(2, 'TAROT', 'Julie dan Tristan adalah sepasang kekasih yang mau menikah. Berharap mendapatkan ramalan indah, mereka malah mendapatkan ramalan yang mengerikan dari seorang pembaca kartu tarot. Kartu-kartu tarot yang terbuka mengatakan bahwa akan ada yang datang dari masa lalu untuk mengambil salah satu nyawa mereka. Tristan tidak percaya dengan ramalan itu. Tapi Julie mulai memikirkannya karena rasa bersalahnya terhadap saudara kembarnya bernama Sofia yang lahir dengan muka cacat.', '2.5', 'dewasa', '4', 'tarot.mp4'),
(3, ' FAST & FURIOUS 7', 'Setelah berhasil mengalahkan Owen Shaw (Luke Evans) di film ke-6, Dominic Toretto (Vin Diesel), Brian O Conner (Paul Walker) dan kawan-kawan kini bersiap menghadapi musuh baru.\r\nKembali ke Amerika untuk menata hidup baru, Dom dan kawan-kawan kini dihadapkan dengan musuh baru yang lebih sadis. Sosok Deckard Shaw (Jason Statham) yang merupakan kakak kandung Owen menuntut balas.', '7.7', 'dewasa', '1', 'FF7.mp4'),
(4, 'THE LAZARUS EFFECT', 'Sekelompok mahasiswa kedokteran yang sedang melakukan penelitian medis secara tidak sengaja membunuh salah satu rekan mereka saat sedang melakukan percobaan pada otak. Mereka menemukan cara untuk membawa rekan mereka yang telah mati untuk hidup kembali.', '5.2', 'dewasa', '4', 'lazarus.mp4'),
(5, 'CINTA SELAMANYA', 'Fira Basuki (ATIQAH HASIHOLAN) adalah seorang penulis novel yang cukup populer dan seorang pemimpin redaksi majalah Cosmopolitan, majalah wanita kelas atas. Sosoknya berseliweran di kalangan sosialita Jakarta. Sebagai perempuan matang dengan anugerah kecantikan dan kemapanan modern serta berpendidikan tinggi, tak sulit baginya berhubungan dengan lelaki. ', '2.0', 'dewasa', '2', 'cinta.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `film_all`
--

DROP TABLE IF EXISTS `film_all`;
CREATE TABLE IF NOT EXISTS `film_all` (
  `kd_film_f` int(11) NOT NULL AUTO_INCREMENT,
  `judul_f` varchar(100) NOT NULL,
  `sinopsis_f` text NOT NULL,
  `kategori_f` varchar(20) NOT NULL,
  `rating_f` varchar(5) NOT NULL,
  `usia_f` varchar(20) NOT NULL,
  `gambar_film` varchar(300) NOT NULL,
  PRIMARY KEY (`kd_film_f`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `film_all`
--

INSERT INTO `film_all` (`kd_film_f`, `judul_f`, `sinopsis_f`, `kategori_f`, `rating_f`, `usia_f`, `gambar_film`) VALUES
(1, 'Tak Kemal Maka Tak Sayang', 'Kemal, pelajar SMU di Samarinda, berulang kali gagal dalam percintaannya, Wanita yang ia idamkan adalah Raisya, gadis tercantik di sekolahnya. Masalahnya adalah Raisya adalah kekasih Nanda), jagoan di sekolahnya. Usaha Kemal untuk menarik hati Raisya berbuntut pada duel antara dirinya dengan Nanda. Menjelang duel, Kemal berlatih dengan ayahnya yang merupakan juara nasional capoeira. Dibantu Khalil, teman… ', 'komedi', '2.3', 'semua umur', 'kemal.jpg'),
(2, 'Malam Minggu Miko Movie', 'Miko yang masih terus mencari cinta sejatinya, beserta Dovi, orang paling percaya diri yang tinggal sekontrakan dengannya dan Anca pembantu rumah tangga mereka yang setia. Miko selalu gagal setiap kali dekat dengan cewek. Rian, yang sudah berpetualang sebagai stand-up-comedian di perahu-perahu, merasa yakin kalau itu disebabkan oleh kutukan masa lalu Miko karena Rian bermimpi melihat sesuatu… ', 'komedi', '2.7', 'semua umur', 'miko.jpg'),
(3, 'Bajaj Bajuri The Movie', 'Bajuri (Ricky Harun) yang baru mendapat uang dari penjualan tanah warisan bapaknya menghadapi beberapa masalah. Problem Bajuri semakin rumit setelah Emak (Meriam Bellina) menuduh Bajuri akan kawin lagi. Tambahan lagi di pemancingan dengan tidak sengaja Bajuri meledakkan empang dengan bom ikan yang didapat Soleh (Dimas Gabra) dan Sahili (Aqshal Pradana) dari sebuah rumah kosong. Bajuri dan…', 'komedi', '1.9', 'dewasa', 'bajuri.jpg'),
(4, 'Mad Max : Fury Road', '“Mad Max : Fury Road” (2015)mengambil latar di sebuah padang pasir dimana kekacuan telah terjadi. Akibat dari kekacauan tersebut seluruh manusia harus berjuang untuk bisa mempertahankan hidup mereka. Seorang pria bernama Max (Tom Hardy), dimana hidupnya penuh dengan petualangan tak hanya itu dia juga merupakan pria yang tidak suka banyak bicara.', 'action', '8.8', 'dewasa', 'mad.jpg'),
(5, 'The Seventh Son', 'Film ini bercerita  seorang anak berumur 13 tahun bernama Thomas, anak paling bungsu dari 7 bersaudara yang belajar pada Spook. Thomas mengalami kehidupan berbahaya karena tugasnya melawan para roh dan penyihir jahat. Thomas tak menyangka ia begitu cepat menghadapi musuh sendirian dan musuhnya Ibu Malkin keluar dari persembunyiannya saat Spook sedang pergi.', 'action', '5.9', 'dewasa', 'son.jpg'),
(6, 'LDR', 'Impian CARRIE (Mentari De Marelle) pergi ke Verona, tempat kediaman Juliet, akhirnya terkabul! Dari kecil, Carrie sudah jatuh cinta dengan kisah Shakespeare Romeo and Juliet. Carrie percaya, pasti ada seorang Romeo untuknya di luar sana. Tidak disangka-sangka, di sana nasib mempertemukannya dengan DEMAS (Verrell Bramasta), seorang pemuda yang baru saja diputuskan oleh kekasihnya ALEXA (Aurelie Moremans), setelah 6 tahun mereka LDR.', 'drama', '2.0', 'dewasa', 'ldr.jpg'),
(7, 'Filososfi Kopi', '“Filosofi Kopi” (2015) bercerita tentang seorang anak petani kopi dimana sejak kecil dia dibesarkan di sebuah perkebunan kopi dia bernama Ben (Chico Jericho). Namun menginjak usia 12 tahun Ben pergi meninggalkan orang tuanya hingga dia bertemu dengan Jody (Rio Dewanto) dan keduanya pun langsung akrab dan mereka pun bersahabat baik. Ben pun di rawat dan di asuh oleh orang tua Jody hingga setelah Ben dan Jody dewasa mereka pun membangun sebuah kedai kopi dimana kedai tersebut mereka namai “Filosofi Kopi”.', 'drama', '2.2', 'semua umur', 'kopi.jpg'),
(8, 'The Cabin in The Wood', 'Lima orang sahabat sepakat untuk menghabiskan akhir pekan mereka di sebuah kabin di tengah hutan yang asri. Sekelompok remaja yang terdiri dari Dana si perawan  (Kristen Connolly), Curt si atlet(Chris Hemsworth), Jules si seksi(Anna Hutchison), Marty si mabuk(Fran Kranz) dan si pintar Holden (Jesse Williams), merasa kagum dengan keindahan dan kesederhanaan dari kabin tersebut. Sebagian besar dari mereka tidak ingin membuang-buang waktu untuk bersenang-senang di daerah yang sejuk seperti berenang di danau dan sebagainya. Hanya Marty yang agak ragu dengan kondisi kabin tersebut dan lebih memilih bersantai sambil menghisap rokok kesukaannya.', 'horror', '7.0', 'dewasa', 'cabin.jpg'),
(9, 'Oculus', 'Seorang wanita yang mencoba untuk membebaskan kakaknya, yang dihukum karena pembunuhan dengan membuktikan bahwa kejahatan itu dilakukan oleh fenomena supranatural.\r\nSepuluh tahun yang lalu, tragedi menimpa keluarga Russell, meninggalkan kehidupan saudara remaja Tim dan Kaylie selamanya berubah ketika Tim dihukum karena pembunuhan brutal orang tua mereka.', 'horror', '6.5', 'dewasa', 'oculus.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
CREATE TABLE IF NOT EXISTS `jadwal` (
  `kd_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `jam_tayang` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `HTM` int(11) NOT NULL,
  PRIMARY KEY (`kd_jadwal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`kd_jadwal`, `jam_tayang`, `hari`, `HTM`) VALUES
(1, '13:00', 'Senin', 30000),
(2, '15:45', 'Senin', 30000),
(3, '18:00', 'Senin', 30000),
(4, '20:15', 'Senin', 30000),
(5, '13:00', 'Selasa', 30000),
(6, '15:45', 'Selasa', 30000),
(7, '18:00', 'Selasa', 30000),
(8, '20:15', 'Selasa', 30000),
(9, '13:00', 'Rabu', 30000),
(10, '15:45', 'Rabu', 30000),
(11, '18:00', 'Rabu', 30000),
(12, '20:15', 'Rabu', 30000),
(13, '13:00', 'Kamis', 30000),
(14, '15:45', 'Kamis', 30000),
(15, '18:00', 'Kamis', 30000),
(16, '20:15', 'Kamis', 30000),
(17, '13:00', 'Jumat', 35000),
(18, '15:45', 'Jumat', 35000),
(19, '18:00', 'Jumat', 35000),
(20, '20:15', 'Jumat', 35000),
(21, '13:00', 'Sabtu', 40000),
(22, '15:45', 'Sabtu', 40000),
(23, '18:00', 'Sabtu', 40000),
(24, '20:15', 'Sabtu', 40000),
(25, '13:00', 'Minggu', 40000),
(26, '15:45', 'Minggu', 40000),
(27, '18:00', 'Minggu', 40000),
(28, '20:15', 'Minggu', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_film`
--

DROP TABLE IF EXISTS `kategori_film`;
CREATE TABLE IF NOT EXISTS `kategori_film` (
  `kd_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kategori_film`
--

INSERT INTO `kategori_film` (`kd_kategori`, `nama_kategori`) VALUES
(1, 'action'),
(2, 'drama'),
(3, 'komedi'),
(4, 'horror');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `kd_member` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `gambar_ktp` varchar(200) NOT NULL,
  PRIMARY KEY (`kd_member`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`kd_member`, `username`, `password`, `nama`, `alamat`, `email`, `usia`, `jenis_kelamin`, `gambar_ktp`) VALUES
(1, 'rifanipuji', 'rifanipuji', 'rifani puji', 'siwalankerto', 'rifanipujir@gmail.com', 19, 'P', ''),
(2, 'admin', 'admin', 'admin', 'surabaya', 'admin@gmail.com', 23, 'P', '861.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemesan`
--

DROP TABLE IF EXISTS `pemesan`;
CREATE TABLE IF NOT EXISTS `pemesan` (
  `kd_pemesan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemesan` varchar(30) NOT NULL,
  `nama_kursi` varchar(5) NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `kd_tiket` int(11) NOT NULL,
  PRIMARY KEY (`kd_pemesan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `pemesan`
--

INSERT INTO `pemesan` (`kd_pemesan`, `nama_pemesan`, `nama_kursi`, `gambar`, `kd_tiket`) VALUES
(1, 'rifani puji', '1C', 'ktp3.jpg', 1),
(2, 'satria', '2C', 'ktp4.jpg', 1),
(3, 'qila', '3C', 'ktp5.jpg', 1),
(4, 'tika', '1B', 'imagesb.jpg', 2),
(5, 'sri', '3C', 'amin.PNG', 3),
(6, 'dul', '3B', '', 4),
(7, 'rifanipuji', '1A', '', 5),
(8, 'rifanipuji', '1A', '', 6),
(9, 'hana', '3A', '', 7),
(10, 'rifanipuji', '1A', '', 8),
(11, 'rifanipuji', '3C', '', 9),
(12, 'aa', '4E', '', 10),
(13, 'si', '6F', '', 11),
(14, 'puji', '1A', '', 12),
(15, 'rifani', '1E', '', 13),
(16, 'qw', '1A', '', 14),
(17, 'ty', '1A', '', 15),
(18, 'ty', '1A', '', 16),
(19, 'ty', '1A', '', 17),
(20, 'ty', '1A', '', 18),
(21, 'ty', '1A', '', 19),
(22, 'ty', '1A', '', 20),
(23, 'ty', '1A', '', 21),
(24, 'ty', '1A', '', 22),
(25, 'waw', '1A', '', 23),
(26, 'waw', '1A', '', 24),
(27, 'waw', '1A', '', 25),
(28, 'waw', '1A', '', 26),
(29, 'waw', '1A', '', 27),
(30, 'waw', '1A', '', 28),
(31, 'waw', '1A', '', 29),
(32, 'waw', '1A', '', 30),
(33, 'waw', '1A', '', 31),
(34, 'wakwaw', '14E', '', 32),
(35, 'sis', '1A', '', 33),
(36, 'sis', '1A', '', 34),
(37, 'ac', '1A', '', 35),
(38, 'er', '2A', '', 35),
(39, 'af', '1A', '', 36);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

DROP TABLE IF EXISTS `tiket`;
CREATE TABLE IF NOT EXISTS `tiket` (
  `kd_tiket` int(11) NOT NULL AUTO_INCREMENT,
  `kd_pemesanan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jml_tiket` int(11) NOT NULL,
  `kd_jadwal` int(11) NOT NULL,
  `kd_film` int(11) NOT NULL,
  `kd_member` int(11) NOT NULL,
  `gambar_transfer` varchar(300) NOT NULL,
  PRIMARY KEY (`kd_tiket`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`kd_tiket`, `kd_pemesanan`, `tanggal`, `jml_tiket`, `kd_jadwal`, `kd_film`, `kd_member`, `gambar_transfer`) VALUES
(1, '551dc', '2015-05-24', 3, 25, 1, 1, 'bukti.jpg'),
(2, 'd11ca', '2015-05-23', 1, 21, 2, 1, ''),
(3, 'd4108', '2015-05-22', 1, 2, 1, 1, ''),
(4, 'a4437', '2015-05-22', 1, 20, 1, 1, '0511-0812-1019-3915_Math_Supplies_clipart_image.jpg'),
(5, '28143', '2015-05-24', 1, 28, 5, 1, 'film-tree1.jpg'),
(6, '2b3fa', '2015-05-26', 1, 8, 1, 1, 'tumblr_lqap62FK7Q1qcdtsho1_500.png'),
(7, '2032f', '2015-05-23', 1, 24, 1, 1, ''),
(8, 'f2cc7', '2015-05-23', 1, 24, 1, 1, ''),
(9, 'f6f43', '2015-05-23', 1, 5, 1, 1, ''),
(10, '83da8', '2015-05-24', 1, 2, 1, 1, ''),
(11, '4a8db', '2015-05-24', 1, 5, 1, 1, ''),
(12, 'c3657', '2015-05-25', 1, 2, 1, 1, ''),
(13, 'cad92', '2015-05-24', 1, 5, 1, 1, ''),
(14, '78726', '2015-05-24', 1, 28, 1, 1, ''),
(15, 'b8c35', '2015-05-25', 1, 1, 1, 1, ''),
(16, '7b0b5', '2015-05-25', 1, 1, 1, 1, ''),
(17, '4cbdc', '2015-05-25', 1, 1, 1, 1, ''),
(18, '56373', '2015-05-25', 1, 1, 1, 1, ''),
(19, 'cf0b2', '2015-05-25', 1, 1, 1, 1, ''),
(20, '6db37', '2015-05-25', 1, 1, 1, 1, ''),
(21, '1ed30', '2015-05-25', 1, 1, 1, 1, ''),
(22, 'a62b3', '2015-05-25', 1, 1, 1, 1, ''),
(23, '9f34b', '2015-05-24', 1, 28, 1, 1, ''),
(24, '4fa9e', '2015-05-24', 1, 28, 1, 1, ''),
(25, 'fa245', '2015-05-24', 1, 28, 1, 1, ''),
(26, 'd062e', '2015-05-24', 1, 28, 1, 1, ''),
(27, '8b331', '2015-05-24', 1, 28, 1, 1, ''),
(28, '0f64e', '2015-05-24', 1, 28, 1, 1, ''),
(29, '01b4b', '2015-05-24', 1, 28, 1, 1, ''),
(30, 'a322e', '2015-05-24', 1, 28, 1, 1, ''),
(31, 'b23c3', '2015-05-24', 1, 28, 1, 1, ''),
(32, 'ab0c2', '2015-05-24', 1, 18, 1, 1, ''),
(33, '3a994', '2015-05-24', 1, 1, 1, 1, ''),
(34, 'b27d3', '2015-05-24', 1, 1, 1, 1, ''),
(35, 'fb082', '2015-05-23', 2, 5, 1, 1, ''),
(36, 'cfd9d', '2015-05-23', 1, 2, 1, 1, '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_detiltiket`
--
DROP VIEW IF EXISTS `view_detiltiket`;
CREATE TABLE IF NOT EXISTS `view_detiltiket` (
`nama` varchar(20)
,`nama_pemesan` varchar(30)
,`tanggal` date
,`judul` varchar(50)
,`jam_tayang` varchar(10)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_jadwal`
--
DROP VIEW IF EXISTS `view_jadwal`;
CREATE TABLE IF NOT EXISTS `view_jadwal` (
`judul` varchar(50)
,`sinopsis` text
,`rating` varchar(10)
,`ket_usia` varchar(10)
,`jam_tayang` varchar(10)
,`HTM` int(11)
,`studio` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_jml_income`
--
DROP VIEW IF EXISTS `view_jml_income`;
CREATE TABLE IF NOT EXISTS `view_jml_income` (
`tanggal` date
,`income` decimal(42,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tiket`
--
DROP VIEW IF EXISTS `view_tiket`;
CREATE TABLE IF NOT EXISTS `view_tiket` (
`nama` varchar(20)
,`tanggal` date
,`judul` varchar(50)
,`jam_tayang` varchar(10)
,`jml_tiket` int(11)
,`HTM` int(11)
,`total` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tiketjual`
--
DROP VIEW IF EXISTS `view_tiketjual`;
CREATE TABLE IF NOT EXISTS `view_tiketjual` (
`tanggal` date
,`income` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Structure for view `view_detiltiket`
--
DROP TABLE IF EXISTS `view_detiltiket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detiltiket` AS select `m`.`nama` AS `nama`,`p`.`nama_pemesan` AS `nama_pemesan`,`t`.`tanggal` AS `tanggal`,`f`.`judul` AS `judul`,`j`.`jam_tayang` AS `jam_tayang` from ((((`tiket` `t` join `member` `m` on((`t`.`kd_member` = `m`.`kd_member`))) join `jadwal` `j` on((`t`.`kd_jadwal` = `j`.`kd_jadwal`))) join `film` `f` on((`t`.`kd_film` = `f`.`kd_film`))) join `pemesan` `p` on((`p`.`kd_tiket` = `t`.`kd_tiket`)));

-- --------------------------------------------------------

--
-- Structure for view `view_jadwal`
--
DROP TABLE IF EXISTS `view_jadwal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal` AS select `f`.`judul` AS `judul`,`f`.`sinopsis` AS `sinopsis`,`f`.`rating` AS `rating`,`f`.`ket_usia` AS `ket_usia`,`j`.`jam_tayang` AS `jam_tayang`,`j`.`HTM` AS `HTM`,`d`.`studio` AS `studio` from ((`film` `f` join `detil_jadwal` `d` on((`f`.`kd_film` = `d`.`kd_film`))) join `jadwal` `j` on((`d`.`kd_jadwal` = `j`.`kd_jadwal`)));

-- --------------------------------------------------------

--
-- Structure for view `view_jml_income`
--
DROP TABLE IF EXISTS `view_jml_income`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jml_income` AS select `view_tiket`.`tanggal` AS `tanggal`,sum(`view_tiket`.`total`) AS `income` from `view_tiket`;

-- --------------------------------------------------------

--
-- Structure for view `view_tiket`
--
DROP TABLE IF EXISTS `view_tiket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tiket` AS select `m`.`nama` AS `nama`,`t`.`tanggal` AS `tanggal`,`f`.`judul` AS `judul`,`j`.`jam_tayang` AS `jam_tayang`,`t`.`jml_tiket` AS `jml_tiket`,`j`.`HTM` AS `HTM`,(`t`.`jml_tiket` * `j`.`HTM`) AS `total` from (((`tiket` `t` join `member` `m` on((`t`.`kd_member` = `m`.`kd_member`))) join `jadwal` `j` on((`t`.`kd_jadwal` = `j`.`kd_jadwal`))) join `film` `f` on((`t`.`kd_film` = `f`.`kd_film`)));

-- --------------------------------------------------------

--
-- Structure for view `view_tiketjual`
--
DROP TABLE IF EXISTS `view_tiketjual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tiketjual` AS select `view_tiket`.`tanggal` AS `tanggal`,sum(`view_tiket`.`jml_tiket`) AS `income` from `view_tiket`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
