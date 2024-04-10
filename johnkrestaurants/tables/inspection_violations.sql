CREATE TABLE `johnkrestaurants`.`inspection_violations` (
    `id` int AUTO_INCREMENT PRIMARY KEY,
    `establishment_id` int NOT NULL,
    `inspection_id` int DEFAULT NULL,
    `violation_type_id` int DEFAULT NULL,
    `is_critical` bit(1) DEFAULT NULL,
    `comments` varchar(733) DEFAULT NULL,
    CONSTRAINT fk_establishments FOREIGN KEY (`establishment_id`) REFERENCES establishments(`id`),
    CONSTRAINT fk_inspections FOREIGN KEY (`inspection_id`) REFERENCES inspections(`id`),
    CONSTRAINT fk_lu_violation_types FOREIGN KEY (`violation_type_id`) REFERENCES lu_violation_types(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
