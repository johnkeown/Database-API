CREATE TABLE `johnkrestaurants`.`lmky_restaurant_inspection_scores` (
    `id` int AUTO_INCREMENT PRIMARY KEY,
    `establishment_id` int DEFAULT NULL,
    `source_id` int DEFAULT NULL,
    `inspection_type_id` int NOT NULL,
    `date` varchar(19) DEFAULT NULL,
    `score` int DEFAULT NULL,
    `grade` varchar(1) DEFAULT NULL,
    CONSTRAINT fk_establishments FOREIGN KEY (`establishment_id`) REFERENCES establishments(`id`),
    CONSTRAINT fk_inspection_types FOREIGN KEY (`inspection_type_id`) REFERENCES lu_inspection_types(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
