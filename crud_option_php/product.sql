-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2021 pada 10.25
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `option`
--

CREATE TABLE `option` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `option`
--

INSERT INTO `option` (`option_id`, `option_name`) VALUES
(1, 'Small'),
(2, 'Large'),
(3, 'White'),
(4, 'Black'),
(5, 'Small'),
(6, 'Medium'),
(7, 'Ameture'),
(8, 'Prefesional'),
(9, 'Medium'),
(10, 'Large');

-- --------------------------------------------------------

--
-- Struktur dari tabel `option_values`
--

CREATE TABLE `option_values` (
  `option_id` int(11) NOT NULL,
  `values_id` int(11) NOT NULL,
  `value_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `option_values`
--

INSERT INTO `option_values` (`option_id`, `values_id`, `value_name`) VALUES
(1, 1, 'Small ( Widget 1; Size )'),
(2, 1, 'Large ( Widget 1;Size )'),
(3, 2, 'White  ( Widget 1;  Color)'),
(4, 2, 'Small ( Widget 1;  Color)'),
(5, 3, 'Medium ( Widget 2; Size )'),
(6, 3, ' Ameture ( Widget 2; Size )'),
(7, 4, 'Prefesional ( Widget 3; Class)'),
(8, 4, 'Black ( Widget 3;  Class)'),
(9, 5, 'Medium ( Widget 3; Size )'),
(10, 5, 'Large  ( Widget 3;  Size)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`product_id`, `product_name`) VALUES
(1, 'widget 1'),
(2, 'widget 2'),
(3, 'widget 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_option`
--

CREATE TABLE `product_option` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_option`
--

INSERT INTO `product_option` (`product_id`, `option_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_varian`
--

CREATE TABLE `product_varian` (
  `product_id` int(11) NOT NULL,
  `variant_id` varchar(50) NOT NULL,
  `sku_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_varian`
--

INSERT INTO `product_varian` (`product_id`, `variant_id`, `sku_id`) VALUES
(1, 'Widget 1', 'WISSLCW '),
(2, 'Widget 1', 'WISSCB'),
(3, 'Widget 2', 'WISLCW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `varian_value`
--

CREATE TABLE `varian_value` (
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `varian_value`
--

INSERT INTO `varian_value` (`product_id`, `variant_id`, `option_id`, `value_id`, `price_id`) VALUES
(1, 1, 1, 1, 10),
(2, 1, 2, 1, 10),
(3, 1, 3, 2, 12),
(4, 1, 4, 2, 15),
(5, 2, 5, 3, 100),
(6, 2, 6, 3, 100),
(7, 3, 7, 4, 50),
(8, 3, 8, 4, 50),
(9, 3, 9, 5, 150),
(10, 3, 10, 5, 150);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indeks untuk tabel `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`option_id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `product_varian`
--
ALTER TABLE `product_varian`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `varian_value`
--
ALTER TABLE `varian_value`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `option`
--
ALTER TABLE `option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `option_values`
--
ALTER TABLE `option_values`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `product_option`
--
ALTER TABLE `product_option`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product_varian`
--
ALTER TABLE `product_varian`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `varian_value`
--
ALTER TABLE `varian_value`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_ibfk_1` FOREIGN KEY (`option_id`) REFERENCES `option` (`option_id`);

--
-- Ketidakleluasaan untuk tabel `product_option`
--
ALTER TABLE `product_option`
  ADD CONSTRAINT `product_option_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ketidakleluasaan untuk tabel `product_varian`
--
ALTER TABLE `product_varian`
  ADD CONSTRAINT `product_varian_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ketidakleluasaan untuk tabel `varian_value`
--
ALTER TABLE `varian_value`
  ADD CONSTRAINT `varian_value_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `option_values` (`option_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
