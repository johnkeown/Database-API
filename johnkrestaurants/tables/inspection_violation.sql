CREATE TABLE `inspection_violation` (
    `id` int AUTO_INCREMENT PRIMARY KEY,
    `establishment_id` int NOT NULL,
    `inspection_id` int DEFAULT NULL,
    `violation_type_id` int DEFAULT NULL,
    `is_critical` bit(1) DEFAULT NULL,
    `comments` varchar(733) DEFAULT NULL,
    `row_status_id` int NOT NULL DEFAULT 1,
    `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_inspection_violation_establishment FOREIGN KEY (`establishment_id`) REFERENCES establishment(`id`),
    CONSTRAINT fk_inspection_violation_inspection FOREIGN KEY (`inspection_id`) REFERENCES inspection(`id`),
    CONSTRAINT fk_inspection_violation_lu_violation_type FOREIGN KEY (`violation_type_id`) REFERENCES lu_violation_type(`id`),
    CONSTRAINT fk_inspection_violation_lu_row_status FOREIGN KEY (`row_status_id`) REFERENCES lu_row_status(`id`)
);
