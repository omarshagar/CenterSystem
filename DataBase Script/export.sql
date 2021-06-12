--------------------------------------------------------
--  File created - Saturday-June-12-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ACTID
--------------------------------------------------------

   CREATE SEQUENCE  "ACTID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COURSE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COURSE_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HALL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HALL_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INSTRUCTOR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INSTRUCTOR_SEQ"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQID"  MINVALUE 1 MAXVALUE 200 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SESSIONS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SESSIONS_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 381 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table COURSE
--------------------------------------------------------

  CREATE TABLE "COURSE" 
   (	"COURSE_ID" NUMBER, 
	"COURSE_NAME" VARCHAR2(200), 
	"COST" NUMBER, 
	"DURATION_OF_ONE_SESSION" NUMBER DEFAULT 2, 
	"NUM_OF_STUDENTS" NUMBER DEFAULT 0, 
	"NUMBER_OF_SESSIONS" NUMBER, 
	"INSTRUCTOR_ID" NUMBER, 
	"START_DATE" DATE, 
	"END_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table ENROLLMENT
--------------------------------------------------------

  CREATE TABLE "ENROLLMENT" 
   (	"STUDNET_ID" NUMBER, 
	"COURSE_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table HALL
--------------------------------------------------------

  CREATE TABLE "HALL" 
   (	"HALL_NUM" NUMBER, 
	"CAPACITY" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table INSTRUCTOR
--------------------------------------------------------

  CREATE TABLE "INSTRUCTOR" 
   (	"INSTRUCTOR_ID" NUMBER, 
	"FIRSTNAME" VARCHAR2(20), 
	"LASTNAME" VARCHAR2(20), 
	"EMAIL" VARCHAR2(150), 
	"PASSWORD" VARCHAR2(20) DEFAULT 123, 
	"BALANCE" NUMBER DEFAULT 0, 
	"MOBILE_NUMBER" VARCHAR2(20) DEFAULT 0, 
	"USERNAME" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table SESSIONS
--------------------------------------------------------

  CREATE TABLE "SESSIONS" 
   (	"SESSION_ID" NUMBER, 
	"COURSE_ID" NUMBER, 
	"HALL_NUM" NUMBER, 
	"START_HOUR" NUMBER, 
	"SESSION_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "STUDENT" 
   (	"STUDENT_ID" NUMBER DEFAULT 0, 
	"FIRSTNAME" VARCHAR2(20), 
	"LASTNAME" VARCHAR2(20), 
	"EMAIL" VARCHAR2(150), 
	"PASSWORD" VARCHAR2(20) DEFAULT 123, 
	"BALANCE" NUMBER DEFAULT 0, 
	"MOBILE_NUMBER" VARCHAR2(20) DEFAULT 0, 
	"USERNAME" VARCHAR2(20)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE HALL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HALL
Insert into HALL (HALL_NUM,CAPACITY) values (3,200);
Insert into HALL (HALL_NUM,CAPACITY) values (1,30);
Insert into HALL (HALL_NUM,CAPACITY) values (2,100);

---------------------------------------------------
--   END DATA FOR TABLE HALL
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE INSTRUCTOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into INSTRUCTOR
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (95,'Stone','Narek','Stone_Narek@gmail.co','9yahom_6rab',962,'1128024159','Stone_Narek');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (96,'Vishwak','Amour','Vishwak_Amour@gmail.','9yahom_6rab',2827,'1033869446','Vishwak_Amour');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (93,'Auriel','Lennyn','Auriel_Lennyn@gmail.','9yahom_6rab',5056,'1505141070','Auriel_Lennyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (434,'Kashmeir','Alder','Kashmeir_Alder@gmail','9yahom_6rab',8552,'1154789055','Kashmeir_Alder');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (94,'Diyaan','Stevin','Diyaan_Stevin@gmail.','9yahom_6rab',1421,'1056426777','Diyaan_Stevin');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (97,'Yoandri','Messiah','Yoandri_Messiah@gmai','9yahom_6rab',731,'1033192225','Yoandri_Messiah');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (98,'Hughston','Oryan','Hughston_Oryan@gmail','9yahom_6rab',2365,'1008715096','Hughston_Oryan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (99,'Ramzi','Kovi','Ramzi_Kovi@gmail.com','9yahom_6rab',1356,'1100961508','Ramzi_Kovi');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (100,'Revaan','Arsenio','Revaan_Arsenio@gmail','9yahom_6rab',2207,'1269220518','Revaan_Arsenio');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (101,'Brett','Keylor','Brett_Keylor@gmail.c','9yahom_6rab',8708,'1529465337','Brett_Keylor');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (102,'Riggs','Alhaji','Riggs_Alhaji@gmail.c','9yahom_6rab',8018,'1173122314','Riggs_Alhaji');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (103,'Kasim','Enzo','Kasim_Enzo@gmail.com','9yahom_6rab',1115,'1058984905','Kasim_Enzo');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (104,'Trevion','Churchill','Trevion_Churchill@gm','9yahom_6rab',9854,'1216606279','Trevion_Churchill');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (105,'Ben','Osyris','Ben_Osyris@gmail.com','9yahom_6rab',4569,'1083099326','Ben_Osyris');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (106,'Knox','Oryon','Knox_Oryon@gmail.com','9yahom_6rab',552,'1280607265','Knox_Oryon');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (107,'Kasten','Kaon','Kasten_Kaon@gmail.co','9yahom_6rab',1750,'1535209633','Kasten_Kaon');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (108,'Nahmir','Jeffery','Nahmir_Jeffery@gmail','9yahom_6rab',5879,'1545616965','Nahmir_Jeffery');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (109,'Kahleb','Derrell','Kahleb_Derrell@gmail','9yahom_6rab',9139,'1546223431','Kahleb_Derrell');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (110,'Rylend','Xi','Rylend_Xi@gmail.com','9yahom_6rab',3989,'1237846635','Rylend_Xi');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (111,'Adoni','Marcelo','Adoni_Marcelo@gmail.','9yahom_6rab',2126,'1509271788','Adoni_Marcelo');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (112,'Lior','Kaikoa','Lior_Kaikoa@gmail.co','9yahom_6rab',6674,'1030581392','Lior_Kaikoa');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (113,'Eamonn','Knoll','Eamonn_Knoll@gmail.c','9yahom_6rab',6422,'1281979207','Eamonn_Knoll');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (114,'Georges','Sparrow','Georges_Sparrow@gmai','9yahom_6rab',1045,'1585780669','Georges_Sparrow');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (115,'Shahwaiz','Abubakr','Shahwaiz_Abubakr@gma','9yahom_6rab',4883,'1234998786','Shahwaiz_Abubakr');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (116,'Brodee','Clifford','Brodee_Clifford@gmai','9yahom_6rab',6384,'1195782615','Brodee_Clifford');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (117,'Keston','Landrick','Keston_Landrick@gmai','9yahom_6rab',7537,'1514179278','Keston_Landrick');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (118,'Davies','Ioannis','Davies_Ioannis@gmail','9yahom_6rab',937,'1188919380','Davies_Ioannis');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (119,'Trent','Henrik','Trent_Henrik@gmail.c','9yahom_6rab',1166,'1209285305','Trent_Henrik');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (120,'Gedalia','Kalim','Gedalia_Kalim@gmail.','9yahom_6rab',6301,'1565011876','Gedalia_Kalim');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (121,'Baldemar','Kawan','Baldemar_Kawan@gmail','9yahom_6rab',9181,'1142488896','Baldemar_Kawan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (122,'Cypress','Tadgh','Cypress_Tadgh@gmail.','9yahom_6rab',1595,'1195759462','Cypress_Tadgh');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (123,'Jawon','Jusiah','Jawon_Jusiah@gmail.c','9yahom_6rab',9380,'1189163217','Jawon_Jusiah');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (124,'Elam','Sevan','Elam_Sevan@gmail.com','9yahom_6rab',2969,'1088119507','Elam_Sevan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (125,'Navon','Kiren','Navon_Kiren@gmail.co','9yahom_6rab',3154,'1011760092','Navon_Kiren');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (126,'Olivander','Broxton','Olivander_Broxton@gm','9yahom_6rab',9092,'1137169336','Olivander_Broxton');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (127,'Izmael','Patricio','Izmael_Patricio@gmai','9yahom_6rab',6941,'1559485504','Izmael_Patricio');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (128,'Lenoxx','Aariz','Lenoxx_Aariz@gmail.c','9yahom_6rab',6766,'1072303804','Lenoxx_Aariz');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (129,'Hesston','Zalen','Hesston_Zalen@gmail.','9yahom_6rab',3926,'1121065456','Hesston_Zalen');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (130,'Zakk','Sebashtian','Zakk_Sebashtian@gmai','9yahom_6rab',2201,'1162797337','Zakk_Sebashtian');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (131,'Rozen','Nikash','Rozen_Nikash@gmail.c','9yahom_6rab',4291,'1290015219','Rozen_Nikash');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (132,'Elpidio','Jake','Elpidio_Jake@gmail.c','9yahom_6rab',5753,'1157259105','Elpidio_Jake');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (133,'Kendrix','Cage','Kendrix_Cage@gmail.c','9yahom_6rab',6239,'1002495180','Kendrix_Cage');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (134,'Rishav','Dallan','Rishav_Dallan@gmail.','9yahom_6rab',4044,'1011525739','Rishav_Dallan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (135,'Caedmon','Everest','Caedmon_Everest@gmai','9yahom_6rab',6566,'1563693678','Caedmon_Everest');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (136,'Callum','Captain','Callum_Captain@gmail','9yahom_6rab',4015,'1545519848','Callum_Captain');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (137,'Malachai','Sergio','Malachai_Sergio@gmai','9yahom_6rab',5608,'1028725892','Malachai_Sergio');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (138,'Gurnav','Vasudev','Gurnav_Vasudev@gmail','9yahom_6rab',7038,'1160737705','Gurnav_Vasudev');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (139,'Ulric','Ariyan','Ulric_Ariyan@gmail.c','9yahom_6rab',5337,'1086724461','Ulric_Ariyan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (140,'Kudus','Zamari','Kudus_Zamari@gmail.c','9yahom_6rab',2056,'1087113415','Kudus_Zamari');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (141,'San','Candido','San_Candido@gmail.co','9yahom_6rab',7073,'1234805191','San_Candido');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (142,'Kymani','Nori','Kymani_Nori@gmail.co','9yahom_6rab',3440,'1279254004','Kymani_Nori');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (143,'Lasalle','Syed','Lasalle_Syed@gmail.c','9yahom_6rab',7042,'1118888108','Lasalle_Syed');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (144,'Kyros','Kham','Kyros_Kham@gmail.com','9yahom_6rab',3990,'1012491519','Kyros_Kham');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (145,'Lyonel','Decklan','Lyonel_Decklan@gmail','9yahom_6rab',2280,'1229430003','Lyonel_Decklan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (146,'Savva','Legion','Savva_Legion@gmail.c','9yahom_6rab',1028,'1552893417','Savva_Legion');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (147,'Leobardo','Aevin','Leobardo_Aevin@gmail','9yahom_6rab',9088,'1510826089','Leobardo_Aevin');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (148,'Kalen','Kadeen','Kalen_Kadeen@gmail.c','9yahom_6rab',5400,'1286562032','Kalen_Kadeen');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (149,'Horatio','Chance','Horatio_Chance@gmail','9yahom_6rab',7129,'1062397609','Horatio_Chance');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (150,'Cristoval','Alexavier','Cristoval_Alexavier@','9yahom_6rab',7423,'1038419208','Cristoval_Alexavier');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (151,'Wallace','Kartikeya','Wallace_Kartikeya@gm','9yahom_6rab',9190,'1199604576','Wallace_Kartikeya');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (152,'Dawoud','Rayman','Dawoud_Rayman@gmail.','9yahom_6rab',6655,'1247731126','Dawoud_Rayman');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (153,'Muktar','Emerich','Muktar_Emerich@gmail','9yahom_6rab',6057,'1220854318','Muktar_Emerich');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (154,'Yaya','Frederico','Yaya_Frederico@gmail','9yahom_6rab',6568,'1589707055','Yaya_Frederico');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (155,'Jakhel','Ehan','Jakhel_Ehan@gmail.co','9yahom_6rab',3495,'1228117015','Jakhel_Ehan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (156,'Lydon','Neri','Lydon_Neri@gmail.com','9yahom_6rab',4792,'1274707612','Lydon_Neri');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (157,'Kaisen','Elin','Kaisen_Elin@gmail.co','9yahom_6rab',8069,'1171980845','Kaisen_Elin');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (158,'Amahri','Anthoni','Amahri_Anthoni@gmail','9yahom_6rab',9798,'1277746739','Amahri_Anthoni');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (159,'Kohlson','Makael','Kohlson_Makael@gmail','9yahom_6rab',4320,'1546916296','Kohlson_Makael');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (160,'Dacorey','Jakori','Dacorey_Jakori@gmail','9yahom_6rab',3209,'1211783388','Dacorey_Jakori');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (161,'Darian','Chayson','Darian_Chayson@gmail','9yahom_6rab',4993,'1029058308','Darian_Chayson');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (162,'Hiram','Roee','Hiram_Roee@gmail.com','9yahom_6rab',948,'1275273100','Hiram_Roee');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (163,'Loyal','Derin','Loyal_Derin@gmail.co','9yahom_6rab',7005,'1587128474','Loyal_Derin');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (164,'Ridwan','Kemarion','Ridwan_Kemarion@gmai','9yahom_6rab',4044,'1580355891','Ridwan_Kemarion');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (165,'Malique','Rama','Malique_Rama@gmail.c','9yahom_6rab',6729,'1211177927','Malique_Rama');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (166,'Eknoor','Aleki','Eknoor_Aleki@gmail.c','9yahom_6rab',9230,'1080085934','Eknoor_Aleki');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (167,'Tyris','Wali','Tyris_Wali@gmail.com','9yahom_6rab',9418,'1535051446','Tyris_Wali');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (168,'Roney','Olasubomi','Roney_Olasubomi@gmai','9yahom_6rab',3071,'1170317375','Roney_Olasubomi');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (169,'Jailyn','Gurbaaj','Jailyn_Gurbaaj@gmail','9yahom_6rab',4509,'1279433251','Jailyn_Gurbaaj');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (170,'Kysyn','Hezeki','Kysyn_Hezeki@gmail.c','9yahom_6rab',9976,'1266978220','Kysyn_Hezeki');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (171,'Dailon','Zyler','Dailon_Zyler@gmail.c','9yahom_6rab',966,'1053045143','Dailon_Zyler');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (172,'Cypher','Wyman','Cypher_Wyman@gmail.c','9yahom_6rab',5135,'1107282555','Cypher_Wyman');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (173,'Ishir','Warren','Ishir_Warren@gmail.c','9yahom_6rab',6909,'1502912326','Ishir_Warren');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (174,'Jaisen','Grimm','Jaisen_Grimm@gmail.c','9yahom_6rab',7160,'1058022751','Jaisen_Grimm');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (175,'Onur','Kalonji','Onur_Kalonji@gmail.c','9yahom_6rab',2040,'1058725932','Onur_Kalonji');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (176,'Destine','Shun','Destine_Shun@gmail.c','9yahom_6rab',748,'1500647442','Destine_Shun');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (177,'Zakir','Fredi','Zakir_Fredi@gmail.co','9yahom_6rab',5309,'1229602783','Zakir_Fredi');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (260,'Arnoldo','Prince','Arnoldo_Prince@gmail','9yahom_6rab',8842,'1071800006','Arnoldo_Prince');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (261,'Zach','Leilani','Zach_Leilani@gmail.c','9yahom_6rab',1359,'1164539592','Zach_Leilani');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (178,'Delvin','Davyn','Delvin_Davyn@gmail.c','9yahom_6rab',787,'1141341476','Delvin_Davyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (179,'Devesh','Nayib','Devesh_Nayib@gmail.c','9yahom_6rab',6339,'1269916241','Devesh_Nayib');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (180,'Abe','Amir','Abe_Amir@gmail.com','9yahom_6rab',6943,'1162765072','Abe_Amir');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (181,'Macklyn','Jakobii','Macklyn_Jakobii@gmai','9yahom_6rab',4146,'1298166001','Macklyn_Jakobii');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (182,'Cahari','Constantino','Cahari_Constantino@g','9yahom_6rab',9340,'1559462148','Cahari_Constantino');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1,'Ahmed','Salah','tatata','111111',3268,'01010101010',null);
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (183,'Matt','Vartan','Matt_Vartan@gmail.co','9yahom_6rab',9217,'1049623059','Matt_Vartan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (184,'Giovonni','Vuk','Giovonni_Vuk@gmail.c','9yahom_6rab',3090,'1182692735','Giovonni_Vuk');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (185,'Dearrius','Kennen','Dearrius_Kennen@gmai','9yahom_6rab',4254,'1519683521','Dearrius_Kennen');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (186,'Kaelen','Ro','Kaelen_Ro@gmail.com','9yahom_6rab',8537,'1238710135','Kaelen_Ro');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (187,'Karriem','Aundre','Karriem_Aundre@gmail','9yahom_6rab',3119,'1551925072','Karriem_Aundre');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (188,'Elizeo','Samir','Elizeo_Samir@gmail.c','9yahom_6rab',645,'1505158213','Elizeo_Samir');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (189,'Stefon','Deklin','Stefon_Deklin@gmail.','9yahom_6rab',5557,'1592437081','Stefon_Deklin');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (190,'Livingston','Angel','Livingston_Angel@gma','9yahom_6rab',8476,'1143225486','Livingston_Angel');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (191,'Jameshenry','Aspyn','Jameshenry_Aspyn@gma','9yahom_6rab',8961,'1262836182','Jameshenry_Aspyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (192,'Yves','Eric','Yves_Eric@gmail.com','9yahom_6rab',1669,'1030725724','Yves_Eric');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (193,'Taelyn','Calvyn','Taelyn_Calvyn@gmail.','9yahom_6rab',3625,'1111039275','Taelyn_Calvyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (194,'Morrison','Geno','Morrison_Geno@gmail.','9yahom_6rab',819,'1278824823','Morrison_Geno');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (195,'Nicko','Great','Nicko_Great@gmail.co','9yahom_6rab',4780,'1218723657','Nicko_Great');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (196,'Parsa','Kainyn','Parsa_Kainyn@gmail.c','9yahom_6rab',1203,'1209017481','Parsa_Kainyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (197,'Nyheem','Lealand','Nyheem_Lealand@gmail','9yahom_6rab',3293,'1019102654','Nyheem_Lealand');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (198,'Derrius','Hinson','Derrius_Hinson@gmail','9yahom_6rab',2939,'1533748068','Derrius_Hinson');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (199,'Kaenan','Brockton','Kaenan_Brockton@gmai','9yahom_6rab',2291,'1276759648','Kaenan_Brockton');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (200,'Nassim','Keimoni','Nassim_Keimoni@gmail','9yahom_6rab',3501,'1032922846','Nassim_Keimoni');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (201,'Beshoy','Denahi','Beshoy_Denahi@gmail.','9yahom_6rab',1418,'1573512404','Beshoy_Denahi');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (202,'Lancelot','Stetson','Lancelot_Stetson@gma','9yahom_6rab',5995,'1517555286','Lancelot_Stetson');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (203,'Yareth','Ruairi','Yareth_Ruairi@gmail.','9yahom_6rab',6974,'1565346639','Yareth_Ruairi');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (204,'Chaden','Khylo','Chaden_Khylo@gmail.c','9yahom_6rab',2635,'1532133213','Chaden_Khylo');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (205,'Ramadan','Zac','Ramadan_Zac@gmail.co','9yahom_6rab',6112,'1186193758','Ramadan_Zac');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (206,'Sruly','Alyus','Sruly_Alyus@gmail.co','9yahom_6rab',1835,'1255922410','Sruly_Alyus');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (207,'Marcelous','Candon','Marcelous_Candon@gma','9yahom_6rab',6859,'1190904988','Marcelous_Candon');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (208,'Endy','Dyami','Endy_Dyami@gmail.com','9yahom_6rab',1988,'1505138432','Endy_Dyami');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (209,'Niccolo','Brasen','Niccolo_Brasen@gmail','9yahom_6rab',6831,'1299892577','Niccolo_Brasen');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (210,'Jesaiah','Mahzi','Jesaiah_Mahzi@gmail.','9yahom_6rab',6580,'1151854169','Jesaiah_Mahzi');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (211,'Olin','Aires','Olin_Aires@gmail.com','9yahom_6rab',2145,'1028473143','Olin_Aires');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (212,'Coal','Eithan','Coal_Eithan@gmail.co','9yahom_6rab',8493,'1556469430','Coal_Eithan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (213,'Dempsey','Walter','Dempsey_Walter@gmail','9yahom_6rab',2478,'1138074012','Dempsey_Walter');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (214,'Mal','Jiel','Mal_Jiel@gmail.com','9yahom_6rab',1867,'1026287316','Mal_Jiel');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (215,'Isaiha','Romie','Isaiha_Romie@gmail.c','9yahom_6rab',8238,'1065870108','Isaiha_Romie');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (216,'Zavian','Demarious','Zavian_Demarious@gma','9yahom_6rab',635,'1513199065','Zavian_Demarious');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (217,'Ayomiposi','Statler','Ayomiposi_Statler@gm','9yahom_6rab',8941,'1547005861','Ayomiposi_Statler');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (218,'Edgard','Keefer','Edgard_Keefer@gmail.','9yahom_6rab',5240,'1569222500','Edgard_Keefer');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (219,'Thor','Utah','Thor_Utah@gmail.com','9yahom_6rab',7530,'1235528407','Thor_Utah');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (220,'Cesar','Finton','Cesar_Finton@gmail.c','9yahom_6rab',626,'1200839052','Cesar_Finton');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (221,'Eathan','Dalyn','Eathan_Dalyn@gmail.c','9yahom_6rab',7969,'1259516397','Eathan_Dalyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (222,'Fitzroy','Akhai','Fitzroy_Akhai@gmail.','9yahom_6rab',1343,'1118029379','Fitzroy_Akhai');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (223,'Akeen','Jessejames','Akeen_Jessejames@gma','9yahom_6rab',5076,'1044133125','Akeen_Jessejames');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (224,'Esaias','Zackery','Esaias_Zackery@gmail','9yahom_6rab',899,'1173179184','Esaias_Zackery');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (225,'Freddy','Keshav','Freddy_Keshav@gmail.','9yahom_6rab',2498,'1100548817','Freddy_Keshav');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (226,'Davide','Aurelio','Davide_Aurelio@gmail','9yahom_6rab',4709,'1136263351','Davide_Aurelio');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (227,'Ishaan','Lewi','Ishaan_Lewi@gmail.co','9yahom_6rab',6543,'1011796155','Ishaan_Lewi');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (228,'Tyree','Verse','Tyree_Verse@gmail.co','9yahom_6rab',5872,'1087727364','Tyree_Verse');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (229,'Viraansh','Jabarri','Viraansh_Jabarri@gma','9yahom_6rab',5226,'1583995873','Viraansh_Jabarri');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (230,'Gideon','Demarii','Gideon_Demarii@gmail','9yahom_6rab',6862,'1270845434','Gideon_Demarii');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (231,'Abhik','Solace','Abhik_Solace@gmail.c','9yahom_6rab',4595,'1540011477','Abhik_Solace');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (232,'Andy','Smayan','Andy_Smayan@gmail.co','9yahom_6rab',5587,'1513516275','Andy_Smayan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (233,'Oden','Arjen','Oden_Arjen@gmail.com','9yahom_6rab',8660,'1543413111','Oden_Arjen');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (234,'Trigger','Nikolas','Trigger_Nikolas@gmai','9yahom_6rab',6176,'1281410404','Trigger_Nikolas');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (235,'Joaopedro','Bivan','Joaopedro_Bivan@gmai','9yahom_6rab',2144,'1598366897','Joaopedro_Bivan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (236,'Kyrei','Amartya','Kyrei_Amartya@gmail.','9yahom_6rab',7750,'1167285429','Kyrei_Amartya');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (237,'Johnhenry','Jabraylon','Johnhenry_Jabraylon@','9yahom_6rab',1389,'1196975234','Johnhenry_Jabraylon');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (238,'Hatch','Ikeem','Hatch_Ikeem@gmail.co','9yahom_6rab',3418,'1092739347','Hatch_Ikeem');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (239,'Kiza','Milan','Kiza_Milan@gmail.com','9yahom_6rab',1210,'1059189854','Kiza_Milan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (240,'Mosi','Miloh','Mosi_Miloh@gmail.com','9yahom_6rab',4640,'1123889437','Mosi_Miloh');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (241,'Chastin','Haris','Chastin_Haris@gmail.','9yahom_6rab',3887,'1111655759','Chastin_Haris');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (242,'Yaphet','Faustino','Yaphet_Faustino@gmai','9yahom_6rab',9633,'1092642677','Yaphet_Faustino');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (243,'Tyden','Aysen','Tyden_Aysen@gmail.co','9yahom_6rab',4369,'1505928164','Tyden_Aysen');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (244,'Aryo','Sterling','Aryo_Sterling@gmail.','9yahom_6rab',8289,'1092422329','Aryo_Sterling');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (245,'Juancarlos','Leovanni','Juancarlos_Leovanni@','9yahom_6rab',7669,'1178651805','Juancarlos_Leovanni');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (246,'Mads','Eliano','Mads_Eliano@gmail.co','9yahom_6rab',6706,'1017044670','Mads_Eliano');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (247,'Temidayo','Arlando','Temidayo_Arlando@gma','9yahom_6rab',4962,'1074692597','Temidayo_Arlando');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (248,'Krishav','Salmaan','Krishav_Salmaan@gmai','9yahom_6rab',2883,'1190184499','Krishav_Salmaan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (249,'Jathan','Leonell','Jathan_Leonell@gmail','9yahom_6rab',9506,'1132152082','Jathan_Leonell');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (250,'Shakeem','Jermain','Shakeem_Jermain@gmai','9yahom_6rab',9578,'1501277681','Shakeem_Jermain');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (251,'Tuck','Goku','Tuck_Goku@gmail.com','9yahom_6rab',5407,'1182668653','Tuck_Goku');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (252,'Khyrie','Oluwatamilore','Khyrie_Oluwatamilore','9yahom_6rab',6348,'1038352087','Khyrie_Oluwatamilore');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (253,'Siddhant','Yuval','Siddhant_Yuval@gmail','9yahom_6rab',6740,'1053605577','Siddhant_Yuval');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (254,'Deyvi','Trashawn','Deyvi_Trashawn@gmail','9yahom_6rab',7006,'1263881580','Deyvi_Trashawn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (255,'Linford','Luthor','Linford_Luthor@gmail','9yahom_6rab',1709,'1557379832','Linford_Luthor');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (256,'Jaylen','Semajay','Jaylen_Semajay@gmail','9yahom_6rab',6859,'1518839826','Jaylen_Semajay');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (257,'Muhammadyusuf','Dontae','Muhammadyusuf_Dontae','9yahom_6rab',7437,'1527347417','Muhammadyusuf_Dontae');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (258,'Parrish','Ward','Parrish_Ward@gmail.c','9yahom_6rab',3491,'1003949067','Parrish_Ward');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (259,'Yamir','Gino','Yamir_Gino@gmail.com','9yahom_6rab',4777,'1278160066','Yamir_Gino');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (438,'Rylynn','Leangelo','Rylynn_Leangelo@gmai','9yahom_6rab',1839,'1152999067','Rylynn_Leangelo');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (262,'Philopater','Jibraeel','Philopater_Jibraeel@','9yahom_6rab',5852,'1297367155','Philopater_Jibraeel');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (263,'Lovell','Syere','Lovell_Syere@gmail.c','9yahom_6rab',9747,'1533284908','Lovell_Syere');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (264,'Demoni','Parkerjames','Demoni_Parkerjames@g','9yahom_6rab',4384,'1513002096','Demoni_Parkerjames');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (265,'Sirius','Tyshawn','Sirius_Tyshawn@gmail','9yahom_6rab',524,'1046127630','Sirius_Tyshawn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (266,'Mezziah','Nykolas','Mezziah_Nykolas@gmai','9yahom_6rab',3693,'1163590167','Mezziah_Nykolas');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (267,'Skylen','Odis','Skylen_Odis@gmail.co','9yahom_6rab',5509,'1167967936','Skylen_Odis');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (268,'Thorbjorn','Yonatan','Thorbjorn_Yonatan@gm','9yahom_6rab',5672,'1598859607','Thorbjorn_Yonatan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (269,'Cipriano','Habeeb','Cipriano_Habeeb@gmai','9yahom_6rab',9635,'1093368963','Cipriano_Habeeb');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (270,'Elija','Tesean','Elija_Tesean@gmail.c','9yahom_6rab',5964,'1142095853','Elija_Tesean');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (362,'Enki','Abdalrahman','Enki_Abdalrahman@gma','9yahom_6rab',4817,'1186133916','Enki_Abdalrahman');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (363,'Kovyn','Raycen','Kovyn_Raycen@gmail.c','9yahom_6rab',1086,'1515337615','Kovyn_Raycen');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (364,'Javi','Kenrick','Javi_Kenrick@gmail.c','9yahom_6rab',9394,'1530465507','Javi_Kenrick');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (365,'Colt','Jackson','Colt_Jackson@gmail.c','9yahom_6rab',4018,'1025728298','Colt_Jackson');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (366,'Terez','Gareth','Terez_Gareth@gmail.c','9yahom_6rab',1763,'1074763219','Terez_Gareth');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (367,'Sartaj','Arcadian','Sartaj_Arcadian@gmai','9yahom_6rab',6048,'1041677330','Sartaj_Arcadian');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (368,'Omarian','Imari','Omarian_Imari@gmail.','9yahom_6rab',8133,'1024392106','Omarian_Imari');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (369,'Rajvir','Axl','Rajvir_Axl@gmail.com','9yahom_6rab',9336,'1568099846','Rajvir_Axl');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (370,'Rhen','Mychael','Rhen_Mychael@gmail.c','9yahom_6rab',2124,'1136230781','Rhen_Mychael');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (371,'Aether','Dontay','Aether_Dontay@gmail.','9yahom_6rab',2299,'1116337024','Aether_Dontay');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (372,'Jaxen','Clark','Jaxen_Clark@gmail.co','9yahom_6rab',6987,'1051876414','Jaxen_Clark');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (373,'Willy','Tucker','Willy_Tucker@gmail.c','9yahom_6rab',1263,'1115255246','Willy_Tucker');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (374,'Zacarri','Khaleb','Zacarri_Khaleb@gmail','9yahom_6rab',4039,'1227409563','Zacarri_Khaleb');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (375,'Bakari','Princetyn','Bakari_Princetyn@gma','9yahom_6rab',916,'1514768158','Bakari_Princetyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (376,'Graceon','Reef','Graceon_Reef@gmail.c','9yahom_6rab',9655,'1298461841','Graceon_Reef');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (377,'Nelly','Kace','Nelly_Kace@gmail.com','9yahom_6rab',9021,'1547727942','Nelly_Kace');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (378,'Isadore','Tytan','Isadore_Tytan@gmail.','9yahom_6rab',9110,'1192243236','Isadore_Tytan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (379,'Brayson','Quintavious','Brayson_Quintavious@','9yahom_6rab',7156,'1215688647','Brayson_Quintavious');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (380,'Giovanni','Abdulmalik','Giovanni_Abdulmalik@','9yahom_6rab',1505,'1233675102','Giovanni_Abdulmalik');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (381,'Sol','Zoel','Sol_Zoel@gmail.com','9yahom_6rab',7155,'1508375353','Sol_Zoel');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (382,'Angelgabriel','Matheo','Angelgabriel_Matheo@','9yahom_6rab',904,'1024681497','Angelgabriel_Matheo');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (383,'Sentell','Loay','Sentell_Loay@gmail.c','9yahom_6rab',3133,'1229183376','Sentell_Loay');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (384,'Amancio','Dakotah','Amancio_Dakotah@gmai','9yahom_6rab',1120,'1055606651','Amancio_Dakotah');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (385,'Jiarui','Joangel','Jiarui_Joangel@gmail','9yahom_6rab',2786,'1088958972','Jiarui_Joangel');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (386,'Exavier','Zacharius','Exavier_Zacharius@gm','9yahom_6rab',7977,'1113353017','Exavier_Zacharius');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (387,'Grigor','Aydyn','Grigor_Aydyn@gmail.c','9yahom_6rab',5945,'1176089575','Grigor_Aydyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (388,'Kayne','Malvin','Kayne_Malvin@gmail.c','9yahom_6rab',9640,'1224338350','Kayne_Malvin');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (389,'Nandan','Basil','Nandan_Basil@gmail.c','9yahom_6rab',5625,'1512145332','Nandan_Basil');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (390,'Vian','Crawford','Vian_Crawford@gmail.','9yahom_6rab',2811,'1234136981','Vian_Crawford');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (391,'Cisco','Hewitt','Cisco_Hewitt@gmail.c','9yahom_6rab',6478,'1257774420','Cisco_Hewitt');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (392,'Lark','Zakaryah','Lark_Zakaryah@gmail.','9yahom_6rab',3570,'1251116169','Lark_Zakaryah');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (393,'Khyran','Ahkai','Khyran_Ahkai@gmail.c','9yahom_6rab',1493,'1554771791','Khyran_Ahkai');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (394,'Riordan','Dekhari','Riordan_Dekhari@gmai','9yahom_6rab',5823,'1576318416','Riordan_Dekhari');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (395,'Dreyson','Jakarii','Dreyson_Jakarii@gmai','9yahom_6rab',6921,'1203218467','Dreyson_Jakarii');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (396,'Watson','Adharv','Watson_Adharv@gmail.','9yahom_6rab',1211,'1037139153','Watson_Adharv');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (397,'Kabir','Winchester','Kabir_Winchester@gma','9yahom_6rab',7182,'1598859653','Kabir_Winchester');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (398,'Scholar','Martell','Scholar_Martell@gmai','9yahom_6rab',7500,'1219686676','Scholar_Martell');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (399,'Itai','Porfirio','Itai_Porfirio@gmail.','9yahom_6rab',3712,'1245083309','Itai_Porfirio');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (400,'Bailor','Idhant','Bailor_Idhant@gmail.','9yahom_6rab',9532,'1530356914','Bailor_Idhant');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (401,'Oli','Josiah','Oli_Josiah@gmail.com','9yahom_6rab',7829,'1289362894','Oli_Josiah');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (402,'Niraj','Jahad','Niraj_Jahad@gmail.co','9yahom_6rab',1491,'1283456887','Niraj_Jahad');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (403,'Abimael','Divith','Abimael_Divith@gmail','9yahom_6rab',5870,'1193407447','Abimael_Divith');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (404,'Fordham','Aras','Fordham_Aras@gmail.c','9yahom_6rab',3470,'1291855650','Fordham_Aras');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (405,'Brailyn','Zaydyn','Brailyn_Zaydyn@gmail','9yahom_6rab',3409,'1505184330','Brailyn_Zaydyn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (406,'Alyn','Gunter','Alyn_Gunter@gmail.co','9yahom_6rab',604,'1071560265','Alyn_Gunter');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (407,'Kamilo','Abou','Kamilo_Abou@gmail.co','9yahom_6rab',4958,'1169792065','Kamilo_Abou');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (408,'Ashtin','Daivion','Ashtin_Daivion@gmail','9yahom_6rab',8631,'1029593566','Ashtin_Daivion');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (409,'Kaidynn','Tarell','Kaidynn_Tarell@gmail','9yahom_6rab',2584,'1285160111','Kaidynn_Tarell');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (410,'Charvik','Arvik','Charvik_Arvik@gmail.','9yahom_6rab',9765,'1014906602','Charvik_Arvik');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (411,'Dhyan','Sakari','Dhyan_Sakari@gmail.c','9yahom_6rab',9606,'1181643740','Dhyan_Sakari');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (412,'Archibald','Ezriel','Archibald_Ezriel@gma','9yahom_6rab',8966,'1147183375','Archibald_Ezriel');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (413,'Cinco','Alesandro','Cinco_Alesandro@gmai','9yahom_6rab',9058,'1206862783','Cinco_Alesandro');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (414,'Xxavier','Neven','Xxavier_Neven@gmail.','9yahom_6rab',936,'1258762397','Xxavier_Neven');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (415,'Tyaire','Donny','Tyaire_Donny@gmail.c','9yahom_6rab',9565,'1022582574','Tyaire_Donny');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (416,'Kwame','Jhacari','Kwame_Jhacari@gmail.','9yahom_6rab',7192,'1182784991','Kwame_Jhacari');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (417,'August','Jaxson','August_Jaxson@gmail.','9yahom_6rab',6661,'1204868082','August_Jaxson');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (418,'Kayl','Kuzey','Kayl_Kuzey@gmail.com','9yahom_6rab',2413,'1016078010','Kayl_Kuzey');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (419,'Gresham','Cade','Gresham_Cade@gmail.c','9yahom_6rab',8660,'1527125689','Gresham_Cade');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (420,'Kacion','Raydel','Kacion_Raydel@gmail.','9yahom_6rab',2992,'1166178088','Kacion_Raydel');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (421,'Jonuel','Alakay','Jonuel_Alakay@gmail.','9yahom_6rab',8457,'1111693158','Jonuel_Alakay');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (422,'Haize','Chanoch','Haize_Chanoch@gmail.','9yahom_6rab',8580,'1053920828','Haize_Chanoch');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (423,'Basheer','Jaysean','Basheer_Jaysean@gmai','9yahom_6rab',7065,'1298498086','Basheer_Jaysean');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (424,'Russ','Aydn','Russ_Aydn@gmail.com','9yahom_6rab',6864,'1253623769','Russ_Aydn');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (425,'Alfonso','Matthew','Alfonso_Matthew@gmai','9yahom_6rab',1458,'1095857964','Alfonso_Matthew');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (426,'Tiyon','Unique','Tiyon_Unique@gmail.c','9yahom_6rab',3678,'1259598523','Tiyon_Unique');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (427,'Aasher','Taten','Aasher_Taten@gmail.c','9yahom_6rab',7052,'1552693248','Aasher_Taten');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (428,'Danny','Broderick','Danny_Broderick@gmai','9yahom_6rab',2490,'1247699218','Danny_Broderick');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (429,'Arron','Nyson','Arron_Nyson@gmail.co','9yahom_6rab',6946,'1526198452','Arron_Nyson');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (430,'Wisam','Solaris','Wisam_Solaris@gmail.','9yahom_6rab',9140,'1142210170','Wisam_Solaris');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (431,'Adarius','Kiet','Adarius_Kiet@gmail.c','9yahom_6rab',2735,'1086548819','Adarius_Kiet');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (432,'Gin','Larry','Gin_Larry@gmail.com','9yahom_6rab',2867,'1529422216','Gin_Larry');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (433,'Dmir','Daud','Dmir_Daud@gmail.com','9yahom_6rab',2351,'1110449047','Dmir_Daud');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (435,'Abdulhameed','Shiva','Abdulhameed_Shiva@gm','9yahom_6rab',6141,'1024181389','Abdulhameed_Shiva');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (436,'Zadyn','Danner','Zadyn_Danner@gmail.c','9yahom_6rab',1565,'1099150814','Zadyn_Danner');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (437,'Raeshawn','Nyko','Raeshawn_Nyko@gmail.','9yahom_6rab',1897,'1188366786','Raeshawn_Nyko');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (439,'Jaharri','Calil','Jaharri_Calil@gmail.','9yahom_6rab',720,'1147548026','Jaharri_Calil');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (440,'Watsyn','Jaceyon','Watsyn_Jaceyon@gmail','9yahom_6rab',4075,'1099958739','Watsyn_Jaceyon');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (441,'Jacai','Nicasio','Jacai_Nicasio@gmail.','9yahom_6rab',7084,'1055119794','Jacai_Nicasio');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (442,'Nashton','Keeghan','Nashton_Keeghan@gmai','9yahom_6rab',6932,'1053967336','Nashton_Keeghan');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (443,'Dynver','Dreyden','Dynver_Dreyden@gmail','9yahom_6rab',2316,'1122566717','Dynver_Dreyden');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (444,'Wildon','Yannick','Wildon_Yannick@gmail','9yahom_6rab',1597,'1550869068','Wildon_Yannick');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (445,'Ellison','Naol','Ellison_Naol@gmail.c','9yahom_6rab',6788,'1257502222','Ellison_Naol');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (446,'Zakar','Pinchos','Zakar_Pinchos@gmail.','9yahom_6rab',7890,'1548567577','Zakar_Pinchos');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (447,'Taurean','Zuri','Taurean_Zuri@gmail.c','9yahom_6rab',4391,'1202927636','Taurean_Zuri');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (448,'Xadiel','Andrei','Xadiel_Andrei@gmail.','9yahom_6rab',4854,'1186641365','Xadiel_Andrei');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (449,'Dennys','Kanon','Dennys_Kanon@gmail.c','9yahom_6rab',5340,'1577102523','Dennys_Kanon');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (450,'Heston','Tjay','Heston_Tjay@gmail.co','9yahom_6rab',8441,'1539467010','Heston_Tjay');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (42,'lol','lol','Stone_Nare1k@gmail.co','123456',0,'01035122222','Omar');

---------------------------------------------------
--   END DATA FOR TABLE INSTRUCTOR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SESSIONS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SESSIONS
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (371,22,3,13,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (369,22,3,8,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (370,22,3,12,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (354,19,1,8,to_timestamp('01-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (355,19,1,8,to_timestamp('08-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (356,19,1,8,to_timestamp('15-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (212,13,3,9,to_timestamp('07-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (213,13,3,9,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (214,13,3,9,to_timestamp('21-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (215,13,3,9,to_timestamp('28-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (206,13,3,8,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (207,13,3,8,to_timestamp('07-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (208,13,3,8,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (209,13,3,8,to_timestamp('21-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (210,13,3,8,to_timestamp('28-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (211,13,3,9,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (202,12,1,11,to_timestamp('19-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (203,12,1,11,to_timestamp('26-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (204,12,1,12,to_timestamp('19-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (205,12,1,12,to_timestamp('26-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (216,14,3,10,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (217,14,3,10,to_timestamp('21-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (218,14,3,10,to_timestamp('28-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (219,14,3,10,to_timestamp('04-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (220,14,3,10,to_timestamp('11-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (221,14,3,10,to_timestamp('18-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (222,14,3,10,to_timestamp('25-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (223,14,3,10,to_timestamp('01-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (224,14,3,10,to_timestamp('08-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (225,14,3,10,to_timestamp('15-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (226,14,3,10,to_timestamp('22-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (227,14,3,10,to_timestamp('29-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (228,14,3,10,to_timestamp('06-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (229,14,3,10,to_timestamp('13-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (230,14,3,10,to_timestamp('20-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (231,14,3,10,to_timestamp('27-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (232,14,3,10,to_timestamp('03-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (233,14,3,10,to_timestamp('10-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (234,14,3,10,to_timestamp('17-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (235,14,3,12,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (236,14,3,12,to_timestamp('21-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (237,14,3,12,to_timestamp('28-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (238,14,3,12,to_timestamp('04-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (239,14,3,12,to_timestamp('11-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (240,14,3,12,to_timestamp('18-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (241,14,3,12,to_timestamp('25-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (242,14,3,12,to_timestamp('01-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (243,14,3,12,to_timestamp('08-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (244,14,3,12,to_timestamp('15-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (245,14,3,12,to_timestamp('22-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (246,14,3,12,to_timestamp('29-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (247,14,3,12,to_timestamp('06-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (248,14,3,12,to_timestamp('13-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (249,14,3,12,to_timestamp('20-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (250,14,3,12,to_timestamp('27-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (251,14,3,12,to_timestamp('03-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (252,14,3,12,to_timestamp('10-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (253,14,3,12,to_timestamp('17-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (254,14,3,13,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (255,14,3,13,to_timestamp('21-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (256,14,3,13,to_timestamp('28-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (257,14,3,13,to_timestamp('04-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (258,14,3,13,to_timestamp('11-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (259,14,3,13,to_timestamp('18-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (260,14,3,13,to_timestamp('25-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (261,14,3,13,to_timestamp('01-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (262,14,3,13,to_timestamp('08-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (263,14,3,13,to_timestamp('15-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (264,14,3,13,to_timestamp('22-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (265,14,3,13,to_timestamp('29-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (266,14,3,13,to_timestamp('06-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (267,14,3,13,to_timestamp('13-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (268,14,3,13,to_timestamp('20-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (269,14,3,13,to_timestamp('27-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (270,14,3,13,to_timestamp('03-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (271,14,3,13,to_timestamp('10-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (272,14,3,13,to_timestamp('17-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (273,15,3,10,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (274,15,3,10,to_timestamp('21-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (275,15,3,10,to_timestamp('28-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (276,15,3,10,to_timestamp('04-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (277,15,3,10,to_timestamp('11-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (278,15,3,10,to_timestamp('18-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (279,15,3,10,to_timestamp('25-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (280,15,3,10,to_timestamp('01-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (281,15,3,10,to_timestamp('08-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (282,15,3,10,to_timestamp('15-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (283,15,3,10,to_timestamp('22-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (284,15,3,10,to_timestamp('29-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (285,15,3,10,to_timestamp('06-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (286,15,3,10,to_timestamp('13-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (287,15,3,10,to_timestamp('20-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (288,15,3,10,to_timestamp('27-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (289,15,3,10,to_timestamp('03-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (290,15,3,10,to_timestamp('10-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (291,15,3,10,to_timestamp('17-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (292,15,3,12,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (293,15,3,12,to_timestamp('21-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (294,15,3,12,to_timestamp('28-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (295,15,3,12,to_timestamp('04-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (296,15,3,12,to_timestamp('11-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (297,15,3,12,to_timestamp('18-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (298,15,3,12,to_timestamp('25-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (299,15,3,12,to_timestamp('01-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (300,15,3,12,to_timestamp('08-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (301,15,3,12,to_timestamp('15-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (302,15,3,12,to_timestamp('22-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (303,15,3,12,to_timestamp('29-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (304,15,3,12,to_timestamp('06-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (305,15,3,12,to_timestamp('13-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (306,15,3,12,to_timestamp('20-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (307,15,3,12,to_timestamp('27-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (308,15,3,12,to_timestamp('03-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (309,15,3,12,to_timestamp('10-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (310,15,3,12,to_timestamp('17-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (311,15,3,13,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (312,15,3,13,to_timestamp('21-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (313,15,3,13,to_timestamp('28-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (314,15,3,13,to_timestamp('04-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (315,15,3,13,to_timestamp('11-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (316,15,3,13,to_timestamp('18-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (317,15,3,13,to_timestamp('25-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (318,15,3,13,to_timestamp('01-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (319,15,3,13,to_timestamp('08-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (320,15,3,13,to_timestamp('15-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (321,15,3,13,to_timestamp('22-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (322,15,3,13,to_timestamp('29-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (323,15,3,13,to_timestamp('06-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (324,15,3,13,to_timestamp('13-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (325,15,3,13,to_timestamp('20-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (326,15,3,13,to_timestamp('27-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (327,15,3,13,to_timestamp('03-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (328,15,3,13,to_timestamp('10-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (329,15,3,13,to_timestamp('17-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (348,17,3,10,to_timestamp('23-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (349,17,3,10,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (350,17,3,11,to_timestamp('23-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (351,17,3,11,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (352,18,3,12,to_timestamp('23-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (353,18,3,12,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (357,20,3,13,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (358,20,3,13,to_timestamp('07-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (359,20,3,14,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (360,20,3,14,to_timestamp('07-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (361,20,3,15,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (362,20,3,15,to_timestamp('07-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (363,21,3,9,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (364,21,3,9,to_timestamp('28-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (365,21,3,10,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (366,21,3,10,to_timestamp('28-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (367,21,3,11,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (368,21,3,11,to_timestamp('28-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (372,23,1,14,to_timestamp('14-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (373,23,1,14,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (330,16,3,8,to_timestamp('19-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (331,16,3,8,to_timestamp('26-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (332,16,3,8,to_timestamp('03-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (333,16,3,8,to_timestamp('10-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (334,16,3,8,to_timestamp('17-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (335,16,3,8,to_timestamp('24-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (336,16,3,9,to_timestamp('19-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (337,16,3,9,to_timestamp('26-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (338,16,3,9,to_timestamp('03-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (339,16,3,9,to_timestamp('10-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (340,16,3,9,to_timestamp('17-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (341,16,3,9,to_timestamp('24-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (342,16,3,10,to_timestamp('19-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (343,16,3,10,to_timestamp('26-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (344,16,3,10,to_timestamp('03-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (345,16,3,10,to_timestamp('10-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (346,16,3,10,to_timestamp('17-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (347,16,3,10,to_timestamp('24-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));

---------------------------------------------------
--   END DATA FOR TABLE SESSIONS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE STUDENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into STUDENT
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (210,'Demond','Ozell','Demond_Ozell@gmail.com','000000',307,'01031122911','Demond_Ozell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (211,'Lucien','Demonte','Lucien_Demonte@gmail.com','0000',596,'1086048996','Lucien_Demonte');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (212,'Alan','Essie','Alan_Essie@gmail.com','0000',108,'1032020728','Alan_Essie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (122,'Jaquan','Barnard','Jaquan_Barnard@gmail.com','0000',493,'1031140436','Jaquan_Barnard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (123,'Jeffery','Efrem','Jeffery_Efrem@gmail.com','0000',771,'1080438827','Jeffery_Efrem');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (124,'Marcelo','Ron','Marcelo_Ron@gmail.com','0000',461,'1032730073','Marcelo_Ron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (125,'Caroline','Maam','Caroline_Alden@gmail.com','000000',243,'01001957600','Caroline_Alden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (126,'Melbourne','Merton','Melbourne_Merton@gmail.com','0000',965,'1019935604','Melbourne_Merton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (127,'Dalton','Haywood','Dalton_Haywood@gmail.com','0000',211,'1018652372','Dalton_Haywood');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (128,'Rhoda','Lyndon','Rhoda_Lyndon@gmail.com','0000',391,'1034931845','Rhoda_Lyndon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (129,'Helmer','Orion','Helmer_Orion@gmail.com','0000',919,'1029182877','Helmer_Orion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (130,'Kelby','Lee','Kelby_Lee@gmail.com','0000',911,'1096255249','Kelby_Lee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (131,'Silvio','Ivy','Silvio_Ivy@gmail.com','0000',166,'1092160260','Silvio_Ivy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (132,'Neely','Burrell','Neely_Burrell@gmail.com','0000',576,'1078879779','Neely_Burrell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (133,'Jarrell','Elvis','Jarrell_Elvis@gmail.com','0000',37,'1009755789','Jarrell_Elvis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (134,'Burnell','Sing','Burnell_Sing@gmail.com','0000',4,'1067771922','Burnell_Sing');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (135,'Haven','Ora','Haven_Ora@gmail.com','0000',237,'1036361132','Haven_Ora');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (136,'Maynard','Ridge','Maynard_Ridge@gmail.com','0000',400,'1081470825','Maynard_Ridge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (137,'Zeno','Jalon','Zeno_Jalon@gmail.com','0000',856,'1008267533','Zeno_Jalon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (138,'Steve','Jaron','Steve_Jaron@gmail.com','0000',766,'1023628726','Steve_Jaron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (139,'Coleman','Romello','Coleman_Romello@gmail.com','0000',865,'1080800003','Coleman_Romello');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (140,'Romeo','Heriberto','Romeo_Heriberto@gmail.com','0000',871,'1037639553','Romeo_Heriberto');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (141,'Menachem','Uriel','Menachem_Uriel@gmail.com','0000',781,'1053330666','Menachem_Uriel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (142,'Reese','Jim','Reese_Jim@gmail.com','0000',602,'1088021090','Reese_Jim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (143,'Karim','Ty','Karim_Ty@gmail.com','0000',651,'1010942117','Karim_Ty');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (144,'Elbridge','Deon','Elbridge_Deon@gmail.com','0000',247,'1096450441','Elbridge_Deon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (145,'Ward','Dave','Ward_Dave@gmail.com','0000',541,'1071791144','Ward_Dave');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (146,'Zachery','Jewel','Zachery_Jewel@gmail.com','0000',438,'1044384054','Zachery_Jewel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (147,'Randall','Brendon','Randall_Brendon@gmail.com','0000',153,'1020005427','Randall_Brendon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (148,'Cruz','Ted','Cruz_Ted@gmail.com','0000',434,'1041938492','Cruz_Ted');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (149,'Jaheem','Jovan','Jaheem_Jovan@gmail.com','0000',153,'1073103114','Jaheem_Jovan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (150,'Brenton','Gustavus','Brenton_Gustavus@gmail.com','0000',594,'1057711163','Brenton_Gustavus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (151,'Ogden','Drury','Ogden_Drury@gmail.com','0000',385,'1051380910','Ogden_Drury');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (152,'Lindbergh','Elisha','Lindbergh_Elisha@gmail.com','0000',117,'1084913111','Lindbergh_Elisha');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (153,'Gray','Gaston','Gray_Gaston@gmail.com','0000',701,'1046064526','Gray_Gaston');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (154,'Arbie','Brennon','Arbie_Brennon@gmail.com','0000',334,'1019438390','Arbie_Brennon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (155,'Patrick','Angela','Patrick_Angela@gmail.com','0000',115,'1047057310','Patrick_Angela');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (156,'Bertie','Colbert','Bertie_Colbert@gmail.com','0000',773,'1004805787','Bertie_Colbert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (157,'Louis','Benjamine','Louis_Benjamine@gmail.com','0000',867,'1014859680','Louis_Benjamine');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (158,'Tyrique','Alijah','Tyrique_Alijah@gmail.com','0000',341,'1030554394','Tyrique_Alijah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (159,'Fed','Ewell','Fed_Ewell@gmail.com','0000',383,'1054886976','Fed_Ewell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (160,'Kalen','Richmond','Kalen_Richmond@gmail.com','0000',586,'1096691281','Kalen_Richmond');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (161,'Darryle','Jadon','Darryle_Jadon@gmail.com','0000',500,'1048436370','Darryle_Jadon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (162,'Bayard','Francis','Bayard_Francis@gmail.com','0000',724,'1088214992','Bayard_Francis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (163,'Egbert','Wash','Egbert_Wash@gmail.com','0000',842,'1030603339','Egbert_Wash');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (164,'Laurence','Lenard','Laurence_Lenard@gmail.com','0000',496,'1018947757','Laurence_Lenard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (165,'Casimiro','Branson','Casimiro_Branson@gmail.com','0000',749,'1049443455','Casimiro_Branson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (166,'Carol','Gavyn','Carol_Gavyn@gmail.com','0000',223,'1060111100','Carol_Gavyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (167,'Mont','Loney','Mont_Loney@gmail.com','0000',110,'1025302690','Mont_Loney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (168,'Olaf','Lavar','Olaf_Lavar@gmail.com','0000',299,'1031355879','Olaf_Lavar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (169,'Vincent','Hugo','Vincent_Hugo@gmail.com','0000',430,'1052719729','Vincent_Hugo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (170,'Tammy','Vincenzo','Tammy_Vincenzo@gmail.com','0000',31,'1077762372','Tammy_Vincenzo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (171,'Finnegan','Carlos','Finnegan_Carlos@gmail.com','0000',576,'1043767175','Finnegan_Carlos');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (172,'Darry','Arthor','Darry_Arthor@gmail.com','0000',246,'1043684349','Darry_Arthor');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (173,'Mikhail','Orrie','Mikhail_Orrie@gmail.com','0000',655,'1017170409','Mikhail_Orrie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (174,'Caiden','Merrill','Caiden_Merrill@gmail.com','0000',532,'1074958328','Caiden_Merrill');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (175,'Sheridan','Jamir','Sheridan_Jamir@gmail.com','0000',390,'1014918906','Sheridan_Jamir');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (176,'Pat','Gauge','Pat_Gauge@gmail.com','0000',291,'1027290184','Pat_Gauge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (177,'Braydon','Michale','Braydon_Michale@gmail.com','0000',785,'1046449080','Braydon_Michale');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (178,'Tre','Sterling','Tre_Sterling@gmail.com','0000',763,'1096746680','Tre_Sterling');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (179,'Bart','York','Bart_York@gmail.com','0000',507,'1024058551','Bart_York');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (180,'Johnny','Steward','Johnny_Steward@gmail.com','0000',427,'1055817377','Johnny_Steward');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (181,'Lue','Delmar','Lue_Delmar@gmail.com','0000',707,'1054360786','Lue_Delmar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (182,'Farris','Gee','Farris_Gee@gmail.com','0000',439,'1008199096','Farris_Gee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (183,'Jules','Noah','Jules_Noah@gmail.com','0000',977,'1032937797','Jules_Noah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (184,'Jiles','Ozzie','Jiles_Ozzie@gmail.com','0000',561,'1022409555','Jiles_Ozzie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (185,'Wilhelm','Rolla','Wilhelm_Rolla@gmail.com','0000',740,'1030797706','Wilhelm_Rolla');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (186,'Council','Delton','Council_Delton@gmail.com','0000',980,'1069921108','Council_Delton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (187,'Gannon','Creed','Gannon_Creed@gmail.com','0000',3,'1076728210','Gannon_Creed');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (188,'Brandyn','Rome','Brandyn_Rome@gmail.com','0000',478,'1022304734','Brandyn_Rome');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (189,'Ali','Delphin','Ali_Delphin@gmail.com','0000',404,'1058483582','Ali_Delphin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (190,'Conrad','Leon','Conrad_Leon@gmail.com','0000',630,'1073661076','Conrad_Leon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (191,'Alta','Gus','Alta_Gus@gmail.com','0000',611,'1088962160','Alta_Gus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (192,'Henery','Amerigo','Henery_Amerigo@gmail.com','0000',376,'1044550462','Henery_Amerigo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (193,'Roy','Chadrick','Roy_Chadrick@gmail.com','0000',79,'1046252841','Roy_Chadrick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (194,'Thurston','Jaheim','Thurston_Jaheim@gmail.com','0000',625,'1043932483','Thurston_Jaheim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (195,'Nikhil','Seldon','Nikhil_Seldon@gmail.com','0000',624,'1076933836','Nikhil_Seldon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (196,'Joeseph','Alfonse','Joeseph_Alfonse@gmail.com','0000',945,'1014505168','Joeseph_Alfonse');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (197,'Jerrel','Alfie','Jerrel_Alfie@gmail.com','0000',629,'1073640917','Jerrel_Alfie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (198,'Hernan','Sandra','Hernan_Sandra@gmail.com','0000',850,'1075444687','Hernan_Sandra');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (199,'Javon','Milas','Javon_Milas@gmail.com','0000',751,'1070666670','Javon_Milas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (200,'Laurel','Darren','Laurel_Darren@gmail.com','0000',82,'1085073870','Laurel_Darren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (201,'Tyrek','Josef','Tyrek_Josef@gmail.com','0000',953,'1057197559','Tyrek_Josef');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (202,'Mannie','Everet','Mannie_Everet@gmail.com','0000',52,'1021902268','Mannie_Everet');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (203,'Zachariah','Eduardo','Zachariah_Eduardo@gmail.com','0000',307,'1075548109','Zachariah_Eduardo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (204,'Judy','Alex','Judy_Alex@gmail.com','0000',541,'1056542074','Judy_Alex');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (205,'Alexander','Shade','Alexander_Shade@gmail.com','0000',512,'1037726090','Alexander_Shade');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (206,'Marshall','Quinton','Marshall_Quinton@gmail.com','0000',80,'1080166719','Marshall_Quinton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (207,'Harrie','Abdullah','Harrie_Abdullah@gmail.com','0000',784,'1039974540','Harrie_Abdullah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (208,'Yee','Jamel','Yee_Jamel@gmail.com','0000',352,'1008576481','Yee_Jamel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (209,'Luc','Rafe','Luc_Rafe@gmail.com','0000',918,'1058783709','Luc_Rafe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (213,'Grover','Marcellus','Grover_Marcellus@gmail.com','0000',561,'1065537324','Grover_Marcellus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (214,'Allison','Tristin','Allison_Tristin@gmail.com','0000',429,'1064369230','Allison_Tristin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (215,'Elmer','Nehemiah','Elmer_Nehemiah@gmail.com','0000',169,'1029468011','Elmer_Nehemiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (216,'Orvel','Jimmie','Orvel_Jimmie@gmail.com','0000',687,'1037496964','Orvel_Jimmie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (217,'Russell','Canyon','Russell_Canyon@gmail.com','0000',71,'1059500856','Russell_Canyon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (22,'ff','ff','ff','ff',55,'123456789','ff');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (3,'Omar','Shreet','omar.btw@hotnailc,om','123',198,'101029327','OmarShreet');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (0,'Omar','Monem','whatever','123',400,'1010','omr2000');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2,'Hassan','Hassan','whateverlol','123',2000,'1928','Omar2000');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (218,'Callum','Ruffin','Callum_Ruffin@gmail.com','0000',689,'1075370846','Callum_Ruffin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (219,'Cleveland','Tiffany','Cleveland_Tiffany@gmail.com','0000',701,'1082178481','Cleveland_Tiffany');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (220,'Carmen','Earley','Carmen_Earley@gmail.com','0000',601,'1019627351','Carmen_Earley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (221,'Wallace','Tyriq','Wallace_Tyriq@gmail.com','0000',102,'1088300880','Wallace_Tyriq');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (222,'Jaxson','Lamont','Jaxson_Lamont@gmail.com','0000',258,'1030141661','Jaxson_Lamont');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (223,'Florence','Federico','Florence_Federico@gmail.com','0000',357,'1079873636','Florence_Federico');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (224,'Todd','Hank','Todd_Hank@gmail.com','0000',878,'1098831741','Todd_Hank');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (225,'Rocky','Bradley','Rocky_Bradley@gmail.com','0000',324,'1011921057','Rocky_Bradley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (226,'Darion','Don','Darion_Don@gmail.com','0000',580,'1090298205','Darion_Don');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (227,'Zaire','Mitchel','Zaire_Mitchel@gmail.com','0000',139,'1096027640','Zaire_Mitchel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (228,'Volney','Cheyenne','Volney_Cheyenne@gmail.com','0000',589,'1020444120','Volney_Cheyenne');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (229,'Jared','Olof','Jared_Olof@gmail.com','0000',270,'1012197165','Jared_Olof');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (230,'Lenord','Calvin','Lenord_Calvin@gmail.com','0000',228,'1044948026','Lenord_Calvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (231,'Arvel','Tracy','Arvel_Tracy@gmail.com','0000',456,'1019195861','Arvel_Tracy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (232,'Lorenzo','Erich','Lorenzo_Erich@gmail.com','0000',256,'1003379435','Lorenzo_Erich');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (233,'Gayle','Geo','Gayle_Geo@gmail.com','0000',732,'1089558181','Gayle_Geo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (234,'Son','Tate','Son_Tate@gmail.com','0000',735,'1019715338','Son_Tate');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (235,'Gay','Caden','Gay_Caden@gmail.com','0000',435,'1078131222','Gay_Caden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (236,'Micheal','Aleck','Micheal_Aleck@gmail.com','0000',185,'1088891993','Micheal_Aleck');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (237,'Edwardo','Diamond','Edwardo_Diamond@gmail.com','0000',74,'1013354194','Edwardo_Diamond');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (238,'Paulo','Benton','Paulo_Benton@gmail.com','0000',594,'1031096873','Paulo_Benton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (239,'Male','Jayden','Male_Jayden@gmail.com','0000',966,'1016320366','Male_Jayden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (240,'Koen','Adrien','Koen_Adrien@gmail.com','0000',55,'1012332312','Koen_Adrien');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (241,'Rey','Deacon','Rey_Deacon@gmail.com','0000',499,'1091633124','Rey_Deacon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (242,'Alois','Lemuel','Alois_Lemuel@gmail.com','0000',651,'1080278376','Alois_Lemuel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (243,'Emanuel','Ian','Emanuel_Ian@gmail.com','0000',533,'1033192494','Emanuel_Ian');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (244,'Brantley','Camren','Brantley_Camren@gmail.com','0000',547,'1049307157','Brantley_Camren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (245,'Le','Tobe','Le_Tobe@gmail.com','0000',910,'1064939568','Le_Tobe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (246,'Whit','Burk','Whit_Burk@gmail.com','0000',445,'1040727972','Whit_Burk');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (247,'Donovan','Gustavo','Donovan_Gustavo@gmail.com','0000',895,'1011679718','Donovan_Gustavo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (248,'Jacob','Michial','Jacob_Michial@gmail.com','0000',556,'1066372158','Jacob_Michial');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (249,'Ryley','Fayette','Ryley_Fayette@gmail.com','0000',370,'1083582756','Ryley_Fayette');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (250,'Floy','Kellen','Floy_Kellen@gmail.com','0000',508,'1033038992','Floy_Kellen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (251,'Sherwin','Jaylin','Sherwin_Jaylin@gmail.com','0000',277,'1078293942','Sherwin_Jaylin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (252,'Collier','Talen','Collier_Talen@gmail.com','0000',527,'1030246965','Collier_Talen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (253,'Burney','Dane','Burney_Dane@gmail.com','0000',625,'1019671325','Burney_Dane');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (254,'Anastacio','Holland','Anastacio_Holland@gmail.com','0000',498,'1029112564','Anastacio_Holland');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (255,'Reino','Vander','Reino_Vander@gmail.com','0000',700,'1083592019','Reino_Vander');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (256,'Regis','Anibal','Regis_Anibal@gmail.com','0000',477,'1019115880','Regis_Anibal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (257,'Elick','Elizabeth','Elick_Elizabeth@gmail.com','0000',959,'1002796741','Elick_Elizabeth');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (258,'Matthias','Rose','Matthias_Rose@gmail.com','0000',122,'1030384596','Matthias_Rose');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (259,'Pearlie','Guadalupe','Pearlie_Guadalupe@gmail.com','0000',411,'1044491778','Pearlie_Guadalupe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (260,'Linzy','Jadiel','Linzy_Jadiel@gmail.com','0000',634,'1036630472','Linzy_Jadiel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (261,'Cash','Trent','Cash_Trent@gmail.com','0000',39,'1030157911','Cash_Trent');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (262,'Fabian','Alba','Fabian_Alba@gmail.com','0000',731,'1067958599','Fabian_Alba');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (263,'Terence','Marlon','Terence_Marlon@gmail.com','0000',239,'1017385966','Terence_Marlon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (264,'Esco','Tyler','Esco_Tyler@gmail.com','0000',131,'1010706845','Esco_Tyler');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (265,'Zain','Michel','Zain_Michel@gmail.com','0000',994,'1050843814','Zain_Michel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (266,'Ellery','Zayden','Ellery_Zayden@gmail.com','0000',184,'1037736891','Ellery_Zayden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (267,'Curt','Cephus','Curt_Cephus@gmail.com','0000',668,'1063104239','Curt_Cephus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (268,'Clemens','Palmer','Clemens_Palmer@gmail.com','0000',202,'1031941527','Clemens_Palmer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (269,'Selmer','Stan','Selmer_Stan@gmail.com','0000',799,'1018897498','Selmer_Stan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (270,'Tyrik','Ladarius','Tyrik_Ladarius@gmail.com','0000',110,'1098942963','Tyrik_Ladarius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (271,'Toivo','Green','Toivo_Green@gmail.com','0000',975,'1085719259','Toivo_Green');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (272,'Talan','Christoper','Talan_Christoper@gmail.com','0000',488,'1076691412','Talan_Christoper');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (273,'Davonta','Rosendo','Davonta_Rosendo@gmail.com','0000',617,'1042382741','Davonta_Rosendo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (274,'Burrel','Albion','Burrel_Albion@gmail.com','0000',67,'1034961874','Burrel_Albion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (275,'Wilfrid','Ronnie','Wilfrid_Ronnie@gmail.com','0000',912,'1068210758','Wilfrid_Ronnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (276,'Virge','Hosea','Virge_Hosea@gmail.com','0000',717,'1009917045','Virge_Hosea');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (277,'Isai','Marlyn','Isai_Marlyn@gmail.com','0000',226,'1049149103','Isai_Marlyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (278,'Arlyn','Jonas','Arlyn_Jonas@gmail.com','0000',992,'1066533993','Arlyn_Jonas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (279,'Eliezer','Darrius','Eliezer_Darrius@gmail.com','0000',885,'1030043602','Eliezer_Darrius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (280,'Davon','Gilberto','Davon_Gilberto@gmail.com','0000',386,'1034936611','Davon_Gilberto');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (281,'Doll','Marlin','Doll_Marlin@gmail.com','0000',563,'1089778006','Doll_Marlin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (282,'Geno','Coolidge','Geno_Coolidge@gmail.com','0000',31,'1022168488','Geno_Coolidge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (283,'Cam','Cloyd','Cam_Cloyd@gmail.com','0000',104,'1053856128','Cam_Cloyd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (284,'Sylvanus','Archie','Sylvanus_Archie@gmail.com','0000',138,'1096717216','Sylvanus_Archie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (285,'Kenney','Mae','Kenney_Mae@gmail.com','0000',951,'1041065086','Kenney_Mae');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (286,'Okey','Mitch','Okey_Mitch@gmail.com','0000',48,'1078252003','Okey_Mitch');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (287,'Hassan','Theodore','Hassan_Theodore@gmail.com','0000',220,'1053291144','Hassan_Theodore');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (288,'Crystal','Macarthur','Crystal_Macarthur@gmail.com','0000',109,'1099111292','Crystal_Macarthur');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (289,'Barbara','Otha','Barbara_Otha@gmail.com','0000',412,'1062642619','Barbara_Otha');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (290,'Barton','Ann','Barton_Ann@gmail.com','0000',701,'1017592364','Barton_Ann');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (291,'Alferd','Loren','Alferd_Loren@gmail.com','0000',66,'1008477188','Alferd_Loren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (292,'Darron','Boris','Darron_Boris@gmail.com','0000',78,'1090148317','Darron_Boris');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (293,'Darell','Celestino','Darell_Celestino@gmail.com','0000',540,'1021974360','Darell_Celestino');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (294,'Burnie','Cedric','Burnie_Cedric@gmail.com','0000',89,'1068676418','Burnie_Cedric');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (295,'Add','Gertrude','Add_Gertrude@gmail.com','0000',191,'1062918300','Add_Gertrude');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (296,'Carmelo','Elvin','Carmelo_Elvin@gmail.com','0000',899,'1024778437','Carmelo_Elvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (297,'Guy','Lum','Guy_Lum@gmail.com','0000',942,'1009885797','Guy_Lum');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (298,'Parker','Del','Parker_Del@gmail.com','0000',860,'1003793194','Parker_Del');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (299,'Lorin','Joy','Lorin_Joy@gmail.com','0000',565,'1064245935','Lorin_Joy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (300,'Wirt','Izaiah','Wirt_Izaiah@gmail.com','0000',394,'1058228086','Wirt_Izaiah');

---------------------------------------------------
--   END DATA FOR TABLE STUDENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ENROLLMENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ENROLLMENT
Insert into ENROLLMENT (STUDNET_ID,COURSE_ID) values (125,3);
Insert into ENROLLMENT (STUDNET_ID,COURSE_ID) values (125,234);
Insert into ENROLLMENT (STUDNET_ID,COURSE_ID) values (210,13);
Insert into ENROLLMENT (STUDNET_ID,COURSE_ID) values (210,131);

---------------------------------------------------
--   END DATA FOR TABLE ENROLLMENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE COURSE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into COURSE
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (22,'tatata',1,1,1,3,1,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('24-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (131,'Business Finance',20,4,2,13,406,to_timestamp('29-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('14-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (148,'Business Finance',95,2,1730,12,262,to_timestamp('08-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('21-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (182,'Business Finance',35,1,0,12,363,to_timestamp('09-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('13-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (200,'Musical Instruments',35,2,74,13,391,to_timestamp('12-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('13-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (212,'Business Finance',200,1,658,19,440,to_timestamp('03-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('20-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (234,'Web Development',55,1,3800,12,269,to_timestamp('11-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('12-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (2,'Math',300,2,81,4,1,to_timestamp('12-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('12-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (3,'de7k',5,1,8,5,1,to_timestamp('11-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('11-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (264,'Graphic Design',20,1,4208,19,245,to_timestamp('28-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('20-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (269,'Web Development',0,1,21682,8,380,to_timestamp('04-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('21-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (282,'Business Finance',20,2,6,13,423,to_timestamp('26-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (283,'Graphic Design',20,1,770,8,250,to_timestamp('29-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('12-OCT-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (19,'tatata',2,22,2,1,1,to_timestamp('01-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (13,'ALGO',1,100,0,2,1,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('31-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (12,'asd',12,100,20,2,1,to_timestamp('19-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (14,'OMG',2,200,200,3,1,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (15,'OMG',2,200,200,3,1,to_timestamp('14-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-NOV-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (17,'ay7aga',12,20,2,2,1,to_timestamp('23-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (18,'ay7aga',1,1,1,1,1,to_timestamp('23-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (20,'tatata',1,1,1,3,1,to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('10-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (21,'tatata',2,2,2,3,1,to_timestamp('21-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (23,'11',11,11,11,1,1,to_timestamp('14-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (16,'OMG',2,200,50,3,1,to_timestamp('19-JUN-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('29-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));

---------------------------------------------------
--   END DATA FOR TABLE COURSE
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "COURSE" MODIFY ("COURSE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" MODIFY ("COURSE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" MODIFY ("COST" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" MODIFY ("DURATION_OF_ONE_SESSION" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" MODIFY ("NUM_OF_STUDENTS" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" MODIFY ("NUMBER_OF_SESSIONS" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" MODIFY ("INSTRUCTOR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" MODIFY ("START_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" MODIFY ("END_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "COURSE" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("COURSE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_PK" PRIMARY KEY ("STUDNET_ID", "COURSE_ID") ENABLE;
 
  ALTER TABLE "ENROLLMENT" MODIFY ("STUDNET_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ENROLLMENT" MODIFY ("COURSE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HALL
--------------------------------------------------------

  ALTER TABLE "HALL" ADD CONSTRAINT "HALL_PK" PRIMARY KEY ("HALL_NUM") ENABLE;
 
  ALTER TABLE "HALL" MODIFY ("HALL_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INSTRUCTOR
--------------------------------------------------------

  ALTER TABLE "INSTRUCTOR" ADD CONSTRAINT "INSTRUCTOR_PK" PRIMARY KEY ("INSTRUCTOR_ID") ENABLE;
 
  ALTER TABLE "INSTRUCTOR" ADD CONSTRAINT "INSTRUCTOR_UK1" UNIQUE ("INSTRUCTOR_ID", "EMAIL") ENABLE;
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("INSTRUCTOR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("LASTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" ADD UNIQUE ("EMAIL") ENABLE;
 
  ALTER TABLE "INSTRUCTOR" ADD UNIQUE ("USERNAME") ENABLE;
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("BALANCE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SESSIONS
--------------------------------------------------------

  ALTER TABLE "SESSIONS" ADD CONSTRAINT "SESSIONS_PK" PRIMARY KEY ("SESSION_ID") ENABLE;
 
  ALTER TABLE "SESSIONS" MODIFY ("SESSION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SESSIONS" MODIFY ("COURSE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SESSIONS" MODIFY ("HALL_NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SESSIONS" MODIFY ("START_HOUR" NOT NULL ENABLE);
 
  ALTER TABLE "SESSIONS" MODIFY ("SESSION_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT" ADD CONSTRAINT "STUDENT_PK" PRIMARY KEY ("STUDENT_ID") ENABLE;
 
  ALTER TABLE "STUDENT" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("LASTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("BALANCE" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" ADD UNIQUE ("EMAIL") ENABLE;
 
  ALTER TABLE "STUDENT" ADD UNIQUE ("USERNAME") ENABLE;
--------------------------------------------------------
--  DDL for Index ENROLLMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENROLLMENT_PK" ON "ENROLLMENT" ("STUDNET_ID", "COURSE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index HALL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HALL_PK" ON "HALL" ("HALL_NUM") 
  ;
--------------------------------------------------------
--  DDL for Index INSTRUCTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INSTRUCTOR_PK" ON "INSTRUCTOR" ("INSTRUCTOR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INSTRUCTOR_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "INSTRUCTOR_UK1" ON "INSTRUCTOR" ("INSTRUCTOR_ID", "EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index SESSIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SESSIONS_PK" ON "SESSIONS" ("SESSION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index STUDENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STUDENT_PK" ON "STUDENT" ("STUDENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TABLE1_PK" ON "COURSE" ("COURSE_ID") 
  ;
--------------------------------------------------------
--  Ref Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "COURSE" ADD CONSTRAINT "COURSE_INSTRUCTOR_FK1" FOREIGN KEY ("INSTRUCTOR_ID")
	  REFERENCES "INSTRUCTOR" ("INSTRUCTOR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_COURSE_FK1" FOREIGN KEY ("COURSE_ID")
	  REFERENCES "COURSE" ("COURSE_ID") ENABLE;
 
  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_STUDENT_FK1" FOREIGN KEY ("STUDNET_ID")
	  REFERENCES "STUDENT" ("STUDENT_ID") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table SESSIONS
--------------------------------------------------------

  ALTER TABLE "SESSIONS" ADD CONSTRAINT "SESSIONS_COURSE_FK1" FOREIGN KEY ("COURSE_ID")
	  REFERENCES "COURSE" ("COURSE_ID") ENABLE;
 
  ALTER TABLE "SESSIONS" ADD CONSTRAINT "SESSIONS_HALL_FK1" FOREIGN KEY ("HALL_NUM")
	  REFERENCES "HALL" ("HALL_NUM") ENABLE;

--------------------------------------------------------
--  DDL for Procedure ADD_SESSIONS_IN_INTERVAL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADD_SESSIONS_IN_INTERVAL" (courseid in Course.Course_Id%Type ,SessionDay in Date ,starttime in sessions.start_hour%type,hallId in integer ,sucess out integer )
is 
curday Date ;
tmp date;
enddate Date;
beg Date;
cnt INTEGER;
begin
select cc.start_date ,cc.end_date   into tmp ,enddate  from course cc where cc.course_id=courseid;
curday:= sessionday;
select greatest(sessionday, tmp) into curday  from dual;
select greatest(curday, sysdate) into curday  from dual;
beg:=curday;

while curday<=enddate LOOP
    insert into sessions values(sessions_id_seq.nextval,courseid,hallid,starttime,curday);
    curday:=curday+7;
end loop;
sucess:=1;
end add_sessions_in_interval;

/

--------------------------------------------------------
--  DDL for Procedure CHECK_CONT_IN_INSTR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CHECK_CONT_IN_INSTR" (start_date in DATE ,end_date in DATE,SessionDay in Date ,starttime in sessions.start_hour%type,hallId in integer,inst_id in number ,sucess out integer )
is 
curday Date ;
tmp date;
enddate Date;
beg Date;
cnt INTEGER;
begin
tmp:= start_date;
enddate:= end_date;
curday:= sessionday;
select greatest(sessionday, tmp) into curday  from dual;
beg:=curday;
sucess:=1;
while curday<=enddate LOOP
select count(s.session_id) into cnt from sessions s where s.session_date=curday and s.start_hour= starttime and s.course_id in (select cc.course_id from Course cc where  inst_id= cc.instructor_id);
    --select count(ss.session_id) into cnt  from sessions ss where ss.hall_num=hallid and ss.start_hour = starttime and curday=ss.session_date;
   if cnt>0 then
    sucess :=0;
      exit;
    end if;
    curday:=curday+7;
end loop;
end check_cont_in_instr;

/

--------------------------------------------------------
--  DDL for Procedure CHECK_CONT_IN_SESSIONS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CHECK_CONT_IN_SESSIONS" (start_date in DATE ,end_date in DATE ,SessionDay in Date ,starttime in sessions.start_hour%type,hallId in integer ,sucess out integer )
is 
curday Date ;
tmp date;
enddate Date;
beg Date;
cnt INTEGER;
begin
tmp:= start_date;
enddate:= end_date;
curday:= sessionday;
select greatest(sessionday, tmp) into curday  from dual;
beg:=curday;
sucess:=1;
while curday<=enddate LOOP
    select count(ss.session_id) into cnt  from sessions ss where ss.hall_num=hallid and ss.start_hour = starttime and curday=ss.session_date;
   if cnt>0 then
    sucess :=0;
      exit;
    end if;
    curday:=curday+7;
end loop;
end check_cont_in_sessions;

/

--------------------------------------------------------
--  DDL for Procedure CHECK_CONT_IN_STD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CHECK_CONT_IN_STD" (std_id in number,courseid in number ,sucess out integer )
is 
cnt INTEGER;
begin
sucess:=1;
select count(s.session_id) into cnt from sessions s ,sessions R where r.course_id= courseid and s.course_id in ( select e.course_id from enrollment e where e.studnet_id= std_id) and  r.session_date= s.session_date and r.start_hour= s.start_hour  ; 
   if cnt>0 then
    sucess :=0;
    end if;
end check_cont_in_std;

/

--------------------------------------------------------
--  DDL for Procedure CONFIRM_INSTRUCTOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CONFIRM_INSTRUCTOR" (myemail in VARCHAR2, mypassword out VARCHAR2, mysid out NUMBER)
as
begin
select instructor_id, password
into mysid, mypassword
from instructor 
WHERE email = myemail;
end;

/

--------------------------------------------------------
--  DDL for Procedure CONFIRM_STUDENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CONFIRM_STUDENT" (myemail in VARCHAR2, mypassword out VARCHAR2, mysid out NUMBER)
as
begin
select student_id, password
into mysid, mypassword
from student 
WHERE email = myemail;
end;

/

--------------------------------------------------------
--  DDL for Procedure INSERT_COURSE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_COURSE" (coursen varchar2, s_du NUMBER, cst NUMBER, nst NUMBER, nse NUMBER, ins_id NUMBER, st DATE, endd DATE , idd out INTEGER )
as
tmp INTEGER;
begin
tmp:=COURSE_ID_SEQ.nextval;
idd:=tmp;
insert into course(COURSE_ID, COURSE_NAME, COST, DURATION_OF_ONE_SESSION, NUM_OF_STUDENTS, NUMBER_OF_SESSIONS, INSTRUCTOR_ID, START_DATE, END_DATE) 
    VALUES (tmp, coursen, cst, s_du, nst, nse, ins_id, st, endd);
end;

/

--------------------------------------------------------
--  DDL for Procedure INSERT_STUDENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_STUDENT" (usern VARCHAR2, firstn varchar2, lastn varchar2, phone varchar, em varchar2, bal NUMBER)
as 
begin
insert into student(student_id,username, firstname, lastname, mobile_number, email, BALANCE ) VALUES (student_id_seq.nextval, usern, firstn, lastn,phone, em, bal);
end;

/

--------------------------------------------------------
--  DDL for Procedure INSTRUCTORCOURSES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSTRUCTORCOURSES" 
( ID IN NUMBER
, Course OUT SYS_REFCURSOR
) AS
BEGIN
  open course for 
  SELECT cs.COURSE_NAME from course cs
  where ID = cs.INSTRUCTOR_ID;
END INSTRUCTORCOURSES;

/

--------------------------------------------------------
--  DDL for Procedure NEXTSESSION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NEXTSESSION" 
( instID IN NUMBER
, nextDate OUT sys_refcursor
) AS
BEGIN
  open nextdate for 
  select Session_date, start_hour 
  from  sessions
  where session_date >= current_date and course_id in (SELECT cs.course_id 
                    FROM course cs
                    WHERE cs.instructor_id = instID);
END NEXTSESSION;

/

--------------------------------------------------------
--  DDL for Procedure RETURN_ENROLLED_COURSES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "RETURN_ENROLLED_COURSES" 
(id number, cur out sys_refcursor)
as
begin
open cur for
select c.instructor_id, c.course_name 
from course c,enrollment e
where c.course_id = e.course_id and e.studnet_id=id;
End ;

/

--------------------------------------------------------
--  DDL for Procedure UPDATE_BALANCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "UPDATE_BALANCE" (stid NUMBER, new_balance NUMBER)
as 
begin
UPDATE student
set balance = balance + new_balance
where student_id = stid;
end;

/

