DROP DATABASE logisticsystem;
CREATE DATABASE logisticsystem;
-- ON DELETE CASCADE ON UPDATE RESTRICT
USE logisticsystem;

CREATE TABLE logisticsystem.tbl_companyinfo (
  idx bigint auto_increment primary key,
  companyCode varchar(10) NOT NULL,
  companyName nvarchar(100) NOT NULL,
  companyAddress nvarchar(255) DEFAULT NULL,
  companyPostNumber varchar(10) DEFAULT NULL,
  companySecurityNumber varchar(100) DEFAULT NULL,
  representative nvarchar(100) DEFAULT NULL,
  representativeNumber varchar(100) DEFAULT NULL,
  companyNumber varchar(30) DEFAULT NULL,
  companyFax varchar(30) DEFAULT NULL,
  companyEmail varchar(100) DEFAULT NULL,
  representativeEmail varchar(100) DEFAULT NULL,
  companyAccountNumber varchar(100) DEFAULT NULL,
  companyAccountBank nvarchar(255) DEFAULT NULL,
  companyAccountBankCode varchar(10) DEFAULT NULL,
  companyAccountBankCodeName nvarchar(255) DEFAULT NULL,
  companyAccountOwnerName nvarchar(255) DEFAULT NULL,
  companyEstablishmentDate datetime DEFAULT NULL,
  createDate datetime DEFAULT NULL,
  creator nvarchar(255) DEFAULT NULL,
  state char(1) NOT NULL,
  orderAddress nvarchar(255) DEFAULT NULL,
  companyName_en varchar(255) DEFAULT NULL,
  companyAddress_en varchar(255) DEFAULT NULL,
  representative_en varchar(100) DEFAULT NULL,
  orderAddress_en varchar(255) DEFAULT NULL,
  companyNumberType varchar(30) DEFAULT NULL,
  companyFaxType varchar(30) DEFAULT NULL,
  companyRepresentativeNumber varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE logisticsystem.tbl_userinfo (
  idx bigint auto_increment primary key,
  userId varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  userName nvarchar(255) NOT NULL,
  state char(1) NOT NULL,
  permission char(1) NOT NULL,
  userNumber varchar(30) DEFAULT NULL,
  userEmail varchar(100) DEFAULT NULL,
  userIncidentDay datetime DEFAULT NULL,
  createdate datetime DEFAULT NULL,
  creator nvarchar(255) DEFAULT NULL,
  companyCode varchar(10) DEFAULT NULL,
  userName_en varchar(255) DEFAULT NULL,
  userNumberType varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE logisticsystem.tbl_connect (
  userId varchar(255) DEFAULT NULL,
  connectDate datetime DEFAULT NULL,
  state char(1) DEFAULT NULL,
  language char(1) DEFAULT NULL,
  ipAddress varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE logisticsystem.tbl_productinfo (
  idx bigint auto_increment primary key,
  productCode varchar(100) NOT NULL,
  productName nvarchar(100) NOT NULL,
  productType int DEFAULT 0,
  productSpec int DEFAULT 0,
  productTax int DEFAULT 0,
  productAcquirer nvarchar(100) DEFAULT NULL,
  productManufacturer nvarchar(100) DEFAULT NULL,
  productCost decimal(15,0) DEFAULT NULL,
  productCostNotTax decimal(15,0) DEFAULT NULL,
  productCostTax decimal(15,0) DEFAULT NULL,
  productFactoryPrice decimal(15,0) DEFAULT NULL,
  productFactoryPriceNotTax decimal(15,0) DEFAULT NULL,
  productFactoryPriceTax decimal(15,0) DEFAULT NULL,
  productRetailPrice decimal(15,0) DEFAULT NULL,
  productRetailPriceNotTax decimal(15,0) DEFAULT NULL,
  productRetailPriceTax decimal(15,0) DEFAULT NULL,
  productPrice decimal(15,0) DEFAULT NULL,
  productPriceNotTax decimal(15,0) DEFAULT NULL,
  productPriceTax decimal(15,0) DEFAULT NULL,
  barcode varchar(255) DEFAULT NULL,
  QRcode varchar(255) DEFAULT NULL,
  other text DEFAULT NULL,
  createdate datetime DEFAULT NULL,
  creator nvarchar(255) DEFAULT NULL,
  state char(1) DEFAULT NULL,
  companyCode varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE logisticsystem.tbl_codemaster (
  tblName varchar(255) DEFAULT NULL,
  codeKey char(1) DEFAULT NULL,
  codeName_k varchar(255) DEFAULT NULL,
  codeName_j varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE logisticsystem.tbl_codemaster (
  code decimal(5,0) DEFAULT 0,
  codeBuffer decimal(5,0) DEFAULT 0,
  type char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE logisticsystem.tbl_Customer (
  idx bigint auto_increment primary key,
  customercode varchar(100),
  customerType char(1),
  customerName nvarchar(100),
  customerRepresetitive nvarchar(100),
  customerSecurityNumber varchar(100),
  customerNumber varchar(30),
  customerFax varchar(30),
  customerPostNumber varchar(10),
  customerAddress nvarchar(255),
  customerEmail varchar(100),
  customerTaxViewRepresentative nvarchar(100),
  customerTaxViewerAddress nvarchar(255),
  customerTaxViewerPostNumber varchar(10),
  customerPaymentMethod char(1),
  customerAccountbank nvarchar(255),
  customerAccountbankcode varchar(100),
  customerAccountbankcodename nvarchar(255),
  customerAccountOwnerName nvarchar(255),
  customerAccountNumber varchar(255),
  customerTaxType char(1),
  customerTax int,
  customerGrade int,
  customerRepressent nvarchar(255),
  customerRepressentNumber varchar(30),
  other text,
  createdate datetime,
  creater nvarchar(30),
  state char(1),
  companycode varchar(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

