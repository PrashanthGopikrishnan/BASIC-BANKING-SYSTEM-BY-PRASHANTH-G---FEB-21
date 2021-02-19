SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET
  time_zone = "+00:00";
-- --------------------------------------------------------
  --
  -- Table structure for table `transaction`
  --
  CREATE TABLE `transaction` (
    `sno` int(3) NOT NULL,
    `sender` text NOT NULL,
    `receiver` text NOT NULL,
    `balance` int(8) NOT NULL,
    `datetime` datetime NOT NULL DEFAULT current_timestamp()
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------
  --
  -- Table structure for table `users`
  --
  CREATE TABLE `users` (
    `id` int(3) NOT NULL,
    `name` text NOT NULL,
    `email` varchar(30) NOT NULL,
    `balance` int(8) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Dumping data for table `users`
  --
INSERT INTO
  `users` (`id`, `name`, `email`, `balance`)
VALUES
  (1, 'PRASHANTH G','prashanth1234@gmail.com',750000),
  (2, 'KAVYA M', 'kavya1239@gmail.com', 45000),
  (3, 'REKHA P', 'rekha789@gmail.com', 100000),
  (4, 'ARUN J', 'arun199@gmail.com', 300890),
  (5, 'NITHYA R', 'nithya67544@gmail.com', 230000),
  (6, 'SHOAIB K', 'shoaib1995@gmail.com', 79000),
  (7, 'DINAKARAN L', 'dinakaranl1233@gmail.com', 170000),
  (8, 'GOUTHAM P', 'goutham788@gmail.com', 54300),
  (9, 'HARRIS P', 'harris356@gmail.com', 700000),
  (10,'SURYA H', 'surya1999@gmail.com', 600500);
-- Indexes for dumped tables
  --
  --
  -- Indexes for table `transaction`
  --
ALTER TABLE
  `transaction`
ADD
  PRIMARY KEY (`sno`);
--
  -- Indexes for table `users`
  --
ALTER TABLE
  `users`
ADD
  PRIMARY KEY (`id`);
--
  -- AUTO_INCREMENT for dumped tables
  --
  --
  -- AUTO_INCREMENT for table `transaction`
  --
ALTER TABLE
  `transaction`
MODIFY
  `sno` int(3) NOT NULL AUTO_INCREMENT;
--
  -- AUTO_INCREMENT for table `users`
  --
ALTER TABLE
  `users`
MODIFY
  `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;