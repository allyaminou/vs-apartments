
CREATE TABLE `apartments` (
  `Name` varchar(50) DEFAULT NULL,
  `buy_price` int(11) DEFAULT 5000,
  `rent_price` int(11) DEFAULT 5000,
  `rentLength` int(11) DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `apartments` (`Name`, `buy_price`, `rent_price`, `rentLength`) VALUES
('TinselTowers', 10000, 5000, 3),
('EclipseTowers', 7000, 2000, 3);

CREATE TABLE `owned_apartments` (
  `id` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `apartment` varchar(50) DEFAULT NULL,
  `ownership_type` varchar(10) DEFAULT 'purchase',
  `renew` tinyint(4) NOT NULL DEFAULT 1,
  `expired` tinyint(4) NOT NULL DEFAULT 0,
  `lastPayment` int(11) DEFAULT NULL,
  `renewDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
