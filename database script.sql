drop table logisticsystem.tbl_userinfo;

create table logisticsystem.tbl_userinfo(
	idx int,
    userid varchar(50),
    password varchar(50),
    username varchar(50),
    state varchar(50),
    permission varchar(50),
    usernumber varchar(50),
    useremail varchar(50),
    userincidentday datetime,
    createdate datetime,
    creator varchar(50),
    companycode varchar(50),
    username_en varchar(50),
    usernumbertype varchar(50));
    
alter table logisticsystem.tbl_userinfo add constraint idx primary key (idx);
alter table logisticsystem.tbl_userinfo add constraint userid primary key (userid);
alter table logisticsystem.tbl_userinfo add constraint password primary key (password);

insert into logisticsystem.tbl_userinfo 
values (
	1,
    'MyStone',
    'mystone',
    'Daniel Seog',
    '0001',
    '0001',
    '0001',
    'daniel_s@gmail.com',
    '20180101',
    '20180101',
    'Nowonbun',
    '00001',
    'Daniel Seog',
    '0'
);

select * from logisticsystem.tbl_userinfo;

update logisticsystem.tbl_userinfo 
set state = '0'
where idx = 1;


create table logisticsystem.codeCreator(
	code decimal(5),
    codeBuffer decimal(5),
    type int(3)
);

insert into logisticsystem.codeCreator values(1000,1000,1);
select * from logisticsystem.codeCreator;
drop table logisticsystem.codeCreator;

select Cast(isnull(Max(codebuffer)+1,1) as Decimal) as code,1 from logisticsystem.codeCreator where type=1;
select 1 from logisticsystem.codeCreator where type=1;
select * from logisticsystem.codeCreator;

insert into logisticsystem.codeCreator select Cast(ifnull(Max(codebuffer)+1,1) as Decimal) as code, codebuffer,1 from logisticsystem.codeCreator where type=1;
select * from logisticsystem.codeCreator;
select Cast(Max(codebuffer)as Decimal) as code from logisticsystem.codeCreator where type=1;
select * from logisticsystem.tbl_productinfo;



select * from logisticsystem.tbl_userinfo;

insert into logisticsystem.tbl_companyinfo values(
	1,
	'0001',
	'NB Logistics',
	'Nerima-Ku, Tokyo, Japan',
	'011-0011',
	'240918',
	'Mr.Hwang',
	'0002',
	'00001',
	'0101-1111',
	'NB_Logis@NBLS.com',
	'nwb@NLBS.com',
	'0001000100010001',
	'NLB Banks',
	'0001',
	'HawkEye',
	'NLB corp',
	'19000101',
	'19000101',
	'Ancestor',
	'0',
	'Wakou-si, Saitama-ken, Japan',
	'NB Logistics',
	'Nerima-Ku, Tokyo, Japan',
	'Mr.Hwang',
	'Wakou-si, Saitama-ken, Japan',
	'1',
	'1',
	'08010101001'
	);

select * from logisticsystem.tbl_companyinfo;
select * from logisticsystem.tbl_userinfo;

update logisticsystem.tbl_companyinfo
set companycode = '00001'
where idx = 1



drop table logisticsystem.companyinfo;
create table logisticsystem.tbl_companyinfo(
idx int,
companycode varchar(200),
companyname varchar(200),
companyaddress varchar(200),
companypostnumber varchar(200),
companysecuritynumber varchar(200),
representative varchar(200),
representativenumber varchar(200),
companynumber varchar(200),
companyfax varchar(200),
companyemail varchar(200),
representativeemail varchar(200),
companyaccountnumber varchar(200),
companyaccountbank varchar(200),
companyaccountbankcode varchar(200),
companyaccountbankcodename varchar(200),
companyaccountownername varchar(200),
companyestablishmentdate datetime,
createdate datetime,
creator varchar(200),
state varchar(200),
orderaddress varchar(200),
companyname_en varchar(200),
companyaddress_en varchar(200),
representative_en varchar(200),
orderaddress_en varchar(200),
companynumbertype varchar(200),
companyfaxtype varchar(200),
companyrepresentativenumber varchar(200)
)



select * from logisticsystem.companyinfo;

select * from INFORMATION_SCHEMA.tables
where table_schema = 'logisticsystem.companyinfo'



create table logisticsystem.tbl_productinfo(
idx int,
productcode varchar(200),
productname varchar(200),
producttype varchar(200),
productspec varchar(200),
producttax int,
productacquirer varchar(200),
productmanufacturer varchar(200),
productcost decimal(65),
productcostnottax decimal(65),
productcosttax decimal(65),
productfactoryprice decimal(65),
productfactorypricenottax decimal(65),
productfactorypricetax decimal(65),
productretailprice decimal(65),
productretailpricenottax decimal(65),
productretailpricetax decimal(65),
productprice decimal(65),
productpricenottax decimal(65),
productpricetax decimal(65),
barcode varchar(200),
qrcode varchar(200),
other varchar(200),
createdate datetime,
creater varchar(200),
state varchar(200),
companycode varchar(200));

select * from logisticsystem.tbl_productinfo;

 SELECT  count(*) as count  FROM logisticsystem.tbl_ProductInfo  WHERE state = @state and companyCode=@companyCode ;

create table logisticsystem.tbl_connect (
	userid varchar(200),
	connectdate datetime,
	state varchar(200),
	language varchar(200),
	ipaddress varchar(200)
);

select * from logisticsystem.tbl_connect;
	

alter table logisticsystem.tbl_companyinfo add constraint idx primary key (idx);


update logisticsystem.tbl_companyinfo
set companycode = '00001'
where idx = 1

