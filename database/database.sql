DROP DATABASE logisticsystem;
CREATE DATABASE logisticsystem;
-- ON DELETE CASCADE ON UPDATE RESTRICT
USE logisticsystem;

CREATE TABLE logisticsystem.tbl_CompanyInfo (
  idx bigint NOT NULL,
  companyCode varchar(10) unique NOT NULL,
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
  companyRepresentativeNumber varchar(100) DEFAULT NULL,
  primary key(idx, companyCode, companyName)
);

CREATE TABLE logisticsystem.tbl_UserInfo (
  idx bigint NOT NULL,
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
  companyCode varchar(10) NOT NULL,
  userName_en varchar(255) DEFAULT NULL,
  userNumberType varchar(30) DEFAULT NULL,
  primary key(idx, userId, password, userName),
  foreign key(companyCode) REFERENCES logisticsystem.tbl_companyinfo(companyCode) ON DELETE CASCADE
);

CREATE TABLE logisticsystem.tbl_CodeCreator (
	code decimal(5,0),
	codeBuffer decimal(5,0),
	type char(1) DEFAULT NULL
);

CREATE TABLE logisticsystem.tbl_Connect (
  userId varchar(255) DEFAULT NULL,
  connectDate datetime DEFAULT NULL,
  state char(1) DEFAULT NULL,
  language char(1) DEFAULT NULL,
  ipAddress varchar(50) DEFAULT NULL
);


CREATE TABLE logisticsystem.tbl_ProductInfo (
  idx bigint auto_increment,
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
  companyCode varchar(10) DEFAULT NULL,
  primary key(idx, productCode, productName),
  foreign key(companyCode) REFERENCES logisticsystem.tbl_companyinfo(companyCode) ON DELETE CASCADE
);


CREATE TABLE logisticsystem.tbl_CodeMaster (
  tblName varchar(255) DEFAULT NULL,
  codeKey char(1) DEFAULT NULL,
  codeName_k varchar(255) DEFAULT NULL,
  codeName_j varchar(255) DEFAULT NULL
);

CREATE TABLE logisticsystem.tbl_Customer (
  idx bigint auto_increment,
  customerCode varchar(100) NOT NULL,
  customerType char(1) NOT NULL,
  customerName nvarchar(100) NOT NULL,
  customerRepresetitive nvarchar(100) DEFAULT NULL,
  customerSecurityNumber varchar(100) DEFAULT NULL,
  customerNumber varchar(30) DEFAULT NULL,
  customerFax varchar(30) DEFAULT NULL,
  customerPostNumber varchar(10) DEFAULT NULL,
  customerAddress nvarchar(255) DEFAULT NULL,
  customerEmail varchar(100) DEFAULT NULL,
  customerTaxViewRepresentative nvarchar(100) DEFAULT NULL,
  customerTaxViewerAddress nvarchar(255) DEFAULT NULL,
  customerTaxViewerPostNumber varchar(10) DEFAULT NULL,
  customerPaymentMethod char(1) DEFAULT NULL,
  customerAccountbank nvarchar(255) DEFAULT NULL,
  customerAccountbankcode varchar(100) DEFAULT NULL,
  customerAccountbankcodename nvarchar(255) DEFAULT NULL,
  customerAccountOwnerName nvarchar(255) DEFAULT NULL,
  customerAccountNumber varchar(255) DEFAULT NULL,
  customerTaxType char(1) DEFAULT NULL,
  customerTax int DEFAULT 0,
  customerGrade int DEFAULT 0,
  customerRepressent nvarchar(255) DEFAULT NULL,
  customerRepressentNumber varchar(30) DEFAULT NULL,
  other text DEFAULT NULL,
  createdate datetime DEFAULT NULL,
  creater nvarchar(30) DEFAULT NULL,
  state char(1) NOT NULL,
  companycode varchar(10) NOT NULL,
  primary key(idx, customerCode, customerType, customerName),
  foreign key(companyCode) REFERENCES logisticsystem.tbl_companyinfo(companyCode) ON DELETE CASCADE
);

