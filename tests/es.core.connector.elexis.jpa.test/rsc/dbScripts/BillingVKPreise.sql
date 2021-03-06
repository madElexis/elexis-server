CREATE TABLE IF NOT EXISTS `vk_preise` (
  `TYP` varchar(80) DEFAULT NULL,
  `ID` varchar(25) DEFAULT NULL,
  `lastupdate` bigint(20) DEFAULT NULL,
  `DATUM_VON` char(8) DEFAULT NULL,
  `DATUM_BIS` char(8) DEFAULT NULL,
  `MULTIPLIKATOR` char(8) DEFAULT NULL
);

INSERT INTO `vk_preise` VALUES ('EAL2009','99.96830122542409',NULL,'20110101','99991231','1.00');
INSERT INTO `vk_preise` VALUES ('MV','246.67834420379097',NULL,'20041101','99991231','0.92');
INSERT INTO `vk_preise` VALUES ('UVG','933.4868480763275',NULL,'20041101','99991231','0.92');
INSERT INTO `vk_preise` VALUES ('IV','927.3992385039099',NULL,'20041101','20160216','0.92');
INSERT INTO `vk_preise` VALUES ('KVG','836.5356790242117',NULL,'20040101','20041231','0.89');
INSERT INTO `vk_preise` VALUES ('KVG','400.48071034297413',NULL,'20050101','20050630','0.87');
INSERT INTO `vk_preise` VALUES ('KVG','492.7965453758804',NULL,'20050701','20051231','0.92');
INSERT INTO `vk_preise` VALUES ('KVG','262.5406265841244',NULL,'20060101','20061231','0.90');
INSERT INTO `vk_preise` VALUES ('KVG','834.3135275266259',NULL,'20070101','99991231','0.89');
INSERT INTO `vk_preise` VALUES ('VVG','383.94578861440135',NULL,'20040101','20041231','0.89');
INSERT INTO `vk_preise` VALUES ('VVG','416.7883912257742',NULL,'20050101','20050630','0.87');
INSERT INTO `vk_preise` VALUES ('VVG','932.1046210193118',NULL,'20050701','20051231','0.92');
INSERT INTO `vk_preise` VALUES ('VVG','410.1579621528815',NULL,'20060101','20061231','0.90');
INSERT INTO `vk_preise` VALUES ('VVG','254.47597844011705',NULL,'20070101','99991231','0.89');
INSERT INTO `vk_preise` VALUES ('Covercard','41.90603647558581',NULL,'20130905','20380118','0.89');
INSERT INTO `vk_preise` VALUES ('privat','446.1022777912228',NULL,'20130101','99991231','1.00');
INSERT INTO `vk_preise` VALUES ('IV','104.79331026300164',NULL,'20160217','20160310','0.92');
INSERT INTO `vk_preise` VALUES ('IV','185.65974867498477',NULL,'20160311','99991231','0.92');