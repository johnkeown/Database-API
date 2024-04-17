CREATE TABLE `lu_log_entry_type` (
    `id` int PRIMARY KEY,
    `value` varchar(20) NOT NULL,
    `row_status_id` int NOT NULL DEFAULT 1,
    `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_lu_log_entry_type_lu_row_status FOREIGN KEY (`row_status_id`) REFERENCES lu_row_status(`id`)
);

INSERT INTO `lu_log_entry_type` (`id`, `value`)
VALUES (1, 'INFO'),
       (2, 'ERROR');
