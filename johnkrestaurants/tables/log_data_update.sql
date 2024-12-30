CREATE TABLE `log_data_update` (
    `id` int AUTO_INCREMENT PRIMARY KEY,
    `log_entry_type_id` int NOT NULL,
    `table_name` varchar(50) NOT NULL,
    `message` varchar(1000) NOT NULL,
    `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_log_data_update_lu_log_entry_type FOREIGN KEY (`log_entry_type_id`) REFERENCES lu_log_entry_type(`id`)
);
