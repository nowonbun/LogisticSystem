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