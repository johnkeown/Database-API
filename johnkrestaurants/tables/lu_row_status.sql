CREATE TABLE `lu_row_status` (
    `id` int PRIMARY KEY,
    `value` varchar(20) NOT NULL,
    `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `lu_row_status` (`id`, `value`)
VALUES (1, 'ACTIVE'),
       (2, 'DELETED');
