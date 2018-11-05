DROP DATABASE logic;
CREATE DATABASE logic;
use logic;

CREATE TABLE Bill(
	idx INT NOT NULL AUTO_INCREMENT,
	inordercompany NVARCHAR(255),
	inorderrepresentative NVARCHAR(255),
	inorderpost NVARCHAR(255),
	inorderaddress NVARCHAR(255),
	ordercompany NVARCHAR(255),
	orderpost NVARCHAR(255),
	orderaddress NVARCHAR(255),
	billdate DATETIME,
	billmoney DECIMAL,
	billtax DECIMAL,
	billtotal DECIMAL,
	creater VARCHAR(255),
	createdate DATETIME,
	state VARCHAR(255),
	companycode VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE Board(
	idx INT NOT NULL AUTO_INCREMENT,
	num INT,
	type VARCHAR(255),
	title NVARCHAR(255),
	context NVARCHAR(255),
	creater VARCHAR(255),
	createdate DATETIME,
	state VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE Cargo(
	idx INT NOT NULL AUTO_INCREMENT,
	productindex INT,
	productinput DECIMAL,
	productoutput DECIMAL,
	productmoney DECIMAL,
	creater VARCHAR(255),
	createdate DATETIME,
	state VARCHAR(255),
	companycode VARCHAR(255),
	
	PRIMARY KEY(idx)
)

-- What is CodeCreator??

--Which is the key??
CREATE TABLE CodeMaster(
	tblname VARCHAR(255),
	codekey VARCHAR(255),
	codename_k VARCHAR(255),
	codename_j VARCHAR(255)
)

CREATE TABLE Comment(
	idx INT NOT NULL AUTO_INCREMENT,
	boardidx INT,
	context VARCHAR(255),
	creater VARCHAR(255),
	createdate VARCHAR(255),
	state VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE CompanyInfo(
	idx INT NOT NULL AUTO_INCREMENT,
	companycode VARCHAR(255),
	companyname VARCHAR(255),
    companyaddress VARCHAR(255),
    companypostnumber VARCHAR(255),
    companysecuritynumber VARCHAR(255),
    representative VARCHAR(255),
    representativenumber VARCHAR(255),
    companynumber VARCHAR(255),
    companyfax VARCHAR(255),
    companyemail VARCHAR(255),
    representativeemail VARCHAR(255),
    companyaccountnumber VARCHAR(255),
    companyaccountbank VARCHAR(255),
    companyaccountbankcode VARCHAR(255),
    companyaccountbankcodename VARCHAR(255),
    companyaccountownername VARCHAR(255),
	companyestablishmentdate DATETIME,
	createdate DATETIME,
	creator VARCHAR(255),
	state VARCHAR(255),
	orderaddress VARCHAR(255),
	companyname_en VARCHAR(255),
	companyaddress_en VARCHAR(255),
	representative_en VARCHAR(255),
	orderaddress_en VARCHAR(255),
	companynumbertype VARCHAR(255),
	companyfaxtype VARCHAR(255),
	companyrepresentativenumber VARCHAR(255),
	
	PRIMARY KEY(idx)
)

--Which is the key??
CREATE TABLE Connect(
	userid VARCHAR(255),
	connectdate DATETIME,
	state VARCHAR(255),
	language VARCHAR(255),
    ipaddress VARCHAR(255)
)


CREATE TABLE CustomerInfo(
	idx INT NOT NULL AUTO_INCREMENT,
	customercode VARCHAR(255),
    customertype VARCHAR(255),
	customername VARCHAR(255),
	customerrepresetitive VARCHAR(255),
    customersecuritynumber VARCHAR(255),
    customernumber VARCHAR(255),
    customerfax VARCHAR(255),
    customerpostnumber VARCHAR(255),
    customeraddress VARCHAR(255),
    customeremail VARCHAR(255),
    customertaxviewrepresentative VARCHAR(255),
    customertaxvieweraddress VARCHAR(255),
    customertaxviewerpostnumber VARCHAR(255),
    customerpaymentmethod VARCHAR(255),
    customeraccountbank VARCHAR(255),
    customeraccountbankcode VARCHAR(255),
    customeraccountbankcodename VARCHAR(255),
    customeraccountownername VARCHAR(255),
    customeraccountnumber VARCHAR(255),
    customertaxtype VARCHAR(255),
	customertax INT,
	customergrade INT,
	customerrepressent VARCHAR(255),
	customerrepressentnumber VARCHAR(255),
	other VARCHAR(255),
	createdate DATETIME,
	creater VARCHAR(255),
	state VARCHAR(255),
	companycode VARCHAR(255),
	PRIMARY KEY(idx)
)


CREATE TABLE DeliveryTable(
	idx INT NOT NULL AUTO_INCREMENT,
	ordercompany VARCHAR(255),
	orderaddress VARCHAR(255),
	ordersavedate DateTime,
	inordercompany VARCHAR(255),
	inorderrepresentative VARCHAR(255),
	createdate DateTime,
	creater VARCHAR(255),
	state VARCHAR(255),
	companycode VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE DeliveryTableSub(
	idx INT NOT NULL AUTO_INCREMENT,
    deliverykey INT,
    number INT,
    productindex INT,
    productspec NVARCHAR(255),
    producttype NVARCHAR(255),
    productamount DECIMAL,
    productprice DECIMAL,
    productvat DECIMAL,
    productother NVARCHAR(255),
    createdate DECIMAL,
    creater VARCHAR(255),
    state VARCHAR(255),
    companycode VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE Document(
	idx INT NOT NULL AUTO_INCREMENT,
	documentcode NVARCHAR(255),
	documenttype NVARCHAR(255),
	documentindex INT,
	createdate DATETIME,
	creater VARCHAR(255),
	state VARCHAR(255),
	companycode VARCHAR(255),
	creater_en VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE OrderTable(
	idx INT NOT NULL AUTO_INCREMENT,
	ordernumber VARCHAR(255),
	ordername VARCHAR(255),
	ordersecuritynumber VARCHAR(255),
	orderpostnumber VARCHAR(255),
	orderaddress VARCHAR(255),
    orderphonenumber VARCHAR(255),
    orderfax VARCHAR(255),
    inordername VARCHAR(255),
	ordermoney DECIMAL,
	ordersavedate DateTime,
	ordersaveplace VARCHAR(255),
	orderdate DateTime,
	paydate DateTime,
	paymoney DECIMAL,
	paycondition VARCHAR(255),
    payother VARCHAR(255),
	createdate DateTime,
	creater VARCHAR(255),
    ordertype VARCHAR(255),
    state VARCHAR(255),
    companycode VARCHAR(255),
    ordersaveplace_en VARCHAR(255),
    orderaddress_en VARCHAR(255),
    orderphonenumbertype VARCHAR(255),
    orderfaxtype VARCHAR(255),
	ordername_en VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE OrderTableSub(
	IDX INT NOT NULL AUTO_INCREMENT,
	orderkey INT,
	number INT,
    productindex VARCHAR(255),
    productspec VARCHAR(255),
    producttype VARCHAR(255),
    productamount DECIMAL,
    productprice DECIMAL,
    productmoney DECIMAL,
    createdate DATETIME,
    creater VARCHAR(255),
    state VARCHAR(255),
    companycode VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE ProductFlow(
	idx INT NOT NULL AUTO_INCREMENT,
    productindex INT,
    productamount DECIMAL,
    productbuyprice DECIMAL,
	productsellprice DECIMAL,
	cretedate DATETIME,
    creater VARCHAR(255),
    applytype INT,
    state VARCHAR(255),
    companycode VARCHAR(255),
    etc VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE ProductInfo(
	idx INT NOT NULL AUTO_INCREMENT,
	productcode VARCHAR(255),
	productname VARCHAR(255),
	producttype VARCHAR(255),
    productspec VARCHAR(255),
    producttax INT,
    productacquirer VARCHAR(255),
    productmanufacturer VARCHAR(255),
    productcost DECIMAL,
    productcostnottax DECIMAL,
    productcosttax DECIMAL,
    productfactoryprice DECIMAL,
    productfactorypricenottax DECIMAL,
    productfactorypricetax DECIMAL,
    productretailprice DECIMAL,
    productretailpricenottax DECIMAL,
    productretailpricetax DECIMAL,
    productprice DECIMAL,
    productpricenottax DECIMAL,
    productpricetax DECIMAL,
    barcode VARCHAR(255),
    qrcode VARCHAR(255),
    other VARCHAR(255),
    createdate DATETIME,
    creator VARCHAR(255),
	state VARCHAR(255),
    companycode VARCHAR(255),
	
	PRIMARY KEY(idx)
)

CREATE TABLE UserInfo(
	idx INT NOT NULL AUTO_INCREMENT,
    userid VARCHAR(255),
    password VARCHAR(255),
    username VARCHAR(255),
    state VARCHAR(255),
    permission VARCHAR(255),
    usernumber VARCHAR(255),
    useremail VARCHAR(255),
    userincidentday DATETIME,
    createdate DATETIME,
    creator VARCHAR(255),
    companycode VARCHAR(255),
    username_en VARCHAR(255),
    usernumbertype VARCHAR(255),
	
	PRIMARY KEY(idx)
)