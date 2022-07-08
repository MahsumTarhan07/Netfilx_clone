-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 Tem 2022, 16:07:02
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `netflix`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `action_movie`
--

CREATE TABLE `action_movie` (
  `id` int(11) UNSIGNED NOT NULL,
  `filmadi` varchar(30) NOT NULL,
  `konu` varchar(256) NOT NULL,
  `video` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `action_movie`
--

INSERT INTO `action_movie` (`id`, `filmadi`, `konu`, `video`) VALUES
(1, 'Yenilmez2 Full Hd', 'Action Movie 2022 full movie english Action Movies 2022', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/9yHG1kk9XgE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(2, 'Hayalet Sürücü 2', 'ABD yapımı doğaüstü süper kahraman filmidir. Johnny motoru ile harika şovlar yapan bir sürücüdür. Yıllar önce başına gelen bir olay, bütün hayatını etkilemiştir. Bir süre önce çocukluk aşkını ve ölmek üzere olan babasını koruyabilmek için şeytanla anlaşmak', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/_KXYoTk3ztY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(3, 'San Andreas Fay Hattı', 'California\'da yaşanan ve Batı Kıyı Şeridi\'nin tamamını etkileyen büyük çaplı bir deprem faciasının ardından yaşanan arama kurtarma sürecinde, itfaiye eri Tom\'un yaşadıklarını ön plana alan film, genç adamın duygusal hayatı ile sorumluluklarını dengede tutm', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/jvIGFhqbe0c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(4, 'Transformers 5: Son Şövalye', 'on Şövalye, Transformers bu sefer serinin özündeki efsaneleri paramparça etme hedefini taşıyor. İnsanlar ve Transformerlar savaşta, Optimus Prime ise gitmiş. Geleceğimizi kurtarmanın yegane çıkar yolu geçmişin sırlarında ve Transformerların dünyadaki gizli', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/aICHQRtdgEE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(5, 'Karayip Korsanları: Siyah İnci', 'Karayip Korsanları: Siyah İnci’nin Laneti, genç bir kızı kurtarmaya çalışan korsan Jack Sparrow ile demirci Will Turner\'ın maceralarını anlatıyor. Yerel vali Weatherby Swann\'ın 12 yaşındaki kızı Elizabeth, Jamaica\'ya yaptığı deniz yolculuğu esnasında bir g', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/xfTa5t3Rg04\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(6, '8 Soyguncu | Türkçe Dublaj Aks', 'Soygun Yapmak', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/PnnhwMdrzUE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(7, 'Yasak Vadiye Yolculuk | Türkçe', '', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/mL8342a14qk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adventure_movie`
--

CREATE TABLE `adventure_movie` (
  `id` int(11) UNSIGNED NOT NULL,
  `adi` varchar(100) NOT NULL,
  `konu` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `adventure_movie`
--

INSERT INTO `adventure_movie` (`id`, `adi`, `konu`, `video`) VALUES
(1, 'Cadılar Balosu', 'Cadı balosuna giden Beatrix, hiç beklemediği anda karşısına çıkan sihirli engelleri aşmayı çalışmakt', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/ksnpcVuleUw\" title=\"YouTube vide'),
(2, 'Su Atı : Derinlerin Efsanesi | Türkçe Dublaj Full Tek Parça izle | HD', '', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/2f3Vhq0S4o0\" title=\"YouTube vide'),
(3, 'Max Steel Türkce Düblaj', 'Saybor robot canavalara karşi', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/8rDxAj8o-fQ\" title=\"YouTube vide');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `animated_movie`
--

CREATE TABLE `animated_movie` (
  `id` int(11) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `summary_subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comedy_movie`
--

CREATE TABLE `comedy_movie` (
  `id` int(11) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `summary_subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `crime_movie`
--

CREATE TABLE `crime_movie` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie` int(11) NOT NULL,
  `movie_name` int(11) NOT NULL,
  `summary_subject` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dizi`
--

CREATE TABLE `dizi` (
  `id` int(11) NOT NULL,
  `adi` varchar(100) NOT NULL,
  `konu` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `dizi`
--

INSERT INTO `dizi` (`id`, `adi`, `konu`, `video`) VALUES
(1, 'Kurtalar Vadisi', 'Polat Alendar', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/XkWAJWkMgbw\" title=\"YouTube vide'),
(2, 'Suskunlar', 'kUCUK Yasta Hapishaneye Giriyor', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/qjI8ABmLYMA\" title=\"YouTube vide');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `documentary`
--

CREATE TABLE `documentary` (
  `id` int(11) UNSIGNED NOT NULL,
  `movie` varchar(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `summary_subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `drama_movie`
--

CREATE TABLE `drama_movie` (
  `id` int(11) UNSIGNED NOT NULL,
  `movie` varchar(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `summary_subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `historical_drama`
--

CREATE TABLE `historical_drama` (
  `id` int(11) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `summary_subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `adi` varchar(100) NOT NULL,
  `soyadi` varchar(100) NOT NULL,
  `kullaniciadi` varchar(50) NOT NULL,
  `sifre` varchar(200) NOT NULL,
  `sifretekrar` varchar(200) NOT NULL,
  `onaylımı` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `adi`, `soyadi`, `kullaniciadi`, `sifre`, `sifretekrar`, `onaylımı`) VALUES
(36, 'Mahsum', 'Tarhan', '       1mahsumtarhan@gmail.com', 'Daha Sonra Yapılcak ', 'Daha Sonra Yapılcak ', 0),
(37, 'Oktay', 'Tar', 'mustafa', '4a082674a5a59caafccc68c2619679ae9a29a8d7c17ef6fdf8b343b65c3933bc', '', 0),
(38, 'Oktay', 'Demir', ' oktaydemir@gmail.com', '', ' ', 0),
(39, 'mahsum', 'tarhan', 'mahsumtarhan@gmail.com', '599c4a93bcc815955246e3dc47affd293fd22cffa2e0962d61a650adc0f630ce', '', 0),
(40, 'Oktay', 'Demir', 'oktaydemir@gmail.com', 'c25c515ac6e73632edccefa8b8a1e0d060fe03b55dff3a033a37d1b70c744161', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yakın_zamanda_gelecek_filmler`
--

CREATE TABLE `yakın_zamanda_gelecek_filmler` (
  `id` int(11) NOT NULL,
  `adi` varchar(100) NOT NULL,
  `konu` varchar(200) NOT NULL,
  `video` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yakın_zamanda_gelecek_filmler`
--

INSERT INTO `yakın_zamanda_gelecek_filmler` (`id`, `adi`, `konu`, `video`) VALUES
(1, 'Kuzeyli | The Northman | Altyazılı Fragman', '', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/PB62kh9PqsY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscop'),
(2, 'Black Adam', 'Marvel ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/G7uPrlsqL_Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscop'),
(3, 'Moon Knight ', '', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/SjoRKI0zZOA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscop'),
(4, 'Yakin Tehlike', 'Marvel ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/G7uPrlsqL_Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscop'),
(5, 'Avatar 2', 'Thank you so much for watching our new video! We hope you enjoyed it, and please make sure you like, comment, share and SUBSCRIBE to our channel and click the  icon for notifications when we release a', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/058s3smFXx0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscop');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `action_movie`
--
ALTER TABLE `action_movie`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `adventure_movie`
--
ALTER TABLE `adventure_movie`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `animated_movie`
--
ALTER TABLE `animated_movie`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comedy_movie`
--
ALTER TABLE `comedy_movie`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `crime_movie`
--
ALTER TABLE `crime_movie`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `dizi`
--
ALTER TABLE `dizi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `documentary`
--
ALTER TABLE `documentary`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `drama_movie`
--
ALTER TABLE `drama_movie`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `historical_drama`
--
ALTER TABLE `historical_drama`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yakın_zamanda_gelecek_filmler`
--
ALTER TABLE `yakın_zamanda_gelecek_filmler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `action_movie`
--
ALTER TABLE `action_movie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `adventure_movie`
--
ALTER TABLE `adventure_movie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `animated_movie`
--
ALTER TABLE `animated_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `comedy_movie`
--
ALTER TABLE `comedy_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `crime_movie`
--
ALTER TABLE `crime_movie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `dizi`
--
ALTER TABLE `dizi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `documentary`
--
ALTER TABLE `documentary`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `drama_movie`
--
ALTER TABLE `drama_movie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `historical_drama`
--
ALTER TABLE `historical_drama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `yakın_zamanda_gelecek_filmler`
--
ALTER TABLE `yakın_zamanda_gelecek_filmler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
