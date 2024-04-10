CREATE TABLE `johnkrestaurants`.`establishments` (
    `id` int AUTO_INCREMENT PRIMARY KEY,
    `establishment_type_id` int NOT NULL
    `source_id` int NOT NULL,
    `name` varchar(50) DEFAULT NULL,
    `address` varchar(32) NOT NULL,
    `city` varchar(14) NOT NULL,
    `state` varchar(2) NOT NULL,
    `zip` varchar(5) NOT NULL,
    CONSTRAINT fk_establishment_types FOREIGN KEY (`establishment_type_id`) REFERENCES lu_establishment_types(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3

