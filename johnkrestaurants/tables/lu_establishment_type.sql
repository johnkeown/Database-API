CREATE TABLE `lu_establishment_type` (
    `id` int AUTO_INCREMENT PRIMARY KEY,
    `value` varchar(50) NOT NULL,
    `row_status_id` int NOT NULL DEFAULT 1,
    `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_lu_establishment_type_lu_row_status FOREIGN KEY (`row_status_id`) REFERENCES lu_row_status(`id`)
);
