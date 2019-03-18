--
-- Database: `Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `advertisement_id` varchar(9) NOT NULL,
  `advertiser_id` varchar(15) NOT NULL,
  `advertisement_Length` time DEFAULT NULL,
  `parental_guidance_status` tinyint(1) DEFAULT NULL,
  `target_country` varchar(50) DEFAULT NULL,
  `target_gender` varchar(10) DEFAULT NULL,
  `preferred_genre` varchar(4) DEFAULT NULL,
  `preferred_min_age` int(3) DEFAULT NULL,
  `preferred_max_age` int(3) DEFAULT NULL,
  `rate_paid_per_listen` decimal(2,2) DEFAULT NULL,
  `rate_paid_per_click` decimal(2,2) DEFAULT NULL,
  `advertisement_audio_file_bytesize` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`advertisement_id`, `advertiser_id`, `advertisement_Length`, `parental_guidance_status`, `target_country`, `target_gender`, `preferred_genre`, `preferred_min_age`, `preferred_max_age`, `rate_paid_per_listen`, `rate_paid_per_click`, `advertisement_audio_file_bytesize`) VALUES
('thead0001', 'advertiser00001', '00:00:30', 0, 'Ireland', 'Male', 'a001', 25, 65, '0.05', '0.50', 850),
('thead0002', 'advertiser00002', '00:00:30', 0, 'Ireland', 'Female', 'a002', 25, 39, '0.05', '0.50', 850),
('thead0003', 'advertiser00003', '00:00:30', 0, 'Ireland', 'Male', 'a003', 45, 75, '0.05', '0.50', 850),
('thead0004', 'advertiser00004', '00:00:30', 0, 'England', 'Male', 'a001', 25, 65, '0.05', '0.50', 850),
('thead0005', 'advertiser00005', '00:00:30', 0, 'England', 'Male', 'a001', 25, 65, '0.05', '0.50', 850),
('thead0006', 'advertiser00006', '00:00:30', 0, 'Unites states of America', 'Male', 'a001', 18, 25, '0.05', '0.50', 850),
('thead0007', 'advertiser00006', '00:00:30', 0, 'Unites states of America', 'Male', 'a001', 25, 65, '0.05', '0.50', 850),
('thead0008', 'advertiser00007', '00:01:00', 0, 'Unites states of America', 'Male', 'a003', 25, 45, '0.10', '0.50', 2000),
('thead0009', 'advertiser00007', '00:01:00', 0, 'Unites states of America', 'Male', 'a003', 25, 65, '0.10', '0.99', 2000),
('thead0010', 'advertiser00008', '00:05:00', 0, 'Unites states of America', 'Male', 'a003', 45, 75, '0.25', '0.99', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `advertisers`
--

CREATE TABLE `advertisers` (
  `advertiser_id` varchar(15) NOT NULL,
  `advertiser_name` varchar(70) DEFAULT NULL,
  `advertiser_address` varchar(150) DEFAULT NULL,
  `advertiser_email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisers`
--

INSERT INTO `advertisers` (`advertiser_id`, `advertiser_name`, `advertiser_address`, `advertiser_email`) VALUES
('advertiser00001', 'Tescos', 'Advertiser address 1', 'marketing@tesco.com'),
('advertiser00002', 'Brown Thomas', 'Advertiser address 2', 'business@bt.com'),
('advertiser00003', 'Zurich', 'Advertiser address 3', 'marketing@Zurich.com'),
('advertiser00004', 'Sports Direct', 'Advertiser address 4', 'marketing@sptsdirect.co.uk'),
('advertiser00005', 'Greggs', 'Advertiser address 5', 'marketing@tGreggs.co.uk'),
('advertiser00006', 'All state', 'Advertiser address 6', 'marketing@allstate.com'),
('advertiser00007', 'pfizer', 'Advertiser address 7', 'marketing@pfizer.com'),
('advertiser00008', 'Novartis', 'Advertiser address 8', 'marketing@Novartis.com');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `album_id` varchar(15) NOT NULL,
  `artist_id` varchar(15) NOT NULL,
  `genre_id` varchar(4) NOT NULL,
  `publisher_id` varchar(9) NOT NULL,
  `image_id` varchar(15) NOT NULL,
  `album_name` varchar(70) DEFAULT NULL,
  `album_length` time DEFAULT NULL,
  `album_number_of_streams_or_downloads` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`album_id`, `artist_id`, `genre_id`, `publisher_id`, `image_id`, `album_name`, `album_length`, `album_number_of_streams_or_downloads`) VALUES
('lpbbb1212124444', 'bonjovUSA121212', 'a001', 'PUB147741', 'imgalb121212121', 'Slippery When Wet', '00:43:49', 882902612),
('lpbbb3232323232', 'picthiIRL323232', 'a001', 'PUB147741', 'imgalb323232323', 'Picture This', '00:45:53', 12560783),
('lpbbb9753161111', 'mgmt12USA975316', 'a002', 'PUB300001', 'imgalb975316111', 'Oracular Spectacular', '00:52:48', 1825827),
('lpbbb9873247324', 'coldplENG987324', 'a001', 'PUB147741', 'imgalb987324324', 'A Rush Of Blood To The Head', '00:54:08', 576953930),
('lpbbm1010101010', 'patpmIRE1111111', 'a001', 'PUB303456', 'imgalb741852963', 'Putting the hip in hip replacement?', '00:45:42', 345626),
('lpbbm1212121212', 'hwatgtIRE123456', 'a001', 'PUB303456', 'imgalb418529637', 'My Girlfriend is a sheep', '00:47:32', 725326),
('lpdgeff45875874', 'ledzedENG458458', 'a001', 'PUB552211', 'imgalb296374185', 'Houses of the Holy', '00:45:25', 4756823),
('lpdgeff48751122', 'madnnaUSA262656', 'a002', 'PUB552211', 'imgalb842395745', 'True Blue', '00:47:22', 12456859),
('lpdmdma54545454', 'alatzITA8989898', 'a007', 'PUB894578', 'imgalb852963741', 'Cyprus sunsets Alex & Tiz live', '00:32:56', 17),
('lpdpsgh36363636', 'emomilUSA475574', 'a002', 'PUB457856', 'imgalb185296374', 'Why is everything never my fault', '00:36:52', 117328478),
('lpdshamrk442523', 'vanmanIRE827193', 'a003', 'PUB333555', 'imgalb667589115', 'Brown eyed girl', '00:44:52', 3256225),
('lpdshpng7575757', 'shpngENG4141414', 'a004', 'PUB254523', 'imgalb529637418', 'Let\'s get Spongled', '00:52:46', 5425623),
('lpdwarner852526', 'thcltENG9849849', 'a001', 'PUB147741', 'imgalb554655287', 'Sonic Temple', '00:48:25', 4568557),
('lpdwarner853325', 'MetlcaUSA111854', 'a001', 'PUB147741', 'imgalb774336998', 'Metallica Black Album', '00:46:41', 65000456);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artist_id` varchar(30) NOT NULL,
  `publisher_id` varchar(100) DEFAULT NULL,
  `artist_name` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `publisher_id`, `artist_name`) VALUES
('alatzITA8989898', 'PUB894578', 'Alex and Tiz'),
('bonjovUSA121212', 'PUB147741', 'Bon Jovi'),
('coldplENG987324', 'PUB147741', 'Coldplay'),
('davidgENG958923', 'PUB147741', 'David Gray'),
('eminemUSA242424', 'PUB300001', 'Eminem'),
('emomilUSA475574', 'PUB457856', 'Emotional Millennial'),
('hwatgtIRE123456', 'PUB333555', 'Hank Wankford and The Gobbling Turkeys'),
('jiggazUSA696969', 'PUB300001', 'Jay-Z'),
('ledzedENG458458', 'PUB552211', 'Led Zeppelin'),
('madnnaUSA262656', 'PUB654654', 'Madonna'),
('MetlcaUSA111854', 'PUB300001', 'Metallica'),
('mgmt12USA975316', 'PUB300001', 'MGMT'),
('nelly1USA565656', 'PUB147741', 'Nelly'),
('oasis1ENG202020', 'PUB147741', 'Oasis'),
('patpmIRE1111111', 'PUB303456', 'Paddy and The Pacemakers'),
('pgreenENG987654', 'PUB300001', 'Professor Green'),
('picthiIRL323232', 'PUB147741', 'Picture This'),
('pinkggUSA846812', 'PUB300001', 'P!nk'),
('samsmiENG297364', 'PUB333555', 'Sam Smith'),
('shpngENG4141414', 'PUB254523', 'Shpongle'),
('spears111333222', 'PUB300001', 'Britney Spears'),
('thcltENG9849849', 'PUB147741', 'The Cult'),
('u2u2u2IRL835628', 'PUB147741', 'U2'),
('vanmanIRE827193', 'PUB300002', 'Van Morrison');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` varchar(15) NOT NULL,
  `payment_type_id` varchar(3) NOT NULL,
  `customer_name` varchar(70) DEFAULT NULL,
  `customer_username` varchar(25) DEFAULT NULL,
  `customer_email` varchar(70) DEFAULT NULL,
  `customer_address` varchar(150) DEFAULT NULL,
  `customer_account_type` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `payment_type_id`, `customer_name`, `customer_username`, `customer_email`, `customer_address`, `customer_account_type`) VALUES
('ENG457965472135', 'vp1', 'David Lloyd George', 'warmonger22', 'apmfromwales@gmail.com', '49 Upper Green Terrace, Springfield, Manchester, England', 'FREE'),
('ENG798422561955', 'pc7', 'Goeffrey James', 'Ruggerking62', 'Saracens62@gmail.com', '18 South Bank, Corby, London, England', 'FREE'),
('ENG842149566326', 'vp2', 'Tony Blair', 'Gobshite666', 'everybodylovestony@gmail.com', 'Apt 2A, Watergate Flats, Liverpool, England', 'SUBSCRIPTION'),
('IRE114544856444', 'pc8', 'Mary Madigan', 'Contrary17', 'contrarymary@gmail.com', '69 Downtown St, Mayo, Ireland', 'FREE'),
('IRE458231458556', 'pc1', 'Terence McGovern', 'Molekh7', 'mcgovterence@gmail.com', '14 Crescent Springs, Raheny, Galway, Ireland', 'SUBSCRIPTION'),
('IRE674215652254', 'pc6', 'David Kennedy', 'Kentoonid', 'DavKen72@gmail.com', '72B D\'Island Field, Limerick, Ireland', 'FREE'),
('IRE845963125488', 'pc2', 'John Joseph O\'Reilly', 'Bo$$man69', 'jjor@gmail.com', '48 Clock Drive, Upper Street, Kildare, Ireland', 'SUSCRIPTION'),
('USA487414623265', 'pc3', 'Billy Bob Robertson', 'usarocksyeah1', 'musicalredneck@gmail.com', '82 Hatch Road, Celbridge, Boston, Massachusetts, USA', 'SUBSCRIPTION'),
('USA645211135788', 'pc5', 'Chris Evans', 'teamcap9', 'shieldincoming@gmail.com', '3982 Washington Drive, Seattle, USA', 'SUBSCRIPTION'),
('USA995426574833', 'pc4', 'Aaron Shwartz', 'napster1', 'sharinmeanscarin@gmail.com', '291 Oyster Cove, Yonkers, New York, USA', 'FREE');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` varchar(4) NOT NULL,
  `genre_name` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
('a001', 'Rock and Roll'),
('a002', 'Alternative Pop'),
('a003', 'Easy Listening'),
('a004', 'Psibient'),
('a005', 'Classical'),
('a006', 'Disco'),
('a007', 'Trance'),
('a008', 'Rap'),
('a009', 'R&B'),
('p001', 'Sports'),
('p002', 'Gaming'),
('p003', 'Politics'),
('p004', 'Literature');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` varchar(15) NOT NULL,
  `publisher_id` varchar(9) NOT NULL,
  `image_description` varchar(70) DEFAULT NULL,
  `image_file_bytesize` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `publisher_id`, `image_description`, `image_file_bytesize`) VALUES
('imgalb121212121', 'PUB147741', 'album image for \"Slippery When Wet\"', '53361.00'),
('imgalb185296374', 'PUB457856', 'album image for \"Why is everything never my fault\"', '74865.00'),
('imgalb296374185', 'PUB552211', 'album image from \"Houses of the Holy\"', '61548.58'),
('imgalb323232323', 'PUB147741', 'album image for \"Picture This\"', '45267.00'),
('imgalb418529637', 'PUB303456', 'album image for \"My Girlfriend is a sheep\"', '69984.10'),
('imgalb529637418', 'PUB254523', 'album image from \"Let\'s get Shpongled!\"', '62475.35'),
('imgalb554655287', 'PUB147741', 'album image from \"Sonic Temple\"', '64220.10'),
('imgalb667589115', 'PUB333555', 'album image for \"Brown eyed girl\"', '61332.40'),
('imgalb741852963', 'PUB303456', 'album image for \"Putting the hip in hip replacement\"', '61547.00'),
('imgalb774336998', 'PUB147741', 'album image for \"Metallica Black Album\"', '58446.30'),
('imgalb842395745', 'PUB552211', 'album image from \"True Blue\"', '68664.20'),
('imgalb852963741', 'PUB894578', 'album image from \"Cyprus sunsets Alex & Tiz live\"', '51869.00'),
('imgalb987324324', 'PUB147741', 'album image for \"A rush of blood to the head\"', '62793.00'),
('imgpod123456789', 'PodPub101', 'image for podcast1', '58458.30'),
('imgpod213456789', 'PodPub110', 'image for podcast10', '52124.40'),
('imgpod234567891', 'PodPub102', 'image for podcast2', '54125.20'),
('imgpod312456789', 'PodPub102', 'image for podcast11', '59774.40'),
('imgpod321456789', 'PodPub112', 'image for podcast12', '56991.65'),
('imgpod345678912', 'PodPub103', 'image for podcast3', '52963.30'),
('imgpod456789123', 'PodPub102', 'image for podcast4', '57253.10'),
('imgpod567891234', 'PodPub105', 'image for podcast5', '56265.30'),
('imgpod678912345', 'PodPub106', 'image for podcast6', '52425.30'),
('imgpod789123456', 'PodPub107', 'image for podcast7', '56874.70'),
('imgpod891234567', 'PodPub108', 'image for podcast8', '53125.35'),
('imgpod912345678', 'PodPub109', 'image for podcast9', '54364.80'),
('imgsng121212121', 'PUB147741', 'single image for \"Livin\' On a Prayer\'', '52736.00'),
('imgsng121212123', 'PUB147741', 'single image for \"Any Other Day\"', '61827.00'),
('imgsng1212122', 'PUB147741', 'single image for \"These days\"', '34562.00'),
('imgsng123698745', 'PUB457856', 'single image for \"My iphone hates me\"', '725680.85'),
('imgsng123698999', 'PUB457856', 'single image from \"I\'m so offended\"', '75236.00'),
('imgsng236987415', 'PUB894578', 'single image for \"Too may mushrooms I\'m freaking out!\"', '48586.45'),
('imgsng323232323', 'PUB147741', 'single image for \"One Drink\"', '91638.00'),
('imgsng323232324', 'PUB147741', 'single image for \"Take My Hand\"', '70237.00'),
('imgsng369874125', 'PUB254523', 'single image from \"Museum of consciousness\"', '64885.20'),
('imgsng412369875', 'PUB303456', 'single image for \"Muck Savage Rock\"', '587255.80'),
('imgsng441882325', 'PUB333555', 'single image for \"Moondance\"', '58626.10'),
('imgsng556822456', 'PUB147741', 'single image from \"Enter Sandman\"', '52005.00'),
('imgsng698741235', 'PUB552211', 'single image from \"Stairway to Heaven\"', '60555.10'),
('imgsng741236985', 'PUB303456', 'single image for \"Who stole my zimmerframe!!?\"', '60225.45'),
('imgsng785214252', 'PUB552211', 'single image from \"Open your heart\"', '62853.40'),
('imgsng987324324', 'PUB147741', 'single image for \"Yellow\"', '47293.00'),
('imgsng987324325', 'PUB147741', 'single image for \"Clocks\"', '72864.00'),
('imgsng987412365', 'PUB147741', 'single image from \"Sweet soul asylum\"', '61256.40');

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `payment_type_id` varchar(3) NOT NULL,
  `payment_type_name` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`payment_type_id`, `payment_type_name`) VALUES
('pc1', 'Visa Credit'),
('pc2', 'Visa Debit'),
('pc3', 'Mastercard'),
('pc4', 'American Express'),
('pc5', 'Capital One'),
('pc6', 'Chase'),
('pc7', 'Discover'),
('pc8', 'Citibank'),
('vp1', 'Paypal'),
('vp2', 'Neteller');

-- --------------------------------------------------------

--
-- Stand-in structure for view `platinum_artists`
-- (See below for the actual view)
--
CREATE TABLE `platinum_artists` (
`Artist` varchar(70)
,`Song` varchar(70)
,`Listens` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `playlist_id` varchar(16) NOT NULL,
  `customer_id` varchar(15) NOT NULL,
  `playlist_name` varchar(70) DEFAULT NULL,
  `number_of_shares` int(9) DEFAULT NULL,
  `playlist_length` time DEFAULT NULL,
  `playlist_description` varchar(70) DEFAULT NULL,
  `playlist_audio_file_bytesize` float DEFAULT NULL,
  `number_of_likes` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`playlist_id`, `customer_id`, `playlist_name`, `number_of_shares`, `playlist_length`, `playlist_description`, `playlist_audio_file_bytesize`, `number_of_likes`) VALUES
('playlist00000001', 'IRE458231458556', 'Groovy tunes', 1500000, '08:42:25', 'Non stop trance journey', 820896, 1000000),
('playlist00000002', 'IRE845963125488', 'Siege and walls', 1500000, '08:21:06', 'Ceile dancing marathon', 802463, 100000),
('playlist00000003', 'ENG457965472135', 'The Drums and footsteps of war', 1500000, '03:52:56', 'Military marching music', 365348, 10000),
('playlist00000004', 'ENG842149566326', 'A Cure for everything', 1500000, '06:52:53', 'Every track by the cure live and studio', 637221, 20000),
('playlist00000005', 'USA487414623265', 'Southern Cross', 1500000, '07:45:26', 'rebel rock anthems', 810854, 200000),
('playlist00000006', 'USA995426574833', 'Surfing the digital waves', 1500000, '08:45:22', 'Music to code to', 1120440, 30000),
('playlist00000007', 'USA645211135788', 'Avergers assemble', 1500000, '07:12:23', 'Seven hours of the avengers theme on repeat', 722667, 300000),
('playlist00000008', 'IRE674215652254', 'Taking it easy', 1500000, '09:15:25', 'easy listening all the way', 999125, 400000),
('playlist00000009', 'ENG798422561955', 'madness!', 1500000, '05:25:25', '80\'\'s all night long', 745759, 40000),
('playlist00000010', 'IRE114544856444', 'Thrash the place!', 1500000, '08:13:25', 'Heavy metal anthology', 805896, 50000),
('playlist00000011', 'IRE458231458556', 'One of us', 1500000, '07:24:59', 'the Cult from early to current', 815458, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `playlist_songs`
--

CREATE TABLE `playlist_songs` (
  `playlist_song_id` int(11) NOT NULL,
  `playlist_id` varchar(16) CHARACTER SET utf8 NOT NULL,
  `single_id` varchar(16) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist_songs`
--

INSERT INTO `playlist_songs` (`playlist_song_id`, `playlist_id`, `single_id`) VALUES
(1000, 'playlist00000001', '112112112112112'),
(1001, 'playlist00000001', '123123123123123'),
(1003, 'playlist00000004', '332332332332332'),
(1004, 'playlist00000002', '332332332332332'),
(1005, 'playlist00000002', '332332332332332'),
(1006, 'playlist00000009', '332332332332332');

--
-- Triggers `playlist_songs`
--
DELIMITER $$
CREATE TRIGGER `updated_playlist` BEFORE INSERT ON `playlist_songs` FOR EACH ROW call check_rate(New.single_id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

CREATE TABLE `podcasts` (
  `podcast_id` varchar(15) NOT NULL,
  `genre_id` varchar(4) NOT NULL,
  `publisher_id` varchar(9) NOT NULL,
  `image_id` varchar(15) NOT NULL,
  `podcast_description` varchar(200) DEFAULT NULL,
  `podcast_name` varchar(70) DEFAULT NULL,
  `podcast_length` time DEFAULT NULL,
  `podcast_audio_file_bytesize` float(9,2) DEFAULT NULL,
  `parental_guidance_status` tinyint(1) DEFAULT NULL,
  `podcast_number_of_streams_or_downloads` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `podcasts`
--

INSERT INTO `podcasts` (`podcast_id`, `genre_id`, `publisher_id`, `image_id`, `podcast_description`, `podcast_name`, `podcast_length`, `podcast_audio_file_bytesize`, `parental_guidance_status`, `podcast_number_of_streams_or_downloads`) VALUES
('podcastid111111', 'p001', 'PodPub101', 'imgpod123456789', 'Comedic commentary on the ingoing travails and successes of Arsenal football club', 'Arseblog Arsecast', '01:12:53', 89125.40, 0, '387052'),
('podcastid121212', 'p003', 'PodPub110', 'imgpod213456789', 'Political misdirection from state sponsored TV', 'The week in politics', '00:55:53', 69375.40, 0, '57223'),
('podcastid131313', 'p004', 'PodPub102', 'imgpod312456789', 'Literary preview of current bestsellers', 'Book of the week', '00:58:23', 61125.20, 0, '22352'),
('podcastid141414', 'p004', 'PodPub112', 'imhpod321456789', 'Discussion of current literary releases', 'Literary review', '00:57:41', 60922.35, 0, '17065'),
('podcastid222222', 'p001', 'PodPub102', 'imgpod234567891', 'Talking heads talking football from the BBC', 'The Football daily podcast', '01:08:53', 84525.55, 0, '700526'),
('podcastid333333', 'p001', 'PodPub103', 'imgpod345678912', 'Talking heads talking football from the Guardian', 'The game podcast', '01:27:53', 122126.40, 0, '670002'),
('podcastid444444', 'p001', 'PodPub102', 'imgpod456789123', 'Over the hill ex-footballers trade made up stories in bid to remain relevant', 'That Peter Crouch podcast', '00:59:53', 69325.60, 0, '112455'),
('podcastid555555', 'p001', 'PodPub105', 'imgpod567891234', 'Journalist round table discussion of current football matters', 'Sunday Supplement podcast', '01:32:53', 142125.41, 0, '2345077'),
('podcastid666666', 'p002', 'PodPub106', 'imgpod678912345', 'The latest news and topics surrounding the forthcoming release of Anthem', 'Anthem Podcast', '00:48:53', 64154.25, 0, '37201'),
('podcastid777777', 'p002', 'PodPub107', 'imgpod789123456', 'News and views from within Star Wars The Old Republic', 'The Council ', '01:07:22', 99526.70, 0, '106523'),
('podcastid888888', 'p002', 'PodPub108', 'imgpod891234567', 'News and views from within World of warcraft', 'World of warcraft weekly podcast', '01:37:01', 130155.40, 0, '1387952'),
('podcastid999999', 'p003', 'PodPub109', 'imgpod912345678', 'Alternative social and political commentary from one half of the rubber bandits', 'Blindboy podcast', '01:23:13', 95152.20, 0, '143477');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` varchar(10) NOT NULL,
  `publisher_name` varchar(70) DEFAULT NULL,
  `publisher_address` varchar(150) DEFAULT NULL,
  `publisher_email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `publisher_name`, `publisher_address`, `publisher_email`) VALUES
('PodPub101', 'Arseblog.com', 'Address for podproducer 1', 'arses@gmail.com'),
('PodPub102', 'BBC.co.uk', 'Address for podproducer 2', 'ftdaily@thebbc.co.uk'),
('PodPub103', 'Theguardian.co.uk', 'Address for podproducer 3', 'thegame@theguardian.co.uk'),
('PodPub105', 'sky.co.uk', 'Address for podproducer 5', 'sundaysupp@sky.co.uk'),
('PodPub106', 'Anthemblog.com', 'Address for podproducer 6', 'onlytheanthem@gmail.com'),
('PodPub107', 'thecouncil.com', 'Address for podproducer 7', 'swtorcouncil@gmail.com'),
('PodPub108', 'wowweeklypod.com', 'Address for podproducer 8', 'fightthehorde@gmail.com'),
('PodPub109', 'blindboyproduction.com', 'Address for podproducer 9', 'yurt@gmail.com'),
('PodPub110', 'RTE.ie', 'Address for podproducer 10', 'theweekpol@RTE.ie'),
('PodPub112', 'Anorak.co.uk', 'Address for podproducer 12', 'litreview@gmail.com'),
('PUB147741', 'Warner Brothers productions', '122 Tottenham court road, London SW15', 'Warnerbrosldn@gmail.com'),
('PUB254523', 'Hullucinogenic Records', 'Hallucination Recordings, 1407 5th Avenue, Tampa, Florida 33605', 'enthogenicrules@gmail.com'),
('PUB300001', 'Interscopes Inc', '6 The Crescent, O Connell St, Limerick, Ireland', 'irimusic@yahoo.com'),
('PUB300002', 'SMACS Music', '83 Secure Road, Norwich, United Kingdom', 'smacsmusic@yahoo.com'),
('PUB303456', 'Bogger Beat Music Productions', '22 Ormond St. Nenagh, Co. Tipperary, Ireland', 'BBMRocks@gmail.com'),
('PUB333555', 'Shamrock records ltd.', '22 Belgrave Square, Rathmines, Dublin 6', 'canIjusthaveonemore@gmail.com'),
('PUB457856', 'Bleak Future Records', '181 secoya plaza, San Francisco, CA 94120-7775, USA', 'Thereisnohopeatall@gmail.com'),
('PUB552211', 'Holy House Records', '117a Soho Square London SW17', 'ramblinon@gmail.com'),
('PUB894578', 'Model Driven Music Associates', 'Tierney Building, University of Limerick, Ireland, V94 NYD3', 'thelerobusiscoming@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `royalties_to_be_paid`
-- (See below for the actual view)
--
CREATE TABLE `royalties_to_be_paid` (
`Artist` varchar(70)
,`Number of Singles` bigint(21)
,`Average rate` decimal(2,2)
,`Total Plays` decimal(32,0)
,`Total Owed` decimal(34,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `see_you_soon`
--

CREATE TABLE `see_you_soon` (
  `single_id` varchar(15) NOT NULL,
  `artist_id` varchar(15) NOT NULL,
  `genre_id` varchar(4) NOT NULL,
  `publisher_id` varchar(9) NOT NULL,
  `album_id` varchar(15) NOT NULL,
  `image_id` varchar(15) NOT NULL,
  `single_name` varchar(70) DEFAULT NULL,
  `single_length` time DEFAULT NULL,
  `single_audio_file_bytesize` decimal(9,2) DEFAULT NULL,
  `parental_guidance_status` tinyint(1) DEFAULT NULL,
  `single_number_of_streams_or_downloads` int(10) DEFAULT NULL,
  `single_royalty_rate` decimal(2,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `see_you_soon`
--

INSERT INTO `see_you_soon` (`single_id`, `artist_id`, `genre_id`, `publisher_id`, `album_id`, `image_id`, `single_name`, `single_length`, `single_audio_file_bytesize`, `parental_guidance_status`, `single_number_of_streams_or_downloads`, `single_royalty_rate`) VALUES
('234567891234567', 'u2u2u2IRL835628', 'a001', 'PUB147741', '', '', 'I Still Haven\'t Found What I\'m Looking For', '00:05:19', '4567.50', 0, 45927835, '0.01'),
('555777555777557', 'oasis1ENG202020', 'a002', 'PUB300001', '', '', 'Don\'t Look Back In Anger', '00:03:07', '5263.40', 1, 14234123, '0.02');

-- --------------------------------------------------------

--
-- Table structure for table `singles`
--

CREATE TABLE `singles` (
  `single_id` varchar(15) NOT NULL,
  `artist_id` varchar(15) NOT NULL,
  `genre_id` varchar(4) NOT NULL,
  `publisher_id` varchar(9) NOT NULL,
  `album_id` varchar(15) NOT NULL,
  `image_id` varchar(15) NOT NULL,
  `single_name` varchar(70) DEFAULT NULL,
  `single_length` time DEFAULT NULL,
  `single_audio_file_bytesize` decimal(9,2) DEFAULT NULL,
  `parental_guidance_status` tinyint(1) DEFAULT NULL,
  `single_number_of_streams_or_downloads` int(10) DEFAULT NULL,
  `single_royalty_rate` decimal(2,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `singles`
--

INSERT INTO `singles` (`single_id`, `artist_id`, `genre_id`, `publisher_id`, `album_id`, `image_id`, `single_name`, `single_length`, `single_audio_file_bytesize`, `parental_guidance_status`, `single_number_of_streams_or_downloads`, `single_royalty_rate`) VALUES
('112112112112112', 'ledzedENG458458', 'a001', 'PUB552211', 'lpdgeff45875874', 'imgsng698741235', 'Stairway to Heaven', '00:07:12', '12110.65', 0, 3782256, '0.03'),
('121212121212121', 'bonjovUSA121212', 'a001', 'PUB147741', 'lpbbb1212124444', 'imgsng121212121', 'Livin\' On A Prayer', '00:04:32', '6146.25', 0, 479987351, '0.20'),
('121212121212122', 'bonjovUSA121212', 'a001', 'PUB147741', 'lpbbb1212124444', 'imgsng121212121', 'These Days', '00:06:27', '9431.10', 0, 301125714, '0.15'),
('121212121212123', 'bonjovUSA121212', 'a001', 'PUB147741', 'lpbbb1212124444', 'imgsng121212123', 'Any Other Day', '00:04:05', '5546.50', 0, 101789547, '0.15'),
('123123123123123', 'patpmIRE1111111', 'a001', 'PUB303456', 'lpbbm1010101010', 'imgsng741236985', 'Who stole my zimmerframe!!?', '00:04:12', '7226.20', 0, 120123, '0.05'),
('228296635644556', 'vanmanIRE827193', 'a003', 'PUB333555', 'lpdshamrk442523', 'imgsng441882325', 'Moondance', '00:03:55', '39550.60', 0, 1205653, '0.06'),
('234234234234234', 'hwatgtIRE123456', 'a001', 'PUB303456', 'lpbbm1212121212', 'imgsng412369875', 'Muck Savage Rock', '00:04:46', '7876.40', 1, 299306, '0.04'),
('242424242424123', 'eminemUSA242424', 'a008', 'PUB300001', '', '', '\'Till I Collapse', '00:05:17', '8273.25', 1, 32947285, '0.10'),
('242424242424124', 'eminemUSA242424', 'a008', 'PUB300001', '', '', 'Superman', '00:04:25', '7426.50', 1, 27493817, '0.10'),
('297364297364297', 'samsmiENG297364', 'a002', 'PUB333555', '', 'imgsng297364', 'Stay With Me', '00:04:41', '6253.50', 0, 12837284, '0.10'),
('297364297364298', 'samsmiENG297364', 'a002', 'PUB333555', '', '', 'Money On My Mind', '00:04:23', '5436.50', 0, 12745849, '0.20'),
('297364297364567', 'samsmiENG297364', 'a002', 'PUB333555', '', '', 'Too Good At Goodbyes', '00:04:27', '4627.75', 0, 1384729, '0.04'),
('297364297364568', 'samsmiENG297364', 'a002', 'PUB333555', '', '', 'Say It First', '00:03:08', '3482.50', 0, 2297485, '0.04'),
('323232323232322', 'picthiIRL323232', 'a001', 'PUB147741', 'lpbbb3232321111', 'imgsng323232323', 'One Drink', '00:03:42', '5009.00', 0, 974386, '0.05'),
('323232323232323', 'picthiIRL323232', 'a001', 'PUB147741', 'lpbbb3232321111', 'imgsng323232324', 'Take My Hand', '00:04:10', '5540.80', 0, 11586397, '0.10'),
('332332332332332', 'thcltENG9849849', 'a001', 'PUB147741', 'lpdwarner852526', 'imgsng987412365', 'Sweet soul asylum', '00:06:45', '95265.60', 0, 182605400, '0.62'),
('454527562321354', 'spears111333222', 'a002', 'PUB300001', '', 'imgsng145676231', 'Oops I did it again', '00:03:51', '5788.25', 0, 59444446, '0.03'),
('456456456456456', 'emomilUSA475574', 'a002', 'PUB457856', 'lpdpsgh36363636', 'imgsng123698745', 'My iphone hates me', '00:03:30', '6225.50', 0, 22305442, '0.09'),
('456456456456999', 'emomilUSA475574', 'a002', 'PUB457856', 'lpdpsgh36363636', 'imgsng123698999', 'I\'m so offended', '00:03:25', '6145.50', 0, 45765521, '0.09'),
('555777555777555', 'madnnaUSA262656', 'a002', 'PUB552211', 'lpdgeff48751122', 'imgsng785214252', 'Open your heart', '00:04:12', '75865.50', 0, 12563482, '0.10'),
('561254651254561', 'MetlcaUSA111854', 'a001', 'PUB147741', 'lpdwarner853325', 'imgsng556822456', 'Enter Sandman', '00:03:45', '35662.00', 0, 24365286, '0.02'),
('565656473829123', 'nelly1USA565656', 'a009', 'PUB147741', '', '', 'Hot In Herre', '00:04:36', '4628.75', 1, 19847392, '0.05'),
('565656473829124', 'nelly1USA565656', 'a009', 'PUB147741', '', '', 'Ride With Me', '00:04:10', '6283.25', 1, 14927834, '0.05'),
('567567567567567', 'alatzITA8989898', 'a007', 'PUB894578', 'lpdmdma54545454', 'imgsng236987415', 'Too many mushrooms! I\'m Freaking out!', '00:03:29', '6157.25', 1, 11, '0.01'),
('696969696969123', 'jiggazUSA696969', 'a008', 'PUB300001', '', '', '99 Problems', '00:04:44', '7436.25', 1, 42189473, '0.10'),
('696969696969124', 'jiggazUSA696969', 'a008', 'PUB300001', '', '', 'Dirt Off Your Shoulder', '00:05:23', '8263.75', 1, 52497127, '0.10'),
('696969696969125', 'jiggazUSA696969', 'a008', 'PUB300001', '', '', 'Encore', '00:04:49', '7291.25', 1, 25104871, '0.10'),
('698698698698698', 'shpngENG4141414', 'a004', 'PUB254523', 'lpdhull87878787', 'imgsng369874125', 'Museum of consciousness', '00:06:47', '9275.30', 0, 498526, '0.05'),
('846812846812812', 'pinkggUSA846812', 'a002', 'PUB300001', '', '', 'Just Give Me A Reason', '00:04:38', '3846.50', 1, 11398295, '0.10'),
('846812846812813', 'pinkggUSA846812', 'a002', 'PUB300001', '', '', 'Blow Me (One Last Kiss)', '00:03:53', '8273.25', 1, 11978274, '0.10'),
('846812846812846', 'pinkggUSA846812', 'a002', 'PUB300001', '', '', 'So What', '00:03:40', '4736.75', 1, 2648272, '0.08'),
('846812846812847', 'pinkggUSA846812', 'a002', 'PUB300001', '', '', 'Sober', '00:04:35', '4736.50', 1, 3485294, '0.06'),
('958923958923456', 'davidGENG958923', 'a003', 'PUB147741', '', '', 'Draw The Line', '00:04:48', '8762.25', 0, 1839299, '0.05'),
('958923958923958', 'davidgENG958923', 'a003', 'PUB147741', '', '', 'Babylon', '00:04:37', '4537.25', 0, 3459276, '0.10'),
('958923958923959', 'davidgENG958923', 'a003', 'PUB147741', '', '', 'Sail Away', '00:05:07', '7362.00', 0, 5456526, '0.10'),
('975315975316316', 'mgmt12USA975316', 'a002', 'PUB30001', 'lpbbb975316111', 'imgsng975316316', 'Time To Pretend', '00:04:35', '6325.50', 1, 802746, '0.05'),
('975315975316317', 'mgmt12USA975316', 'a002', 'PUB30001', 'lpbbb975316111', 'imgsng975316317', 'Kids', '00:03:57', '5824.00', 1, 1263849, '0.10'),
('987324654379138', 'coldplENG987324', 'a001', 'PUB147741', 'lpbbb9873241111', 'imgsng987324324', 'Yellow', '00:04:21', '5671.25', 0, 327581349, '0.15'),
('987324654379139', 'coldplENG987324', 'a001', 'PUB147741', 'lpbbb9873241111', 'imgsng987324325', 'Clocks', '00:03:48', '5021.75', 0, 249372581, '0.15'),
('987654987654123', 'pgreenENG987654', 'a009', 'PUB30001', '', '', 'Just Be Good To Green', '00:04:08', '6173.25', 1, 1927392, '0.03');

--
-- Triggers `singles`
--
DELIMITER $$
CREATE TRIGGER `Delete_Single` AFTER DELETE ON `singles` FOR EACH ROW BEGIN 
INSERT INTO see_you_soon VALUES (old.single_id, old.artist_id, old.genre_id, old.publisher_id, old.album_id , old.image_id , old.single_name , old.single_length, old.single_audio_file_bytesize, old.parental_guidance_status, old.single_number_of_streams_or_downloads, old.Single_royalty_rate); 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `top_three_genres`
-- (See below for the actual view)
--
CREATE TABLE `top_three_genres` (
`Genre` varchar(70)
,`Number of Tracks` bigint(21)
,`Total Plays` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Structure for view `platinum_artists`
--
DROP TABLE IF EXISTS `platinum_artists`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project`.`platinum_artists`  AS  select `project`.`artists`.`artist_name` AS `Artist`,`project`.`singles`.`single_name` AS `Song`,`project`.`singles`.`single_number_of_streams_or_downloads` AS `Listens` from (`project`.`artists` join `project`.`singles` on((`project`.`artists`.`artist_id` = `project`.`singles`.`artist_id`))) where `project`.`singles`.`artist_id` in (select `project`.`singles`.`artist_id` from `project`.`singles` where (`project`.`singles`.`single_number_of_streams_or_downloads` > 1000000)) order by `project`.`singles`.`single_number_of_streams_or_downloads` desc ;

-- --------------------------------------------------------

--
-- Structure for view `royalties_to_be_paid`
--
DROP TABLE IF EXISTS `royalties_to_be_paid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project`.`royalties_to_be_paid`  AS  select `project`.`artists`.`artist_name` AS `Artist`,count(`project`.`singles`.`single_name`) AS `Number of Singles`,truncate(avg(`project`.`singles`.`single_royalty_rate`),2) AS `Average rate`,sum(`project`.`singles`.`single_number_of_streams_or_downloads`) AS `Total Plays`,truncate(sum(((`project`.`singles`.`single_royalty_rate` * `project`.`singles`.`single_number_of_streams_or_downloads`) / 1000)),2) AS `Total Owed` from (`project`.`singles` left join `project`.`artists` on((`project`.`singles`.`artist_id` = `project`.`artists`.`artist_id`))) group by `project`.`artists`.`artist_name` having (sum(`project`.`singles`.`single_number_of_streams_or_downloads`) > 1000) ;

-- --------------------------------------------------------

--
-- Structure for view `top_three_genres`
--
DROP TABLE IF EXISTS `top_three_genres`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project`.`top_three_genres`  AS  select `project`.`genres`.`genre_name` AS `Genre`,count(`project`.`singles`.`single_name`) AS `Number of Tracks`,sum(`project`.`singles`.`single_number_of_streams_or_downloads`) AS `Total Plays` from (`project`.`singles` left join `project`.`genres` on((`project`.`singles`.`genre_id` = `project`.`genres`.`genre_id`))) group by `project`.`genres`.`genre_name` order by sum(`project`.`singles`.`single_number_of_streams_or_downloads`) desc limit 3 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`advertisement_id`),
  ADD KEY `advertiser_id` (`advertiser_id`) USING BTREE;

--
-- Indexes for table `advertisers`
--
ALTER TABLE `advertisers`
  ADD PRIMARY KEY (`advertiser_id`),
  ADD KEY `advertiser_email` (`advertiser_email`) USING BTREE;

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `FOREIGN KEY` (`artist_id`,`genre_id`,`image_id`) USING BTREE;

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`),
  ADD KEY `FOREIGN KEY` (`publisher_id`) USING BTREE;

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FOREIGN KEY` (`payment_type_id`) USING BTREE,
  ADD KEY `customer_email` (`customer_email`) USING BTREE;

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `FOREIGN KEY` (`publisher_id`) USING BTREE;

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`payment_type_id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`playlist_id`),
  ADD KEY `FOREIGN` (`customer_id`) USING BTREE;

--
-- Indexes for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD PRIMARY KEY (`playlist_song_id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `single_id` (`single_id`);

--
-- Indexes for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`podcast_id`),
  ADD KEY `FOREIGN KEY` (`genre_id`,`publisher_id`,`image_id`) USING BTREE;

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `see_you_soon`
--
ALTER TABLE `see_you_soon`
  ADD PRIMARY KEY (`single_id`),
  ADD UNIQUE KEY `artist_id` (`artist_id`,`genre_id`,`publisher_id`,`album_id`,`image_id`);

--
-- Indexes for table `singles`
--
ALTER TABLE `singles`
  ADD PRIMARY KEY (`single_id`),
  ADD KEY `artist_id` (`artist_id`,`genre_id`,`publisher_id`,`album_id`,`image_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  MODIFY `playlist_song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_ibfk_1` FOREIGN KEY (`advertiser_id`) REFERENCES `advertisers` (`advertiser_id`);

--
-- Constraints for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD CONSTRAINT `playlist_songs_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`playlist_id`),
  ADD CONSTRAINT `playlist_songs_ibfk_2` FOREIGN KEY (`single_id`) REFERENCES `singles` (`single_id`);