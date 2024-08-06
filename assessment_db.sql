-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2024 at 09:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `country` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `gender`, `country`, `city`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Ann', 'Chambers', 'ann.chambers@example.com', 'purpleswan896', '2419c459e9ad2d94f4a5c887b3ca18cb', 'female', 'Australia', 'Adelaide', '07-8490-1624', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(2, 'Beverley', 'Peters', 'beverley.peters@example.com', 'orangegorilla266', 'f6216ab8b669f451dd4270a9cb96ec69', 'female', 'Australia', 'Wagga Wagga', '06-9205-3079', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(3, 'Esther', 'Hernandez', 'esther.hernandez@example.com', 'yellowbear966', 'cdfee2bc43d63caeaa3b169ad31e966c', 'female', 'Australia', 'Geraldton', '07-9960-5620', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(4, 'Ivan', 'Shelton', 'ivan.shelton@example.com', 'smallpanda598', '6851434ca7db6f294e135ebdc0005e98', 'male', 'Australia', 'Darwin', '08-8468-6996', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(5, 'Donald', 'Walker', 'donald.walker@example.com', 'bluefish454', '2077e4a6bafa9b4e7b55e1fff16818af', 'male', 'Australia', 'Bathurst', '03-3033-7028', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(6, 'Eleanor', 'Phillips', 'eleanor.phillips@example.com', 'smallpeacock383', '3796fbfbf604f9b9b6b44894a577d9d6', 'female', 'Australia', 'Bathurst', '06-3677-0485', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(7, 'Travis', 'Hopkins', 'travis.hopkins@example.com', 'bluewolf822', '0f06757da2c9560f23d29de16eda7fee', 'male', 'Australia', 'Brisbane', '05-8799-5711', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(8, 'Jill', 'Fowler', 'jill.fowler@example.com', 'sadrabbit827', 'ecb518928f86c37dfed1d01fe1d96c88', 'female', 'Australia', 'Wagga Wagga', '09-7647-7387', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(9, 'Darren', 'Grant', 'darren.grant@example.com', 'silverostrich803', '77b4b0de62f556ad1d9b3a1736925435', 'male', 'Australia', 'Melbourne', '02-4336-8269', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(10, 'Krin', 'Boyd', 'krin.boyd@example.com', 'silverpeacock269', '17a807c3a10ee2d8ed555ddfb8c0f790', 'female', 'Australia', 'Mildura', '06-0450-7364', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(11, 'Susan', 'Vargas', 'susan.vargas@example.com', 'blackfrog620', 'e09278fc449a6251647b0d110b322220', 'female', 'Australia', 'Darwin', '05-0542-4463', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(12, 'Charlie', 'Bates', 'charlie.bates@example.com', 'whiteelephant228', '7828e97cf512564affbe2d16d1a5bdd8', 'male', 'Australia', 'Orange', '07-6158-6156', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(13, 'Melanie', 'Morgan', 'melanie.morgan@example.com', 'redgorilla662', 'd41d8cd98f00b204e9800998ecf8427e', 'female', 'Australia', 'Bowral', '07-0379-6879', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(14, 'Wade', 'Freeman', 'wade.freeman@example.com', 'sadcat626', '0af9964dc8540ea6f1eef1150bb3a717', 'male', 'Australia', 'Wagga Wagga', '05-8841-6855', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(15, 'Christian', 'Miller', 'christian.miller@example.com', 'blueduck524', '978f6f608df5279d4d85e700d83ac873', 'male', 'Australia', 'Tamworth', '06-8302-3953', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(16, 'Jessie', 'Bowman', 'jessie.bowman@example.com', 'ticklishcat198', '29c3a60c13d1e0eda25d65f65a761b47', 'male', 'Australia', 'Tweed', '04-6075-4912', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(17, 'Paul', 'Lowe', 'paul.lowe@example.com', 'bluecat310', '74b87337454200d4d33f80c4663dc5e5', 'male', 'Australia', 'Warrnambool', '04-7509-3071', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(18, 'Sophie', 'Cruz', 'sophie.cruz@example.com', 'whitepeacock104', 'f72e9105795af04cd4da64414d9968ad', 'female', 'Australia', 'Kalgoorlie', '05-3254-7987', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(19, 'Lewis', 'Murray', 'lewis.murray@example.com', 'beautifulpanda618', '9c13087e143212128e5c568cc0976813', 'male', 'Australia', 'Tamworth', '08-4661-9720', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(20, 'Eli', 'Lawrence', 'eli.lawrence@example.com', 'tinybear558', '5ff84c7646419ffeb65cb5625de99723', 'male', 'Australia', 'Albany', '08-3982-0450', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(21, 'Andy', 'Lawrence', 'andy.lawrence@example.com', 'beautifulpanda336', '1368ff471addcee1b3ce850e9fcdc7c0', 'male', 'Australia', 'Brisbane', '04-9179-6127', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(22, 'Jon', 'Terry', 'jon.terry@example.com', 'goldenostrich881', 'b3a7d46f72795bc1889973cb60842518', 'male', 'Australia', 'Tamworth', '02-8449-0847', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(23, 'Melinda', 'Bowman', 'melinda.bowman@example.com', 'crazybutterfly919', '109b2670f257fdde446139bfff3f5f93', 'female', 'Australia', 'Hobart', '04-1955-6482', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(24, 'Abigail', 'Robertson', 'abigail.robertson@example.com', 'whitezebra521', 'de5949721e6352f01dfef317c3e898a8', 'female', 'Australia', 'Sunshine Coast', '02-1702-0185', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(25, 'Lori', 'Olson', 'lori.olson@example.com', 'purplemouse357', '559a7f208866f0063b1ea8d5ca2ee816', 'female', 'Australia', 'Hobart', '03-1597-4235', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(26, 'Gordon', 'Obrien', 'gordon.obrien@example.com', 'ticklishsnake705', '6513fa9955c1fe6e1bc400f6cc3c9f12', 'male', 'Australia', 'Bowral', '07-1087-0779', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(27, 'Lynn', 'Johnston', 'lynn.johnston@example.com', 'blackwolf248', 'ec33af69da75485e28febd93ca4ce832', 'female', 'Australia', 'Geelong', '08-9062-1281', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(28, 'Florence', 'Horton', 'florence.horton@example.com', 'blacktiger281', '45ea37a8b034ece4d08639d18d913ad0', 'female', 'Australia', 'Warragul', '08-3770-1564', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(29, 'Chris', 'Knight', 'chris.knight@example.com', 'beautifulpanda835', '76e369257240ded4b1c059cf20e8d9a4', 'male', 'Australia', 'Maitland', '08-3760-5712', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(30, 'Don', 'Ryan', 'don.ryan@example.com', 'blackzebra836', 'c23946c050885b2de6860f47f2bf6787', 'male', 'Australia', 'Albany', '05-1239-1799', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(31, 'Cory', 'Murray', 'cory.murray@example.com', 'greenmeercat383', '273b9ae535de53399c86a9b83148a8ed', 'male', 'Australia', 'Coffs Harbour', '00-7105-7997', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(32, 'Arron', 'Soto', 'arron.soto@example.com', 'silverpanda346', 'c5b2cebf15b205503560c4e8e6d1ea78', 'male', 'Australia', 'Perth', '09-6821-4258', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(33, 'Andy', 'Henry', 'andy.henry@example.com', 'redbird422', 'a7887cc809cf0d4df17fc5dafd03e4e7', 'male', 'Australia', 'Rockhampton', '03-6702-4421', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(34, 'Michael', 'Schmidt', 'michael.schmidt@example.com', 'yellowgorilla691', 'e49797d16f72a95ce778fd871b017677', 'male', 'Australia', 'Albany', '07-9760-8143', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(35, 'Bonnie', 'Alvarez', 'bonnie.alvarez@example.com', 'blacktiger516', 'd03b4f61dd1b914e3579cb9a8372931e', 'female', 'Australia', 'Busselton', '05-5196-3334', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(36, 'Stephen', 'Jacobs', 'stephen.jacobs@example.com', 'happydog678', '570ce60ba96cbaad7bb002a826aab039', 'male', 'Australia', 'Australian Capital Territory', '07-1540-7325', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(37, 'Rodney', 'Johnson', 'rodney.johnson@example.com', 'happypanda213', 'b27b5a81db40dcab4dfce130f713acf2', 'male', 'Australia', 'Brisbane', '05-2820-0463', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(38, 'Sergio', 'Marshall', 'sergio.marshall@example.com', 'yellowkoala707', 'a35fe7f7fe8217b4369a0af4244d1fca', 'male', 'Australia', 'Sydney', '01-2131-6971', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(39, 'Glenda', 'Crawford', 'glenda.crawford@example.com', 'silverleopard468', '363f41b7e25674d0eb487153f2c04468', 'female', 'Australia', 'Ballarat', '06-6530-4787', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(40, 'Debbie', 'Garcia', 'debbie.garcia@example.com', 'crazygorilla790', '033c5b707922278cd5ed8e1f0ea13622', 'female', 'Australia', 'Ballarat', '01-2544-0539', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(41, 'Wesley', 'Wood', 'wesley.wood@example.com', 'beautifullion409', 'a34c3d45b6018d3fd5560b103c2a00e2', 'male', 'Australia', 'Maitland', '00-9120-7058', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(42, 'Soham', 'Carroll', 'soham.carroll@example.com', 'tinyrabbit618', '6cc61f49c2ae633aed091f22d7868752', 'male', 'Australia', 'Geelong', '00-2395-8193', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(43, 'Melanie', 'Richards', 'melanie.richards@example.com', 'whiteleopard536', 'e7f4f8bd246c235418280d1f124e14f0', 'female', 'Australia', 'Sunshine Coast', '03-6665-2882', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(44, 'Carrie', 'Hopkins', 'carrie.hopkins@example.com', 'crazybear258', '3a7e1b81ca8fbc0e160315723dc50901', 'female', 'Australia', 'Cairns', '04-5586-8474', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(45, 'Tina', 'Ellis', 'tina.ellis@example.com', 'sadzebra634', '64dbe645fc88e703210ae9b008668f52', 'female', 'Australia', 'Geelong', '03-9910-5223', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(46, 'Michele', 'Gibson', 'michele.gibson@example.com', 'orangeostrich814', '2a49f4219490063fc79217dabede6168', 'female', 'Australia', 'Bowral', '01-2571-6507', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(47, 'Sharlene', 'Olson', 'sharlene.olson@example.com', 'goldenwolf419', '9e8b4e6aa25e60e1c9ef7fa02dc71a79', 'female', 'Australia', 'Devonport', '08-4053-6302', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(48, 'Willard', 'Ryan', 'willard.ryan@example.com', 'lazydog236', 'dee484ff7366319331b0d36e9d0958c1', 'male', 'Australia', 'Ballarat', '00-4662-6967', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(49, 'Pearl', 'Sutton', 'pearl.sutton@example.com', 'happybird815', 'e00cf25ad42683b3df678c61f42c6bda', 'female', 'Australia', 'Toowoomba', '08-9576-1434', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(50, 'Victor', 'Pearson', 'victor.pearson@example.com', 'lazyelephant225', '58f3907ef81dee7443834b0f76d247e5', 'male', 'Australia', 'Melbourne', '04-2620-3521', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(51, 'Sylvia', 'Fletcher', 'sylvia.fletcher@example.com', 'sadbird213', '753a12dcb05357162a8587b8c55afdef', 'female', 'Australia', 'Warrnambool', '09-2422-3099', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(52, 'Landon', 'Coleman', 'landon.coleman@example.com', 'beautifulladybug653', '56aed7e7485ff03d5605b885b86e947e', 'male', 'Australia', 'Dubbo', '00-4845-4909', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(53, 'Minnie', 'Davis', 'minnie.davis@example.com', 'angrysnake172', '09e592c4a21a21b39f22aa7d7170f162', 'female', 'Australia', 'Geelong', '08-0124-9657', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(54, 'Jon', 'Hernandez', 'jon.hernandez@example.com', 'crazypanda495', '8f7bf713381f73cf91f18d5b9f33314a', 'male', 'Australia', 'Toowoomba', '06-0702-4534', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(55, 'Harold', 'Torres', 'harold.torres@example.com', 'goldenduck540', '427cfcf3ec4976e13e28f977fb791473', 'male', 'Australia', 'Busselton', '05-5775-1254', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(56, 'Loretta', 'Douglas', 'loretta.douglas@example.com', 'bigpeacock212', 'f491fd730f7a22bb18c6e1a840b6f35a', 'female', 'Australia', 'Geelong', '02-3007-0469', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(57, 'Dan', 'Hudson', 'dan.hudson@example.com', 'smallbear163', 'ec4d1eb36b22d19728e9d1d23ca84d1c', 'male', 'Australia', 'Rockhampton', '06-6702-0150', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(58, 'Stephen', 'Wells', 'stephen.wells@example.com', 'blackzebra183', '56c97903eddc9534396c7249d2e5aa1f', 'male', 'Australia', 'Darwin', '06-8437-9437', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(59, 'Phillip', 'Montgomery', 'phillip.montgomery@example.com', 'silverkoala970', 'e03f9063484fb1967d1675c86a6094d7', 'male', 'Australia', 'Coffs Harbour', '09-6032-2695', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(60, 'Taylor', 'Day', 'taylor.day@example.com', 'goldenbird166', 'd3c25e0c4dd275a5b92a2767e865a964', 'female', 'Australia', 'Devonport', '05-6957-9536', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(61, 'Victoria', 'Berry', 'victoria.berry@example.com', 'organicwolf849', '24fe6057396bec79d2638615b12eb989', 'female', 'Australia', 'Bunbury', '09-0835-6644', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(62, 'Joanne', 'Roberts', 'joanne.roberts@example.com', 'brownswan567', '3feb2d8fe13b4e9c3c81de0734257103', 'female', 'Australia', 'Maitland', '03-1617-4208', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(63, 'Brad', 'Bradley', 'brad.bradley@example.com', 'redswan154', '9acdf48395d1953b97aca6d66d04c2e0', 'male', 'Australia', 'Tamworth', '02-6801-1201', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(64, 'Lester', 'Mcdonalid', 'lester.mcdonalid@example.com', 'sadcat273', '88f30517101dd912e567ffe7cff796e7', 'male', 'Australia', 'Queanbeyan', '06-1670-6062', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(65, 'Robert', 'Carroll', 'robert.carroll@example.com', 'sadbear506', '051de32597041e41f73b97d61c67a13b', 'male', 'Australia', 'Hobart', '02-7970-8215', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(66, 'Cindy', 'Martin', 'cindy.martin@example.com', 'goldenbutterfly484', 'c9a38f2d3d8321a36036017eb1487959', 'female', 'Australia', 'Toowoomba', '00-6012-9197', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(67, 'Yolanda', 'Andrews', 'yolanda.andrews@example.com', 'bigmeercat935', '3c9c03d6008a5adf42c2a55dd4a1a9f2', 'female', 'Australia', 'Dubbo', '05-2057-9956', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(68, 'Dennis', 'Fletcher', 'dennis.fletcher@example.com', 'lazyfrog165', '70e7b7e0172b756183a17cdfaf9e6ac8', 'male', 'Australia', 'Geraldton', '04-6571-8786', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(69, 'Brooklyn', 'Robertson', 'brooklyn.robertson@example.com', 'heavyzebra496', '3da5dac093efa65422cbb22af4588c65', 'female', 'Australia', 'Bowral', '05-2455-8990', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(70, 'Maxine', 'Holt', 'maxine.holt@example.com', 'silverbutterfly782', '1d6ad39ff8ff378c5e23ef5921065891', 'female', 'Australia', 'Shepparton', '08-0061-2459', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(71, 'Floyd', 'Stewart', 'floyd.stewart@example.com', 'orangeelephant328', '8468d6c2903810f1689eeab9afaa936a', 'male', 'Australia', 'Warrnambool', '02-1571-1797', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(72, 'Lesa', 'Alexander', 'lesa.alexander@example.com', 'happygoose603', '4df20a11e93950b4dec37f69990a64c3', 'female', 'Australia', 'Shepparton', '05-2952-8965', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(73, 'Genesis', 'Morrison', 'genesis.morrison@example.com', 'organicmouse734', 'c94c1502849c5679cabf3d6dedcc1779', 'female', 'Australia', 'Sunshine Coast', '08-4678-8739', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(74, 'Marvin', 'Walters', 'marvin.walters@example.com', 'purpleswan348', '2da62ad3e18389c0a68653473dd8a26d', 'male', 'Australia', 'Albany', '04-1608-0476', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(75, 'Sue', 'Morgan', 'sue.morgan@example.com', 'yellowwolf172', '330aabd33b0256c6c4a85ece62b68f21', 'female', 'Australia', 'Traralgon', '00-5199-2490', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(76, 'Ethel', 'Hawkins', 'ethel.hawkins@example.com', 'orangeduck664', '944a3ede0ff5b2c7270078bf1b94dd68', 'female', 'Australia', 'Australian Capital Territory', '01-4793-2791', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(77, 'Vicki', 'Phillips', 'vicki.phillips@example.com', 'angrygoose948', '3984b5f332578aa3477d937547e46f20', 'female', 'Australia', 'Queanbeyan', '01-8505-8751', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(78, 'Greg', 'Romero', 'greg.romero@example.com', 'sadfrog251', '63c762af1ff110e97f8b7cb925d36bf7', 'male', 'Australia', 'Bendigo', '00-7514-7492', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(79, 'Dan', 'Meyer', 'dan.meyer@example.com', 'brownzebra958', '0e411e1bbaba90b26c1cf25142cf4457', 'male', 'Australia', 'Geraldton', '01-3746-3204', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(80, 'Brian', 'Matthews', 'brian.matthews@example.com', 'beautifulelephant311', '57cb5a26334a6c1d5e27c49def4a0f0d', 'male', 'Australia', 'Mackay', '07-3572-8449', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(81, 'Tommy', 'Hoffman', 'tommy.hoffman@example.com', 'sadgorilla321', 'ce9c6a27ead819b82717b54d0599f4a5', 'male', 'Australia', 'Mackay', '09-6580-2359', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(82, 'Anna', 'Richards', 'anna.richards@example.com', 'purplegorilla938', '3bcb1019826b4ab2a9c84350a7dca708', 'female', 'Australia', 'Bunbury', '04-3717-0549', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(83, 'Sandra', 'Barrett', 'sandra.barrett@example.com', 'heavyswan157', 'e02325607e9711a469126a49f09c0630', 'female', 'Australia', 'Busselton', '03-9742-7526', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(84, 'Jack', 'Lawrence', 'jack.lawrence@example.com', 'greenpanda385', 'b6af3f19458ec8e6faff8ee1e0440ecb', 'male', 'Australia', 'Australian Capital Territory', '07-8791-6805', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(85, 'Kitty', 'Wells', 'kitty.wells@example.com', 'tinyleopard125', '65f185ec6bd47af8f082f8196d0b4d24', 'female', 'Australia', 'Bundaberg', '07-2784-0799', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(86, 'Melissa', 'Walters', 'melissa.walters@example.com', 'silverbird310', '7c4f29407893c334a6cb7a87bf045c0d', 'female', 'Australia', 'Shepparton', '01-3224-5664', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(87, 'Sergio', 'Powell', 'sergio.powell@example.com', 'beautifulfish568', 'bc8f87a21501ae15a48d77a91513c3a7', 'male', 'Australia', 'Tamworth', '08-9830-9920', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(88, 'Leta', 'Rodriquez', 'leta.rodriquez@example.com', 'brownfrog197', 'a2670132703414066b2dc290ed48244d', 'female', 'Australia', 'Wollongong', '03-6165-2157', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(89, 'Becky', 'Burke', 'becky.burke@example.com', 'purplecat967', '1a100d2c0dab19c4430e7d73762b3423', 'female', 'Australia', 'Orange', '00-1034-7809', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(90, 'Larry', 'Lucas', 'larry.lucas@example.com', 'redduck391', '2c06e8c3109975c3f139d7551e8b5def', 'male', 'Australia', 'Gladstone', '04-2241-6545', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(91, 'Louis', 'Bailey', 'louis.bailey@example.com', 'beautifulrabbit674', 'a1ec59ce926b4d6d3f61614621af314f', 'male', 'Australia', 'Mildura', '02-9492-5486', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(92, 'Josephine', 'Reed', 'josephine.reed@example.com', 'beautifultiger868', '52c63a54d65abdead451a7555ec8ed94', 'female', 'Australia', 'Shepparton', '07-6727-1343', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(93, 'Cassandra', 'Martin', 'cassandra.martin@example.com', 'silverwolf804', '7de4f64e85fc3eddf0eb4ccfffb390a3', 'female', 'Australia', 'Ballarat', '06-2000-6791', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(94, 'Kathryn', 'Gomez', 'kathryn.gomez@example.com', 'tinybear201', 'a65d40c3a28305046f1999d8051c256d', 'female', 'Australia', 'Geelong', '03-7716-1683', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(95, 'Kylie', 'Banks', 'kylie.banks@example.com', 'silverduck879', '912e79cd13c64069d91da65d62fbb78c', 'female', 'Australia', 'Devonport', '02-2123-7088', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(96, 'Randall', 'Mitchell', 'randall.mitchell@example.com', 'orangefrog107', 'd5d630d4355544115ee3ade77a6141ee', 'male', 'Australia', 'Wagga Wagga', '07-3580-5102', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(97, 'Brent', 'Gray', 'brent.gray@example.com', 'blackdog793', 'eb0c28768b1cfe1c105a8c7a2484dd57', 'male', 'Australia', 'Warrnambool', '03-5246-5053', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(98, 'Rhonda', 'Morris', 'rhonda.morris@example.com', 'bigostrich659', '98bd1c45684cf587ac2347a92dd7bb51', 'female', 'Australia', 'Darwin', '07-4159-1307', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(99, 'Mathew', 'Graves', 'mathew.graves@example.com', 'tinymeercat575', 'dee484ff7366319331b0d36e9d0958c1', 'male', 'Australia', 'Devonport', '04-9487-0714', '2024-08-06 07:44:46', '2024-08-06 07:44:46'),
(100, 'Renee', 'Lee', 'renee.lee@example.com', 'bigzebra239', 'f71dbe52628a3f83a77ab494817525c6', 'female', 'Australia', 'Darwin', '05-2355-9788', '2024-08-06 07:44:46', '2024-08-06 07:44:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
