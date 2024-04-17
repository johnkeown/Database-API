CREATE TABLE `inspection` (
    `id` int AUTO_INCREMENT PRIMARY KEY,
    `establishment_id` int DEFAULT NULL,
    `source_id` int DEFAULT NULL,
    `inspection_type_id` int NOT NULL,
    `date` varchar(19) DEFAULT NULL,
    `score` int DEFAULT NULL,
    `grade` varchar(1) DEFAULT NULL,
    `row_status_id` int NOT NULL DEFAULT 1,
    `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_inspection_establishment FOREIGN KEY (`establishment_id`) REFERENCES establishment(`id`),
    CONSTRAINT fk_inspection_lu_inspection_type FOREIGN KEY (`inspection_type_id`) REFERENCES lu_inspection_type(`id`),
    CONSTRAINT fk_inspection_lu_row_status FOREIGN KEY (`row_status_id`) REFERENCES lu_row_status(`id`)
);
