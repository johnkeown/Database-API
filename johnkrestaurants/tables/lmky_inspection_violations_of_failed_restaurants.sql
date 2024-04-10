CREATE TABLE `johnkrestaurants`.`lmky_inspection_violations_of_failed_restaurants` (
    `EstablishmentID` int DEFAULT NULL,
    `InspectionDate` varchar(22) DEFAULT NULL,
    `InspectionID` int DEFAULT NULL,
    `EstTypeDesc` varchar(42) DEFAULT NULL,
    `premise_name` varchar(47) DEFAULT NULL,
    `premise_adr1_num` varchar(8) DEFAULT NULL,
    `premise_adr1_street` varchar(27) DEFAULT NULL,
    `premise_city` varchar(10) DEFAULT NULL,
    `premise_state` varchar(2) DEFAULT NULL,
    `premise_zip` int DEFAULT NULL,
    `InspectionType` varchar(8) DEFAULT NULL,
    `score` int DEFAULT NULL,
    `InspTypeSpecificViolID` int DEFAULT NULL,
    `ViolationDesc` varchar(176) DEFAULT NULL,
    `critical_yn` varchar(3) DEFAULT NULL,
    `Insp_Viol_Comments` varchar(733) DEFAULT NULL,
    `rpt_area_id` varchar(22) DEFAULT NULL,
    `ObjectId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
