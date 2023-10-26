-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 26 Okt 2023 pada 07.59
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `importexcel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_airtanah`
--

CREATE TABLE `pajak_airtanah` (
  `airtanah_id` int NOT NULL,
  `airtanah_rekening` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `airtanah_sptpd` int DEFAULT NULL,
  `airtanah_npwpd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `airtanah_wp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `airtanah_wp_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `airtanah_periode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `airtanah_pembayaran` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `airtanah_setor` decimal(10,2) DEFAULT NULL,
  `airtanah_tanggal_bayar` decimal(10,2) DEFAULT NULL,
  `airtanah_denda` decimal(10,2) DEFAULT NULL,
  `airtanah_user` int DEFAULT NULL,
  `airtanah_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_bphtb`
--

CREATE TABLE `pajak_bphtb` (
  `bphtb_id` int NOT NULL,
  `bphtb_metode` varchar(256) DEFAULT NULL,
  `bphtb_tanggal_bayar` date DEFAULT NULL,
  `bphtb_pendaftaran` int DEFAULT NULL,
  `bphtb_nop` text,
  `bphtb_penjual` text,
  `bphtb_pembeli` text,
  `bphtb_bumi` decimal(10,0) DEFAULT NULL,
  `bphtb_bangunan` decimal(10,0) DEFAULT NULL,
  `bphtb_npop` varchar(256) DEFAULT NULL,
  `bphtb_transaksi` decimal(10,0) DEFAULT NULL,
  `bphtb_ketetapan` decimal(10,0) DEFAULT NULL,
  `bphtb_perolehan` decimal(10,0) DEFAULT NULL,
  `bphtb_user` int DEFAULT NULL,
  `bphtb_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_hiburan`
--

CREATE TABLE `pajak_hiburan` (
  `hiburan_id` int NOT NULL,
  `hiburan_rekening` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hiburan_sptpd` int DEFAULT NULL,
  `hiburan_npwpd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hiburan_wp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hiburan_wp_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hiburan_periode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hiburan_pembayaran` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hiburan_setor` decimal(10,2) DEFAULT NULL,
  `hiburan_tanggal_bayar` decimal(10,2) DEFAULT NULL,
  `hiburan_denda` decimal(10,2) DEFAULT NULL,
  `hiburan_user` int DEFAULT NULL,
  `hiburan_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_hotel`
--

CREATE TABLE `pajak_hotel` (
  `hotel_id` int NOT NULL,
  `hotel_rekening` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hotel_sptpd` int DEFAULT NULL,
  `hotel_npwpd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hotel_wp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hotel_wp_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hotel_periode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hotel_pembayaran` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hotel_setor` decimal(10,2) DEFAULT NULL,
  `hotel_tanggal_bayar` decimal(10,2) DEFAULT NULL,
  `hotel_denda` decimal(10,2) DEFAULT NULL,
  `hotel_user` int DEFAULT NULL,
  `hotel_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_mblb`
--

CREATE TABLE `pajak_mblb` (
  `mblb_id` int NOT NULL,
  `mblb_rekening` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mblb_sptpd` int DEFAULT NULL,
  `mblb_npwpd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mblb_wp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `mblb_wp_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `mblb_periode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mblb_pembayaran` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mblb_setor` decimal(10,2) DEFAULT NULL,
  `mblb_tanggal_bayar` decimal(10,2) DEFAULT NULL,
  `mblb_denda` decimal(10,2) DEFAULT NULL,
  `mblb_user` int DEFAULT NULL,
  `mblb_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_parkir`
--

CREATE TABLE `pajak_parkir` (
  `parkir_id` int NOT NULL,
  `parkir_rekening` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parkir_sptpd` int DEFAULT NULL,
  `parkir_npwpd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parkir_wp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `parkir_wp_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `parkir_periode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parkir_pembayaran` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parkir_setor` decimal(10,2) DEFAULT NULL,
  `parkir_tanggal_bayar` decimal(10,2) DEFAULT NULL,
  `parkir_denda` decimal(10,2) DEFAULT NULL,
  `parkir_user` int DEFAULT NULL,
  `parkir_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_pbb`
--

CREATE TABLE `pajak_pbb` (
  `pbb_id` int NOT NULL,
  `pbb_kd_provinsi` int DEFAULT NULL,
  `pbb_kd_dati` int DEFAULT NULL,
  `pbb_kd_kec` int DEFAULT NULL,
  `pbb_kd_kel` int DEFAULT NULL,
  `pbb_kd_blok` int DEFAULT NULL,
  `pbb_no_urut` int DEFAULT NULL,
  `pbb_kd_jenis_op` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pbb_denda` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Jpbb_sppt` decimal(10,2) DEFAULT NULL,
  `pbb_nop` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pbb_tahun` year DEFAULT NULL,
  `pbb_pokok` decimal(10,2) DEFAULT NULL,
  `pbb_cf_3` text,
  `pbb_cf_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `pbb_pokok_sum` decimal(10,2) DEFAULT NULL,
  `pbb_denda_sum` decimal(10,2) DEFAULT NULL,
  `pbb_sppt_bayar` decimal(10,2) DEFAULT NULL,
  `pbb_periode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `pbb_user` int DEFAULT NULL,
  `pbb_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_reklame`
--

CREATE TABLE `pajak_reklame` (
  `reklame_id` int NOT NULL,
  `reklame_rekening` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reklame_sptpd` int DEFAULT NULL,
  `reklame_npwpd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reklame_wp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `reklame_wp_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `reklame_periode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reklame_pembayaran` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reklame_setor` decimal(10,2) DEFAULT NULL,
  `reklame_tanggal_bayar` decimal(10,2) DEFAULT NULL,
  `reklame_denda` decimal(10,2) DEFAULT NULL,
  `reklame_user` int DEFAULT NULL,
  `reklame_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_restoran`
--

CREATE TABLE `pajak_restoran` (
  `restoran_id` int NOT NULL,
  `restoran_rekening` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `restoran_sptpd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `restoran_npwpd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `restoran_wp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `restoran_wp_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `restoran_periode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `restoran_pembayaran` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `restoran_tanggal_bayar` date DEFAULT NULL,
  `restoran_setor` decimal(10,2) DEFAULT NULL,
  `restoran_denda` decimal(10,2) DEFAULT NULL,
  `restoran_user` int DEFAULT NULL,
  `restoran_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_walet`
--

CREATE TABLE `pajak_walet` (
  `walet_id` int NOT NULL,
  `walet_rekening` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `walet_sptpd` int DEFAULT NULL,
  `walet_npwpd` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `walet_wp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `walet_wp_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `walet_periode` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `walet_pembayaran` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `walet_setor` decimal(10,2) DEFAULT NULL,
  `walet_tanggal_bayar` decimal(10,2) DEFAULT NULL,
  `walet_denda` decimal(10,2) DEFAULT NULL,
  `walet_user` int DEFAULT NULL,
  `walet_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pajak_airtanah`
--
ALTER TABLE `pajak_airtanah`
  ADD PRIMARY KEY (`airtanah_id`);

--
-- Indeks untuk tabel `pajak_bphtb`
--
ALTER TABLE `pajak_bphtb`
  ADD PRIMARY KEY (`bphtb_id`);

--
-- Indeks untuk tabel `pajak_hiburan`
--
ALTER TABLE `pajak_hiburan`
  ADD PRIMARY KEY (`hiburan_id`);

--
-- Indeks untuk tabel `pajak_hotel`
--
ALTER TABLE `pajak_hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indeks untuk tabel `pajak_mblb`
--
ALTER TABLE `pajak_mblb`
  ADD PRIMARY KEY (`mblb_id`);

--
-- Indeks untuk tabel `pajak_parkir`
--
ALTER TABLE `pajak_parkir`
  ADD PRIMARY KEY (`parkir_id`);

--
-- Indeks untuk tabel `pajak_pbb`
--
ALTER TABLE `pajak_pbb`
  ADD PRIMARY KEY (`pbb_id`);

--
-- Indeks untuk tabel `pajak_reklame`
--
ALTER TABLE `pajak_reklame`
  ADD PRIMARY KEY (`reklame_id`);

--
-- Indeks untuk tabel `pajak_restoran`
--
ALTER TABLE `pajak_restoran`
  ADD PRIMARY KEY (`restoran_id`);

--
-- Indeks untuk tabel `pajak_walet`
--
ALTER TABLE `pajak_walet`
  ADD PRIMARY KEY (`walet_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pajak_restoran`
--
ALTER TABLE `pajak_restoran`
  MODIFY `restoran_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
