INSERT INTO TSN_User (EmailId,Password,Name,PhoneNumber)VALUES('a','','','');
INSERT INTO TSN_User (EmailId,Password,Name,PhoneNumber)VALUES('b','','','');
INSERT INTO TSN_User (EmailId,Password,Name,PhoneNumber)VALUES('c','','','');
INSERT INTO TSN_User (EmailId,Password,Name,PhoneNumber)VALUES('d','','','');

INSERT INTO TSN_Group (Name)VALUES('Admin');
INSERT INTO TSN_Group (Name)VALUES('User');
INSERT INTO TSN_Group (Name)VALUES('x');


INSERT INTO MAP_USER_GROUP (EmailId,GroupId) VALUES('a',1);
INSERT INTO MAP_USER_GROUP (EmailId,GroupId) VALUES('b',2);
INSERT INTO MAP_USER_GROUP (EmailId,GroupId) VALUES('c',1);
INSERT INTO MAP_USER_GROUP (EmailId,GroupId) VALUES('c',2);
INSERT INTO MAP_USER_GROUP (EmailId,GroupId) VALUES('d',3);

INSERT INTO MST_ViewRole (CODE,NAME)values('P001','MAIN');
INSERT INTO MAP_VIEW_ROLE_GROUP (ViewCode,GroupId) VALUES ('P001','1');
INSERT INTO MAP_VIEW_ROLE_USER (ViewCode,EmailId) VALUES ('P001','d');
INSERT INTO MAP_VIEW_ROLE_USER (ViewCode,EmailId) VALUES ('P001','a');

SELECT role.CODE,user.EmailId 
		FROM MST_ViewRole role INNER JOIN MAP_VIEW_ROLE_GROUP map ON role.CODE = map.ViewCode
							   INNER JOIN MAP_USER_GROUP groupmap ON map.GroupId = groupmap.GroupId
							   INNER JOIN TSN_User user ON groupmap.EmailId = user.EmailId
UNION
SELECT role.CODE,user.EmailId
		FROM MST_ViewRole role INNER JOIN MAP_VIEW_ROLE_USER map ON role.CODE = map.ViewCode
							   INNER JOIN TSN_User user ON map.EmailId = user.EmailId
							   
--Next query need the performance improving.						   
SELECT w.* FROM (
SELECT role.CODE,user.EmailId 
		FROM MST_ViewRole role INNER JOIN MAP_VIEW_ROLE_GROUP map ON role.CODE = map.ViewCode
							   INNER JOIN MAP_USER_GROUP groupmap ON map.GroupId = groupmap.GroupId
							   INNER JOIN TSN_User user ON groupmap.EmailId = user.EmailId
UNION
SELECT role.CODE,user.EmailId
		FROM MST_ViewRole role INNER JOIN MAP_VIEW_ROLE_USER map ON role.CODE = map.ViewCode
							   INNER JOIN TSN_User user ON map.EmailId = user.EmailId ) w
WHERE w.CODE = 'P001' AND w.EmailId = 'a';