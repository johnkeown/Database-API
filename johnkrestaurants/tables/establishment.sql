CREATE TABLE `establishment` (
    `id` int AUTO_INCREMENT PRIMARY KEY,
    `establishment_type_id` int NOT NULL,
    `source_id` int NOT NULL,
    `name` varchar(50) DEFAULT NULL,
    `address` varchar(32) NOT NULL,
    `city` varchar(14) NOT NULL,
    `state` varchar(2) NOT NULL,
    `zip` varchar(5) NOT NULL,
    `row_status_id` int NOT NULL DEFAULT 1,
    `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_establishment_lu_establishment_type FOREIGN KEY (`establishment_type_id`) REFERENCES lu_establishment_type(`id`),
    CONSTRAINT fk_establishment_lu_row_status FOREIGN KEY (`row_status_id`) REFERENCES lu_row_status(`id`)
);
