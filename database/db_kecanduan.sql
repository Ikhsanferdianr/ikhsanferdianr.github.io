-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Feb 2024 pada 13.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kecanduan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `email`, `password`, `level`) VALUES
(1, 'admin1', 'admin1', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` varchar(20) NOT NULL,
  `nama_gejala` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(20, 'G01', 'Apakah anda sudah berusaha untuk membatasi waktu bermain game online, namun gagal?'),
(21, 'G02', 'Apakah anda lupa waktu ketika sedang bermain game online?'),
(22, 'G03', 'Apakah Hidup anda terasa lebih nyaman saat sedang bermain game online?'),
(23, 'G04', 'Apakah waktu tidur anda berkurang karena lebih banyak bermain game online?'),
(24, 'G05', 'Apakah anda merasa kesal apabila sedang berhenti bermain game online dan perasaan tersebut akan hilang apabila anda bisa bermain game online?'),
(25, 'G06', 'Apakah tugas anda terlantar (misalnya; menunda tugas sekolah, gagal mengumpulkan tugas sekolah, dan lain-lain) akibat menghabiskan terlalu banyak waktu untuk bermain game online?'),
(26, 'G07', 'Apakah anda sangat menunggu waktu anda bisa bermain game online?'),
(27, 'G08', 'Apakah anda merasa sangat terganggu apabila dipaksa untuk berhenti bermain game online?'),
(83, 'G09', 'Apakah anda terus memikirkan kegiatan bermain game online sebelumnya saat anda sedang melakukan kegiatan lain?'),
(84, 'G10', 'Apakah anda melawan pikiran yang tidak nyaman di kehidupan nyata dengan pikiran yang menyenangkan saat bermain game online?'),
(85, 'G11', 'Apakah nilai ulangan anda menurun akibat bermain game online?'),
(86, 'G12', 'Apakah anda berhenti melakukan kegiatan sehari-hari akibat bermain game online?'),
(87, 'G13', 'Apakah anda kurang berkomunikasi dengan keluarga akibat lebih sering bermain game online?'),
(88, 'G14', 'Apakah hubungan anda dengan keluarga menjadi bermasalah karena lebih sering bermain game online?'),
(89, 'G15', 'Apakah anda merasa marah pada orang yang menyuruh anda berhenti bermain game online?'),
(90, 'G16', 'Apakah anda merasa cemas jika sedang tidak bermain game online?'),
(91, 'G17', 'Apakah anda terus berkhayal saat sedang bermain game online saat anda sedang melakukan kegiatan lain?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_kecanduan` int(11) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `umur` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `solusi` varchar(200) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_pasien`, `id_kecanduan`, `username`, `umur`, `alamat`, `deskripsi`, `solusi`, `tanggal`) VALUES
(123, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-21'),
(124, 24, 9, 'ikhsan', '20', 'Padang', 'Kecanduan sedang ialah dimana merujuk pada tingkat ketergantungan yang signifikan, di mana seseorang menunjukkan gejala kecanduan, namun masih pada tingkat yang dapat diidentifikasi sebagai sedang.', 'Dengan cara menetapkan batas waktu bermain, meningkatkan kesadaran akan dampak kecanduan, dan memulai langkah-langkah untuk mengurangi intensitas keterlibatan dengan game online.', '2023-12-21'),
(125, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-21'),
(126, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-22'),
(127, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-22'),
(128, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-22'),
(129, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-22'),
(130, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-22'),
(131, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-22'),
(132, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-22'),
(133, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(134, 24, NULL, '', '', '', '', '', '2023-12-23'),
(135, 24, NULL, '', '', '', '', '', '2023-12-23'),
(136, 24, NULL, '', '', '', '', '', '2023-12-23'),
(137, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(138, 24, NULL, '', '', '', '', '', '2023-12-23'),
(139, 24, NULL, '', '', '', '', '', '2023-12-23'),
(140, 24, NULL, '', '', '', '', '', '2023-12-23'),
(141, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(142, 24, NULL, '', '', '', '', '', '2023-12-23'),
(143, 24, NULL, '', '', '', '', '', '2023-12-23'),
(144, 24, NULL, '', '', '', '', '', '2023-12-23'),
(145, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(146, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(147, 24, NULL, '', '', '', '', '', '2023-12-23'),
(148, 24, NULL, '', '', '', '', '', '2023-12-23'),
(149, 24, NULL, '', '', '', '', '', '2023-12-23'),
(150, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(151, 24, NULL, '', '', '', '', '', '2023-12-23'),
(152, 24, NULL, '', '', '', '', '', '2023-12-23'),
(153, 24, NULL, '', '', '', '', '', '2023-12-23'),
(154, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(155, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(156, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(157, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(158, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(159, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(160, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(161, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(162, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(163, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(164, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(167, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(168, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(169, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(170, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(171, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(172, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-23'),
(174, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-23'),
(175, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-23'),
(176, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-23'),
(177, 24, NULL, 'ikhsan', '20', 'Padang', '<b>Anda Tidak Mengalami Kecanduan Dalam Bermain Game Online</b>', '<b>Anda Tidak Mengalami Kecanduan Dalam Bermain Game Online</b>', '2023-12-23'),
(178, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(179, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(180, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(181, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(182, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(183, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(184, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(185, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(186, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(187, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(188, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(189, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-23'),
(190, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-23'),
(191, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(192, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(193, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(194, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(195, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(196, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(197, 24, 9, 'ikhsan', '20', 'Padang', 'Kecanduan sedang ialah dimana merujuk pada tingkat ketergantungan yang signifikan, di mana seseorang menunjukkan gejala kecanduan, namun masih pada tingkat yang dapat diidentifikasi sebagai sedang.', 'Dengan cara menetapkan batas waktu bermain, meningkatkan kesadaran akan dampak kecanduan, dan memulai langkah-langkah untuk mengurangi intensitas keterlibatan dengan game online.', '2023-12-23'),
(198, 24, 9, 'ikhsan', '20', 'Padang', 'Kecanduan sedang ialah dimana merujuk pada tingkat ketergantungan yang signifikan, di mana seseorang menunjukkan gejala kecanduan, namun masih pada tingkat yang dapat diidentifikasi sebagai sedang.', 'Dengan cara menetapkan batas waktu bermain, meningkatkan kesadaran akan dampak kecanduan, dan memulai langkah-langkah untuk mengurangi intensitas keterlibatan dengan game online.', '2023-12-23'),
(199, 24, 10, 'ikhsan', '20', 'Padang', 'Kecanduan Ringan adalah kecanduan bila seseorang merasa antusias apabila ditanya tentang game online sehingga sulit untuk berkonsentrasi, sering mengantuk, dan mudah emosional dalam berbagai hal.', 'Mengembangkan kegiatan alternatif di luar dunia game, dan menerapkan batasan waktu bermain yang sehat.', '2023-12-23'),
(200, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-23'),
(201, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(202, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(203, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(204, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(205, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(206, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(207, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(208, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(209, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(210, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(211, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(212, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(213, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(214, 24, 9, 'ikhsan', '20', 'Padang', 'Kecanduan sedang ialah dimana merujuk pada tingkat ketergantungan yang signifikan, di mana seseorang menunjukkan gejala kecanduan, namun masih pada tingkat yang dapat diidentifikasi sebagai sedang.', 'Dengan cara menetapkan batas waktu bermain, meningkatkan kesadaran akan dampak kecanduan, dan memulai langkah-langkah untuk mengurangi intensitas keterlibatan dengan game online.', '2023-12-24'),
(215, 24, 10, 'ikhsan', '20', 'Padang', 'Kecanduan Ringan adalah kecanduan bila seseorang merasa antusias apabila ditanya tentang game online sehingga sulit untuk berkonsentrasi, sering mengantuk, dan mudah emosional dalam berbagai hal.', 'Mengembangkan kegiatan alternatif di luar dunia game, dan menerapkan batasan waktu bermain yang sehat.', '2023-12-24'),
(216, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(217, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(218, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(219, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(220, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(221, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(222, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(223, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(224, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(225, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(226, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(227, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(228, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(229, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(230, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(231, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(232, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-24'),
(233, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(234, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(235, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(236, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-26'),
(237, 24, NULL, 'ikhsan', '20', 'Padang', '', '', '2023-12-26'),
(238, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(239, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(240, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(241, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(242, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(243, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(244, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-26'),
(245, 24, 8, 'ikhsan', '20', 'Padang', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain g', 'Pendekatan holistik, yaitu pembatasan waktu bermain, terlibat dalam kegiatan alternatif di luar game, dukungan dari keluarga dan teman, pengawasan orang tua untuk anak-anak, konseling atau terapi, ket', '2023-12-27'),
(246, 24, 10, 'ikhsan', '20', 'Padang', 'kecanduan ringan bila seseorang merasa antusias apabila ditanya tentang game online sehingga sulit untuk berkonsentrasi, sering mengantuk, dan mudah emosional dalam berbagai hal.', 'Mengembangkan kegiatan alternatif di luar dunia game, dan menerapkan batasan waktu bermain yang sehat. seperti mengurangi waktu bermain dengan pemain game online	', '2024-02-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecanduan`
--

CREATE TABLE `kecanduan` (
  `id_kecanduan` int(11) NOT NULL,
  `kode_kecanduan` varchar(20) NOT NULL,
  `nama_kecanduan` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `solusi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kecanduan`
--

INSERT INTO `kecanduan` (`id_kecanduan`, `kode_kecanduan`, `nama_kecanduan`, `deskripsi`, `solusi`) VALUES
(8, 'T01', 'Kecanduan Berat', 'kecanduan berat akan timbulnya sifat ingin menirukan karakter dalam game sehingga menyebabkan terputusnya sosial di masyarakat, pada tingkat ini seseorang sudah mengeluarkan uang hanya untuk bermain game', 'Bagi Gamer : \r\n1. Menanamkan niat untuk mengatasi kecanduan game, seperti membuat komitmen dengan niat untuk menghilangkan kecanduan dalam bermain game. \r\n2. Hitung kembali biaya yang sudah Anda keluarkan dan sadarkan diri Anda jika biaya tersebut dikumpulkan akan memiliki fungsi yang lebih baik dan lebih berguna. \r\n3. Cobalah mencari hobi yang baru. \r\n4. Perbanyak aktivitas sosial. 5. Menceritakan tentang kecanduan game online yang Anda alami agar orang terdekat bisa memberi dukungan dan jalan '),
(9, 'T02', 'Kecanduan Sedang', 'Kecanduan sedang ialah dimana merujuk pada tingkat ketergantungan yang signifikan, di mana seseorang menunjukkan gejala kecanduan, namun masih pada tingkat yang dapat diidentifikasi sebagai sedang.', 'Dengan cara menetapkan batas waktu bermain, meningkatkan kesadaran akan dampak kecanduan, dan memulai langkah-langkah untuk mengurangi intensitas keterlibatan dengan game online. seperti mengisi waktu dengan hal yang bermanfaat seperti berolahraga, membaca buku, atau kegiatan sosial lain, guna mengalihkan pikiran dari game online'),
(10, 'T03', 'Kecanduan Ringan', 'kecanduan ringan bila seseorang merasa antusias apabila ditanya tentang game online sehingga sulit untuk berkonsentrasi, sering mengantuk, dan mudah emosional dalam berbagai hal.', 'Mengembangkan kegiatan alternatif di luar dunia game, dan menerapkan batasan waktu bermain yang sehat. seperti mengurangi waktu bermain dengan pemain game online	');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `umur` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('admin','pasien') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `email`, `username`, `umur`, `alamat`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin', '', '', 'admin', 'admin'),
(24, 'Rahmanda Ikhsan', 'ikhsan@gmail.com', 'ikhsan', '20', 'Padang', 'ikhsan', 'pasien'),
(26, 'Ranasya Kurnia Dini', 'ranasyakurniadini@gmail.com', 'Ranasya', '22', 'Solok Selatan', 'nini', 'pasien'),
(27, 'Apritia Putri Yenisya', 'apritiaputriyenisya@gmail.com', 'Tia', '23', 'Painan', 'tia', 'pasien'),
(28, 'Alfin Zalfitra Maulana', 'alfinzalfitramaulana@gmail.com', 'Alfin', '23', 'Painan', 'alfin', 'pasien'),
(29, 'Shetia Bening Pertiwi', 'shetiabeningpertiwi@gmail.com', 'bening', '23', 'Padang', 'bening', 'pasien'),
(30, 'Intan Try Rachmah', 'intantryrachmah@gmail.com', 'intan', '22', 'Sijunjung', 'intan', 'pasien'),
(31, 'Mutiara Adisti', 'mutiaraadisti@gmail.com', 'ara', '22', 'Padang', 'ara', 'pasien'),
(32, 'Fadella Indra Riswana', 'fadellaindrariswana@gmail.com', 'dela', '22', 'Solok', 'dela', 'pasien'),
(33, 'Mai Salsarah', 'maisalsarah@gmail.com', 'caca', '22', 'Solok', 'caca', 'pasien'),
(34, 'Suci Abidia Cirana', 'suciabidiacirana@gmail.com', 'suci', '23', 'Sulit Air', 'suci', 'pasien'),
(35, 'Hafizh', 'hafizh@gmail.com', 'apis', '22', 'Bukittinggi', 'apis', 'pasien'),
(36, 'Fadlan Deza', 'fadlandeza@gmail.com', 'fadlan', '22', 'Padang', 'fadlan', 'pasien'),
(37, 'Fauzan Rahadatullah', 'fauzan@gmail.com', 'fauzan', '22', 'Bukittinggi', 'fauzan', 'pasien'),
(38, 'Daffa Rihadatul Fairus', 'daffa@gmail.com', 'daffa', '22', 'Bukittinggi', 'dafa', 'pasien');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(11) NOT NULL,
  `id_kecanduan` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rule`
--

INSERT INTO `rule` (`id_rule`, `id_kecanduan`, `id_gejala`) VALUES
(178, 8, 20),
(179, 8, 21),
(180, 8, 23),
(181, 8, 25),
(182, 8, 83),
(183, 8, 85),
(184, 8, 86),
(185, 8, 87),
(186, 8, 88),
(187, 8, 89),
(188, 8, 90),
(189, 8, 91),
(190, 9, 21),
(191, 9, 22),
(192, 9, 24),
(193, 9, 25),
(194, 9, 27),
(195, 9, 84),
(196, 9, 85),
(197, 9, 90),
(198, 10, 21),
(199, 10, 22),
(200, 10, 26);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_pengguna` (`id_pasien`),
  ADD KEY `id_penyakit` (`id_kecanduan`);

--
-- Indeks untuk tabel `kecanduan`
--
ALTER TABLE `kecanduan`
  ADD PRIMARY KEY (`id_kecanduan`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_penyakit` (`id_kecanduan`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT untuk tabel `kecanduan`
--
ALTER TABLE `kecanduan`
  MODIFY `id_kecanduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `hasil_ibfk_2` FOREIGN KEY (`id_kecanduan`) REFERENCES `kecanduan` (`id_kecanduan`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`id_kecanduan`) REFERENCES `kecanduan` (`id_kecanduan`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rule_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
