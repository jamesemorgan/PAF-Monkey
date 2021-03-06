DROP TABLE IF EXISTS `welsh_address`;
CREATE TABLE `welsh_address` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AddressKey` int(10) unsigned NOT NULL DEFAULT '0',
  `PostcodeOutwardCode` varchar(4) NOT NULL DEFAULT '',
  `PostcodeInwardCode` varchar(3) NOT NULL DEFAULT '',
  `Postcode` varchar(8) NOT NULL DEFAULT '',
  `LocalityKey` int(6) unsigned DEFAULT NULL,
  `ThoroughfareKey` int(8) unsigned DEFAULT NULL,
  `ThoroughfareDescriptorKey` int(4) unsigned DEFAULT NULL,
  `DependentThoroughfareKey` int(8) unsigned DEFAULT NULL,
  `DependentThoroughfareDescriptorKey` int(4) unsigned DEFAULT NULL,
  `BuildingNumber` int(4) unsigned DEFAULT NULL,
  `BuildingNameKey` int(8) unsigned DEFAULT NULL,
  `SubBuildingNameKey` int(8) unsigned DEFAULT NULL,
  `NumberOfHouseholds` int(4) unsigned NOT NULL DEFAULT '0',
  `OrganisationKey` int(8) unsigned DEFAULT NULL,
  `PostcodeType` varchar(1) NOT NULL DEFAULT '',
  `ConcatenationIndicator` varchar(1) NOT NULL DEFAULT '',
  `DeliveryPointSuffix` varchar(2) NOT NULL DEFAULT '',
  `SmallUserOrganisationIndicator` varchar(1) NOT NULL DEFAULT '',
  `POBoxNumber` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY(`AddressKey`,`OrganisationKey`,`PostcodeType`, `LocalityKey`, `ThoroughfareKey`),
  KEY welsh_address_index1 (`AddressKey`),
  KEY welsh_address_index2 (`Postcode`),
  KEY welsh_address_index3 (`LocalityKey`),
  KEY welsh_address_index4 (`ThoroughfareKey`),
  KEY welsh_address_index5 (`ThoroughfareDescriptorKey`),
  KEY welsh_address_index6 (`DependentThoroughfareKey`),
  KEY welsh_address_index7 (`DependentThoroughfareDescriptorKey`),
  KEY welsh_address_index8 (`BuildingNameKey`),
  KEY welsh_address_index9 (`SubBuildingNameKey`),
  KEY welsh_address_index10 (`OrganisationKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;