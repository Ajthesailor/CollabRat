-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2023 at 04:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collabrat`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Certified Lover Boy (Remixes)', 1, 3, 'assets/images/artworks/certified_lover_boy_cover.jpg'),
(2, 'Overboard', 4, 1, 'assets/images/artworks/overboard_cover.jpeg'),
(3, 'I Am I Have', 6, 7, 'assets/images/artworks/I_am_I_have_cover.jpeg'),
(4, 'From Ashes To Diamonds', 7, 7, 'assets/images/artworks/from_ashes_to_diamonds_cover.jpeg'),
(5, 'Man Of No Religion', 5, 2, 'assets/images/artworks/man_of_no_religion_cover.png'),
(6, 'Runaway', 8, 1, 'assets/images/artworks/runaway_cover.jpeg'),
(7, 'Unholy (Remixes)', 9, 1, 'assets/images/artworks/unholy_ushuu_flip_cover.png'),
(8, 'Positions (Remixes)', 10, 1, 'assets/images/artworks/positions_cover.jpeg'),
(9, 'Snakes EP', 11, 1, 'assets/images/artworks/shake_junt_cover.jpeg'),
(10, 'Waterfall (Remixes)', 12, 9, 'assets/images/artworks/waterfall_cover.jpeg'),
(11, 'Paper Route', 13, 1, 'assets/images/artworks/kleed_paper_route_cover.jpeg'),
(12, 'Bangerz (Remixes)', 14, 10, 'assets/images/artworks/bangerz_cover.jpeg'),
(13, 'Ain\'t It Fun (Remixes)', 15, 7, 'assets/images/artworks/aintitfun_cover.jpeg'),
(14, 'Graduation (Remixes)', 16, 4, 'assets/images/artworks/graduation_cover.jpeg'),
(15, 'Lemonade (Remixes)', 19, 11, 'assets/images/artworks/lemonade_cover.jpeg'),
(16, 'Fuji Opener (Remixes)', 20, 11, 'assets/images/artworks/fuji_opener_cover.jpeg'),
(17, 'Quest For Fire (Remixes)', 20, 11, 'assets/images/artworks/quest_for_fire_cover.jpeg'),
(18, 'Badders (Remix)', 20, 11, 'assets/images/artworks/badders_cover.jpeg'),
(19, 'Queen Of The Clouds (Remixes)', 18, 11, 'assets/images/artworks/queen_of_the_clouds_cover.jpeg'),
(20, 'DJ Turn It Up (Remixes)', 21, 11, 'assets/images/artworks/dimension_dj_turn_it_up_cover.jpeg'),
(21, 'Euphoria (Remixes)', 22, 11, 'assets/images/artworks/euphoria_cover.jpeg'),
(22, 'Runaway (Remixes)', 8, 11, 'assets/images/artworks/runaway_cover.jpeg'),
(23, 'Teenage Dream (Remixes)', 23, 11, 'assets/images/artworks/teenage_dream_cover.avif'),
(24, 'NORMALIZE', 24, 12, 'assets/images/artworks/cyberself_normalize_cover.jpeg'),
(25, 'Get Up Feat. Micah Martin', 25, 12, 'assets/images/artworks/social_kid_get_up_cover.jpeg'),
(26, 'Cobra (Remixes)', 26, 11, 'assets/images/artworks/cobra_cover.jpeg'),
(27, 'Megan Thee Stallion (Remixes)', 26, 11, 'assets/images/artworks/megan_cover.jpeg'),
(28, 'Scarlet (Remixes)', 30, 11, 'assets/images/artworks/scarlet_cover.jpeg'),
(29, 'Sound Of Da Police (LXTVS Remix)', 31, 9, 'assets/images/artworks/krs_one_cover.jpeg'),
(30, 'Renaissance (Remixes)', 32, 11, 'assets/images/artworks/renaissance_cover.webp'),
(31, 'Daft Punk (Remixes)', 33, 11, 'assets/images/artworks/daft_punk_cover.png'),
(32, 'adore u (Remixes)', 34, 11, 'assets/images/artworks/adore_u_cover.jpeg'),
(33, 'The Great Escape (Remixes)', 35, 11, 'assets/images/artworks/the_great_escape_cover.jpeg'),
(34, 'The Wounded Healer (Remixes)', 29, 11, 'assets/images/artworks/wounded_healer_cover.jpeg'),
(35, 'Actual Life 3', 34, 11, 'assets/images/artworks/actual_life_3_cover.jpeg'),
(36, 'ten (Remixes)', 34, 11, 'assets/images/artworks/adore_u_cover.jpeg'),
(37, 'MIDHEAVEN: OPUS', 36, 12, 'assets/images/artworks/midheaven_cover.jpeg'),
(38, 'SPLIT // PERSONALITY', 36, 12, 'assets/images/artworks/split_personality_cover.jpeg'),
(39, 'Loyal (Remixes)', 37, 11, 'assets/images/artworks/loyal_cover.jpeg'),
(40, 'Deathpact (Remixes)', 36, 11, 'assets/images/artworks/midheaven_remixes_cover.jpeg'),
(41, 'Flowers (Remixes)', 14, 11, 'assets/images/artworks/flowers_cover.webp'),
(42, 'Into You', 38, 16, 'assets/images/artworks/into_you_cover.jpeg'),
(43, 'Malaa (Remixes)', 39, 11, 'assets/images/artworks/malaa_cover.jpeg'),
(44, 'Run', 27, 1, 'assets/images/artworks/run_cover.jpeg'),
(45, 'Too Turnt', 27, 1, 'assets/images/artworks/too_turnt_cover.jpeg'),
(46, 'Gunna (Remixes)', 40, 11, 'assets/images/artworks/gunna_cover.jpeg'),
(47, 'Sky High', 28, 1, 'assets/images/artworks/sky_high_cover.jpeg'),
(48, 'Pepper (Remixes)', 20, 11, 'assets/images/artworks/pepper_cover.jpeg'),
(49, 'Dead Man Walking (Remixes)', 41, 11, 'assets/images/artworks/last_one_standing_cover.jpeg'),
(50, 'Revive EP', 42, 1, 'assets/images/artworks/revive_cover.jpeg'),
(51, 'Don\'t Get Too Close (Remixes)', 20, 11, 'assets/images/artworks/dont_get_too_close.jpeg'),
(52, 'David Guetta (Remixes)', 43, 11, 'assets/images/artworks/whos_that_chick_cover.jpeg'),
(53, 'Rihanna (Remixes)', 3, 11, 'assets/images/artworks/rihanna_cover.jpeg'),
(54, 'NITE FEVERZ EP', 27, 1, 'assets/images/artworks/nite_feverz_cover.jpeg'),
(55, 'Fisher (Remixes)', 44, 11, 'assets/images/artworks/fisher_cover.jpg'),
(56, 'Kylie Minogue (Remixes)', 45, 11, 'assets/images/artworks/kylie_minogue_cover.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Drake'),
(2, 'Cyclops'),
(3, 'Rihanna'),
(4, 'Anchor Issues'),
(5, 'Harrison'),
(6, 'Ninety-Five Ninety-Six'),
(7, 'Sid Stratton'),
(8, 'Papa Khan'),
(9, 'Sam Smith & Kim Petras'),
(10, 'Ariana Grande'),
(11, 'Distinct Motive'),
(12, 'Disclosure & Raye'),
(13, 'KLEED'),
(14, 'Miley Cyrus'),
(15, 'Paramore'),
(16, 'Kanye West'),
(17, 'Pink Pantheress'),
(18, 'Tove Lo'),
(19, 'Internet Money'),
(20, 'Skrillex'),
(21, 'Dimension'),
(22, 'Tisoki'),
(23, 'Katy Perry'),
(24, 'Cyberself'),
(25, 'Social Kid'),
(26, 'Megan Thee Stallion'),
(27, 'beastboi.'),
(28, 'Barely Alive & beastboi.'),
(29, 'GHOST DATA'),
(30, 'Doja Cat'),
(31, 'KRS-One'),
(32, 'Beyoncé'),
(33, 'Daft Punk'),
(34, 'Fred again...'),
(35, 'Boys Like Girls'),
(36, 'Deathpact'),
(37, 'ODESZA'),
(38, 'GSPR & NEVALEFT'),
(39, 'Malaa'),
(40, 'Gunna'),
(41, 'Zomboy'),
(42, 'Ace Aura'),
(43, 'David Guetta'),
(44, 'Fisher'),
(45, 'Kylie Minogue');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Dubstep'),
(2, 'House'),
(3, 'Rap'),
(4, 'Hip Hop'),
(5, 'Pop'),
(6, 'Techno'),
(7, 'Rock'),
(8, 'Disco'),
(9, 'Drum & Bass'),
(10, 'Riddim'),
(11, 'Multi'),
(12, 'Midtempo'),
(13, 'Deep House'),
(14, 'Bounce'),
(15, 'Electronic'),
(16, 'Future House'),
(17, 'R&B'),
(18, 'Psytrance'),
(19, 'Hardstyle'),
(20, 'Trap (EDM)'),
(21, 'Future Bass'),
(22, 'Tech House'),
(23, 'Moombahton'),
(24, 'UK Garage'),
(25, 'Trance'),
(26, 'Melodic House'),
(27, 'Jersey Club'),
(28, 'Bass House'),
(29, 'Electric House'),
(30, 'Circuit House'),
(31, 'Vogue'),
(32, 'Amapiano'),
(33, 'Liquid Drum & Bass'),
(34, 'Colour Bass'),
(35, 'Hard Dance'),
(36, 'Latin Music'),
(37, 'EDM'),
(38, 'Colour House'),
(39, 'Bass');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(3, 'playlist', 'timmytone', '2023-12-11 00:00:00'),
(4, 'Favs', 'Keems', '2023-12-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE `playlistSongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlistSongs`
--

INSERT INTO `playlistSongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(9, 5, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE `Songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Deimos', 7, 4, 7, '1:03', 'assets/music/deimos.wav', 1, 14),
(2, 'Ashes To Diamonds', 7, 4, 7, '3:57', 'assets/music/ashes_to_diamonds.wav', 2, 10),
(3, 'Bloodgrind', 7, 4, 7, '3:47', 'assets/music/bloodgrind.wav', 3, 10),
(4, 'Twilight Zone', 7, 4, 7, '5:27', 'assets/music/twilight_zone.wav', 4, 4),
(5, 'Let Sleeping Corpses Jive', 7, 4, 7, '4:33', 'assets/music/let_sleeping_corpses_jive.wav', 5, 16),
(6, 'Beyond The Pale', 7, 4, 7, '3:13', 'assets/music/beyond_the_pale.wav', 6, 12),
(7, 'Moxie', 7, 4, 7, '4:18', 'assets/music/moxie.wav', 7, 5),
(8, 'Children Of The Bad Revolution', 7, 4, 7, '3:35', 'assets/music/children_of_the_bad_revolution.wav', 8, 5),
(9, 'I Am I Have', 6, 3, 7, '3:00', 'assets/music/ninety_five_ninety_six_I_am_I_have.mp3', 1, 5),
(10, 'Unholy (Ushuu Remix)', 9, 7, 1, '3:27', 'assets/music/unholy_ushuu_flip.mp3', 1, 8),
(11, 'Positions (Bassfreak Remix)', 10, 8, 1, '3:22', 'assets/music/positions_bassfreak_edit.wav', 1, 8),
(12, 'Shake Junt', 11, 9, 1, '4:13', 'assets/music/shake_junt.mp3', 1, 5),
(13, 'Man Of No Religion', 5, 5, 2, '3:06', 'assets/music/harrison_man_of_no_religion.mp3', 2, 4),
(14, 'Poison', 5, 5, 2, '2:37', 'assets/music/harrison_poison.mp3', 1, 8),
(15, 'Unholy (Disclosure Remix)', 9, 7, 2, '3:54', 'assets/music/unholy_disclosure_remix.mp3', 2, 12),
(16, 'Unholy (ACRAZE Remix)', 9, 7, 2, '2:57', 'assets/music/unholy_acraze_remix.mp3', 3, 8),
(17, 'Positions (Daju Remix)', 10, 8, 8, '3:43', 'assets/music/positions_daju_remix.mp3', 2, 6),
(18, 'Waterfall (LOTO Remix)', 12, 10, 9, '4:23', 'assets/music/waterfall_loto_bootleg.mp3', 1, 9),
(19, 'Overboard', 4, 2, 1, '3:16', 'assets/music/anchor_issues_overboard.wav', 1, 6),
(20, 'Way 2 Sexy Feat. Future & Young Thug (Dzeko & Will K Remix)', 1, 1, 2, '3:22', 'assets/music/way_2_sexy_dzeko_willk_remix.mp3', 1, 15),
(21, 'No Friends In The Industry (Bad Bert Remix)', 1, 1, 2, '3:20', 'assets/music/no_friends_in_the_industry_bad_bert_remix.mp3', 2, 7),
(22, 'N 2 Deep Feat. Future (Kashin Remix)', 1, 1, 2, '3:42', 'assets/music/n_2_deep_kashin_remix.mp3', 3, 8),
(23, 'Fair Trade Feat. Travis Scott (Cyanic Remix)', 1, 1, 2, '4:27', 'assets/music/fair_trade_cyanic_remix.mp3', 4, 3),
(24, 'Way 2 Sexy Feat. Future & Young Thug (Valentino Khan Remix)', 1, 1, 2, '3:12', 'assets/music/way_2_sexy_valentino_khan_remix.mp3', 5, 1),
(25, 'Waterfall (Teddy Killerz Remix)', 12, 10, 9, '3:01', 'assets/music/waterfall_teddy_killerz_remix.mp3', 2, 8),
(26, 'Waterfall (ORBZ Remix)', 12, 10, 9, '4:21', 'assets/music/waterfall_orbz_remix.mp3', 3, 7),
(27, 'Paper Route', 13, 11, 1, '2:11', 'assets/music/kleed_paper_route.mp3', 1, 19),
(28, 'Wrecking Ball (OG Nixin Remix)', 14, 12, 10, '3:53', 'assets/music/wrecking_ball_og_nixin_remix.mp3', 1, 6),
(29, 'Ain\'t It Fun (Westy Remix)', 15, 13, 7, '4:17', 'assets/music/aint_it_fun_westy_edit.mp3', 1, 9),
(30, 'Ain\'t It Fun (Noah Kraly Remix)', 15, 13, 7, '4:00', 'assets/music/aint_it_fun_noah_kraly_remix.mp3', 2, 3),
(31, 'Can\'t Tell Me Nothing (Seeb Remix)', 16, 14, 4, '4:14', 'assets/music/cant_tell_me_nothing_seeb_remix.mp3', 1, 7),
(32, 'Can\'t Tell Me Nothing (Rolo Remix)', 16, 14, 6, '6:45', 'assets/music/cant_tell_me_nothing_rolo_edit.mp3', 2, 7),
(33, 'Runaway', 8, 6, 1, '', 'assets/music/papa_khan_runaway.mp3', 1, 13),
(34, 'Unholy (Nitti Remix)', 9, 7, 1, '3:55', 'assets/music/unholy_nitti_remix.mp3', 4, 8),
(35, 'Unholy (TroyBoi Remix)', 9, 7, 1, '2:53', 'assets/music/unholy_troyboi_remix.mp3', 5, 6),
(36, 'Unholy (Navos Remix)', 9, 7, 1, '2:33', 'assets/music/unholy_navos_edit.mp3', 6, 5),
(37, 'Unholy (Adnan Veron & NYXX Remix)', 9, 7, 1, '3:42', 'assets/music/unholy_adnan_veron_and_nyxx_remix.mp3', 7, 6),
(38, 'Lemonade Feat Roddy Ricch & Don Toliver (Drum & Drill Remix)', 19, 15, 9, '3:12', 'assets/music/lemonade_drum_and_drill_remix.mp3', 1, 9),
(39, 'Lemonade Feat Roddy Ricch & Don Toliver (Kacper Kawala Remix)', 19, 15, 2, '3:44', 'assets/music/lemonade_kacper_kawala_remix.mp3', 2, 4),
(40, 'Lemonade Feat Roddy Ricch & Don Toliver (Mashbit Mashup)', 19, 15, 12, '1:54', 'assets/music/lemonade_mashbit_mashup.mp3', 3, 5),
(41, 'Yebba\'s Heartbreak (LTGTR Remix)', 1, 1, 2, '2:08', 'assets/music/yebbas_heartbreak_ltgtr_edit.mp3', 6, 6),
(42, 'Girls Want Girls (Buunshins Remix)', 1, 1, 9, '2:33', 'assets/music/girls_wants_girls_buunshins_flip.mp3', 7, 5),
(43, 'Race My Mind (Litefeet Remix)', 1, 1, 14, '4:22', 'assets/music/race_my_mind_litefeet_remix.mp3', 8, 10),
(44, '7AM On Bridle Path Into You (Noxz Mashup)', 1, 1, 17, '2:45', 'assets/music/7am_on_bridle_path_into_you_noxz_mashup.mp3', 9, 10),
(45, 'Fuji Opener (DJ Gaw Remix)', 20, 16, 9, '4:48', 'assets/music/fuji_opener_dj_gaw_remix.mp3', 1, 6),
(46, 'Fuji Opener (rSUN Remix)', 20, 16, 20, '3:02', 'assets/music/fuji_opener_rsun_remix.mp3', 2, 8),
(47, 'Fuji Opener (Adam Annella Remix)', 20, 16, 1, '2:19', 'assets/music/fuji_opener_adam_annella_remix.mp3', 3, 3),
(48, 'Fuji Opener (beastboi. Remix)', 20, 16, 1, '2:49', 'assets/music/fuji_opener_beastboi_remix.mp3', 4, 7),
(49, 'Fuji Opener (The Infamous Remix)', 20, 16, 1, '2:35', 'assets/music/fuji_opener_the_infamous_remix.mp3', 5, 4),
(50, 'Fuji Opener (FOMO Remix)', 20, 16, 20, '2:59', 'assets/music/fuji_opener_fomo_remix.mp3', 6, 1),
(51, 'Fuji Opener (9V Remix)', 20, 16, 27, '2:16', 'assets/music/fuji_opener_9v_remix.mp3', 7, 8),
(102, 'Leave Me Like This Feat. Bobby Raps (Shreddy & Rova Remix)', 20, 17, 9, '4:24', 'assets/music/leave_me_like_this_shreddy_rova_remix.mp3', 1, 6),
(103, 'Ratata Feat. Missy Elliot (Mylky Remix)', 20, 17, 20, '3:11', 'assets/music/ratata_mylky_remix.mp3', 2, 3),
(104, 'Hydrate Feat. Flowdan, Beam, & Peekaboo (BRAINWAIVEZ Remix)', 20, 17, 1, '3:15', 'assets/music/hydrate_brainwaivez_remix.mp3', 3, 9),
(105, 'Supersonic Feat. Noisia, Josh Pan, & Dylan Brady (Nitepunk Remix)', 20, 17, 9, '3:30', 'assets/music/supersonic_nitepunk_remix.mp3', 4, 6),
(106, 'Rumble Feat. Flowdan & Fred Again... (Kill Script Remix)', 20, 17, 6, '4:00', 'assets/music/rumble_kill_script_remix.mp3', 5, 12),
(107, 'Ratata Feat. Missy Elliot (Chomppa Remix)', 20, 17, 20, '2:18', 'assets/music/ratata_chomppa_remix.mp3', 6, 2),
(108, 'Supersonic Feat. Noisia, Josh Pan, & Dylan Brady (DRZ, Sam SHB, & Temple Remix)', 20, 17, 9, '4:33', 'assets/music/supersonic_drz_sam_shb_temple_remix.mp3', 7, 5),
(109, 'Rumble Feat. Flowdan & Fred Again... (Netgate Remix)', 20, 17, 22, '4:00', 'assets/music/rumble_netgate_remix.mp3', 8, 8),
(110, 'Hydrate Feat. Flowdan, Beam, & Peekaboo (SELEKTA Remix)', 20, 17, 1, '2:48', 'assets/music/hydrate_selekta_remix.mp3', 9, 5),
(111, 'Supersonic Feat. Noisia, Josh Pan, & Dylan Brady (Spin Off Remix)', 20, 17, 28, '3:26', 'assets/music/supersonic_spin_off_remix.mp3', 10, 14),
(112, 'Ratata Feat. Missy Elliot (Alice Gas Remix)', 20, 17, 9, '2:44', 'assets/music/ratata_alice_gas_remix.mp3', 11, 2),
(113, 'A Street I Know (SNNK Remix)', 20, 17, 15, '3:50', 'assets/music/a_street_I_know_snnk_remix.mp3', 12, 5),
(114, 'Supersonic Feat. Noisia, Josh Pan, & Dylan Brady (LALZIN Remix)', 20, 17, 22, '3:36', 'assets/music/supersonic_lalzin_remix.mp3', 13, 3),
(115, 'Ratata Feat. Missy Elliot (BLKMRKT Remix)', 20, 17, 20, '3:14', 'assets/music/ratata_blkmrkt_remix.mp3', 14, 2),
(116, 'Inhale Exhale Feat. Aluna & Kito (Chris Maze Remix)', 20, 17, 2, '5:16', 'assets/music/inhale_exhale_chris_maze_remix.mp3', 15, 2),
(117, 'Rumble Feat. Flowdan & Fred Again... (Legacy Remix)', 20, 17, 2, '2:43', 'assets/music/rumble_legacy_remix.mp3', 16, 2),
(118, 'Inhale Exhale Feat. Aluna & Kito (MaxMillion Remix)', 20, 17, 2, '2:;19', 'assets/music/inhale_exhale_maxmillion_remix.mp3', 17, 5),
(119, 'Ratata Feat. Missy Elliot (Mylky Remix)', 20, 17, 20, '3:11', 'assets/music/ratata_mylky_remix.mp3', 18, 4),
(120, 'Tears (Proxys Remix)', 20, 17, 1, '2:53', 'assets/music/tears_proxys_remix.mp3', 19, 4),
(121, 'Ratata Feat. Missy Elliot (Moldae Remix)', 20, 17, 1, '2:08', 'assets/music/ratata_moldae_remix.mp3', 20, 7),
(122, 'Inhale Exhale Feat. Aluna & Kito (Illoh Remix)', 20, 17, 1, '1:54', 'assets/music/inhale_exhale_illoh_remix.mp3', 21, 5),
(123, 'Ratata Feat. Missy Elliot (Tynan Remix)', 20, 17, 1, '2:13', 'assets/music/ratata_tynan_remix.mp3', 22, 8),
(124, 'Inhale Exhale Feat. Aluna & Kito (Skrillex Mashup Crazy D Remake)', 20, 17, 20, '3:25', 'assets/music/inhale_exhale_princess_diana_skrillex_mashup_crazy_d_remake.mp3', 23, 5),
(125, 'Ratata Feat. Missy Elliot (Psyops Remix)', 20, 17, 9, '3:02', 'assets/music/ratata_psyops_remix.mp3', 24, 1),
(126, 'Habits (Stay High) (Drew Remix)', 18, 19, 2, '3:43', 'assets/music/habits_stay_high_drew_remix.mp3', 1, 4),
(127, 'Thousand Miles (RZD Remix)', 18, 19, 20, '', 'assets/music/thousand_miles_rzd_remix.mp3', 2, 1),
(128, 'Talking Body (777 Remix)', 18, 19, 1, '3:44', 'assets/music/talking_body_777_remix.mp3', 3, 7),
(129, 'Not On Drugs (The Knocks Remix)', 18, 19, 15, '4:26', 'assets/music/not_on_drugs_the_knocks_remix.mp3', 4, 3),
(130, 'Talking Body (Kream Remix)', 18, 19, 16, '3:36', 'assets/music/talking_body_kream_remix.mp3', 5, 6),
(131, 'Habits (Stay High) (10AD & Zootie Remix)', 18, 19, 9, '4:27', 'assets/music/habits_stay_high_10ad_and_zootie_remix.mp3', 6, 4),
(132, 'The Way That I Am (ØWL Remix)', 18, 19, 1, '3:19', 'assets/music/the_way_that_I_am_owl_remix.mp3', 7, 5),
(133, 'High (Stay High) (Sharkk Remix)', 18, 19, 2, '4:51', 'assets/music/habits_stay_high_sharkk_remix.mp3', 8, 1),
(134, 'Badders Feat. Flowdan, Peekaboo, & G-Rex (Oddprophet Remix)', 20, 18, 1, '4:03', 'assets/music/badders_nosphere_remix.mp3', 1, 7),
(135, 'Badders Feat. Flowdan, Peekaboo, & G-Rex (Nosphere Remix)', 20, 18, 1, '4:09', 'assets/music/badders_nosphere_remix.mp3', 2, 12),
(136, 'DJ Turn It Up (Flozone Remix)', 21, 20, 1, '4:00', 'assets/music/dimension_dj_turn_it_up_flozone_remix.mp3', 1, 5),
(137, 'DJ Turn It Up (jpky Remix)', 21, 20, 1, '2:03', 'assets/music/dimension_dj_turn_it_up_flozone_remix.mp3', 2, 5),
(138, 'DJ Turn It Up (Ben Nicky Remix)', 21, 20, 18, '2:18', 'assets/music/dimension_dj_turn_it_up_ben_nicky_remix.mp3', 3, 2),
(139, 'Let You Down Feat. Pauline Her (Raptures Remix)', 22, 21, 16, '3:40', 'assets/music/tisoki_pauline_her_let_you_down_raptures_remix.mp3', 1, 7),
(140, 'Runaway (Korzana Remix)', 8, 22, 2, '2:36', 'assets/music/papa_khan_runaway_korzana_remix.mp3', 1, 8),
(141, 'Last Friday Night (T.G.I.F.) (Max Major Remix)', 23, 23, 2, '3:33', 'assets/music/last_friday_night_max_major_remix.mp3', 1, 7),
(142, 'Wrecking Ball (Robin Roji Remix)', 14, 12, 30, '2:54', 'assets/music/wrecking_ball_robin_roij_remix.mp3', 2, 4),
(143, 'California Gurls (Chxnce Remix)', 23, 23, 17, '3:00', 'assets/music/california_gurls_chxnce_remix.mp3', 2, 4),
(144, 'Who Am I Living For (Self-x Remix)', 23, 23, 7, '4:13', 'assets/music/who_am_I_living_for_self_x_remix.mp3', 3, 6),
(145, 'The One That Got Away (X4 Remix)', 23, 23, 9, '3:36', 'assets/music/the_one_that_got_away_x4_remix.mp3', 4, 3),
(146, 'Firework (Piksher Remix)', 23, 23, 29, '2:34', 'assets/music/firework_piksher_remix.mp3', 5, 1),
(147, 'Paint The Town Red (Tonez Remix)', 30, 28, 22, '3:01', 'assets/music/paint_the_town_red_tonez_remix.mp3', 1, 0),
(148, 'Agora Hills Body Party (DJ Double CC Mashup)', 30, 28, 17, '3:44', 'assets/music/agora_hills_body_party_remix.mp3', 2, 5),
(149, 'Paint The Town Red (Socievole & Adalwolf Remix)', 30, 28, 6, '3:42', 'assets/music/paint_the_town_red_socievole_and_adalwolf_remix.mp3', 3, 2),
(150, 'Attention (Calcium Remix)', 30, 28, 1, '1:36', 'assets/music/attention_calcium_remix.mp3', 4, 7),
(151, 'Paint The Town Red (James Hype Remix)', 30, 28, 22, '2:32', 'assets/music/paint_the_town_red_james_hype_remix.mp3', 5, 3),
(152, 'Wet Vagina (Obey The Universe Remix)', 30, 28, 9, '2:24', 'assets/music/wet_vagina_obey_the_universe_remix.mp3', 6, 1),
(153, 'Paint The Town Red (M4X Remix)', 30, 28, 16, '2:41', 'assets/music/paint_the_town_red_m4x_remix.mp3', 7, 4),
(154, 'Badders Feat. Flowdan, Peekaboo, & G-Rex (SELEKTA Remix)', 20, 18, 1, '3:22', 'assets/music/badders_selekta_remix.mp3', 3, 3),
(155, 'Badders Feat. Flowdan, Peekaboo, & G-Rex (PERSONA NON GRATA Remix)', 20, 18, 9, '4:00', 'assets/music/badders_persona_non_grata_remix.mp3', 4, 4),
(156, 'Badders Feat. Flowdan, Peekaboo, & G-Rex (MC Grizz Remix)', 20, 18, 28, '3:18', 'assets/music/badders_mc_grizz_remix.mp3', 5, 4),
(157, 'Badders Feat. Flowdan, Peekaboo, & G-Rex (Deepfake Remix)', 20, 18, 28, '2:45', 'assets/music/badders_deepfake_remix.mp3', 6, 3),
(158, 'Go Feat. San Holo & RUNN (Raptures Remix)', 22, 21, 2, '3:37', 'assets/music/tisoki_san_holo_runn_go_raptures_remix.mp3', 2, 9),
(159, 'Skin (Fraxy Remix)', 22, 21, 28, '2:39', 'assets/music/skin_fraxy_remix.mp3', 3, 6),
(160, 'Go Feat. San Holo & RUNN (jpky Remix)', 22, 21, 20, '2:03', 'assets/music/tisoki_san_holo_runn_go_jpky_remix.mp3', 4, 7),
(161, 'Go Feat. San Holo & RUNN (Keela & Not Fair Remix)', 22, 21, 9, '2:58', 'assets/music/tisoki_san_holo_runn_go_keela_not_fair_remix.mp3', 5, 3),
(162, 'Go Feat. San Holo & RUNN (Rainbow Static Remix)', 22, 21, 20, '2:52', 'assets/music/tisoki_san_holo_runn_go_rainbow_static_remix.mp3', 6, 4),
(163, 'Go Feat. San Holo & RUNN (Josh Byron Remix)', 22, 21, 27, '3:06', 'assets/music/tisoki_san_holo_runn_josh_byron_remix.mp3', 7, 4),
(164, 'Go Feat. San Holo & RUNN (So Sus Remix)', 22, 21, 21, '3:01', 'assets/music/tisoki_san_holo_runn_go_so_sus_remix.mp3', 8, 1),
(171, 'Cozy (MikeQ Remix)', 32, 30, 31, '2:40', 'assets/music/cozy_mikeq_remix.mp3', 1, 4),
(172, 'Alien Superstar (Raz Danon Remix)', 32, 30, 30, '4:39', 'assets/music/alien_superstar_raz_danon_remix.mp3', 2, 2),
(173, 'Pure/Honey (Cat Dealers Remix)', 32, 30, 22, '3:36', 'assets/music/pure_honey_cat_dealers_remix.mp3', 3, 5),
(174, 'One More Time (Surreal Remix)', 33, 31, 9, '', 'assets/music/one_more_time_surreal_remix.mp3', 1, 3),
(175, 'One More Time (Ghost Lotus Remix)', 33, 31, 1, '2:03', 'assets/music/one_more_time_ghost_lotus_remix.mp3', 2, 4),
(176, 'Technologic (R3dX Remix)', 33, 31, 9, '4:24', 'assets/music/technologic_r3dx_remix.mp3', 3, 6),
(179, 'Around The World (Thomas Nan Remix)', 33, 31, 29, '2:43', 'assets/music/around_the_world_thomas_nan_remix.mp3', 4, 1),
(180, 'Harder, Better, Faster, Stronger (RetroVision Remix)', 33, 31, 16, '4:26', 'assets/music/harder_better_faster_stronger_retrovision_remix.mp3', 5, 1),
(181, 'Cobra (Spiritbox Remix)', 26, 26, 7, '3:04', 'assets/music/cobra_spiritbox_remix.mp3', 1, 4),
(182, 'adore u (Mania & Thorne Remix)', 34, 32, 9, '3:44', 'assets/music/adore_u_mania_and_thorne_remix.mp3', 1, 3),
(183, 'Kitty Kat Feat. Malik (Tpromix Remix)', 26, 27, 14, '3:28', 'assets/music/kitty_kat_tpromix_remix.mp3', 1, 5),
(184, 'Cobra (ellis Remix)', 26, 26, 16, '1:54', 'assets/music/cobra_ellis_remix.mp3', 2, 4),
(185, 'The Great Escape (VLCN Remix)', 35, 33, 1, '2:29', 'assets/music/boys_like_girls_the_great_escape_vlcn_remix.mp3', 1, 4),
(186, 'The Great Escape (Inquisitive Remix)', 35, 33, 18, '3:01', 'assets/music/boys_like_girls_the_great_escape_inquisitive_remix.mp3', 2, 1),
(187, 'The Great Escape (Zaxx Remix)', 35, 33, 29, '4:54', 'assets/music/boys_like_girls_the_great_escape_zaxx_remix.mp3', 3, 3),
(188, 'The Wounded Healer (RetiredOrphan Remix)', 29, 34, 12, '5:16', 'assets/music/the_wounded_healer_retiredorphan_remix.mp3', 1, 5),
(189, 'Delilah (pull me out of this) (K Motionz Remix)', 34, 35, 9, '3:35', 'assets/music/delilah_pull_me_out_of_this_k_motionz_remix.mp3', 1, 3),
(190, 'Danielle (smile on my face) (Paju Remix)', 34, 35, 33, '2:40', 'assets/music/fred_again_danielle_smile_on_my_face_paju_remix.mp3', 2, 2),
(191, 'ten Feat. Jozzy (Manil Remix)', 34, 36, 2, '1:54', 'assets/music/fred_again_ten_manil_remix.mp3', 1, 9),
(192, 'Rumble Feat. Flowdan & Fred Again... (LSDREAM & Billy Wonka Remix)', 20, 17, 1, '2:31', 'assets/music/rumble_lsdream_billy_wonka_remix.mp3', 25, 2),
(193, 'Still Here Feat. Porter Robinson & Bibi Bourelly (ETERNAL Remix)', 20, 17, 21, '3:06', 'assets/music/still_here_eternal_remix.mp3', 26, 0),
(194, 'Badders Feat. Flowdan, Peekaboo, & G-Rex (Mushroom Cloud Remix)', 20, 18, 10, '2:47', 'assets/music/badders_mushroom_cloud_remix.mp3', 7, 1),
(195, 'Badders Feat. Flowdan, Peekaboo, & G-Rex (Ugly Lungs Remix)', 20, 18, 20, '2:20', 'assets/music/badders_ugly_lungs_remix.mp3', 8, 3),
(196, 'NORMALIZE', 24, 24, 12, '5:00', 'assets/music/cyberself_normalize.mp3', 1, 0),
(197, 'SOOTHSAYER', 36, 37, 12, '3:27', 'assets/music/deathpact_soothsayer.mp3', 2, 4),
(198, 'ACHROMATIC (YOI)', 36, 37, 20, '2:55', 'assets/music/deathpact_achromatic_yoi.mp3', 1, 1),
(199, 'BACK FROM THE DEAD', 36, 37, 1, '2:27', 'assets/music/deathpact_back_from_the_dead.mp3', 3, 5),
(200, 'FALLING', 36, 37, 15, '4:17', 'assets/music/deathpact_falling.mp3', 4, 5),
(201, 'BDASWY', 36, 37, 15, '4:17', 'assets/music/deathpact_falling.mp3', 5, 0),
(202, 'SONG SEVEN', 36, 37, 12, '3:46', 'assets/music/deathpact_song_seven.mp3', 6, 2),
(203, 'AXIOM', 36, 37, 1, '2:38', 'assets/music/deathpact_axiom.mp3', 7, 2),
(204, 'PRETEND', 36, 37, 15, '2:21', 'assets/music/deathpact_pretend.mp3', 8, 2),
(205, 'FALLING (Montell2099 Remix)', 36, 40, 9, '3:51', 'assets/music/deathpact_falling_montell2099_remix.mp3', 1, 6),
(206, 'SOOTHSAYER (Jon Casey Remix)', 36, 40, 28, '3:11', 'assets/music/deathpact_soothsayer_jon_casey_remix.mp3', 2, 3),
(207, 'Loyal (Coming Soon!! Remix)', 37, 39, 11, '6:15', 'assets/music/odesza_loyal_coming_soon_remix.mp3', 2, 1),
(208, 'Loyal (Deathpact Remix)', 37, 39, 12, '4:01', 'assets/music/odesza_loyal_deathpact_remix.mp3', 1, 2),
(209, 'Loyal (Twinsick Remix)', 37, 39, 21, '3:07', 'assets/music/odesza_loyal_twinsick_remix.mp3', 3, 1),
(210, 'CATALYST', 36, 38, 15, '3:06', 'assets/music/deathpact_catalyst.mp3', 1, 2),
(211, 'HIATUS', 36, 38, 12, '1:44', 'assets/music/deathpact_hiatus.mp3', 2, 5),
(212, 'BLOODLINE', 36, 38, 1, '2:46', 'assets/music/deathpact_bloodline.mp3', 3, 5),
(213, 'SONG SIX', 36, 38, 12, '4:50', 'assets/music/deathpact_song_six.mp3', 4, 1),
(214, 'SPLIT PERSONALITY', 36, 38, 12, '4:39', 'assets/music/deathpact_split_personality.mp3', 5, 1),
(215, 'INTERFERENCE_03', 36, 38, 1, '2:12', 'assets/music/deathpact_interference_03.mp3', 6, 1),
(216, '0506+056', 36, 38, 20, '1:58', 'assets/music/deathpact_0506_056.mp3', 7, 1),
(217, 'COALESCE', 36, 38, 15, '2:52', 'assets/music/deathpact_coalesce.mp3', 8, 0),
(218, 'Someone Else (Party Favor Remix)', 14, 12, 20, '4:20', 'assets/music/someone_else_party_favor_remix.mp3', 3, 0),
(219, 'Xena (Ely Oaks Remix)', 20, 17, 22, '2:35', 'assets/music/xena_ely_oaks_remix.mp3', 27, 2),
(220, 'Rumble Feat. Flowdan & Fred Again... (Pixel Terror Remix)\r\n', 20, 17, 1, '2:08', 'assets/music/rumble_pixel_terror_remix.mp3', 28, 2),
(221, 'Still Here Feat. Porter Robinson & Bibi Bourelly (OAKUM Remix)', 20, 17, 1, '3:18', 'assets/music/still_here_oakum_remix.mp3', 29, 3),
(222, 'Flowers (DJ Trojan Remix)', 14, 41, 29, '3:03', 'assets/music/flowers_dj_trojan_remix.mp3', 1, 2),
(223, 'Flowers (DJ Dark Remix)', 14, 41, 13, '3:02', 'assets/music/flowers_dj_dark_remix.mp3', 2, 2),
(224, 'Flowers (BKAYE Remix)', 14, 41, 2, '3:52', 'assets/music/flowers_bkaye_remix.mp3', 3, 0),
(225, 'Flowers (Clara Ribeiro Remix)', 14, 41, 2, '3:18', 'assets/music/flowers_clara_ribeiro_remix.mp3', 4, 1),
(226, 'Flowers (Pretty Pink Remix)', 14, 41, 6, '4:51', 'assets/music/flowers_pretty_pink_remix.mp3', 5, 0),
(227, 'Flowers (HARVOS Remix)', 14, 41, 16, '3:03', 'assets/music/flowers_harvos_remix.mp3', 6, 2),
(228, 'Who I Am (Lodgerz Remix)', 39, 43, 28, '3:21', 'assets/music/who_I_am_lodgerz_remix.mp3', 1, 4),
(229, 'Into You', 38, 42, 16, '3:07', 'assets/music/gspr_nevaleft_into_you.mp3', 1, 1),
(230, 'Today Feat. Cordae (Ruvlo Remix)', 40, 46, 1, '2:48', 'assets/music/today_ruvlo_remix.mp3', 2, 2),
(231, 'Fukumean (Tisoki Remix)', 40, 46, 20, '', 'assets/music/fukumean_tisoki_remix.mp3', 1, 3),
(232, 'Run', 27, 44, 1, '3:05', 'assets/music/beastboi_run.mp3', 1, 7),
(233, 'Too Turnt', 27, 45, 1, '3:43', 'assets/music/beastboi_too_turnt.mp3', 1, 7),
(234, 'Sky High', 28, 47, 1, '2:29', 'assets/music/barely_alive_beastboi_sky_high.mp3', 1, 7),
(235, 'Pepper Feat. Flowdan & Lil Baby (Popix Remix)', 20, 48, 28, '3:47', 'assets/music/pepper_popix_remix.mp3', 1, 1),
(236, 'Pepper Feat. Flowdan & Lil Baby (XILLIX Remix)', 20, 48, 28, '2:58', 'assets/music/pepper_xillix_remix.mp3', 2, 0),
(237, 'Pepper Feat. Flowdan & Lil Baby (Dwarf Remix)', 20, 48, 9, '2:29', 'assets/music/pepper_dwarf_remix.mp3', 3, 3),
(238, 'Last One Standing Feat. MUST DIE (Ace Aura Remix)', 41, 49, 34, '3:53', 'assets/music/last_one_standing_ace_aura_remix.mp3', 4, 3),
(239, 'Revive', 42, 50, 34, '3:32', 'assets/music/ace_aura_revive.mp3', 1, 3),
(240, 'Desire', 42, 50, 1, '3:08', 'assets/music/ace_aura_desire.mp3', 2, 3),
(241, 'Echoes (Feat. Nytrix)', 42, 50, 34, '4:03', 'assets/music/ace_aura_nytrix_echoes.mp3', 3, 5),
(242, 'Parousia', 42, 50, 34, '3:20', 'assets/music/ace_aura_parousia.mp3', 4, 3),
(243, 'Don\'t Get Too Close Feat. Bibi Bourelly (Virtual Riot Remix)', 20, 51, 1, '4:03', 'assets/music/dont_get_too_close_virtual_riot.mp3', 1, 2),
(244, 'Way Back Feat. PinkPantheress & Trippie Redd (SADRN Remix)', 20, 51, 33, '2:30', 'assets/music/way_back_sadrn_remix.mp3', 2, 2),
(245, 'Selecta Feat. BEAM (Fraxy Remix)', 20, 51, 28, '2:17', 'assets/music/selecta_fraxy_remix.mp3', 3, 1),
(246, 'Real Spring Feat. Bladee (Viligir Remix)', 20, 51, 6, '4:54', 'assets/music/real_spring_viligir_remix.mp3', 4, 1),
(247, 'Don\'t Go Feat. Justin Bieber & Don Toliver (Julien Fade & SUBCERA Remix)', 20, 51, 28, '4:01', 'assets/music/dont_go_julien_fade_& _sbcera_remix.mp3', 5, 1),
(248, 'Don\'t Leave Me Like This Feat. Bobby Raps (Crime Zcene & NOIZ Remix)', 20, 51, 9, '2:55', 'assets/music/dont_leave_me_like_this_crime_zcene_noiz_remix.mp3', 6, 2),
(249, 'Painting Rainbows Feat. Bibi Bourelly (Quivile Remix)', 20, 51, 23, '2:43', 'assets/music/painting_rainbows_quivile_remix.mp3', 7, 0),
(250, 'Selecta Feat. BEAM (NGHT KLUB Remix)', 20, 51, 28, '2:46', 'assets/music/selecta_nght_klub_remix.mp3', 8, 0),
(251, '3am Feat. Prentiss & Anthony Green (DeemZoo Remix)', 20, 51, 15, '4:14', 'assets/music/3am_deemzoo_remix.mp3', 9, 1),
(252, 'Mixed Signals Feat. Swae Lee (LXVLY Remix)', 20, 51, 9, '2:43', 'assets/music/mixed_signals_lxvly_remix.mp3', 10, 1),
(253, 'Don\'t Go Feat. Justin Bieber & Don Toliver (MACHAKI Remix)', 20, 51, 1, '3:08', 'assets/music/dont_go_machaki_remix.mp3', 11, 1),
(254, 'Selecta Feat. BEAM (kLap & PZZS Remix)', 20, 51, 28, '3:14', 'assets/music/selecta_klap_pzzs_remix.mp3', 12, 0),
(255, 'Don\'t Leave Me Like This Feat. Bobby Raps (Mr. FijiWiji Remix)', 20, 51, 15, '3:05', 'assets/music/dont_leave_me_like_this_mr_fijiwiji_remix.mp3', 13, 0),
(256, '3am Feat. Prentiss & Anthony Green (Lib Remix)', 20, 51, 1, '2:33', 'assets/music/3am_lib_remix.mp3', 14, 1),
(257, 'Mixed Signals Feat. Swae Lee (Chromebodied Remix)', 20, 51, 35, '3:53', 'assets/music/mixed_signals_chromebodied_remix.mp3', 15, 2),
(258, 'Don\'t Go Feat. Justin Bieber & Don Toliver (CABUIZEE Remix)', 20, 51, 21, '3:39', 'assets/music/dont_go_cabuizee_remix.mp3', 16, 2),
(259, 'Dead Man Walking (LAXX Remix)', 41, 49, 1, '3:56', 'assets/music/dead_man_walking_laxx_remix.mp3', 1, 6),
(260, 'Desperado (EDDIE Remix)', 41, 49, 29, '3:32', 'assets/music/desperado_eddie_remix.mp3', 2, 1),
(261, 'Flatlined Feat. Micah Martin (REAPER Remix)', 41, 49, 9, '2:53', 'assets/music/flatlined_reaper_remix.mp3', 3, 2),
(262, 'Who\'s That Chick Feat. Rihanna (Will Palmieri Remix)', 43, 52, 37, '3:36', 'assets/music/whos_that_chick_will_palmieri_remix.mp3', 1, 1),
(263, 'We Found Love (OAKUM Remix)', 3, 53, 1, '3:39', 'assets/music/we_found_love_oakum_remix.mp3', 1, 6),
(264, 'BACK FROM THE DEAD (FERA Remix)', 36, 40, 6, '3:37', 'assets/music/deathpact_back_from_the_dead_fera_remix.mp3', 9, 3),
(265, 'FALLING (spüke remix)', 36, 40, 9, '3:10', 'assets/music/deathpact_falling_spuke_remix.mp3', 4, 3),
(266, 'Get Up Feat. Micah Martin', 25, 25, 12, '4:19', 'assets/music/social_kid_micah_martin_get_up.mp3', 1, 2),
(267, 'Umbrella (AANSE Remix)', 3, 53, 22, '4:05', 'assets/music/umbrella_aanse_remix.mp3', 2, 2),
(268, 'Please Don\'t Stop The Music (Chuey Remix)', 3, 53, 38, '3:01', 'assets/music/please_dont_stop_the_music_chuey_remix.mp3', 3, 2),
(269, 'Please Don\'t Stop The Music (Huski Remix)', 3, 53, 10, '2:22', 'assets/music/please_dont_stop_the_music_huski_remix.mp3', 4, 2),
(270, 'BURN', 27, 54, 39, '3:55', '', 1, 2),
(271, 'STFU', 27, 54, 1, '4:29', 'assets/music/beastboi_stfu.mp3', 2, 1),
(272, 'ACT LIKE DAT', 27, 54, 10, '4:35', 'assets/music/beastboi_act_like_dat.mp3', 3, 1),
(273, 'Funk Machine', 27, 54, 1, '3:42', 'assets/music/beastboi_funk_machine.mp3', 4, 1),
(274, 'ALWAYS WITH ME', 27, 54, 1, '3:54', 'assets/music/beastboi_always_with_me.mp3', 5, 0),
(275, 'BEFORE U GO', 27, 54, 39, '3:46', 'assets/music/beastboi_before_u_go.mp3', 6, 1),
(279, 'Dead Man Walking (Falchion Remix)', 41, 49, 1, '2:45', 'assets/music/dead_man_walking_falchion_remix.mp3', 5, 3),
(280, 'Flatlined Feat. Micah Martin (U-CodEx Remix)', 41, 49, 1, '2:17', 'assets/music/flatlined_ucodex_remix.mp3', 6, 2),
(281, 'Kammy (like i do) (So Dope Remix)', 34, 35, 39, '3:15', 'assets/music/kammy_like_I_do_so_dope_remix.mp3', 3, 1),
(282, 'Nathan (still breathing) (Steven Hades & Com Truice Remix)', 34, 35, 15, '3:45', 'assets/music/nathan_still_breathing_steven_hades_com_truice_remix.mp3', 4, 1),
(283, 'Bleu (better with time) (Steven Grey Remix)', 34, 35, 6, '3:32', 'assets/music/bleu_better_with_time_steven_grey_remix.mp3', 5, 0),
(284, 'Delilah (pull me out of this) (Royalston Remix)', 34, 35, 33, '3:57', 'assets/music/delilah_royalston_remix.mp3', 6, 0),
(285, 'Eyelar (shutters) (Jack Wire Remix)', 34, 35, 16, '4:29', 'assets/music/eyelar_shutters_jack_wire_remix.mp3', 7, 2),
(286, 'Delilah (pull me out of this) (Computa & Stoneworks Remix)', 34, 35, 34, '3:53', 'assets/music/delilah_computa_stoneworks_remix.mp3', 8, 2),
(287, 'Kammy (like i do) (juuku Remix)', 34, 35, 20, '2:44', 'assets/music/kammy_juuku_remix.mp3', 9, 2),
(288, 'Snakes', 11, 9, 10, '3:18', 'assets/music/distinct_motive_snakes.mp3', 2, 1),
(289, 'Hot Girl Summer Feat. Nicki Minaj & Ty Dolla $ign (DJ Smallz Remix)', 26, 27, 27, '1:39', 'assets/music/hot_girl_summer_dj_smallz_remix.mp3', 2, 1),
(290, 'Sweetest Pie Feat. Dua Lipa (David Guetta Dance Remix)', 26, 27, 37, '2:20', 'assets/music/sweetest_pie_david_guetta_dance_remix.mp3', 3, 1),
(291, 'Sweetest Pie Feat. Dua Lipa (David Guetta Festival Remix)', 26, 27, 37, '3:01', 'assets/music/sweetest_pie_david_guetta_festival_remix.mp3', 4, 0),
(292, 'ID (CloZee Remix)', 36, 40, 12, '3:39', 'assets/music/deathpact_id_clozee_remix.mp3', 5, 2),
(293, 'SONG SIX (MALIXE Remix)', 36, 40, 1, '3:28', 'assets/music/deathpact_song_six_malixe_remix.mp3', 6, 0),
(294, 'ID (Opiuo Remix)', 36, 40, 39, '5:15', 'assets/music/deathpact_id_opiuo_remix.mp3', 7, 0),
(295, 'Chemical Bond Feat. Rezz (OBLVN Remix)', 36, 40, 1, '2:38', 'assets/music/chemical_bond_oblvn_remix.mp3', 8, 2),
(296, 'ID (REAPER Remix)', 36, 40, 9, '3:48', 'assets/music/deathpact_id_reaper_remix.mp3', 3, 1),
(297, 'SONG SIX (CODEUNIT Remix)', 36, 40, 12, '0', 'assets/music/deathpact_song_six_codeunit_remix.mp3', 10, 2),
(298, 'Fukumean (NAKEN & DECEMBERKID Remix)', 40, 46, 20, '2:25', 'assets/music/fukumean_naken_decemberkid_remix.mp3', 3, 0),
(299, 'Fukumean (STARCROSS Remix)', 40, 46, 35, '3:28', 'assets/music/fukumean_starcross_remix.mp3', 4, 1),
(300, 'Fukumean (KARMA Remix)', 40, 46, 13, '1:43', 'assets/music/fukumean_karma_remix.mp3', 5, 1),
(301, 'Losing It (SVDDEN DEATH & SOMNIUM SOUND Remix)', 44, 55, 1, '2:44', 'assets/music/losing_it_svdden_death_somnium_sound_remix.mp3', 1, 5),
(302, 'Tension (George Reid Remix)', 45, 56, 2, '3:59', 'assets/music/tension_george_reid_remix.mp3', 1, 3),
(303, 'Can\'t Get You Out My Head (ESC Remix)', 45, 56, 35, '3:40', 'assets/music/cant_get_you_out_of_my_head_esc_remix.mp3', 2, 3),
(304, 'In Your Eyes (JQL Remix)', 45, 56, 8, '3:09', 'assets/music/in_your_eyes_jql_remix.mp3', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(3, 'firstfan', 'First', 'Fan', 'Firstfan@email.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2023-11-30 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(4, 'randomUser', 'Random', 'User', 'Random@random.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2023-12-01 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'Keems', 'Keem', 'Williams', 'Codebykeem@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2023-12-12 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
