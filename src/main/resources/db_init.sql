CREATE DATABASE `fashion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `closet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `thumbnail` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `thumbnail` varchar(250) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `reviews` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;