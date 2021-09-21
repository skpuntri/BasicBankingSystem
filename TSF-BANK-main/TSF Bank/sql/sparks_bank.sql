SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Anil', 'anil@gmail.com', 43000),
(2, 'Sara', 'sara@gmail.com', 35000),
(3, 'Susil', 'susil11@gmail.com', 50000),
(4, 'Ambika', 'ambika@gmail.com', 30000),
(5, 'Sudheer', 'sudheer@gmail.com', 21000),
(6, 'Sudhanshu', 'sudhanshu33@gmail.com', 98000),
(7, 'Ansika', 'ansika@gmail.com', 89000),
(8, 'Dileep', 'dileep81@gmail.com', 75000),
(9, 'Roshni', 'roshni@gmail.com', 54000),
(10, 'Sachin', 'sachin@gmail.com', 60000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;


