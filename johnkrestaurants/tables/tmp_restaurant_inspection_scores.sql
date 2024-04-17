CREATE TABLE `tmp_restaurant_inspection_scores` (
    `EstablishmentID` int DEFAULT NULL,
    `InspectionID` int DEFAULT NULL,
    `Ins_TypeDesc` varchar(19) DEFAULT NULL,
    `EstablishmentName` varchar(50) DEFAULT NULL,
    `PlaceName` varchar(10) DEFAULT NULL,
    `Address` varchar(32) DEFAULT NULL,
    `Address2` varchar(10) DEFAULT NULL,
    `City` varchar(14) DEFAULT NULL,
    `State` varchar(2) DEFAULT NULL,
    `Zip` int DEFAULT NULL,
    `TypeDescription` varchar(42) DEFAULT NULL,
    `InspectionDate` varchar(19) DEFAULT NULL,
    `score` int DEFAULT NULL,
    `Grade` varchar(1) DEFAULT NULL,
    `NameSearch` varchar(50) DEFAULT NULL,
    `Intersection` varchar(10) DEFAULT NULL,
    `ObjectId` int DEFAULT NULL
);