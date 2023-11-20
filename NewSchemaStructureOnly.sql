-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: newschema3
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `additional_master`
--

DROP TABLE IF EXISTS `additional_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional_master` (
  `AdditionalMasterId` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` bigint DEFAULT NULL,
  PRIMARY KEY (`AdditionalMasterId`),
  KEY `AddMaster_CompanyId_fk_idx` (`CompanyId`),
  CONSTRAINT `AddMaster_CompanyId_fk` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_trail` (
  `AuditTrailId` int NOT NULL AUTO_INCREMENT,
  `ScreenName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `ActionName` varchar(45) DEFAULT NULL,
  `Time` datetime DEFAULT NULL,
  PRIMARY KEY (`AuditTrailId`)
) ENGINE=InnoDB AUTO_INCREMENT=22188 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bank_master`
--

DROP TABLE IF EXISTS `bank_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_master` (
  `BankId` bigint NOT NULL AUTO_INCREMENT,
  `BankName` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CreatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `UpdatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`BankId`),
  UNIQUE KEY `bank_id_UNIQUE` (`BankId`),
  KEY `fk_compid_bankmaster_idx` (`CompanyId`),
  CONSTRAINT `fk_compid_bankmaster` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `branch_master`
--

DROP TABLE IF EXISTS `branch_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_master` (
  `BranchId` int NOT NULL,
  `BranchName` varchar(45) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`BranchId`),
  KEY `fk_cmpid_branms_idx` (`CompanyId`),
  CONSTRAINT `fk_cmpid_branms` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category_master`
--

DROP TABLE IF EXISTS `category_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_master` (
  `CategoryId` bigint NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  `Tenure` varchar(50) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`CategoryId`),
  KEY `fk_compid_categorymaster_idx` (`CompanyId`),
  CONSTRAINT `fk_compid_categorymaster` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city_master`
--

DROP TABLE IF EXISTS `city_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_master` (
  `CityId` bigint NOT NULL AUTO_INCREMENT,
  `CityName` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `UpdatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `StateId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`CityId`),
  KEY `fk_company_id_city_idx` (`CompanyId`),
  CONSTRAINT `fk_company_id_city` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_master`
--

DROP TABLE IF EXISTS `client_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_master` (
  `ClientId` bigint NOT NULL AUTO_INCREMENT,
  `ClientCode` varchar(50) DEFAULT NULL,
  `ClientName` varchar(50) NOT NULL,
  `MobileNo` varchar(10) DEFAULT NULL,
  `CompanyCount` bigint DEFAULT '1',
  `Status` int NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Address1` varchar(200) DEFAULT NULL,
  `Address2` varchar(200) DEFAULT NULL,
  `Address3` varchar(200) DEFAULT NULL,
  `Pincode` varchar(45) DEFAULT NULL,
  `PAN` varchar(45) DEFAULT NULL,
  `TAN` varchar(45) DEFAULT NULL,
  `MakerId` int DEFAULT NULL,
  `CheckerId` int DEFAULT NULL,
  `RejectionReason` varchar(200) DEFAULT NULL,
  `TwoWayAuthentication` bit(1) DEFAULT NULL,
  `IsOwnerClient` tinyint DEFAULT NULL,
  `IsSMS` tinyint(1) DEFAULT NULL,
  `IsEmail` tinyint(1) DEFAULT NULL,
  `CountryId` bigint DEFAULT NULL,
  `StateId` bigint DEFAULT NULL,
  PRIMARY KEY (`ClientId`),
  UNIQUE KEY `client_name_UNIQUE` (`ClientName`),
  KEY `client_master_country_fk_idx` (`CountryId`),
  KEY `client_master_statem_fk_idx` (`StateId`),
  CONSTRAINT `client_master_country_fk` FOREIGN KEY (`CountryId`) REFERENCES `country_master` (`CountryId`),
  CONSTRAINT `client_master_statem_fk` FOREIGN KEY (`StateId`) REFERENCES `state_master` (`StateId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_organisation_mapper`
--

DROP TABLE IF EXISTS `client_organisation_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_organisation_mapper` (
  `ClientOrganisationMapperId` int NOT NULL AUTO_INCREMENT,
  `ClientId` bigint DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ClientOrganisationMapperId`),
  KEY `c_o_m_client_id_fk_idx` (`ClientId`),
  KEY `client_org_map_company_id_fk_idx` (`CompanyId`),
  KEY `client_org_map_status_idx` (`Status`),
  CONSTRAINT `client_org_map_client_id_fk` FOREIGN KEY (`ClientId`) REFERENCES `client_master` (`ClientId`),
  CONSTRAINT `client_org_map_company_id_fk` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `client_org_map_status` FOREIGN KEY (`Status`) REFERENCES `status` (`StatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_user_role_mapper`
--

DROP TABLE IF EXISTS `client_user_role_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_user_role_mapper` (
  `ClientUserRoleMapperId` int NOT NULL AUTO_INCREMENT,
  `ClientId` bigint DEFAULT NULL,
  `EmployeeId` bigint DEFAULT NULL,
  `RoleId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ClientUserRoleMapperId`),
  UNIQUE KEY `index6` (`EmployeeId`,`ClientId`),
  KEY `fk_role_id_clienturm_idx` (`RoleId`),
  KEY `fk_employee_id_clienturm` (`EmployeeId`),
  KEY `fk_client_id_clienturm_idx` (`ClientId`),
  KEY `fk_status_clienturn_idx` (`Status`),
  CONSTRAINT `fk_client_id_clienturm` FOREIGN KEY (`ClientId`) REFERENCES `client_master` (`ClientId`),
  CONSTRAINT `fk_employee_id_clienturm` FOREIGN KEY (`EmployeeId`) REFERENCES `employee_personal_details` (`EmployeePersonalDetailId`),
  CONSTRAINT `fk_role_id_clienturm` FOREIGN KEY (`RoleId`) REFERENCES `user_role` (`UserRoleId`),
  CONSTRAINT `fk_status_clienturn` FOREIGN KEY (`Status`) REFERENCES `status` (`StatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=617 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_master`
--

DROP TABLE IF EXISTS `common_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_master` (
  `CommonMasterId` int NOT NULL,
  `CommonMasterName` varchar(100) DEFAULT NULL,
  `CommonMasterDisplayName` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `IsCompulsory` bit(1) DEFAULT b'0',
  `DefaultParentID` int DEFAULT '0',
  `DefaultParentType` varchar(2) DEFAULT 'C',
  PRIMARY KEY (`CommonMasterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_master_company_mapper`
--

DROP TABLE IF EXISTS `common_master_company_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_master_company_mapper` (
  `CommonMasterCompanyMapperID` int NOT NULL AUTO_INCREMENT,
  `CompanyID` int DEFAULT NULL,
  `CommonMasterID` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`CommonMasterCompanyMapperID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_master_screen_mapper`
--

DROP TABLE IF EXISTS `common_master_screen_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_master_screen_mapper` (
  `commonmasterscreenmapperid` int NOT NULL,
  `ScreenId` int DEFAULT NULL,
  `CommonMasterId` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`commonmasterscreenmapperid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_address_details`
--

DROP TABLE IF EXISTS `company_address_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_address_details` (
  `AddressId` bigint NOT NULL AUTO_INCREMENT,
  `CompanyAddress` varchar(300) DEFAULT NULL,
  `Division` varchar(45) DEFAULT NULL,
  `Branch` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`AddressId`),
  KEY `company_id` (`CompanyId`),
  CONSTRAINT `company_address_details_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_user_role_mapper`
--

DROP TABLE IF EXISTS `company_user_role_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_user_role_mapper` (
  `UserRoleMapperId` int NOT NULL AUTO_INCREMENT,
  `CompanyId` bigint DEFAULT NULL,
  `RoleId` bigint DEFAULT NULL,
  `EmployeeId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserRoleMapperId`),
  UNIQUE KEY `index6` (`CompanyId`,`EmployeeId`),
  KEY `fk_company_id_curm_idx` (`CompanyId`),
  KEY `fk_role_id_curm_idx` (`RoleId`),
  KEY `fk_employee_id_curm` (`EmployeeId`),
  KEY `fk_status_curm_idx` (`Status`),
  CONSTRAINT `fk_company_id_curm` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `fk_employee_id_curm` FOREIGN KEY (`EmployeeId`) REFERENCES `employee_personal_details` (`EmployeePersonalDetailId`),
  CONSTRAINT `fk_role_id_curm` FOREIGN KEY (`RoleId`) REFERENCES `user_role` (`UserRoleId`),
  CONSTRAINT `fk_status_curm` FOREIGN KEY (`Status`) REFERENCES `status` (`StatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `costcenter`
--

DROP TABLE IF EXISTS `costcenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costcenter` (
  `CostCenterId` bigint NOT NULL AUTO_INCREMENT,
  `CostCenterName` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `EmployeeId` bigint NOT NULL,
  PRIMARY KEY (`CostCenterId`),
  KEY `costcenter_ibfk_1` (`EmployeeId`),
  CONSTRAINT `costcenter_ibfk_1` FOREIGN KEY (`EmployeeId`) REFERENCES `employee_professional_details` (`EmployeeProfessionaldetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `costcenter_master`
--

DROP TABLE IF EXISTS `costcenter_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costcenter_master` (
  `CostCenterId` bigint NOT NULL AUTO_INCREMENT,
  `CostCenterName` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `UpdatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`CostCenterId`),
  KEY `fk_companyId_costcenter_idx` (`CompanyId`),
  CONSTRAINT `fk_companyId_costcenter` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_master`
--

DROP TABLE IF EXISTS `country_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_master` (
  `CountryId` bigint NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(45) DEFAULT NULL,
  `CountryCode` varchar(6) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`CountryId`),
  UNIQUE KEY `country_id_UNIQUE` (`CountryId`),
  KEY `fk_compid_countrymaster_idx` (`CompanyId`),
  CONSTRAINT `fk_compid_countrymaster` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `default_company_script`
--

DROP TABLE IF EXISTS `default_company_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_company_script` (
  `CompanyScriptId` int NOT NULL AUTO_INCREMENT,
  `Script` longtext,
  PRIMARY KEY (`CompanyScriptId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `default_master`
--

DROP TABLE IF EXISTS `default_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_master` (
  `DefaultMasterId` int NOT NULL,
  `DefaultMasterName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `DefaultMasterDisplayName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`DefaultMasterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `default_master_company_mapper`
--

DROP TABLE IF EXISTS `default_master_company_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_master_company_mapper` (
  `DefaultMasterCompanyMapperID` int NOT NULL AUTO_INCREMENT,
  `CompanyID` int DEFAULT NULL,
  `DefaultMasterID` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`DefaultMasterCompanyMapperID`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `default_master_screen_mapper`
--

DROP TABLE IF EXISTS `default_master_screen_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_master_screen_mapper` (
  `DefaultMasterScreenMapperId` int NOT NULL,
  `ScreenId` int DEFAULT NULL,
  `DefaultMasterId` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`DefaultMasterScreenMapperId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `department_master`
--

DROP TABLE IF EXISTS `department_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_master` (
  `DepartmentId` bigint NOT NULL AUTO_INCREMENT,
  `DeptsName` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `DeptShortName` varchar(45) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  PRIMARY KEY (`DepartmentId`),
  KEY `department_master_ibfk_1_idx` (`CompanyId`),
  CONSTRAINT `department_master_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DepartmentsId` bigint NOT NULL,
  `DeptsName` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  PRIMARY KEY (`DepartmentsId`),
  KEY `company_id` (`CompanyId`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `DesignationId` bigint NOT NULL,
  `DesignationName` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `EmployeeId` bigint DEFAULT NULL,
  PRIMARY KEY (`DesignationId`),
  KEY `employee_id` (`EmployeeId`),
  CONSTRAINT `designation_ibfk_1` FOREIGN KEY (`EmployeeId`) REFERENCES `employee_personal_details` (`EmployeePersonalDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `designation_master`
--

DROP TABLE IF EXISTS `designation_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation_master` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `DesignationName` varchar(100) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(60) DEFAULT NULL,
  `DeptShortName` varchar(50) DEFAULT NULL,
  `DesignationShortName` varchar(100) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `CreatedTime` datetime(6) DEFAULT NULL,
  `CreatedBY` varchar(50) DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  `RCSGradeId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_cmpid_desigms_idx` (`CompanyId`),
  KEY `fk_rcsid_desigms_idx` (`RCSGradeId`),
  CONSTRAINT `fk_cmpid_desigms` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `fk_rcsid_desigms` FOREIGN KEY (`RCSGradeId`) REFERENCES `grade_details` (`GradeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `division_master`
--

DROP TABLE IF EXISTS `division_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `division_master` (
  `DivisionId` bigint NOT NULL AUTO_INCREMENT,
  `DivisionName` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `UpdatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`DivisionId`),
  UNIQUE KEY `division_id_UNIQUE` (`DivisionId`),
  KEY `fk_compid_divisionMaster_idx` (`CompanyId`),
  CONSTRAINT `fk_compid_divisionMaster` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `DocId` bigint NOT NULL,
  `DocName` varchar(50) DEFAULT NULL,
  `DocDescription` varchar(50) DEFAULT NULL,
  `ActiveStatus` varchar(5) DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` bit(1) NOT NULL,
  PRIMARY KEY (`DocId`),
  KEY `company_id` (`CompanyId`),
  CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_configuration`
--

DROP TABLE IF EXISTS `email_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_configuration` (
  `EmailConfigId` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(500) DEFAULT NULL,
  `Host` varchar(45) DEFAULT NULL,
  `Port` varchar(45) DEFAULT NULL,
  `DisplayName` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `SenderMailID` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`EmailConfigId`),
  KEY `FK_EmailConfig_companyId_idx` (`CompanyId`),
  CONSTRAINT `FK_EmailConfig_companyId` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_content`
--

DROP TABLE IF EXISTS `email_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_content` (
  `EmailContentId` int NOT NULL AUTO_INCREMENT,
  `Subject` varchar(400) DEFAULT NULL,
  `EmailContent` varchar(500) DEFAULT NULL,
  `ContentId` int DEFAULT NULL,
  PRIMARY KEY (`EmailContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_address_details`
--

DROP TABLE IF EXISTS `employee_address_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_address_details` (
  `EmployeeAddressDetailId` bigint NOT NULL AUTO_INCREMENT,
  `Address1` varchar(50) DEFAULT NULL,
  `Address2` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Pincode` varchar(20) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `EmployeeId` bigint NOT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeAddressDetailId`),
  UNIQUE KEY `employee_id_UNIQUE` (`EmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_code_config`
--

DROP TABLE IF EXISTS `employee_code_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_code_config` (
  `EmployeeConfigId` bigint NOT NULL,
  `EmpCodeFormula` varchar(200) DEFAULT NULL,
  `EmpCodeAssigned` varchar(3) DEFAULT NULL,
  `IncrementBy` bigint DEFAULT NULL,
  `LastEmpNo` bigint DEFAULT NULL,
  `EmployeeAttribute` varchar(100) DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`EmployeeConfigId`),
  KEY `company_id` (`CompanyId`),
  CONSTRAINT `employee_code_config_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_nominee_details`
--

DROP TABLE IF EXISTS `employee_nominee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_nominee_details` (
  `EmployeeNomineeDetailsId` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Dob` datetime DEFAULT NULL,
  `Relation` varchar(20) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeNomineeDetailsId`),
  KEY `company_id` (`CompanyId`),
  CONSTRAINT `employee_nominee_details_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_personal_details`
--

DROP TABLE IF EXISTS `employee_personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_personal_details` (
  `EmployeePersonalDetailId` bigint NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `Dob` datetime DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `MaritalStatus` varchar(20) DEFAULT NULL,
  `Religion` varchar(20) DEFAULT NULL,
  `CountryCode` varchar(5) DEFAULT NULL,
  `MobileNo` varchar(20) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `GroupId` bigint DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Status` int NOT NULL,
  `EmployeeImageUrl` varchar(100) DEFAULT NULL,
  `RoleId` bigint DEFAULT NULL,
  `IsCompanyAdmin` tinyint DEFAULT '0',
  `IsClientAdmin` tinyint DEFAULT '0',
  `ClientId` bigint DEFAULT NULL,
  `RoleIds` json DEFAULT NULL,
  PRIMARY KEY (`EmployeePersonalDetailId`),
  UNIQUE KEY `email_UNIQUE` (`Email`),
  KEY `company_id` (`CompanyId`),
  KEY `group_id` (`GroupId`),
  KEY `fk_client_id_idx` (`ClientId`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_professional_details`
--

DROP TABLE IF EXISTS `employee_professional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_professional_details` (
  `EmployeeProfessionaldetailId` bigint NOT NULL,
  `JoinDate` datetime DEFAULT NULL,
  `ProbationDate` datetime DEFAULT NULL,
  `ConfirmationDate` datetime DEFAULT NULL,
  `ResignationDate` datetime DEFAULT NULL,
  `LeavingDate` datetime DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Ctc` double DEFAULT NULL,
  `TotalExperience` varchar(15) DEFAULT NULL,
  `HireType` varchar(20) DEFAULT NULL,
  `OncallAllowanceEligibility` varchar(20) DEFAULT NULL,
  `ShiftAllowanceEligibility` varchar(20) DEFAULT NULL,
  `AddressId` bigint DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeProfessionaldetailId`),
  KEY `address_id` (`AddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_status_master`
--

DROP TABLE IF EXISTS `employee_status_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_status_master` (
  `EmpId` bigint NOT NULL AUTO_INCREMENT,
  `EmpStatusId` int DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`EmpId`),
  KEY `fk_compid_empStatusMaster_fk` (`CompanyId`),
  CONSTRAINT `fk_compid_empStatusMaster_fk` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gender_master`
--

DROP TABLE IF EXISTS `gender_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender_master` (
  `GenderId` bigint NOT NULL AUTO_INCREMENT,
  `Gender` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `UpdatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`GenderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grade_details`
--

DROP TABLE IF EXISTS `grade_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade_details` (
  `GradeId` bigint NOT NULL AUTO_INCREMENT,
  `Grade` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `EmployeeId` bigint DEFAULT NULL,
  PRIMARY KEY (`GradeId`),
  UNIQUE KEY `grade_UNIQUE` (`Grade`),
  KEY `employee_id` (`EmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grade_master`
--

DROP TABLE IF EXISTS `grade_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade_master` (
  `GradeId` bigint NOT NULL AUTO_INCREMENT,
  `GradeName` varchar(45) DEFAULT NULL,
  `GradeShortName` varchar(45) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `LocationId` bigint DEFAULT NULL,
  `LocationName` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`GradeId`),
  UNIQUE KEY `grade_id_UNIQUE` (`GradeId`),
  KEY `fk_compid_gradeMaster_idx` (`CompanyId`),
  KEY `fk_locationId_gradeMaster_idx` (`LocationId`),
  CONSTRAINT `fk_compid_gradeMaster` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `fk_locationId_gradeMaster` FOREIGN KEY (`LocationId`) REFERENCES `location_master` (`LocationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_role_mapper`
--

DROP TABLE IF EXISTS `group_role_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_role_mapper` (
  `GroupRoleMapperId` bigint NOT NULL AUTO_INCREMENT,
  `GroupId` bigint DEFAULT NULL,
  `RoleId` bigint DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`GroupRoleMapperId`),
  UNIQUE KEY `group_role_index` (`GroupId`,`RoleId`),
  UNIQUE KEY `group_id_role_id_idx` (`GroupId`,`RoleId`),
  KEY `role_id` (`RoleId`),
  CONSTRAINT `group_role_mapper_ibfk_1` FOREIGN KEY (`GroupId`) REFERENCES `user_group` (`UserGroupId`),
  CONSTRAINT `group_role_mapper_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `user_role` (`UserRoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leave_type`
--

DROP TABLE IF EXISTS `leave_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_type` (
  `LeaveTypeId` bigint NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(50) DEFAULT NULL,
  `CompanyId` bigint NOT NULL,
  `NoOfDays` int DEFAULT NULL,
  `LeaveDescription` varchar(50) DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`LeaveTypeId`),
  KEY `leave_type_ibfk_1` (`CompanyId`),
  CONSTRAINT `leave_type_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationId` bigint NOT NULL,
  `LocationName` varchar(100) DEFAULT NULL,
  `CountryId` bigint DEFAULT NULL,
  `StateId` bigint DEFAULT NULL,
  `CityId` bigint DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`LocationId`),
  KEY `company_id` (`CompanyId`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location_master`
--

DROP TABLE IF EXISTS `location_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_master` (
  `LocationId` bigint NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(45) DEFAULT NULL,
  `CountryId` bigint DEFAULT NULL,
  `StateId` bigint DEFAULT NULL,
  `CityId` bigint DEFAULT NULL,
  `PanNumber` varchar(45) DEFAULT NULL,
  `TanNumber` varchar(45) DEFAULT NULL,
  `FactoryRegistrationNo` varchar(45) DEFAULT NULL,
  `ShopEstablishmentRegNo` varchar(45) DEFAULT NULL,
  `PfSubCode` varchar(45) DEFAULT NULL,
  `EsiCode` varchar(45) DEFAULT NULL,
  `ProfTaxRegistrationCode` varchar(45) DEFAULT NULL,
  `LwfRegistrationCode` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `LocationShortName` varchar(45) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `CreatedTime` datetime(6) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  PRIMARY KEY (`LocationId`),
  KEY `fk_cityid_location_idx` (`CityId`),
  KEY `fk_companyid_location_idx` (`CompanyId`),
  KEY `fk_countryid_location_idx` (`CountryId`),
  KEY `fk_stateid_location_idx` (`StateId`),
  CONSTRAINT `fk_cityid_location` FOREIGN KEY (`CityId`) REFERENCES `city_master` (`CityId`),
  CONSTRAINT `fk_companyid_location` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `fk_countryid_location` FOREIGN KEY (`CountryId`) REFERENCES `country_master` (`CountryId`),
  CONSTRAINT `fk_stateid_location` FOREIGN KEY (`StateId`) REFERENCES `state_master` (`StateId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marital_status_master`
--

DROP TABLE IF EXISTS `marital_status_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marital_status_master` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `CreatedTime` datetime(6) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master` (
  `MasterId` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `DisplayName` varchar(45) DEFAULT NULL,
  `DefaultOrder` int DEFAULT '0',
  `Status` int DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MasterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `master_changes_tracker`
--

DROP TABLE IF EXISTS `master_changes_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_changes_tracker` (
  `MasterChangesTrackerId` int NOT NULL AUTO_INCREMENT,
  `CompanyId` bigint DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `MasterName` varchar(45) DEFAULT '',
  `IsOrderChange` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MasterChangesTrackerId`),
  KEY `fk_master_change_tracker_idx` (`CompanyId`),
  KEY `fk_master_change_user_id_idx` (`UserId`),
  CONSTRAINT `fk_master_change_company_id` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `fk_master_change_user_id` FOREIGN KEY (`UserId`) REFERENCES `employee_personal_details` (`EmployeePersonalDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masters_hierarchy`
--

DROP TABLE IF EXISTS `masters_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters_hierarchy` (
  `HierarchyID` int NOT NULL AUTO_INCREMENT,
  `ParentType` varchar(50) DEFAULT NULL,
  `ChildType` varchar(50) DEFAULT NULL,
  `ParentID` bigint DEFAULT NULL,
  `ChildID` bigint DEFAULT NULL,
  `Status` bigint DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `CompanyID` bigint DEFAULT NULL,
  PRIMARY KEY (`HierarchyID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_master`
--

DROP TABLE IF EXISTS `module_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_master` (
  `ModuleId` bigint NOT NULL,
  `ModuleName` varchar(50) NOT NULL,
  `Status` int DEFAULT '1',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `ModuleDescription` varchar(200) DEFAULT NULL,
  `ModuleScript` text,
  `IsDropdown` bit(1) DEFAULT NULL,
  `IsEnabled` bit(1) DEFAULT NULL,
  `VersionNo` varchar(100) DEFAULT NULL,
  `ModuleUrl` varchar(200) DEFAULT NULL,
  `ModuleIcon` varchar(45) DEFAULT NULL,
  `ParentId` bigint DEFAULT NULL,
  `IsCompulsory` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ModuleId`),
  UNIQUE KEY `module_name_UNIQUE` (`ModuleName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_organisation_mapper`
--

DROP TABLE IF EXISTS `module_organisation_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_organisation_mapper` (
  `ModuleOrgMapperId` int NOT NULL AUTO_INCREMENT,
  `ModuleId` bigint DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`ModuleOrgMapperId`),
  UNIQUE KEY `module_oganisation_unique_column_index` (`ModuleId`,`CompanyId`),
  KEY `module_organisation_mapper_module_id_fk_idx` (`ModuleId`),
  KEY `module_organisation_mapper_company_id_fk_idx` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=769 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organisation` (
  `CompanyId` bigint NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(50) NOT NULL,
  `Organization` varchar(45) DEFAULT NULL,
  `PanNo` varchar(20) DEFAULT NULL,
  `TanNo` varchar(20) DEFAULT NULL,
  `PfReg` varchar(50) DEFAULT NULL,
  `EsiReg` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `Created` tinyint DEFAULT NULL,
  `Approved` tinyint DEFAULT NULL,
  `CompanyLogo` varchar(100) DEFAULT NULL,
  `ClientId` bigint DEFAULT '1',
  `SchemaName` varchar(45) DEFAULT NULL,
  `MakerId` int DEFAULT NULL,
  `CheckerId` int DEFAULT NULL,
  `PasswordExpiry` int DEFAULT '0',
  `Address1` varchar(100) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `Address3` varchar(100) DEFAULT NULL,
  `RejectionReason` varchar(200) DEFAULT NULL,
  `Pincode` varchar(45) DEFAULT NULL,
  `TwoWayAuthentication` bit(1) DEFAULT NULL,
  `IsOwnerCompany` tinyint DEFAULT '0',
  `IsCompanyLogo` bit(1) DEFAULT NULL,
  `IsSMS` tinyint(1) DEFAULT '0',
  `IsEmail` tinyint(1) DEFAULT '0',
  `StateId` bigint DEFAULT NULL,
  `CountryId` bigint DEFAULT NULL,
  PRIMARY KEY (`CompanyId`),
  UNIQUE KEY `company_name_UNIQUE` (`CompanyName`),
  KEY `org_client_id_fk_idx` (`ClientId`),
  KEY `org_country_id_fk_idx` (`CountryId`),
  KEY `org_state_id_fk_idx` (`StateId`),
  CONSTRAINT `org_client_id_fk` FOREIGN KEY (`ClientId`) REFERENCES `client_master` (`ClientId`),
  CONSTRAINT `org_country_id_fk` FOREIGN KEY (`CountryId`) REFERENCES `country_master` (`CountryId`),
  CONSTRAINT `org_state_id_fk` FOREIGN KEY (`StateId`) REFERENCES `state_master` (`StateId`)
) ENGINE=InnoDB AUTO_INCREMENT=619 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organisation_domain_mapper`
--

DROP TABLE IF EXISTS `organisation_domain_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organisation_domain_mapper` (
  `OrganisationDomainMapperId` int NOT NULL,
  `OrganisationId` int DEFAULT NULL,
  `DomainName` varchar(200) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`OrganisationDomainMapperId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organisation_group_mapper`
--

DROP TABLE IF EXISTS `organisation_group_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organisation_group_mapper` (
  `OrgGrpMapperId` int NOT NULL,
  `GroupId` bigint DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  PRIMARY KEY (`OrgGrpMapperId`),
  KEY `org_group_company_id_fk_idx` (`CompanyId`),
  KEY `org_group_group_id_fk_idx` (`GroupId`),
  CONSTRAINT `org_group_company_id_fk` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `org_group_group_id_fk` FOREIGN KEY (`GroupId`) REFERENCES `user_group` (`UserGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `other_fields`
--

DROP TABLE IF EXISTS `other_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_fields` (
  `FieldId` int NOT NULL AUTO_INCREMENT,
  `FieldName` varchar(45) DEFAULT NULL,
  `ModuleId` bigint NOT NULL,
  `ClientId` bigint NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Updated_by` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`FieldId`),
  UNIQUE KEY `field_name_UNIQUE` (`FieldName`),
  KEY `other_module_id_fk_idx` (`ModuleId`),
  KEY `other_client_id_fk_idx` (`ClientId`),
  CONSTRAINT `other_client_id_fk` FOREIGN KEY (`ClientId`) REFERENCES `client_master` (`ClientId`),
  CONSTRAINT `other_module_id_fk` FOREIGN KEY (`ModuleId`) REFERENCES `module_master` (`ModuleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_configuration`
--

DROP TABLE IF EXISTS `password_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_configuration` (
  `PassConfigId` int NOT NULL AUTO_INCREMENT,
  `MinimumLength` int DEFAULT NULL,
  `ClientId` bigint DEFAULT NULL,
  `UpperCase` int DEFAULT NULL,
  `LowerCase` int DEFAULT NULL,
  `SpecialCharacters` int DEFAULT NULL,
  `SpecialCharactersAllowed` varchar(45) DEFAULT NULL,
  `MaximumLength` int DEFAULT NULL,
  `PasswordExpiryDays` int DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `NoOfHistory` int DEFAULT '0',
  PRIMARY KEY (`PassConfigId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_organisation_mapper`
--

DROP TABLE IF EXISTS `role_organisation_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_organisation_mapper` (
  `RoleOrgMapperId` int NOT NULL AUTO_INCREMENT,
  `RoleId` bigint DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`RoleOrgMapperId`),
  UNIQUE KEY `role_organisation_index` (`RoleId`,`CompanyId`),
  KEY `role_organisation_role_id_fk_idx` (`RoleId`),
  KEY `role_organisation_company_id_fk_idx` (`CompanyId`),
  CONSTRAINT `role_organisation_company_id_fk` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `role_organisation_role_id_fk` FOREIGN KEY (`RoleId`) REFERENCES `user_role` (`UserRoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `screen`
--

DROP TABLE IF EXISTS `screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen` (
  `ScreenId` bigint NOT NULL,
  `ScreenName` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `ModuleId` bigint DEFAULT NULL,
  `ScreenUrl` varchar(200) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `IsApproveAllowed` tinyint DEFAULT '0',
  `ParentId` int DEFAULT '0',
  `IsAllowedToOwner` tinyint DEFAULT '1',
  `IsAllowedToClient` tinyint DEFAULT '0',
  `IsDefaultCreate` tinyint DEFAULT '0',
  `IsDefaultRead` tinyint DEFAULT '0',
  `IsDefaultUpdate` tinyint DEFAULT '0',
  `IsDefaultDelete` tinyint DEFAULT '0',
  PRIMARY KEY (`ScreenId`),
  UNIQUE KEY `index4` (`ScreenName`,`ModuleId`),
  KEY `module_id` (`ModuleId`),
  KEY `status_ibfk_1_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `screen_permission`
--

DROP TABLE IF EXISTS `screen_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_permission` (
  `ScreenPermissionId` bigint NOT NULL AUTO_INCREMENT,
  `RoleId` bigint DEFAULT NULL,
  `ScreenId` bigint DEFAULT NULL,
  `Create` tinyint DEFAULT NULL,
  `Read` tinyint DEFAULT NULL,
  `Update` tinyint DEFAULT NULL,
  `Delete` tinyint DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `Approve` tinyint DEFAULT NULL,
  PRIMARY KEY (`ScreenPermissionId`),
  UNIQUE KEY `unique_roleid_screenid` (`ScreenId`,`RoleId`),
  KEY `role_id` (`RoleId`),
  KEY `screen_permission_status_fk_idx` (`Status`)
) ENGINE=InnoDB AUTO_INCREMENT=3382 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_configuration`
--

DROP TABLE IF EXISTS `sms_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_configuration` (
  `SmsConfigId` int NOT NULL AUTO_INCREMENT,
  `ApiKey` varchar(200) DEFAULT NULL,
  `ApiSecretKey` varchar(200) DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  PRIMARY KEY (`SmsConfigId`),
  KEY `FK_EmailConfig_companyId_idx` (`CompanyId`),
  CONSTRAINT `FK_SMSConfig_companyId` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `state_master`
--

DROP TABLE IF EXISTS `state_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_master` (
  `StateId` bigint NOT NULL AUTO_INCREMENT,
  `StateName` varchar(100) DEFAULT NULL,
  `UpdatedBy` varchar(60) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `CreatedTime` datetime(6) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CountryId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`StateId`),
  KEY `fk_stms_cmpid_idx` (`CompanyId`),
  KEY `fk_countid_statems_idx` (`CountryId`),
  CONSTRAINT `fk_cmpid_statems` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`),
  CONSTRAINT `fk_countid_statems` FOREIGN KEY (`CountryId`) REFERENCES `country_master` (`CountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `StateId` int NOT NULL AUTO_INCREMENT,
  `StateName` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`StateId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `StatusId` int NOT NULL,
  `StatusName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StatusId`),
  UNIQUE KEY `status_name_UNIQUE` (`StatusName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `storage_allocation`
--

DROP TABLE IF EXISTS `storage_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage_allocation` (
  `StorageAllocationId` int NOT NULL AUTO_INCREMENT,
  `StorageAllocation` varchar(100) DEFAULT NULL,
  `PerUserStorage` varchar(100) DEFAULT NULL,
  `UserGroupCount` bigint DEFAULT NULL,
  `UserCount` bigint DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  PRIMARY KEY (`StorageAllocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subdepartment_master`
--

DROP TABLE IF EXISTS `subdepartment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subdepartment_master` (
  `SubDepartmentId` bigint NOT NULL AUTO_INCREMENT,
  `SubDepartmentName` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `UpdatedBy` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `DepartmentId` bigint DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`SubDepartmentId`),
  KEY `fk_company_id_subdept_idx` (`CompanyId`),
  CONSTRAINT `fk_company_id_subdept` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `track_password`
--

DROP TABLE IF EXISTS `track_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track_password` (
  `TrackPassId` int NOT NULL AUTO_INCREMENT,
  `EmployeeId` bigint DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `LastChanged` datetime DEFAULT NULL,
  PRIMARY KEY (`TrackPassId`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_group` (
  `UserGroupId` bigint NOT NULL,
  `GroupName` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `IsMultiCompany` bit(1) DEFAULT NULL,
  PRIMARY KEY (`UserGroupId`),
  UNIQUE KEY `group_name_UNIQUE` (`GroupName`),
  KEY `company_id` (`CompanyId`),
  CONSTRAINT `user_group_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `UserRoleId` bigint NOT NULL,
  `RoleName` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedBy` varchar(50) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `IsMultiCompany` bit(1) DEFAULT b'0',
  `Status` int DEFAULT '1',
  `ActualStatus` varchar(10) DEFAULT 'active',
  PRIMARY KEY (`UserRoleId`),
  UNIQUE KEY `index4` (`RoleName`,`CompanyId`),
  KEY `company_id` (`CompanyId`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `organisation` (`CompanyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-04 12:41:31
