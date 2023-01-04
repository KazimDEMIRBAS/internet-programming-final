-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Oca 2023, 15:01:20
-- Sunucu sürümü: 8.0.28
-- PHP Sürümü: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `renta_carphp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int NOT NULL,
  `baslik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `govde` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `baslik`, `govde`) VALUES
(19, 'HAKKIMIZDA', 'Firmamız; Iron Head Rent a car 2023 yılında sektörde yerini almıştır. Ticari politikamız her zaman uygun fiyat, sınırsız hizmet ve dürüstlüğe dayanmaktadır.\r\nSektörde &quot;Önce Müşteri Memnuniyeti&quot; diyerek yola çıkan firmamız, genç araç filosu ve güler yüzlü kadrosuyla siz müşterilerimizin problemsiz, güvenli, rahat ve ekonomik Araç Kiralama hizmeti almanız için çaba göstermektedir. Otomotiv Kiralama&#039;da eksikliği hissedilen güvenli araç, hizmet kalitesi ve ekonomik fiyat üçlüsünü Iron Head Rent a car da bulacaksınız.\r\n\r\n Iron Head Rent a car kişisel ve kurumsal isteklere direkt yanıt veren En iyi kaliteyi En düşük fiyatlarla sağlayan Lüks Araç kiralama servisidir. Araçlarımızın bakımları markaların yetkili servislerinde yapılmaktadır. Araçlarımız kiralama sürecinde tam garanti altındadır. 7 gün 24 saat yol yardımı servisini istediğinizde kullanabilirsiniz.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'kazim@demirbas.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteriler`
--

CREATE TABLE `musteriler` (
  `id` int NOT NULL,
  `kisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unvan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `govde` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `musteriler`
--

INSERT INTO `musteriler` (`id`, `kisi`, `unvan`, `govde`) VALUES
(1, 'Ali Demirbaş', 'Baba', 'Çok güzel bir uygulama olmuş. Başta oğlum olmak üzere bütün yazılımcılar ile gurur duyuyorum.'),
(2, 'Giga Chad', 'Model', 'Awesome bir app, çok beğendim but daha iyi yerlere coming.');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `musteriler`
--
ALTER TABLE `musteriler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `musteriler`
--
ALTER TABLE `musteriler`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
