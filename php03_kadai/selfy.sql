-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-01-06 10:37:09
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `selfy`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `register00_photo`
--

CREATE TABLE `register00_photo` (
  `id` int(12) NOT NULL,
  `photo_on` blob NOT NULL,
  `photo_off` blob NOT NULL,
  `catch_phrase` varchar(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `register00_photo`
--

INSERT INTO `register00_photo` (`id`, `photo_on`, `photo_off`, `catch_phrase`, `date`) VALUES
(1, 0x32303233303130353230303534314172726179, 0x32303233303130353230303534314172726179, 'テストです', '2023-01-05 20:05:41'),
(2, 0x32303233303130353230303535344172726179, 0x32303233303130353230303535344172726179, 'テスト', '2023-01-05 20:05:54'),
(3, 0x32303233303130353231323832314172726179, 0x32303233303130353231323832314172726179, 'キャッチコピー', '2023-01-05 21:28:21');

-- --------------------------------------------------------

--
-- テーブルの構造 `register01_on`
--

CREATE TABLE `register01_on` (
  `id` int(12) NOT NULL,
  `name01j` varchar(10) NOT NULL,
  `name02j` varchar(10) NOT NULL,
  `name01e` varchar(20) NOT NULL,
  `name02e` varchar(20) NOT NULL,
  `birth_year` int(4) NOT NULL,
  `birth_month` int(2) NOT NULL,
  `born_place` varchar(4) DEFAULT NULL,
  `prefecture` varchar(10) NOT NULL,
  `country` varchar(20) NOT NULL,
  `occupation` varchar(10) NOT NULL,
  `affiliation` varchar(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL,
  `start_year` int(4) NOT NULL,
  `start_month` int(2) NOT NULL,
  `postal` int(7) NOT NULL,
  `address01` varchar(20) NOT NULL,
  `address02` varchar(20) NOT NULL,
  `phone` int(13) NOT NULL,
  `fax` int(13) NOT NULL,
  `url` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` int(13) NOT NULL,
  `univ` varchar(20) NOT NULL,
  `univ_major` varchar(20) NOT NULL,
  `univ_start_year` int(4) NOT NULL,
  `univ_start_month` int(2) NOT NULL,
  `univ_end_year` int(4) NOT NULL,
  `univ_end_month` int(2) NOT NULL,
  `hs` varchar(20) NOT NULL,
  `hs_major` varchar(20) NOT NULL,
  `hs_start_year` int(4) NOT NULL,
  `hs_start_month` int(2) NOT NULL,
  `hs_end_year` int(4) NOT NULL,
  `hs_end_month` int(2) NOT NULL,
  `grad` varchar(20) NOT NULL,
  `grad_major` varchar(20) NOT NULL,
  `grad_start_year` int(4) NOT NULL,
  `grad_start_month` int(2) NOT NULL,
  `grad_end_year` int(4) NOT NULL,
  `grad_end_month` int(2) NOT NULL,
  `career01` varchar(20) NOT NULL,
  `division01` varchar(20) NOT NULL,
  `career01_start_year` int(4) NOT NULL,
  `career01_start_month` int(2) NOT NULL,
  `career01_end_year` int(4) NOT NULL,
  `career01_end_month` int(2) NOT NULL,
  `career01_detail` varchar(200) NOT NULL,
  `career02` varchar(20) NOT NULL,
  `division02` varchar(20) NOT NULL,
  `career02_start_year` int(4) NOT NULL,
  `career02_start_month` int(2) NOT NULL,
  `career02_end_year` int(4) NOT NULL,
  `career02_end_month` int(2) NOT NULL,
  `career02_detail` varchar(200) NOT NULL,
  `career03` varchar(20) NOT NULL,
  `division03` varchar(20) NOT NULL,
  `career03_start_year` int(4) NOT NULL,
  `career03_start_month` int(2) NOT NULL,
  `career03_end_year` int(4) NOT NULL,
  `career03_end_month` int(2) NOT NULL,
  `career03_detail` varchar(200) NOT NULL,
  `motivation` varchar(30) NOT NULL,
  `episode` varchar(20) NOT NULL,
  `episode_detail` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `register01_on`
--

INSERT INTO `register01_on` (`id`, `name01j`, `name02j`, `name01e`, `name02e`, `birth_year`, `birth_month`, `born_place`, `prefecture`, `country`, `occupation`, `affiliation`, `division`, `description`, `start_year`, `start_month`, `postal`, `address01`, `address02`, `phone`, `fax`, `url`, `email`, `mobile`, `univ`, `univ_major`, `univ_start_year`, `univ_start_month`, `univ_end_year`, `univ_end_month`, `hs`, `hs_major`, `hs_start_year`, `hs_start_month`, `hs_end_year`, `hs_end_month`, `grad`, `grad_major`, `grad_start_year`, `grad_start_month`, `grad_end_year`, `grad_end_month`, `career01`, `division01`, `career01_start_year`, `career01_start_month`, `career01_end_year`, `career01_end_month`, `career01_detail`, `career02`, `division02`, `career02_start_year`, `career02_start_month`, `career02_end_year`, `career02_end_month`, `career02_detail`, `career03`, `division03`, `career03_start_year`, `career03_start_month`, `career03_end_year`, `career03_end_month`, `career03_detail`, `motivation`, `episode`, `episode_detail`, `Date`) VALUES
(8, 'テスト', 'テスト', '', '', 0, 0, '国内', '北海道', '', '会社員・公務員', '会社', '社員', '', 0, 0, 0, '', '', 0, 0, '', 'test@co.jp', 0, '', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '', '2023-01-04 13:25:57'),
(9, '', '', '', '', 1923, 1, NULL, '', '', '', '', '', '', 1923, 1, 0, '', '', 0, 0, '', '', 0, '', '', 1923, 1, 1923, 1, '', '', 1923, 1, 1923, 1, '', '', 1923, 1, 1923, 1, '', '', 1923, 1, 1923, 1, '', '', '', 1923, 1, 1923, 1, '', '', '', 1923, 1, 1923, 1, '', '', '過去にこんな大失敗をしました！', '', '2023-01-04 19:34:52'),
(10, '対馬', '誉仁', 'Tsushima', 'Takahito', 1977, 10, '国内', '香川県', '', '経営者・役員', '', '', '', 1923, 1, 1600022, '東京都新宿区新宿2-5-12', 'FORECAST新宿AVENUE 6F', 3, 3, 'http://www.lobby-z.co.jp', 'takahito.tsushima@lobby-z.co.jp', 90, '慶應義塾大学', '商学部', 1997, 4, 2001, 3, '高松高校', '普通科', 1993, 4, 1996, 3, '', '', 1923, 1, 1923, 1, 'JPモルガン証券会社', '投資銀行本部', 2001, 4, 2004, 10, 'M＆Aアドバイザリー及び資本調達アドバイザリー', '', '', 1923, 1, 1923, 1, '', '', '', 1923, 1, 1923, 1, '', '', '過去にこんな大失敗をしました！', '大事なプレゼン資料で上司の名前を間違えました！', '2023-01-05 22:29:06');

-- --------------------------------------------------------

--
-- テーブルの構造 `register02_torisetsu`
--

CREATE TABLE `register02_torisetsu` (
  `id` int(12) NOT NULL,
  `forMyColleague01` varchar(30) DEFAULT NULL,
  `forMyColleague02` varchar(30) DEFAULT NULL,
  `forMyColleague03` varchar(30) DEFAULT NULL,
  `forMyColleague04` varchar(30) DEFAULT NULL,
  `forMyColleague05` varchar(30) DEFAULT NULL,
  `forMyColleague06` varchar(30) DEFAULT NULL,
  `forMyColleague07` varchar(30) DEFAULT NULL,
  `forMyColleague08` varchar(30) DEFAULT NULL,
  `forMyColleague09` varchar(30) DEFAULT NULL,
  `forMyColleague10` varchar(30) DEFAULT NULL,
  `forMyBoss01` varchar(30) DEFAULT NULL,
  `forMyBoss02` varchar(30) DEFAULT NULL,
  `forMyBoss03` varchar(30) DEFAULT NULL,
  `forMyBoss04` varchar(30) DEFAULT NULL,
  `forMyBoss05` varchar(30) DEFAULT NULL,
  `forMyBoss06` varchar(30) DEFAULT NULL,
  `forMyBoss07` varchar(30) DEFAULT NULL,
  `forMyBoss08` varchar(30) DEFAULT NULL,
  `forMyBoss09` varchar(30) DEFAULT NULL,
  `forMyBoss10` varchar(30) DEFAULT NULL,
  `forMyTeam01` varchar(30) DEFAULT NULL,
  `forMyTeam02` varchar(30) DEFAULT NULL,
  `forMyTeam03` varchar(30) DEFAULT NULL,
  `forMyTeam04` varchar(30) DEFAULT NULL,
  `forMyTeam05` varchar(30) DEFAULT NULL,
  `forMyTeam06` varchar(30) DEFAULT NULL,
  `forMyTeam07` varchar(30) DEFAULT NULL,
  `forMyTeam08` varchar(30) DEFAULT NULL,
  `forMyTeam09` varchar(30) DEFAULT NULL,
  `forMyTeam10` varchar(30) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `register02_torisetsu`
--

INSERT INTO `register02_torisetsu` (`id`, `forMyColleague01`, `forMyColleague02`, `forMyColleague03`, `forMyColleague04`, `forMyColleague05`, `forMyColleague06`, `forMyColleague07`, `forMyColleague08`, `forMyColleague09`, `forMyColleague10`, `forMyBoss01`, `forMyBoss02`, `forMyBoss03`, `forMyBoss04`, `forMyBoss05`, `forMyBoss06`, `forMyBoss07`, `forMyBoss08`, `forMyBoss09`, `forMyBoss10`, `forMyTeam01`, `forMyTeam02`, `forMyTeam03`, `forMyTeam04`, `forMyTeam05`, `forMyTeam06`, `forMyTeam07`, `forMyTeam08`, `forMyTeam09`, `forMyTeam10`, `date`) VALUES
(1, '常に楽しみです！', 'いつでも話しかけてほしい！', 'いつでも話しかけたい！', '先回りしてアドバイスされたい！', 'あれこれ教えてあげたい！', 'なるべく助けてほしい！', 'なるべく助けたい！', 'ぜひ誘ってほしい！', 'ぜひ誘ってほしい！', 'なんでも聞いて！', 'あれこれ任されたい！', '常に全速力で走りたい！', '常によりよく変えていきたい！', '日常的に指示してほしい！', '作業手順まで細かく指示してほしい！', 'はっきり明確に指示されたい！', '日常的に行いたい！', 'なるべく助けてほしい！', 'はっきり指摘されたい！', '皆の前で称賛されたい！', 'どんどん任せたい！', 'どんどん先読みして進めてほしい！', '常に判断を確認してほしい', '日常的に報告してほしい！', '進捗状況を細かく報告してほしい！', 'ミーティングでまとめて', '細かく日常的に行いたい！', 'できる限り助けたい！', '積極的に伝えられたい！', '皆で一緒に共有したい！', '2022-12-13 00:00:00'),
(2, '常に楽しみです！', 'いつでも話しかけてほしい！', 'いつでも話しかけたい！', '先回りしてアドバイスされたい！', 'あれこれ教えてあげたい！', 'なるべく助けてほしい！', 'なるべく助けたい！', 'ぜひ誘ってほしい！', 'ぜひ誘ってほしい！', 'なんでも聞いて！', 'あれこれ任されたい！', '常に全速力で走りたい！', '常によりよく変えていきたい！', '日常的に指示してほしい！', '作業手順まで細かく指示してほしい！', 'はっきり明確に指示されたい！', '日常的に行いたい！', 'なるべく助けてほしい！', 'はっきり指摘されたい！', '皆の前で称賛されたい！', 'どんどん任せたい！', 'どんどん先読みして進めてほしい！', '常に判断を確認してほしい', '日常的に報告してほしい！', '進捗状況を細かく報告してほしい！', 'ミーティングでまとめて', '細かく日常的に行いたい！', 'できる限り助けたい！', '積極的に伝えられたい！', '皆で一緒に共有したい！', '2023-01-04 17:56:28'),
(3, '常に楽しみです！', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-01-04 17:58:08'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04 18:06:31'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04 20:24:15'),
(6, 'できれば避けたい', 'あまり話しかけられたくない', 'あまり話しかけたくない', 'なるべく自分で考えたい', '自分以外に聞いてほしい', 'そっと見守ってほしい', 'そっと見守りたい', '一人で過ごしたい', 'できれば不参加で', 'なるべく避けたい', '役割だけを忠実に果たしたい', 'チームのペースで進めたい', 'これまでの方法に従いたい', 'できるだけ少なくしてほしい', '全て丸投げしてほしい', '確認しながら決めてほしい', '問題が起きたときだけ行いたい', 'そっと見守ってほしい', '気づかせるよう助言してほしい', '特に何も必要ない', '役割を忠実に果たしてほしい', 'チームのペースに合わせてほしい', '自分で判断して進めてほしい', 'できるだけ少なくしてほしい', '問題が起きたときだけにしてほしい', 'メールで伝えられたい', 'なるべく少なくしたい', 'そっと見守りたい', '気づかせるよう工夫してほしい', '特に何も必要ない', '2023-01-04 20:26:03'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04 21:27:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `register03_off`
--

CREATE TABLE `register03_off` (
  `id` int(12) NOT NULL,
  `residence` varchar(20) NOT NULL,
  `family` varchar(20) NOT NULL,
  `hobby` varchar(20) NOT NULL,
  `time_weekday` int(2) NOT NULL,
  `time_weekend` int(2) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `holiday` varchar(100) NOT NULL,
  `interest` varchar(100) NOT NULL,
  `crazy` varchar(100) NOT NULL,
  `love` varchar(100) NOT NULL,
  `important` varchar(100) NOT NULL,
  `collection` varchar(100) NOT NULL,
  `expensive` varchar(100) NOT NULL,
  `respect` varchar(100) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `register03_off`
--

INSERT INTO `register03_off` (`id`, `residence`, `family`, `hobby`, `time_weekday`, `time_weekend`, `facebook`, `instagram`, `twitter`, `holiday`, `interest`, `crazy`, `love`, `important`, `collection`, `expensive`, `respect`, `Date`) VALUES
(1, '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '2023-01-04 22:01:47'),
(2, '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '2023-01-04 22:01:53');

-- --------------------------------------------------------

--
-- テーブルの構造 `register04_truth`
--

CREATE TABLE `register04_truth` (
  `id` int(12) NOT NULL,
  `usual01` text DEFAULT NULL,
  `usual02` text DEFAULT NULL,
  `usual03` text DEFAULT NULL,
  `usual04` text DEFAULT NULL,
  `usual05` text DEFAULT NULL,
  `usual06` text DEFAULT NULL,
  `usual07` text DEFAULT NULL,
  `usual08` text DEFAULT NULL,
  `usual09` text DEFAULT NULL,
  `usual10` text DEFAULT NULL,
  `values01` text DEFAULT NULL,
  `values02` text DEFAULT NULL,
  `values03` text DEFAULT NULL,
  `values04` text DEFAULT NULL,
  `values05` text DEFAULT NULL,
  `values06` text DEFAULT NULL,
  `phrase` varchar(30) NOT NULL,
  `ilike` varchar(200) NOT NULL,
  `dislike` varchar(200) NOT NULL,
  `complex` varchar(200) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `register04_truth`
--

INSERT INTO `register04_truth` (`id`, `usual01`, `usual02`, `usual03`, `usual04`, `usual05`, `usual06`, `usual07`, `usual08`, `usual09`, `usual10`, `values01`, `values02`, `values03`, `values04`, `values05`, `values06`, `phrase`, `ilike`, `dislike`, `complex`, `Date`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '2023-01-04 23:49:57'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '2023-01-04 23:52:19');

-- --------------------------------------------------------

--
-- テーブルの構造 `register05_history`
--

CREATE TABLE `register05_history` (
  `id` int(12) NOT NULL,
  `childhood` varchar(200) NOT NULL,
  `teenage` varchar(200) NOT NULL,
  `new_grad` varchar(200) NOT NULL,
  `job_change` varchar(200) NOT NULL,
  `crossroads` varchar(200) NOT NULL,
  `vision` varchar(200) NOT NULL,
  `Date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `register05_history`
--

INSERT INTO `register05_history` (`id`, `childhood`, `teenage`, `new_grad`, `job_change`, `crossroads`, `vision`, `Date`) VALUES
(1, '', '', '', '', '', '', '2023-01-04 22:28:20');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `register00_photo`
--
ALTER TABLE `register00_photo`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `register01_on`
--
ALTER TABLE `register01_on`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `register02_torisetsu`
--
ALTER TABLE `register02_torisetsu`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `register03_off`
--
ALTER TABLE `register03_off`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `register04_truth`
--
ALTER TABLE `register04_truth`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `register05_history`
--
ALTER TABLE `register05_history`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `register00_photo`
--
ALTER TABLE `register00_photo`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `register01_on`
--
ALTER TABLE `register01_on`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルの AUTO_INCREMENT `register02_torisetsu`
--
ALTER TABLE `register02_torisetsu`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `register03_off`
--
ALTER TABLE `register03_off`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `register04_truth`
--
ALTER TABLE `register04_truth`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `register05_history`
--
ALTER TABLE `register05_history`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
