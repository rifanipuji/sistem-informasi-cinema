-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2015 at 05:28 PM
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

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `carifilm`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `carifilm`(in judul varchar(30))
select * from film_all where judul_f=judul$$

DROP PROCEDURE IF EXISTS `income`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `income`(in tanggal_awal date, in tanggal_akhir date)
select * from view_jml_income where tanggal between tanggal_awal and tanggal_akhir$$

DROP PROCEDURE IF EXISTS `jadwal`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `jadwal`(in no_studio int)
select * from view_jadwal where studio=no_studio$$

DROP PROCEDURE IF EXISTS `jmlpemesan`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `jmlpemesan`(in kd_pemesan int, out count int)
select count(kd_pemesan) into count 
from pemesan where kd_tiket=kd_pemesan$$

DROP PROCEDURE IF EXISTS `rating`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `rating`(in rating_1 varchar(10), in rating_2 varchar(10))
select * from film_all where rating_f between rating_1 and rating_2$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `coming_soon`
--
DROP VIEW IF EXISTS `coming_soon`;
CREATE TABLE IF NOT EXISTS `coming_soon` (
`judul_f` varchar(100)
,`sinopsis_f` text
,`kategori_f` varchar(20)
,`usia_f` varchar(20)
,`status` varchar(20)
);
-- --------------------------------------------------------

--
-- Table structure for table `detil_jadwal`
--
-- Creation: May 22, 2015 at 03:33 AM
--

DROP TABLE IF EXISTS `detil_jadwal`;
CREATE TABLE IF NOT EXISTS `detil_jadwal` (
  `kd_jadwal` int(11) NOT NULL,
  `kd_film` int(11) NOT NULL,
  `studio` int(11) NOT NULL,
  KEY `kd_jadwal` (`kd_jadwal`),
  KEY `kd_film` (`kd_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `detil_jadwal`:
--   `kd_jadwal`
--       `jadwal` -> `kd_jadwal`
--   `kd_film`
--       `film` -> `kd_film`
--

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
-- Creation: May 22, 2015 at 03:29 AM
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
-- Creation: May 22, 2015 at 03:20 AM
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `kd_film` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `rating` varchar(10) NOT NULL,
  `ket_usia` varchar(10) NOT NULL,
  `kd_kategori` int(10) NOT NULL,
  `trailer` varchar(300) NOT NULL,
  `status` varchar(20) NOT NULL,
  `gambar_film` varchar(300) NOT NULL,
  `link` varchar(200) NOT NULL,
  PRIMARY KEY (`kd_film`),
  KEY `kd_kategori` (`kd_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- RELATIONS FOR TABLE `film`:
--   `kd_kategori`
--       `kategori_film` -> `kd_kategori`
--

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`kd_film`, `judul`, `sinopsis`, `rating`, `ket_usia`, `kd_kategori`, `trailer`, `status`, `gambar_film`, `link`) VALUES
(1, 'AVENGERS AGE OF ULTRON', 'Ultron kini menjadi musuh bersama tim Avengers. Tidak mudah bagi tim untuk membasmi Ultron disaat mereka terancam tercerai berai karena berbeda pendapat. Tim Avengers harus bisa menghentikan rencana jahat Ultron dan membangun kekuatan bersama untuk menyelamatkan bumi dari kehancuran.', '8.0', 'dewasa', 1, 'avenger.mp4', 'playing', 'avenger-1.jpg', 'http://www.imdb.com/title/tt2395427/?ref_=nv_sr_1'),
(2, 'TAROT', 'Julie dan Tristan adalah sepasang kekasih yang mau menikah. Berharap mendapatkan ramalan indah, mereka malah mendapatkan ramalan yang mengerikan dari seorang pembaca kartu tarot. Kartu-kartu tarot yang terbuka mengatakan bahwa akan ada yang datang dari masa lalu untuk mengambil salah satu nyawa mereka. Tristan tidak percaya dengan ramalan itu. Tapi Julie mulai memikirkannya karena rasa bersalahnya terhadap saudara kembarnya bernama Sofia yang lahir dengan muka cacat.', '6.0', 'dewasa', 1, 'tarot.mp4', 'playing', 'tarot.jpg', 'http://www.imdb.com/title/tt4451550/?ref_=fn_al_tt_1'),
(3, ' FAST & FURIOUS 7', 'Setelah berhasil mengalahkan Owen Shaw (Luke Evans) di film ke-6, Dominic Toretto (Vin Diesel), Brian O Conner (Paul Walker) dan kawan-kawan kini bersiap menghadapi musuh baru.\r\nKembali ke Amerika untuk menata hidup baru, Dom dan kawan-kawan kini dihadapkan dengan musuh baru yang lebih sadis. Sosok Deckard Shaw (Jason Statham) yang merupakan kakak kandung Owen menuntut balas.', '7.7', 'dewasa', 1, 'FF7.mp4', 'playing', 'FF7.jpg', 'http://www.imdb.com/title/tt2820852/?ref_=nv_sr_1'),
(4, 'THE LAZARUS EFFECT', 'Sekelompok mahasiswa kedokteran yang sedang melakukan penelitian medis secara tidak sengaja membunuh salah satu rekan mereka saat sedang melakukan percobaan pada otak. Mereka menemukan cara untuk membawa rekan mereka yang telah mati untuk hidup kembali.', '5.1', 'dewasa', 1, 'lazarus.mp4', 'playing', 'lazarus-1.png', 'http://www.imdb.com/title/tt2918436/?ref_=nv_sr_1'),
(5, 'CINTA SELAMANYA', 'Fira Basuki (ATIQAH HASIHOLAN) adalah seorang penulis novel yang cukup populer dan seorang pemimpin redaksi majalah Cosmopolitan, majalah wanita kelas atas. Sosoknya berseliweran di kalangan sosialita Jakarta. Sebagai perempuan matang dengan anugerah kecantikan dan kemapanan modern serta berpendidikan tinggi, tak sulit baginya berhubungan dengan lelaki. ', '2.0', 'remaja', 1, 'cinta.mp4', 'playing', 'cinta-1.jpg', 'http://www.imdb.com/');

--
-- Triggers `film`
--
DROP TRIGGER IF EXISTS `upd_film`;
DELIMITER //
CREATE TRIGGER `upd_film` AFTER UPDATE ON `film`
 FOR EACH ROW insert into log values(CONCAT('Update data ke tabel film'),now(), user())
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `film_all`
--
-- Creation: May 22, 2015 at 05:33 AM
--

DROP TABLE IF EXISTS `film_all`;
CREATE TABLE IF NOT EXISTS `film_all` (
  `kd_film_f` int(11) NOT NULL AUTO_INCREMENT,
  `judul_f` varchar(100) NOT NULL,
  `sinopsis_f` text NOT NULL,
  `kategori_f` varchar(20) NOT NULL,
  `rating_f` varchar(5) NOT NULL,
  `usia_f` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `gambar_f` varchar(300) NOT NULL,
  `trailer_f` varchar(500) NOT NULL,
  PRIMARY KEY (`kd_film_f`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `film_all`
--

INSERT INTO `film_all` (`kd_film_f`, `judul_f`, `sinopsis_f`, `kategori_f`, `rating_f`, `usia_f`, `status`, `gambar_f`, `trailer_f`) VALUES
(1, 'Tak Kemal Maka Tak Sayang', 'Kemal, pelajar SMU di Samarinda, berulang kali gagal dalam percintaannya, Wanita yang ia idamkan adalah Raisya, gadis tercantik di sekolahnya. Masalahnya adalah Raisya adalah kekasih Nanda), jagoan di sekolahnya. Usaha Kemal untuk menarik hati Raisya berbuntut pada duel antara dirinya dengan Nanda. Menjelang duel, Kemal berlatih dengan ayahnya yang merupakan juara nasional capoeira. Dibantu Khalil, teman… ', 'komedi', '2.3', 'semua umur', 'kadaluarsa', 'kemal.jpg', ''),
(2, 'Malam Minggu Miko Movie', 'Miko yang masih terus mencari cinta sejatinya, beserta Dovi, orang paling percaya diri yang tinggal sekontrakan dengannya dan Anca pembantu rumah tangga mereka yang setia. Miko selalu gagal setiap kali dekat dengan cewek. Rian, yang sudah berpetualang sebagai stand-up-comedian di perahu-perahu, merasa yakin kalau itu disebabkan oleh kutukan masa lalu Miko karena Rian bermimpi melihat sesuatu… ', 'komedi', '2.7', 'semua umur', 'kadaluarsa', 'miko.jpg', ''),
(3, 'Bajaj Bajuri', 'Bajuri (Ricky Harun) yang baru mendapat uang dari penjualan tanah warisan bapaknya menghadapi beberapa masalah. Problem Bajuri semakin rumit setelah Emak (Meriam Bellina) menuduh Bajuri akan kawin lagi.\r\n\r\nTambahan lagi di pemancingan dengan tidak sengaja Bajuri meledakkan empang dengan bom ikan yang didapat Soleh (Dimas Gabra) dan Sahili (Aqshal Pradana) dari sebuah rumah kosong. Bajuri dan Ucup (Muhadkly Acho) dituduh sebagai teroris setelah tas berisi bom tertinggal di Bank, saat Bajuri mengambil uang.', 'komedi', '1.9', 'semua umur', 'kadaluarsa', 'bajuri.jpg', ''),
(4, 'Mad Max : Fury Road', 'Mad Max : Fury Road (2015)mengambil latar di sebuah padang pasir dimana kekacuan telah terjadi. Akibat dari kekacauan tersebut seluruh manusia harus berjuang untuk bisa mempertahankan hidup mereka. Seorang pria bernama Max (Tom Hardy), dimana hidupnya penuh dengan petualangan tak hanya itu dia juga merupakan pria yang tidak suka banyak bicara.', 'action', '', 'dewasa', 'coming soon', 'mad.jpg', 'mad.mp4'),
(5, 'The Seventh Son', 'Film ini bercerita  seorang anak berumur 13 tahun bernama Thomas, anak paling bungsu dari 7 bersaudara yang belajar pada Spook. Thomas mengalami kehidupan berbahaya karena tugasnya melawan para roh dan penyihir jahat. Thomas tak menyangka ia begitu cepat menghadapi musuh sendirian dan musuhnya Ibu Malkin keluar dari persembunyiannya saat Spook sedang pergi.', 'action', '5.9', 'dewasa', 'kadaluarsa', 'son.jpg', ''),
(6, 'LDR', 'Impian CARRIE (Mentari De Marelle) pergi ke Verona, tempat kediaman Juliet, akhirnya terkabul! Dari kecil, Carrie sudah jatuh cinta dengan kisah Shakespeare Romeo and Juliet. Carrie percaya, pasti ada seorang Romeo untuknya di luar sana. Tidak disangka-sangka, di sana nasib mempertemukannya dengan DEMAS (Verrell Bramasta), seorang pemuda yang baru saja diputuskan oleh kekasihnya ALEXA (Aurelie Moremans), setelah 6 tahun mereka LDR.', 'drama', '2.0', 'remaja', 'kadaluarsa', 'ldr.jpg', ''),
(7, 'Filosofi Kopi', 'Filosofi Kopi (2015) bercerita tentang seorang anak petani kopi dimana sejak kecil dia dibesarkan di sebuah perkebunan kopi dia bernama Ben (Chico Jericho). Namun menginjak usia 12 tahun Ben pergi meninggalkan orang tuanya hingga dia bertemu dengan Jody (Rio Dewanto) dan keduanya pun langsung akrab dan mereka pun bersahabat baik. Ben pun di rawat dan di asuh oleh orang tua Jody hingga setelah Ben dan Jody dewasa mereka pun membangun sebuah kedai kopi dimana kedai tersebut mereka namai Filosofi Kopi.', 'drama', '2.2', 'semua umur', 'kadaluarsa', 'kopi.jpg', ''),
(8, 'The Cabin in The Wood', 'Lima orang sahabat sepakat untuk menghabiskan akhir pekan mereka di sebuah kabin di tengah hutan yang asri. Sekelompok remaja yang terdiri dari Dana si perawan  (Kristen Connolly), Curt si atlet(Chris Hemsworth), Jules si seksi(Anna Hutchison), Marty si mabuk(Fran Kranz) dan si pintar Holden (Jesse Williams), merasa kagum dengan keindahan dan kesederhanaan dari kabin tersebut. Sebagian besar dari mereka tidak ingin membuang-buang waktu untuk bersenang-senang di daerah yang sejuk seperti berenang di danau dan sebagainya. Hanya Marty yang agak ragu dengan kondisi kabin tersebut dan lebih memilih bersantai sambil menghisap rokok kesukaannya.', 'horror', '7.0', 'dewasa', 'kadaluarsa', 'cabin.jpg', ''),
(9, 'Oculus', 'Seorang wanita yang mencoba untuk membebaskan kakaknya, yang dihukum karena pembunuhan dengan membuktikan bahwa kejahatan itu dilakukan oleh fenomena supranatural.\r\nSepuluh tahun yang lalu, tragedi menimpa keluarga Russell, meninggalkan kehidupan saudara remaja Tim dan Kaylie selamanya berubah ketika Tim dihukum karena pembunuhan brutal orang tua mereka.', 'horror', '6.5', 'dewasa', 'kadaluarsa', 'oculus.jpg', ''),
(10, 'San Andreas', 'Dalam sekejap gempa bumi berkekuatan 9 skala richter memporak-poranda California, meninggalkan jejak yang mengerikan dari semua kehancuran. Dari pantai barat, Ray (Dwayne Johnson), seorang pilot helikopter tim penyelamat bersama mantan istrinya (Carla Gugino) mencoba menyelamatkan putrinya (Alexandra Daddario) di daerah terpencil sebelum terlambat.', 'action', '', 'remaja', 'coming soon', 'san.jpg', 'san.mp4'),
(11, 'Ayat-ayat Adinda', 'Memiliki suara merdu, tak lantas membuat Adinda (Tissa Biani) mudah menjadi anggota tim qasidah sekolahnya. Faisal (Surya Saputra), ayah Adinda melarangnya. Faisal dengan tegas meminta Adinda untuk fokus sekolah.\r\n \r\nSelama ini keluarga Adinda tak pernah menetap lama di satu tempat. Mereka sering berpindah-pindah dan dikucilkan di manapun mereka tinggal. Perlahan Adinda mulai paham, hal itu diakibatkan kerena keluarganya dianggap sesat. Walau Adinda sendiri tak mengerti apa itu sesat. ', 'drama', '', 'semua umur', 'coming soon', 'adinda.jpg', 'adinda.mp4'),
(12, 'Insidious chapter 3', 'Insidious: Chapter 3 akan menjadi prekuel dua kisah sebelumnya. Berkisah jauh sebelum Keluarga Lambert pertama kali menangani gangguan iblis. Bagian paling kelam akan kembali ke awal. Elise Rainier (Lin Shaye) kembali menggunakan kemampuannya untuk membantu Quinn Brenner (Stefanie Scott) yang kini menjadi objek teror hantu yang sangat kejam.', 'horror', '', 'dewasa', 'coming soon', 'insidious.jpg', 'insidious.mp4');

--
-- Triggers `film_all`
--
DROP TRIGGER IF EXISTS `ins_film`;
DELIMITER //
CREATE TRIGGER `ins_film` AFTER INSERT ON `film_all`
 FOR EACH ROW insert into log values(CONCAT('Insert data ke tabel film_all'),now(), user())
//
DELIMITER ;
DROP TRIGGER IF EXISTS `upd_film_a`;
DELIMITER //
CREATE TRIGGER `upd_film_a` AFTER UPDATE ON `film_all`
 FOR EACH ROW insert into log values(CONCAT('Update data ke tabel film_all'),now(), user())
//
DELIMITER ;
DROP TRIGGER IF EXISTS `del_film`;
DELIMITER //
CREATE TRIGGER `del_film` AFTER DELETE ON `film_all`
 FOR EACH ROW insert into log values(CONCAT('Hapus data ke tabel film_all'),now(), user())
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--
-- Creation: May 22, 2015 at 03:20 AM
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
-- Creation: May 22, 2015 at 03:20 AM
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
-- Table structure for table `log`
--
-- Creation: May 31, 2015 at 06:43 AM
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `aktifitas` varchar(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`aktifitas`, `waktu`, `user`) VALUES
('Update data ke tabel film', '2015-05-31 07:28:24', 'root@localhost'),
('Update data ke tabel film', '2015-05-31 07:28:45', 'root@localhost'),
('Update data ke tabel film', '2015-05-31 07:32:22', 'root@localhost'),
('Hapus data ke tabel pemesan', '2015-05-31 07:48:11', 'root@localhost'),
('Hapus data ke tabel tiket', '2015-05-31 07:49:09', 'root@localhost'),
('Hapus data ke tabel tiket', '2015-05-31 07:50:19', 'root@localhost'),
('Update data ke tabel tiket', '2015-05-31 07:51:59', 'root@localhost'),
('Hapus data ke tabel pemesan', '2015-05-31 07:51:59', 'root@localhost'),
('Update data ke tabel tiket', '2015-05-31 07:53:48', 'root@localhost'),
('Update data ke tabel tiket', '2015-05-31 07:54:22', 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--
-- Creation: May 22, 2015 at 03:20 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`kd_member`, `username`, `password`, `nama`, `alamat`, `email`, `usia`, `jenis_kelamin`, `gambar_ktp`) VALUES
(1, 'rifanipuji', 'rifanipuji', 'rifani puji', 'siwalankerto', 'rifanipujir@gmail.com', 19, 'P', ''),
(2, 'admin', 'admin', 'admin', 'surabaya', 'admin@gmail.com', 23, 'P', '861.jpg'),
(3, 'satria', 'SATRIA', 'satria eka', 'sby', 'satria@gmail.com', 20, 'L', 'Gambar-kartun-binatang-lucu-terbaru-gajah-lucu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemesan`
--
-- Creation: May 22, 2015 at 04:15 AM
--

DROP TABLE IF EXISTS `pemesan`;
CREATE TABLE IF NOT EXISTS `pemesan` (
  `kd_pemesan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemesan` varchar(30) NOT NULL,
  `nama_kursi` varchar(5) NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `kd_tiket` int(11) NOT NULL,
  PRIMARY KEY (`kd_pemesan`),
  KEY `kd_tiket` (`kd_tiket`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- RELATIONS FOR TABLE `pemesan`:
--   `kd_tiket`
--       `tiket` -> `kd_tiket`
--

--
-- Dumping data for table `pemesan`
--

INSERT INTO `pemesan` (`kd_pemesan`, `nama_pemesan`, `nama_kursi`, `gambar`, `kd_tiket`) VALUES
(53, 'asngari', '15K', 'ktp4.jpg', 44),
(55, 'sholikuddin', '10F', 'ktp1.jpg', 45),
(56, 'hanna', '8F', 'ktp3.jpg', 45),
(57, 'eli', '1E', 'ktp5.jpg', 45);

--
-- Triggers `pemesan`
--
DROP TRIGGER IF EXISTS `del_pemesan`;
DELIMITER //
CREATE TRIGGER `del_pemesan` AFTER DELETE ON `pemesan`
 FOR EACH ROW insert into log values(CONCAT('Hapus data ke tabel pemesan'),now(), user())
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--
-- Creation: May 22, 2015 at 04:14 AM
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
  PRIMARY KEY (`kd_tiket`),
  KEY `kd_jadwal` (`kd_jadwal`),
  KEY `kd_film` (`kd_film`),
  KEY `kd_member` (`kd_member`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- RELATIONS FOR TABLE `tiket`:
--   `kd_jadwal`
--       `jadwal` -> `kd_jadwal`
--   `kd_film`
--       `film` -> `kd_film`
--   `kd_member`
--       `member` -> `kd_member`
--

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`kd_tiket`, `kd_pemesanan`, `tanggal`, `jml_tiket`, `kd_jadwal`, `kd_film`, `kd_member`, `gambar_transfer`) VALUES
(44, '805dc', '2015-06-04', 1, 16, 1, 1, 'bukti.jpg'),
(45, 'f3058', '2015-05-31', 3, 28, 4, 3, 'transfer1.jpg');

--
-- Triggers `tiket`
--
DROP TRIGGER IF EXISTS `upd_kd_pemesanan`;
DELIMITER //
CREATE TRIGGER `upd_kd_pemesanan` AFTER UPDATE ON `tiket`
 FOR EACH ROW insert into log values(CONCAT('Update data ke tabel tiket'),now(), user())
//
DELIMITER ;
DROP TRIGGER IF EXISTS `del_tiket`;
DELIMITER //
CREATE TRIGGER `del_tiket` AFTER DELETE ON `tiket`
 FOR EACH ROW insert into log values(CONCAT('Hapus data ke tabel tiket'),now(), user())
//
DELIMITER ;

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
-- Structure for view `coming_soon`
--
DROP TABLE IF EXISTS `coming_soon`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coming_soon` AS select `film_all`.`judul_f` AS `judul_f`,`film_all`.`sinopsis_f` AS `sinopsis_f`,`film_all`.`kategori_f` AS `kategori_f`,`film_all`.`usia_f` AS `usia_f`,`film_all`.`status` AS `status` from `film_all` where (`film_all`.`status` = 'coming soon');

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detil_jadwal`
--
ALTER TABLE `detil_jadwal`
  ADD CONSTRAINT `detil_jadwal_ibfk_1` FOREIGN KEY (`kd_jadwal`) REFERENCES `jadwal` (`kd_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detil_jadwal_ibfk_2` FOREIGN KEY (`kd_film`) REFERENCES `film` (`kd_film`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori_film` (`kd_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD CONSTRAINT `pemesan_ibfk_1` FOREIGN KEY (`kd_tiket`) REFERENCES `tiket` (`kd_tiket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`kd_jadwal`) REFERENCES `jadwal` (`kd_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tiket_ibfk_2` FOREIGN KEY (`kd_film`) REFERENCES `film` (`kd_film`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tiket_ibfk_3` FOREIGN KEY (`kd_member`) REFERENCES `member` (`kd_member`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
