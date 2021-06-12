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

   CREATE SEQUENCE  "COURSE_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 525 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HALL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HALL_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INSTRUCTOR_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INSTRUCTOR_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2003 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQID"  MINVALUE 1 MAXVALUE 200 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SESSIONS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SESSIONS_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 255 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000 INCREMENT BY 1 START WITH 1523 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ACTORS
--------------------------------------------------------

  CREATE TABLE "ACTORS" 
   (	"ACTORID" NUMBER(10,0), 
	"ACTORNAME" VARCHAR2(20), 
	"GENDER" VARCHAR2(1)
   ) ;
--------------------------------------------------------
--  DDL for Table BONUS
--------------------------------------------------------

  CREATE TABLE "BONUS" 
   (	"ENAME" VARCHAR2(10), 
	"JOB" VARCHAR2(9), 
	"SAL" NUMBER, 
	"COMM" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table COURSE
--------------------------------------------------------

  CREATE TABLE "COURSE" 
   (	"COURSE_ID" NUMBER, 
	"COURSE_NAME" VARCHAR2(20), 
	"COST" NUMBER, 
	"DURATION_OF_ONE_SESSION" NUMBER DEFAULT 2, 
	"NUM_OF_STUDENTS" NUMBER DEFAULT 0, 
	"NUMBER_OF_SESSIONS" NUMBER, 
	"INSTRUCTOR_ID" NUMBER, 
	"START_DATE" DATE, 
	"END_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table DEPT
--------------------------------------------------------

  CREATE TABLE "DEPT" 
   (	"DEPTNO" NUMBER(2,0), 
	"DNAME" VARCHAR2(14), 
	"LOC" VARCHAR2(13)
   ) ;
--------------------------------------------------------
--  DDL for Table EMP
--------------------------------------------------------

  CREATE TABLE "EMP" 
   (	"EMPNO" NUMBER(4,0), 
	"ENAME" VARCHAR2(10), 
	"JOB" VARCHAR2(9), 
	"MGR" NUMBER(4,0), 
	"HIREDATE" DATE, 
	"SAL" NUMBER(7,2), 
	"COMM" NUMBER(7,2), 
	"DEPTNO" NUMBER(2,0)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "EMPLOYEES" 
   (	"NAMES" VARCHAR2(10), 
	"JOBS" VARCHAR2(10), 
	"AGE" NUMBER(2,0), 
	"DEPID" NUMBER, 
	"GENDER" CHAR(1), 
	"SKILL" CHAR(3), 
	"ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ENROLLMENT
--------------------------------------------------------

  CREATE TABLE "ENROLLMENT" 
   (	"STUDNET_ID" NUMBER, 
	"COURSE_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table FILMACTORS
--------------------------------------------------------

  CREATE TABLE "FILMACTORS" 
   (	"FILMID" NUMBER(10,0), 
	"ACTORID" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table FILMCATEGORY
--------------------------------------------------------

  CREATE TABLE "FILMCATEGORY" 
   (	"CATEGORYID" NUMBER(3,0), 
	"CATEGORYNAME" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table FILMCOPIES
--------------------------------------------------------

  CREATE TABLE "FILMCOPIES" 
   (	"COPYID" NUMBER(5,0), 
	"FILMID" NUMBER(10,0), 
	"CURRENTLYRENTED" CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table FILMTITLES
--------------------------------------------------------

  CREATE TABLE "FILMTITLES" 
   (	"FILMID" NUMBER(10,0), 
	"FILMTITLE" VARCHAR2(50), 
	"RELEASEDATE" DATE, 
	"FILMDURATION" NUMBER(3,0), 
	"FILMCATEGORYID" NUMBER(3,0)
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
   (	"INSTRCUTOR_ID" NUMBER, 
	"FIRSTNAME" VARCHAR2(20), 
	"LASTNAME" VARCHAR2(20), 
	"EMAIL" VARCHAR2(50), 
	"PASSWORD" VARCHAR2(20), 
	"BALANCE" NUMBER DEFAULT 0, 
	"MOBILE_NUMBER" NUMBER DEFAULT 0, 
	"USERNAME" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBERS
--------------------------------------------------------

  CREATE TABLE "MEMBERS" 
   (	"MEMBERID" NUMBER(10,0), 
	"MEMNAME" VARCHAR2(20), 
	"JOINDATE" DATE, 
	"DOB" DATE, 
	"PHONE" NUMBER(12,0)
   ) ;
--------------------------------------------------------
--  DDL for Table RENTALS
--------------------------------------------------------

  CREATE TABLE "RENTALS" 
   (	"RENTID" NUMBER(10,0), 
	"MEMBERID" NUMBER(10,0), 
	"COPYID" NUMBER(5,0), 
	"DATERENTED" DATE, 
	"DATEDUEBACK" DATE, 
	"RENTALCOST" NUMBER(5,0), 
	"OVERDUECOST" NUMBER(5,0), 
	"RETURNEDDATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SALGRADE
--------------------------------------------------------

  CREATE TABLE "SALGRADE" 
   (	"GRADE" NUMBER, 
	"LOSAL" NUMBER, 
	"HISAL" NUMBER
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
   (	"STUDENT_ID" NUMBER, 
	"FIRSTNAME" VARCHAR2(20), 
	"LASTNAME" VARCHAR2(20), 
	"EMAIL" VARCHAR2(50), 
	"PASSWORD" VARCHAR2(20) DEFAULT '0000', 
	"BALANCE" NUMBER, 
	"MOBILE_NUMBER" NUMBER DEFAULT 0, 
	"USERNAME" VARCHAR2(20)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE EMPLOYEES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPLOYEES

---------------------------------------------------
--   END DATA FOR TABLE EMPLOYEES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ENROLLMENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ENROLLMENT
Insert into ENROLLMENT (STUDNET_ID,COURSE_ID) values (3,1);
Insert into ENROLLMENT (STUDNET_ID,COURSE_ID) values (3,2);
Insert into ENROLLMENT (STUDNET_ID,COURSE_ID) values (3,3);

---------------------------------------------------
--   END DATA FOR TABLE ENROLLMENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE BONUS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BONUS

---------------------------------------------------
--   END DATA FOR TABLE BONUS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE FILMCOPIES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into FILMCOPIES

---------------------------------------------------
--   END DATA FOR TABLE FILMCOPIES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE INSTRUCTOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into INSTRUCTOR
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (93,'Auriel','Lennyn','Auriel_Lennyn@gmail.','9yahom_6rab',5056,1505141070,'Auriel_Lennyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (94,'Diyaan','Stevin','Diyaan_Stevin@gmail.','9yahom_6rab',1421,1056426777,'Diyaan_Stevin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (95,'Stone','Narek','Stone_Narek@gmail.co','9yahom_6rab',962,1128024159,'Stone_Narek');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (96,'Vishwak','Amour','Vishwak_Amour@gmail.','9yahom_6rab',2827,1033869446,'Vishwak_Amour');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (97,'Yoandri','Messiah','Yoandri_Messiah@gmai','9yahom_6rab',731,1033192225,'Yoandri_Messiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (98,'Hughston','Oryan','Hughston_Oryan@gmail','9yahom_6rab',2365,1008715096,'Hughston_Oryan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (99,'Ramzi','Kovi','Ramzi_Kovi@gmail.com','9yahom_6rab',1356,1100961508,'Ramzi_Kovi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (100,'Revaan','Arsenio','Revaan_Arsenio@gmail','9yahom_6rab',2207,1269220518,'Revaan_Arsenio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (101,'Brett','Keylor','Brett_Keylor@gmail.c','9yahom_6rab',8708,1529465337,'Brett_Keylor');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (102,'Riggs','Alhaji','Riggs_Alhaji@gmail.c','9yahom_6rab',8018,1173122314,'Riggs_Alhaji');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (103,'Kasim','Enzo','Kasim_Enzo@gmail.com','9yahom_6rab',1115,1058984905,'Kasim_Enzo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (104,'Trevion','Churchill','Trevion_Churchill@gm','9yahom_6rab',9854,1216606279,'Trevion_Churchill');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (105,'Ben','Osyris','Ben_Osyris@gmail.com','9yahom_6rab',4569,1083099326,'Ben_Osyris');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (106,'Knox','Oryon','Knox_Oryon@gmail.com','9yahom_6rab',552,1280607265,'Knox_Oryon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (107,'Kasten','Kaon','Kasten_Kaon@gmail.co','9yahom_6rab',1750,1535209633,'Kasten_Kaon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (108,'Nahmir','Jeffery','Nahmir_Jeffery@gmail','9yahom_6rab',5879,1545616965,'Nahmir_Jeffery');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (109,'Kahleb','Derrell','Kahleb_Derrell@gmail','9yahom_6rab',9139,1546223431,'Kahleb_Derrell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (110,'Rylend','Xi','Rylend_Xi@gmail.com','9yahom_6rab',3989,1237846635,'Rylend_Xi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (111,'Adoni','Marcelo','Adoni_Marcelo@gmail.','9yahom_6rab',2126,1509271788,'Adoni_Marcelo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (112,'Lior','Kaikoa','Lior_Kaikoa@gmail.co','9yahom_6rab',6674,1030581392,'Lior_Kaikoa');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (113,'Eamonn','Knoll','Eamonn_Knoll@gmail.c','9yahom_6rab',6422,1281979207,'Eamonn_Knoll');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (114,'Georges','Sparrow','Georges_Sparrow@gmai','9yahom_6rab',1045,1585780669,'Georges_Sparrow');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (115,'Shahwaiz','Abubakr','Shahwaiz_Abubakr@gma','9yahom_6rab',4883,1234998786,'Shahwaiz_Abubakr');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (116,'Brodee','Clifford','Brodee_Clifford@gmai','9yahom_6rab',6384,1195782615,'Brodee_Clifford');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (117,'Keston','Landrick','Keston_Landrick@gmai','9yahom_6rab',7537,1514179278,'Keston_Landrick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (118,'Davies','Ioannis','Davies_Ioannis@gmail','9yahom_6rab',937,1188919380,'Davies_Ioannis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (119,'Trent','Henrik','Trent_Henrik@gmail.c','9yahom_6rab',1166,1209285305,'Trent_Henrik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (120,'Gedalia','Kalim','Gedalia_Kalim@gmail.','9yahom_6rab',6301,1565011876,'Gedalia_Kalim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (121,'Baldemar','Kawan','Baldemar_Kawan@gmail','9yahom_6rab',9181,1142488896,'Baldemar_Kawan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (122,'Cypress','Tadgh','Cypress_Tadgh@gmail.','9yahom_6rab',1595,1195759462,'Cypress_Tadgh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (123,'Jawon','Jusiah','Jawon_Jusiah@gmail.c','9yahom_6rab',9380,1189163217,'Jawon_Jusiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (124,'Elam','Sevan','Elam_Sevan@gmail.com','9yahom_6rab',2969,1088119507,'Elam_Sevan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (125,'Navon','Kiren','Navon_Kiren@gmail.co','9yahom_6rab',3154,1011760092,'Navon_Kiren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (126,'Olivander','Broxton','Olivander_Broxton@gm','9yahom_6rab',9092,1137169336,'Olivander_Broxton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (127,'Izmael','Patricio','Izmael_Patricio@gmai','9yahom_6rab',6941,1559485504,'Izmael_Patricio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (128,'Lenoxx','Aariz','Lenoxx_Aariz@gmail.c','9yahom_6rab',6766,1072303804,'Lenoxx_Aariz');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (129,'Hesston','Zalen','Hesston_Zalen@gmail.','9yahom_6rab',3926,1121065456,'Hesston_Zalen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (130,'Zakk','Sebashtian','Zakk_Sebashtian@gmai','9yahom_6rab',2201,1162797337,'Zakk_Sebashtian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (131,'Rozen','Nikash','Rozen_Nikash@gmail.c','9yahom_6rab',4291,1290015219,'Rozen_Nikash');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (132,'Elpidio','Jake','Elpidio_Jake@gmail.c','9yahom_6rab',5753,1157259105,'Elpidio_Jake');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (133,'Kendrix','Cage','Kendrix_Cage@gmail.c','9yahom_6rab',6239,1002495180,'Kendrix_Cage');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (134,'Rishav','Dallan','Rishav_Dallan@gmail.','9yahom_6rab',4044,1011525739,'Rishav_Dallan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (135,'Caedmon','Everest','Caedmon_Everest@gmai','9yahom_6rab',6566,1563693678,'Caedmon_Everest');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (136,'Callum','Captain','Callum_Captain@gmail','9yahom_6rab',4015,1545519848,'Callum_Captain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (137,'Malachai','Sergio','Malachai_Sergio@gmai','9yahom_6rab',5608,1028725892,'Malachai_Sergio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (138,'Gurnav','Vasudev','Gurnav_Vasudev@gmail','9yahom_6rab',7038,1160737705,'Gurnav_Vasudev');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (139,'Ulric','Ariyan','Ulric_Ariyan@gmail.c','9yahom_6rab',5337,1086724461,'Ulric_Ariyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (140,'Kudus','Zamari','Kudus_Zamari@gmail.c','9yahom_6rab',2056,1087113415,'Kudus_Zamari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (141,'San','Candido','San_Candido@gmail.co','9yahom_6rab',7073,1234805191,'San_Candido');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (142,'Kymani','Nori','Kymani_Nori@gmail.co','9yahom_6rab',3440,1279254004,'Kymani_Nori');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (143,'Lasalle','Syed','Lasalle_Syed@gmail.c','9yahom_6rab',7042,1118888108,'Lasalle_Syed');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (144,'Kyros','Kham','Kyros_Kham@gmail.com','9yahom_6rab',3990,1012491519,'Kyros_Kham');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (145,'Lyonel','Decklan','Lyonel_Decklan@gmail','9yahom_6rab',2280,1229430003,'Lyonel_Decklan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (146,'Savva','Legion','Savva_Legion@gmail.c','9yahom_6rab',1028,1552893417,'Savva_Legion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (147,'Leobardo','Aevin','Leobardo_Aevin@gmail','9yahom_6rab',9088,1510826089,'Leobardo_Aevin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (148,'Kalen','Kadeen','Kalen_Kadeen@gmail.c','9yahom_6rab',5400,1286562032,'Kalen_Kadeen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (149,'Horatio','Chance','Horatio_Chance@gmail','9yahom_6rab',7129,1062397609,'Horatio_Chance');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (150,'Cristoval','Alexavier','Cristoval_Alexavier@','9yahom_6rab',7423,1038419208,'Cristoval_Alexavier');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (151,'Wallace','Kartikeya','Wallace_Kartikeya@gm','9yahom_6rab',9190,1199604576,'Wallace_Kartikeya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (152,'Dawoud','Rayman','Dawoud_Rayman@gmail.','9yahom_6rab',6655,1247731126,'Dawoud_Rayman');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (153,'Muktar','Emerich','Muktar_Emerich@gmail','9yahom_6rab',6057,1220854318,'Muktar_Emerich');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (154,'Yaya','Frederico','Yaya_Frederico@gmail','9yahom_6rab',6568,1589707055,'Yaya_Frederico');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (155,'Jakhel','Ehan','Jakhel_Ehan@gmail.co','9yahom_6rab',3495,1228117015,'Jakhel_Ehan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (156,'Lydon','Neri','Lydon_Neri@gmail.com','9yahom_6rab',4792,1274707612,'Lydon_Neri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (157,'Kaisen','Elin','Kaisen_Elin@gmail.co','9yahom_6rab',8069,1171980845,'Kaisen_Elin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (158,'Amahri','Anthoni','Amahri_Anthoni@gmail','9yahom_6rab',9798,1277746739,'Amahri_Anthoni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (159,'Kohlson','Makael','Kohlson_Makael@gmail','9yahom_6rab',4320,1546916296,'Kohlson_Makael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (160,'Dacorey','Jakori','Dacorey_Jakori@gmail','9yahom_6rab',3209,1211783388,'Dacorey_Jakori');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (161,'Darian','Chayson','Darian_Chayson@gmail','9yahom_6rab',4993,1029058308,'Darian_Chayson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (162,'Hiram','Roee','Hiram_Roee@gmail.com','9yahom_6rab',948,1275273100,'Hiram_Roee');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (163,'Loyal','Derin','Loyal_Derin@gmail.co','9yahom_6rab',7005,1587128474,'Loyal_Derin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (164,'Ridwan','Kemarion','Ridwan_Kemarion@gmai','9yahom_6rab',4044,1580355891,'Ridwan_Kemarion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (165,'Malique','Rama','Malique_Rama@gmail.c','9yahom_6rab',6729,1211177927,'Malique_Rama');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (166,'Eknoor','Aleki','Eknoor_Aleki@gmail.c','9yahom_6rab',9230,1080085934,'Eknoor_Aleki');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (167,'Tyris','Wali','Tyris_Wali@gmail.com','9yahom_6rab',9418,1535051446,'Tyris_Wali');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (168,'Roney','Olasubomi','Roney_Olasubomi@gmai','9yahom_6rab',3071,1170317375,'Roney_Olasubomi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (169,'Jailyn','Gurbaaj','Jailyn_Gurbaaj@gmail','9yahom_6rab',4509,1279433251,'Jailyn_Gurbaaj');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (170,'Kysyn','Hezeki','Kysyn_Hezeki@gmail.c','9yahom_6rab',9976,1266978220,'Kysyn_Hezeki');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (171,'Dailon','Zyler','Dailon_Zyler@gmail.c','9yahom_6rab',966,1053045143,'Dailon_Zyler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (172,'Cypher','Wyman','Cypher_Wyman@gmail.c','9yahom_6rab',5135,1107282555,'Cypher_Wyman');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (173,'Ishir','Warren','Ishir_Warren@gmail.c','9yahom_6rab',6909,1502912326,'Ishir_Warren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (174,'Jaisen','Grimm','Jaisen_Grimm@gmail.c','9yahom_6rab',7160,1058022751,'Jaisen_Grimm');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (175,'Onur','Kalonji','Onur_Kalonji@gmail.c','9yahom_6rab',2040,1058725932,'Onur_Kalonji');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (176,'Destine','Shun','Destine_Shun@gmail.c','9yahom_6rab',748,1500647442,'Destine_Shun');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (177,'Zakir','Fredi','Zakir_Fredi@gmail.co','9yahom_6rab',5309,1229602783,'Zakir_Fredi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (178,'Delvin','Davyn','Delvin_Davyn@gmail.c','9yahom_6rab',787,1141341476,'Delvin_Davyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (179,'Devesh','Nayib','Devesh_Nayib@gmail.c','9yahom_6rab',6339,1269916241,'Devesh_Nayib');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (180,'Abe','Amir','Abe_Amir@gmail.com','9yahom_6rab',6943,1162765072,'Abe_Amir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (181,'Macklyn','Jakobii','Macklyn_Jakobii@gmai','9yahom_6rab',4146,1298166001,'Macklyn_Jakobii');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (182,'Cahari','Constantino','Cahari_Constantino@g','9yahom_6rab',9340,1559462148,'Cahari_Constantino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1,'Ahmed','Salah','tatata','111111',3322,10101010101,null);
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (183,'Matt','Vartan','Matt_Vartan@gmail.co','9yahom_6rab',9217,1049623059,'Matt_Vartan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (184,'Giovonni','Vuk','Giovonni_Vuk@gmail.c','9yahom_6rab',3090,1182692735,'Giovonni_Vuk');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (185,'Dearrius','Kennen','Dearrius_Kennen@gmai','9yahom_6rab',4254,1519683521,'Dearrius_Kennen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (186,'Kaelen','Ro','Kaelen_Ro@gmail.com','9yahom_6rab',8537,1238710135,'Kaelen_Ro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (187,'Karriem','Aundre','Karriem_Aundre@gmail','9yahom_6rab',3119,1551925072,'Karriem_Aundre');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (188,'Elizeo','Samir','Elizeo_Samir@gmail.c','9yahom_6rab',645,1505158213,'Elizeo_Samir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (189,'Stefon','Deklin','Stefon_Deklin@gmail.','9yahom_6rab',5557,1592437081,'Stefon_Deklin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (190,'Livingston','Angel','Livingston_Angel@gma','9yahom_6rab',8476,1143225486,'Livingston_Angel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (191,'Jameshenry','Aspyn','Jameshenry_Aspyn@gma','9yahom_6rab',8961,1262836182,'Jameshenry_Aspyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (192,'Yves','Eric','Yves_Eric@gmail.com','9yahom_6rab',1669,1030725724,'Yves_Eric');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (193,'Taelyn','Calvyn','Taelyn_Calvyn@gmail.','9yahom_6rab',3625,1111039275,'Taelyn_Calvyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (194,'Morrison','Geno','Morrison_Geno@gmail.','9yahom_6rab',819,1278824823,'Morrison_Geno');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (195,'Nicko','Great','Nicko_Great@gmail.co','9yahom_6rab',4780,1218723657,'Nicko_Great');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (196,'Parsa','Kainyn','Parsa_Kainyn@gmail.c','9yahom_6rab',1203,1209017481,'Parsa_Kainyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (197,'Nyheem','Lealand','Nyheem_Lealand@gmail','9yahom_6rab',3293,1019102654,'Nyheem_Lealand');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (198,'Derrius','Hinson','Derrius_Hinson@gmail','9yahom_6rab',2939,1533748068,'Derrius_Hinson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (199,'Kaenan','Brockton','Kaenan_Brockton@gmai','9yahom_6rab',2291,1276759648,'Kaenan_Brockton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (200,'Nassim','Keimoni','Nassim_Keimoni@gmail','9yahom_6rab',3501,1032922846,'Nassim_Keimoni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (201,'Beshoy','Denahi','Beshoy_Denahi@gmail.','9yahom_6rab',1418,1573512404,'Beshoy_Denahi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (202,'Lancelot','Stetson','Lancelot_Stetson@gma','9yahom_6rab',5995,1517555286,'Lancelot_Stetson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (203,'Yareth','Ruairi','Yareth_Ruairi@gmail.','9yahom_6rab',6974,1565346639,'Yareth_Ruairi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (204,'Chaden','Khylo','Chaden_Khylo@gmail.c','9yahom_6rab',2635,1532133213,'Chaden_Khylo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (205,'Ramadan','Zac','Ramadan_Zac@gmail.co','9yahom_6rab',6112,1186193758,'Ramadan_Zac');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (206,'Sruly','Alyus','Sruly_Alyus@gmail.co','9yahom_6rab',1835,1255922410,'Sruly_Alyus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (207,'Marcelous','Candon','Marcelous_Candon@gma','9yahom_6rab',6859,1190904988,'Marcelous_Candon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (208,'Endy','Dyami','Endy_Dyami@gmail.com','9yahom_6rab',1988,1505138432,'Endy_Dyami');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (209,'Niccolo','Brasen','Niccolo_Brasen@gmail','9yahom_6rab',6831,1299892577,'Niccolo_Brasen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (210,'Jesaiah','Mahzi','Jesaiah_Mahzi@gmail.','9yahom_6rab',6580,1151854169,'Jesaiah_Mahzi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (211,'Olin','Aires','Olin_Aires@gmail.com','9yahom_6rab',2145,1028473143,'Olin_Aires');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (212,'Coal','Eithan','Coal_Eithan@gmail.co','9yahom_6rab',8493,1556469430,'Coal_Eithan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (213,'Dempsey','Walter','Dempsey_Walter@gmail','9yahom_6rab',2478,1138074012,'Dempsey_Walter');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (214,'Mal','Jiel','Mal_Jiel@gmail.com','9yahom_6rab',1867,1026287316,'Mal_Jiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (215,'Isaiha','Romie','Isaiha_Romie@gmail.c','9yahom_6rab',8238,1065870108,'Isaiha_Romie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (216,'Zavian','Demarious','Zavian_Demarious@gma','9yahom_6rab',635,1513199065,'Zavian_Demarious');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (217,'Ayomiposi','Statler','Ayomiposi_Statler@gm','9yahom_6rab',8941,1547005861,'Ayomiposi_Statler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (218,'Edgard','Keefer','Edgard_Keefer@gmail.','9yahom_6rab',5240,1569222500,'Edgard_Keefer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (219,'Thor','Utah','Thor_Utah@gmail.com','9yahom_6rab',7530,1235528407,'Thor_Utah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (220,'Cesar','Finton','Cesar_Finton@gmail.c','9yahom_6rab',626,1200839052,'Cesar_Finton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (221,'Eathan','Dalyn','Eathan_Dalyn@gmail.c','9yahom_6rab',7969,1259516397,'Eathan_Dalyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (222,'Fitzroy','Akhai','Fitzroy_Akhai@gmail.','9yahom_6rab',1343,1118029379,'Fitzroy_Akhai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (223,'Akeen','Jessejames','Akeen_Jessejames@gma','9yahom_6rab',5076,1044133125,'Akeen_Jessejames');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (224,'Esaias','Zackery','Esaias_Zackery@gmail','9yahom_6rab',899,1173179184,'Esaias_Zackery');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (225,'Freddy','Keshav','Freddy_Keshav@gmail.','9yahom_6rab',2498,1100548817,'Freddy_Keshav');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (226,'Davide','Aurelio','Davide_Aurelio@gmail','9yahom_6rab',4709,1136263351,'Davide_Aurelio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (227,'Ishaan','Lewi','Ishaan_Lewi@gmail.co','9yahom_6rab',6543,1011796155,'Ishaan_Lewi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (228,'Tyree','Verse','Tyree_Verse@gmail.co','9yahom_6rab',5872,1087727364,'Tyree_Verse');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (229,'Viraansh','Jabarri','Viraansh_Jabarri@gma','9yahom_6rab',5226,1583995873,'Viraansh_Jabarri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (230,'Gideon','Demarii','Gideon_Demarii@gmail','9yahom_6rab',6862,1270845434,'Gideon_Demarii');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (231,'Abhik','Solace','Abhik_Solace@gmail.c','9yahom_6rab',4595,1540011477,'Abhik_Solace');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (232,'Andy','Smayan','Andy_Smayan@gmail.co','9yahom_6rab',5587,1513516275,'Andy_Smayan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (233,'Oden','Arjen','Oden_Arjen@gmail.com','9yahom_6rab',8660,1543413111,'Oden_Arjen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (234,'Trigger','Nikolas','Trigger_Nikolas@gmai','9yahom_6rab',6176,1281410404,'Trigger_Nikolas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (235,'Joaopedro','Bivan','Joaopedro_Bivan@gmai','9yahom_6rab',2144,1598366897,'Joaopedro_Bivan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (236,'Kyrei','Amartya','Kyrei_Amartya@gmail.','9yahom_6rab',7750,1167285429,'Kyrei_Amartya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (237,'Johnhenry','Jabraylon','Johnhenry_Jabraylon@','9yahom_6rab',1389,1196975234,'Johnhenry_Jabraylon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (238,'Hatch','Ikeem','Hatch_Ikeem@gmail.co','9yahom_6rab',3418,1092739347,'Hatch_Ikeem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (239,'Kiza','Milan','Kiza_Milan@gmail.com','9yahom_6rab',1210,1059189854,'Kiza_Milan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (240,'Mosi','Miloh','Mosi_Miloh@gmail.com','9yahom_6rab',4640,1123889437,'Mosi_Miloh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (241,'Chastin','Haris','Chastin_Haris@gmail.','9yahom_6rab',3887,1111655759,'Chastin_Haris');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (242,'Yaphet','Faustino','Yaphet_Faustino@gmai','9yahom_6rab',9633,1092642677,'Yaphet_Faustino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (243,'Tyden','Aysen','Tyden_Aysen@gmail.co','9yahom_6rab',4369,1505928164,'Tyden_Aysen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (244,'Aryo','Sterling','Aryo_Sterling@gmail.','9yahom_6rab',8289,1092422329,'Aryo_Sterling');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (245,'Juancarlos','Leovanni','Juancarlos_Leovanni@','9yahom_6rab',7669,1178651805,'Juancarlos_Leovanni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (246,'Mads','Eliano','Mads_Eliano@gmail.co','9yahom_6rab',6706,1017044670,'Mads_Eliano');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (247,'Temidayo','Arlando','Temidayo_Arlando@gma','9yahom_6rab',4962,1074692597,'Temidayo_Arlando');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (248,'Krishav','Salmaan','Krishav_Salmaan@gmai','9yahom_6rab',2883,1190184499,'Krishav_Salmaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (249,'Jathan','Leonell','Jathan_Leonell@gmail','9yahom_6rab',9506,1132152082,'Jathan_Leonell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (250,'Shakeem','Jermain','Shakeem_Jermain@gmai','9yahom_6rab',9578,1501277681,'Shakeem_Jermain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (251,'Tuck','Goku','Tuck_Goku@gmail.com','9yahom_6rab',5407,1182668653,'Tuck_Goku');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (252,'Khyrie','Oluwatamilore','Khyrie_Oluwatamilore','9yahom_6rab',6348,1038352087,'Khyrie_Oluwatamilore');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (253,'Siddhant','Yuval','Siddhant_Yuval@gmail','9yahom_6rab',6740,1053605577,'Siddhant_Yuval');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (254,'Deyvi','Trashawn','Deyvi_Trashawn@gmail','9yahom_6rab',7006,1263881580,'Deyvi_Trashawn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (255,'Linford','Luthor','Linford_Luthor@gmail','9yahom_6rab',1709,1557379832,'Linford_Luthor');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (256,'Jaylen','Semajay','Jaylen_Semajay@gmail','9yahom_6rab',6859,1518839826,'Jaylen_Semajay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (257,'Muhammadyusuf','Dontae','Muhammadyusuf_Dontae','9yahom_6rab',7437,1527347417,'Muhammadyusuf_Dontae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (258,'Parrish','Ward','Parrish_Ward@gmail.c','9yahom_6rab',3491,1003949067,'Parrish_Ward');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (259,'Yamir','Gino','Yamir_Gino@gmail.com','9yahom_6rab',4777,1278160066,'Yamir_Gino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (260,'Arnoldo','Prince','Arnoldo_Prince@gmail','9yahom_6rab',8842,1071800006,'Arnoldo_Prince');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (261,'Zach','Leilani','Zach_Leilani@gmail.c','9yahom_6rab',1359,1164539592,'Zach_Leilani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (262,'Philopater','Jibraeel','Philopater_Jibraeel@','9yahom_6rab',5852,1297367155,'Philopater_Jibraeel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (263,'Lovell','Syere','Lovell_Syere@gmail.c','9yahom_6rab',9747,1533284908,'Lovell_Syere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (264,'Demoni','Parkerjames','Demoni_Parkerjames@g','9yahom_6rab',4384,1513002096,'Demoni_Parkerjames');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (265,'Sirius','Tyshawn','Sirius_Tyshawn@gmail','9yahom_6rab',524,1046127630,'Sirius_Tyshawn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (266,'Mezziah','Nykolas','Mezziah_Nykolas@gmai','9yahom_6rab',3693,1163590167,'Mezziah_Nykolas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (267,'Skylen','Odis','Skylen_Odis@gmail.co','9yahom_6rab',5509,1167967936,'Skylen_Odis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (268,'Thorbjorn','Yonatan','Thorbjorn_Yonatan@gm','9yahom_6rab',5672,1598859607,'Thorbjorn_Yonatan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (269,'Cipriano','Habeeb','Cipriano_Habeeb@gmai','9yahom_6rab',9580,1093368963,'Cipriano_Habeeb');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (270,'Elija','Tesean','Elija_Tesean@gmail.c','9yahom_6rab',5964,1142095853,'Elija_Tesean');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (362,'Enki','Abdalrahman','Enki_Abdalrahman@gma','9yahom_6rab',4817,1186133916,'Enki_Abdalrahman');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (363,'Kovyn','Raycen','Kovyn_Raycen@gmail.c','9yahom_6rab',1086,1515337615,'Kovyn_Raycen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (364,'Javi','Kenrick','Javi_Kenrick@gmail.c','9yahom_6rab',9394,1530465507,'Javi_Kenrick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (365,'Colt','Jackson','Colt_Jackson@gmail.c','9yahom_6rab',4018,1025728298,'Colt_Jackson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (366,'Terez','Gareth','Terez_Gareth@gmail.c','9yahom_6rab',1763,1074763219,'Terez_Gareth');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (367,'Sartaj','Arcadian','Sartaj_Arcadian@gmai','9yahom_6rab',6048,1041677330,'Sartaj_Arcadian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (368,'Omarian','Imari','Omarian_Imari@gmail.','9yahom_6rab',8133,1024392106,'Omarian_Imari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (369,'Rajvir','Axl','Rajvir_Axl@gmail.com','9yahom_6rab',9336,1568099846,'Rajvir_Axl');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (370,'Rhen','Mychael','Rhen_Mychael@gmail.c','9yahom_6rab',2124,1136230781,'Rhen_Mychael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (371,'Aether','Dontay','Aether_Dontay@gmail.','9yahom_6rab',2299,1116337024,'Aether_Dontay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (372,'Jaxen','Clark','Jaxen_Clark@gmail.co','9yahom_6rab',6987,1051876414,'Jaxen_Clark');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (373,'Willy','Tucker','Willy_Tucker@gmail.c','9yahom_6rab',1263,1115255246,'Willy_Tucker');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (374,'Zacarri','Khaleb','Zacarri_Khaleb@gmail','9yahom_6rab',4039,1227409563,'Zacarri_Khaleb');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (375,'Bakari','Princetyn','Bakari_Princetyn@gma','9yahom_6rab',916,1514768158,'Bakari_Princetyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (376,'Graceon','Reef','Graceon_Reef@gmail.c','9yahom_6rab',9655,1298461841,'Graceon_Reef');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (377,'Nelly','Kace','Nelly_Kace@gmail.com','9yahom_6rab',9021,1547727942,'Nelly_Kace');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (378,'Isadore','Tytan','Isadore_Tytan@gmail.','9yahom_6rab',9110,1192243236,'Isadore_Tytan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (379,'Brayson','Quintavious','Brayson_Quintavious@','9yahom_6rab',7156,1215688647,'Brayson_Quintavious');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (380,'Giovanni','Abdulmalik','Giovanni_Abdulmalik@','9yahom_6rab',1505,1233675102,'Giovanni_Abdulmalik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (381,'Sol','Zoel','Sol_Zoel@gmail.com','9yahom_6rab',7155,1508375353,'Sol_Zoel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (382,'Angelgabriel','Matheo','Angelgabriel_Matheo@','9yahom_6rab',904,1024681497,'Angelgabriel_Matheo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (383,'Sentell','Loay','Sentell_Loay@gmail.c','9yahom_6rab',3133,1229183376,'Sentell_Loay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (384,'Amancio','Dakotah','Amancio_Dakotah@gmai','9yahom_6rab',1120,1055606651,'Amancio_Dakotah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (385,'Jiarui','Joangel','Jiarui_Joangel@gmail','9yahom_6rab',2786,1088958972,'Jiarui_Joangel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (386,'Exavier','Zacharius','Exavier_Zacharius@gm','9yahom_6rab',7977,1113353017,'Exavier_Zacharius');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (387,'Grigor','Aydyn','Grigor_Aydyn@gmail.c','9yahom_6rab',5945,1176089575,'Grigor_Aydyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (388,'Kayne','Malvin','Kayne_Malvin@gmail.c','9yahom_6rab',9640,1224338350,'Kayne_Malvin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (389,'Nandan','Basil','Nandan_Basil@gmail.c','9yahom_6rab',5625,1512145332,'Nandan_Basil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (390,'Vian','Crawford','Vian_Crawford@gmail.','9yahom_6rab',2811,1234136981,'Vian_Crawford');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (391,'Cisco','Hewitt','Cisco_Hewitt@gmail.c','9yahom_6rab',6478,1257774420,'Cisco_Hewitt');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (392,'Lark','Zakaryah','Lark_Zakaryah@gmail.','9yahom_6rab',3570,1251116169,'Lark_Zakaryah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (393,'Khyran','Ahkai','Khyran_Ahkai@gmail.c','9yahom_6rab',1493,1554771791,'Khyran_Ahkai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (394,'Riordan','Dekhari','Riordan_Dekhari@gmai','9yahom_6rab',5823,1576318416,'Riordan_Dekhari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (395,'Dreyson','Jakarii','Dreyson_Jakarii@gmai','9yahom_6rab',6921,1203218467,'Dreyson_Jakarii');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (396,'Watson','Adharv','Watson_Adharv@gmail.','9yahom_6rab',1211,1037139153,'Watson_Adharv');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (397,'Kabir','Winchester','Kabir_Winchester@gma','9yahom_6rab',7182,1598859653,'Kabir_Winchester');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (398,'Scholar','Martell','Scholar_Martell@gmai','9yahom_6rab',7500,1219686676,'Scholar_Martell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (399,'Itai','Porfirio','Itai_Porfirio@gmail.','9yahom_6rab',3712,1245083309,'Itai_Porfirio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (400,'Bailor','Idhant','Bailor_Idhant@gmail.','9yahom_6rab',9532,1530356914,'Bailor_Idhant');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (401,'Oli','Josiah','Oli_Josiah@gmail.com','9yahom_6rab',7829,1289362894,'Oli_Josiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (402,'Niraj','Jahad','Niraj_Jahad@gmail.co','9yahom_6rab',1491,1283456887,'Niraj_Jahad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (403,'Abimael','Divith','Abimael_Divith@gmail','9yahom_6rab',5870,1193407447,'Abimael_Divith');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (404,'Fordham','Aras','Fordham_Aras@gmail.c','9yahom_6rab',3470,1291855650,'Fordham_Aras');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (405,'Brailyn','Zaydyn','Brailyn_Zaydyn@gmail','9yahom_6rab',3409,1505184330,'Brailyn_Zaydyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (406,'Alyn','Gunter','Alyn_Gunter@gmail.co','9yahom_6rab',584,1071560265,'Alyn_Gunter');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (407,'Kamilo','Abou','Kamilo_Abou@gmail.co','9yahom_6rab',4958,1169792065,'Kamilo_Abou');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (408,'Ashtin','Daivion','Ashtin_Daivion@gmail','9yahom_6rab',8631,1029593566,'Ashtin_Daivion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (409,'Kaidynn','Tarell','Kaidynn_Tarell@gmail','9yahom_6rab',2584,1285160111,'Kaidynn_Tarell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (410,'Charvik','Arvik','Charvik_Arvik@gmail.','9yahom_6rab',9765,1014906602,'Charvik_Arvik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (411,'Dhyan','Sakari','Dhyan_Sakari@gmail.c','9yahom_6rab',9606,1181643740,'Dhyan_Sakari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (412,'Archibald','Ezriel','Archibald_Ezriel@gma','9yahom_6rab',8966,1147183375,'Archibald_Ezriel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (413,'Cinco','Alesandro','Cinco_Alesandro@gmai','9yahom_6rab',9058,1206862783,'Cinco_Alesandro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (414,'Xxavier','Neven','Xxavier_Neven@gmail.','9yahom_6rab',936,1258762397,'Xxavier_Neven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (415,'Tyaire','Donny','Tyaire_Donny@gmail.c','9yahom_6rab',9565,1022582574,'Tyaire_Donny');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (416,'Kwame','Jhacari','Kwame_Jhacari@gmail.','9yahom_6rab',7192,1182784991,'Kwame_Jhacari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (417,'August','Jaxson','August_Jaxson@gmail.','9yahom_6rab',6661,1204868082,'August_Jaxson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (418,'Kayl','Kuzey','Kayl_Kuzey@gmail.com','9yahom_6rab',2413,1016078010,'Kayl_Kuzey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (419,'Gresham','Cade','Gresham_Cade@gmail.c','9yahom_6rab',8660,1527125689,'Gresham_Cade');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (420,'Kacion','Raydel','Kacion_Raydel@gmail.','9yahom_6rab',2992,1166178088,'Kacion_Raydel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (421,'Jonuel','Alakay','Jonuel_Alakay@gmail.','9yahom_6rab',8457,1111693158,'Jonuel_Alakay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (422,'Haize','Chanoch','Haize_Chanoch@gmail.','9yahom_6rab',8580,1053920828,'Haize_Chanoch');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (423,'Basheer','Jaysean','Basheer_Jaysean@gmai','9yahom_6rab',7065,1298498086,'Basheer_Jaysean');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (424,'Russ','Aydn','Russ_Aydn@gmail.com','9yahom_6rab',6864,1253623769,'Russ_Aydn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (425,'Alfonso','Matthew','Alfonso_Matthew@gmai','9yahom_6rab',1458,1095857964,'Alfonso_Matthew');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (426,'Tiyon','Unique','Tiyon_Unique@gmail.c','9yahom_6rab',3678,1259598523,'Tiyon_Unique');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (427,'Aasher','Taten','Aasher_Taten@gmail.c','9yahom_6rab',7052,1552693248,'Aasher_Taten');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (428,'Danny','Broderick','Danny_Broderick@gmai','9yahom_6rab',2490,1247699218,'Danny_Broderick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (429,'Arron','Nyson','Arron_Nyson@gmail.co','9yahom_6rab',6946,1526198452,'Arron_Nyson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (430,'Wisam','Solaris','Wisam_Solaris@gmail.','9yahom_6rab',9140,1142210170,'Wisam_Solaris');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (431,'Adarius','Kiet','Adarius_Kiet@gmail.c','9yahom_6rab',2735,1086548819,'Adarius_Kiet');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (432,'Gin','Larry','Gin_Larry@gmail.com','9yahom_6rab',2867,1529422216,'Gin_Larry');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (433,'Dmir','Daud','Dmir_Daud@gmail.com','9yahom_6rab',2351,1110449047,'Dmir_Daud');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (434,'Kashmeir','Alder','Kashmeir_Alder@gmail','9yahom_6rab',8552,1154789055,'Kashmeir_Alder');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (435,'Abdulhameed','Shiva','Abdulhameed_Shiva@gm','9yahom_6rab',6141,1024181389,'Abdulhameed_Shiva');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (436,'Zadyn','Danner','Zadyn_Danner@gmail.c','9yahom_6rab',1565,1099150814,'Zadyn_Danner');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (437,'Raeshawn','Nyko','Raeshawn_Nyko@gmail.','9yahom_6rab',1897,1188366786,'Raeshawn_Nyko');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (438,'Rylynn','Leangelo','Rylynn_Leangelo@gmai','9yahom_6rab',1839,1152999067,'Rylynn_Leangelo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (439,'Jaharri','Calil','Jaharri_Calil@gmail.','9yahom_6rab',720,1147548026,'Jaharri_Calil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (440,'Watsyn','Jaceyon','Watsyn_Jaceyon@gmail','9yahom_6rab',4075,1099958739,'Watsyn_Jaceyon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (441,'Jacai','Nicasio','Jacai_Nicasio@gmail.','9yahom_6rab',7084,1055119794,'Jacai_Nicasio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (442,'Nashton','Keeghan','Nashton_Keeghan@gmai','9yahom_6rab',6932,1053967336,'Nashton_Keeghan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (443,'Dynver','Dreyden','Dynver_Dreyden@gmail','9yahom_6rab',2316,1122566717,'Dynver_Dreyden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (444,'Wildon','Yannick','Wildon_Yannick@gmail','9yahom_6rab',1597,1550869068,'Wildon_Yannick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (445,'Ellison','Naol','Ellison_Naol@gmail.c','9yahom_6rab',6788,1257502222,'Ellison_Naol');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (446,'Zakar','Pinchos','Zakar_Pinchos@gmail.','9yahom_6rab',7890,1548567577,'Zakar_Pinchos');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (447,'Taurean','Zuri','Taurean_Zuri@gmail.c','9yahom_6rab',4391,1202927636,'Taurean_Zuri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (448,'Xadiel','Andrei','Xadiel_Andrei@gmail.','9yahom_6rab',4854,1186641365,'Xadiel_Andrei');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (449,'Dennys','Kanon','Dennys_Kanon@gmail.c','9yahom_6rab',5340,1577102523,'Dennys_Kanon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (450,'Heston','Tjay','Heston_Tjay@gmail.co','9yahom_6rab',8441,1539467010,'Heston_Tjay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (271,'Jayansh','Egan','Jayansh_Egan@gmail.c','9yahom_6rab',6666,1153517445,'Jayansh_Egan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (272,'Norris','Shamir','Norris_Shamir@gmail.','9yahom_6rab',6492,1246865281,'Norris_Shamir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (273,'Vaidik','Creek','Vaidik_Creek@gmail.c','9yahom_6rab',535,1090116080,'Vaidik_Creek');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (274,'Kam','Sinsere','Kam_Sinsere@gmail.co','9yahom_6rab',2927,1168098972,'Kam_Sinsere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (275,'Mega','Clover','Mega_Clover@gmail.co','9yahom_6rab',9996,1270171843,'Mega_Clover');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (276,'Julius','Kylee','Julius_Kylee@gmail.c','9yahom_6rab',3304,1549504668,'Julius_Kylee');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (277,'Jerrick','Ozzy','Jerrick_Ozzy@gmail.c','9yahom_6rab',6700,1282470040,'Jerrick_Ozzy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (278,'Mykah','Ziyan','Mykah_Ziyan@gmail.co','9yahom_6rab',3665,1506768306,'Mykah_Ziyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (279,'Reeyansh','Omario','Reeyansh_Omario@gmai','9yahom_6rab',1508,1597860224,'Reeyansh_Omario');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (280,'Shriram','Oaklen','Shriram_Oaklen@gmail','9yahom_6rab',4875,1180345924,'Shriram_Oaklen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (281,'Wesly','Jaysson','Wesly_Jaysson@gmail.','9yahom_6rab',1345,1002913974,'Wesly_Jaysson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (282,'Md','Saleem','Md_Saleem@gmail.com','9yahom_6rab',7849,1237207574,'Md_Saleem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (283,'Edrick','Asher','Edrick_Asher@gmail.c','9yahom_6rab',5378,1275687051,'Edrick_Asher');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (284,'Bryston','Till','Bryston_Till@gmail.c','9yahom_6rab',4546,1277493388,'Bryston_Till');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (285,'Dagim','Khiree','Dagim_Khiree@gmail.c','9yahom_6rab',4813,1136060879,'Dagim_Khiree');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (286,'Kirtan','Jakin','Kirtan_Jakin@gmail.c','9yahom_6rab',6775,1569492571,'Kirtan_Jakin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (287,'Kabe','Sina','Kabe_Sina@gmail.com','9yahom_6rab',3917,1549906211,'Kabe_Sina');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (288,'Sher','Shaun','Sher_Shaun@gmail.com','9yahom_6rab',5632,1527901668,'Sher_Shaun');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (289,'Ronal','Cid','Ronal_Cid@gmail.com','9yahom_6rab',2659,1017224587,'Ronal_Cid');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (290,'Lam','Abhay','Lam_Abhay@gmail.com','9yahom_6rab',3212,1223655896,'Lam_Abhay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (291,'Madex','Quaylon','Madex_Quaylon@gmail.','9yahom_6rab',1530,1147295407,'Madex_Quaylon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (292,'Tyvon','Kirill','Tyvon_Kirill@gmail.c','9yahom_6rab',9954,1548002826,'Tyvon_Kirill');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (293,'Jiovanny','Ananiya','Jiovanny_Ananiya@gma','9yahom_6rab',1447,1075768530,'Jiovanny_Ananiya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (294,'Mclean','Bronn','Mclean_Bronn@gmail.c','9yahom_6rab',5583,1216680313,'Mclean_Bronn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (295,'Astin','Quintyn','Astin_Quintyn@gmail.','9yahom_6rab',5443,1191679799,'Astin_Quintyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (296,'Stephon','Phillip','Stephon_Phillip@gmai','9yahom_6rab',4401,1060960793,'Stephon_Phillip');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (297,'Aamari','Kyo','Aamari_Kyo@gmail.com','9yahom_6rab',4789,1186457046,'Aamari_Kyo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (298,'Keyshawn','Garin','Keyshawn_Garin@gmail','9yahom_6rab',9142,1248106099,'Keyshawn_Garin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (299,'Jhari','Hasson','Jhari_Hasson@gmail.c','9yahom_6rab',2654,1085149025,'Jhari_Hasson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (300,'Jashon','Amilliano','Jashon_Amilliano@gma','9yahom_6rab',3913,1552807425,'Jashon_Amilliano');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (301,'Amyis','Jaydin','Amyis_Jaydin@gmail.c','9yahom_6rab',7219,1051108098,'Amyis_Jaydin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (302,'Jazir','Keith','Jazir_Keith@gmail.co','9yahom_6rab',837,1049906902,'Jazir_Keith');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (303,'Jshawn','Kanan','Jshawn_Kanan@gmail.c','9yahom_6rab',7310,1109794815,'Jshawn_Kanan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (304,'Tahari','Anden','Tahari_Anden@gmail.c','9yahom_6rab',5818,1084136743,'Tahari_Anden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (305,'Osmond','Rowan','Osmond_Rowan@gmail.c','9yahom_6rab',771,1192949501,'Osmond_Rowan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (306,'Landynn','Umar','Landynn_Umar@gmail.c','9yahom_6rab',7506,1046148411,'Landynn_Umar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (307,'Khy','Hunter','Khy_Hunter@gmail.com','9yahom_6rab',2484,1211398195,'Khy_Hunter');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (308,'Hesham','Nyel','Hesham_Nyel@gmail.co','9yahom_6rab',6466,1258040436,'Hesham_Nyel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (309,'Qaadir','Demarcus','Qaadir_Demarcus@gmai','9yahom_6rab',2938,1004064643,'Qaadir_Demarcus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (310,'Dkota','Maxi','Dkota_Maxi@gmail.com','9yahom_6rab',2625,1108387126,'Dkota_Maxi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (311,'Valiente','Jayco','Valiente_Jayco@gmail','9yahom_6rab',2950,1236755147,'Valiente_Jayco');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (312,'Maksim','Aaron','Maksim_Aaron@gmail.c','9yahom_6rab',1698,1038437877,'Maksim_Aaron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (313,'Sherif','Aldo','Sherif_Aldo@gmail.co','9yahom_6rab',9678,1143146748,'Sherif_Aldo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (314,'Kielan','Creeden','Kielan_Creeden@gmail','9yahom_6rab',3056,1044774703,'Kielan_Creeden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (315,'Ezri','Tyzer','Ezri_Tyzer@gmail.com','9yahom_6rab',7112,1508726806,'Ezri_Tyzer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (316,'Kaedon','Bryant','Kaedon_Bryant@gmail.','9yahom_6rab',8533,1580264422,'Kaedon_Bryant');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (317,'Neon','Rupert','Neon_Rupert@gmail.co','9yahom_6rab',1660,1081909842,'Neon_Rupert');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (318,'Peyton','Maximiliano','Peyton_Maximiliano@g','9yahom_6rab',1188,1264230531,'Peyton_Maximiliano');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (319,'Alandis','Zorian','Alandis_Zorian@gmail','9yahom_6rab',1273,1163179756,'Alandis_Zorian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (320,'Collier','Kingsley','Collier_Kingsley@gma','9yahom_6rab',5616,1216281626,'Collier_Kingsley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (321,'Jailon','Brick','Jailon_Brick@gmail.c','9yahom_6rab',4658,1213401301,'Jailon_Brick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (322,'Kamp','Advikreddy','Kamp_Advikreddy@gmai','9yahom_6rab',3478,1128882193,'Kamp_Advikreddy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (323,'Jakk','Adrik','Jakk_Adrik@gmail.com','9yahom_6rab',4436,1254664686,'Jakk_Adrik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (324,'Keaton','Solo','Keaton_Solo@gmail.co','9yahom_6rab',4331,1270067914,'Keaton_Solo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (325,'Jayloni','Qamar','Jayloni_Qamar@gmail.','9yahom_6rab',2226,1153859855,'Jayloni_Qamar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (326,'Lucciano','Kova','Lucciano_Kova@gmail.','9yahom_6rab',6906,1053561912,'Lucciano_Kova');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (327,'Kaecyn','Kabeer','Kaecyn_Kabeer@gmail.','9yahom_6rab',3811,1299489468,'Kaecyn_Kabeer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (328,'Wayland','Lejend','Wayland_Lejend@gmail','9yahom_6rab',727,1029232713,'Wayland_Lejend');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (329,'Ra','Kyheem','Ra_Kyheem@gmail.com','9yahom_6rab',4487,1204593839,'Ra_Kyheem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (330,'Estin','Kaydem','Estin_Kaydem@gmail.c','9yahom_6rab',6512,1572195814,'Estin_Kaydem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (331,'Edward','Nassiah','Edward_Nassiah@gmail','9yahom_6rab',2789,1115138901,'Edward_Nassiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (332,'Zaier','Liamm','Zaier_Liamm@gmail.co','9yahom_6rab',5684,1098915325,'Zaier_Liamm');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (333,'Dakarai','Dalon','Dakarai_Dalon@gmail.','9yahom_6rab',7306,1250702726,'Dakarai_Dalon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (334,'Korede','Brennex','Korede_Brennex@gmail','9yahom_6rab',5208,1064834686,'Korede_Brennex');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (335,'Shakeel','Careem','Shakeel_Careem@gmail','9yahom_6rab',2888,1594161930,'Shakeel_Careem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (336,'Micah','Karim','Micah_Karim@gmail.co','9yahom_6rab',2483,1122688778,'Micah_Karim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (337,'Adlai','Zaiah','Adlai_Zaiah@gmail.co','9yahom_6rab',9377,1507061324,'Adlai_Zaiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (338,'Tristin','Musaab','Tristin_Musaab@gmail','9yahom_6rab',3039,1532376105,'Tristin_Musaab');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (339,'Briggs','Maui','Briggs_Maui@gmail.co','9yahom_6rab',1066,1213412190,'Briggs_Maui');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (340,'Riggins','Ebaad','Riggins_Ebaad@gmail.','9yahom_6rab',7108,1107717824,'Riggins_Ebaad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (341,'Emrick','Brahm','Emrick_Brahm@gmail.c','9yahom_6rab',8407,1296486161,'Emrick_Brahm');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (342,'Kalum','Lestat','Kalum_Lestat@gmail.c','9yahom_6rab',7420,1186008212,'Kalum_Lestat');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (343,'Dany','Zurich','Dany_Zurich@gmail.co','9yahom_6rab',5115,1211962842,'Dany_Zurich');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (344,'Sorin','Aven','Sorin_Aven@gmail.com','9yahom_6rab',1313,1218345414,'Sorin_Aven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (345,'Jancarlo','Kastiel','Jancarlo_Kastiel@gma','9yahom_6rab',7914,1222079323,'Jancarlo_Kastiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (346,'Vivek','Benyamin','Vivek_Benyamin@gmail','9yahom_6rab',3097,1090615262,'Vivek_Benyamin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (347,'Aurora','Abner','Aurora_Abner@gmail.c','9yahom_6rab',4736,1177013677,'Aurora_Abner');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (348,'Romin','Haxton','Romin_Haxton@gmail.c','9yahom_6rab',9585,1014814381,'Romin_Haxton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (349,'Jamoni','Booker','Jamoni_Booker@gmail.','9yahom_6rab',8593,1096148723,'Jamoni_Booker');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (350,'Gurbaaz','Turki','Gurbaaz_Turki@gmail.','9yahom_6rab',2034,1241140052,'Gurbaaz_Turki');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (351,'Swarnim','Neal','Swarnim_Neal@gmail.c','9yahom_6rab',7971,1522629653,'Swarnim_Neal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (352,'Edsel','Kel','Edsel_Kel@gmail.com','9yahom_6rab',8229,1255919458,'Edsel_Kel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (353,'Abiel','Nahzir','Abiel_Nahzir@gmail.c','9yahom_6rab',8017,1286223998,'Abiel_Nahzir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (354,'Muiz','Eden','Muiz_Eden@gmail.com','9yahom_6rab',1375,1137828832,'Muiz_Eden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (355,'Breez','Dimitry','Breez_Dimitry@gmail.','9yahom_6rab',7684,1091286190,'Breez_Dimitry');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (356,'Mordecai','Gram','Mordecai_Gram@gmail.','9yahom_6rab',4494,1076829629,'Mordecai_Gram');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (357,'Eero','Chibuikem','Eero_Chibuikem@gmail','9yahom_6rab',1438,1185985570,'Eero_Chibuikem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (358,'Manu','Jakobie','Manu_Jakobie@gmail.c','9yahom_6rab',9964,1502445917,'Manu_Jakobie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (359,'Mahad','Adrain','Mahad_Adrain@gmail.c','9yahom_6rab',2537,1550141700,'Mahad_Adrain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (360,'Jedediah','Adolph','Jedediah_Adolph@gmai','9yahom_6rab',2314,1599061788,'Jedediah_Adolph');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (361,'Tegan','Cecil','Tegan_Cecil@gmail.co','9yahom_6rab',5557,1574130635,'Tegan_Cecil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2,'Mahmoud','Mounier','sdf','887',7878,787878,'sd');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (3,'Dyson','Blayne','Dyson_Blayne@gmail.c','9yahom_6rab',7496,1160934163,'Dyson_Blayne');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (4,'Abdul','Laakea','Abdul_Laakea@gmail.c','9yahom_6rab',3110,1542603016,'Abdul_Laakea');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (5,'Kruze','Salahuddin','Kruze_Salahuddin@gma','9yahom_6rab',4220,1575378550,'Kruze_Salahuddin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (6,'Fidencio','Rambo','Fidencio_Rambo@gmail','9yahom_6rab',2998,1205848258,'Fidencio_Rambo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (7,'Kreighton','Akil','Kreighton_Akil@gmail','9yahom_6rab',8378,1144020006,'Kreighton_Akil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (8,'Bolin','Jakyree','Bolin_Jakyree@gmail.','9yahom_6rab',8924,1235862739,'Bolin_Jakyree');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (9,'Jihad','Kayton','Jihad_Kayton@gmail.c','9yahom_6rab',1653,1166702103,'Jihad_Kayton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (10,'Nyaire','Wilfred','Nyaire_Wilfred@gmail','9yahom_6rab',2462,1520285290,'Nyaire_Wilfred');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (11,'Ehab','Malikye','Ehab_Malikye@gmail.c','9yahom_6rab',2484,1160719670,'Ehab_Malikye');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (12,'Khyland','Griffin','Khyland_Griffin@gmai','9yahom_6rab',4263,1043980890,'Khyland_Griffin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (13,'Vision','Kelson','Vision_Kelson@gmail.','9yahom_6rab',7351,1262637051,'Vision_Kelson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (14,'Safwaan','Kylin','Safwaan_Kylin@gmail.','9yahom_6rab',3135,1503490130,'Safwaan_Kylin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (15,'Camaron','Zakaiden','Camaron_Zakaiden@gma','9yahom_6rab',1738,1094551522,'Camaron_Zakaiden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (16,'Latham','Siler','Latham_Siler@gmail.c','9yahom_6rab',5664,1571676985,'Latham_Siler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (17,'Keneth','Pratt','Keneth_Pratt@gmail.c','9yahom_6rab',2702,1248544280,'Keneth_Pratt');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (18,'Rahmeir','Hasani','Rahmeir_Hasani@gmail','9yahom_6rab',2609,1575647892,'Rahmeir_Hasani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (19,'Yoshua','Trigg','Yoshua_Trigg@gmail.c','9yahom_6rab',2908,1103151200,'Yoshua_Trigg');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (20,'Brently','Maximilian','Brently_Maximilian@g','9yahom_6rab',8518,1166081517,'Brently_Maximilian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (21,'Juneau','Nyjah','Juneau_Nyjah@gmail.c','9yahom_6rab',6944,1276341807,'Juneau_Nyjah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (22,'Anker','Kirkland','Anker_Kirkland@gmail','9yahom_6rab',1517,1276033274,'Anker_Kirkland');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (23,'Syhir','Mansur','Syhir_Mansur@gmail.c','9yahom_6rab',8247,1053737632,'Syhir_Mansur');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (24,'Destiny','Lynnox','Destiny_Lynnox@gmail','9yahom_6rab',5107,1568405508,'Destiny_Lynnox');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (25,'Sims','Maven','Sims_Maven@gmail.com','9yahom_6rab',7286,1529499134,'Sims_Maven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (26,'Nehemia','Jalen','Nehemia_Jalen@gmail.','9yahom_6rab',8351,1050234143,'Nehemia_Jalen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (27,'Kullen','Valerian','Kullen_Valerian@gmai','9yahom_6rab',8977,1252963811,'Kullen_Valerian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (28,'Cayleb','Rafa','Cayleb_Rafa@gmail.co','9yahom_6rab',2312,1547759559,'Cayleb_Rafa');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (29,'Bayard','Emory','Bayard_Emory@gmail.c','9yahom_6rab',6989,1156269132,'Bayard_Emory');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (30,'Kenten','Shivansh','Kenten_Shivansh@gmai','9yahom_6rab',7824,1184204191,'Kenten_Shivansh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (31,'Aston','Kroy','Aston_Kroy@gmail.com','9yahom_6rab',5704,1101897060,'Aston_Kroy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (32,'Damien','Anton','Damien_Anton@gmail.c','9yahom_6rab',1694,1565818486,'Damien_Anton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (33,'Ollin','Keandre','Ollin_Keandre@gmail.','9yahom_6rab',5629,1033019170,'Ollin_Keandre');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (34,'Malaki','Omran','Malaki_Omran@gmail.c','9yahom_6rab',1597,1245633089,'Malaki_Omran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (35,'Menachem','Levian','Menachem_Levian@gmai','9yahom_6rab',3471,1111178140,'Menachem_Levian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (36,'Naheem','Leno','Naheem_Leno@gmail.co','9yahom_6rab',9905,1099566870,'Naheem_Leno');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (37,'Devron','Tyrell','Devron_Tyrell@gmail.','9yahom_6rab',3096,1002898241,'Devron_Tyrell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (38,'Davison','Baby','Davison_Baby@gmail.c','9yahom_6rab',4489,1042798590,'Davison_Baby');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (39,'Gunner','Alfonzo','Gunner_Alfonzo@gmail','9yahom_6rab',8485,1259590433,'Gunner_Alfonzo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (40,'Braeson','Ezekiel','Braeson_Ezekiel@gmai','9yahom_6rab',702,1210428788,'Braeson_Ezekiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (41,'Kelil','Keighan','Kelil_Keighan@gmail.','9yahom_6rab',5000,1202907403,'Kelil_Keighan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (42,'Dreden','Emett','Dreden_Emett@gmail.c','9yahom_6rab',2191,1113564131,'Dreden_Emett');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (43,'Saverio','Barrett','Saverio_Barrett@gmai','9yahom_6rab',3990,1049789652,'Saverio_Barrett');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (44,'Zabir','Rommell','Zabir_Rommell@gmail.','9yahom_6rab',3740,1031820748,'Zabir_Rommell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (45,'Tyshon','Jyree','Tyshon_Jyree@gmail.c','9yahom_6rab',7233,1230643235,'Tyshon_Jyree');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (46,'Kyro','Kyngsten','Kyro_Kyngsten@gmail.','9yahom_6rab',9145,1291779050,'Kyro_Kyngsten');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (47,'Ashai','Khadim','Ashai_Khadim@gmail.c','9yahom_6rab',3118,1268975485,'Ashai_Khadim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (48,'Mazikeen','Esrom','Mazikeen_Esrom@gmail','9yahom_6rab',1886,1086051832,'Mazikeen_Esrom');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (49,'Eyal','Joeziah','Eyal_Joeziah@gmail.c','9yahom_6rab',4082,1082186214,'Eyal_Joeziah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (50,'Timoteo','Kevyn','Timoteo_Kevyn@gmail.','9yahom_6rab',4665,1257355089,'Timoteo_Kevyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (51,'Zhion','Jacorey','Zhion_Jacorey@gmail.','9yahom_6rab',6206,1029380832,'Zhion_Jacorey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (52,'Tomasi','Deryck','Tomasi_Deryck@gmail.','9yahom_6rab',4107,1529982842,'Tomasi_Deryck');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (53,'Pearce','Kass','Pearce_Kass@gmail.co','9yahom_6rab',6488,1262851384,'Pearce_Kass');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (54,'Anu','Kaneki','Anu_Kaneki@gmail.com','9yahom_6rab',800,1082045841,'Anu_Kaneki');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (55,'Leopoldo','Camar','Leopoldo_Camar@gmail','9yahom_6rab',6520,1125628215,'Leopoldo_Camar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (56,'Taha','Baine','Taha_Baine@gmail.com','9yahom_6rab',7817,1522159324,'Taha_Baine');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (57,'Abdias','Nirvair','Abdias_Nirvair@gmail','9yahom_6rab',6962,1295397648,'Abdias_Nirvair');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (58,'Zamar','Yitzchak','Zamar_Yitzchak@gmail','9yahom_6rab',2009,1184449980,'Zamar_Yitzchak');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (59,'Azeil','Ehsan','Azeil_Ehsan@gmail.co','9yahom_6rab',6925,1055224456,'Azeil_Ehsan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (60,'Owen','Oleksandr','Owen_Oleksandr@gmail','9yahom_6rab',3656,1574647563,'Owen_Oleksandr');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (61,'Ericson','Lionel','Ericson_Lionel@gmail','9yahom_6rab',2070,1204585946,'Ericson_Lionel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (62,'Jareth','Jaythan','Jareth_Jaythan@gmail','9yahom_6rab',8167,1508145883,'Jareth_Jaythan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (63,'Leah','Jahan','Leah_Jahan@gmail.com','9yahom_6rab',6542,1244571083,'Leah_Jahan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (64,'Pio','Jabreel','Pio_Jabreel@gmail.co','9yahom_6rab',1798,1146033327,'Pio_Jabreel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (65,'Mahmood','Maxson','Mahmood_Maxson@gmail','9yahom_6rab',3800,1169627970,'Mahmood_Maxson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (66,'Tarak','Dante','Tarak_Dante@gmail.co','9yahom_6rab',9416,1059176918,'Tarak_Dante');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (67,'Khamarion','Liban','Khamarion_Liban@gmai','9yahom_6rab',1861,1254550598,'Khamarion_Liban');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (68,'Leander','Artez','Leander_Artez@gmail.','9yahom_6rab',6877,1054542994,'Leander_Artez');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (69,'Terron','Lyrik','Terron_Lyrik@gmail.c','9yahom_6rab',9678,1253927842,'Terron_Lyrik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (70,'Victorio','Weiland','Victorio_Weiland@gma','9yahom_6rab',4048,1161840362,'Victorio_Weiland');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (71,'Denison','Tres','Denison_Tres@gmail.c','9yahom_6rab',5287,1028912235,'Denison_Tres');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (72,'Weslynn','Mahlon','Weslynn_Mahlon@gmail','9yahom_6rab',4908,1272012904,'Weslynn_Mahlon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (73,'Darey','Jesus','Darey_Jesus@gmail.co','9yahom_6rab',7203,1285270830,'Darey_Jesus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (74,'Jeyden','Ty','Jeyden_Ty@gmail.com','9yahom_6rab',4612,1118147363,'Jeyden_Ty');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (75,'Oluwadarasimi','Shaddai','Oluwadarasimi_Shadda','9yahom_6rab',9610,1203419513,'Oluwadarasimi_Shadda');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (76,'Helal','Brannon','Helal_Brannon@gmail.','9yahom_6rab',4039,1541053222,'Helal_Brannon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (77,'Albaraa','Mixon','Albaraa_Mixon@gmail.','9yahom_6rab',4717,1204197064,'Albaraa_Mixon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (78,'Jasiri','Bryton','Jasiri_Bryton@gmail.','9yahom_6rab',7949,1070848099,'Jasiri_Bryton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (79,'Estuardo','Dacion','Estuardo_Dacion@gmai','9yahom_6rab',7220,1086063625,'Estuardo_Dacion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (80,'Aidin','Daesean','Aidin_Daesean@gmail.','9yahom_6rab',2408,1142341178,'Aidin_Daesean');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (81,'Jaris','Finbarr','Jaris_Finbarr@gmail.','9yahom_6rab',2905,1219980428,'Jaris_Finbarr');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (82,'Elnathan','Cirilo','Elnathan_Cirilo@gmai','9yahom_6rab',8324,1518630633,'Elnathan_Cirilo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (83,'Khup','Korbin','Khup_Korbin@gmail.co','9yahom_6rab',895,1509454535,'Khup_Korbin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (84,'Dewitt','Eziah','Dewitt_Eziah@gmail.c','9yahom_6rab',1811,1535480664,'Dewitt_Eziah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (85,'Greysan','Jianni','Greysan_Jianni@gmail','9yahom_6rab',8387,1199919842,'Greysan_Jianni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (86,'Makhy','Vikrant','Makhy_Vikrant@gmail.','9yahom_6rab',9192,1551844261,'Makhy_Vikrant');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (87,'Bexton','Labib','Bexton_Labib@gmail.c','9yahom_6rab',3721,1045679959,'Bexton_Labib');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (88,'Ethon','Perseus','Ethon_Perseus@gmail.','9yahom_6rab',7560,1053622343,'Ethon_Perseus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (89,'Cassidy','Killua','Cassidy_Killua@gmail','9yahom_6rab',8477,1597858842,'Cassidy_Killua');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (90,'Nasi','Macklan','Nasi_Macklan@gmail.c','9yahom_6rab',2645,1152966201,'Nasi_Macklan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (91,'Chavis','Martice','Chavis_Martice@gmail','9yahom_6rab',3104,1068321122,'Chavis_Martice');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (92,'Brooklynn','Zariah','Brooklynn_Zariah@gma','9yahom_6rab',909,1181956852,'Brooklynn_Zariah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (898,'Adir','Aron','Adir_Aron@gmail.com','9yahom_6rab',5808,1241218290,'Adir_Aron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (899,'Ryo','Djoser','Ryo_Djoser@gmail.com','9yahom_6rab',2811,1016295050,'Ryo_Djoser');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (900,'Anuj','Mouhamad','Anuj_Mouhamad@gmail.','9yahom_6rab',3902,1198570853,'Anuj_Mouhamad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (901,'Tyheem','Ebon','Tyheem_Ebon@gmail.co','9yahom_6rab',8839,1188866711,'Tyheem_Ebon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (902,'Amileo','Maxwell','Amileo_Maxwell@gmail','9yahom_6rab',791,1049759214,'Amileo_Maxwell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (903,'Anthony','Emit','Anthony_Emit@gmail.c','9yahom_6rab',1080,1098559572,'Anthony_Emit');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (904,'Redford','Kamren','Redford_Kamren@gmail','9yahom_6rab',1529,1544836433,'Redford_Kamren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (905,'Osborne','Radley','Osborne_Radley@gmail','9yahom_6rab',4832,1565109541,'Osborne_Radley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (906,'Khayden','Mikyas','Khayden_Mikyas@gmail','9yahom_6rab',6963,1058152850,'Khayden_Mikyas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (907,'Journee','Hope','Journee_Hope@gmail.c','9yahom_6rab',6154,1039721680,'Journee_Hope');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (908,'Yamin','Dayvion','Yamin_Dayvion@gmail.','9yahom_6rab',8613,1005770527,'Yamin_Dayvion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (909,'Saviour','Hercules','Saviour_Hercules@gma','9yahom_6rab',1207,1057376675,'Saviour_Hercules');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (910,'Aubrey','Walker','Aubrey_Walker@gmail.','9yahom_6rab',5682,1281669762,'Aubrey_Walker');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (911,'Nicola','Saxton','Nicola_Saxton@gmail.','9yahom_6rab',7436,1131961380,'Nicola_Saxton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (912,'Ventura','Marquell','Ventura_Marquell@gma','9yahom_6rab',4968,1260729408,'Ventura_Marquell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (913,'Leeson','Yuto','Leeson_Yuto@gmail.co','9yahom_6rab',1485,1090794860,'Leeson_Yuto');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (914,'Leor','Drayko','Leor_Drayko@gmail.co','9yahom_6rab',4763,1505609332,'Leor_Drayko');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (915,'Malaquias','Jetson','Malaquias_Jetson@gma','9yahom_6rab',5279,1585542474,'Malaquias_Jetson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (916,'Kian','Oluwadamilare','Kian_Oluwadamilare@g','9yahom_6rab',6330,1275678702,'Kian_Oluwadamilare');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (917,'Nazair','Gary','Nazair_Gary@gmail.co','9yahom_6rab',2117,1191546473,'Nazair_Gary');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (918,'Varian','Elston','Varian_Elston@gmail.','9yahom_6rab',1663,1247561487,'Varian_Elston');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (919,'Cyon','Samad','Cyon_Samad@gmail.com','9yahom_6rab',4712,1529701163,'Cyon_Samad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (920,'Temple','Kenan','Temple_Kenan@gmail.c','9yahom_6rab',5027,1122237354,'Temple_Kenan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (921,'Lakelan','Macari','Lakelan_Macari@gmail','9yahom_6rab',4226,1503708224,'Lakelan_Macari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (922,'Ericksen','Narayan','Ericksen_Narayan@gma','9yahom_6rab',594,1086783253,'Ericksen_Narayan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (923,'Sharrod','Rylan','Sharrod_Rylan@gmail.','9yahom_6rab',3568,1501227076,'Sharrod_Rylan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (924,'Thayer','Yisrael','Thayer_Yisrael@gmail','9yahom_6rab',4842,1534205232,'Thayer_Yisrael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (925,'William','Mavrik','William_Mavrik@gmail','9yahom_6rab',1613,1567035403,'William_Mavrik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (926,'Anjel','Jamerson','Anjel_Jamerson@gmail','9yahom_6rab',5111,1233339856,'Anjel_Jamerson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (927,'Guiseppe','Leonid','Guiseppe_Leonid@gmai','9yahom_6rab',8044,1245559338,'Guiseppe_Leonid');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (928,'Syllas','Ilia','Syllas_Ilia@gmail.co','9yahom_6rab',9597,1593064199,'Syllas_Ilia');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (929,'Masir','Kyle','Masir_Kyle@gmail.com','9yahom_6rab',4284,1544869465,'Masir_Kyle');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (930,'Gaius','Sevastian','Gaius_Sevastian@gmai','9yahom_6rab',7828,1109944966,'Gaius_Sevastian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (931,'Tan','Cuyler','Tan_Cuyler@gmail.com','9yahom_6rab',6098,1169906074,'Tan_Cuyler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (932,'Eagan','Zayden','Eagan_Zayden@gmail.c','9yahom_6rab',8721,1122066842,'Eagan_Zayden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (933,'Sharif','Kellon','Sharif_Kellon@gmail.','9yahom_6rab',7486,1021145080,'Sharif_Kellon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (934,'Kamir','Conlan','Kamir_Conlan@gmail.c','9yahom_6rab',8634,1087737314,'Kamir_Conlan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (935,'Kraig','Tim','Kraig_Tim@gmail.com','9yahom_6rab',2367,1218177865,'Kraig_Tim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (936,'Barnabas','Grayden','Barnabas_Grayden@gma','9yahom_6rab',1663,1259003280,'Barnabas_Grayden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (937,'Breylon','Fineas','Breylon_Fineas@gmail','9yahom_6rab',3331,1258102064,'Breylon_Fineas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (938,'Bridge','Ahan','Bridge_Ahan@gmail.co','9yahom_6rab',4418,1163114217,'Bridge_Ahan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (939,'Kingstin','Trevin','Kingstin_Trevin@gmai','9yahom_6rab',818,1521441424,'Kingstin_Trevin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (940,'Kainoa','Nanayaw','Kainoa_Nanayaw@gmail','9yahom_6rab',2362,1058825446,'Kainoa_Nanayaw');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (941,'Striker','Bracken','Striker_Bracken@gmai','9yahom_6rab',9771,1250336672,'Striker_Bracken');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (942,'Bakary','Rishik','Bakary_Rishik@gmail.','9yahom_6rab',7337,1208916984,'Bakary_Rishik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (943,'Jerard','Enoch','Jerard_Enoch@gmail.c','9yahom_6rab',5987,1556169960,'Jerard_Enoch');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (944,'Carlitos','Zacharias','Carlitos_Zacharias@g','9yahom_6rab',5300,1027643262,'Carlitos_Zacharias');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (945,'Axcel','Asir','Axcel_Asir@gmail.com','9yahom_6rab',3235,1537529155,'Axcel_Asir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (946,'Kanaloa','Akim','Kanaloa_Akim@gmail.c','9yahom_6rab',4993,1062741314,'Kanaloa_Akim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (947,'Travelle','Amaan','Travelle_Amaan@gmail','9yahom_6rab',2828,1554844337,'Travelle_Amaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (948,'Daniell','Edgar','Daniell_Edgar@gmail.','9yahom_6rab',5386,1013468071,'Daniell_Edgar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (949,'Badr','Dawit','Badr_Dawit@gmail.com','9yahom_6rab',8890,1005385744,'Badr_Dawit');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (950,'Nameer','Haines','Nameer_Haines@gmail.','9yahom_6rab',7983,1505614717,'Nameer_Haines');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (951,'Josejulian','Jashawn','Josejulian_Jashawn@g','9yahom_6rab',5791,1585362571,'Josejulian_Jashawn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (952,'Edilson','Amel','Edilson_Amel@gmail.c','9yahom_6rab',3552,1194896321,'Edilson_Amel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (953,'Sarfaraz','Khaled','Sarfaraz_Khaled@gmai','9yahom_6rab',5636,1558174204,'Sarfaraz_Khaled');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (954,'Ryley','Roper','Ryley_Roper@gmail.co','9yahom_6rab',6089,1000511656,'Ryley_Roper');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (955,'Drevon','Viyan','Drevon_Viyan@gmail.c','9yahom_6rab',6589,1582620754,'Drevon_Viyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (956,'Kailyn','Maxxon','Kailyn_Maxxon@gmail.','9yahom_6rab',6055,1576466671,'Kailyn_Maxxon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (957,'Tayton','Enock','Tayton_Enock@gmail.c','9yahom_6rab',5687,1021385066,'Tayton_Enock');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (958,'Taevion','Lake','Taevion_Lake@gmail.c','9yahom_6rab',7171,1019168566,'Taevion_Lake');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (959,'Warrior','Bam','Warrior_Bam@gmail.co','9yahom_6rab',8343,1599925408,'Warrior_Bam');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (960,'Korban','Keoni','Korban_Keoni@gmail.c','9yahom_6rab',4580,1532752542,'Korban_Keoni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (961,'Kedrick','Myshawn','Kedrick_Myshawn@gmai','9yahom_6rab',6159,1227255353,'Kedrick_Myshawn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (962,'Aaryav','Trayden','Aaryav_Trayden@gmail','9yahom_6rab',1094,1015179794,'Aaryav_Trayden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (963,'Yaxel','Fortune','Yaxel_Fortune@gmail.','9yahom_6rab',8558,1135200422,'Yaxel_Fortune');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (964,'Armen','Wysdom','Armen_Wysdom@gmail.c','9yahom_6rab',9732,1052548474,'Armen_Wysdom');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (965,'Keone','Mozes','Keone_Mozes@gmail.co','9yahom_6rab',8218,1558569662,'Keone_Mozes');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (966,'Emile','Sneijder','Emile_Sneijder@gmail','9yahom_6rab',8919,1008890905,'Emile_Sneijder');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (967,'Given','Jonael','Given_Jonael@gmail.c','9yahom_6rab',5502,1068559101,'Given_Jonael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (968,'Tavon','Cardell','Tavon_Cardell@gmail.','9yahom_6rab',3382,1506299741,'Tavon_Cardell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (969,'Alazar','Collin','Alazar_Collin@gmail.','9yahom_6rab',1621,1280045201,'Alazar_Collin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (970,'Ajdin','Maliki','Ajdin_Maliki@gmail.c','9yahom_6rab',9473,1591640968,'Ajdin_Maliki');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (971,'Jewels','Mubashir','Jewels_Mubashir@gmai','9yahom_6rab',3639,1597688899,'Jewels_Mubashir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (972,'Daenerys','Tahmir','Daenerys_Tahmir@gmai','9yahom_6rab',3559,1521645145,'Daenerys_Tahmir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (973,'Karan','Gift','Karan_Gift@gmail.com','9yahom_6rab',5842,1024509811,'Karan_Gift');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (974,'Javarion','Achille','Javarion_Achille@gma','9yahom_6rab',8694,1546484499,'Javarion_Achille');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (975,'Mikelle','Jahvon','Mikelle_Jahvon@gmail','9yahom_6rab',6423,1168820911,'Mikelle_Jahvon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (976,'Syire','Jahsan','Syire_Jahsan@gmail.c','9yahom_6rab',5251,1247597026,'Syire_Jahsan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (977,'Marvin','Lewin','Marvin_Lewin@gmail.c','9yahom_6rab',1320,1563264220,'Marvin_Lewin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (978,'Brennan','Jahi','Brennan_Jahi@gmail.c','9yahom_6rab',2190,1053271006,'Brennan_Jahi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (979,'Jacquees','Ryzen','Jacquees_Ryzen@gmail','9yahom_6rab',4825,1230513848,'Jacquees_Ryzen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (980,'Wilmer','Magdiel','Wilmer_Magdiel@gmail','9yahom_6rab',5797,1110131292,'Wilmer_Magdiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (981,'Janus','Luxton','Janus_Luxton@gmail.c','9yahom_6rab',9952,1530597506,'Janus_Luxton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (982,'Luay','Hilo','Luay_Hilo@gmail.com','9yahom_6rab',9011,1551891853,'Luay_Hilo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (983,'Imir','Dajon','Imir_Dajon@gmail.com','9yahom_6rab',7140,1209762204,'Imir_Dajon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (984,'Jakhi','Lennex','Jakhi_Lennex@gmail.c','9yahom_6rab',3073,1545414815,'Jakhi_Lennex');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (985,'Kwadwo','Zayven','Kwadwo_Zayven@gmail.','9yahom_6rab',510,1161951468,'Kwadwo_Zayven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (986,'Josue','Kainon','Josue_Kainon@gmail.c','9yahom_6rab',8505,1083758356,'Josue_Kainon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (987,'Ki','Leviathan','Ki_Leviathan@gmail.c','9yahom_6rab',5111,1541405984,'Ki_Leviathan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (988,'Kit','Mecca','Kit_Mecca@gmail.com','9yahom_6rab',9833,1280478274,'Kit_Mecca');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (989,'Khiry','Shazain','Khiry_Shazain@gmail.','9yahom_6rab',3343,1129837539,'Khiry_Shazain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (990,'Phor','Eligh','Phor_Eligh@gmail.com','9yahom_6rab',6563,1225628430,'Phor_Eligh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (991,'Ibhan','Terrion','Ibhan_Terrion@gmail.','9yahom_6rab',5089,1006050290,'Ibhan_Terrion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (992,'Niklaus','Danell','Niklaus_Danell@gmail','9yahom_6rab',9058,1525975640,'Niklaus_Danell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (993,'Diyon','Chozen','Diyon_Chozen@gmail.c','9yahom_6rab',1822,1592512816,'Diyon_Chozen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (994,'Jakob','Perceval','Jakob_Perceval@gmail','9yahom_6rab',8239,1203498704,'Jakob_Perceval');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (995,'Paulie','Yasiah','Paulie_Yasiah@gmail.','9yahom_6rab',1563,1107976892,'Paulie_Yasiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (996,'Jawaun','Mikah','Jawaun_Mikah@gmail.c','9yahom_6rab',4194,1030273496,'Jawaun_Mikah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (997,'Saleh','Gurjas','Saleh_Gurjas@gmail.c','9yahom_6rab',7282,1581585021,'Saleh_Gurjas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (998,'Osiel','Aayaan','Osiel_Aayaan@gmail.c','9yahom_6rab',6876,1035767158,'Osiel_Aayaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (999,'Ziv','Jandel','Ziv_Jandel@gmail.com','9yahom_6rab',8283,1249874139,'Ziv_Jandel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1000,'Emersen','Dayven','Emersen_Dayven@gmail','9yahom_6rab',1478,1007912114,'Emersen_Dayven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1001,'Nehemias','Vardaan','Nehemias_Vardaan@gma','9yahom_6rab',2043,1287437065,'Nehemias_Vardaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1002,'Poseidon','Prahlad','Poseidon_Prahlad@gma','9yahom_6rab',9759,1139509762,'Poseidon_Prahlad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1003,'Kirby','Theodor','Kirby_Theodor@gmail.','9yahom_6rab',9902,1015023654,'Kirby_Theodor');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1004,'Helix','Deiondre','Helix_Deiondre@gmail','9yahom_6rab',3688,1016379408,'Helix_Deiondre');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1005,'Maru','Asan','Maru_Asan@gmail.com','9yahom_6rab',6326,1171052375,'Maru_Asan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1006,'Zorawar','Rhoen','Zorawar_Rhoen@gmail.','9yahom_6rab',9187,1269696357,'Zorawar_Rhoen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1007,'Tayyib','Josedejesus','Tayyib_Josedejesus@g','9yahom_6rab',4199,1538382579,'Tayyib_Josedejesus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1008,'Legacy','Jody','Legacy_Jody@gmail.co','9yahom_6rab',2458,1096208407,'Legacy_Jody');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1009,'Jaylin','Andrzej','Jaylin_Andrzej@gmail','9yahom_6rab',9801,1145829500,'Jaylin_Andrzej');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1010,'Alontae','Jayar','Alontae_Jayar@gmail.','9yahom_6rab',938,1231010095,'Alontae_Jayar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1011,'Dovid','Ziya','Dovid_Ziya@gmail.com','9yahom_6rab',6561,1113293619,'Dovid_Ziya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1012,'Chayden','Kahan','Chayden_Kahan@gmail.','9yahom_6rab',6212,1239699260,'Chayden_Kahan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1013,'Jeferson','Athanasius','Jeferson_Athanasius@','9yahom_6rab',1401,1114126301,'Jeferson_Athanasius');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1014,'Kenzie','Knash','Kenzie_Knash@gmail.c','9yahom_6rab',3598,1042369212,'Kenzie_Knash');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1015,'Georgie','Blesson','Georgie_Blesson@gmai','9yahom_6rab',8470,1271701988,'Georgie_Blesson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1016,'Yogi','Riyaan','Yogi_Riyaan@gmail.co','9yahom_6rab',9893,1246169075,'Yogi_Riyaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1017,'Crimson','Tymere','Crimson_Tymere@gmail','9yahom_6rab',4186,1129367989,'Crimson_Tymere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1018,'Tomas','Beckhym','Tomas_Beckhym@gmail.','9yahom_6rab',8949,1522960977,'Tomas_Beckhym');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1019,'Nhan','Maguire','Nhan_Maguire@gmail.c','9yahom_6rab',2414,1243146277,'Nhan_Maguire');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1020,'Yeab','Haedyn','Yeab_Haedyn@gmail.co','9yahom_6rab',9257,1525897959,'Yeab_Haedyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1021,'Kristan','Tavis','Kristan_Tavis@gmail.','9yahom_6rab',5600,1126116995,'Kristan_Tavis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1022,'Manase','Arcadius','Manase_Arcadius@gmai','9yahom_6rab',6646,1561233433,'Manase_Arcadius');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1023,'Esrael','Brylin','Esrael_Brylin@gmail.','9yahom_6rab',9470,1528822578,'Esrael_Brylin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1024,'Rownan','Fareed','Rownan_Fareed@gmail.','9yahom_6rab',3463,1132450580,'Rownan_Fareed');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1025,'Germany','Future','Germany_Future@gmail','9yahom_6rab',5712,1583346737,'Germany_Future');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1026,'Oluwadamilola','Iker','Oluwadamilola_Iker@g','9yahom_6rab',9313,1077377562,'Oluwadamilola_Iker');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1027,'Ewan','Hendricks','Ewan_Hendricks@gmail','9yahom_6rab',2497,1557405670,'Ewan_Hendricks');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1028,'Tysen','Emmerick','Tysen_Emmerick@gmail','9yahom_6rab',3645,1121498335,'Tysen_Emmerick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1029,'Cheskel','Anthoney','Cheskel_Anthoney@gma','9yahom_6rab',3000,1200651744,'Cheskel_Anthoney');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1030,'Kiyon','Benson','Kiyon_Benson@gmail.c','9yahom_6rab',9338,1554636455,'Kiyon_Benson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1031,'Shivaan','Roric','Shivaan_Roric@gmail.','9yahom_6rab',1611,1242663651,'Shivaan_Roric');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1032,'Nylan','Ethyn','Nylan_Ethyn@gmail.co','9yahom_6rab',9022,1597266768,'Nylan_Ethyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1033,'Saxon','Karlos','Saxon_Karlos@gmail.c','9yahom_6rab',1200,1079523837,'Saxon_Karlos');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1034,'Zygmunt','Cotton','Zygmunt_Cotton@gmail','9yahom_6rab',6318,1097531465,'Zygmunt_Cotton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1035,'Shyam','Tyreke','Shyam_Tyreke@gmail.c','9yahom_6rab',2805,1087641648,'Shyam_Tyreke');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1036,'Micheal','Hazen','Micheal_Hazen@gmail.','9yahom_6rab',5158,1296942983,'Micheal_Hazen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1037,'Axston','Kalyan','Axston_Kalyan@gmail.','9yahom_6rab',2520,1052358033,'Axston_Kalyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1038,'Irmias','Cannen','Irmias_Cannen@gmail.','9yahom_6rab',9665,1080953226,'Irmias_Cannen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1039,'Kinsley','Ladd','Kinsley_Ladd@gmail.c','9yahom_6rab',9540,1156414891,'Kinsley_Ladd');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1040,'Yadrian','Alphonsus','Yadrian_Alphonsus@gm','9yahom_6rab',3841,1111970462,'Yadrian_Alphonsus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1041,'Desmond','Corrin','Desmond_Corrin@gmail','9yahom_6rab',9216,1154098014,'Desmond_Corrin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1042,'Ziyad','Champion','Ziyad_Champion@gmail','9yahom_6rab',6878,1144268070,'Ziyad_Champion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1043,'Knoxlee','Lan','Knoxlee_Lan@gmail.co','9yahom_6rab',4442,1111339089,'Knoxlee_Lan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1044,'Dreyton','Davidson','Dreyton_Davidson@gma','9yahom_6rab',4065,1159116695,'Dreyton_Davidson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1045,'Tayden','Gavin','Tayden_Gavin@gmail.c','9yahom_6rab',7929,1114592848,'Tayden_Gavin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1046,'Gabrial','Anees','Gabrial_Anees@gmail.','9yahom_6rab',5344,1297512467,'Gabrial_Anees');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1047,'Kaos','Chandler','Kaos_Chandler@gmail.','9yahom_6rab',8488,1065557236,'Kaos_Chandler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1048,'Bryten','Xavi','Bryten_Xavi@gmail.co','9yahom_6rab',4591,1553051807,'Bryten_Xavi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1049,'Addison','Robinson','Addison_Robinson@gma','9yahom_6rab',4158,1135908472,'Addison_Robinson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1050,'Alanzo','Jamill','Alanzo_Jamill@gmail.','9yahom_6rab',1404,1084534695,'Alanzo_Jamill');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1051,'Autumn','Aarav','Autumn_Aarav@gmail.c','9yahom_6rab',4923,1043199583,'Autumn_Aarav');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1052,'Elwin','Hari','Elwin_Hari@gmail.com','9yahom_6rab',5326,1503222755,'Elwin_Hari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1053,'Beto','Toryn','Beto_Toryn@gmail.com','9yahom_6rab',2732,1233497442,'Beto_Toryn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1054,'Arvid','Keyaan','Arvid_Keyaan@gmail.c','9yahom_6rab',8536,1158334035,'Arvid_Keyaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1055,'Bayne','Dasean','Bayne_Dasean@gmail.c','9yahom_6rab',7950,1249316123,'Bayne_Dasean');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1056,'Zolin','Fields','Zolin_Fields@gmail.c','9yahom_6rab',8121,1155282022,'Zolin_Fields');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1057,'Kiano','Kyreon','Kiano_Kyreon@gmail.c','9yahom_6rab',8220,1062374326,'Kiano_Kyreon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1058,'Collis','Dovber','Collis_Dovber@gmail.','9yahom_6rab',9345,1029123658,'Collis_Dovber');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1059,'Malacai','Zakari','Malacai_Zakari@gmail','9yahom_6rab',6947,1012340334,'Malacai_Zakari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1060,'Rayne','Damiere','Rayne_Damiere@gmail.','9yahom_6rab',9620,1087947839,'Rayne_Damiere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1061,'Ansh','Winn','Ansh_Winn@gmail.com','9yahom_6rab',2943,1159814279,'Ansh_Winn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1062,'Jiyansh','Isak','Jiyansh_Isak@gmail.c','9yahom_6rab',2696,1133824328,'Jiyansh_Isak');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1063,'Jasan','Mordy','Jasan_Mordy@gmail.co','9yahom_6rab',8231,1595296687,'Jasan_Mordy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1064,'Jayke','Sanad','Jayke_Sanad@gmail.co','9yahom_6rab',663,1525515534,'Jayke_Sanad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1065,'Milas','Jodie','Milas_Jodie@gmail.co','9yahom_6rab',7974,1563361933,'Milas_Jodie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1066,'Mortimer','Harper','Mortimer_Harper@gmai','9yahom_6rab',6938,1256336774,'Mortimer_Harper');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1067,'Oluwatobiloba','Cj','Oluwatobiloba_Cj@gma','9yahom_6rab',2239,1207997535,'Oluwatobiloba_Cj');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1068,'Moosa','Alan','Moosa_Alan@gmail.com','9yahom_6rab',9752,1142097678,'Moosa_Alan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1069,'Rayner','Syles','Rayner_Syles@gmail.c','9yahom_6rab',6713,1007548459,'Rayner_Syles');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1070,'Aryav','Alhassane','Aryav_Alhassane@gmai','9yahom_6rab',4940,1288686480,'Aryav_Alhassane');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1071,'Yasiel','Kenton','Yasiel_Kenton@gmail.','9yahom_6rab',6308,1107129050,'Yasiel_Kenton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1072,'Devian','Nafis','Devian_Nafis@gmail.c','9yahom_6rab',4455,1240311377,'Devian_Nafis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1073,'Orlando','Langley','Orlando_Langley@gmai','9yahom_6rab',5864,1074281954,'Orlando_Langley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1074,'Macallan','Tarron','Macallan_Tarron@gmai','9yahom_6rab',5036,1279286717,'Macallan_Tarron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1075,'Karsten','Lexton','Karsten_Lexton@gmail','9yahom_6rab',9236,1063411645,'Karsten_Lexton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1076,'Nore','Eagle','Nore_Eagle@gmail.com','9yahom_6rab',5931,1192842296,'Nore_Eagle');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1077,'Wyn','Guthrie','Wyn_Guthrie@gmail.co','9yahom_6rab',1955,1515695464,'Wyn_Guthrie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1078,'Oaklynn','Sho','Oaklynn_Sho@gmail.co','9yahom_6rab',607,1012398221,'Oaklynn_Sho');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1079,'Kriyansh','Grainger','Kriyansh_Grainger@gm','9yahom_6rab',4895,1226077259,'Kriyansh_Grainger');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1080,'Eyoel','Merek','Eyoel_Merek@gmail.co','9yahom_6rab',5265,1505278427,'Eyoel_Merek');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1081,'Kwamaine','Imarion','Kwamaine_Imarion@gma','9yahom_6rab',4264,1222640660,'Kwamaine_Imarion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1082,'Yahmir','Amahj','Yahmir_Amahj@gmail.c','9yahom_6rab',7133,1578278042,'Yahmir_Amahj');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1083,'Khoi','Jubal','Khoi_Jubal@gmail.com','9yahom_6rab',8914,1513210596,'Khoi_Jubal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1084,'Ezekiah','Alarick','Ezekiah_Alarick@gmai','9yahom_6rab',8829,1049901549,'Ezekiah_Alarick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1085,'Venice','Axell','Venice_Axell@gmail.c','9yahom_6rab',6920,1591601502,'Venice_Axell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1086,'Zyaan','Inigo','Zyaan_Inigo@gmail.co','9yahom_6rab',9514,1241001148,'Zyaan_Inigo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1087,'Nnamdi','Akoni','Nnamdi_Akoni@gmail.c','9yahom_6rab',2256,1113960449,'Nnamdi_Akoni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1088,'Gotti','Violet','Gotti_Violet@gmail.c','9yahom_6rab',3904,1583765624,'Gotti_Violet');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1089,'Ren','Dian','Ren_Dian@gmail.com','9yahom_6rab',3582,1563163575,'Ren_Dian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1090,'Juliann','Kobie','Juliann_Kobie@gmail.','9yahom_6rab',8196,1010436087,'Juliann_Kobie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1091,'Kelby','Zay','Kelby_Zay@gmail.com','9yahom_6rab',8330,1085087309,'Kelby_Zay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1092,'Ozwald','Dynasty','Ozwald_Dynasty@gmail','9yahom_6rab',3610,1025871480,'Ozwald_Dynasty');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1093,'Sevyn','Sameer','Sevyn_Sameer@gmail.c','9yahom_6rab',8318,1220613803,'Sevyn_Sameer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1094,'Jehu','Wilson','Jehu_Wilson@gmail.co','9yahom_6rab',5344,1518573108,'Jehu_Wilson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1095,'Davante','Jaidin','Davante_Jaidin@gmail','9yahom_6rab',4809,1137525763,'Davante_Jaidin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1096,'Steffan','Malachy','Steffan_Malachy@gmai','9yahom_6rab',4378,1259105627,'Steffan_Malachy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1097,'Deaundre','Myaire','Deaundre_Myaire@gmai','9yahom_6rab',8454,1022843106,'Deaundre_Myaire');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1098,'Crisanto','Ollivander','Crisanto_Ollivander@','9yahom_6rab',3898,1571730849,'Crisanto_Ollivander');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1099,'Island','Spade','Island_Spade@gmail.c','9yahom_6rab',3583,1538650326,'Island_Spade');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1100,'Guillermo','Bishop','Guillermo_Bishop@gma','9yahom_6rab',9305,1175904505,'Guillermo_Bishop');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1101,'Kaysan','Prentiss','Kaysan_Prentiss@gmai','9yahom_6rab',7209,1291644947,'Kaysan_Prentiss');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1102,'Yehia','Gilbert','Yehia_Gilbert@gmail.','9yahom_6rab',9904,1281053936,'Yehia_Gilbert');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1103,'Aedyn','Yerik','Aedyn_Yerik@gmail.co','9yahom_6rab',5605,1114655692,'Aedyn_Yerik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1104,'Dilsher','Evin','Dilsher_Evin@gmail.c','9yahom_6rab',5207,1135392015,'Dilsher_Evin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1105,'Juanmanuel','Khalon','Juanmanuel_Khalon@gm','9yahom_6rab',5305,1284112556,'Juanmanuel_Khalon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1106,'Tannon','Ahmon','Tannon_Ahmon@gmail.c','9yahom_6rab',671,1251513396,'Tannon_Ahmon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1107,'Ezaiah','Cainin','Ezaiah_Cainin@gmail.','9yahom_6rab',2866,1095625158,'Ezaiah_Cainin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1108,'Yul','Nizar','Yul_Nizar@gmail.com','9yahom_6rab',697,1029650565,'Yul_Nizar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1109,'Jaryan','Maccoy','Jaryan_Maccoy@gmail.','9yahom_6rab',2238,1223833360,'Jaryan_Maccoy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1110,'Dagen','Nachmen','Dagen_Nachmen@gmail.','9yahom_6rab',7278,1078029440,'Dagen_Nachmen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1111,'Danyel','Kourtland','Danyel_Kourtland@gma','9yahom_6rab',8517,1142533333,'Danyel_Kourtland');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1112,'Garett','Ephrem','Garett_Ephrem@gmail.','9yahom_6rab',4755,1014445412,'Garett_Ephrem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1113,'Youssouf','Halo','Youssouf_Halo@gmail.','9yahom_6rab',7057,1000606896,'Youssouf_Halo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1114,'Najib','Ridaan','Najib_Ridaan@gmail.c','9yahom_6rab',3629,1166543333,'Najib_Ridaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1115,'Richie','Aidan','Richie_Aidan@gmail.c','9yahom_6rab',8851,1555447990,'Richie_Aidan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1116,'West','Acea','West_Acea@gmail.com','9yahom_6rab',6301,1050971719,'West_Acea');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1117,'Pietro','Alexis','Pietro_Alexis@gmail.','9yahom_6rab',6909,1062073504,'Pietro_Alexis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1118,'Zekiel','Dom','Zekiel_Dom@gmail.com','9yahom_6rab',1695,1099750416,'Zekiel_Dom');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1119,'Domnick','Braven','Domnick_Braven@gmail','9yahom_6rab',5213,1585767190,'Domnick_Braven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1120,'Foxx','Acesyn','Foxx_Acesyn@gmail.co','9yahom_6rab',5259,1192165352,'Foxx_Acesyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1121,'Jeloni','Khymir','Jeloni_Khymir@gmail.','9yahom_6rab',6180,1265461834,'Jeloni_Khymir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1122,'Hawke','Keelin','Hawke_Keelin@gmail.c','9yahom_6rab',7780,1029088523,'Hawke_Keelin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1123,'Rhyan','Raven','Rhyan_Raven@gmail.co','9yahom_6rab',5080,1266835763,'Rhyan_Raven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1124,'Paul','Maijor','Paul_Maijor@gmail.co','9yahom_6rab',787,1188854760,'Paul_Maijor');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1125,'Kerrigan','Krystian','Kerrigan_Krystian@gm','9yahom_6rab',4931,1137124068,'Kerrigan_Krystian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1126,'Sahib','Henrry','Sahib_Henrry@gmail.c','9yahom_6rab',9528,1266729618,'Sahib_Henrry');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1127,'Armonn','Skylan','Armonn_Skylan@gmail.','9yahom_6rab',4781,1522833301,'Armonn_Skylan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1128,'Finneas','Royale','Finneas_Royale@gmail','9yahom_6rab',7611,1553234139,'Finneas_Royale');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1129,'Keymoni','Jeyren','Keymoni_Jeyren@gmail','9yahom_6rab',5898,1026473571,'Keymoni_Jeyren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1130,'Jaxzon','Jaiaire','Jaxzon_Jaiaire@gmail','9yahom_6rab',9113,1297334041,'Jaxzon_Jaiaire');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1131,'Cameren','Itay','Cameren_Itay@gmail.c','9yahom_6rab',3998,1537312850,'Cameren_Itay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1132,'Rook','Aisen','Rook_Aisen@gmail.com','9yahom_6rab',7114,1515144302,'Rook_Aisen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1133,'Samar','Khade','Samar_Khade@gmail.co','9yahom_6rab',8906,1001030003,'Samar_Khade');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1134,'Ozzie','Jered','Ozzie_Jered@gmail.co','9yahom_6rab',9409,1081449133,'Ozzie_Jered');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1135,'Borna','Thyme','Borna_Thyme@gmail.co','9yahom_6rab',2554,1536273349,'Borna_Thyme');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1136,'Khylon','Zealand','Khylon_Zealand@gmail','9yahom_6rab',9173,1525881194,'Khylon_Zealand');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1137,'Nautica','Drayvin','Nautica_Drayvin@gmai','9yahom_6rab',6930,1266052717,'Nautica_Drayvin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1138,'Hendrik','Michai','Hendrik_Michai@gmail','9yahom_6rab',943,1565405171,'Hendrik_Michai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1139,'Capone','Ryon','Capone_Ryon@gmail.co','9yahom_6rab',8114,1058717972,'Capone_Ryon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1140,'Norman','Azuriah','Norman_Azuriah@gmail','9yahom_6rab',9305,1221155485,'Norman_Azuriah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1141,'Gavyn','Adley','Gavyn_Adley@gmail.co','9yahom_6rab',8127,1218537331,'Gavyn_Adley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1142,'Arda','Neithan','Arda_Neithan@gmail.c','9yahom_6rab',8104,1120789497,'Arda_Neithan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1143,'Hayze','Maxime','Hayze_Maxime@gmail.c','9yahom_6rab',2337,1145393468,'Hayze_Maxime');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1144,'Estephan','Draylon','Estephan_Draylon@gma','9yahom_6rab',3120,1501277574,'Estephan_Draylon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1145,'Damen','Gerrit','Damen_Gerrit@gmail.c','9yahom_6rab',9667,1537750692,'Damen_Gerrit');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1146,'Drexton','Shriyan','Drexton_Shriyan@gmai','9yahom_6rab',7810,1170170617,'Drexton_Shriyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1147,'Pax','Miguel','Pax_Miguel@gmail.com','9yahom_6rab',5274,1023077073,'Pax_Miguel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1148,'Kervin','Zayir','Kervin_Zayir@gmail.c','9yahom_6rab',2776,1192994611,'Kervin_Zayir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1149,'Thoran','Jaymere','Thoran_Jaymere@gmail','9yahom_6rab',2296,1115791554,'Thoran_Jaymere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1150,'Kaysn','Robson','Kaysn_Robson@gmail.c','9yahom_6rab',7093,1094513280,'Kaysn_Robson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1151,'Wahaj','Itamar','Wahaj_Itamar@gmail.c','9yahom_6rab',7898,1596083861,'Wahaj_Itamar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1152,'Taylen','Nixon','Taylen_Nixon@gmail.c','9yahom_6rab',9147,1013469485,'Taylen_Nixon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1153,'Kingslee','Bryn','Kingslee_Bryn@gmail.','9yahom_6rab',1038,1505669929,'Kingslee_Bryn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1154,'Anze','Kaidynce','Anze_Kaidynce@gmail.','9yahom_6rab',7088,1581034307,'Anze_Kaidynce');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1155,'Jazhiel','Chanan','Jazhiel_Chanan@gmail','9yahom_6rab',3045,1212467587,'Jazhiel_Chanan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1156,'Azavier','Daryus','Azavier_Daryus@gmail','9yahom_6rab',5998,1230227472,'Azavier_Daryus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1157,'Adeniyi','Ashwath','Adeniyi_Ashwath@gmai','9yahom_6rab',8362,1064295761,'Adeniyi_Ashwath');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1158,'Zecharyah','Sadler','Zecharyah_Sadler@gma','9yahom_6rab',8415,1052243108,'Zecharyah_Sadler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1159,'Sharvin','Lamaj','Sharvin_Lamaj@gmail.','9yahom_6rab',2402,1535178078,'Sharvin_Lamaj');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1160,'Aubree','Kendal','Aubree_Kendal@gmail.','9yahom_6rab',7943,1181253573,'Aubree_Kendal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1161,'Avel','Vishaan','Avel_Vishaan@gmail.c','9yahom_6rab',3557,1102031885,'Avel_Vishaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1162,'Haggard','Leshawn','Haggard_Leshawn@gmai','9yahom_6rab',2397,1522709710,'Haggard_Leshawn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1163,'Omair','Lindan','Omair_Lindan@gmail.c','9yahom_6rab',6426,1128703749,'Omair_Lindan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1164,'Jasper','Seamus','Jasper_Seamus@gmail.','9yahom_6rab',6480,1076537847,'Jasper_Seamus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1165,'Dorlan','Tzion','Dorlan_Tzion@gmail.c','9yahom_6rab',6314,1069145486,'Dorlan_Tzion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1166,'Tawan','Reda','Tawan_Reda@gmail.com','9yahom_6rab',7274,1542362146,'Tawan_Reda');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (451,'Haden','Oskar','Haden_Oskar@gmail.co','9yahom_6rab',8641,1198029995,'Haden_Oskar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (452,'Fredrick','Sinan','Fredrick_Sinan@gmail','9yahom_6rab',7438,1536578323,'Fredrick_Sinan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (453,'Trig','Bashar','Trig_Bashar@gmail.co','9yahom_6rab',9530,1518407317,'Trig_Bashar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (454,'Waylan','Martel','Waylan_Martel@gmail.','9yahom_6rab',7335,1054639856,'Waylan_Martel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (455,'Zubin','Finn','Zubin_Finn@gmail.com','9yahom_6rab',8724,1593581063,'Zubin_Finn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (456,'Anan','Bryler','Anan_Bryler@gmail.co','9yahom_6rab',8924,1255960403,'Anan_Bryler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (457,'Wirth','Eldric','Wirth_Eldric@gmail.c','9yahom_6rab',5352,1076202194,'Wirth_Eldric');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (458,'Anson','Damar','Anson_Damar@gmail.co','9yahom_6rab',2196,1247514718,'Anson_Damar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (459,'Wiliam','Zed','Wiliam_Zed@gmail.com','9yahom_6rab',4386,1116959850,'Wiliam_Zed');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (460,'Pavly','Kasch','Pavly_Kasch@gmail.co','9yahom_6rab',697,1567469748,'Pavly_Kasch');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (461,'Neville','Ahren','Neville_Ahren@gmail.','9yahom_6rab',5421,1281248272,'Neville_Ahren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (462,'Jasani','Aloniab','Jasani_Aloniab@gmail','9yahom_6rab',5519,1599852885,'Jasani_Aloniab');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (463,'Bernell','Trae','Bernell_Trae@gmail.c','9yahom_6rab',9415,1054494125,'Bernell_Trae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (464,'Luccas','Jossiah','Luccas_Jossiah@gmail','9yahom_6rab',572,1521019455,'Luccas_Jossiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (465,'Xaden','Marcelino','Xaden_Marcelino@gmai','9yahom_6rab',9220,1587382552,'Xaden_Marcelino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (466,'Nathanial','Rudi','Nathanial_Rudi@gmail','9yahom_6rab',9820,1181115301,'Nathanial_Rudi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (467,'True','Avondre','True_Avondre@gmail.c','9yahom_6rab',4774,1101665483,'True_Avondre');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (468,'Dartagnan','Huckson','Dartagnan_Huckson@gm','9yahom_6rab',9918,1204681558,'Dartagnan_Huckson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (469,'Renley','Christiaan','Renley_Christiaan@gm','9yahom_6rab',3334,1595574436,'Renley_Christiaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (470,'Lathen','Hyatt','Lathen_Hyatt@gmail.c','9yahom_6rab',2748,1586382282,'Lathen_Hyatt');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (471,'Atticus','Jaxxyn','Atticus_Jaxxyn@gmail','9yahom_6rab',1422,1531134003,'Atticus_Jaxxyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (472,'Sebastain','Rori','Sebastain_Rori@gmail','9yahom_6rab',844,1505969232,'Sebastain_Rori');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (473,'Khaalid','Dilawar','Khaalid_Dilawar@gmai','9yahom_6rab',1576,1279841540,'Khaalid_Dilawar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (474,'Brodie','Ocean','Brodie_Ocean@gmail.c','9yahom_6rab',8162,1541877278,'Brodie_Ocean');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (475,'Eriksen','Ziyu','Eriksen_Ziyu@gmail.c','9yahom_6rab',7832,1572947192,'Eriksen_Ziyu');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (476,'Mithran','Andres','Mithran_Andres@gmail','9yahom_6rab',3803,1519870094,'Mithran_Andres');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (477,'Jonah','Finlay','Jonah_Finlay@gmail.c','9yahom_6rab',3782,1228955646,'Jonah_Finlay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (478,'Gentry','Montana','Gentry_Montana@gmail','9yahom_6rab',799,1179498129,'Gentry_Montana');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (479,'Leonides','Gabino','Leonides_Gabino@gmai','9yahom_6rab',7172,1120290448,'Leonides_Gabino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (480,'Neevan','Castyn','Neevan_Castyn@gmail.','9yahom_6rab',5732,1137804421,'Neevan_Castyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (481,'Aari','Kellin','Aari_Kellin@gmail.co','9yahom_6rab',1955,1529080474,'Aari_Kellin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (482,'Niles','Priyan','Niles_Priyan@gmail.c','9yahom_6rab',6966,1031276947,'Niles_Priyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (483,'Tennyson','Justus','Tennyson_Justus@gmai','9yahom_6rab',2107,1098150353,'Tennyson_Justus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (484,'Sriansh','Lupe','Sriansh_Lupe@gmail.c','9yahom_6rab',1356,1568338057,'Sriansh_Lupe');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (485,'Taysean','Luc','Taysean_Luc@gmail.co','9yahom_6rab',3214,1234202192,'Taysean_Luc');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (486,'Journey','Kyion','Journey_Kyion@gmail.','9yahom_6rab',8474,1247984855,'Journey_Kyion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (487,'Hadrian','Rooney','Hadrian_Rooney@gmail','9yahom_6rab',9288,1056122845,'Hadrian_Rooney');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (488,'Kahiau','Kion','Kahiau_Kion@gmail.co','9yahom_6rab',9157,1057254825,'Kahiau_Kion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (489,'Teal','Rezwan','Teal_Rezwan@gmail.co','9yahom_6rab',2730,1253412060,'Teal_Rezwan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (490,'Tramell','Itzae','Tramell_Itzae@gmail.','9yahom_6rab',6870,1282902325,'Tramell_Itzae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (491,'Taveon','Hisham','Taveon_Hisham@gmail.','9yahom_6rab',6978,1092277404,'Taveon_Hisham');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (492,'Reynold','Elazar','Reynold_Elazar@gmail','9yahom_6rab',3245,1517741528,'Reynold_Elazar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (493,'Samarion','Jasin','Samarion_Jasin@gmail','9yahom_6rab',9328,1535664527,'Samarion_Jasin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (494,'Garvey','Kevion','Garvey_Kevion@gmail.','9yahom_6rab',4313,1236379135,'Garvey_Kevion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (495,'Candor','Mia','Candor_Mia@gmail.com','9yahom_6rab',2677,1593132420,'Candor_Mia');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (496,'Braxen','Ellias','Braxen_Ellias@gmail.','9yahom_6rab',1166,1282569757,'Braxen_Ellias');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (497,'Kosisochukwu','Candler','Kosisochukwu_Candler','9yahom_6rab',1297,1131981165,'Kosisochukwu_Candler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (498,'Dimitrios','Gennaro','Dimitrios_Gennaro@gm','9yahom_6rab',7895,1521249228,'Dimitrios_Gennaro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (499,'Dakhi','Khing','Dakhi_Khing@gmail.co','9yahom_6rab',5664,1026985143,'Dakhi_Khing');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (500,'Ayomide','Johntae','Ayomide_Johntae@gmai','9yahom_6rab',4478,1145110895,'Ayomide_Johntae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (501,'Yanai','Arnav','Yanai_Arnav@gmail.co','9yahom_6rab',8756,1278797543,'Yanai_Arnav');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (502,'Evon','Taz','Evon_Taz@gmail.com','9yahom_6rab',5793,1146903001,'Evon_Taz');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (503,'Erik','Zekiah','Erik_Zekiah@gmail.co','9yahom_6rab',875,1053753128,'Erik_Zekiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (504,'Said','Killyan','Said_Killyan@gmail.c','9yahom_6rab',5412,1549700539,'Said_Killyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (505,'Layten','Kazuma','Layten_Kazuma@gmail.','9yahom_6rab',8907,1544813558,'Layten_Kazuma');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (506,'Cayo','Alaa','Cayo_Alaa@gmail.com','9yahom_6rab',838,1229237643,'Cayo_Alaa');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (507,'Kristof','Naftula','Kristof_Naftula@gmai','9yahom_6rab',5056,1214510518,'Kristof_Naftula');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (508,'Alwin','Dallas','Alwin_Dallas@gmail.c','9yahom_6rab',7603,1069600049,'Alwin_Dallas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (509,'Daouda','Teron','Daouda_Teron@gmail.c','9yahom_6rab',5353,1246690975,'Daouda_Teron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (510,'Keiston','Jacere','Keiston_Jacere@gmail','9yahom_6rab',4363,1521312586,'Keiston_Jacere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (511,'Kefren','Lenn','Kefren_Lenn@gmail.co','9yahom_6rab',3873,1251916603,'Kefren_Lenn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (512,'Rodger','Kaizer','Rodger_Kaizer@gmail.','9yahom_6rab',656,1537962573,'Rodger_Kaizer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (513,'Khiem','Yafet','Khiem_Yafet@gmail.co','9yahom_6rab',7133,1116545187,'Khiem_Yafet');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (514,'Sanjay','Eshawn','Sanjay_Eshawn@gmail.','9yahom_6rab',5788,1008262809,'Sanjay_Eshawn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (515,'Yared','Florentino','Yared_Florentino@gma','9yahom_6rab',3621,1287651723,'Yared_Florentino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (516,'Siem','Maycen','Siem_Maycen@gmail.co','9yahom_6rab',3616,1510050191,'Siem_Maycen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (517,'Tamim','Kyere','Tamim_Kyere@gmail.co','9yahom_6rab',7278,1075993535,'Tamim_Kyere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (518,'Zayed','Owain','Zayed_Owain@gmail.co','9yahom_6rab',6677,1571603393,'Zayed_Owain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (519,'Maxximus','Steele','Maxximus_Steele@gmai','9yahom_6rab',1971,1129528508,'Maxximus_Steele');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (520,'Leandrew','Arsal','Leandrew_Arsal@gmail','9yahom_6rab',5189,1109848982,'Leandrew_Arsal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (521,'Kenlin','Saber','Kenlin_Saber@gmail.c','9yahom_6rab',1790,1233718246,'Kenlin_Saber');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (522,'Gamal','Ahyan','Gamal_Ahyan@gmail.co','9yahom_6rab',863,1167642826,'Gamal_Ahyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (523,'Ranveer','Saim','Ranveer_Saim@gmail.c','9yahom_6rab',636,1041976142,'Ranveer_Saim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (524,'Jaquil','Kushal','Jaquil_Kushal@gmail.','9yahom_6rab',7907,1116532546,'Jaquil_Kushal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (525,'Ange','Victoriano','Ange_Victoriano@gmai','9yahom_6rab',1589,1151079276,'Ange_Victoriano');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (526,'Ary','Jermari','Ary_Jermari@gmail.co','9yahom_6rab',3891,1079761831,'Ary_Jermari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (527,'Azen','Ayson','Azen_Ayson@gmail.com','9yahom_6rab',6850,1234170768,'Azen_Ayson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (528,'Breland','Sam','Breland_Sam@gmail.co','9yahom_6rab',2790,1575387273,'Breland_Sam');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (529,'Abdi','Greyden','Abdi_Greyden@gmail.c','9yahom_6rab',6928,1573135968,'Abdi_Greyden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (530,'Holston','Cori','Holston_Cori@gmail.c','9yahom_6rab',1015,1543668023,'Holston_Cori');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (531,'Abdel','Kadence','Abdel_Kadence@gmail.','9yahom_6rab',8600,1165712440,'Abdel_Kadence');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (532,'Kross','Treshon','Kross_Treshon@gmail.','9yahom_6rab',3327,1225042585,'Kross_Treshon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (533,'Cassian','Suhayb','Cassian_Suhayb@gmail','9yahom_6rab',7290,1598931202,'Cassian_Suhayb');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (534,'Terrence','Moriah','Terrence_Moriah@gmai','9yahom_6rab',792,1278410003,'Terrence_Moriah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (535,'Maurizio','Yasiin','Maurizio_Yasiin@gmai','9yahom_6rab',5298,1237999487,'Maurizio_Yasiin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (536,'Ransford','Doc','Ransford_Doc@gmail.c','9yahom_6rab',3471,1158970746,'Ransford_Doc');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (537,'Nyles','Brave','Nyles_Brave@gmail.co','9yahom_6rab',2347,1058828089,'Nyles_Brave');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (538,'Travious','Kieren','Travious_Kieren@gmai','9yahom_6rab',9673,1146417807,'Travious_Kieren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (539,'Avion','Jovanni','Avion_Jovanni@gmail.','9yahom_6rab',2625,1281765275,'Avion_Jovanni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (540,'Thunder','Quill','Thunder_Quill@gmail.','9yahom_6rab',2653,1537508030,'Thunder_Quill');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (541,'Shaheed','Jassiel','Shaheed_Jassiel@gmai','9yahom_6rab',2832,1265627604,'Shaheed_Jassiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (542,'Divine','Xayvion','Divine_Xayvion@gmail','9yahom_6rab',3487,1515579009,'Divine_Xayvion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (543,'Kingjames','Lee','Kingjames_Lee@gmail.','9yahom_6rab',866,1161442493,'Kingjames_Lee');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (544,'Princetin','Brookes','Princetin_Brookes@gm','9yahom_6rab',7572,1126049394,'Princetin_Brookes');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (545,'Serge','Kamarion','Serge_Kamarion@gmail','9yahom_6rab',9529,1015892404,'Serge_Kamarion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (546,'Audrick','Klyde','Audrick_Klyde@gmail.','9yahom_6rab',3838,1263937846,'Audrick_Klyde');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (547,'Arihan','Kentaro','Arihan_Kentaro@gmail','9yahom_6rab',4545,1264946935,'Arihan_Kentaro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (548,'Fermin','Kostas','Fermin_Kostas@gmail.','9yahom_6rab',5045,1506614627,'Fermin_Kostas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (549,'Ivis','Kelechi','Ivis_Kelechi@gmail.c','9yahom_6rab',8104,1074230030,'Ivis_Kelechi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (550,'Altair','Romen','Altair_Romen@gmail.c','9yahom_6rab',4667,1034820661,'Altair_Romen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (551,'Jeevan','Calloway','Jeevan_Calloway@gmai','9yahom_6rab',3160,1587048188,'Jeevan_Calloway');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (552,'Abran','Naod','Abran_Naod@gmail.com','9yahom_6rab',6014,1150449141,'Abran_Naod');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (553,'Ahmias','Camauri','Ahmias_Camauri@gmail','9yahom_6rab',6293,1278750683,'Ahmias_Camauri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (554,'Quint','Herson','Quint_Herson@gmail.c','9yahom_6rab',6635,1284295563,'Quint_Herson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (555,'Yussef','Damauri','Yussef_Damauri@gmail','9yahom_6rab',3696,1530677340,'Yussef_Damauri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (556,'Marceon','Armel','Marceon_Armel@gmail.','9yahom_6rab',9701,1275350962,'Marceon_Armel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (557,'Lukai','Glendon','Lukai_Glendon@gmail.','9yahom_6rab',8504,1102815827,'Lukai_Glendon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (558,'Johnluke','Vedder','Johnluke_Vedder@gmai','9yahom_6rab',992,1057233507,'Johnluke_Vedder');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (559,'Deegan','Yadriel','Deegan_Yadriel@gmail','9yahom_6rab',4787,1551601286,'Deegan_Yadriel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (560,'Nathon','Boruch','Nathon_Boruch@gmail.','9yahom_6rab',5609,1271975529,'Nathon_Boruch');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (561,'Maize','Nyzere','Maize_Nyzere@gmail.c','9yahom_6rab',6355,1599142854,'Maize_Nyzere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (562,'Sirwilliam','Travaris','Sirwilliam_Travaris@','9yahom_6rab',3681,1161423900,'Sirwilliam_Travaris');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (563,'Renard','Daylan','Renard_Daylan@gmail.','9yahom_6rab',5565,1174512461,'Renard_Daylan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (564,'Boniface','Brentlee','Boniface_Brentlee@gm','9yahom_6rab',6203,1270451037,'Boniface_Brentlee');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (565,'Salar','Reggie','Salar_Reggie@gmail.c','9yahom_6rab',8045,1081235296,'Salar_Reggie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (566,'Hameed','Ariston','Hameed_Ariston@gmail','9yahom_6rab',4763,1583269152,'Hameed_Ariston');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (567,'Artist','Sandro','Artist_Sandro@gmail.','9yahom_6rab',7962,1115629820,'Artist_Sandro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (568,'Layland','Ryze','Layland_Ryze@gmail.c','9yahom_6rab',1264,1576226116,'Layland_Ryze');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (569,'Avryn','Dolan','Avryn_Dolan@gmail.co','9yahom_6rab',7068,1292669575,'Avryn_Dolan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (570,'Toney','Witt','Toney_Witt@gmail.com','9yahom_6rab',6749,1122339879,'Toney_Witt');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (571,'Oshay','Richard','Oshay_Richard@gmail.','9yahom_6rab',2942,1110928846,'Oshay_Richard');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (572,'Alakai','Khyzen','Alakai_Khyzen@gmail.','9yahom_6rab',1456,1081639812,'Alakai_Khyzen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (573,'Harvest','Kaeo','Harvest_Kaeo@gmail.c','9yahom_6rab',5447,1255084251,'Harvest_Kaeo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (574,'Johnmark','Audy','Johnmark_Audy@gmail.','9yahom_6rab',5324,1567523452,'Johnmark_Audy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (575,'Suliman','Delon','Suliman_Delon@gmail.','9yahom_6rab',8163,1058810253,'Suliman_Delon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (576,'Sakani','Yoan','Sakani_Yoan@gmail.co','9yahom_6rab',5926,1182207037,'Sakani_Yoan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (577,'Heri','Tanner','Heri_Tanner@gmail.co','9yahom_6rab',2800,1004214082,'Heri_Tanner');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (578,'Jeramiah','Eliseo','Jeramiah_Eliseo@gmai','9yahom_6rab',4308,1010526910,'Jeramiah_Eliseo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (579,'Armor','Walden','Armor_Walden@gmail.c','9yahom_6rab',5850,1100568651,'Armor_Walden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (580,'Jahzir','Hanzo','Jahzir_Hanzo@gmail.c','9yahom_6rab',7847,1086946392,'Jahzir_Hanzo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (581,'Cliffton','Urian','Cliffton_Urian@gmail','9yahom_6rab',4912,1045809722,'Cliffton_Urian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (582,'Zaydin','Moti','Zaydin_Moti@gmail.co','9yahom_6rab',4625,1189526820,'Zaydin_Moti');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (583,'Parid','Oreoluwa','Parid_Oreoluwa@gmail','9yahom_6rab',1992,1074743950,'Parid_Oreoluwa');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (584,'Jarian','Kalon','Jarian_Kalon@gmail.c','9yahom_6rab',3798,1274757017,'Jarian_Kalon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (585,'Leyton','Juels','Leyton_Juels@gmail.c','9yahom_6rab',2469,1573421046,'Leyton_Juels');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (586,'Azriel','Axtyn','Azriel_Axtyn@gmail.c','9yahom_6rab',1475,1281726450,'Azriel_Axtyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (587,'Kaleo','Bowie','Kaleo_Bowie@gmail.co','9yahom_6rab',9055,1039077454,'Kaleo_Bowie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (588,'Daeson','Rezin','Daeson_Rezin@gmail.c','9yahom_6rab',5270,1564379584,'Daeson_Rezin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (589,'Adair','Mudassir','Adair_Mudassir@gmail','9yahom_6rab',8421,1024057807,'Adair_Mudassir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (590,'Tristain','Hensley','Tristain_Hensley@gma','9yahom_6rab',6397,1284177490,'Tristain_Hensley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (591,'Chantz','Khalil','Chantz_Khalil@gmail.','9yahom_6rab',3244,1040367399,'Chantz_Khalil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (592,'Saeid','Denym','Saeid_Denym@gmail.co','9yahom_6rab',6671,1162848756,'Saeid_Denym');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (593,'Martrell','Luke','Martrell_Luke@gmail.','9yahom_6rab',7521,1202133801,'Martrell_Luke');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (594,'Jiraiya','Germain','Jiraiya_Germain@gmai','9yahom_6rab',4192,1557059436,'Jiraiya_Germain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (595,'Jhael','Kden','Jhael_Kden@gmail.com','9yahom_6rab',527,1038831190,'Jhael_Kden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (596,'Grayer','Garner','Grayer_Garner@gmail.','9yahom_6rab',7326,1280171580,'Grayer_Garner');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (597,'Blessing','Brayton','Blessing_Brayton@gma','9yahom_6rab',6454,1103590010,'Blessing_Brayton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (598,'Maveric','Mihail','Maveric_Mihail@gmail','9yahom_6rab',8584,1044856117,'Maveric_Mihail');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (599,'Zaelyn','Isiah','Zaelyn_Isiah@gmail.c','9yahom_6rab',4148,1579456764,'Zaelyn_Isiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (600,'Lawsyn','Nahiem','Lawsyn_Nahiem@gmail.','9yahom_6rab',8545,1586065789,'Lawsyn_Nahiem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (601,'Truett','Kebron','Truett_Kebron@gmail.','9yahom_6rab',959,1005331019,'Truett_Kebron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (602,'Imraan','Tavian','Imraan_Tavian@gmail.','9yahom_6rab',7930,1035392685,'Imraan_Tavian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (603,'Izan','Bairon','Izan_Bairon@gmail.co','9yahom_6rab',3325,1069095203,'Izan_Bairon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (604,'Kari','Almalik','Kari_Almalik@gmail.c','9yahom_6rab',8551,1525366987,'Kari_Almalik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (605,'Dayson','Willis','Dayson_Willis@gmail.','9yahom_6rab',8007,1169056265,'Dayson_Willis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (606,'Bryer','Ahkeem','Bryer_Ahkeem@gmail.c','9yahom_6rab',6437,1166157066,'Bryer_Ahkeem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (607,'Deng','Matthias','Deng_Matthias@gmail.','9yahom_6rab',9189,1130217171,'Deng_Matthias');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (608,'Rylyn','Tyrece','Rylyn_Tyrece@gmail.c','9yahom_6rab',7373,1055779457,'Rylyn_Tyrece');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (609,'Antwon','Thanh','Antwon_Thanh@gmail.c','9yahom_6rab',4300,1150469695,'Antwon_Thanh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (610,'Battal','Xeven','Battal_Xeven@gmail.c','9yahom_6rab',5017,1565905676,'Battal_Xeven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (611,'Haakon','Monti','Haakon_Monti@gmail.c','9yahom_6rab',3398,1067749610,'Haakon_Monti');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (612,'Weslee','Shareef','Weslee_Shareef@gmail','9yahom_6rab',9163,1067893837,'Weslee_Shareef');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (613,'Esco','Qasim','Esco_Qasim@gmail.com','9yahom_6rab',7386,1123911553,'Esco_Qasim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (614,'Kratos','Buxton','Kratos_Buxton@gmail.','9yahom_6rab',9906,1579710442,'Kratos_Buxton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (615,'Moaz','Kayla','Moaz_Kayla@gmail.com','9yahom_6rab',1254,1129684337,'Moaz_Kayla');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (616,'Theodoros','Emrah','Theodoros_Emrah@gmai','9yahom_6rab',518,1208341375,'Theodoros_Emrah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (617,'Emmeric','Holdon','Emmeric_Holdon@gmail','9yahom_6rab',8430,1054647789,'Emmeric_Holdon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (618,'Zadok','Jaidel','Zadok_Jaidel@gmail.c','9yahom_6rab',4675,1595969188,'Zadok_Jaidel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (619,'Marek','Ervin','Marek_Ervin@gmail.co','9yahom_6rab',4343,1552063471,'Marek_Ervin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (620,'Archer','York','Archer_York@gmail.co','9yahom_6rab',9257,1500710372,'Archer_York');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (621,'Aldric','Arshith','Aldric_Arshith@gmail','9yahom_6rab',6197,1007690155,'Aldric_Arshith');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (622,'Nicholai','Mubarak','Nicholai_Mubarak@gma','9yahom_6rab',5555,1268947996,'Nicholai_Mubarak');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (623,'Rexford','Jahzeel','Rexford_Jahzeel@gmai','9yahom_6rab',634,1157253699,'Rexford_Jahzeel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (624,'Kyton','Jamez','Kyton_Jamez@gmail.co','9yahom_6rab',1860,1192020681,'Kyton_Jamez');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (625,'Darriel','Kilan','Darriel_Kilan@gmail.','9yahom_6rab',4727,1205682944,'Darriel_Kilan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (626,'Cephas','Izik','Cephas_Izik@gmail.co','9yahom_6rab',3806,1083429151,'Cephas_Izik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (627,'Nezar','Kc','Nezar_Kc@gmail.com','9yahom_6rab',9028,1104747585,'Nezar_Kc');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (628,'Vance','Brodi','Vance_Brodi@gmail.co','9yahom_6rab',6498,1228675844,'Vance_Brodi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (629,'Zyden','Kison','Zyden_Kison@gmail.co','9yahom_6rab',4142,1245916482,'Zyden_Kison');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (630,'Ajayceon','Ronon','Ajayceon_Ronon@gmail','9yahom_6rab',6016,1290982548,'Ajayceon_Ronon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (631,'Vinny','Banks','Vinny_Banks@gmail.co','9yahom_6rab',9594,1257396902,'Vinny_Banks');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (632,'Alexios','Travell','Alexios_Travell@gmai','9yahom_6rab',4528,1130560345,'Alexios_Travell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (633,'Louka','Zymire','Louka_Zymire@gmail.c','9yahom_6rab',1540,1578974650,'Louka_Zymire');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (634,'Omar','Albi','Omar_Albi@gmail.com','9yahom_6rab',2368,1277309681,'Omar_Albi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (635,'Aakil','Romario','Aakil_Romario@gmail.','9yahom_6rab',7972,1121722076,'Aakil_Romario');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (636,'Traeger','Xzayvian','Traeger_Xzayvian@gma','9yahom_6rab',1382,1008370708,'Traeger_Xzayvian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (637,'Zaylynn','Sherwin','Zaylynn_Sherwin@gmai','9yahom_6rab',4851,1523070790,'Zaylynn_Sherwin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (638,'Zamarii','Keyontae','Zamarii_Keyontae@gma','9yahom_6rab',4211,1285412690,'Zamarii_Keyontae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (639,'Phoenyx','Bladimir','Phoenyx_Bladimir@gma','9yahom_6rab',3566,1288362750,'Phoenyx_Bladimir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (640,'Kitt','Bradlee','Kitt_Bradlee@gmail.c','9yahom_6rab',5315,1502232853,'Kitt_Bradlee');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (641,'Zymir','Yeshaya','Zymir_Yeshaya@gmail.','9yahom_6rab',3972,1159629186,'Zymir_Yeshaya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (642,'Greysyn','Adekunle','Greysyn_Adekunle@gma','9yahom_6rab',2808,1191775877,'Greysyn_Adekunle');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (643,'Mckade','Daken','Mckade_Daken@gmail.c','9yahom_6rab',6564,1062142258,'Mckade_Daken');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (644,'Ras','Damere','Ras_Damere@gmail.com','9yahom_6rab',4854,1245524483,'Ras_Damere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (645,'Ziad','Rameir','Ziad_Rameir@gmail.co','9yahom_6rab',5274,1143695163,'Ziad_Rameir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (646,'Idrees','Benz','Idrees_Benz@gmail.co','9yahom_6rab',5968,1089356951,'Idrees_Benz');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (647,'Amun','Dominiq','Amun_Dominiq@gmail.c','9yahom_6rab',4442,1272221047,'Amun_Dominiq');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (648,'Judas','Tallis','Judas_Tallis@gmail.c','9yahom_6rab',6061,1003942583,'Judas_Tallis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (649,'Swayde','Jamari','Swayde_Jamari@gmail.','9yahom_6rab',8015,1031231520,'Swayde_Jamari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (650,'Grayston','Piero','Grayston_Piero@gmail','9yahom_6rab',8629,1130557322,'Grayston_Piero');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (651,'Ivri','Emillio','Ivri_Emillio@gmail.c','9yahom_6rab',1908,1566872495,'Ivri_Emillio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (652,'Zavi','Jream','Zavi_Jream@gmail.com','9yahom_6rab',6769,1011140556,'Zavi_Jream');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (653,'Renly','Hyland','Renly_Hyland@gmail.c','9yahom_6rab',5850,1149243664,'Renly_Hyland');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (654,'Hazaiah','Tlaloc','Hazaiah_Tlaloc@gmail','9yahom_6rab',5328,1221502854,'Hazaiah_Tlaloc');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (655,'Ruvim','Euro','Ruvim_Euro@gmail.com','9yahom_6rab',5176,1114947649,'Ruvim_Euro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (656,'Sarvesh','Kolbe','Sarvesh_Kolbe@gmail.','9yahom_6rab',1486,1050535856,'Sarvesh_Kolbe');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (657,'Que','Lyriq','Que_Lyriq@gmail.com','9yahom_6rab',5667,1531511084,'Que_Lyriq');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (658,'Trinity','Kylynn','Trinity_Kylynn@gmail','9yahom_6rab',9387,1233921653,'Trinity_Kylynn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (659,'Reginal','Aydenn','Reginal_Aydenn@gmail','9yahom_6rab',8715,1076131983,'Reginal_Aydenn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (660,'Zykel','Homero','Zykel_Homero@gmail.c','9yahom_6rab',2016,1595361225,'Zykel_Homero');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (661,'Naetochukwu','Geremiah','Naetochukwu_Geremiah','9yahom_6rab',9212,1217541434,'Naetochukwu_Geremiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (662,'Christiano','Jaylyn','Christiano_Jaylyn@gm','9yahom_6rab',6756,1588207880,'Christiano_Jaylyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (663,'Kayson','Daviel','Kayson_Daviel@gmail.','9yahom_6rab',4626,1515915699,'Kayson_Daviel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (664,'Codi','Brace','Codi_Brace@gmail.com','9yahom_6rab',692,1193218648,'Codi_Brace');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (665,'Jahaan','Dekoda','Jahaan_Dekoda@gmail.','9yahom_6rab',3614,1564732826,'Jahaan_Dekoda');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (666,'Paulino','Jupiter','Paulino_Jupiter@gmai','9yahom_6rab',8656,1508784317,'Paulino_Jupiter');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (667,'Tristen','Dracen','Tristen_Dracen@gmail','9yahom_6rab',7308,1089311734,'Tristen_Dracen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (668,'Jaidon','Trentyn','Jaidon_Trentyn@gmail','9yahom_6rab',1928,1219179613,'Jaidon_Trentyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (669,'Happy','Erick','Happy_Erick@gmail.co','9yahom_6rab',6151,1520964378,'Happy_Erick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (670,'Gallagher','Kentrell','Gallagher_Kentrell@g','9yahom_6rab',4380,1514442929,'Gallagher_Kentrell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (671,'Derik','Gianna','Derik_Gianna@gmail.c','9yahom_6rab',3656,1131548811,'Derik_Gianna');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (672,'Kendric','Ashaad','Kendric_Ashaad@gmail','9yahom_6rab',9351,1549873326,'Kendric_Ashaad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (673,'Ajax','Hillel','Ajax_Hillel@gmail.co','9yahom_6rab',9097,1229282428,'Ajax_Hillel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (674,'Hans','Talmage','Hans_Talmage@gmail.c','9yahom_6rab',9817,1016472542,'Hans_Talmage');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (675,'Page','Huk','Page_Huk@gmail.com','9yahom_6rab',5125,1017162915,'Page_Huk');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (676,'Taim','Latrell','Taim_Latrell@gmail.c','9yahom_6rab',9580,1156354045,'Taim_Latrell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (677,'Zaccai','Aiken','Zaccai_Aiken@gmail.c','9yahom_6rab',4152,1121993447,'Zaccai_Aiken');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (678,'Pilot','Hoyt','Pilot_Hoyt@gmail.com','9yahom_6rab',3205,1555227018,'Pilot_Hoyt');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (679,'Demarion','Kristopher','Demarion_Kristopher@','9yahom_6rab',3939,1172300543,'Demarion_Kristopher');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (680,'Emryk','Nicco','Emryk_Nicco@gmail.co','9yahom_6rab',4085,1539941773,'Emryk_Nicco');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (681,'Sajjad','Huckleberry','Sajjad_Huckleberry@g','9yahom_6rab',8929,1236493064,'Sajjad_Huckleberry');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (682,'Caruso','Shahid','Caruso_Shahid@gmail.','9yahom_6rab',6363,1550230369,'Caruso_Shahid');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (683,'Perez','Sahan','Perez_Sahan@gmail.co','9yahom_6rab',3893,1212177512,'Perez_Sahan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (684,'Jorian','Raees','Jorian_Raees@gmail.c','9yahom_6rab',8228,1118394630,'Jorian_Raees');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (685,'Deontay','Jericho','Deontay_Jericho@gmai','9yahom_6rab',2665,1565122194,'Deontay_Jericho');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (686,'Zaiden','Crayton','Zaiden_Crayton@gmail','9yahom_6rab',5216,1232850739,'Zaiden_Crayton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (687,'Caysen','Eliad','Caysen_Eliad@gmail.c','9yahom_6rab',9693,1018440888,'Caysen_Eliad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (688,'Chevy','Emrys','Chevy_Emrys@gmail.co','9yahom_6rab',4211,1126758128,'Chevy_Emrys');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (689,'Ridha','Draysen','Ridha_Draysen@gmail.','9yahom_6rab',2660,1291089394,'Ridha_Draysen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (690,'Edder','Alekai','Edder_Alekai@gmail.c','9yahom_6rab',5471,1080371590,'Edder_Alekai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (691,'Kirin','Arhan','Kirin_Arhan@gmail.co','9yahom_6rab',1434,1217904763,'Kirin_Arhan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (692,'Lateef','Shon','Lateef_Shon@gmail.co','9yahom_6rab',9286,1118516535,'Lateef_Shon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (693,'Jaishon','Malichi','Jaishon_Malichi@gmai','9yahom_6rab',1151,1519625247,'Jaishon_Malichi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (694,'Eldin','Faheem','Eldin_Faheem@gmail.c','9yahom_6rab',4556,1094167147,'Eldin_Faheem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (695,'Reilly','Dakota','Reilly_Dakota@gmail.','9yahom_6rab',3539,1008470544,'Reilly_Dakota');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (696,'Kelton','Amarey','Kelton_Amarey@gmail.','9yahom_6rab',7952,1226154512,'Kelton_Amarey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (697,'Gonzalo','Khash','Gonzalo_Khash@gmail.','9yahom_6rab',9126,1060473630,'Gonzalo_Khash');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (698,'Alyxander','Indra','Alyxander_Indra@gmai','9yahom_6rab',9380,1128734427,'Alyxander_Indra');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (699,'Safal','Colbie','Safal_Colbie@gmail.c','9yahom_6rab',9429,1211069137,'Safal_Colbie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (700,'Leto','Rudra','Leto_Rudra@gmail.com','9yahom_6rab',9324,1158894098,'Leto_Rudra');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (701,'Dietrich','Esau','Dietrich_Esau@gmail.','9yahom_6rab',9692,1278029167,'Dietrich_Esau');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (702,'Jaken','Aristotelis','Jaken_Aristotelis@gm','9yahom_6rab',2401,1273022551,'Jaken_Aristotelis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (703,'Benno','Saw','Benno_Saw@gmail.com','9yahom_6rab',4557,1536436895,'Benno_Saw');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (704,'Kainan','Markelle','Kainan_Markelle@gmai','9yahom_6rab',8895,1027323562,'Kainan_Markelle');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (705,'Yostin','Silvestre','Yostin_Silvestre@gma','9yahom_6rab',6871,1585173887,'Yostin_Silvestre');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (706,'Jabel','Savino','Jabel_Savino@gmail.c','9yahom_6rab',5884,1505809714,'Jabel_Savino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (707,'Scotty','Shiven','Scotty_Shiven@gmail.','9yahom_6rab',6850,1239383684,'Scotty_Shiven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (708,'Khori','Wilmar','Khori_Wilmar@gmail.c','9yahom_6rab',6027,1291129456,'Khori_Wilmar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (709,'Even','Corwyn','Even_Corwyn@gmail.co','9yahom_6rab',2589,1112880360,'Even_Corwyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (710,'Samaj','Breven','Samaj_Breven@gmail.c','9yahom_6rab',8779,1004857331,'Samaj_Breven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (711,'Zaiel','Geonni','Zaiel_Geonni@gmail.c','9yahom_6rab',5006,1595861559,'Zaiel_Geonni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (712,'Axen','Jamil','Axen_Jamil@gmail.com','9yahom_6rab',6620,1560472002,'Axen_Jamil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (713,'Terran','Hashem','Terran_Hashem@gmail.','9yahom_6rab',4995,1247813561,'Terran_Hashem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (714,'Shion','Thaddaeus','Shion_Thaddaeus@gmai','9yahom_6rab',1668,1561107717,'Shion_Thaddaeus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (715,'Antonis','Gregg','Antonis_Gregg@gmail.','9yahom_6rab',8056,1202040826,'Antonis_Gregg');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (716,'Malakai','Kaveh','Malakai_Kaveh@gmail.','9yahom_6rab',9998,1031599171,'Malakai_Kaveh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (717,'Marshaun','Alula','Marshaun_Alula@gmail','9yahom_6rab',1170,1516181489,'Marshaun_Alula');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (718,'Aahaan','Bridger','Aahaan_Bridger@gmail','9yahom_6rab',8948,1584487465,'Aahaan_Bridger');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (719,'Kingdavid','Harman','Kingdavid_Harman@gma','9yahom_6rab',831,1295512845,'Kingdavid_Harman');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (720,'Nachman','Mccoy','Nachman_Mccoy@gmail.','9yahom_6rab',6493,1052149996,'Nachman_Mccoy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (721,'Kingstan','Chadrick','Kingstan_Chadrick@gm','9yahom_6rab',9772,1085031985,'Kingstan_Chadrick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (722,'Corban','Gerry','Corban_Gerry@gmail.c','9yahom_6rab',9445,1208378151,'Corban_Gerry');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (723,'Kadar','Kimberly','Kadar_Kimberly@gmail','9yahom_6rab',537,1204949685,'Kadar_Kimberly');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (724,'Devaj','Kamahao','Devaj_Kamahao@gmail.','9yahom_6rab',6545,1223703011,'Devaj_Kamahao');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (725,'Jamichael','Witten','Jamichael_Witten@gma','9yahom_6rab',571,1155433442,'Jamichael_Witten');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (726,'Carlo','Demilade','Carlo_Demilade@gmail','9yahom_6rab',9710,1516862128,'Carlo_Demilade');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (727,'Dakarion','Joc','Dakarion_Joc@gmail.c','9yahom_6rab',8786,1520593580,'Dakarion_Joc');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (728,'Riyan','Adrin','Riyan_Adrin@gmail.co','9yahom_6rab',1239,1204105851,'Riyan_Adrin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (729,'Jabal','Claudius','Jabal_Claudius@gmail','9yahom_6rab',8107,1592074341,'Jabal_Claudius');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (730,'Trayveon','Rihan','Trayveon_Rihan@gmail','9yahom_6rab',8225,1032262136,'Trayveon_Rihan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (731,'Vigo','Jerusalem','Vigo_Jerusalem@gmail','9yahom_6rab',1560,1565013143,'Vigo_Jerusalem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (732,'Karcen','Jerell','Karcen_Jerell@gmail.','9yahom_6rab',8831,1595335399,'Karcen_Jerell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (733,'Obed','Shakai','Obed_Shakai@gmail.co','9yahom_6rab',7361,1593173396,'Obed_Shakai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (734,'Cal','Kordell','Cal_Kordell@gmail.co','9yahom_6rab',3861,1525394793,'Cal_Kordell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (735,'Brig','Yadir','Brig_Yadir@gmail.com','9yahom_6rab',5097,1020157092,'Brig_Yadir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (736,'Melo','Montrez','Melo_Montrez@gmail.c','9yahom_6rab',1464,1194456776,'Melo_Montrez');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (737,'Vidyuth','Remiel','Vidyuth_Remiel@gmail','9yahom_6rab',737,1098981659,'Vidyuth_Remiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (738,'Dhyaan','Davinci','Dhyaan_Davinci@gmail','9yahom_6rab',6650,1201174184,'Dhyaan_Davinci');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (739,'Gershon','Henryjames','Gershon_Henryjames@g','9yahom_6rab',8962,1119658141,'Gershon_Henryjames');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (740,'Kruz','Jim','Kruz_Jim@gmail.com','9yahom_6rab',4468,1587918675,'Kruz_Jim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (741,'Sayid','Mannan','Sayid_Mannan@gmail.c','9yahom_6rab',4198,1510193349,'Sayid_Mannan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (742,'Sofia','Wilfredo','Sofia_Wilfredo@gmail','9yahom_6rab',4527,1150466025,'Sofia_Wilfredo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (743,'Loukas','Moustapha','Loukas_Moustapha@gma','9yahom_6rab',1447,1103535879,'Loukas_Moustapha');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (744,'Deontre','Ruaan','Deontre_Ruaan@gmail.','9yahom_6rab',3829,1162141517,'Deontre_Ruaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (745,'Aman','Xzavian','Aman_Xzavian@gmail.c','9yahom_6rab',1743,1195340637,'Aman_Xzavian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (746,'Kojo','Nicklaus','Kojo_Nicklaus@gmail.','9yahom_6rab',6593,1531772212,'Kojo_Nicklaus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (747,'Jasion','Jaxsin','Jasion_Jaxsin@gmail.','9yahom_6rab',1595,1020061174,'Jasion_Jaxsin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (748,'Neko','Taiden','Neko_Taiden@gmail.co','9yahom_6rab',9132,1161709711,'Neko_Taiden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (749,'Khyaire','Junah','Khyaire_Junah@gmail.','9yahom_6rab',4463,1240370094,'Khyaire_Junah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (750,'Braden','Davieon','Braden_Davieon@gmail','9yahom_6rab',4342,1559870248,'Braden_Davieon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (751,'Skylor','Elya','Skylor_Elya@gmail.co','9yahom_6rab',2386,1280704887,'Skylor_Elya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (752,'Zai','Bastion','Zai_Bastion@gmail.co','9yahom_6rab',1432,1514874568,'Zai_Bastion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (753,'Pape','Rayvon','Pape_Rayvon@gmail.co','9yahom_6rab',8611,1148989148,'Pape_Rayvon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (754,'Reon','Eyob','Reon_Eyob@gmail.com','9yahom_6rab',1250,1061730693,'Reon_Eyob');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (755,'Emerson','Ramses','Emerson_Ramses@gmail','9yahom_6rab',3149,1590961217,'Emerson_Ramses');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (756,'Aaliyan','Aeden','Aaliyan_Aeden@gmail.','9yahom_6rab',5777,1576846807,'Aaliyan_Aeden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (757,'Ireoluwa','Lucah','Ireoluwa_Lucah@gmail','9yahom_6rab',2483,1121142465,'Ireoluwa_Lucah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (758,'Cyprian','Sumner','Cyprian_Sumner@gmail','9yahom_6rab',4568,1061566349,'Cyprian_Sumner');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (759,'Rihaan','Djibril','Rihaan_Djibril@gmail','9yahom_6rab',7789,1247896804,'Rihaan_Djibril');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (760,'Kaiza','Leandro','Kaiza_Leandro@gmail.','9yahom_6rab',3825,1115945062,'Kaiza_Leandro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (761,'Kristin','Shaurya','Kristin_Shaurya@gmai','9yahom_6rab',8703,1174921198,'Kristin_Shaurya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (762,'Bellamy','Derrian','Bellamy_Derrian@gmai','9yahom_6rab',6726,1229125494,'Bellamy_Derrian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (763,'Usiel','Thanos','Usiel_Thanos@gmail.c','9yahom_6rab',4955,1163531976,'Usiel_Thanos');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (764,'Rayshawn','Mykolas','Rayshawn_Mykolas@gma','9yahom_6rab',3462,1173928607,'Rayshawn_Mykolas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (765,'Lakeson','Kenzo','Lakeson_Kenzo@gmail.','9yahom_6rab',8369,1588755461,'Lakeson_Kenzo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (766,'Asah','Trevon','Asah_Trevon@gmail.co','9yahom_6rab',1927,1289432300,'Asah_Trevon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (767,'Hershel','Sammy','Hershel_Sammy@gmail.','9yahom_6rab',972,1502037175,'Hershel_Sammy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (768,'Azeez','Ege','Azeez_Ege@gmail.com','9yahom_6rab',3121,1516157103,'Azeez_Ege');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (769,'Graisyn','Raiden','Graisyn_Raiden@gmail','9yahom_6rab',9113,1275386942,'Graisyn_Raiden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (770,'Ivory','Presten','Ivory_Presten@gmail.','9yahom_6rab',6522,1096871258,'Ivory_Presten');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (771,'Braxden','Othello','Braxden_Othello@gmai','9yahom_6rab',1882,1577164342,'Braxden_Othello');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (772,'Jaycyn','Flavio','Jaycyn_Flavio@gmail.','9yahom_6rab',8921,1141511183,'Jaycyn_Flavio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (773,'Rhyland','Khalin','Rhyland_Khalin@gmail','9yahom_6rab',1261,1258003704,'Rhyland_Khalin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (774,'Abdulahi','Kiptyn','Abdulahi_Kiptyn@gmai','9yahom_6rab',4395,1053276632,'Abdulahi_Kiptyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (775,'Jaelen','Kaige','Jaelen_Kaige@gmail.c','9yahom_6rab',7205,1226398470,'Jaelen_Kaige');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (776,'Zekani','Jeremiel','Zekani_Jeremiel@gmai','9yahom_6rab',6622,1015956222,'Zekani_Jeremiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (777,'Raiyaan','Laike','Raiyaan_Laike@gmail.','9yahom_6rab',6432,1286752377,'Raiyaan_Laike');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (778,'Gianlucas','Joncarlo','Gianlucas_Joncarlo@g','9yahom_6rab',8487,1192703901,'Gianlucas_Joncarlo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (779,'Natanel','Zahkai','Natanel_Zahkai@gmail','9yahom_6rab',7843,1292751038,'Natanel_Zahkai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (780,'Tyreece','Aquil','Tyreece_Aquil@gmail.','9yahom_6rab',9994,1256054344,'Tyreece_Aquil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (781,'Galo','Tayseer','Galo_Tayseer@gmail.c','9yahom_6rab',5470,1017431716,'Galo_Tayseer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (782,'Brand','Alwyn','Brand_Alwyn@gmail.co','9yahom_6rab',2379,1127778006,'Brand_Alwyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (783,'Markos','Sabal','Markos_Sabal@gmail.c','9yahom_6rab',5350,1074139993,'Markos_Sabal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (784,'Talyn','Yazeed','Talyn_Yazeed@gmail.c','9yahom_6rab',6582,1047009822,'Talyn_Yazeed');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (785,'Draiden','Andrews','Draiden_Andrews@gmai','9yahom_6rab',672,1182523962,'Draiden_Andrews');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (786,'Tavi','Keegen','Tavi_Keegen@gmail.co','9yahom_6rab',5866,1038701233,'Tavi_Keegen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (787,'Caston','Marciano','Caston_Marciano@gmai','9yahom_6rab',8047,1079448733,'Caston_Marciano');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (788,'Roosevelt','Lorik','Roosevelt_Lorik@gmai','9yahom_6rab',7942,1047910780,'Roosevelt_Lorik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (789,'Lorenz','Romero','Lorenz_Romero@gmail.','9yahom_6rab',5426,1514548940,'Lorenz_Romero');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (790,'Kepler','Noir','Kepler_Noir@gmail.co','9yahom_6rab',3095,1183090645,'Kepler_Noir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (791,'Giovonnie','Jayari','Giovonnie_Jayari@gma','9yahom_6rab',6336,1562064854,'Giovonnie_Jayari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (792,'Iosif','Vince','Iosif_Vince@gmail.co','9yahom_6rab',7235,1029741036,'Iosif_Vince');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (793,'Crockett','Vale','Crockett_Vale@gmail.','9yahom_6rab',3153,1006561901,'Crockett_Vale');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (794,'Dionysus','Drayden','Dionysus_Drayden@gma','9yahom_6rab',9979,1216287419,'Dionysus_Drayden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (795,'Fergus','Miro','Fergus_Miro@gmail.co','9yahom_6rab',8416,1193635507,'Fergus_Miro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (796,'Rey','Tavarus','Rey_Tavarus@gmail.co','9yahom_6rab',7596,1064070556,'Rey_Tavarus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (797,'Caelen','Quamir','Caelen_Quamir@gmail.','9yahom_6rab',6680,1174551361,'Caelen_Quamir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (798,'Jayjay','Genaro','Jayjay_Genaro@gmail.','9yahom_6rab',6867,1245004624,'Jayjay_Genaro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (799,'Braylee','Kysir','Braylee_Kysir@gmail.','9yahom_6rab',2200,1297703292,'Braylee_Kysir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (800,'Toby','Hopper','Toby_Hopper@gmail.co','9yahom_6rab',7443,1033797124,'Toby_Hopper');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (801,'Vincenzo','Santonio','Vincenzo_Santonio@gm','9yahom_6rab',5752,1286462323,'Vincenzo_Santonio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (802,'Kingdom','Curt','Kingdom_Curt@gmail.c','9yahom_6rab',3699,1223166789,'Kingdom_Curt');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (803,'Dwight','Silver','Dwight_Silver@gmail.','9yahom_6rab',9793,1517018295,'Dwight_Silver');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (804,'Jhett','Amit','Jhett_Amit@gmail.com','9yahom_6rab',1801,1214327786,'Jhett_Amit');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (805,'Kaidence','Haywood','Kaidence_Haywood@gma','9yahom_6rab',8968,1212923201,'Kaidence_Haywood');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (806,'Mathyus','Azizbek','Mathyus_Azizbek@gmai','9yahom_6rab',5375,1036571033,'Mathyus_Azizbek');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (807,'Samrudh','Taleb','Samrudh_Taleb@gmail.','9yahom_6rab',7811,1565816884,'Samrudh_Taleb');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (808,'Bernardino','Nouri','Bernardino_Nouri@gma','9yahom_6rab',9505,1209291752,'Bernardino_Nouri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (809,'Paxten','Holland','Paxten_Holland@gmail','9yahom_6rab',4090,1047891930,'Paxten_Holland');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (810,'Decklin','Paxton','Decklin_Paxton@gmail','9yahom_6rab',6033,1568453199,'Decklin_Paxton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (811,'Ousmane','Taylan','Ousmane_Taylan@gmail','9yahom_6rab',3165,1162013835,'Ousmane_Taylan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (812,'Odai','Lucca','Odai_Lucca@gmail.com','9yahom_6rab',4034,1587437438,'Odai_Lucca');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (813,'Agamveer','Dio','Agamveer_Dio@gmail.c','9yahom_6rab',8134,1592811186,'Agamveer_Dio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (814,'Gian','Casten','Gian_Casten@gmail.co','9yahom_6rab',1451,1028673718,'Gian_Casten');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (815,'Junkai','Hemi','Junkai_Hemi@gmail.co','9yahom_6rab',3145,1562462366,'Junkai_Hemi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (816,'Hagan','Temur','Hagan_Temur@gmail.co','9yahom_6rab',9101,1272404053,'Hagan_Temur');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (817,'Ciro','Bohdee','Ciro_Bohdee@gmail.co','9yahom_6rab',6140,1228361588,'Ciro_Bohdee');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (818,'Donnovan','Geovannie','Donnovan_Geovannie@g','9yahom_6rab',7639,1268240234,'Donnovan_Geovannie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (819,'Kamai','Olegario','Kamai_Olegario@gmail','9yahom_6rab',4257,1125656156,'Kamai_Olegario');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (820,'Greysen','Fulton','Greysen_Fulton@gmail','9yahom_6rab',2190,1187775570,'Greysen_Fulton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (821,'Trenten','Lemarcus','Trenten_Lemarcus@gma','9yahom_6rab',2028,1500248934,'Trenten_Lemarcus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (822,'Fowler','Myheir','Fowler_Myheir@gmail.','9yahom_6rab',8551,1119293974,'Fowler_Myheir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (823,'Izaya','Riko','Izaya_Riko@gmail.com','9yahom_6rab',8223,1025348242,'Izaya_Riko');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (824,'Jru','Knolan','Jru_Knolan@gmail.com','9yahom_6rab',6745,1549478395,'Jru_Knolan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (825,'Mayson','Mighty','Mayson_Mighty@gmail.','9yahom_6rab',9743,1091791528,'Mayson_Mighty');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (826,'Versai','Coleston','Versai_Coleston@gmai','9yahom_6rab',3972,1516554466,'Versai_Coleston');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (827,'Kaiven','Nayan','Kaiven_Nayan@gmail.c','9yahom_6rab',5177,1136649300,'Kaiven_Nayan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (828,'Divyan','Kavari','Divyan_Kavari@gmail.','9yahom_6rab',8275,1143110869,'Divyan_Kavari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (829,'Yeriel','Curry','Yeriel_Curry@gmail.c','9yahom_6rab',4960,1269388717,'Yeriel_Curry');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (830,'Trever','Kehinde','Trever_Kehinde@gmail','9yahom_6rab',2046,1129536933,'Trever_Kehinde');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (831,'Abdulrahman','Zadkiel','Abdulrahman_Zadkiel@','9yahom_6rab',6065,1124269987,'Abdulrahman_Zadkiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (832,'Krystopher','Piersen','Krystopher_Piersen@g','9yahom_6rab',8836,1283675284,'Krystopher_Piersen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (833,'Rourke','Harvin','Rourke_Harvin@gmail.','9yahom_6rab',2636,1034306826,'Rourke_Harvin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (834,'Janari','Davin','Janari_Davin@gmail.c','9yahom_6rab',9397,1072059288,'Janari_Davin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (835,'Prynce','Eleven','Prynce_Eleven@gmail.','9yahom_6rab',4094,1073315244,'Prynce_Eleven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (836,'Rhylee','Angelo','Rhylee_Angelo@gmail.','9yahom_6rab',2084,1055906187,'Rhylee_Angelo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (837,'Rocky','Mackenzie','Rocky_Mackenzie@gmai','9yahom_6rab',8526,1206383890,'Rocky_Mackenzie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (838,'Ameer','Riyansh','Ameer_Riyansh@gmail.','9yahom_6rab',3325,1536042648,'Ameer_Riyansh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (839,'Yovani','Eilan','Yovani_Eilan@gmail.c','9yahom_6rab',8595,1291914246,'Yovani_Eilan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (840,'Jaguar','Connor','Jaguar_Connor@gmail.','9yahom_6rab',8114,1221774211,'Jaguar_Connor');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (841,'Ziayre','Seyon','Ziayre_Seyon@gmail.c','9yahom_6rab',6886,1250171115,'Ziayre_Seyon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (842,'Awesome','Oseas','Awesome_Oseas@gmail.','9yahom_6rab',3881,1159877220,'Awesome_Oseas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (843,'Axle','Coburn','Axle_Coburn@gmail.co','9yahom_6rab',2132,1101781257,'Axle_Coburn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (844,'Adwin','Motaz','Adwin_Motaz@gmail.co','9yahom_6rab',6450,1025720754,'Adwin_Motaz');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (845,'Damir','Evaristo','Damir_Evaristo@gmail','9yahom_6rab',8925,1101299235,'Damir_Evaristo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (846,'Ingram','Piers','Ingram_Piers@gmail.c','9yahom_6rab',6783,1528686990,'Ingram_Piers');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (847,'Nahom','Langstyn','Nahom_Langstyn@gmail','9yahom_6rab',4130,1553962300,'Nahom_Langstyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (848,'Moe','Aceon','Moe_Aceon@gmail.com','9yahom_6rab',1842,1582179735,'Moe_Aceon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (849,'Abdalla','Kolbi','Abdalla_Kolbi@gmail.','9yahom_6rab',9459,1149878005,'Abdalla_Kolbi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (850,'Bastien','Kaydin','Bastien_Kaydin@gmail','9yahom_6rab',6197,1176700268,'Bastien_Kaydin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (851,'Nessiah','Dasiah','Nessiah_Dasiah@gmail','9yahom_6rab',7797,1068695255,'Nessiah_Dasiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (852,'Koen','Zubayr','Koen_Zubayr@gmail.co','9yahom_6rab',5309,1224469190,'Koen_Zubayr');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (853,'Ire','Liston','Ire_Liston@gmail.com','9yahom_6rab',1500,1083758721,'Ire_Liston');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (854,'Wendall','Haytham','Wendall_Haytham@gmai','9yahom_6rab',7996,1136617614,'Wendall_Haytham');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (855,'Zaidyn','Lexin','Zaidyn_Lexin@gmail.c','9yahom_6rab',8759,1012763195,'Zaidyn_Lexin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (856,'Wynston','Jash','Wynston_Jash@gmail.c','9yahom_6rab',1889,1044533432,'Wynston_Jash');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (857,'Joshue','Sanish','Joshue_Sanish@gmail.','9yahom_6rab',3517,1243658173,'Joshue_Sanish');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (858,'Jaquay','Kassian','Jaquay_Kassian@gmail','9yahom_6rab',9047,1011035991,'Jaquay_Kassian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (859,'Korin','Jayse','Korin_Jayse@gmail.co','9yahom_6rab',4065,1568004155,'Korin_Jayse');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (860,'Bryden','Cristian','Bryden_Cristian@gmai','9yahom_6rab',3846,1054412753,'Bryden_Cristian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (861,'Javeion','Tanish','Javeion_Tanish@gmail','9yahom_6rab',5323,1159505903,'Javeion_Tanish');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (862,'Ansony','Jestin','Ansony_Jestin@gmail.','9yahom_6rab',917,1024136507,'Ansony_Jestin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (863,'Vyom','Jontez','Vyom_Jontez@gmail.co','9yahom_6rab',5239,1585866617,'Vyom_Jontez');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (864,'Jeron','Mccartney','Jeron_Mccartney@gmai','9yahom_6rab',669,1100360655,'Jeron_Mccartney');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (865,'Averett','Samiullah','Averett_Samiullah@gm','9yahom_6rab',4753,1104001746,'Averett_Samiullah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (866,'Jakarri','Declin','Jakarri_Declin@gmail','9yahom_6rab',1571,1234564567,'Jakarri_Declin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (867,'Blue','Juell','Blue_Juell@gmail.com','9yahom_6rab',5774,1255060674,'Blue_Juell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (868,'Talal','Angeles','Talal_Angeles@gmail.','9yahom_6rab',7733,1172801083,'Talal_Angeles');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (869,'Ranbir','Ajae','Ranbir_Ajae@gmail.co','9yahom_6rab',9367,1084094630,'Ranbir_Ajae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (870,'Kennedy','Anir','Kennedy_Anir@gmail.c','9yahom_6rab',4193,1247152867,'Kennedy_Anir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (871,'Sherrod','Olen','Sherrod_Olen@gmail.c','9yahom_6rab',5004,1595716584,'Sherrod_Olen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (872,'Edgardo','Zahir','Edgardo_Zahir@gmail.','9yahom_6rab',4815,1130663240,'Edgardo_Zahir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (873,'Abdulelah','Panagiotis','Abdulelah_Panagiotis','9yahom_6rab',7209,1134988411,'Abdulelah_Panagiotis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (874,'Jahmar','Keelyn','Jahmar_Keelyn@gmail.','9yahom_6rab',4344,1565548190,'Jahmar_Keelyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (875,'Kashtyn','Brogan','Kashtyn_Brogan@gmail','9yahom_6rab',5681,1145729621,'Kashtyn_Brogan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (876,'Quintrell','Georgios','Quintrell_Georgios@g','9yahom_6rab',5475,1074754258,'Quintrell_Georgios');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (877,'Dacian','Takumi','Dacian_Takumi@gmail.','9yahom_6rab',547,1158046743,'Dacian_Takumi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (878,'Zykeem','Sylas','Zykeem_Sylas@gmail.c','9yahom_6rab',7830,1163420390,'Zykeem_Sylas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (879,'Joelle','Oberon','Joelle_Oberon@gmail.','9yahom_6rab',1260,1038951808,'Joelle_Oberon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (880,'Kyryn','Zymeir','Kyryn_Zymeir@gmail.c','9yahom_6rab',1026,1190584939,'Kyryn_Zymeir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (881,'Kallen','Jermiah','Kallen_Jermiah@gmail','9yahom_6rab',4651,1129893811,'Kallen_Jermiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (882,'Joseluis','Marvens','Joseluis_Marvens@gma','9yahom_6rab',1371,1247021250,'Joseluis_Marvens');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (883,'Rolan','Kaique','Rolan_Kaique@gmail.c','9yahom_6rab',8417,1079920430,'Rolan_Kaique');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (884,'Kane','Benjamen','Kane_Benjamen@gmail.','9yahom_6rab',1242,1563789921,'Kane_Benjamen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (885,'Aamir','Sunny','Aamir_Sunny@gmail.co','9yahom_6rab',6001,1203632104,'Aamir_Sunny');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (886,'Vicente','Tracyn','Vicente_Tracyn@gmail','9yahom_6rab',5266,1059970694,'Vicente_Tracyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (887,'Dairon','Camdan','Dairon_Camdan@gmail.','9yahom_6rab',9538,1142985057,'Dairon_Camdan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (888,'Aceston','Cevyn','Aceston_Cevyn@gmail.','9yahom_6rab',3888,1294687264,'Aceston_Cevyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (889,'Azure','Dathan','Azure_Dathan@gmail.c','9yahom_6rab',9275,1178163164,'Azure_Dathan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (890,'Milam','Quincy','Milam_Quincy@gmail.c','9yahom_6rab',6946,1527821864,'Milam_Quincy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (891,'Dimitrius','Rykker','Dimitrius_Rykker@gma','9yahom_6rab',3007,1273739222,'Dimitrius_Rykker');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (892,'Edan','Rilyn','Edan_Rilyn@gmail.com','9yahom_6rab',3168,1224604725,'Edan_Rilyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (893,'Gatlyn','Domenic','Gatlyn_Domenic@gmail','9yahom_6rab',8589,1175368256,'Gatlyn_Domenic');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (894,'Aryon','Davud','Aryon_Davud@gmail.co','9yahom_6rab',1306,1527152987,'Aryon_Davud');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (895,'Yashwin','Cohen','Yashwin_Cohen@gmail.','9yahom_6rab',6543,1594407078,'Yashwin_Cohen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (896,'Soren','Wesson','Soren_Wesson@gmail.c','9yahom_6rab',5250,1034328873,'Soren_Wesson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (897,'Arik','Zymier','Arik_Zymier@gmail.co','9yahom_6rab',3851,1538899429,'Arik_Zymier');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1345,'Atom','Averey','Atom_Averey@gmail.co','9yahom_6rab',4282,1120800395,'Atom_Averey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1346,'Hanalei','Tripton','Hanalei_Tripton@gmai','9yahom_6rab',8529,1036676504,'Hanalei_Tripton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1347,'Shadow','Amarie','Shadow_Amarie@gmail.','9yahom_6rab',7629,1124515773,'Shadow_Amarie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1348,'Subhan','Aiden','Subhan_Aiden@gmail.c','9yahom_6rab',7025,1019520069,'Subhan_Aiden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1349,'Braxton','Ruger','Braxton_Ruger@gmail.','9yahom_6rab',3853,1037345471,'Braxton_Ruger');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1350,'Fabiel','Jayceion','Fabiel_Jayceion@gmai','9yahom_6rab',6987,1164628198,'Fabiel_Jayceion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1351,'Zimere','Deyon','Zimere_Deyon@gmail.c','9yahom_6rab',6876,1079029379,'Zimere_Deyon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1352,'Sehaj','Jeshua','Sehaj_Jeshua@gmail.c','9yahom_6rab',9978,1560794058,'Sehaj_Jeshua');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1353,'Leanthony','Rev','Leanthony_Rev@gmail.','9yahom_6rab',4556,1546825150,'Leanthony_Rev');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1354,'Ulugbek','Lalo','Ulugbek_Lalo@gmail.c','9yahom_6rab',6099,1086797532,'Ulugbek_Lalo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1355,'Eliceo','Abdoul','Eliceo_Abdoul@gmail.','9yahom_6rab',8989,1214210854,'Eliceo_Abdoul');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1356,'Finnick','Jamarcus','Finnick_Jamarcus@gma','9yahom_6rab',6388,1114627816,'Finnick_Jamarcus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1357,'Divyansh','Alby','Divyansh_Alby@gmail.','9yahom_6rab',3872,1214543193,'Divyansh_Alby');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1358,'Bearett','Agape','Bearett_Agape@gmail.','9yahom_6rab',7546,1587786063,'Bearett_Agape');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1359,'Exton','Amunra','Exton_Amunra@gmail.c','9yahom_6rab',8883,1530376507,'Exton_Amunra');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1360,'Dashon','Mendel','Dashon_Mendel@gmail.','9yahom_6rab',1988,1148112830,'Dashon_Mendel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1361,'Athiran','Trystin','Athiran_Trystin@gmai','9yahom_6rab',5061,1526939205,'Athiran_Trystin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1362,'Corwin','Novah','Corwin_Novah@gmail.c','9yahom_6rab',2797,1522204661,'Corwin_Novah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1363,'Journi','Friedrich','Journi_Friedrich@gma','9yahom_6rab',1461,1203304700,'Journi_Friedrich');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1364,'Iban','Mustapha','Iban_Mustapha@gmail.','9yahom_6rab',4474,1062672448,'Iban_Mustapha');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1365,'Duane','Carlson','Duane_Carlson@gmail.','9yahom_6rab',2880,1080201457,'Duane_Carlson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1366,'Jhordan','Karthik','Jhordan_Karthik@gmai','9yahom_6rab',6974,1129984780,'Jhordan_Karthik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1367,'Nakoda','Nihar','Nakoda_Nihar@gmail.c','9yahom_6rab',6440,1095307319,'Nakoda_Nihar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1368,'Mateus','Chicago','Mateus_Chicago@gmail','9yahom_6rab',4590,1118667772,'Mateus_Chicago');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1369,'Jiro','Tag','Jiro_Tag@gmail.com','9yahom_6rab',8347,1016461581,'Jiro_Tag');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1370,'Havish','Emon','Havish_Emon@gmail.co','9yahom_6rab',5579,1086209447,'Havish_Emon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1371,'Akilan','Beniah','Akilan_Beniah@gmail.','9yahom_6rab',8214,1276054997,'Akilan_Beniah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1372,'Tremain','Camillo','Tremain_Camillo@gmai','9yahom_6rab',9463,1049533315,'Tremain_Camillo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1373,'Harsh','Haydan','Harsh_Haydan@gmail.c','9yahom_6rab',3235,1570508222,'Harsh_Haydan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1374,'Dillan','Prish','Dillan_Prish@gmail.c','9yahom_6rab',6492,1251714297,'Dillan_Prish');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1375,'Menelik','Nery','Menelik_Nery@gmail.c','9yahom_6rab',1793,1051842828,'Menelik_Nery');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1376,'Penn','Donis','Penn_Donis@gmail.com','9yahom_6rab',3749,1083490578,'Penn_Donis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1377,'Jamian','Azai','Jamian_Azai@gmail.co','9yahom_6rab',7288,1557913413,'Jamian_Azai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1378,'Davell','Demontay','Davell_Demontay@gmai','9yahom_6rab',5680,1219640839,'Davell_Demontay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1379,'Reyhan','Deondrae','Reyhan_Deondrae@gmai','9yahom_6rab',8643,1082519837,'Reyhan_Deondrae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1380,'Kemal','Linkyn','Kemal_Linkyn@gmail.c','9yahom_6rab',3262,1513381180,'Kemal_Linkyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1381,'Boyd','Kasen','Boyd_Kasen@gmail.com','9yahom_6rab',4690,1270207141,'Boyd_Kasen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1382,'Abie','Jabori','Abie_Jabori@gmail.co','9yahom_6rab',6771,1206434713,'Abie_Jabori');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1383,'Zebulon','Winsten','Zebulon_Winsten@gmai','9yahom_6rab',1539,1051437186,'Zebulon_Winsten');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1384,'Langston','Buster','Langston_Buster@gmai','9yahom_6rab',4399,1586746296,'Langston_Buster');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1385,'Jacques','Rigby','Jacques_Rigby@gmail.','9yahom_6rab',7361,1599059399,'Jacques_Rigby');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1386,'Saulo','Aviel','Saulo_Aviel@gmail.co','9yahom_6rab',6235,1263301743,'Saulo_Aviel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1387,'Bohannon','Burk','Bohannon_Burk@gmail.','9yahom_6rab',3820,1172437531,'Bohannon_Burk');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1388,'Majesty','Valentino','Majesty_Valentino@gm','9yahom_6rab',2251,1031502665,'Majesty_Valentino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1389,'Maanav','Kelin','Maanav_Kelin@gmail.c','9yahom_6rab',9893,1156423520,'Maanav_Kelin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1390,'Nechemia','Viggo','Nechemia_Viggo@gmail','9yahom_6rab',6819,1108560914,'Nechemia_Viggo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1391,'Iziah','Jakoda','Iziah_Jakoda@gmail.c','9yahom_6rab',3506,1259792225,'Iziah_Jakoda');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1392,'Varun','Ahmaad','Varun_Ahmaad@gmail.c','9yahom_6rab',5584,1114692634,'Varun_Ahmaad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1393,'Artyom','Jermey','Artyom_Jermey@gmail.','9yahom_6rab',2813,1047897843,'Artyom_Jermey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1394,'Zyere','Rickey','Zyere_Rickey@gmail.c','9yahom_6rab',3617,1266710299,'Zyere_Rickey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1395,'Antjuan','Prinston','Antjuan_Prinston@gma','9yahom_6rab',7008,1155706832,'Antjuan_Prinston');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1396,'Larron','Woodrow','Larron_Woodrow@gmail','9yahom_6rab',9132,1530824198,'Larron_Woodrow');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1397,'Myel','Ozan','Myel_Ozan@gmail.com','9yahom_6rab',6680,1517458691,'Myel_Ozan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1398,'Syx','Paulo','Syx_Paulo@gmail.com','9yahom_6rab',9862,1016264533,'Syx_Paulo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1399,'Kimi','Rowdey','Kimi_Rowdey@gmail.co','9yahom_6rab',4005,1561436644,'Kimi_Rowdey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1400,'Chastyn','Dyllan','Chastyn_Dyllan@gmail','9yahom_6rab',8872,1236303648,'Chastyn_Dyllan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1401,'Kanyon','Darius','Kanyon_Darius@gmail.','9yahom_6rab',9126,1577449595,'Kanyon_Darius');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1402,'Atharva','Avyukt','Atharva_Avyukt@gmail','9yahom_6rab',7389,1256648813,'Atharva_Avyukt');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1403,'Janoah','Jet','Janoah_Jet@gmail.com','9yahom_6rab',4804,1153601553,'Janoah_Jet');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1404,'Mohid','Markhi','Mohid_Markhi@gmail.c','9yahom_6rab',990,1567497201,'Mohid_Markhi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1405,'Wilbur','Kalani','Wilbur_Kalani@gmail.','9yahom_6rab',9582,1113182659,'Wilbur_Kalani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1406,'Beren','Kory','Beren_Kory@gmail.com','9yahom_6rab',1480,1521711490,'Beren_Kory');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1407,'Jahrell','Yonasan','Jahrell_Yonasan@gmai','9yahom_6rab',8196,1283959423,'Jahrell_Yonasan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1408,'Gustavo','Zyheem','Gustavo_Zyheem@gmail','9yahom_6rab',4386,1151288433,'Gustavo_Zyheem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1409,'Lavonte','Donatello','Lavonte_Donatello@gm','9yahom_6rab',7327,1270216877,'Lavonte_Donatello');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1410,'Karam','Keelan','Karam_Keelan@gmail.c','9yahom_6rab',3490,1116599507,'Karam_Keelan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1411,'Jerome','Sinclair','Jerome_Sinclair@gmai','9yahom_6rab',5170,1111000849,'Jerome_Sinclair');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1412,'Jurgen','Zamarion','Jurgen_Zamarion@gmai','9yahom_6rab',1353,1559541183,'Jurgen_Zamarion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1413,'Nashville','Adian','Nashville_Adian@gmai','9yahom_6rab',7682,1260450116,'Nashville_Adian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1414,'Draeson','Mackinley','Draeson_Mackinley@gm','9yahom_6rab',1589,1055909232,'Draeson_Mackinley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1415,'Raheim','Zedric','Raheim_Zedric@gmail.','9yahom_6rab',3260,1152671225,'Raheim_Zedric');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1416,'Bertin','Aylen','Bertin_Aylen@gmail.c','9yahom_6rab',1744,1271301705,'Bertin_Aylen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1417,'Zaccheus','Agasthya','Zaccheus_Agasthya@gm','9yahom_6rab',3932,1024074449,'Zaccheus_Agasthya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1418,'Avyukth','Jshaun','Avyukth_Jshaun@gmail','9yahom_6rab',8238,1192809478,'Avyukth_Jshaun');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1419,'Osbaldo','Malykai','Osbaldo_Malykai@gmai','9yahom_6rab',3664,1506590888,'Osbaldo_Malykai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1420,'Gordon','Kadeem','Gordon_Kadeem@gmail.','9yahom_6rab',8843,1593958022,'Gordon_Kadeem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1421,'Geovanny','Adiyat','Geovanny_Adiyat@gmai','9yahom_6rab',3462,1173656112,'Geovanny_Adiyat');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1422,'Olijah','Anmar','Olijah_Anmar@gmail.c','9yahom_6rab',7276,1154765390,'Olijah_Anmar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1423,'Kavir','Juellz','Kavir_Juellz@gmail.c','9yahom_6rab',8889,1553968349,'Kavir_Juellz');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1424,'Earl','Ettore','Earl_Ettore@gmail.co','9yahom_6rab',909,1193703793,'Earl_Ettore');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1425,'Mylen','Landon','Mylen_Landon@gmail.c','9yahom_6rab',2171,1137734828,'Mylen_Landon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1426,'Pranay','Desmon','Pranay_Desmon@gmail.','9yahom_6rab',6205,1544567888,'Pranay_Desmon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1427,'Romir','Selah','Romir_Selah@gmail.co','9yahom_6rab',9872,1116795760,'Romir_Selah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1428,'Eeshaan','Sean','Eeshaan_Sean@gmail.c','9yahom_6rab',3096,1074066607,'Eeshaan_Sean');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1429,'Caelan','Shmiel','Caelan_Shmiel@gmail.','9yahom_6rab',9106,1023596121,'Caelan_Shmiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1430,'Noe','Hanzel','Noe_Hanzel@gmail.com','9yahom_6rab',8789,1176646414,'Noe_Hanzel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1431,'Aadit','Treyvion','Aadit_Treyvion@gmail','9yahom_6rab',1154,1293273223,'Aadit_Treyvion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1432,'Tavish','Yameen','Tavish_Yameen@gmail.','9yahom_6rab',9013,1569250926,'Tavish_Yameen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1433,'Champ','Bond','Champ_Bond@gmail.com','9yahom_6rab',5647,1105791580,'Champ_Bond');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1704,'Paysen','Arihaan','Paysen_Arihaan@gmail','9yahom_6rab',1796,1566848267,'Paysen_Arihaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1705,'Joas','Jarret','Joas_Jarret@gmail.co','9yahom_6rab',7473,1013913710,'Joas_Jarret');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1706,'Sadik','Jocsan','Sadik_Jocsan@gmail.c','9yahom_6rab',5976,1049383666,'Sadik_Jocsan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1707,'Bassem','Esias','Bassem_Esias@gmail.c','9yahom_6rab',9065,1117256821,'Bassem_Esias');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1708,'Eloy','Ezechiel','Eloy_Ezechiel@gmail.','9yahom_6rab',9987,1248784179,'Eloy_Ezechiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1709,'Nkosi','Aryansh','Nkosi_Aryansh@gmail.','9yahom_6rab',5253,1145492304,'Nkosi_Aryansh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1710,'Jehoshaphat','Kamari','Jehoshaphat_Kamari@g','9yahom_6rab',641,1235747068,'Jehoshaphat_Kamari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1711,'Josaih','Yousef','Josaih_Yousef@gmail.','9yahom_6rab',652,1113293914,'Josaih_Yousef');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1712,'Kaesyn','Ezana','Kaesyn_Ezana@gmail.c','9yahom_6rab',641,1068415091,'Kaesyn_Ezana');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1713,'Davarion','Filiberto','Davarion_Filiberto@g','9yahom_6rab',1831,1217882467,'Davarion_Filiberto');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1714,'Raedyn','Hunner','Raedyn_Hunner@gmail.','9yahom_6rab',9733,1051158619,'Raedyn_Hunner');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1715,'Gatsby','Bates','Gatsby_Bates@gmail.c','9yahom_6rab',5409,1200033598,'Gatsby_Bates');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1716,'Ike','Madsen','Ike_Madsen@gmail.com','9yahom_6rab',1032,1572189529,'Ike_Madsen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1717,'Diem','Soul','Diem_Soul@gmail.com','9yahom_6rab',8509,1023141364,'Diem_Soul');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1718,'Breckyn','Lasean','Breckyn_Lasean@gmail','9yahom_6rab',9515,1082556940,'Breckyn_Lasean');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1719,'Yefri','Vedaant','Yefri_Vedaant@gmail.','9yahom_6rab',8184,1562643662,'Yefri_Vedaant');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1720,'Raizo','Rowland','Raizo_Rowland@gmail.','9yahom_6rab',9710,1596970907,'Raizo_Rowland');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1721,'Francesco','Carlton','Francesco_Carlton@gm','9yahom_6rab',4949,1553951850,'Francesco_Carlton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1722,'Llewyn','Samuele','Llewyn_Samuele@gmail','9yahom_6rab',7280,1220950241,'Llewyn_Samuele');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1723,'Jayion','Davilucca','Jayion_Davilucca@gma','9yahom_6rab',8542,1230460765,'Jayion_Davilucca');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1724,'Reece','Zair','Reece_Zair@gmail.com','9yahom_6rab',3111,1169969952,'Reece_Zair');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1725,'Bryceson','Yu','Bryceson_Yu@gmail.co','9yahom_6rab',8958,1110711743,'Bryceson_Yu');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1726,'Chadwick','Inioluwa','Chadwick_Inioluwa@gm','9yahom_6rab',4385,1151320668,'Chadwick_Inioluwa');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1727,'Zyion','Jaco','Zyion_Jaco@gmail.com','9yahom_6rab',4204,1179609713,'Zyion_Jaco');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1728,'Rajah','Avenir','Rajah_Avenir@gmail.c','9yahom_6rab',5442,1123857327,'Rajah_Avenir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1729,'Humaid','Eran','Humaid_Eran@gmail.co','9yahom_6rab',4303,1520935800,'Humaid_Eran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1730,'Xanti','Jamisen','Xanti_Jamisen@gmail.','9yahom_6rab',2491,1174409633,'Xanti_Jamisen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1731,'Jasson','Jahair','Jasson_Jahair@gmail.','9yahom_6rab',1199,1560195379,'Jasson_Jahair');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1732,'Baylon','Sammie','Baylon_Sammie@gmail.','9yahom_6rab',1333,1297356476,'Baylon_Sammie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1733,'Blair','Frederick','Blair_Frederick@gmai','9yahom_6rab',3317,1094640199,'Blair_Frederick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1734,'Vayu','Aryn','Vayu_Aryn@gmail.com','9yahom_6rab',7947,1272237306,'Vayu_Aryn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1735,'Layla','Brinley','Layla_Brinley@gmail.','9yahom_6rab',3451,1280564753,'Layla_Brinley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1736,'Ananda','Azaan','Ananda_Azaan@gmail.c','9yahom_6rab',8823,1059941808,'Ananda_Azaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1737,'Joseth','Jerrison','Joseth_Jerrison@gmai','9yahom_6rab',2535,1129043958,'Joseth_Jerrison');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1738,'Kahari','Ryson','Kahari_Ryson@gmail.c','9yahom_6rab',930,1543351005,'Kahari_Ryson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1739,'Jerik','Ebin','Jerik_Ebin@gmail.com','9yahom_6rab',4878,1250126117,'Jerik_Ebin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1740,'Yohannes','Khalifah','Yohannes_Khalifah@gm','9yahom_6rab',7119,1045491252,'Yohannes_Khalifah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1741,'Calum','Colston','Calum_Colston@gmail.','9yahom_6rab',3933,1557963335,'Calum_Colston');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1742,'Devon','Elio','Devon_Elio@gmail.com','9yahom_6rab',2083,1113431038,'Devon_Elio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1743,'Jacksen','Kru','Jacksen_Kru@gmail.co','9yahom_6rab',5807,1275116695,'Jacksen_Kru');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1744,'Bladen','Kyus','Bladen_Kyus@gmail.co','9yahom_6rab',9962,1542418158,'Bladen_Kyus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1745,'Masonalexander','Deveraux','Masonalexander_Dever','9yahom_6rab',7168,1263972946,'Masonalexander_Dever');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1746,'Rudolph','Ehren','Rudolph_Ehren@gmail.','9yahom_6rab',8353,1505158899,'Rudolph_Ehren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1747,'Samraat','Stanton','Samraat_Stanton@gmai','9yahom_6rab',5304,1541802099,'Samraat_Stanton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1748,'Nyheim','Xiomar','Nyheim_Xiomar@gmail.','9yahom_6rab',9282,1244180969,'Nyheim_Xiomar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1749,'Ayal','Delvon','Ayal_Delvon@gmail.co','9yahom_6rab',6134,1241691193,'Ayal_Delvon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1750,'Greysin','Catarino','Greysin_Catarino@gma','9yahom_6rab',1157,1069094801,'Greysin_Catarino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1751,'Maleek','Edoardo','Maleek_Edoardo@gmail','9yahom_6rab',4134,1284067232,'Maleek_Edoardo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1752,'Manraj','Eliya','Manraj_Eliya@gmail.c','9yahom_6rab',1314,1274020526,'Manraj_Eliya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1753,'Trumaine','Christen','Trumaine_Christen@gm','9yahom_6rab',1199,1578488980,'Trumaine_Christen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1754,'Zev','Shooter','Zev_Shooter@gmail.co','9yahom_6rab',7388,1206063826,'Zev_Shooter');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1755,'Arvind','Jkai','Arvind_Jkai@gmail.co','9yahom_6rab',3559,1234513585,'Arvind_Jkai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1756,'Trevell','Blayke','Trevell_Blayke@gmail','9yahom_6rab',8526,1247501203,'Trevell_Blayke');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1757,'Casimiro','Jax','Casimiro_Jax@gmail.c','9yahom_6rab',3033,1198475434,'Casimiro_Jax');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1758,'Darious','Avantae','Darious_Avantae@gmai','9yahom_6rab',6213,1036049968,'Darious_Avantae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1759,'Derrik','Yitzchok','Derrik_Yitzchok@gmai','9yahom_6rab',1823,1276936644,'Derrik_Yitzchok');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1760,'Dresden','Omer','Dresden_Omer@gmail.c','9yahom_6rab',3905,1022613732,'Dresden_Omer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1761,'Murad','Harlym','Murad_Harlym@gmail.c','9yahom_6rab',6031,1100462536,'Murad_Harlym');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1762,'Lofton','Tyreek','Lofton_Tyreek@gmail.','9yahom_6rab',4251,1514634657,'Lofton_Tyreek');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1763,'Daviyon','Loran','Daviyon_Loran@gmail.','9yahom_6rab',1049,1237291729,'Daviyon_Loran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1764,'Tadhg','Lucious','Tadhg_Lucious@gmail.','9yahom_6rab',6892,1587317503,'Tadhg_Lucious');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1765,'Nathen','Jaevon','Nathen_Jaevon@gmail.','9yahom_6rab',4920,1047677928,'Nathen_Jaevon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1766,'Trevonte','Linus','Trevonte_Linus@gmail','9yahom_6rab',1053,1042788985,'Trevonte_Linus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1767,'Creston','Tobyas','Creston_Tobyas@gmail','9yahom_6rab',5649,1526265522,'Creston_Tobyas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1768,'Sidak','Theoren','Sidak_Theoren@gmail.','9yahom_6rab',5720,1255533506,'Sidak_Theoren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1769,'Cebastian','Mylo','Cebastian_Mylo@gmail','9yahom_6rab',9056,1554021312,'Cebastian_Mylo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1770,'Navraj','Audrey','Navraj_Audrey@gmail.','9yahom_6rab',1858,1159648985,'Navraj_Audrey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1771,'Zaroon','Aakash','Zaroon_Aakash@gmail.','9yahom_6rab',3863,1272458000,'Zaroon_Aakash');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1772,'Draison','Muhammadjon','Draison_Muhammadjon@','9yahom_6rab',4184,1082054458,'Draison_Muhammadjon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1773,'Tej','Darragh','Tej_Darragh@gmail.co','9yahom_6rab',610,1296722351,'Tej_Darragh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1774,'Zaeden','Maher','Zaeden_Maher@gmail.c','9yahom_6rab',1540,1151788106,'Zaeden_Maher');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1775,'Cace','Khizar','Cace_Khizar@gmail.co','9yahom_6rab',7107,1173680580,'Cace_Khizar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1776,'Giovanny','Jojo','Giovanny_Jojo@gmail.','9yahom_6rab',3297,1563921918,'Giovanny_Jojo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1777,'Ana','Orik','Ana_Orik@gmail.com','9yahom_6rab',4585,1050759026,'Ana_Orik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1778,'Tilton','Leyland','Tilton_Leyland@gmail','9yahom_6rab',3831,1133319725,'Tilton_Leyland');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1779,'Ashland','Hutton','Ashland_Hutton@gmail','9yahom_6rab',7852,1073035360,'Ashland_Hutton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1780,'Andrew','Kairen','Andrew_Kairen@gmail.','9yahom_6rab',2366,1126627143,'Andrew_Kairen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1781,'Adib','Aadhvik','Adib_Aadhvik@gmail.c','9yahom_6rab',6649,1197925765,'Adib_Aadhvik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1782,'Kamello','Alam','Kamello_Alam@gmail.c','9yahom_6rab',1944,1588422794,'Kamello_Alam');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1783,'Mohammad','Zaydon','Mohammad_Zaydon@gmai','9yahom_6rab',3717,1244280879,'Mohammad_Zaydon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1784,'Rutvik','Urias','Rutvik_Urias@gmail.c','9yahom_6rab',5242,1197857968,'Rutvik_Urias');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1785,'Erkhes','Thorton','Erkhes_Thorton@gmail','9yahom_6rab',5564,1135830902,'Erkhes_Thorton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1786,'Jaedan','Riyad','Jaedan_Riyad@gmail.c','9yahom_6rab',5071,1286380071,'Jaedan_Riyad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1787,'Vladislav','Karsin','Vladislav_Karsin@gma','9yahom_6rab',9036,1298688794,'Vladislav_Karsin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1788,'Aldair','Christofer','Aldair_Christofer@gm','9yahom_6rab',8811,1539678485,'Aldair_Christofer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1789,'Zuhayr','Hardy','Zuhayr_Hardy@gmail.c','9yahom_6rab',1121,1556165435,'Zuhayr_Hardy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1790,'Tiller','Srihith','Tiller_Srihith@gmail','9yahom_6rab',4188,1169714166,'Tiller_Srihith');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1791,'Reyes','Dionte','Reyes_Dionte@gmail.c','9yahom_6rab',3997,1545694064,'Reyes_Dionte');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1792,'Savio','Chesney','Savio_Chesney@gmail.','9yahom_6rab',3107,1056654490,'Savio_Chesney');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1434,'Dekota','Lono','Dekota_Lono@gmail.co','9yahom_6rab',7938,1113615570,'Dekota_Lono');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1435,'Zane','Izen','Zane_Izen@gmail.com','9yahom_6rab',2523,1163395120,'Zane_Izen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1436,'Olivier','Ajeet','Olivier_Ajeet@gmail.','9yahom_6rab',3955,1534711268,'Olivier_Ajeet');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1437,'Raleigh','Teddy','Raleigh_Teddy@gmail.','9yahom_6rab',1823,1187661040,'Raleigh_Teddy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1438,'Kani','Tylan','Kani_Tylan@gmail.com','9yahom_6rab',8021,1214705524,'Kani_Tylan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1439,'Rennick','Dondre','Rennick_Dondre@gmail','9yahom_6rab',7136,1138351856,'Rennick_Dondre');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1440,'Jansiel','Leelynd','Jansiel_Leelynd@gmai','9yahom_6rab',7946,1120935252,'Jansiel_Leelynd');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1441,'Birch','Asier','Birch_Asier@gmail.co','9yahom_6rab',3255,1113814861,'Birch_Asier');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1442,'Clovis','Daichi','Clovis_Daichi@gmail.','9yahom_6rab',8586,1200293092,'Clovis_Daichi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1443,'Mounir','Jacobs','Mounir_Jacobs@gmail.','9yahom_6rab',2893,1057688425,'Mounir_Jacobs');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1444,'Pranshu','Mccall','Pranshu_Mccall@gmail','9yahom_6rab',3461,1134581181,'Pranshu_Mccall');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1445,'Mitchel','Landis','Mitchel_Landis@gmail','9yahom_6rab',5707,1266460543,'Mitchel_Landis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1446,'Zymere','Rance','Zymere_Rance@gmail.c','9yahom_6rab',1795,1015304522,'Zymere_Rance');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1447,'Toni','Anush','Toni_Anush@gmail.com','9yahom_6rab',2752,1599850776,'Toni_Anush');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1448,'Abhiraj','Tallon','Abhiraj_Tallon@gmail','9yahom_6rab',1250,1054689055,'Abhiraj_Tallon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1449,'Mechel','Taron','Mechel_Taron@gmail.c','9yahom_6rab',5459,1273272799,'Mechel_Taron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1450,'Beck','Declen','Beck_Declen@gmail.co','9yahom_6rab',9564,1150560472,'Beck_Declen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1451,'Moustafa','Christopher','Moustafa_Christopher','9yahom_6rab',9624,1254924242,'Moustafa_Christopher');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1452,'Kensley','Daymien','Kensley_Daymien@gmai','9yahom_6rab',4954,1125164693,'Kensley_Daymien');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1453,'Renaldo','Orlan','Renaldo_Orlan@gmail.','9yahom_6rab',9808,1569081483,'Renaldo_Orlan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1454,'Ashford','Krew','Ashford_Krew@gmail.c','9yahom_6rab',2806,1262015747,'Ashford_Krew');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1455,'Daxxton','Robbie','Daxxton_Robbie@gmail','9yahom_6rab',581,1213162190,'Daxxton_Robbie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1456,'Boomer','Agastya','Boomer_Agastya@gmail','9yahom_6rab',8198,1196723827,'Boomer_Agastya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1457,'Yarden','Mace','Yarden_Mace@gmail.co','9yahom_6rab',7070,1101880175,'Yarden_Mace');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1458,'Raymundo','Blakely','Raymundo_Blakely@gma','9yahom_6rab',3776,1142825517,'Raymundo_Blakely');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1459,'Tate','Dmitri','Tate_Dmitri@gmail.co','9yahom_6rab',7961,1596741290,'Tate_Dmitri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1460,'Jaret','Coltin','Jaret_Coltin@gmail.c','9yahom_6rab',1174,1014815212,'Jaret_Coltin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1461,'Leeroy','Stephan','Leeroy_Stephan@gmail','9yahom_6rab',9975,1253885422,'Leeroy_Stephan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1462,'Mills','Sheppard','Mills_Sheppard@gmail','9yahom_6rab',7960,1293938295,'Mills_Sheppard');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1463,'Alija','Khylin','Alija_Khylin@gmail.c','9yahom_6rab',5383,1094661991,'Alija_Khylin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1464,'Azaiah','Kameren','Azaiah_Kameren@gmail','9yahom_6rab',8711,1579805104,'Azaiah_Kameren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1465,'Gannon','Lamier','Gannon_Lamier@gmail.','9yahom_6rab',3136,1045098827,'Gannon_Lamier');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1466,'Saurav','Thoreau','Saurav_Thoreau@gmail','9yahom_6rab',2025,1134165143,'Saurav_Thoreau');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1467,'Lazario','Leon','Lazario_Leon@gmail.c','9yahom_6rab',4446,1040852169,'Lazario_Leon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1468,'Elimelech','Yaasir','Elimelech_Yaasir@gma','9yahom_6rab',2484,1026213058,'Elimelech_Yaasir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1469,'Nakul','Joriah','Nakul_Joriah@gmail.c','9yahom_6rab',550,1080812320,'Nakul_Joriah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1470,'Mirza','Jullian','Mirza_Jullian@gmail.','9yahom_6rab',920,1042579219,'Mirza_Jullian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1471,'Harrison','Saadiq','Harrison_Saadiq@gmai','9yahom_6rab',4497,1175502087,'Harrison_Saadiq');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1472,'Calvin','Sayd','Calvin_Sayd@gmail.co','9yahom_6rab',4327,1053898726,'Calvin_Sayd');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1473,'Gracin','Jedd','Gracin_Jedd@gmail.co','9yahom_6rab',4892,1112334017,'Gracin_Jedd');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1474,'Devlin','Meshilem','Devlin_Meshilem@gmai','9yahom_6rab',2619,1523649321,'Devlin_Meshilem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1475,'Nakota','Kazi','Nakota_Kazi@gmail.co','9yahom_6rab',6752,1041930195,'Nakota_Kazi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1476,'Jeric','Konstantine','Jeric_Konstantine@gm','9yahom_6rab',9915,1018688342,'Jeric_Konstantine');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1477,'Abdulaziz','Muawiyah','Abdulaziz_Muawiyah@g','9yahom_6rab',6413,1083571207,'Abdulaziz_Muawiyah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1478,'Ezio','Tajir','Ezio_Tajir@gmail.com','9yahom_6rab',6130,1559902374,'Ezio_Tajir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1479,'Oz','Jahking','Oz_Jahking@gmail.com','9yahom_6rab',8676,1060045727,'Oz_Jahking');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1480,'Aveer','Bivaan','Aveer_Bivaan@gmail.c','9yahom_6rab',2493,1539776415,'Aveer_Bivaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1481,'Jaxel','Stavros','Jaxel_Stavros@gmail.','9yahom_6rab',6245,1284050126,'Jaxel_Stavros');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1482,'Ireland','Jaylon','Ireland_Jaylon@gmail','9yahom_6rab',5218,1111553275,'Ireland_Jaylon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1483,'Shloime','Ozil','Shloime_Ozil@gmail.c','9yahom_6rab',3916,1198529050,'Shloime_Ozil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1484,'Amedeo','Miran','Amedeo_Miran@gmail.c','9yahom_6rab',8637,1562057474,'Amedeo_Miran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1485,'Brenan','Paolo','Brenan_Paolo@gmail.c','9yahom_6rab',6875,1182309186,'Brenan_Paolo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1486,'Elye','Kaivon','Elye_Kaivon@gmail.co','9yahom_6rab',2390,1112661031,'Elye_Kaivon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1487,'Jayshaun','Efrain','Jayshaun_Efrain@gmai','9yahom_6rab',4468,1299039597,'Jayshaun_Efrain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1488,'Lucus','Kristen','Lucus_Kristen@gmail.','9yahom_6rab',603,1004799594,'Lucus_Kristen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1489,'Kolson','Jonathan','Kolson_Jonathan@gmai','9yahom_6rab',2285,1500183317,'Kolson_Jonathan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1490,'Bodhi','Kamdin','Bodhi_Kamdin@gmail.c','9yahom_6rab',9268,1064887791,'Bodhi_Kamdin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1491,'Elohim','Fawkes','Elohim_Fawkes@gmail.','9yahom_6rab',8151,1097307952,'Elohim_Fawkes');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1492,'Jakolby','Greg','Jakolby_Greg@gmail.c','9yahom_6rab',6743,1238743538,'Jakolby_Greg');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1493,'Juniel','Hazard','Juniel_Hazard@gmail.','9yahom_6rab',2821,1016851510,'Juniel_Hazard');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1494,'Shray','Percy','Shray_Percy@gmail.co','9yahom_6rab',3268,1084208814,'Shray_Percy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1495,'Fadil','Meer','Fadil_Meer@gmail.com','9yahom_6rab',2588,1548949347,'Fadil_Meer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1496,'Finnegan','Jontavious','Finnegan_Jontavious@','9yahom_6rab',8855,1016442487,'Finnegan_Jontavious');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1497,'Bow','Akili','Bow_Akili@gmail.com','9yahom_6rab',9145,1596254889,'Bow_Akili');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1498,'Calib','Stiles','Calib_Stiles@gmail.c','9yahom_6rab',5377,1592617819,'Calib_Stiles');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1499,'Jeycob','Caydon','Jeycob_Caydon@gmail.','9yahom_6rab',9231,1052827498,'Jeycob_Caydon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1500,'Romain','Rueger','Romain_Rueger@gmail.','9yahom_6rab',7232,1096082374,'Romain_Rueger');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1501,'Acer','Bento','Acer_Bento@gmail.com','9yahom_6rab',1306,1249313069,'Acer_Bento');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1502,'Maksymilian','Ives','Maksymilian_Ives@gma','9yahom_6rab',9636,1069620708,'Maksymilian_Ives');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1503,'Ahmar','Cin','Ahmar_Cin@gmail.com','9yahom_6rab',6943,1143261872,'Ahmar_Cin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1504,'Coen','Joyner','Coen_Joyner@gmail.co','9yahom_6rab',7955,1279731578,'Coen_Joyner');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1505,'Makoa','Rakai','Makoa_Rakai@gmail.co','9yahom_6rab',7356,1291478293,'Makoa_Rakai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1506,'Jasean','Damarcus','Jasean_Damarcus@gmai','9yahom_6rab',1403,1159846792,'Jasean_Damarcus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1507,'Truu','Ahmed','Truu_Ahmed@gmail.com','9yahom_6rab',3278,1239857565,'Truu_Ahmed');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1508,'Nicolas','Rhyett','Nicolas_Rhyett@gmail','9yahom_6rab',5730,1086992186,'Nicolas_Rhyett');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1509,'Kathir','Javian','Kathir_Javian@gmail.','9yahom_6rab',5990,1098129599,'Kathir_Javian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1510,'Jemuel','Ahsan','Jemuel_Ahsan@gmail.c','9yahom_6rab',7952,1228503980,'Jemuel_Ahsan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1511,'Jaison','Ryken','Jaison_Ryken@gmail.c','9yahom_6rab',6569,1107689690,'Jaison_Ryken');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1512,'Eliakim','Alecxander','Eliakim_Alecxander@g','9yahom_6rab',5214,1249071941,'Eliakim_Alecxander');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1513,'Yovanni','Clarkson','Yovanni_Clarkson@gma','9yahom_6rab',4223,1164264988,'Yovanni_Clarkson');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1514,'Alain','Rebel','Alain_Rebel@gmail.co','9yahom_6rab',1403,1049892373,'Alain_Rebel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1515,'Hagen','Nivan','Hagen_Nivan@gmail.co','9yahom_6rab',6016,1549492859,'Hagen_Nivan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1516,'Zyair','Dreshawn','Zyair_Dreshawn@gmail','9yahom_6rab',1861,1511069926,'Zyair_Dreshawn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1517,'Macarius','Cezar','Macarius_Cezar@gmail','9yahom_6rab',5063,1298419993,'Macarius_Cezar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1518,'Graden','Milon','Graden_Milon@gmail.c','9yahom_6rab',1145,1599116687,'Graden_Milon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1519,'Fenix','Darsh','Fenix_Darsh@gmail.co','9yahom_6rab',7885,1085681420,'Fenix_Darsh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1520,'Ibraheem','Cleon','Ibraheem_Cleon@gmail','9yahom_6rab',2201,1032085981,'Ibraheem_Cleon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1521,'Jerrett','Aashir','Jerrett_Aashir@gmail','9yahom_6rab',930,1236181301,'Jerrett_Aashir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1522,'Merric','Park','Merric_Park@gmail.co','9yahom_6rab',2589,1161103144,'Merric_Park');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1523,'Sevak','Love','Sevak_Love@gmail.com','9yahom_6rab',9531,1083713873,'Sevak_Love');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1524,'Revel','Benjy','Revel_Benjy@gmail.co','9yahom_6rab',5846,1534397285,'Revel_Benjy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1525,'Abdur','Morad','Abdur_Morad@gmail.co','9yahom_6rab',3682,1570606385,'Abdur_Morad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1526,'Taliesin','Tae','Taliesin_Tae@gmail.c','9yahom_6rab',8554,1186953900,'Taliesin_Tae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1527,'Franklyn','Anvith','Franklyn_Anvith@gmai','9yahom_6rab',9082,1526758339,'Franklyn_Anvith');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1528,'Frantz','Roane','Frantz_Roane@gmail.c','9yahom_6rab',7884,1098339668,'Frantz_Roane');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1529,'Ruxton','Nick','Ruxton_Nick@gmail.co','9yahom_6rab',9920,1559733403,'Ruxton_Nick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1530,'Dane','Aryen','Dane_Aryen@gmail.com','9yahom_6rab',857,1521601712,'Dane_Aryen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1531,'Sebastion','Ruslan','Sebastion_Ruslan@gma','9yahom_6rab',8921,1039950602,'Sebastion_Ruslan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1532,'Quinten','Chael','Quinten_Chael@gmail.','9yahom_6rab',1115,1231374112,'Quinten_Chael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1533,'Lavon','Diamante','Lavon_Diamante@gmail','9yahom_6rab',1173,1531363275,'Lavon_Diamante');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1534,'Ravi','Semisi','Ravi_Semisi@gmail.co','9yahom_6rab',1698,1061454165,'Ravi_Semisi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1535,'Lathan','Korben','Lathan_Korben@gmail.','9yahom_6rab',7603,1296927614,'Lathan_Korben');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1536,'Ibrohim','Jvion','Ibrohim_Jvion@gmail.','9yahom_6rab',621,1211727094,'Ibrohim_Jvion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1537,'Mikias','Maddon','Mikias_Maddon@gmail.','9yahom_6rab',3982,1579184909,'Mikias_Maddon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1538,'Saul','Sohan','Saul_Sohan@gmail.com','9yahom_6rab',4537,1594886405,'Saul_Sohan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1539,'Jaymeson','Gor','Jaymeson_Gor@gmail.c','9yahom_6rab',1543,1142333828,'Jaymeson_Gor');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1540,'Jibreel','Zedd','Jibreel_Zedd@gmail.c','9yahom_6rab',9032,1005589560,'Jibreel_Zedd');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1541,'Mohan','Issael','Mohan_Issael@gmail.c','9yahom_6rab',6805,1010478706,'Mohan_Issael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1542,'Byron','Colesyn','Byron_Colesyn@gmail.','9yahom_6rab',1098,1125921363,'Byron_Colesyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1543,'Asaph','Branden','Asaph_Branden@gmail.','9yahom_6rab',7091,1172797929,'Asaph_Branden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1544,'Safir','Caio','Safir_Caio@gmail.com','9yahom_6rab',2597,1266903047,'Safir_Caio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1545,'Marik','Bruce','Marik_Bruce@gmail.co','9yahom_6rab',1103,1100031962,'Marik_Bruce');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1546,'Chauncey','Hue','Chauncey_Hue@gmail.c','9yahom_6rab',908,1575693381,'Chauncey_Hue');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1547,'Cash','Arjunram','Cash_Arjunram@gmail.','9yahom_6rab',4503,1587952932,'Cash_Arjunram');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1548,'Bennett','Nael','Bennett_Nael@gmail.c','9yahom_6rab',3931,1115358387,'Bennett_Nael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1549,'Arth','Temesgen','Arth_Temesgen@gmail.','9yahom_6rab',4446,1067379223,'Arth_Temesgen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1550,'Crew','Jachai','Crew_Jachai@gmail.co','9yahom_6rab',647,1254824454,'Crew_Jachai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1551,'Keshawn','Chi','Keshawn_Chi@gmail.co','9yahom_6rab',3941,1072113634,'Keshawn_Chi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1552,'Nektarios','Alber','Nektarios_Alber@gmai','9yahom_6rab',5664,1554326639,'Nektarios_Alber');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1553,'Redmond','Monte','Redmond_Monte@gmail.','9yahom_6rab',5070,1068771666,'Redmond_Monte');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1554,'Voss','Ross','Voss_Ross@gmail.com','9yahom_6rab',2788,1111165984,'Voss_Ross');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1555,'Jeramy','Kaynan','Jeramy_Kaynan@gmail.','9yahom_6rab',2380,1006067472,'Jeramy_Kaynan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1556,'Ridhaan','Shiv','Ridhaan_Shiv@gmail.c','9yahom_6rab',9238,1240238850,'Ridhaan_Shiv');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1557,'Flynt','Alamin','Flynt_Alamin@gmail.c','9yahom_6rab',5738,1126608428,'Flynt_Alamin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1558,'Davien','Jani','Davien_Jani@gmail.co','9yahom_6rab',849,1131518000,'Davien_Jani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1559,'Nigel','Rikuto','Nigel_Rikuto@gmail.c','9yahom_6rab',3902,1226804085,'Nigel_Rikuto');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1560,'Armonii','Zakariya','Armonii_Zakariya@gma','9yahom_6rab',6081,1193536208,'Armonii_Zakariya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1561,'Brant','Louis','Brant_Louis@gmail.co','9yahom_6rab',9681,1214731619,'Brant_Louis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1562,'Finnlee','Donnie','Finnlee_Donnie@gmail','9yahom_6rab',4888,1134441797,'Finnlee_Donnie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1563,'Kol','Franklin','Kol_Franklin@gmail.c','9yahom_6rab',9579,1045544756,'Kol_Franklin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1564,'Ethen','Jaryn','Ethen_Jaryn@gmail.co','9yahom_6rab',6619,1179835947,'Ethen_Jaryn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1565,'Necalli','Eustace','Necalli_Eustace@gmai','9yahom_6rab',4785,1582263982,'Necalli_Eustace');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1566,'Zavion','Amore','Zavion_Amore@gmail.c','9yahom_6rab',3624,1168514793,'Zavion_Amore');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1567,'Imaad','Matas','Imaad_Matas@gmail.co','9yahom_6rab',8275,1118453114,'Imaad_Matas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1568,'Khair','Emori','Khair_Emori@gmail.co','9yahom_6rab',1750,1538106521,'Khair_Emori');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1569,'Bankston','Quillon','Bankston_Quillon@gma','9yahom_6rab',4892,1093059550,'Bankston_Quillon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1570,'Lochlan','Konstantin','Lochlan_Konstantin@g','9yahom_6rab',9830,1180466519,'Lochlan_Konstantin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1571,'Mcclain','Vinay','Mcclain_Vinay@gmail.','9yahom_6rab',3177,1203177642,'Mcclain_Vinay');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1572,'Ezias','Oshea','Ezias_Oshea@gmail.co','9yahom_6rab',9921,1072242848,'Ezias_Oshea');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1573,'Nicholaus','Rorik','Nicholaus_Rorik@gmai','9yahom_6rab',998,1236633483,'Nicholaus_Rorik');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1574,'Zeyad','Kiam','Zeyad_Kiam@gmail.com','9yahom_6rab',5904,1235383565,'Zeyad_Kiam');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1575,'Daunte','Konnor','Daunte_Konnor@gmail.','9yahom_6rab',4217,1515411075,'Daunte_Konnor');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1576,'Kenard','Titan','Kenard_Titan@gmail.c','9yahom_6rab',7924,1248956302,'Kenard_Titan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1577,'Daijon','Imon','Daijon_Imon@gmail.co','9yahom_6rab',7745,1001038468,'Daijon_Imon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1578,'Huy','Muhannad','Huy_Muhannad@gmail.c','9yahom_6rab',4781,1017483729,'Huy_Muhannad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1579,'Leonard','Adriyel','Leonard_Adriyel@gmai','9yahom_6rab',6213,1211300455,'Leonard_Adriyel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1580,'Eniel','Joziyah','Eniel_Joziyah@gmail.','9yahom_6rab',9414,1107994345,'Eniel_Joziyah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1581,'Peretz','Yohaan','Peretz_Yohaan@gmail.','9yahom_6rab',6544,1588238188,'Peretz_Yohaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1582,'Issak','Yahshua','Issak_Yahshua@gmail.','9yahom_6rab',5793,1054891116,'Issak_Yahshua');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1583,'Koben','Hirving','Koben_Hirving@gmail.','9yahom_6rab',8970,1547473087,'Koben_Hirving');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1584,'Tauren','Shreeyan','Tauren_Shreeyan@gmai','9yahom_6rab',3486,1589597082,'Tauren_Shreeyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1585,'Erikson','Keanu','Erikson_Keanu@gmail.','9yahom_6rab',7708,1001657679,'Erikson_Keanu');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1586,'Kaptain','Kamoni','Kaptain_Kamoni@gmail','9yahom_6rab',1706,1028825058,'Kaptain_Kamoni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1587,'Legand','Zachari','Legand_Zachari@gmail','9yahom_6rab',4157,1010005524,'Legand_Zachari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1588,'Kaanan','Kedar','Kaanan_Kedar@gmail.c','9yahom_6rab',5426,1232961449,'Kaanan_Kedar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1589,'Siam','Cove','Siam_Cove@gmail.com','9yahom_6rab',799,1506790181,'Siam_Cove');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1590,'Brance','Wendell','Brance_Wendell@gmail','9yahom_6rab',6917,1114377833,'Brance_Wendell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1591,'Raistlin','Sayvon','Raistlin_Sayvon@gmai','9yahom_6rab',7345,1264329284,'Raistlin_Sayvon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1592,'Wanya','Ramesses','Wanya_Ramesses@gmail','9yahom_6rab',8645,1529345504,'Wanya_Ramesses');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1593,'Parx','Boyce','Parx_Boyce@gmail.com','9yahom_6rab',4185,1117112409,'Parx_Boyce');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1594,'Adam','Rafael','Adam_Rafael@gmail.co','9yahom_6rab',6448,1538701807,'Adam_Rafael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1595,'Jaicyon','Roczen','Jaicyon_Roczen@gmail','9yahom_6rab',6356,1007211185,'Jaicyon_Roczen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1596,'Marcellous','Cesare','Marcellous_Cesare@gm','9yahom_6rab',5020,1264401899,'Marcellous_Cesare');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1597,'Jaydiel','Kyndal','Jaydiel_Kyndal@gmail','9yahom_6rab',7748,1168539568,'Jaydiel_Kyndal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1598,'Fallou','Temitayo','Fallou_Temitayo@gmai','9yahom_6rab',3919,1290605082,'Fallou_Temitayo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1599,'Attila','Jahleel','Attila_Jahleel@gmail','9yahom_6rab',2145,1014037535,'Attila_Jahleel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1600,'Anduin','Evaan','Anduin_Evaan@gmail.c','9yahom_6rab',9764,1292565114,'Anduin_Evaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1601,'Wolfram','Jemini','Wolfram_Jemini@gmail','9yahom_6rab',5927,1537752013,'Wolfram_Jemini');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1602,'Rayden','Daquan','Rayden_Daquan@gmail.','9yahom_6rab',2169,1161369787,'Rayden_Daquan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1603,'Castiel','Dacen','Castiel_Dacen@gmail.','9yahom_6rab',8636,1119271432,'Castiel_Dacen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1604,'Jaceion','Kaled','Jaceion_Kaled@gmail.','9yahom_6rab',9704,1041786811,'Jaceion_Kaled');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1605,'Nalan','Lacen','Nalan_Lacen@gmail.co','9yahom_6rab',5567,1007736371,'Nalan_Lacen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1606,'Jarmaine','Skyler','Jarmaine_Skyler@gmai','9yahom_6rab',4043,1167360554,'Jarmaine_Skyler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1607,'Acel','Cylas','Acel_Cylas@gmail.com','9yahom_6rab',9045,1523151563,'Acel_Cylas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1608,'Savior','Dishan','Savior_Dishan@gmail.','9yahom_6rab',9548,1130550771,'Savior_Dishan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1609,'Yuki','Ayyub','Yuki_Ayyub@gmail.com','9yahom_6rab',3720,1298913448,'Yuki_Ayyub');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1610,'Benjen','Ronyn','Benjen_Ronyn@gmail.c','9yahom_6rab',2352,1176489313,'Benjen_Ronyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1611,'Husam','Jasraj','Husam_Jasraj@gmail.c','9yahom_6rab',3737,1567054612,'Husam_Jasraj');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1612,'Rylon','Akhilles','Rylon_Akhilles@gmail','9yahom_6rab',2781,1167971633,'Rylon_Akhilles');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1613,'Kameran','Logic','Kameran_Logic@gmail.','9yahom_6rab',2972,1255283515,'Kameran_Logic');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1614,'Jaceson','Samvel','Jaceson_Samvel@gmail','9yahom_6rab',2677,1026745640,'Jaceson_Samvel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1615,'Saqr','Kiylan','Saqr_Kiylan@gmail.co','9yahom_6rab',2296,1000039375,'Saqr_Kiylan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1616,'Aristeo','Aniel','Aristeo_Aniel@gmail.','9yahom_6rab',3143,1580539602,'Aristeo_Aniel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1617,'Thoryn','Dashel','Thoryn_Dashel@gmail.','9yahom_6rab',9937,1097495649,'Thoryn_Dashel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1618,'Ralphael','Joachim','Ralphael_Joachim@gma','9yahom_6rab',2965,1245974384,'Ralphael_Joachim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1619,'Loren','Lamelo','Loren_Lamelo@gmail.c','9yahom_6rab',2226,1025517294,'Loren_Lamelo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1620,'Nero','Misael','Nero_Misael@gmail.co','9yahom_6rab',3732,1205059000,'Nero_Misael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1621,'Carvell','Hoss','Carvell_Hoss@gmail.c','9yahom_6rab',3416,1007590264,'Carvell_Hoss');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1622,'Severin','Makaius','Severin_Makaius@gmai','9yahom_6rab',3565,1090772924,'Severin_Makaius');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1623,'Emre','Brycyn','Emre_Brycyn@gmail.co','9yahom_6rab',8540,1283964663,'Emre_Brycyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1624,'Akilles','Kamaro','Akilles_Kamaro@gmail','9yahom_6rab',4233,1560993940,'Akilles_Kamaro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1625,'Tavoris','Wayne','Tavoris_Wayne@gmail.','9yahom_6rab',4742,1517884535,'Tavoris_Wayne');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1626,'Dayden','Jaelyn','Dayden_Jaelyn@gmail.','9yahom_6rab',6743,1284032574,'Dayden_Jaelyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1627,'Indiana','Nicolo','Indiana_Nicolo@gmail','9yahom_6rab',6712,1052028410,'Indiana_Nicolo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1628,'Lyric','Tavonte','Lyric_Tavonte@gmail.','9yahom_6rab',5970,1599801439,'Lyric_Tavonte');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1629,'Damarea','Gurman','Damarea_Gurman@gmail','9yahom_6rab',2857,1280936717,'Damarea_Gurman');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1630,'Tao','Jarred','Tao_Jarred@gmail.com','9yahom_6rab',8336,1036754539,'Tao_Jarred');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1631,'Colsyn','Mahmud','Colsyn_Mahmud@gmail.','9yahom_6rab',2964,1206371042,'Colsyn_Mahmud');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1632,'Bentley','Treyveon','Bentley_Treyveon@gma','9yahom_6rab',9316,1518550533,'Bentley_Treyveon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1633,'Dominus','Jayel','Dominus_Jayel@gmail.','9yahom_6rab',9868,1122740679,'Dominus_Jayel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1634,'Nashawn','Joash','Nashawn_Joash@gmail.','9yahom_6rab',8251,1038937329,'Nashawn_Joash');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1635,'Dorion','Ziggy','Dorion_Ziggy@gmail.c','9yahom_6rab',770,1155107222,'Dorion_Ziggy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1636,'Ason','Zyan','Ason_Zyan@gmail.com','9yahom_6rab',8248,1280470433,'Ason_Zyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1637,'Kasian','Rashon','Kasian_Rashon@gmail.','9yahom_6rab',1452,1152739939,'Kasian_Rashon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1638,'Mikhael','Alekxander','Mikhael_Alekxander@g','9yahom_6rab',9542,1104320485,'Mikhael_Alekxander');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1639,'Zael','Kamarie','Zael_Kamarie@gmail.c','9yahom_6rab',6600,1293872302,'Zael_Kamarie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1640,'Auryn','Shahzaib','Auryn_Shahzaib@gmail','9yahom_6rab',2781,1220041394,'Auryn_Shahzaib');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1641,'Isaiahs','Henric','Isaiahs_Henric@gmail','9yahom_6rab',3477,1061239906,'Isaiahs_Henric');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1642,'Jrake','Vivaansh','Jrake_Vivaansh@gmail','9yahom_6rab',6655,1172941447,'Jrake_Vivaansh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1643,'Zebulun','Mantej','Zebulun_Mantej@gmail','9yahom_6rab',8327,1251725537,'Zebulun_Mantej');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1644,'Quinton','Azaad','Quinton_Azaad@gmail.','9yahom_6rab',7985,1259577974,'Quinton_Azaad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1645,'Pharoah','Frandy','Pharoah_Frandy@gmail','9yahom_6rab',5827,1187396156,'Pharoah_Frandy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1646,'Taedyn','Lando','Taedyn_Lando@gmail.c','9yahom_6rab',7015,1067446962,'Taedyn_Lando');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1647,'Delmar','Jveon','Delmar_Jveon@gmail.c','9yahom_6rab',7489,1254267048,'Delmar_Jveon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1648,'Jaeceon','Raef','Jaeceon_Raef@gmail.c','9yahom_6rab',6646,1284278585,'Jaeceon_Raef');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1649,'Castle','Myka','Castle_Myka@gmail.co','9yahom_6rab',5391,1217237975,'Castle_Myka');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1650,'Brian','Jyren','Brian_Jyren@gmail.co','9yahom_6rab',5600,1571945219,'Brian_Jyren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1651,'Sofian','Dmarion','Sofian_Dmarion@gmail','9yahom_6rab',1871,1028173657,'Sofian_Dmarion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1652,'Kaladin','Suraj','Kaladin_Suraj@gmail.','9yahom_6rab',6571,1594874548,'Kaladin_Suraj');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1653,'Bowe','Azion','Bowe_Azion@gmail.com','9yahom_6rab',1847,1598930520,'Bowe_Azion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1654,'Yuvan','Brodix','Yuvan_Brodix@gmail.c','9yahom_6rab',3677,1193741259,'Yuvan_Brodix');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1655,'Pau','Rex','Pau_Rex@gmail.com','9yahom_6rab',7949,1212603140,'Pau_Rex');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1656,'Royden','Lindell','Royden_Lindell@gmail','9yahom_6rab',3305,1590812315,'Royden_Lindell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1657,'Zyron','Samip','Zyron_Samip@gmail.co','9yahom_6rab',8690,1173522822,'Zyron_Samip');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1658,'Zayvon','Cecilio','Zayvon_Cecilio@gmail','9yahom_6rab',1917,1131878404,'Zayvon_Cecilio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1659,'Usher','Kron','Usher_Kron@gmail.com','9yahom_6rab',2335,1530127181,'Usher_Kron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1660,'Marquay','Zamian','Marquay_Zamian@gmail','9yahom_6rab',2644,1231062352,'Marquay_Zamian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1661,'Moroni','Reagan','Moroni_Reagan@gmail.','9yahom_6rab',7832,1105073476,'Moroni_Reagan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1662,'Omarii','Akicita','Omarii_Akicita@gmail','9yahom_6rab',1049,1233473771,'Omarii_Akicita');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1663,'Kolsten','Jedidiah','Kolsten_Jedidiah@gma','9yahom_6rab',3294,1108122977,'Kolsten_Jedidiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1664,'Tamaj','Karver','Tamaj_Karver@gmail.c','9yahom_6rab',2709,1525525343,'Tamaj_Karver');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1665,'Jameslee','Berish','Jameslee_Berish@gmai','9yahom_6rab',5782,1093465223,'Jameslee_Berish');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1666,'Jerrold','Avrumy','Jerrold_Avrumy@gmail','9yahom_6rab',2348,1019750308,'Jerrold_Avrumy');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1667,'Lunden','Everton','Lunden_Everton@gmail','9yahom_6rab',3661,1551164109,'Lunden_Everton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1668,'Nyir','Aarohan','Nyir_Aarohan@gmail.c','9yahom_6rab',7113,1550837869,'Nyir_Aarohan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1669,'Everly','Ariel','Everly_Ariel@gmail.c','9yahom_6rab',4852,1048133985,'Everly_Ariel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1670,'Zierre','Alston','Zierre_Alston@gmail.','9yahom_6rab',4535,1182326614,'Zierre_Alston');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1671,'Neylan','Aengus','Neylan_Aengus@gmail.','9yahom_6rab',6489,1161646070,'Neylan_Aengus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1672,'Donato','Alo','Donato_Alo@gmail.com','9yahom_6rab',8264,1285640093,'Donato_Alo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1673,'Sufyaan','Byran','Sufyaan_Byran@gmail.','9yahom_6rab',1449,1595310584,'Sufyaan_Byran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1674,'Karen','Rajveer','Karen_Rajveer@gmail.','9yahom_6rab',7024,1131278238,'Karen_Rajveer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1675,'Sasuke','Rylie','Sasuke_Rylie@gmail.c','9yahom_6rab',5096,1519108247,'Sasuke_Rylie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1676,'Shant','Johndavid','Shant_Johndavid@gmai','9yahom_6rab',2921,1284947256,'Shant_Johndavid');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1677,'Blas','Hersh','Blas_Hersh@gmail.com','9yahom_6rab',3197,1107395541,'Blas_Hersh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1678,'Newell','Tyrez','Newell_Tyrez@gmail.c','9yahom_6rab',5110,1114313521,'Newell_Tyrez');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1679,'Giovannie','Imron','Giovannie_Imron@gmai','9yahom_6rab',9487,1270110080,'Giovannie_Imron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1680,'Stacey','Spike','Stacey_Spike@gmail.c','9yahom_6rab',2801,1085420745,'Stacey_Spike');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1681,'Ulysses','Brink','Ulysses_Brink@gmail.','9yahom_6rab',9309,1005993957,'Ulysses_Brink');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1682,'Rosario','Derreck','Rosario_Derreck@gmai','9yahom_6rab',6083,1221560568,'Rosario_Derreck');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1683,'Baxter','Yohan','Baxter_Yohan@gmail.c','9yahom_6rab',1330,1216644194,'Baxter_Yohan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1684,'Kaedyn','Jaiceion','Kaedyn_Jaiceion@gmai','9yahom_6rab',5908,1568467268,'Kaedyn_Jaiceion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1685,'Meilech','Escher','Meilech_Escher@gmail','9yahom_6rab',7525,1577624631,'Meilech_Escher');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1686,'Eashan','Jajuan','Eashan_Jajuan@gmail.','9yahom_6rab',1368,1501278276,'Eashan_Jajuan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1687,'Shloima','Cloud','Shloima_Cloud@gmail.','9yahom_6rab',1015,1070184699,'Shloima_Cloud');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1688,'Len','Lynkon','Len_Lynkon@gmail.com','9yahom_6rab',8774,1091033288,'Len_Lynkon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1689,'Khan','Emmit','Khan_Emmit@gmail.com','9yahom_6rab',2926,1101893953,'Khan_Emmit');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1690,'Deniz','Ved','Deniz_Ved@gmail.com','9yahom_6rab',2629,1520788712,'Deniz_Ved');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1691,'Oaks','Jamair','Oaks_Jamair@gmail.co','9yahom_6rab',7890,1563946396,'Oaks_Jamair');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1692,'Claude','Dieter','Claude_Dieter@gmail.','9yahom_6rab',1508,1200544967,'Claude_Dieter');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1693,'Leodan','Tyrael','Leodan_Tyrael@gmail.','9yahom_6rab',9239,1103818866,'Leodan_Tyrael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1694,'Armon','Harley','Armon_Harley@gmail.c','9yahom_6rab',7284,1298107023,'Armon_Harley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1695,'Josmar','Jaece','Josmar_Jaece@gmail.c','9yahom_6rab',5858,1127629772,'Josmar_Jaece');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1696,'Abdullahi','Hank','Abdullahi_Hank@gmail','9yahom_6rab',2434,1128189029,'Abdullahi_Hank');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1697,'Kaycion','Hamed','Kaycion_Hamed@gmail.','9yahom_6rab',6354,1091336031,'Kaycion_Hamed');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1698,'Braylin','Korbyn','Braylin_Korbyn@gmail','9yahom_6rab',7890,1581880663,'Braylin_Korbyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1699,'Treyson','Marqus','Treyson_Marqus@gmail','9yahom_6rab',1934,1046513969,'Treyson_Marqus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1700,'Zohair','Olliver','Zohair_Olliver@gmail','9yahom_6rab',5841,1597796716,'Zohair_Olliver');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1701,'Vedant','Ronald','Vedant_Ronald@gmail.','9yahom_6rab',6349,1146630792,'Vedant_Ronald');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1702,'Namari','Braycen','Namari_Braycen@gmail','9yahom_6rab',3483,1507928997,'Namari_Braycen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1703,'Vitali','Leonzo','Vitali_Leonzo@gmail.','9yahom_6rab',5658,1195547246,'Vitali_Leonzo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1167,'Izeah','Jakaiden','Izeah_Jakaiden@gmail','9yahom_6rab',1055,1171266514,'Izeah_Jakaiden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1168,'Sheikh','Valentim','Sheikh_Valentim@gmai','9yahom_6rab',4724,1103964905,'Sheikh_Valentim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1169,'Naftoli','Noelle','Naftoli_Noelle@gmail','9yahom_6rab',9306,1015686513,'Naftoli_Noelle');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1170,'Brysten','Hixon','Brysten_Hixon@gmail.','9yahom_6rab',5673,1060796762,'Brysten_Hixon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1171,'Jaheir','Omni','Jaheir_Omni@gmail.co','9yahom_6rab',1715,1190551163,'Jaheir_Omni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1172,'Fenrir','Kyland','Fenrir_Kyland@gmail.','9yahom_6rab',9023,1183173630,'Fenrir_Kyland');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1173,'Darrien','Jaysion','Darrien_Jaysion@gmai','9yahom_6rab',7549,1507018176,'Darrien_Jaysion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1174,'Javonn','Jatavion','Javonn_Jatavion@gmai','9yahom_6rab',9292,1261715932,'Javonn_Jatavion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1175,'Devion','Khayri','Devion_Khayri@gmail.','9yahom_6rab',3154,1079875689,'Devion_Khayri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1176,'Yixuan','Toma','Yixuan_Toma@gmail.co','9yahom_6rab',1752,1049033490,'Yixuan_Toma');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1177,'Marino','Brylee','Marino_Brylee@gmail.','9yahom_6rab',6338,1140108576,'Marino_Brylee');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1178,'Issam','Kyon','Issam_Kyon@gmail.com','9yahom_6rab',9526,1000032668,'Issam_Kyon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1179,'Zyeon','Rett','Zyeon_Rett@gmail.com','9yahom_6rab',5295,1130844245,'Zyeon_Rett');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1180,'Keyair','Aleister','Keyair_Aleister@gmai','9yahom_6rab',9045,1587663768,'Keyair_Aleister');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1181,'Richardo','Xaidyn','Richardo_Xaidyn@gmai','9yahom_6rab',1124,1501101506,'Richardo_Xaidyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1182,'Trayce','Whitney','Trayce_Whitney@gmail','9yahom_6rab',8430,1288028122,'Trayce_Whitney');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1183,'Lazarus','Thad','Lazarus_Thad@gmail.c','9yahom_6rab',5324,1571230157,'Lazarus_Thad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1184,'Fallon','Kier','Fallon_Kier@gmail.co','9yahom_6rab',574,1031589280,'Fallon_Kier');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1185,'Quadarius','Deleon','Quadarius_Deleon@gma','9yahom_6rab',8621,1216683142,'Quadarius_Deleon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1186,'Neamiah','Kentrel','Neamiah_Kentrel@gmai','9yahom_6rab',687,1509922061,'Neamiah_Kentrel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1187,'Alban','Jondriel','Alban_Jondriel@gmail','9yahom_6rab',7209,1071202911,'Alban_Jondriel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1188,'Terrin','Ivin','Terrin_Ivin@gmail.co','9yahom_6rab',3111,1593457518,'Terrin_Ivin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1189,'Billie','Zamair','Billie_Zamair@gmail.','9yahom_6rab',899,1567398252,'Billie_Zamair');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1190,'Curran','Montreal','Curran_Montreal@gmai','9yahom_6rab',8365,1586578751,'Curran_Montreal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1191,'Alezander','Jireh','Alezander_Jireh@gmai','9yahom_6rab',9309,1236497836,'Alezander_Jireh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1192,'Havyn','Laiken','Havyn_Laiken@gmail.c','9yahom_6rab',571,1261244538,'Havyn_Laiken');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1193,'Avery','Emilia','Avery_Emilia@gmail.c','9yahom_6rab',1659,1062444968,'Avery_Emilia');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1194,'Lev','Shaka','Lev_Shaka@gmail.com','9yahom_6rab',2713,1160761920,'Lev_Shaka');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1195,'Izac','Agampreet','Izac_Agampreet@gmail','9yahom_6rab',2804,1250723282,'Izac_Agampreet');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1196,'Nakari','Kimoni','Nakari_Kimoni@gmail.','9yahom_6rab',5609,1197811008,'Nakari_Kimoni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1197,'Xamir','Cole','Xamir_Cole@gmail.com','9yahom_6rab',9811,1244420786,'Xamir_Cole');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1198,'Jenner','Royal','Jenner_Royal@gmail.c','9yahom_6rab',5928,1558148108,'Jenner_Royal');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1199,'Yahweh','Corrion','Yahweh_Corrion@gmail','9yahom_6rab',7841,1515189150,'Yahweh_Corrion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1200,'Greatness','Aayush','Greatness_Aayush@gma','9yahom_6rab',8821,1522818771,'Greatness_Aayush');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1201,'Garrison','Ugonna','Garrison_Ugonna@gmai','9yahom_6rab',4884,1013951014,'Garrison_Ugonna');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1202,'Lendon','Keaghan','Lendon_Keaghan@gmail','9yahom_6rab',4315,1145150393,'Lendon_Keaghan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1203,'Sherlock','Jonte','Sherlock_Jonte@gmail','9yahom_6rab',2166,1221735003,'Sherlock_Jonte');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1204,'Zaion','Shadi','Zaion_Shadi@gmail.co','9yahom_6rab',3333,1161727912,'Zaion_Shadi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1205,'Bransen','Kelvyn','Bransen_Kelvyn@gmail','9yahom_6rab',1865,1247342498,'Bransen_Kelvyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1206,'Savin','Legaci','Savin_Legaci@gmail.c','9yahom_6rab',7840,1556783423,'Savin_Legaci');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1207,'Naksh','Romulus','Naksh_Romulus@gmail.','9yahom_6rab',8522,1099646148,'Naksh_Romulus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1208,'Maasai','Bella','Maasai_Bella@gmail.c','9yahom_6rab',9317,1587546582,'Maasai_Bella');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1209,'Keizer','Coasten','Keizer_Coasten@gmail','9yahom_6rab',7765,1166706435,'Keizer_Coasten');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1210,'Dorien','Lino','Dorien_Lino@gmail.co','9yahom_6rab',9439,1028936002,'Dorien_Lino');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1211,'Kaplan','Oberyn','Kaplan_Oberyn@gmail.','9yahom_6rab',4108,1583039210,'Kaplan_Oberyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1212,'Carmichael','Wells','Carmichael_Wells@gma','9yahom_6rab',7612,1179088181,'Carmichael_Wells');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1213,'Charli','Mylz','Charli_Mylz@gmail.co','9yahom_6rab',3479,1037125025,'Charli_Mylz');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1214,'Baron','Colvin','Baron_Colvin@gmail.c','9yahom_6rab',8189,1518595475,'Baron_Colvin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1215,'Tarius','Jyaire','Tarius_Jyaire@gmail.','9yahom_6rab',6443,1088827545,'Tarius_Jyaire');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1216,'Cashtyn','Aung','Cashtyn_Aung@gmail.c','9yahom_6rab',2286,1144704496,'Cashtyn_Aung');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1217,'Zaymar','Brodrick','Zaymar_Brodrick@gmai','9yahom_6rab',2176,1296242289,'Zaymar_Brodrick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1218,'Kyan','Sobhan','Kyan_Sobhan@gmail.co','9yahom_6rab',3252,1139973427,'Kyan_Sobhan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1219,'Yosiel','Kasyn','Yosiel_Kasyn@gmail.c','9yahom_6rab',3436,1109089235,'Yosiel_Kasyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1220,'Godfrey','Maceon','Godfrey_Maceon@gmail','9yahom_6rab',2997,1095798760,'Godfrey_Maceon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1221,'Nataniel','Jio','Nataniel_Jio@gmail.c','9yahom_6rab',4401,1514828341,'Nataniel_Jio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1222,'Joshiah','Breccan','Joshiah_Breccan@gmai','9yahom_6rab',5871,1158902541,'Joshiah_Breccan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1223,'Giaan','Kyng','Giaan_Kyng@gmail.com','9yahom_6rab',997,1057297800,'Giaan_Kyng');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1224,'Dreamer','Avant','Dreamer_Avant@gmail.','9yahom_6rab',1577,1551823948,'Dreamer_Avant');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1225,'Uriah','Jeff','Uriah_Jeff@gmail.com','9yahom_6rab',7483,1215803825,'Uriah_Jeff');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1226,'Ryan','Khepri','Ryan_Khepri@gmail.co','9yahom_6rab',4973,1562938572,'Ryan_Khepri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1227,'Ritvik','Rashard','Ritvik_Rashard@gmail','9yahom_6rab',1341,1206150177,'Ritvik_Rashard');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1228,'Teon','Genesis','Teon_Genesis@gmail.c','9yahom_6rab',5598,1227064774,'Teon_Genesis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1229,'Maddox','Reyden','Maddox_Reyden@gmail.','9yahom_6rab',6933,1150370454,'Maddox_Reyden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1230,'Kiro','Deylin','Kiro_Deylin@gmail.co','9yahom_6rab',1554,1564476608,'Kiro_Deylin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1231,'Tytus','Sargis','Tytus_Sargis@gmail.c','9yahom_6rab',2633,1128355430,'Tytus_Sargis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1232,'Yovan','Froylan','Yovan_Froylan@gmail.','9yahom_6rab',1413,1094560370,'Yovan_Froylan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1233,'Amaurie','Jonathon','Amaurie_Jonathon@gma','9yahom_6rab',1543,1195141554,'Amaurie_Jonathon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1234,'Kader','Alejandro','Kader_Alejandro@gmai','9yahom_6rab',8411,1563042643,'Kader_Alejandro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1235,'Trustin','Afton','Trustin_Afton@gmail.','9yahom_6rab',6717,1280666705,'Trustin_Afton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1236,'Bradlyn','Lynkoln','Bradlyn_Lynkoln@gmai','9yahom_6rab',1738,1598051366,'Bradlyn_Lynkoln');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1237,'Benuel','Emileo','Benuel_Emileo@gmail.','9yahom_6rab',8636,1059954299,'Benuel_Emileo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1238,'Leonnel','Rondell','Leonnel_Rondell@gmai','9yahom_6rab',819,1283459846,'Leonnel_Rondell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1239,'Behr','Cainen','Behr_Cainen@gmail.co','9yahom_6rab',3601,1242819881,'Behr_Cainen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1240,'Jamarious','Tryton','Jamarious_Tryton@gma','9yahom_6rab',7233,1100358971,'Jamarious_Tryton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1241,'Kendall','Ramsi','Kendall_Ramsi@gmail.','9yahom_6rab',5410,1045013226,'Kendall_Ramsi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1242,'Valentin','Cohan','Valentin_Cohan@gmail','9yahom_6rab',1025,1564668898,'Valentin_Cohan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1243,'Kindred','Kamrin','Kindred_Kamrin@gmail','9yahom_6rab',8216,1028730659,'Kindred_Kamrin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1244,'Amanuel','Kairee','Amanuel_Kairee@gmail','9yahom_6rab',1308,1041903530,'Amanuel_Kairee');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1245,'Jiaire','Kiante','Jiaire_Kiante@gmail.','9yahom_6rab',1721,1010945758,'Jiaire_Kiante');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1246,'Chinonso','Jerrion','Chinonso_Jerrion@gma','9yahom_6rab',3984,1095165992,'Chinonso_Jerrion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1247,'Johnathan','Morocco','Johnathan_Morocco@gm','9yahom_6rab',686,1199421610,'Johnathan_Morocco');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1248,'Mayer','Cillian','Mayer_Cillian@gmail.','9yahom_6rab',3658,1028504471,'Mayer_Cillian');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1249,'Desi','Daksh','Desi_Daksh@gmail.com','9yahom_6rab',9533,1270537050,'Desi_Daksh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1250,'Zayaan','Alberto','Zayaan_Alberto@gmail','9yahom_6rab',3429,1163244542,'Zayaan_Alberto');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1251,'Makeo','Hiyan','Makeo_Hiyan@gmail.co','9yahom_6rab',3614,1209835928,'Makeo_Hiyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1252,'Aidenjames','Arman','Aidenjames_Arman@gma','9yahom_6rab',3598,1089818355,'Aidenjames_Arman');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1253,'Sarvin','Kidus','Sarvin_Kidus@gmail.c','9yahom_6rab',2030,1002330836,'Sarvin_Kidus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1254,'Brooks','Jussiah','Brooks_Jussiah@gmail','9yahom_6rab',6463,1550768316,'Brooks_Jussiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1255,'Kye','Kenniel','Kye_Kenniel@gmail.co','9yahom_6rab',7694,1126778920,'Kye_Kenniel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1256,'Hayden','Zahran','Hayden_Zahran@gmail.','9yahom_6rab',5193,1076197957,'Hayden_Zahran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1257,'Mikell','Zabdiel','Mikell_Zabdiel@gmail','9yahom_6rab',6216,1239745394,'Mikell_Zabdiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1258,'Trysten','Tirrell','Trysten_Tirrell@gmai','9yahom_6rab',9186,1046146361,'Trysten_Tirrell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1259,'Kruize','Efosa','Kruize_Efosa@gmail.c','9yahom_6rab',4318,1053094672,'Kruize_Efosa');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1260,'Eliyah','Kasaun','Eliyah_Kasaun@gmail.','9yahom_6rab',5675,1282720892,'Eliyah_Kasaun');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1261,'Lucio','Pruitt','Lucio_Pruitt@gmail.c','9yahom_6rab',3548,1007940546,'Lucio_Pruitt');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1262,'Sal','Adhitya','Sal_Adhitya@gmail.co','9yahom_6rab',5019,1534733603,'Sal_Adhitya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1263,'Dvon','Matheus','Dvon_Matheus@gmail.c','9yahom_6rab',7060,1259648832,'Dvon_Matheus');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1264,'Jahsir','Keiyon','Jahsir_Keiyon@gmail.','9yahom_6rab',629,1070020342,'Jahsir_Keiyon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1265,'Frankie','Devlyn','Frankie_Devlyn@gmail','9yahom_6rab',8513,1121633724,'Frankie_Devlyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1266,'Bentli','Rasa','Bentli_Rasa@gmail.co','9yahom_6rab',5097,1251227716,'Bentli_Rasa');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1267,'Hamid','Keagen','Hamid_Keagen@gmail.c','9yahom_6rab',9106,1111272043,'Hamid_Keagen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1268,'Jonahel','Kenil','Jonahel_Kenil@gmail.','9yahom_6rab',5427,1231017033,'Jonahel_Kenil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1269,'Clancy','Rhyder','Clancy_Rhyder@gmail.','9yahom_6rab',6823,1545299666,'Clancy_Rhyder');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1270,'Campion','Aveon','Campion_Aveon@gmail.','9yahom_6rab',9429,1012870720,'Campion_Aveon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1271,'Brennon','Oaklin','Brennon_Oaklin@gmail','9yahom_6rab',3302,1574506001,'Brennon_Oaklin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1272,'Mesiyah','Izel','Mesiyah_Izel@gmail.c','9yahom_6rab',6666,1563842434,'Mesiyah_Izel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1273,'Avinash','Oghenetega','Avinash_Oghenetega@g','9yahom_6rab',4683,1120485292,'Avinash_Oghenetega');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1274,'Reylan','Bain','Reylan_Bain@gmail.co','9yahom_6rab',5331,1256436304,'Reylan_Bain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1275,'Zavior','Cyrie','Zavior_Cyrie@gmail.c','9yahom_6rab',3519,1571165717,'Zavior_Cyrie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1276,'Rubin','Eyuel','Rubin_Eyuel@gmail.co','9yahom_6rab',1360,1017395955,'Rubin_Eyuel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1277,'Jaycee','Sharvesh','Jaycee_Sharvesh@gmai','9yahom_6rab',4457,1218077198,'Jaycee_Sharvesh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1278,'Matrim','Jvon','Matrim_Jvon@gmail.co','9yahom_6rab',7905,1553172430,'Matrim_Jvon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1279,'Xavien','Hanad','Xavien_Hanad@gmail.c','9yahom_6rab',1181,1119768335,'Xavien_Hanad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1280,'Gurshan','Emmanuelle','Gurshan_Emmanuelle@g','9yahom_6rab',4581,1272695472,'Gurshan_Emmanuelle');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1281,'Zidane','Ludwin','Zidane_Ludwin@gmail.','9yahom_6rab',4743,1034445661,'Zidane_Ludwin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1282,'Taven','Azlan','Taven_Azlan@gmail.co','9yahom_6rab',5776,1173929503,'Taven_Azlan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1283,'Demian','Madden','Demian_Madden@gmail.','9yahom_6rab',7430,1013703525,'Demian_Madden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1284,'Frey','Jentry','Frey_Jentry@gmail.co','9yahom_6rab',6357,1057321296,'Frey_Jentry');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1285,'Gaige','Froilan','Gaige_Froilan@gmail.','9yahom_6rab',1757,1256406634,'Gaige_Froilan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1286,'Graysyn','Orhan','Graysyn_Orhan@gmail.','9yahom_6rab',2122,1202264180,'Graysyn_Orhan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1287,'Yaqoob','Yaseen','Yaqoob_Yaseen@gmail.','9yahom_6rab',1964,1276393554,'Yaqoob_Yaseen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1288,'Kwan','Markham','Kwan_Markham@gmail.c','9yahom_6rab',9544,1284461625,'Kwan_Markham');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1289,'Slayter','Kamare','Slayter_Kamare@gmail','9yahom_6rab',4662,1514905968,'Slayter_Kamare');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1290,'Azmir','Kaynon','Azmir_Kaynon@gmail.c','9yahom_6rab',7620,1239283384,'Azmir_Kaynon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1291,'Calais','Taavi','Calais_Taavi@gmail.c','9yahom_6rab',6285,1033487418,'Calais_Taavi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1292,'Thaxton','Jobe','Thaxton_Jobe@gmail.c','9yahom_6rab',9998,1103087511,'Thaxton_Jobe');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1293,'Tom','Kyreece','Tom_Kyreece@gmail.co','9yahom_6rab',8649,1540565414,'Tom_Kyreece');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1294,'Wren','Reeves','Wren_Reeves@gmail.co','9yahom_6rab',2926,1171769669,'Wren_Reeves');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1295,'Uraz','Jaccob','Uraz_Jaccob@gmail.co','9yahom_6rab',5680,1003011602,'Uraz_Jaccob');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1296,'Milner','Alcides','Milner_Alcides@gmail','9yahom_6rab',6942,1571786739,'Milner_Alcides');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1297,'Carlito','Chukwuebuka','Carlito_Chukwuebuka@','9yahom_6rab',5823,1091820708,'Carlito_Chukwuebuka');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1298,'Eben','Diangelo','Eben_Diangelo@gmail.','9yahom_6rab',8651,1045779455,'Eben_Diangelo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1299,'Osman','Ubaldo','Osman_Ubaldo@gmail.c','9yahom_6rab',8744,1061162760,'Osman_Ubaldo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1300,'Reymond','Archimedes','Reymond_Archimedes@g','9yahom_6rab',2129,1217780843,'Reymond_Archimedes');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1301,'Kenshin','Isidro','Kenshin_Isidro@gmail','9yahom_6rab',6557,1584473846,'Kenshin_Isidro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1302,'Welles','Tarran','Welles_Tarran@gmail.','9yahom_6rab',7212,1217748407,'Welles_Tarran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1303,'Martinez','Islom','Martinez_Islom@gmail','9yahom_6rab',610,1582927664,'Martinez_Islom');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1304,'Ramsey','Novak','Ramsey_Novak@gmail.c','9yahom_6rab',7383,1549808880,'Ramsey_Novak');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1305,'Tyrrell','Curtis','Tyrrell_Curtis@gmail','9yahom_6rab',3087,1549864648,'Tyrrell_Curtis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1306,'Jamauri','Sabastion','Jamauri_Sabastion@gm','9yahom_6rab',8866,1594395731,'Jamauri_Sabastion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1307,'Yoseph','Tarek','Yoseph_Tarek@gmail.c','9yahom_6rab',8387,1215997383,'Yoseph_Tarek');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1308,'Kalix','Jacobie','Kalix_Jacobie@gmail.','9yahom_6rab',1120,1583297263,'Kalix_Jacobie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1309,'Muzammil','Kendyn','Muzammil_Kendyn@gmai','9yahom_6rab',3517,1224693618,'Muzammil_Kendyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1310,'Aksil','Jsiah','Aksil_Jsiah@gmail.co','9yahom_6rab',4516,1102633442,'Aksil_Jsiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1311,'Castor','Wrangler','Castor_Wrangler@gmai','9yahom_6rab',658,1204939947,'Castor_Wrangler');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1312,'Bryceton','Steffen','Bryceton_Steffen@gma','9yahom_6rab',5667,1289939430,'Bryceton_Steffen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1313,'Aaro','Jephte','Aaro_Jephte@gmail.co','9yahom_6rab',6149,1597325049,'Aaro_Jephte');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1314,'Cavin','Ivann','Cavin_Ivann@gmail.co','9yahom_6rab',3019,1046643874,'Cavin_Ivann');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1315,'Saif','Donald','Saif_Donald@gmail.co','9yahom_6rab',1775,1099296514,'Saif_Donald');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1316,'Jasiel','Dezion','Jasiel_Dezion@gmail.','9yahom_6rab',9205,1227043668,'Jasiel_Dezion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1317,'Semir','Sidiki','Semir_Sidiki@gmail.c','9yahom_6rab',8827,1034049779,'Semir_Sidiki');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1318,'Honor','Myan','Honor_Myan@gmail.com','9yahom_6rab',8479,1053861800,'Honor_Myan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1319,'Jackman','Rawan','Jackman_Rawan@gmail.','9yahom_6rab',3120,1053614811,'Jackman_Rawan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1320,'Davier','Broc','Davier_Broc@gmail.co','9yahom_6rab',1412,1148199556,'Davier_Broc');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1321,'Weldon','Macalister','Weldon_Macalister@gm','9yahom_6rab',1535,1101878913,'Weldon_Macalister');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1322,'Sergi','Coyer','Sergi_Coyer@gmail.co','9yahom_6rab',5914,1117986165,'Sergi_Coyer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1323,'Demontre','Elixander','Demontre_Elixander@g','9yahom_6rab',7802,1523454359,'Demontre_Elixander');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1324,'Iskender','Mahamed','Iskender_Mahamed@gma','9yahom_6rab',6407,1219090695,'Iskender_Mahamed');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1325,'Jonmichael','Usmon','Jonmichael_Usmon@gma','9yahom_6rab',6252,1106981064,'Jonmichael_Usmon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1326,'Ned','Shoaib','Ned_Shoaib@gmail.com','9yahom_6rab',3648,1188158260,'Ned_Shoaib');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1327,'Kenyan','Iann','Kenyan_Iann@gmail.co','9yahom_6rab',2691,1245905662,'Kenyan_Iann');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1328,'Keahilani','Horacio','Keahilani_Horacio@gm','9yahom_6rab',7273,1254505961,'Keahilani_Horacio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1329,'Egypt','Kymere','Egypt_Kymere@gmail.c','9yahom_6rab',4162,1292964275,'Egypt_Kymere');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1330,'Barry','Roran','Barry_Roran@gmail.co','9yahom_6rab',1516,1120939208,'Barry_Roran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1331,'Akin','Gaddiel','Akin_Gaddiel@gmail.c','9yahom_6rab',5453,1121513187,'Akin_Gaddiel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1332,'Akiel','Boyan','Akiel_Boyan@gmail.co','9yahom_6rab',946,1036649132,'Akiel_Boyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1333,'Keilyn','Slayden','Keilyn_Slayden@gmail','9yahom_6rab',4826,1260518425,'Keilyn_Slayden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1334,'Zoravar','Israel','Zoravar_Israel@gmail','9yahom_6rab',5141,1538320923,'Zoravar_Israel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1335,'Maynor','Burhan','Maynor_Burhan@gmail.','9yahom_6rab',3919,1076478102,'Maynor_Burhan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1336,'Oluwatosin','Jazion','Oluwatosin_Jazion@gm','9yahom_6rab',1101,1111439154,'Oluwatosin_Jazion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1337,'Odin','Humza','Odin_Humza@gmail.com','9yahom_6rab',1917,1106560213,'Odin_Humza');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1338,'Marque','Deacan','Marque_Deacan@gmail.','9yahom_6rab',4606,1194139523,'Marque_Deacan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1339,'Rommel','Tajh','Rommel_Tajh@gmail.co','9yahom_6rab',3315,1011230389,'Rommel_Tajh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1340,'Icarus','Promise','Icarus_Promise@gmail','9yahom_6rab',9104,1183185613,'Icarus_Promise');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1341,'Ashaud','Polo','Ashaud_Polo@gmail.co','9yahom_6rab',3033,1299203650,'Ashaud_Polo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1342,'Eadric','Henryk','Eadric_Henryk@gmail.','9yahom_6rab',9267,1211896137,'Eadric_Henryk');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1343,'Kaevion','Axil','Kaevion_Axil@gmail.c','9yahom_6rab',1995,1591504364,'Kaevion_Axil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1344,'Amario','Andi','Amario_Andi@gmail.co','9yahom_6rab',2427,1075304776,'Amario_Andi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1793,'Raygan','Mathieu','Raygan_Mathieu@gmail','9yahom_6rab',4123,1200465622,'Raygan_Mathieu');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1794,'Yordi','Markese','Yordi_Markese@gmail.','9yahom_6rab',2485,1254716433,'Yordi_Markese');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1795,'Benicio','Jsan','Benicio_Jsan@gmail.c','9yahom_6rab',2190,1106166641,'Benicio_Jsan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1796,'Thierno','Helder','Thierno_Helder@gmail','9yahom_6rab',5769,1087037535,'Thierno_Helder');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1797,'Makye','Amrit','Makye_Amrit@gmail.co','9yahom_6rab',4431,1090971641,'Makye_Amrit');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1798,'Chatham','Javin','Chatham_Javin@gmail.','9yahom_6rab',5254,1255537249,'Chatham_Javin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1799,'Brice','Whitley','Brice_Whitley@gmail.','9yahom_6rab',4754,1243405115,'Brice_Whitley');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1800,'Nils','Yeremiah','Nils_Yeremiah@gmail.','9yahom_6rab',1982,1049892596,'Nils_Yeremiah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1801,'Leyden','Andri','Leyden_Andri@gmail.c','9yahom_6rab',1827,1077138711,'Leyden_Andri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1802,'Ebba','Rocco','Ebba_Rocco@gmail.com','9yahom_6rab',4591,1060159145,'Ebba_Rocco');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1803,'Harry','Jontae','Harry_Jontae@gmail.c','9yahom_6rab',5276,1021181405,'Harry_Jontae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1804,'Adiel','Vedan','Adiel_Vedan@gmail.co','9yahom_6rab',9302,1124422274,'Adiel_Vedan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1805,'Kaion','Keisuke','Kaion_Keisuke@gmail.','9yahom_6rab',4284,1087282711,'Kaion_Keisuke');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1806,'Vraj','Humphrey','Vraj_Humphrey@gmail.','9yahom_6rab',7903,1226469297,'Vraj_Humphrey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1807,'Inman','Pharrell','Inman_Pharrell@gmail','9yahom_6rab',5292,1510331518,'Inman_Pharrell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1808,'Theodoro','Kailen','Theodoro_Kailen@gmai','9yahom_6rab',1498,1558904791,'Theodoro_Kailen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1809,'Derian','Bently','Derian_Bently@gmail.','9yahom_6rab',7749,1053053073,'Derian_Bently');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1810,'Kiaan','Leovani','Kiaan_Leovani@gmail.','9yahom_6rab',968,1021833128,'Kiaan_Leovani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1811,'Braxxton','Breylin','Braxxton_Breylin@gma','9yahom_6rab',8874,1559794395,'Braxxton_Breylin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1812,'Diago','Stetsyn','Diago_Stetsyn@gmail.','9yahom_6rab',1956,1268418952,'Diago_Stetsyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1813,'Joesiah','Eyan','Joesiah_Eyan@gmail.c','9yahom_6rab',646,1083974909,'Joesiah_Eyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1814,'Antwone','Kodiak','Antwone_Kodiak@gmail','9yahom_6rab',1220,1297906459,'Antwone_Kodiak');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1815,'Kamerin','Victoria','Kamerin_Victoria@gma','9yahom_6rab',6231,1581413744,'Kamerin_Victoria');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1816,'Calihan','Vladimir','Calihan_Vladimir@gma','9yahom_6rab',6767,1172479066,'Calihan_Vladimir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1817,'Kylor','Audemar','Kylor_Audemar@gmail.','9yahom_6rab',3689,1567698623,'Kylor_Audemar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1818,'Prajwal','Keyren','Prajwal_Keyren@gmail','9yahom_6rab',4878,1567068665,'Prajwal_Keyren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1819,'Garrett','Sriyaan','Garrett_Sriyaan@gmai','9yahom_6rab',4909,1082867673,'Garrett_Sriyaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1820,'Markeith','Jacksyn','Markeith_Jacksyn@gma','9yahom_6rab',5257,1049443391,'Markeith_Jacksyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1821,'Mathayus','Mishael','Mathayus_Mishael@gma','9yahom_6rab',9103,1513860307,'Mathayus_Mishael');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1822,'Ayham','Lou','Ayham_Lou@gmail.com','9yahom_6rab',8794,1289979546,'Ayham_Lou');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1823,'Manny','Wayde','Manny_Wayde@gmail.co','9yahom_6rab',9941,1079972024,'Manny_Wayde');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1824,'Kortez','Cristiano','Kortez_Cristiano@gma','9yahom_6rab',8923,1014632802,'Kortez_Cristiano');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1825,'Francois','Arias','Francois_Arias@gmail','9yahom_6rab',4512,1530899601,'Francois_Arias');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1826,'Albeiro','Jayde','Albeiro_Jayde@gmail.','9yahom_6rab',2482,1501796015,'Albeiro_Jayde');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1827,'Jessey','Jaxsun','Jessey_Jaxsun@gmail.','9yahom_6rab',5061,1215061857,'Jessey_Jaxsun');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1828,'Glen','Aleksandar','Glen_Aleksandar@gmai','9yahom_6rab',6406,1205711399,'Glen_Aleksandar');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1829,'Daylin','Brock','Daylin_Brock@gmail.c','9yahom_6rab',7541,1031915948,'Daylin_Brock');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1830,'Srijan','Mykyng','Srijan_Mykyng@gmail.','9yahom_6rab',7753,1156843836,'Srijan_Mykyng');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1831,'Kohen','Meir','Kohen_Meir@gmail.com','9yahom_6rab',5116,1271709085,'Kohen_Meir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1832,'Bohden','Lacey','Bohden_Lacey@gmail.c','9yahom_6rab',954,1153303949,'Bohden_Lacey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1833,'Kevari','Ridger','Kevari_Ridger@gmail.','9yahom_6rab',1842,1039736633,'Kevari_Ridger');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1834,'Jadarian','Stokely','Jadarian_Stokely@gma','9yahom_6rab',1622,1022766918,'Jadarian_Stokely');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1835,'Johnpaul','Kaiba','Johnpaul_Kaiba@gmail','9yahom_6rab',7435,1580717518,'Johnpaul_Kaiba');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1836,'Sarthak','Tharun','Sarthak_Tharun@gmail','9yahom_6rab',5107,1015833785,'Sarthak_Tharun');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1837,'Kadan','Arlie','Kadan_Arlie@gmail.co','9yahom_6rab',7717,1143546706,'Kadan_Arlie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1838,'Cadyn','Niko','Cadyn_Niko@gmail.com','9yahom_6rab',4433,1079539351,'Cadyn_Niko');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1839,'Anant','Nalej','Anant_Nalej@gmail.co','9yahom_6rab',1097,1084362207,'Anant_Nalej');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1840,'Tymire','Christain','Tymire_Christain@gma','9yahom_6rab',7352,1012392028,'Tymire_Christain');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1841,'Davonte','Eno','Davonte_Eno@gmail.co','9yahom_6rab',9016,1597742599,'Davonte_Eno');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1842,'Price','Aran','Price_Aran@gmail.com','9yahom_6rab',9570,1190228832,'Price_Aran');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1843,'Mateusz','Rumi','Mateusz_Rumi@gmail.c','9yahom_6rab',8318,1270271889,'Mateusz_Rumi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1844,'Cahir','Karmelo','Cahir_Karmelo@gmail.','9yahom_6rab',8384,1569576003,'Cahir_Karmelo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1845,'Jayin','Muaz','Jayin_Muaz@gmail.com','9yahom_6rab',3970,1504104688,'Jayin_Muaz');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1846,'Jaceon','Alhasan','Jaceon_Alhasan@gmail','9yahom_6rab',3786,1020506116,'Jaceon_Alhasan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1847,'Mansour','Jahlani','Mansour_Jahlani@gmai','9yahom_6rab',2258,1071199859,'Mansour_Jahlani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1848,'Ashden','Lander','Ashden_Lander@gmail.','9yahom_6rab',4673,1092683899,'Ashden_Lander');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1849,'Owin','Finnic','Owin_Finnic@gmail.co','9yahom_6rab',4063,1535095320,'Owin_Finnic');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1850,'Dareon','Kandon','Dareon_Kandon@gmail.','9yahom_6rab',7684,1250909242,'Dareon_Kandon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1851,'Avid','Dmoni','Avid_Dmoni@gmail.com','9yahom_6rab',3454,1192743198,'Avid_Dmoni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1852,'Slaton','Derek','Slaton_Derek@gmail.c','9yahom_6rab',6071,1280142359,'Slaton_Derek');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1853,'Draylen','Dantrell','Draylen_Dantrell@gma','9yahom_6rab',2318,1151084948,'Draylen_Dantrell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1854,'Fernando','Aleck','Fernando_Aleck@gmail','9yahom_6rab',4671,1147043980,'Fernando_Aleck');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1855,'Xaine','Rah','Xaine_Rah@gmail.com','9yahom_6rab',4123,1593930061,'Xaine_Rah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1856,'Thien','Darien','Thien_Darien@gmail.c','9yahom_6rab',9521,1122383075,'Thien_Darien');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1857,'Lysander','Khris','Lysander_Khris@gmail','9yahom_6rab',7684,1537118107,'Lysander_Khris');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1858,'Klayton','Mussie','Klayton_Mussie@gmail','9yahom_6rab',3222,1286335821,'Klayton_Mussie');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1859,'Shivam','Kaseem','Shivam_Kaseem@gmail.','9yahom_6rab',1770,1299903109,'Shivam_Kaseem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1860,'Joah','Zionn','Joah_Zionn@gmail.com','9yahom_6rab',8865,1082620023,'Joah_Zionn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1861,'Daedric','Josh','Daedric_Josh@gmail.c','9yahom_6rab',6628,1583345174,'Daedric_Josh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1862,'Sufiyan','Maxfield','Sufiyan_Maxfield@gma','9yahom_6rab',7918,1066587598,'Sufiyan_Maxfield');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1863,'Oxford','Aiham','Oxford_Aiham@gmail.c','9yahom_6rab',6925,1255118344,'Oxford_Aiham');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1864,'Koa','Ayden','Koa_Ayden@gmail.com','9yahom_6rab',6758,1173587799,'Koa_Ayden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1865,'Hasan','Mansa','Hasan_Mansa@gmail.co','9yahom_6rab',3020,1013436332,'Hasan_Mansa');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1866,'Dalen','Bauer','Dalen_Bauer@gmail.co','9yahom_6rab',4406,1159801043,'Dalen_Bauer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1867,'Aydeen','Dayan','Aydeen_Dayan@gmail.c','9yahom_6rab',8855,1527900145,'Aydeen_Dayan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1868,'Ata','Raymon','Ata_Raymon@gmail.com','9yahom_6rab',9521,1037497214,'Ata_Raymon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1869,'Giordano','Yancarlos','Giordano_Yancarlos@g','9yahom_6rab',3504,1502544572,'Giordano_Yancarlos');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1870,'Quron','Farren','Quron_Farren@gmail.c','9yahom_6rab',3514,1180802991,'Quron_Farren');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1871,'Kason','Hendrick','Kason_Hendrick@gmail','9yahom_6rab',9965,1288870055,'Kason_Hendrick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1872,'Jairus','Charly','Jairus_Charly@gmail.','9yahom_6rab',1358,1527226957,'Jairus_Charly');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1873,'Griffith','Florencio','Griffith_Florencio@g','9yahom_6rab',621,1571724808,'Griffith_Florencio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1874,'Charley','Shamari','Charley_Shamari@gmai','9yahom_6rab',7879,1519494371,'Charley_Shamari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1875,'Esteban','Kacper','Esteban_Kacper@gmail','9yahom_6rab',4199,1593527649,'Esteban_Kacper');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1876,'Leven','Asani','Leven_Asani@gmail.co','9yahom_6rab',3462,1025737175,'Leven_Asani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1877,'Sulayman','Ethin','Sulayman_Ethin@gmail','9yahom_6rab',728,1047816150,'Sulayman_Ethin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1878,'Awab','Zechariah','Awab_Zechariah@gmail','9yahom_6rab',718,1576525245,'Awab_Zechariah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1879,'Takeo','Caedyn','Takeo_Caedyn@gmail.c','9yahom_6rab',3285,1032823311,'Takeo_Caedyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1880,'Neyland','Eziyah','Neyland_Eziyah@gmail','9yahom_6rab',761,1127617655,'Neyland_Eziyah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1881,'Dereon','Raad','Dereon_Raad@gmail.co','9yahom_6rab',4296,1267147988,'Dereon_Raad');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1882,'Rosalio','Constantin','Rosalio_Constantin@g','9yahom_6rab',986,1069252175,'Rosalio_Constantin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1883,'Omauri','Fadel','Omauri_Fadel@gmail.c','9yahom_6rab',2338,1575428387,'Omauri_Fadel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1884,'Tymon','Arthur','Tymon_Arthur@gmail.c','9yahom_6rab',5554,1535654105,'Tymon_Arthur');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1885,'Zacariah','Aegis','Zacariah_Aegis@gmail','9yahom_6rab',3854,1107521911,'Zacariah_Aegis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1886,'Amadeus','Aslan','Amadeus_Aslan@gmail.','9yahom_6rab',1465,1091398098,'Amadeus_Aslan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1887,'Turner','Evangelos','Turner_Evangelos@gma','9yahom_6rab',9993,1042351927,'Turner_Evangelos');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1888,'Conor','Knoah','Conor_Knoah@gmail.co','9yahom_6rab',1253,1026045143,'Conor_Knoah');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1889,'Adeeb','Juandedios','Adeeb_Juandedios@gma','9yahom_6rab',3658,1216145619,'Adeeb_Juandedios');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1890,'Casmir','Benjamyn','Casmir_Benjamyn@gmai','9yahom_6rab',1093,1118491909,'Casmir_Benjamyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1891,'Taksh','Sulaiman','Taksh_Sulaiman@gmail','9yahom_6rab',7858,1161545233,'Taksh_Sulaiman');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1892,'Kaceion','Cartyr','Kaceion_Cartyr@gmail','9yahom_6rab',8089,1216889756,'Kaceion_Cartyr');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1893,'Eliahs','Xayn','Eliahs_Xayn@gmail.co','9yahom_6rab',7792,1042474660,'Eliahs_Xayn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1894,'Charlton','Roma','Charlton_Roma@gmail.','9yahom_6rab',3496,1164300749,'Charlton_Roma');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1895,'Italo','Demario','Italo_Demario@gmail.','9yahom_6rab',8019,1124598796,'Italo_Demario');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1896,'Wardell','Brolin','Wardell_Brolin@gmail','9yahom_6rab',4669,1151627753,'Wardell_Brolin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1897,'Sandor','Trillion','Sandor_Trillion@gmai','9yahom_6rab',9515,1185377191,'Sandor_Trillion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1898,'Dean','Yuri','Dean_Yuri@gmail.com','9yahom_6rab',9524,1558840683,'Dean_Yuri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1899,'Graesyn','Guilherme','Graesyn_Guilherme@gm','9yahom_6rab',4435,1261694484,'Graesyn_Guilherme');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1900,'Dravin','Elton','Dravin_Elton@gmail.c','9yahom_6rab',2504,1252337670,'Dravin_Elton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1901,'Mazi','Griff','Mazi_Griff@gmail.com','9yahom_6rab',996,1124570097,'Mazi_Griff');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1902,'Jeovanny','Siddhartha','Jeovanny_Siddhartha@','9yahom_6rab',1297,1015661239,'Jeovanny_Siddhartha');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1903,'Rakeem','Samai','Rakeem_Samai@gmail.c','9yahom_6rab',4286,1237837465,'Rakeem_Samai');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1904,'Yunes','Ray','Yunes_Ray@gmail.com','9yahom_6rab',9456,1213842930,'Yunes_Ray');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1905,'Tuan','Able','Tuan_Able@gmail.com','9yahom_6rab',1224,1098112979,'Tuan_Able');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1906,'Daegan','Lc','Daegan_Lc@gmail.com','9yahom_6rab',1798,1166719785,'Daegan_Lc');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1907,'Zakiah','Travon','Zakiah_Travon@gmail.','9yahom_6rab',5943,1286196941,'Zakiah_Travon');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1908,'Kainalu','Jahaire','Kainalu_Jahaire@gmai','9yahom_6rab',7342,1595864938,'Kainalu_Jahaire');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1909,'Keilian','Maximos','Keilian_Maximos@gmai','9yahom_6rab',5187,1114943475,'Keilian_Maximos');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1910,'Vayden','Seiya','Vayden_Seiya@gmail.c','9yahom_6rab',8507,1055728435,'Vayden_Seiya');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1911,'Priansh','Jiyan','Priansh_Jiyan@gmail.','9yahom_6rab',8653,1519064081,'Priansh_Jiyan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1912,'Ellijah','Hamidou','Ellijah_Hamidou@gmai','9yahom_6rab',9698,1186351985,'Ellijah_Hamidou');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1913,'Daman','Telvin','Daman_Telvin@gmail.c','9yahom_6rab',9632,1229558824,'Daman_Telvin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1914,'Camilo','Imani','Camilo_Imani@gmail.c','9yahom_6rab',6245,1078647865,'Camilo_Imani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1915,'Trea','Nahim','Trea_Nahim@gmail.com','9yahom_6rab',4915,1246549001,'Trea_Nahim');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1916,'Siddharth','Lynken','Siddharth_Lynken@gma','9yahom_6rab',4113,1583304159,'Siddharth_Lynken');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1917,'Kayin','Anselmo','Kayin_Anselmo@gmail.','9yahom_6rab',3887,1159823914,'Kayin_Anselmo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1918,'Kyden','Kawika','Kyden_Kawika@gmail.c','9yahom_6rab',1323,1020768061,'Kyden_Kawika');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1919,'Omid','Eymen','Omid_Eymen@gmail.com','9yahom_6rab',6548,1091173042,'Omid_Eymen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1920,'Chanse','Hamze','Chanse_Hamze@gmail.c','9yahom_6rab',7881,1027925204,'Chanse_Hamze');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1921,'Marsden','Mumin','Marsden_Mumin@gmail.','9yahom_6rab',5291,1233899029,'Marsden_Mumin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1922,'Rahul','Brayven','Rahul_Brayven@gmail.','9yahom_6rab',9327,1241288508,'Rahul_Brayven');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1923,'Rawley','Myloh','Rawley_Myloh@gmail.c','9yahom_6rab',2885,1018910622,'Rawley_Myloh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1924,'Dheeran','Dcari','Dheeran_Dcari@gmail.','9yahom_6rab',9766,1571835694,'Dheeran_Dcari');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1925,'Cjay','Thailand','Cjay_Thailand@gmail.','9yahom_6rab',2679,1215878164,'Cjay_Thailand');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1926,'Maccabee','Rohit','Maccabee_Rohit@gmail','9yahom_6rab',1504,1199304406,'Maccabee_Rohit');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1927,'Emmerich','Willow','Emmerich_Willow@gmai','9yahom_6rab',2665,1079554428,'Emmerich_Willow');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1928,'Breydon','Talen','Breydon_Talen@gmail.','9yahom_6rab',4983,1288232596,'Breydon_Talen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1929,'Damian','Seleem','Damian_Seleem@gmail.','9yahom_6rab',2234,1043087853,'Damian_Seleem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1930,'Maclane','Elrey','Maclane_Elrey@gmail.','9yahom_6rab',3168,1110330858,'Maclane_Elrey');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1931,'Bren','Praise','Bren_Praise@gmail.co','9yahom_6rab',2406,1269824889,'Bren_Praise');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1932,'Iremide','Trice','Iremide_Trice@gmail.','9yahom_6rab',6329,1595058093,'Iremide_Trice');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1933,'Gianluigi','Harshil','Gianluigi_Harshil@gm','9yahom_6rab',7466,1124504612,'Gianluigi_Harshil');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1934,'Davis','Jantzen','Davis_Jantzen@gmail.','9yahom_6rab',8972,1039729346,'Davis_Jantzen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1935,'Ariyon','Dominick','Ariyon_Dominick@gmai','9yahom_6rab',6527,1205998103,'Ariyon_Dominick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1936,'Yacob','Akif','Yacob_Akif@gmail.com','9yahom_6rab',4106,1578956291,'Yacob_Akif');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1937,'Junpei','Lancer','Junpei_Lancer@gmail.','9yahom_6rab',3833,1046314534,'Junpei_Lancer');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1938,'Kingzley','Larkin','Kingzley_Larkin@gmai','9yahom_6rab',4627,1168209106,'Kingzley_Larkin');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1939,'Sunil','Gauge','Sunil_Gauge@gmail.co','9yahom_6rab',9982,1537440631,'Sunil_Gauge');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1940,'Ames','Siaire','Ames_Siaire@gmail.co','9yahom_6rab',5893,1017502198,'Ames_Siaire');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1941,'Brandt','Estefan','Brandt_Estefan@gmail','9yahom_6rab',6070,1251507440,'Brandt_Estefan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1942,'Constantine','Suhaas','Constantine_Suhaas@g','9yahom_6rab',5425,1589473065,'Constantine_Suhaas');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1943,'Adoree','Maceo','Adoree_Maceo@gmail.c','9yahom_6rab',7349,1207000868,'Adoree_Maceo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1944,'Huckston','Stark','Huckston_Stark@gmail','9yahom_6rab',4603,1114914564,'Huckston_Stark');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1945,'Brayan','Samrath','Brayan_Samrath@gmail','9yahom_6rab',3988,1172690614,'Brayan_Samrath');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1946,'Edriel','Sascha','Edriel_Sascha@gmail.','9yahom_6rab',5535,1506181011,'Edriel_Sascha');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1947,'Alphonso','Toure','Alphonso_Toure@gmail','9yahom_6rab',7229,1164160328,'Alphonso_Toure');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1948,'Pinches','Arien','Pinches_Arien@gmail.','9yahom_6rab',1104,1150062220,'Pinches_Arien');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1949,'Zak','Julez','Zak_Julez@gmail.com','9yahom_6rab',2844,1014953078,'Zak_Julez');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1950,'Nijah','Calan','Nijah_Calan@gmail.co','9yahom_6rab',5355,1111439564,'Nijah_Calan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1951,'Mahir','Priyansh','Mahir_Priyansh@gmail','9yahom_6rab',7482,1096736894,'Mahir_Priyansh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1952,'Osher','Saharsh','Osher_Saharsh@gmail.','9yahom_6rab',3472,1263793581,'Osher_Saharsh');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1953,'Mahari','Chipper','Mahari_Chipper@gmail','9yahom_6rab',9275,1146736761,'Mahari_Chipper');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1954,'Rob','Brooke','Rob_Brooke@gmail.com','9yahom_6rab',3929,1076638142,'Rob_Brooke');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1955,'Sabir','Bonifacio','Sabir_Bonifacio@gmai','9yahom_6rab',3294,1016262049,'Sabir_Bonifacio');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1956,'Jaeveon','Jion','Jaeveon_Jion@gmail.c','9yahom_6rab',8303,1555864158,'Jaeveon_Jion');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1957,'Rhys','Calder','Rhys_Calder@gmail.co','9yahom_6rab',5658,1297846497,'Rhys_Calder');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1958,'Evyn','Jeovani','Evyn_Jeovani@gmail.c','9yahom_6rab',5591,1587863052,'Evyn_Jeovani');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1959,'Dayo','Feras','Dayo_Feras@gmail.com','9yahom_6rab',7593,1263526485,'Dayo_Feras');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1960,'Kurrency','Autry','Kurrency_Autry@gmail','9yahom_6rab',4415,1251344056,'Kurrency_Autry');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1961,'Cavalli','Kordel','Cavalli_Kordel@gmail','9yahom_6rab',7364,1092226474,'Cavalli_Kordel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1962,'Mendy','Hayaan','Mendy_Hayaan@gmail.c','9yahom_6rab',4533,1532790910,'Mendy_Hayaan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1963,'Ruby','Oaklyn','Ruby_Oaklyn@gmail.co','9yahom_6rab',4049,1229341189,'Ruby_Oaklyn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1964,'Kysen','Coby','Kysen_Coby@gmail.com','9yahom_6rab',3437,1260334552,'Kysen_Coby');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1965,'Yadier','Donaldo','Yadier_Donaldo@gmail','9yahom_6rab',6461,1258741339,'Yadier_Donaldo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1966,'Val','Jamall','Val_Jamall@gmail.com','9yahom_6rab',9068,1559191219,'Val_Jamall');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1967,'Bretton','Tyric','Bretton_Tyric@gmail.','9yahom_6rab',5288,1569083501,'Bretton_Tyric');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1968,'Brannen','Amarri','Brannen_Amarri@gmail','9yahom_6rab',8761,1528164665,'Brannen_Amarri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1969,'Josniel','Demanuel','Josniel_Demanuel@gma','9yahom_6rab',9968,1265337686,'Josniel_Demanuel');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1970,'Amaziah','Drayton','Amaziah_Drayton@gmai','9yahom_6rab',7852,1156980527,'Amaziah_Drayton');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1971,'Stevon','Keyden','Stevon_Keyden@gmail.','9yahom_6rab',4983,1079481917,'Stevon_Keyden');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1972,'Kiser','Kahlo','Kiser_Kahlo@gmail.co','9yahom_6rab',3102,1267201974,'Kiser_Kahlo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1973,'Ellis','Nylen','Ellis_Nylen@gmail.co','9yahom_6rab',9029,1252607013,'Ellis_Nylen');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1974,'Rendon','Aydien','Rendon_Aydien@gmail.','9yahom_6rab',9530,1053395027,'Rendon_Aydien');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1975,'Derwin','Tysir','Derwin_Tysir@gmail.c','9yahom_6rab',1911,1193216161,'Derwin_Tysir');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1976,'Fenn','Diontae','Fenn_Diontae@gmail.c','9yahom_6rab',6040,1145006176,'Fenn_Diontae');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1977,'Erfan','Kavi','Erfan_Kavi@gmail.com','9yahom_6rab',9711,1251203615,'Erfan_Kavi');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1978,'Zohaib','Pavan','Zohaib_Pavan@gmail.c','9yahom_6rab',6692,1184504542,'Zohaib_Pavan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1979,'Jylan','Shahab','Jylan_Shahab@gmail.c','9yahom_6rab',546,1084928975,'Jylan_Shahab');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1980,'Dmitry','Takoda','Dmitry_Takoda@gmail.','9yahom_6rab',720,1239861038,'Dmitry_Takoda');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1981,'Bay','Safan','Bay_Safan@gmail.com','9yahom_6rab',8102,1033513250,'Bay_Safan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1982,'Mishaun','Mayhem','Mishaun_Mayhem@gmail','9yahom_6rab',4493,1074453570,'Mishaun_Mayhem');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1983,'Navarre','Keithan','Navarre_Keithan@gmai','9yahom_6rab',9348,1064318208,'Navarre_Keithan');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1984,'Elon','Gautham','Elon_Gautham@gmail.c','9yahom_6rab',4970,1033154530,'Elon_Gautham');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1985,'Fred','Beauregard','Fred_Beauregard@gmai','9yahom_6rab',4932,1053434908,'Fred_Beauregard');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1986,'Rico','Hollis','Rico_Hollis@gmail.co','9yahom_6rab',6210,1281160028,'Rico_Hollis');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1987,'Volvy','Jyri','Volvy_Jyri@gmail.com','9yahom_6rab',1223,1173419898,'Volvy_Jyri');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1988,'Nixson','Tavior','Nixson_Tavior@gmail.','9yahom_6rab',9848,1165483002,'Nixson_Tavior');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1989,'Kort','Jalynn','Kort_Jalynn@gmail.co','9yahom_6rab',5656,1501601374,'Kort_Jalynn');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1990,'Chaseton','Jowell','Chaseton_Jowell@gmai','9yahom_6rab',2472,1227408655,'Chaseton_Jowell');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1991,'Kyroh','Bayron','Kyroh_Bayron@gmail.c','9yahom_6rab',1042,1535566973,'Kyroh_Bayron');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1992,'Brixxton','Doniyor','Brixxton_Doniyor@gma','9yahom_6rab',1228,1085960716,'Brixxton_Doniyor');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1993,'Seneca','Majour','Seneca_Majour@gmail.','9yahom_6rab',5725,1121499066,'Seneca_Majour');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1994,'Davon','Jeicob','Davon_Jeicob@gmail.c','9yahom_6rab',2364,1217245401,'Davon_Jeicob');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1995,'Rayaan','Ramsses','Rayaan_Ramsses@gmail','9yahom_6rab',9376,1291901413,'Rayaan_Ramsses');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1996,'Rhydian','Javanni','Rhydian_Javanni@gmai','9yahom_6rab',9468,1258788198,'Rhydian_Javanni');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1997,'Tryce','Astro','Tryce_Astro@gmail.co','9yahom_6rab',3321,1050270082,'Tryce_Astro');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1998,'Ethiel','Marlo','Ethiel_Marlo@gmail.c','9yahom_6rab',2336,1005862996,'Ethiel_Marlo');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1999,'Lucien','Endrick','Lucien_Endrick@gmail','9yahom_6rab',4306,1060720846,'Lucien_Endrick');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2000,'Skender','Adedamola','Skender_Adedamola@gm','9yahom_6rab',6352,1574325992,'Skender_Adedamola');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2001,'Brixon','Brigg','Brixon_Brigg@gmail.c','9yahom_6rab',4546,1218914126,'Brixon_Brigg');
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2002,'Yousaf','Jaan','Yousaf_Jaan@gmail.co','9yahom_6rab',9043,1119557899,'Yousaf_Jaan');

---------------------------------------------------
--   END DATA FOR TABLE INSTRUCTOR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE RENTALS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RENTALS

---------------------------------------------------
--   END DATA FOR TABLE RENTALS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SALGRADE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SALGRADE
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (1,700,1200);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (2,1201,1400);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (3,1401,2000);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (4,2001,3000);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (5,3001,9999);

---------------------------------------------------
--   END DATA FOR TABLE SALGRADE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE STUDENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into STUDENT
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (122,'Jaquan','Barnard','Jaquan_Barnard@gmail.com','0000',493,1031140436,'Jaquan_Barnard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (123,'Jeffery','Efrem','Jeffery_Efrem@gmail.com','0000',771,1080438827,'Jeffery_Efrem');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (124,'Marcelo','Ron','Marcelo_Ron@gmail.com','0000',461,1032730073,'Marcelo_Ron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (125,'Caroline','Alden','Caroline_Alden@gmail.com','0000',3,1001957600,'Caroline_Alden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (126,'Melbourne','Merton','Melbourne_Merton@gmail.com','0000',965,1019935604,'Melbourne_Merton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (127,'Dalton','Haywood','Dalton_Haywood@gmail.com','0000',211,1018652372,'Dalton_Haywood');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (128,'Rhoda','Lyndon','Rhoda_Lyndon@gmail.com','0000',391,1034931845,'Rhoda_Lyndon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (129,'Helmer','Orion','Helmer_Orion@gmail.com','0000',919,1029182877,'Helmer_Orion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (130,'Kelby','Lee','Kelby_Lee@gmail.com','0000',911,1096255249,'Kelby_Lee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (131,'Silvio','Ivy','Silvio_Ivy@gmail.com','0000',166,1092160260,'Silvio_Ivy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (132,'Neely','Burrell','Neely_Burrell@gmail.com','0000',576,1078879779,'Neely_Burrell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (133,'Jarrell','Elvis','Jarrell_Elvis@gmail.com','0000',37,1009755789,'Jarrell_Elvis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (134,'Burnell','Sing','Burnell_Sing@gmail.com','0000',4,1067771922,'Burnell_Sing');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (135,'Haven','Ora','Haven_Ora@gmail.com','0000',237,1036361132,'Haven_Ora');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (136,'Maynard','Ridge','Maynard_Ridge@gmail.com','0000',400,1081470825,'Maynard_Ridge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (137,'Zeno','Jalon','Zeno_Jalon@gmail.com','0000',856,1008267533,'Zeno_Jalon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (138,'Steve','Jaron','Steve_Jaron@gmail.com','0000',766,1023628726,'Steve_Jaron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (139,'Coleman','Romello','Coleman_Romello@gmail.com','0000',865,1080800003,'Coleman_Romello');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (140,'Romeo','Heriberto','Romeo_Heriberto@gmail.com','0000',871,1037639553,'Romeo_Heriberto');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (141,'Menachem','Uriel','Menachem_Uriel@gmail.com','0000',781,1053330666,'Menachem_Uriel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (142,'Reese','Jim','Reese_Jim@gmail.com','0000',602,1088021090,'Reese_Jim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (143,'Karim','Ty','Karim_Ty@gmail.com','0000',651,1010942117,'Karim_Ty');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (144,'Elbridge','Deon','Elbridge_Deon@gmail.com','0000',247,1096450441,'Elbridge_Deon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (145,'Ward','Dave','Ward_Dave@gmail.com','0000',541,1071791144,'Ward_Dave');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (146,'Zachery','Jewel','Zachery_Jewel@gmail.com','0000',438,1044384054,'Zachery_Jewel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (147,'Randall','Brendon','Randall_Brendon@gmail.com','0000',153,1020005427,'Randall_Brendon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (148,'Cruz','Ted','Cruz_Ted@gmail.com','0000',434,1041938492,'Cruz_Ted');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (149,'Jaheem','Jovan','Jaheem_Jovan@gmail.com','0000',153,1073103114,'Jaheem_Jovan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (150,'Brenton','Gustavus','Brenton_Gustavus@gmail.com','0000',594,1057711163,'Brenton_Gustavus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (151,'Ogden','Drury','Ogden_Drury@gmail.com','0000',385,1051380910,'Ogden_Drury');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (152,'Lindbergh','Elisha','Lindbergh_Elisha@gmail.com','0000',117,1084913111,'Lindbergh_Elisha');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (153,'Gray','Gaston','Gray_Gaston@gmail.com','0000',701,1046064526,'Gray_Gaston');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (154,'Arbie','Brennon','Arbie_Brennon@gmail.com','0000',334,1019438390,'Arbie_Brennon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (155,'Patrick','Angela','Patrick_Angela@gmail.com','0000',115,1047057310,'Patrick_Angela');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (156,'Bertie','Colbert','Bertie_Colbert@gmail.com','0000',773,1004805787,'Bertie_Colbert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (157,'Louis','Benjamine','Louis_Benjamine@gmail.com','0000',867,1014859680,'Louis_Benjamine');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (158,'Tyrique','Alijah','Tyrique_Alijah@gmail.com','0000',341,1030554394,'Tyrique_Alijah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (159,'Fed','Ewell','Fed_Ewell@gmail.com','0000',383,1054886976,'Fed_Ewell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (160,'Kalen','Richmond','Kalen_Richmond@gmail.com','0000',586,1096691281,'Kalen_Richmond');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (161,'Darryle','Jadon','Darryle_Jadon@gmail.com','0000',500,1048436370,'Darryle_Jadon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (162,'Bayard','Francis','Bayard_Francis@gmail.com','0000',724,1088214992,'Bayard_Francis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (163,'Egbert','Wash','Egbert_Wash@gmail.com','0000',842,1030603339,'Egbert_Wash');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (164,'Laurence','Lenard','Laurence_Lenard@gmail.com','0000',496,1018947757,'Laurence_Lenard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (165,'Casimiro','Branson','Casimiro_Branson@gmail.com','0000',749,1049443455,'Casimiro_Branson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (166,'Carol','Gavyn','Carol_Gavyn@gmail.com','0000',223,1060111100,'Carol_Gavyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (167,'Mont','Loney','Mont_Loney@gmail.com','0000',110,1025302690,'Mont_Loney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (168,'Olaf','Lavar','Olaf_Lavar@gmail.com','0000',299,1031355879,'Olaf_Lavar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (169,'Vincent','Hugo','Vincent_Hugo@gmail.com','0000',430,1052719729,'Vincent_Hugo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (170,'Tammy','Vincenzo','Tammy_Vincenzo@gmail.com','0000',31,1077762372,'Tammy_Vincenzo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (171,'Finnegan','Carlos','Finnegan_Carlos@gmail.com','0000',576,1043767175,'Finnegan_Carlos');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (172,'Darry','Arthor','Darry_Arthor@gmail.com','0000',246,1043684349,'Darry_Arthor');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (173,'Mikhail','Orrie','Mikhail_Orrie@gmail.com','0000',655,1017170409,'Mikhail_Orrie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (174,'Caiden','Merrill','Caiden_Merrill@gmail.com','0000',532,1074958328,'Caiden_Merrill');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (175,'Sheridan','Jamir','Sheridan_Jamir@gmail.com','0000',390,1014918906,'Sheridan_Jamir');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (176,'Pat','Gauge','Pat_Gauge@gmail.com','0000',291,1027290184,'Pat_Gauge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (177,'Braydon','Michale','Braydon_Michale@gmail.com','0000',785,1046449080,'Braydon_Michale');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (178,'Tre','Sterling','Tre_Sterling@gmail.com','0000',763,1096746680,'Tre_Sterling');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (179,'Bart','York','Bart_York@gmail.com','0000',507,1024058551,'Bart_York');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (180,'Johnny','Steward','Johnny_Steward@gmail.com','0000',427,1055817377,'Johnny_Steward');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (181,'Lue','Delmar','Lue_Delmar@gmail.com','0000',707,1054360786,'Lue_Delmar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (182,'Farris','Gee','Farris_Gee@gmail.com','0000',439,1008199096,'Farris_Gee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (183,'Jules','Noah','Jules_Noah@gmail.com','0000',977,1032937797,'Jules_Noah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (184,'Jiles','Ozzie','Jiles_Ozzie@gmail.com','0000',561,1022409555,'Jiles_Ozzie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (185,'Wilhelm','Rolla','Wilhelm_Rolla@gmail.com','0000',740,1030797706,'Wilhelm_Rolla');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (186,'Council','Delton','Council_Delton@gmail.com','0000',980,1069921108,'Council_Delton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (187,'Gannon','Creed','Gannon_Creed@gmail.com','0000',3,1076728210,'Gannon_Creed');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (188,'Brandyn','Rome','Brandyn_Rome@gmail.com','0000',478,1022304734,'Brandyn_Rome');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (189,'Ali','Delphin','Ali_Delphin@gmail.com','0000',404,1058483582,'Ali_Delphin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (190,'Conrad','Leon','Conrad_Leon@gmail.com','0000',630,1073661076,'Conrad_Leon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (191,'Alta','Gus','Alta_Gus@gmail.com','0000',611,1088962160,'Alta_Gus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (192,'Henery','Amerigo','Henery_Amerigo@gmail.com','0000',376,1044550462,'Henery_Amerigo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (193,'Roy','Chadrick','Roy_Chadrick@gmail.com','0000',79,1046252841,'Roy_Chadrick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (194,'Thurston','Jaheim','Thurston_Jaheim@gmail.com','0000',625,1043932483,'Thurston_Jaheim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (195,'Nikhil','Seldon','Nikhil_Seldon@gmail.com','0000',624,1076933836,'Nikhil_Seldon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (196,'Joeseph','Alfonse','Joeseph_Alfonse@gmail.com','0000',945,1014505168,'Joeseph_Alfonse');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (197,'Jerrel','Alfie','Jerrel_Alfie@gmail.com','0000',629,1073640917,'Jerrel_Alfie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (198,'Hernan','Sandra','Hernan_Sandra@gmail.com','0000',850,1075444687,'Hernan_Sandra');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (199,'Javon','Milas','Javon_Milas@gmail.com','0000',751,1070666670,'Javon_Milas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (200,'Laurel','Darren','Laurel_Darren@gmail.com','0000',82,1085073870,'Laurel_Darren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (201,'Tyrek','Josef','Tyrek_Josef@gmail.com','0000',953,1057197559,'Tyrek_Josef');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (202,'Mannie','Everet','Mannie_Everet@gmail.com','0000',52,1021902268,'Mannie_Everet');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (203,'Zachariah','Eduardo','Zachariah_Eduardo@gmail.com','0000',307,1075548109,'Zachariah_Eduardo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (204,'Judy','Alex','Judy_Alex@gmail.com','0000',541,1056542074,'Judy_Alex');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (205,'Alexander','Shade','Alexander_Shade@gmail.com','0000',512,1037726090,'Alexander_Shade');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (206,'Marshall','Quinton','Marshall_Quinton@gmail.com','0000',80,1080166719,'Marshall_Quinton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (207,'Harrie','Abdullah','Harrie_Abdullah@gmail.com','0000',784,1039974540,'Harrie_Abdullah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (208,'Yee','Jamel','Yee_Jamel@gmail.com','0000',352,1008576481,'Yee_Jamel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (209,'Luc','Rafe','Luc_Rafe@gmail.com','0000',918,1058783709,'Luc_Rafe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (210,'Demond','Ozell','Demond_Ozell@gmail.com','0000',328,1031122911,'Demond_Ozell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (211,'Lucien','Demonte','Lucien_Demonte@gmail.com','0000',596,1086048996,'Lucien_Demonte');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (212,'Alan','Essie','Alan_Essie@gmail.com','0000',108,1032020728,'Alan_Essie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (213,'Grover','Marcellus','Grover_Marcellus@gmail.com','0000',561,1065537324,'Grover_Marcellus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (214,'Allison','Tristin','Allison_Tristin@gmail.com','0000',429,1064369230,'Allison_Tristin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (215,'Elmer','Nehemiah','Elmer_Nehemiah@gmail.com','0000',169,1029468011,'Elmer_Nehemiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (216,'Orvel','Jimmie','Orvel_Jimmie@gmail.com','0000',687,1037496964,'Orvel_Jimmie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (217,'Russell','Canyon','Russell_Canyon@gmail.com','0000',71,1059500856,'Russell_Canyon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (22,'ff','ff','ff','ff',55,123456789,'ff');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (3,'Omar','Shreet','omar.btw@hotnailc,om','123',198,101029327,'OmarShreet');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (0,'Omar','Monem','whatever','123',400,1010,'omr2000');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2,'Hassan','Hassan','whateverlol','123',2000,1928,'Omar2000');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (218,'Callum','Ruffin','Callum_Ruffin@gmail.com','0000',689,1075370846,'Callum_Ruffin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (219,'Cleveland','Tiffany','Cleveland_Tiffany@gmail.com','0000',701,1082178481,'Cleveland_Tiffany');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (220,'Carmen','Earley','Carmen_Earley@gmail.com','0000',601,1019627351,'Carmen_Earley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (221,'Wallace','Tyriq','Wallace_Tyriq@gmail.com','0000',102,1088300880,'Wallace_Tyriq');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (222,'Jaxson','Lamont','Jaxson_Lamont@gmail.com','0000',258,1030141661,'Jaxson_Lamont');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (223,'Florence','Federico','Florence_Federico@gmail.com','0000',357,1079873636,'Florence_Federico');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (224,'Todd','Hank','Todd_Hank@gmail.com','0000',878,1098831741,'Todd_Hank');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (225,'Rocky','Bradley','Rocky_Bradley@gmail.com','0000',324,1011921057,'Rocky_Bradley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (226,'Darion','Don','Darion_Don@gmail.com','0000',580,1090298205,'Darion_Don');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (227,'Zaire','Mitchel','Zaire_Mitchel@gmail.com','0000',139,1096027640,'Zaire_Mitchel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (228,'Volney','Cheyenne','Volney_Cheyenne@gmail.com','0000',589,1020444120,'Volney_Cheyenne');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (229,'Jared','Olof','Jared_Olof@gmail.com','0000',270,1012197165,'Jared_Olof');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (230,'Lenord','Calvin','Lenord_Calvin@gmail.com','0000',228,1044948026,'Lenord_Calvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (231,'Arvel','Tracy','Arvel_Tracy@gmail.com','0000',456,1019195861,'Arvel_Tracy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (232,'Lorenzo','Erich','Lorenzo_Erich@gmail.com','0000',256,1003379435,'Lorenzo_Erich');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (233,'Gayle','Geo','Gayle_Geo@gmail.com','0000',732,1089558181,'Gayle_Geo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (234,'Son','Tate','Son_Tate@gmail.com','0000',735,1019715338,'Son_Tate');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (235,'Gay','Caden','Gay_Caden@gmail.com','0000',435,1078131222,'Gay_Caden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (236,'Micheal','Aleck','Micheal_Aleck@gmail.com','0000',185,1088891993,'Micheal_Aleck');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (237,'Edwardo','Diamond','Edwardo_Diamond@gmail.com','0000',74,1013354194,'Edwardo_Diamond');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (238,'Paulo','Benton','Paulo_Benton@gmail.com','0000',594,1031096873,'Paulo_Benton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (239,'Male','Jayden','Male_Jayden@gmail.com','0000',966,1016320366,'Male_Jayden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (240,'Koen','Adrien','Koen_Adrien@gmail.com','0000',55,1012332312,'Koen_Adrien');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (241,'Rey','Deacon','Rey_Deacon@gmail.com','0000',499,1091633124,'Rey_Deacon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (242,'Alois','Lemuel','Alois_Lemuel@gmail.com','0000',651,1080278376,'Alois_Lemuel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (243,'Emanuel','Ian','Emanuel_Ian@gmail.com','0000',533,1033192494,'Emanuel_Ian');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (244,'Brantley','Camren','Brantley_Camren@gmail.com','0000',547,1049307157,'Brantley_Camren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (245,'Le','Tobe','Le_Tobe@gmail.com','0000',910,1064939568,'Le_Tobe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (246,'Whit','Burk','Whit_Burk@gmail.com','0000',445,1040727972,'Whit_Burk');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (247,'Donovan','Gustavo','Donovan_Gustavo@gmail.com','0000',895,1011679718,'Donovan_Gustavo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (248,'Jacob','Michial','Jacob_Michial@gmail.com','0000',556,1066372158,'Jacob_Michial');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (249,'Ryley','Fayette','Ryley_Fayette@gmail.com','0000',370,1083582756,'Ryley_Fayette');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (250,'Floy','Kellen','Floy_Kellen@gmail.com','0000',508,1033038992,'Floy_Kellen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (251,'Sherwin','Jaylin','Sherwin_Jaylin@gmail.com','0000',277,1078293942,'Sherwin_Jaylin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (252,'Collier','Talen','Collier_Talen@gmail.com','0000',527,1030246965,'Collier_Talen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (253,'Burney','Dane','Burney_Dane@gmail.com','0000',625,1019671325,'Burney_Dane');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (254,'Anastacio','Holland','Anastacio_Holland@gmail.com','0000',498,1029112564,'Anastacio_Holland');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (255,'Reino','Vander','Reino_Vander@gmail.com','0000',700,1083592019,'Reino_Vander');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (256,'Regis','Anibal','Regis_Anibal@gmail.com','0000',477,1019115880,'Regis_Anibal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (257,'Elick','Elizabeth','Elick_Elizabeth@gmail.com','0000',959,1002796741,'Elick_Elizabeth');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (258,'Matthias','Rose','Matthias_Rose@gmail.com','0000',122,1030384596,'Matthias_Rose');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (259,'Pearlie','Guadalupe','Pearlie_Guadalupe@gmail.com','0000',411,1044491778,'Pearlie_Guadalupe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (260,'Linzy','Jadiel','Linzy_Jadiel@gmail.com','0000',634,1036630472,'Linzy_Jadiel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (261,'Cash','Trent','Cash_Trent@gmail.com','0000',39,1030157911,'Cash_Trent');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (262,'Fabian','Alba','Fabian_Alba@gmail.com','0000',731,1067958599,'Fabian_Alba');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (263,'Terence','Marlon','Terence_Marlon@gmail.com','0000',239,1017385966,'Terence_Marlon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (264,'Esco','Tyler','Esco_Tyler@gmail.com','0000',131,1010706845,'Esco_Tyler');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (265,'Zain','Michel','Zain_Michel@gmail.com','0000',994,1050843814,'Zain_Michel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (266,'Ellery','Zayden','Ellery_Zayden@gmail.com','0000',184,1037736891,'Ellery_Zayden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (267,'Curt','Cephus','Curt_Cephus@gmail.com','0000',668,1063104239,'Curt_Cephus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (268,'Clemens','Palmer','Clemens_Palmer@gmail.com','0000',202,1031941527,'Clemens_Palmer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (269,'Selmer','Stan','Selmer_Stan@gmail.com','0000',799,1018897498,'Selmer_Stan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (270,'Tyrik','Ladarius','Tyrik_Ladarius@gmail.com','0000',110,1098942963,'Tyrik_Ladarius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (271,'Toivo','Green','Toivo_Green@gmail.com','0000',975,1085719259,'Toivo_Green');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (272,'Talan','Christoper','Talan_Christoper@gmail.com','0000',488,1076691412,'Talan_Christoper');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (273,'Davonta','Rosendo','Davonta_Rosendo@gmail.com','0000',617,1042382741,'Davonta_Rosendo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (274,'Burrel','Albion','Burrel_Albion@gmail.com','0000',67,1034961874,'Burrel_Albion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (275,'Wilfrid','Ronnie','Wilfrid_Ronnie@gmail.com','0000',912,1068210758,'Wilfrid_Ronnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (276,'Virge','Hosea','Virge_Hosea@gmail.com','0000',717,1009917045,'Virge_Hosea');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (277,'Isai','Marlyn','Isai_Marlyn@gmail.com','0000',226,1049149103,'Isai_Marlyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (278,'Arlyn','Jonas','Arlyn_Jonas@gmail.com','0000',992,1066533993,'Arlyn_Jonas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (279,'Eliezer','Darrius','Eliezer_Darrius@gmail.com','0000',885,1030043602,'Eliezer_Darrius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (280,'Davon','Gilberto','Davon_Gilberto@gmail.com','0000',386,1034936611,'Davon_Gilberto');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (281,'Doll','Marlin','Doll_Marlin@gmail.com','0000',563,1089778006,'Doll_Marlin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (282,'Geno','Coolidge','Geno_Coolidge@gmail.com','0000',31,1022168488,'Geno_Coolidge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (283,'Cam','Cloyd','Cam_Cloyd@gmail.com','0000',104,1053856128,'Cam_Cloyd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (284,'Sylvanus','Archie','Sylvanus_Archie@gmail.com','0000',138,1096717216,'Sylvanus_Archie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (285,'Kenney','Mae','Kenney_Mae@gmail.com','0000',951,1041065086,'Kenney_Mae');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (286,'Okey','Mitch','Okey_Mitch@gmail.com','0000',48,1078252003,'Okey_Mitch');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (287,'Hassan','Theodore','Hassan_Theodore@gmail.com','0000',220,1053291144,'Hassan_Theodore');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (288,'Crystal','Macarthur','Crystal_Macarthur@gmail.com','0000',109,1099111292,'Crystal_Macarthur');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (289,'Barbara','Otha','Barbara_Otha@gmail.com','0000',412,1062642619,'Barbara_Otha');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (290,'Barton','Ann','Barton_Ann@gmail.com','0000',701,1017592364,'Barton_Ann');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (291,'Alferd','Loren','Alferd_Loren@gmail.com','0000',66,1008477188,'Alferd_Loren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (292,'Darron','Boris','Darron_Boris@gmail.com','0000',78,1090148317,'Darron_Boris');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (293,'Darell','Celestino','Darell_Celestino@gmail.com','0000',540,1021974360,'Darell_Celestino');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (294,'Burnie','Cedric','Burnie_Cedric@gmail.com','0000',89,1068676418,'Burnie_Cedric');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (295,'Add','Gertrude','Add_Gertrude@gmail.com','0000',191,1062918300,'Add_Gertrude');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (296,'Carmelo','Elvin','Carmelo_Elvin@gmail.com','0000',899,1024778437,'Carmelo_Elvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (297,'Guy','Lum','Guy_Lum@gmail.com','0000',942,1009885797,'Guy_Lum');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (298,'Parker','Del','Parker_Del@gmail.com','0000',860,1003793194,'Parker_Del');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (299,'Lorin','Joy','Lorin_Joy@gmail.com','0000',565,1064245935,'Lorin_Joy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (300,'Wirt','Izaiah','Wirt_Izaiah@gmail.com','0000',394,1058228086,'Wirt_Izaiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (301,'Blane','Moody','Blane_Moody@gmail.com','0000',15,1054114012,'Blane_Moody');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (302,'Codie','Wendel','Codie_Wendel@gmail.com','0000',829,1018217570,'Codie_Wendel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (303,'Jelani','Ronan','Jelani_Ronan@gmail.com','0000',693,1012073903,'Jelani_Ronan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (304,'Duwayne','Lon','Duwayne_Lon@gmail.com','0000',740,1027742098,'Duwayne_Lon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (305,'Maude','Wesley','Maude_Wesley@gmail.com','0000',455,1072400409,'Maude_Wesley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (306,'Mitchell','Harley','Mitchell_Harley@gmail.com','0000',107,1051382133,'Mitchell_Harley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (307,'Ralph','Amon','Ralph_Amon@gmail.com','0000',337,1046471591,'Ralph_Amon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (308,'Osborne','Tyrese','Osborne_Tyrese@gmail.com','0000',290,1032341052,'Osborne_Tyrese');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (309,'Broderick','Ocie','Broderick_Ocie@gmail.com','0000',902,1005563170,'Broderick_Ocie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (310,'Howell','Isaiah','Howell_Isaiah@gmail.com','0000',200,1077725887,'Howell_Isaiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (311,'Simmie','Arthur','Simmie_Arthur@gmail.com','0000',359,1019962173,'Simmie_Arthur');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (408,'Giovani','Jacques','Giovani_Jacques@gmail.com','0000',937,1072476701,'Giovani_Jacques');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (409,'Love','Johnpaul','Love_Johnpaul@gmail.com','0000',646,1005481919,'Love_Johnpaul');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (410,'Jerrell','Garnett','Jerrell_Garnett@gmail.com','0000',339,1078629905,'Jerrell_Garnett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (411,'Emmett','Rebecca','Emmett_Rebecca@gmail.com','0000',681,1087142334,'Emmett_Rebecca');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (412,'Alver','Rohan','Alver_Rohan@gmail.com','0000',626,1033890033,'Alver_Rohan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (413,'Riley','Durwood','Riley_Durwood@gmail.com','0000',951,1063806763,'Riley_Durwood');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (414,'Esequiel','Tolbert','Esequiel_Tolbert@gmail.com','0000',575,1095777378,'Esequiel_Tolbert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (415,'Leopold','Cleave','Leopold_Cleave@gmail.com','0000',317,1066042824,'Leopold_Cleave');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (416,'Brannon','Huey','Brannon_Huey@gmail.com','0000',639,1002819211,'Brannon_Huey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (417,'Kadin','Hermann','Kadin_Hermann@gmail.com','0000',541,1087930351,'Kadin_Hermann');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (418,'Rigoberto','Burl','Rigoberto_Burl@gmail.com','0000',698,1099067370,'Rigoberto_Burl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (419,'Dock','Layton','Dock_Layton@gmail.com','0000',56,1080956026,'Dock_Layton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (420,'Diane','Joan','Diane_Joan@gmail.com','0000',12,1092081661,'Diane_Joan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (421,'Stanton','Judd','Stanton_Judd@gmail.com','0000',211,1012692061,'Stanton_Judd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (422,'Young','Yoel','Young_Yoel@gmail.com','0000',102,1097179192,'Young_Yoel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (423,'Mauro','Moe','Mauro_Moe@gmail.com','0000',283,1067239653,'Mauro_Moe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (424,'Jaiden','Dessie','Jaiden_Dessie@gmail.com','0000',588,1098956500,'Jaiden_Dessie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (425,'Otho','Brandt','Otho_Brandt@gmail.com','0000',826,1077828522,'Otho_Brandt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (426,'Griffith','Delma','Griffith_Delma@gmail.com','0000',7,1001998166,'Griffith_Delma');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (427,'Emile','Alanzo','Emile_Alanzo@gmail.com','0000',436,1080405862,'Emile_Alanzo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (428,'Hakeem','Kendrick','Hakeem_Kendrick@gmail.com','0000',256,1021694406,'Hakeem_Kendrick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (429,'Moshe','Isaias','Moshe_Isaias@gmail.com','0000',898,1004431356,'Moshe_Isaias');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (430,'Murdock','Kalvin','Murdock_Kalvin@gmail.com','0000',725,1082289892,'Murdock_Kalvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (431,'Vic','Rice','Vic_Rice@gmail.com','0000',339,1064202359,'Vic_Rice');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (432,'Leland','Kelsey','Leland_Kelsey@gmail.com','0000',131,1051082036,'Leland_Kelsey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (433,'Donaciano','Arvin','Donaciano_Arvin@gmail.com','0000',520,1059571984,'Donaciano_Arvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (434,'Gabriel','Leamon','Gabriel_Leamon@gmail.com','0000',492,1027430374,'Gabriel_Leamon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (435,'Waino','Jamey','Waino_Jamey@gmail.com','0000',658,1062251084,'Waino_Jamey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (436,'Nevin','Aurthur','Nevin_Aurthur@gmail.com','0000',212,1003862466,'Nevin_Aurthur');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (437,'Woodson','Beulah','Woodson_Beulah@gmail.com','0000',929,1051925107,'Woodson_Beulah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (438,'Gerard','Benito','Gerard_Benito@gmail.com','0000',693,1084918863,'Gerard_Benito');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (439,'Monte','Lacey','Monte_Lacey@gmail.com','0000',135,1083501995,'Monte_Lacey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (440,'Demario','Georgie','Demario_Georgie@gmail.com','0000',768,1092705991,'Demario_Georgie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (441,'Beecher','Vinton','Beecher_Vinton@gmail.com','0000',585,1000932051,'Beecher_Vinton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (442,'Dwight','Urijah','Dwight_Urijah@gmail.com','0000',126,1094427498,'Dwight_Urijah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (443,'Aldo','Isiah','Aldo_Isiah@gmail.com','0000',368,1082813914,'Aldo_Isiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (444,'Kale','Bennett','Kale_Bennett@gmail.com','0000',955,1094779001,'Kale_Bennett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (445,'Jaden','Ira','Jaden_Ira@gmail.com','0000',54,1034661758,'Jaden_Ira');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (446,'Art','Pearl','Art_Pearl@gmail.com','0000',352,1095930501,'Art_Pearl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (447,'Andrea','Deane','Andrea_Deane@gmail.com','0000',157,1023678315,'Andrea_Deane');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (448,'Wally','Cooper','Wally_Cooper@gmail.com','0000',216,1056311075,'Wally_Cooper');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (449,'Lowell','Cain','Lowell_Cain@gmail.com','0000',380,1034563309,'Lowell_Cain');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (450,'Benji','Gaetano','Benji_Gaetano@gmail.com','0000',728,1025148337,'Benji_Gaetano');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (451,'Jahir','Jade','Jahir_Jade@gmail.com','0000',323,1024758802,'Jahir_Jade');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (452,'Jalen','Stafford','Jalen_Stafford@gmail.com','0000',946,1079542147,'Jalen_Stafford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (453,'Erby','Aaron','Erby_Aaron@gmail.com','0000',327,1081635501,'Erby_Aaron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (454,'Jabez','Oneal','Jabez_Oneal@gmail.com','0000',199,1076057286,'Jabez_Oneal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (455,'Robt','Gustaf','Robt_Gustaf@gmail.com','0000',8,1039978397,'Robt_Gustaf');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (456,'Kaden','Morton','Kaden_Morton@gmail.com','0000',726,1075185808,'Kaden_Morton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (457,'Fredy','Susie','Fredy_Susie@gmail.com','0000',955,1079380748,'Fredy_Susie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (458,'Ethel','Matias','Ethel_Matias@gmail.com','0000',349,1024156499,'Ethel_Matias');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (459,'Derek','Lane','Derek_Lane@gmail.com','0000',685,1084458897,'Derek_Lane');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (460,'Ronald','Rossie','Ronald_Rossie@gmail.com','0000',182,1085535744,'Ronald_Rossie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (461,'Myer','Beckett','Myer_Beckett@gmail.com','0000',276,1062035273,'Myer_Beckett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (462,'Hall','Fern','Hall_Fern@gmail.com','0000',678,1027513568,'Hall_Fern');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (463,'Charlton','Fremont','Charlton_Fremont@gmail.com','0000',413,1020704995,'Charlton_Fremont');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (464,'Cade','Wilfred','Cade_Wilfred@gmail.com','0000',904,1058984595,'Cade_Wilfred');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (465,'Saint','Lindy','Saint_Lindy@gmail.com','0000',386,1072306419,'Saint_Lindy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (466,'Jaylon','Jovanny','Jaylon_Jovanny@gmail.com','0000',433,1036412294,'Jaylon_Jovanny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (467,'Justyn','Hughes','Justyn_Hughes@gmail.com','0000',349,1012885648,'Justyn_Hughes');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (468,'Calhoun','Drake','Calhoun_Drake@gmail.com','0000',876,1013268928,'Calhoun_Drake');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (469,'Yaakov','Bishop','Yaakov_Bishop@gmail.com','0000',636,1032822315,'Yaakov_Bishop');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (470,'Watt','Landin','Watt_Landin@gmail.com','0000',325,1099581788,'Watt_Landin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (471,'Winthrop','Laurance','Winthrop_Laurance@gmail.com','0000',36,1009831769,'Winthrop_Laurance');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (472,'Abner','Marquis','Abner_Marquis@gmail.com','0000',629,1075054092,'Abner_Marquis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (473,'Grove','Bonnie','Grove_Bonnie@gmail.com','0000',359,1034734987,'Grove_Bonnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (474,'Reyes','Markell','Reyes_Markell@gmail.com','0000',170,1038919745,'Reyes_Markell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (475,'Pleasant','Hasan','Pleasant_Hasan@gmail.com','0000',141,1006326556,'Pleasant_Hasan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (476,'Eli','Myron','Eli_Myron@gmail.com','0000',171,1002777241,'Eli_Myron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (477,'Layne','Landon','Layne_Landon@gmail.com','0000',196,1010484062,'Layne_Landon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (478,'Finis','Buell','Finis_Buell@gmail.com','0000',969,1056222225,'Finis_Buell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (479,'Coby','Devyn','Coby_Devyn@gmail.com','0000',111,1021364545,'Coby_Devyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (480,'Leopoldo','Nikko','Leopoldo_Nikko@gmail.com','0000',454,1075523128,'Leopoldo_Nikko');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (481,'Farrell','Kaiden','Farrell_Kaiden@gmail.com','0000',797,1027665316,'Farrell_Kaiden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (482,'Jessie','Firman','Jessie_Firman@gmail.com','0000',279,1059236572,'Jessie_Firman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (483,'Bjorn','Melville','Bjorn_Melville@gmail.com','0000',998,1014164975,'Bjorn_Melville');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (484,'Price','Nickolas','Price_Nickolas@gmail.com','0000',883,1010147069,'Price_Nickolas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (485,'Delbert','Acey','Delbert_Acey@gmail.com','0000',264,1014113503,'Delbert_Acey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (486,'Beckham','Jewell','Beckham_Jewell@gmail.com','0000',634,1086562691,'Beckham_Jewell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (487,'Arno','Tyrone','Arno_Tyrone@gmail.com','0000',768,1010299861,'Arno_Tyrone');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (488,'Jerel','Brayden','Jerel_Brayden@gmail.com','0000',925,1054649398,'Jerel_Brayden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (489,'Florian','Enrique','Florian_Enrique@gmail.com','0000',132,1072203439,'Florian_Enrique');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (490,'Kash','Glen','Kash_Glen@gmail.com','0000',794,1083848056,'Kash_Glen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (491,'Ayden','Everette','Ayden_Everette@gmail.com','0000',814,1021912715,'Ayden_Everette');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (492,'Bowman','Rory','Bowman_Rory@gmail.com','0000',675,1052025711,'Bowman_Rory');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (493,'Wylie','Antione','Wylie_Antione@gmail.com','0000',965,1052917720,'Wylie_Antione');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (494,'Shanon','Minor','Shanon_Minor@gmail.com','0000',726,1017171525,'Shanon_Minor');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (495,'Bell','Lawrance','Bell_Lawrance@gmail.com','0000',235,1082621580,'Bell_Lawrance');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (496,'Jarod','Alvah','Jarod_Alvah@gmail.com','0000',661,1073761142,'Jarod_Alvah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (497,'Mason','Rodrigo','Mason_Rodrigo@gmail.com','0000',161,1094698629,'Mason_Rodrigo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (498,'Rolf','Koda','Rolf_Koda@gmail.com','0000',450,1004415153,'Rolf_Koda');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (499,'Bilal','Fisher','Bilal_Fisher@gmail.com','0000',189,1037817035,'Bilal_Fisher');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (500,'Hal','Omari','Hal_Omari@gmail.com','0000',658,1001695311,'Hal_Omari');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (501,'Izayah','Ah','Izayah_Ah@gmail.com','0000',360,1036755268,'Izayah_Ah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (502,'Kirby','Nolen','Kirby_Nolen@gmail.com','0000',701,1090873600,'Kirby_Nolen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (503,'Timmothy','Louie','Timmothy_Louie@gmail.com','0000',413,1091741208,'Timmothy_Louie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (504,'Arlin','Stanislaus','Arlin_Stanislaus@gmail.com','0000',91,1027700954,'Arlin_Stanislaus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (312,'Mykel','Hilliard','Mykel_Hilliard@gmail.com','0000',182,1086826380,'Mykel_Hilliard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (313,'Rustin','Jeramie','Rustin_Jeramie@gmail.com','0000',189,1097356438,'Rustin_Jeramie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (314,'Fredie','Rogelio','Fredie_Rogelio@gmail.com','0000',36,1027209455,'Fredie_Rogelio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (315,'Kerwin','Frankie','Kerwin_Frankie@gmail.com','0000',579,1003039435,'Kerwin_Frankie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (316,'Esker','Kenyon','Esker_Kenyon@gmail.com','0000',656,1033904959,'Esker_Kenyon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (317,'Walton','Skyler','Walton_Skyler@gmail.com','0000',721,1062304672,'Walton_Skyler');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (318,'Skip','Lindsey','Skip_Lindsey@gmail.com','0000',232,1005298525,'Skip_Lindsey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (319,'James','Duard','James_Duard@gmail.com','0000',432,1034503685,'James_Duard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (320,'Tavon','Shelton','Tavon_Shelton@gmail.com','0000',371,1058408667,'Tavon_Shelton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (321,'Zavier','Pinkney','Zavier_Pinkney@gmail.com','0000',922,1058399874,'Zavier_Pinkney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (322,'Jagger','Ibrahim','Jagger_Ibrahim@gmail.com','0000',852,1034046036,'Jagger_Ibrahim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (323,'Edwin','Brooks','Edwin_Brooks@gmail.com','0000',520,1022149967,'Edwin_Brooks');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (324,'Dayne','Marilyn','Dayne_Marilyn@gmail.com','0000',386,1010417180,'Dayne_Marilyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (325,'Jayson','Jaime','Jayson_Jaime@gmail.com','0000',246,1012983980,'Jayson_Jaime');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (326,'Cassius','Elihu','Cassius_Elihu@gmail.com','0000',189,1052879849,'Cassius_Elihu');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (327,'Dennis','Kasey','Dennis_Kasey@gmail.com','0000',633,1061372491,'Dennis_Kasey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (328,'Kent','Aubrey','Kent_Aubrey@gmail.com','0000',44,1096370131,'Kent_Aubrey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (329,'Hoy','Lynwood','Hoy_Lynwood@gmail.com','0000',881,1058749287,'Hoy_Lynwood');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (330,'Giles','Rex','Giles_Rex@gmail.com','0000',90,1098713241,'Giles_Rex');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (331,'Elden','Audley','Elden_Audley@gmail.com','0000',880,1096977823,'Elden_Audley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (332,'Oswaldo','Aditya','Oswaldo_Aditya@gmail.com','0000',270,1038246480,'Oswaldo_Aditya');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (333,'Charly','Bernhard','Charly_Bernhard@gmail.com','0000',395,1035261147,'Charly_Bernhard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (334,'Augustus','Quinn','Augustus_Quinn@gmail.com','0000',641,1003445010,'Augustus_Quinn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (335,'Eliseo','Wilfredo','Eliseo_Wilfredo@gmail.com','0000',234,1075065224,'Eliseo_Wilfredo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (336,'Danny','Evelyn','Danny_Evelyn@gmail.com','0000',882,1028703271,'Danny_Evelyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (337,'Sanford','Chancy','Sanford_Chancy@gmail.com','0000',395,1021976286,'Sanford_Chancy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (338,'Dusty','Kasen','Dusty_Kasen@gmail.com','0000',959,1003929893,'Dusty_Kasen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (339,'Benedict','Kole','Benedict_Kole@gmail.com','0000',191,1017137070,'Benedict_Kole');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (340,'Connor','Hazel','Connor_Hazel@gmail.com','0000',911,1011796812,'Connor_Hazel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (341,'Graydon','Jered','Graydon_Jered@gmail.com','0000',434,1061611025,'Graydon_Jered');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (342,'Callie','Vick','Callie_Vick@gmail.com','0000',360,1056500839,'Callie_Vick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (343,'Ismael','Algie','Ismael_Algie@gmail.com','0000',256,1070612530,'Ismael_Algie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (344,'Braylen','Omar','Braylen_Omar@gmail.com','0000',454,1076769205,'Braylen_Omar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (345,'Ferman','Desmond','Ferman_Desmond@gmail.com','0000',940,1082684790,'Ferman_Desmond');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (346,'Renaldo','Torrey','Renaldo_Torrey@gmail.com','0000',416,1014011340,'Renaldo_Torrey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (347,'Vernell','Ignatius','Vernell_Ignatius@gmail.com','0000',402,1062352570,'Vernell_Ignatius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (348,'Bose','Leigh','Bose_Leigh@gmail.com','0000',32,1084763367,'Bose_Leigh');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (349,'Pamela','Zakary','Pamela_Zakary@gmail.com','0000',842,1058444070,'Pamela_Zakary');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (350,'Bronson','Archer','Bronson_Archer@gmail.com','0000',757,1008950502,'Bronson_Archer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (351,'Loring','Pauline','Loring_Pauline@gmail.com','0000',311,1062441320,'Loring_Pauline');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (352,'Horton','Armand','Horton_Armand@gmail.com','0000',885,1023860666,'Horton_Armand');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (353,'Alfredo','Ras','Alfredo_Ras@gmail.com','0000',659,1058377433,'Alfredo_Ras');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (354,'Darby','Maxim','Darby_Maxim@gmail.com','0000',489,1097874494,'Darby_Maxim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (355,'Ada','Jordyn','Ada_Jordyn@gmail.com','0000',413,1065694266,'Ada_Jordyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (356,'Truman','Dedric','Truman_Dedric@gmail.com','0000',332,1009179537,'Truman_Dedric');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (357,'Henry','Alto','Henry_Alto@gmail.com','0000',51,1086549808,'Henry_Alto');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (358,'Tremaine','Acie','Tremaine_Acie@gmail.com','0000',84,1018955673,'Tremaine_Acie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (359,'Tyron','Cael','Tyron_Cael@gmail.com','0000',125,1094378706,'Tyron_Cael');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (360,'Infant','Zebulon','Infant_Zebulon@gmail.com','0000',852,1079098808,'Infant_Zebulon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (361,'Carmel','Quentin','Carmel_Quentin@gmail.com','0000',989,1053873444,'Carmel_Quentin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (362,'Dominique','Delwin','Dominique_Delwin@gmail.com','0000',855,1011945804,'Dominique_Delwin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (363,'Gaylon','Durell','Gaylon_Durell@gmail.com','0000',725,1082046281,'Gaylon_Durell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (364,'Trey','Byrd','Trey_Byrd@gmail.com','0000',864,1066545036,'Trey_Byrd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (365,'Emil','Olan','Emil_Olan@gmail.com','0000',581,1024559196,'Emil_Olan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (366,'Murphy','Laura','Murphy_Laura@gmail.com','0000',140,1032233705,'Murphy_Laura');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (367,'Jeremy','Trenten','Jeremy_Trenten@gmail.com','0000',421,1045862901,'Jeremy_Trenten');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (368,'Bo','Margaret','Bo_Margaret@gmail.com','0000',114,1083002914,'Bo_Margaret');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (369,'Zollie','Devan','Zollie_Devan@gmail.com','0000',929,1099207008,'Zollie_Devan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (370,'Boss','Ella','Boss_Ella@gmail.com','0000',643,1097842726,'Boss_Ella');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (371,'Amasa','Anderson','Amasa_Anderson@gmail.com','0000',759,1080638270,'Amasa_Anderson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (372,'Bill','Dann','Bill_Dann@gmail.com','0000',7,1036068663,'Bill_Dann');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (373,'Spenser','Noe','Spenser_Noe@gmail.com','0000',977,1098458869,'Spenser_Noe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (374,'Willaim','Edd','Willaim_Edd@gmail.com','0000',990,1048354456,'Willaim_Edd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (375,'Andres','Miller','Andres_Miller@gmail.com','0000',932,1048600953,'Andres_Miller');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (376,'Lark','Winfred','Lark_Winfred@gmail.com','0000',173,1080630904,'Lark_Winfred');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (377,'Cedrick','Fay','Cedrick_Fay@gmail.com','0000',321,1007657305,'Cedrick_Fay');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (378,'Lillian','Hillery','Lillian_Hillery@gmail.com','0000',840,1022796241,'Lillian_Hillery');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (379,'Bret','Kadyn','Bret_Kadyn@gmail.com','0000',785,1048293328,'Bret_Kadyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (380,'Genie','Lauren','Genie_Lauren@gmail.com','0000',59,1001294050,'Genie_Lauren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (381,'Cristian','Chris','Cristian_Chris@gmail.com','0000',635,1081450237,'Cristian_Chris');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (382,'Nash','Che','Nash_Che@gmail.com','0000',280,1030314550,'Nash_Che');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (383,'Gaines','Hartwell','Gaines_Hartwell@gmail.com','0000',515,1032777998,'Gaines_Hartwell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (384,'Mahlon','Gideon','Mahlon_Gideon@gmail.com','0000',466,1012147761,'Mahlon_Gideon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (385,'Asa','Jarred','Asa_Jarred@gmail.com','0000',321,1055970531,'Asa_Jarred');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (386,'Myles','William','Myles_William@gmail.com','0000',305,1061856446,'Myles_William');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (387,'Forest','Deonta','Forest_Deonta@gmail.com','0000',219,1015964522,'Forest_Deonta');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (388,'Erling','Leeroy','Erling_Leeroy@gmail.com','0000',109,1097506906,'Erling_Leeroy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (389,'Ernie','Carrol','Ernie_Carrol@gmail.com','0000',849,1028381166,'Ernie_Carrol');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (390,'Cornel','Encarnacion','Cornel_Encarnacion@gmail.com','0000',932,1011325979,'Cornel_Encarnacion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (391,'Salvatore','Dimitri','Salvatore_Dimitri@gmail.com','0000',456,1095187882,'Salvatore_Dimitri');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (392,'Berlin','Mathias','Berlin_Mathias@gmail.com','0000',744,1015184769,'Berlin_Mathias');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (393,'Gil','Hymen','Gil_Hymen@gmail.com','0000',673,1059230774,'Gil_Hymen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (394,'Daniel','Makhi','Daniel_Makhi@gmail.com','0000',974,1074552628,'Daniel_Makhi');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (395,'Gunner','Thelma','Gunner_Thelma@gmail.com','0000',111,1059839503,'Gunner_Thelma');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (396,'Andon','Abram','Andon_Abram@gmail.com','0000',175,1010097571,'Andon_Abram');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (397,'Ellwood','Dean','Ellwood_Dean@gmail.com','0000',316,1079344491,'Ellwood_Dean');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (398,'Mack','Florentino','Mack_Florentino@gmail.com','0000',963,1081575790,'Mack_Florentino');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (399,'Grant','Shepherd','Grant_Shepherd@gmail.com','0000',816,1083500450,'Grant_Shepherd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (400,'Augusta','Harrold','Augusta_Harrold@gmail.com','0000',894,1068904186,'Augusta_Harrold');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (401,'Rush','Vere','Rush_Vere@gmail.com','0000',785,1021317599,'Rush_Vere');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (402,'Chester','Zane','Chester_Zane@gmail.com','0000',962,1088313874,'Chester_Zane');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (403,'Earl','Kem','Earl_Kem@gmail.com','0000',513,1072378269,'Earl_Kem');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (404,'Kazuo','Holden','Kazuo_Holden@gmail.com','0000',187,1080319891,'Kazuo_Holden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (405,'Parrish','Ancel','Parrish_Ancel@gmail.com','0000',966,1024480712,'Parrish_Ancel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (406,'Alonza','Gregory','Alonza_Gregory@gmail.com','0000',405,1079925289,'Alonza_Gregory');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (407,'Augustine','Illya','Augustine_Illya@gmail.com','0000',384,1077891036,'Augustine_Illya');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (23,'Jeffry','Raquan','Jeffry_Raquan@gmail.com','0000',391,1037872427,'Jeffry_Raquan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (24,'Domenic','Lashawn','Domenic_Lashawn@gmail.com','0000',995,1012683752,'Domenic_Lashawn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (25,'Raul','Della','Raul_Della@gmail.com','0000',677,1063855892,'Raul_Della');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (26,'Ephriam','Rakeem','Ephriam_Rakeem@gmail.com','0000',461,1018618407,'Ephriam_Rakeem');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (27,'Tom','Hadley','Tom_Hadley@gmail.com','0000',356,1081731710,'Tom_Hadley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (28,'Lorenza','Donny','Lorenza_Donny@gmail.com','0000',636,1053481660,'Lorenza_Donny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (29,'Marsh','Hardin','Marsh_Hardin@gmail.com','0000',33,1095059724,'Marsh_Hardin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (30,'Babyboy','Armani','Babyboy_Armani@gmail.com','0000',426,1089599850,'Babyboy_Armani');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (31,'Ace','Pernell','Ace_Pernell@gmail.com','0000',244,1027429283,'Ace_Pernell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (32,'Harland','Kyan','Harland_Kyan@gmail.com','0000',515,1017784719,'Harland_Kyan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (33,'Loyal','Rudolph','Loyal_Rudolph@gmail.com','0000',354,1096587985,'Loyal_Rudolph');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (34,'Ryker','Dario','Ryker_Dario@gmail.com','0000',952,1053859098,'Ryker_Dario');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (35,'Golden','Roma','Golden_Roma@gmail.com','0000',129,1082337576,'Golden_Roma');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (36,'Alberto','Rayford','Alberto_Rayford@gmail.com','0000',964,1094946871,'Alberto_Rayford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (37,'Budd','Thornton','Budd_Thornton@gmail.com','0000',530,1097068997,'Budd_Thornton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (38,'Presley','August','Presley_August@gmail.com','0000',973,1007657157,'Presley_August');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (39,'Kory','Aloys','Kory_Aloys@gmail.com','0000',566,1037730453,'Kory_Aloys');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (40,'Eric','Heber','Eric_Heber@gmail.com','0000',488,1039417585,'Eric_Heber');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (41,'Cas','Elizah','Cas_Elizah@gmail.com','0000',934,1071668137,'Cas_Elizah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (42,'Tayler','Darl','Tayler_Darl@gmail.com','0000',472,1089065792,'Tayler_Darl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (43,'Lloyd','Sie','Lloyd_Sie@gmail.com','0000',748,1000712549,'Lloyd_Sie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (44,'Zayne','Trenton','Zayne_Trenton@gmail.com','0000',60,1028538758,'Zayne_Trenton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (45,'Mercer','Britton','Mercer_Britton@gmail.com','0000',668,1025416600,'Mercer_Britton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (46,'Fleet','Estell','Fleet_Estell@gmail.com','0000',540,1024739163,'Fleet_Estell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (47,'Jax','Kegan','Jax_Kegan@gmail.com','0000',569,1000140235,'Jax_Kegan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (48,'Lizzie','Dominick','Lizzie_Dominick@gmail.com','0000',691,1097428775,'Lizzie_Dominick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (49,'Kahlil','Patric','Kahlil_Patric@gmail.com','0000',916,1090337192,'Kahlil_Patric');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (50,'Damian','Jay','Damian_Jay@gmail.com','0000',110,1064223395,'Damian_Jay');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (51,'Wiley','Landen','Wiley_Landen@gmail.com','0000',79,1009074186,'Wiley_Landen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (52,'Jasen','Isaac','Jasen_Isaac@gmail.com','0000',653,1058626659,'Jasen_Isaac');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (53,'Alpha','Lennon','Alpha_Lennon@gmail.com','0000',292,1071182683,'Alpha_Lennon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (54,'Roger','Dorsey','Roger_Dorsey@gmail.com','0000',952,1087944131,'Roger_Dorsey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (55,'Darrion','Isidor','Darrion_Isidor@gmail.com','0000',787,1088563672,'Darrion_Isidor');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (56,'Marcus','Deven','Marcus_Deven@gmail.com','0000',645,1031837842,'Marcus_Deven');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (57,'Gregg','Draven','Gregg_Draven@gmail.com','0000',689,1045848669,'Gregg_Draven');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (58,'Rodger','Bernard','Rodger_Bernard@gmail.com','0000',473,1012986316,'Rodger_Bernard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (59,'Melvin','Glenwood','Melvin_Glenwood@gmail.com','0000',56,1077902358,'Melvin_Glenwood');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (60,'Clarnce','Saul','Clarnce_Saul@gmail.com','0000',268,1093418545,'Clarnce_Saul');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (61,'Yael','Linton','Yael_Linton@gmail.com','0000',0,1011504114,'Yael_Linton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (62,'Jess','Tye','Jess_Tye@gmail.com','0000',232,1043718838,'Jess_Tye');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (63,'Lukas','Dewayne','Lukas_Dewayne@gmail.com','0000',64,1040934324,'Lukas_Dewayne');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (64,'Orland','Jodie','Orland_Jodie@gmail.com','0000',222,1012951697,'Orland_Jodie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (65,'Tylor','Odell','Tylor_Odell@gmail.com','0000',510,1068252339,'Tylor_Odell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (66,'Reynold','Hart','Reynold_Hart@gmail.com','0000',706,1029538515,'Reynold_Hart');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (67,'Allen','Camille','Allen_Camille@gmail.com','0000',861,1005693462,'Allen_Camille');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (68,'Essex','Orson','Essex_Orson@gmail.com','0000',655,1056665469,'Essex_Orson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (69,'Dax','Troy','Dax_Troy@gmail.com','0000',110,1070274446,'Dax_Troy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (70,'Deshaun','Brandan','Deshaun_Brandan@gmail.com','0000',523,1013484578,'Deshaun_Brandan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (71,'Yurem','Powell','Yurem_Powell@gmail.com','0000',472,1064885887,'Yurem_Powell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (72,'Orie','Horace','Orie_Horace@gmail.com','0000',146,1083526217,'Orie_Horace');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (73,'Marius','Vester','Marius_Vester@gmail.com','0000',448,1014053662,'Marius_Vester');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (74,'Kadeem','Clifton','Kadeem_Clifton@gmail.com','0000',481,1023276007,'Kadeem_Clifton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (75,'Nicole','Greggory','Nicole_Greggory@gmail.com','0000',90,1090887961,'Nicole_Greggory');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (76,'Hunt','Alwin','Hunt_Alwin@gmail.com','0000',996,1011677176,'Hunt_Alwin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (77,'Jacquez','Landan','Jacquez_Landan@gmail.com','0000',694,1057895756,'Jacquez_Landan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (78,'Joel','Acy','Joel_Acy@gmail.com','0000',200,1060617467,'Joel_Acy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (79,'Rosario','Nigel','Rosario_Nigel@gmail.com','0000',252,1089485495,'Rosario_Nigel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (80,'Ed','Alvie','Ed_Alvie@gmail.com','0000',199,1088815637,'Ed_Alvie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (81,'Khalil','Darius','Khalil_Darius@gmail.com','0000',504,1095989078,'Khalil_Darius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (82,'Eston','Tad','Eston_Tad@gmail.com','0000',17,1052524151,'Eston_Tad');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (83,'Ignacio','Almond','Ignacio_Almond@gmail.com','0000',718,1008570733,'Ignacio_Almond');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (84,'Wayne','Pete','Wayne_Pete@gmail.com','0000',9,1053204027,'Wayne_Pete');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (85,'Julian','Duff','Julian_Duff@gmail.com','0000',577,1042458082,'Julian_Duff');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (86,'Leander','Krish','Leander_Krish@gmail.com','0000',454,1018053949,'Leander_Krish');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (87,'May','Winford','May_Winford@gmail.com','0000',296,1041725896,'May_Winford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (88,'Mose','Mildred','Mose_Mildred@gmail.com','0000',504,1094276721,'Mose_Mildred');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (89,'Gordon','Burke','Gordon_Burke@gmail.com','0000',976,1056742657,'Gordon_Burke');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (90,'Lavern','Lucy','Lavern_Lucy@gmail.com','0000',96,1037293779,'Lavern_Lucy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (91,'Dyllan','Codey','Dyllan_Codey@gmail.com','0000',512,1050536685,'Dyllan_Codey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (92,'Curley','Hilary','Curley_Hilary@gmail.com','0000',882,1010888417,'Curley_Hilary');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (93,'Evert','Lucius','Evert_Lucius@gmail.com','0000',737,1016124418,'Evert_Lucius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (94,'Irven','Reno','Irven_Reno@gmail.com','0000',933,1073973268,'Irven_Reno');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (95,'Julia','Brayan','Julia_Brayan@gmail.com','0000',221,1014878551,'Julia_Brayan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (96,'Arlan','Philip','Arlan_Philip@gmail.com','0000',611,1024784129,'Arlan_Philip');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (97,'Carnell','Octave','Carnell_Octave@gmail.com','0000',844,1013626312,'Carnell_Octave');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (98,'Peyton','Gorge','Peyton_Gorge@gmail.com','0000',479,1012202322,'Peyton_Gorge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (99,'Hollis','Bradly','Hollis_Bradly@gmail.com','0000',159,1073752609,'Hollis_Bradly');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (100,'Jaymes','Clive','Jaymes_Clive@gmail.com','0000',639,1028606728,'Jaymes_Clive');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (101,'Thaddeus','Cornelius','Thaddeus_Cornelius@gmail.com','0000',811,1077985272,'Thaddeus_Cornelius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (102,'Woodie','Storm','Woodie_Storm@gmail.com','0000',69,1027445619,'Woodie_Storm');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (103,'Elva','Erle','Elva_Erle@gmail.com','0000',339,1004361273,'Elva_Erle');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (104,'Kian','Vergil','Kian_Vergil@gmail.com','0000',207,1097076032,'Kian_Vergil');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (105,'Raheem','Emmit','Raheem_Emmit@gmail.com','0000',550,1012584863,'Raheem_Emmit');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (106,'Elzie','Nikolas','Elzie_Nikolas@gmail.com','0000',908,1018011727,'Elzie_Nikolas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (107,'Reubin','Kieth','Reubin_Kieth@gmail.com','0000',346,1043064067,'Reubin_Kieth');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (108,'Dakoda','Shirley','Dakoda_Shirley@gmail.com','0000',909,1030096876,'Dakoda_Shirley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (109,'Laron','Michal','Laron_Michal@gmail.com','0000',674,1045118813,'Laron_Michal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (110,'Ross','Fount','Ross_Fount@gmail.com','0000',856,1095149952,'Ross_Fount');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (111,'Darrien','Hillard','Darrien_Hillard@gmail.com','0000',93,1040765445,'Darrien_Hillard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (112,'Mackenzie','Brennen','Mackenzie_Brennen@gmail.com','0000',891,1082470950,'Mackenzie_Brennen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (113,'Emmet','Raiden','Emmet_Raiden@gmail.com','0000',954,1077122101,'Emmet_Raiden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (114,'Nathanial','Lex','Nathanial_Lex@gmail.com','0000',531,1045337667,'Nathanial_Lex');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (115,'Rufus','Rodrick','Rufus_Rodrick@gmail.com','0000',880,1088893298,'Rufus_Rodrick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (116,'Kyson','Tomie','Kyson_Tomie@gmail.com','0000',589,1059573608,'Kyson_Tomie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (117,'Keaton','Lambert','Keaton_Lambert@gmail.com','0000',782,1037331498,'Keaton_Lambert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (118,'Jon','Bee','Jon_Bee@gmail.com','0000',484,1085009155,'Jon_Bee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (119,'Audrey','Almus','Audrey_Almus@gmail.com','0000',267,1057260200,'Audrey_Almus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (120,'Furman','Deegan','Furman_Deegan@gmail.com','0000',999,1081475956,'Furman_Deegan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (121,'Torey','Orvis','Torey_Orvis@gmail.com','0000',560,1006508485,'Torey_Orvis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (984,'Berry','Kristofer','Berry_Kristofer@gmail.com','0000',702,1043186333,'Berry_Kristofer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (985,'Verlon','Chaz','Verlon_Chaz@gmail.com','0000',706,1092364257,'Verlon_Chaz');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (986,'Josiah','Tito','Josiah_Tito@gmail.com','0000',428,1012701210,'Josiah_Tito');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (987,'Vance','Dwyane','Vance_Dwyane@gmail.com','0000',269,1031274964,'Vance_Dwyane');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (988,'Claus','Bernardo','Claus_Bernardo@gmail.com','0000',860,1040836196,'Claus_Bernardo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (989,'Jordan','Nils','Jordan_Nils@gmail.com','0000',634,1017601666,'Jordan_Nils');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (990,'Terry','Red','Terry_Red@gmail.com','0000',628,1033469567,'Terry_Red');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (991,'Slade','Eldon','Slade_Eldon@gmail.com','0000',465,1031059064,'Slade_Eldon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (992,'Larkin','Zenas','Larkin_Zenas@gmail.com','0000',676,1001825506,'Larkin_Zenas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (993,'Vollie','Jett','Vollie_Jett@gmail.com','0000',235,1016405130,'Vollie_Jett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (994,'Johathan','Harvie','Johathan_Harvie@gmail.com','0000',219,1007007414,'Johathan_Harvie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (995,'Reggie','Isaak','Reggie_Isaak@gmail.com','0000',586,1088884927,'Reggie_Isaak');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (996,'Van','Tavian','Van_Tavian@gmail.com','0000',318,1093379529,'Van_Tavian');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (997,'Dana','Conner','Dana_Conner@gmail.com','0000',455,1084566011,'Dana_Conner');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (998,'Juluis','Gearld','Juluis_Gearld@gmail.com','0000',650,1061660185,'Juluis_Gearld');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (999,'Randolph','Omarion','Randolph_Omarion@gmail.com','0000',291,1013412258,'Randolph_Omarion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1000,'Liston','Justus','Liston_Justus@gmail.com','0000',831,1078404244,'Liston_Justus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1001,'Butler','Greene','Butler_Greene@gmail.com','0000',657,1092900071,'Butler_Greene');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1002,'Delano','Chauncy','Delano_Chauncy@gmail.com','0000',901,1083288136,'Delano_Chauncy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1003,'Sol','Jorge','Sol_Jorge@gmail.com','0000',151,1054414833,'Sol_Jorge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1004,'Jere','Joey','Jere_Joey@gmail.com','0000',123,1034670870,'Jere_Joey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1005,'Hays','Jajuan','Hays_Jajuan@gmail.com','0000',345,1096645409,'Hays_Jajuan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1006,'Efrain','Donell','Efrain_Donell@gmail.com','0000',83,1037096093,'Efrain_Donell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1007,'Benjman','Linnie','Benjman_Linnie@gmail.com','0000',241,1026049746,'Benjman_Linnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1008,'Manly','Walt','Manly_Walt@gmail.com','0000',381,1046193174,'Manly_Walt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1009,'Larry','Brittany','Larry_Brittany@gmail.com','0000',267,1064835664,'Larry_Brittany');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1010,'Christy','Vernie','Christy_Vernie@gmail.com','0000',309,1053887451,'Christy_Vernie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1011,'Jaleel','Haiden','Jaleel_Haiden@gmail.com','0000',241,1074599379,'Jaleel_Haiden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1012,'Kinte','Oddie','Kinte_Oddie@gmail.com','0000',790,1019824822,'Kinte_Oddie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1013,'Tommie','Merritt','Tommie_Merritt@gmail.com','0000',625,1067742268,'Tommie_Merritt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1014,'Schuyler','Niko','Schuyler_Niko@gmail.com','0000',735,1045015357,'Schuyler_Niko');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1015,'Rhett','Charles','Rhett_Charles@gmail.com','0000',367,1069964696,'Rhett_Charles');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1016,'Ryder','Dakota','Ryder_Dakota@gmail.com','0000',632,1010384363,'Ryder_Dakota');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1017,'Rahn','Shedrick','Rahn_Shedrick@gmail.com','0000',238,1073341911,'Rahn_Shedrick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1018,'Reginal','Lige','Reginal_Lige@gmail.com','0000',68,1083217953,'Reginal_Lige');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1019,'Rocco','Tobie','Rocco_Tobie@gmail.com','0000',282,1004459669,'Rocco_Tobie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1020,'Rickey','Gianni','Rickey_Gianni@gmail.com','0000',648,1025133869,'Rickey_Gianni');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1021,'Edgar','Tristan','Edgar_Tristan@gmail.com','0000',323,1088915527,'Edgar_Tristan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1022,'Linden','Ephram','Linden_Ephram@gmail.com','0000',654,1098170251,'Linden_Ephram');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1023,'Elliot','Hoover','Elliot_Hoover@gmail.com','0000',884,1020374388,'Elliot_Hoover');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1024,'Norwood','Cynthia','Norwood_Cynthia@gmail.com','0000',807,1038322043,'Norwood_Cynthia');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1025,'Laddie','Frances','Laddie_Frances@gmail.com','0000',859,1027980225,'Laddie_Frances');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1026,'Tariq','Sammy','Tariq_Sammy@gmail.com','0000',302,1036594447,'Tariq_Sammy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1027,'Bartholomew','Bertrand','Bartholomew_Bertrand@gmail.com','0000',294,1010521547,'Bartholomew_Bertrand');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1028,'Job','Odin','Job_Odin@gmail.com','0000',598,1039611912,'Job_Odin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1029,'Lennie','Newman','Lennie_Newman@gmail.com','0000',576,1058319998,'Lennie_Newman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1030,'Damon','Anders','Damon_Anders@gmail.com','0000',162,1078707127,'Damon_Anders');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1031,'Rueben','Nellie','Rueben_Nellie@gmail.com','0000',245,1074388144,'Rueben_Nellie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1032,'Destry','Leighton','Destry_Leighton@gmail.com','0000',857,1016251117,'Destry_Leighton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1033,'Joshuah','Captain','Joshuah_Captain@gmail.com','0000',243,1097036752,'Joshuah_Captain');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1034,'Stonewall','Olive','Stonewall_Olive@gmail.com','0000',348,1068261292,'Stonewall_Olive');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1035,'Jaquez','Elzy','Jaquez_Elzy@gmail.com','0000',81,1039266622,'Jaquez_Elzy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1036,'Dudley','Misael','Dudley_Misael@gmail.com','0000',787,1012853312,'Dudley_Misael');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1037,'Evan','Shep','Evan_Shep@gmail.com','0000',626,1047925717,'Evan_Shep');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1038,'Andra','Errol','Andra_Errol@gmail.com','0000',254,1040641257,'Andra_Errol');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1039,'Mark','Atha','Mark_Atha@gmail.com','0000',551,1028221991,'Mark_Atha');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1040,'Salomon','General','Salomon_General@gmail.com','0000',226,1038817157,'Salomon_General');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1041,'Kelley','Marchello','Kelley_Marchello@gmail.com','0000',627,1001390814,'Kelley_Marchello');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1042,'Lannie','Earlie','Lannie_Earlie@gmail.com','0000',367,1031223544,'Lannie_Earlie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1043,'Orval','Fitzhugh','Orval_Fitzhugh@gmail.com','0000',226,1058062994,'Orval_Fitzhugh');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1044,'Keyshawn','Hoke','Keyshawn_Hoke@gmail.com','0000',169,1066388581,'Keyshawn_Hoke');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1045,'Rashad','Sharif','Rashad_Sharif@gmail.com','0000',897,1015197422,'Rashad_Sharif');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1046,'Eloy','Cyril','Eloy_Cyril@gmail.com','0000',773,1047519603,'Eloy_Cyril');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1047,'Winton','Arlis','Winton_Arlis@gmail.com','0000',392,1064474958,'Winton_Arlis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1048,'Jason','Triston','Jason_Triston@gmail.com','0000',366,1014322590,'Jason_Triston');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1049,'Ray','Deondre','Ray_Deondre@gmail.com','0000',418,1055388185,'Ray_Deondre');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1050,'Xander','Kennth','Xander_Kennth@gmail.com','0000',121,1044263759,'Xander_Kennth');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1051,'Cap','Bob','Cap_Bob@gmail.com','0000',255,1065985623,'Cap_Bob');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1052,'Jovany','Tucker','Jovany_Tucker@gmail.com','0000',433,1033630490,'Jovany_Tucker');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1053,'Stevan','Graham','Stevan_Graham@gmail.com','0000',511,1033416202,'Stevan_Graham');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1054,'Fidel','Ricci','Fidel_Ricci@gmail.com','0000',127,1084402456,'Fidel_Ricci');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1055,'Leonard','Jayvion','Leonard_Jayvion@gmail.com','0000',170,1091359183,'Leonard_Jayvion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1056,'Seth','Tripp','Seth_Tripp@gmail.com','0000',404,1052071013,'Seth_Tripp');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1057,'Robbie','Lea','Robbie_Lea@gmail.com','0000',532,1012869494,'Robbie_Lea');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1058,'Arman','Brandon','Arman_Brandon@gmail.com','0000',995,1064532407,'Arman_Brandon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1059,'Isidore','Abdiel','Isidore_Abdiel@gmail.com','0000',981,1027510110,'Isidore_Abdiel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1060,'Therman','Hughey','Therman_Hughey@gmail.com','0000',291,1009667832,'Therman_Hughey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1061,'Stone','Ari','Stone_Ari@gmail.com','0000',80,1074766809,'Stone_Ari');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1062,'Beau','Jobe','Beau_Jobe@gmail.com','0000',164,1040175727,'Beau_Jobe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1063,'Ezequiel','Samantha','Ezequiel_Samantha@gmail.com','0000',870,1078676782,'Ezequiel_Samantha');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1064,'Foster','Rusty','Foster_Rusty@gmail.com','0000',561,1029447761,'Foster_Rusty');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1065,'Alfonso','Gifford','Alfonso_Gifford@gmail.com','0000',3,1025179905,'Alfonso_Gifford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1066,'Ashton','Ezra','Ashton_Ezra@gmail.com','0000',119,1052907774,'Ashton_Ezra');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1067,'Olin','Patsy','Olin_Patsy@gmail.com','0000',693,1019573286,'Olin_Patsy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1068,'Demarion','Lavon','Demarion_Lavon@gmail.com','0000',386,1016302178,'Demarion_Lavon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1069,'Antwan','Saverio','Antwan_Saverio@gmail.com','0000',371,1092661523,'Antwan_Saverio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1070,'Joshua','Burdette','Joshua_Burdette@gmail.com','0000',746,1016152290,'Joshua_Burdette');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1071,'Shaun','Hezekiah','Shaun_Hezekiah@gmail.com','0000',84,1043242511,'Shaun_Hezekiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1072,'Jamarcus','Sonny','Jamarcus_Sonny@gmail.com','0000',100,1095794446,'Jamarcus_Sonny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1073,'Cordell','Elige','Cordell_Elige@gmail.com','0000',578,1088129763,'Cordell_Elige');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1074,'Fidencio','Travis','Fidencio_Travis@gmail.com','0000',873,1043497679,'Fidencio_Travis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1075,'Lesley','Jerad','Lesley_Jerad@gmail.com','0000',173,1067875686,'Lesley_Jerad');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1076,'Roswell','Autry','Roswell_Autry@gmail.com','0000',986,1011040711,'Roswell_Autry');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1077,'Ole','Tyreke','Ole_Tyreke@gmail.com','0000',964,1097581380,'Ole_Tyreke');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1078,'Dillon','Marcos','Dillon_Marcos@gmail.com','0000',915,1023270425,'Dillon_Marcos');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1079,'Toma','Benny','Toma_Benny@gmail.com','0000',423,1052987256,'Toma_Benny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1080,'Yoshio','Theo','Yoshio_Theo@gmail.com','0000',776,1004578241,'Yoshio_Theo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1081,'Michelle','Colon','Michelle_Colon@gmail.com','0000',684,1070670157,'Michelle_Colon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1082,'Asher','Nery','Asher_Nery@gmail.com','0000',249,1045860630,'Asher_Nery');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1083,'Denzel','Derick','Denzel_Derick@gmail.com','0000',422,1077447732,'Denzel_Derick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1084,'Ansel','Lacy','Ansel_Lacy@gmail.com','0000',621,1040629428,'Ansel_Lacy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1085,'Reinaldo','Lorenz','Reinaldo_Lorenz@gmail.com','0000',782,1086011778,'Reinaldo_Lorenz');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1086,'Edmond','Orange','Edmond_Orange@gmail.com','0000',683,1012163402,'Edmond_Orange');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1087,'Cale','Leonidas','Cale_Leonidas@gmail.com','0000',12,1033190608,'Cale_Leonidas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1088,'Ethen','Daxton','Ethen_Daxton@gmail.com','0000',126,1031891685,'Ethen_Daxton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1089,'Winfield','Newton','Winfield_Newton@gmail.com','0000',421,1093336762,'Winfield_Newton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1090,'Michele','Vidal','Michele_Vidal@gmail.com','0000',580,1069292665,'Michele_Vidal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1091,'Addison','Chancey','Addison_Chancey@gmail.com','0000',705,1008066419,'Addison_Chancey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1092,'Ovid','Judge','Ovid_Judge@gmail.com','0000',97,1010760802,'Ovid_Judge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1093,'Maxie','Dannie','Maxie_Dannie@gmail.com','0000',28,1045344455,'Maxie_Dannie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1094,'Cristopher','Luigi','Cristopher_Luigi@gmail.com','0000',250,1069181589,'Cristopher_Luigi');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1095,'Amado','Clement','Amado_Clement@gmail.com','0000',523,1083127224,'Amado_Clement');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1096,'Codi','Jakob','Codi_Jakob@gmail.com','0000',144,1021341857,'Codi_Jakob');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1097,'Greyson','Evans','Greyson_Evans@gmail.com','0000',24,1082751570,'Greyson_Evans');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1098,'Weldon','Yair','Weldon_Yair@gmail.com','0000',709,1060887313,'Weldon_Yair');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1099,'Sharon','Hoyt','Sharon_Hoyt@gmail.com','0000',725,1037919017,'Sharon_Hoyt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1100,'Ottie','Jovanni','Ottie_Jovanni@gmail.com','0000',266,1021710074,'Ottie_Jovanni');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1101,'Justin','Ferdinand','Justin_Ferdinand@gmail.com','0000',437,1081859567,'Justin_Ferdinand');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1102,'Chandler','Markus','Chandler_Markus@gmail.com','0000',283,1079661853,'Chandler_Markus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1103,'Keith','Carroll','Keith_Carroll@gmail.com','0000',387,1000456047,'Keith_Carroll');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1104,'Seymour','Adonis','Seymour_Adonis@gmail.com','0000',571,1053132014,'Seymour_Adonis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1105,'Tayshaun','Josephus','Tayshaun_Josephus@gmail.com','0000',616,1042445355,'Tayshaun_Josephus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1106,'Gaige','Cody','Gaige_Cody@gmail.com','0000',194,1051222163,'Gaige_Cody');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1107,'Keegan','Meredith','Keegan_Meredith@gmail.com','0000',41,1059926842,'Keegan_Meredith');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1108,'Clemente','Frank','Clemente_Frank@gmail.com','0000',127,1078740012,'Clemente_Frank');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1109,'Dora','Stoney','Dora_Stoney@gmail.com','0000',131,1080665563,'Dora_Stoney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1110,'Ernesto','Marie','Ernesto_Marie@gmail.com','0000',922,1083784304,'Ernesto_Marie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1111,'Merle','Columbus','Merle_Columbus@gmail.com','0000',378,1053750958,'Merle_Columbus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1112,'Yehuda','Dennie','Yehuda_Dennie@gmail.com','0000',247,1019504284,'Yehuda_Dennie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1113,'Buster','Clell','Buster_Clell@gmail.com','0000',199,1036667524,'Buster_Clell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1114,'Chalmers','Arturo','Chalmers_Arturo@gmail.com','0000',79,1042585118,'Chalmers_Arturo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1115,'Vashon','Ollie','Vashon_Ollie@gmail.com','0000',17,1011543260,'Vashon_Ollie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1116,'Gabe','Levy','Gabe_Levy@gmail.com','0000',209,1082300727,'Gabe_Levy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1117,'Page','Eunice','Page_Eunice@gmail.com','0000',389,1014269006,'Page_Eunice');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1118,'Preston','Abbott','Preston_Abbott@gmail.com','0000',917,1052073605,'Preston_Abbott');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1119,'Brett','Emery','Brett_Emery@gmail.com','0000',535,1050662870,'Brett_Emery');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1120,'Buel','Friend','Buel_Friend@gmail.com','0000',840,1074736275,'Buel_Friend');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1121,'Edward','Justen','Edward_Justen@gmail.com','0000',324,1002524151,'Edward_Justen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1122,'Abraham','Melton','Abraham_Melton@gmail.com','0000',611,1013531081,'Abraham_Melton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1123,'Germaine','Eddy','Germaine_Eddy@gmail.com','0000',107,1051265461,'Germaine_Eddy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1124,'Dionte','Randolf','Dionte_Randolf@gmail.com','0000',303,1063874329,'Dionte_Randolf');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1125,'Mansfield','Schley','Mansfield_Schley@gmail.com','0000',59,1014183297,'Mansfield_Schley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1126,'Kendell','Lawerence','Kendell_Lawerence@gmail.com','0000',58,1033615482,'Kendell_Lawerence');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1127,'Lou','German','Lou_German@gmail.com','0000',419,1007409883,'Lou_German');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1128,'Elwyn','Belton','Elwyn_Belton@gmail.com','0000',771,1052512746,'Elwyn_Belton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1129,'Armin','Samuel','Armin_Samuel@gmail.com','0000',869,1039686672,'Armin_Samuel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1130,'Salvador','Jerimiah','Salvador_Jerimiah@gmail.com','0000',740,1004273350,'Salvador_Jerimiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1131,'Clint','Frazier','Clint_Frazier@gmail.com','0000',907,1073448318,'Clint_Frazier');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1132,'Cortney','Thedore','Cortney_Thedore@gmail.com','0000',108,1031874841,'Cortney_Thedore');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1133,'Hazen','Constantine','Hazen_Constantine@gmail.com','0000',727,1016205105,'Hazen_Constantine');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1134,'Elroy','Kody','Elroy_Kody@gmail.com','0000',788,1001981216,'Elroy_Kody');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1135,'Chad','Joaquin','Chad_Joaquin@gmail.com','0000',836,1046681375,'Chad_Joaquin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1136,'Kit','Less','Kit_Less@gmail.com','0000',46,1004191923,'Kit_Less');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1137,'Kipp','Chace','Kipp_Chace@gmail.com','0000',478,1001161034,'Kipp_Chace');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1138,'Leona','Kenton','Leona_Kenton@gmail.com','0000',535,1018332117,'Leona_Kenton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1139,'Cassidy','Kristian','Cassidy_Kristian@gmail.com','0000',318,1027057851,'Cassidy_Kristian');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1140,'Amir','David','Amir_David@gmail.com','0000',324,1026010061,'Amir_David');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1141,'Maurice','Paul','Maurice_Paul@gmail.com','0000',389,1057671008,'Maurice_Paul');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1142,'Nello','Rachel','Nello_Rachel@gmail.com','0000',73,1099387231,'Nello_Rachel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1143,'Octavio','Jermain','Octavio_Jermain@gmail.com','0000',545,1013094090,'Octavio_Jermain');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1144,'Webb','Roe','Webb_Roe@gmail.com','0000',841,1095616516,'Webb_Roe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1145,'Esau','Clay','Esau_Clay@gmail.com','0000',303,1017544768,'Esau_Clay');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1146,'Wong','Hurley','Wong_Hurley@gmail.com','0000',736,1026234799,'Wong_Hurley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1147,'Alston','Marland','Alston_Marland@gmail.com','0000',49,1044824004,'Alston_Marland');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1148,'Dink','Conway','Dink_Conway@gmail.com','0000',293,1093162116,'Dink_Conway');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1149,'Kendal','Blake','Kendal_Blake@gmail.com','0000',118,1097382864,'Kendal_Blake');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1150,'Devonte','Anthony','Devonte_Anthony@gmail.com','0000',337,1008527618,'Devonte_Anthony');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1151,'Lucious','Garland','Lucious_Garland@gmail.com','0000',889,1016349597,'Lucious_Garland');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1152,'Davian','Atticus','Davian_Atticus@gmail.com','0000',937,1074277234,'Davian_Atticus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1153,'Worth','Gibson','Worth_Gibson@gmail.com','0000',966,1098884087,'Worth_Gibson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1154,'Curtiss','Ham','Curtiss_Ham@gmail.com','0000',88,1011313274,'Curtiss_Ham');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1155,'Gino','Cato','Gino_Cato@gmail.com','0000',138,1099269442,'Gino_Cato');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1156,'Julio','Billy','Julio_Billy@gmail.com','0000',845,1045605134,'Julio_Billy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1157,'Randal','Campbell','Randal_Campbell@gmail.com','0000',379,1026628921,'Randal_Campbell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1158,'Lamar','Shelly','Lamar_Shelly@gmail.com','0000',681,1014535061,'Lamar_Shelly');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1159,'Blaine','Tyson','Blaine_Tyson@gmail.com','0000',300,1072053604,'Blaine_Tyson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1160,'Harden','Ellis','Harden_Ellis@gmail.com','0000',188,1007480675,'Harden_Ellis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1161,'Bailey','Ezekiel','Bailey_Ezekiel@gmail.com','0000',476,1033621407,'Bailey_Ezekiel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1162,'Babe','Donnie','Babe_Donnie@gmail.com','0000',716,1067949555,'Babe_Donnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1163,'Felipe','Toy','Felipe_Toy@gmail.com','0000',359,1030492490,'Felipe_Toy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1164,'Cullen','Chet','Cullen_Chet@gmail.com','0000',319,1063199579,'Cullen_Chet');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1165,'Zaiden','Casper','Zaiden_Casper@gmail.com','0000',26,1025745130,'Zaiden_Casper');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1166,'Jereme','Gilman','Jereme_Gilman@gmail.com','0000',345,1031970906,'Jereme_Gilman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1167,'Andreas','Verne','Andreas_Verne@gmail.com','0000',426,1000827246,'Andreas_Verne');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1168,'Maddox','Osbaldo','Maddox_Osbaldo@gmail.com','0000',816,1083912872,'Maddox_Osbaldo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1169,'Hughie','Jamal','Hughie_Jamal@gmail.com','0000',754,1069394930,'Hughie_Jamal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1170,'Laquan','Hayes','Laquan_Hayes@gmail.com','0000',507,1018275272,'Laquan_Hayes');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1171,'Elwood','Murray','Elwood_Murray@gmail.com','0000',301,1035747152,'Elwood_Murray');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1172,'Casimir','Brien','Casimir_Brien@gmail.com','0000',334,1075052934,'Casimir_Brien');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1173,'Mckinley','Mary','Mckinley_Mary@gmail.com','0000',825,1028913412,'Mckinley_Mary');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1174,'Branch','Valentino','Branch_Valentino@gmail.com','0000',110,1027532153,'Branch_Valentino');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1175,'Waylon','Mortimer','Waylon_Mortimer@gmail.com','0000',362,1063681623,'Waylon_Mortimer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1176,'Lary','Ayaan','Lary_Ayaan@gmail.com','0000',507,1019324481,'Lary_Ayaan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1177,'Walker','Marlo','Walker_Marlo@gmail.com','0000',409,1008535275,'Walker_Marlo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1178,'Anson','Colie','Anson_Colie@gmail.com','0000',388,1045998856,'Anson_Colie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1179,'Terrence','Verl','Terrence_Verl@gmail.com','0000',905,1021811469,'Terrence_Verl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1180,'Ulysses','Claudius','Ulysses_Claudius@gmail.com','0000',56,1082381976,'Ulysses_Claudius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1181,'Lem','Daunte','Lem_Daunte@gmail.com','0000',983,1018752744,'Lem_Daunte');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1182,'Hershell','Darcy','Hershell_Darcy@gmail.com','0000',662,1012845402,'Hershell_Darcy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1183,'Mamie','Marques','Mamie_Marques@gmail.com','0000',828,1015598693,'Mamie_Marques');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1184,'Meyer','Jeremie','Meyer_Jeremie@gmail.com','0000',127,1020854784,'Meyer_Jeremie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1185,'Levon','Dayton','Levon_Dayton@gmail.com','0000',99,1090580227,'Levon_Dayton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1186,'Sampson','Nathan','Sampson_Nathan@gmail.com','0000',993,1073612434,'Sampson_Nathan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1187,'Tina','Birt','Tina_Birt@gmail.com','0000',515,1063183909,'Tina_Birt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1188,'Mayo','Lemmie','Mayo_Lemmie@gmail.com','0000',322,1056781577,'Mayo_Lemmie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1189,'Montana','Augustin','Montana_Augustin@gmail.com','0000',317,1057720911,'Montana_Augustin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1190,'Author','Lott','Author_Lott@gmail.com','0000',974,1050118622,'Author_Lott');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1191,'Rance','Dwayne','Rance_Dwayne@gmail.com','0000',310,1048485430,'Rance_Dwayne');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1192,'Russ','Arnie','Russ_Arnie@gmail.com','0000',622,1044726370,'Russ_Arnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1193,'Zechariah','Keyon','Zechariah_Keyon@gmail.com','0000',854,1065562724,'Zechariah_Keyon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1194,'Dixon','Eleanor','Dixon_Eleanor@gmail.com','0000',360,1063417690,'Dixon_Eleanor');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1195,'Dwaine','Lovett','Dwaine_Lovett@gmail.com','0000',469,1020929845,'Dwaine_Lovett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1196,'Sylvan','Odie','Sylvan_Odie@gmail.com','0000',351,1098857041,'Sylvan_Odie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1197,'Raymon','Cletus','Raymon_Cletus@gmail.com','0000',438,1057842822,'Raymon_Cletus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1198,'Carlton','Weaver','Carlton_Weaver@gmail.com','0000',332,1042741419,'Carlton_Weaver');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1199,'Newt','Patricia','Newt_Patricia@gmail.com','0000',397,1027040956,'Newt_Patricia');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1200,'Erving','Orlin','Erving_Orlin@gmail.com','0000',997,1064014505,'Erving_Orlin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1201,'Edgardo','Howard','Edgardo_Howard@gmail.com','0000',748,1009877145,'Edgardo_Howard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1202,'Brycen','Jacky','Brycen_Jacky@gmail.com','0000',954,1061154433,'Brycen_Jacky');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1203,'Kobe','Lexie','Kobe_Lexie@gmail.com','0000',361,1076171607,'Kobe_Lexie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1204,'Keenan','Bedford','Keenan_Bedford@gmail.com','0000',54,1019035026,'Keenan_Bedford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1205,'Leif','Homer','Leif_Homer@gmail.com','0000',277,1071120257,'Leif_Homer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1206,'Tavaris','Sullivan','Tavaris_Sullivan@gmail.com','0000',676,1017540200,'Tavaris_Sullivan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1207,'Gregorio','Roderic','Gregorio_Roderic@gmail.com','0000',708,1033570964,'Gregorio_Roderic');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1208,'Trumaine','Kiel','Trumaine_Kiel@gmail.com','0000',277,1059369871,'Trumaine_Kiel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1209,'Glenn','Felton','Glenn_Felton@gmail.com','0000',291,1040924084,'Glenn_Felton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1210,'Darryl','Nelson','Darryl_Nelson@gmail.com','0000',234,1038780065,'Darryl_Nelson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1211,'Stephen','Derald','Stephen_Derald@gmail.com','0000',40,1084370656,'Stephen_Derald');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1212,'Damond','Royal','Damond_Royal@gmail.com','0000',727,1048592275,'Damond_Royal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1213,'Unnamed','Jarrad','Unnamed_Jarrad@gmail.com','0000',297,1009212362,'Unnamed_Jarrad');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1214,'Wilkie','Urban','Wilkie_Urban@gmail.com','0000',375,1046923555,'Wilkie_Urban');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1215,'Gennaro','Orin','Gennaro_Orin@gmail.com','0000',303,1080682282,'Gennaro_Orin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1216,'Raynard','Rock','Raynard_Rock@gmail.com','0000',205,1099938228,'Raynard_Rock');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1217,'Hamp','Pershing','Hamp_Pershing@gmail.com','0000',214,1025152374,'Hamp_Pershing');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1218,'Orley','Stefan','Orley_Stefan@gmail.com','0000',52,1064524703,'Orley_Stefan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1219,'Kael','Brock','Kael_Brock@gmail.com','0000',247,1008689344,'Kael_Brock');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1220,'Wilton','Bryce','Wilton_Bryce@gmail.com','0000',892,1042363310,'Wilton_Bryce');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1221,'Johnie','Lyn','Johnie_Lyn@gmail.com','0000',298,1059688698,'Johnie_Lyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1222,'Jamin','Halley','Jamin_Halley@gmail.com','0000',878,1089386747,'Jamin_Halley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1223,'Johan','Renard','Johan_Renard@gmail.com','0000',494,1059280396,'Johan_Renard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1224,'Jennifer','Crawford','Jennifer_Crawford@gmail.com','0000',255,1070642204,'Jennifer_Crawford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1225,'Fulton','Devonta','Fulton_Devonta@gmail.com','0000',273,1045866483,'Fulton_Devonta');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1226,'Harry','Gustav','Harry_Gustav@gmail.com','0000',932,1091110240,'Harry_Gustav');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1227,'Johnathon','Miguel','Johnathon_Miguel@gmail.com','0000',198,1014473852,'Johnathon_Miguel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1228,'Austyn','Allan','Austyn_Allan@gmail.com','0000',678,1088171224,'Austyn_Allan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1229,'Orvil','Danielle','Orvil_Danielle@gmail.com','0000',529,1004269823,'Orvil_Danielle');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1230,'Zed','Jorden','Zed_Jorden@gmail.com','0000',847,1089821646,'Zed_Jorden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1231,'Devon','Lenon','Devon_Lenon@gmail.com','0000',773,1010460570,'Devon_Lenon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1232,'Oland','Verner','Oland_Verner@gmail.com','0000',807,1027662603,'Oland_Verner');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1233,'Quincy','Kiyoshi','Quincy_Kiyoshi@gmail.com','0000',508,1080055531,'Quincy_Kiyoshi');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1234,'Othel','Ahmed','Othel_Ahmed@gmail.com','0000',708,1044331481,'Othel_Ahmed');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1235,'Richie','Oliver','Richie_Oliver@gmail.com','0000',1,1031483273,'Richie_Oliver');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1236,'Joe','Dorman','Joe_Dorman@gmail.com','0000',309,1085033165,'Joe_Dorman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1237,'Ephraim','Collins','Ephraim_Collins@gmail.com','0000',4,1075486936,'Ephraim_Collins');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1238,'Genaro','Jerald','Genaro_Jerald@gmail.com','0000',189,1059652296,'Genaro_Jerald');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1239,'Leonardo','Simeon','Leonardo_Simeon@gmail.com','0000',630,1070937638,'Leonardo_Simeon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1240,'Erie','Aidan','Erie_Aidan@gmail.com','0000',942,1098971084,'Erie_Aidan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1241,'Elex','River','Elex_River@gmail.com','0000',94,1009011569,'Elex_River');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1242,'Glover','Lucille','Glover_Lucille@gmail.com','0000',582,1034514123,'Glover_Lucille');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1243,'Minoru','Kathleen','Minoru_Kathleen@gmail.com','0000',74,1081838454,'Minoru_Kathleen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1244,'Gasper','Ronal','Gasper_Ronal@gmail.com','0000',299,1051737583,'Gasper_Ronal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1245,'Harm','Elgie','Harm_Elgie@gmail.com','0000',16,1072586917,'Harm_Elgie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1246,'Erik','Maggie','Erik_Maggie@gmail.com','0000',576,1019522931,'Erik_Maggie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1247,'Mohammad','Darrel','Mohammad_Darrel@gmail.com','0000',588,1041754824,'Mohammad_Darrel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1248,'Edna','Aarav','Edna_Aarav@gmail.com','0000',808,1073876722,'Edna_Aarav');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1249,'Malakai','Derwin','Malakai_Derwin@gmail.com','0000',229,1011914215,'Malakai_Derwin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1250,'Lamarcus','Arsenio','Lamarcus_Arsenio@gmail.com','0000',47,1005544998,'Lamarcus_Arsenio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1251,'Miguelangel','Jimmy','Miguelangel_Jimmy@gmail.com','0000',625,1062236563,'Miguelangel_Jimmy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1252,'Reinhold','Lola','Reinhold_Lola@gmail.com','0000',965,1043098894,'Reinhold_Lola');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1253,'Adolfo','Nathanael','Adolfo_Nathanael@gmail.com','0000',697,1062257868,'Adolfo_Nathanael');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1254,'Brad','Talmadge','Brad_Talmadge@gmail.com','0000',806,1077635122,'Brad_Talmadge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1255,'Douglass','Bascom','Douglass_Bascom@gmail.com','0000',5,1088868311,'Douglass_Bascom');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1256,'Josephine','Enos','Josephine_Enos@gmail.com','0000',492,1039926019,'Josephine_Enos');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1257,'Camden','Lilburn','Camden_Lilburn@gmail.com','0000',157,1054443830,'Camden_Lilburn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1258,'Destin','Carson','Destin_Carson@gmail.com','0000',804,1058772956,'Destin_Carson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1259,'Elliott','Jerrold','Elliott_Jerrold@gmail.com','0000',119,1031734877,'Elliott_Jerrold');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1260,'Max','Ignatz','Max_Ignatz@gmail.com','0000',624,1096244879,'Max_Ignatz');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1261,'Ivey','Little','Ivey_Little@gmail.com','0000',62,1012136492,'Ivey_Little');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1262,'Gloria','Lamonte','Gloria_Lamonte@gmail.com','0000',270,1007376700,'Gloria_Lamonte');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1263,'Claude','Milton','Claude_Milton@gmail.com','0000',922,1070256648,'Claude_Milton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1264,'Kavon','Baldwin','Kavon_Baldwin@gmail.com','0000',584,1013465936,'Kavon_Baldwin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1265,'Kennith','Kareen','Kennith_Kareen@gmail.com','0000',233,1065113549,'Kennith_Kareen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1266,'Darryn','London','Darryn_London@gmail.com','0000',634,1093381167,'Darryn_London');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1267,'Judson','Mordechai','Judson_Mordechai@gmail.com','0000',143,1029037643,'Judson_Mordechai');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1268,'Gerald','Javonte','Gerald_Javonte@gmail.com','0000',780,1075643978,'Gerald_Javonte');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (505,'Sherwood','Daryn','Sherwood_Daryn@gmail.com','0000',136,1044780399,'Sherwood_Daryn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (506,'Eva','Toney','Eva_Toney@gmail.com','0000',635,1063951622,'Eva_Toney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (507,'Fernand','Manson','Fernand_Manson@gmail.com','0000',341,1092985046,'Fernand_Manson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (508,'Kai','Andy','Kai_Andy@gmail.com','0000',175,1037093380,'Kai_Andy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (509,'Kunta','Diego','Kunta_Diego@gmail.com','0000',783,1008259640,'Kunta_Diego');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (510,'Trevion','Gurney','Trevion_Gurney@gmail.com','0000',121,1052304586,'Trevion_Gurney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (511,'Virgle','Christopher','Virgle_Christopher@gmail.com','0000',763,1015020940,'Virgle_Christopher');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (512,'Elby','Hiroshi','Elby_Hiroshi@gmail.com','0000',151,1014480613,'Elby_Hiroshi');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (513,'Mell','Willy','Mell_Willy@gmail.com','0000',532,1050518354,'Mell_Willy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (514,'Shaquille','Casey','Shaquille_Casey@gmail.com','0000',21,1003787623,'Shaquille_Casey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (515,'Philo','Treyvon','Philo_Treyvon@gmail.com','0000',479,1012802701,'Philo_Treyvon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (516,'Ebbie','Rondal','Ebbie_Rondal@gmail.com','0000',756,1095764771,'Ebbie_Rondal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (517,'Phoenix','Olie','Phoenix_Olie@gmail.com','0000',835,1095841928,'Phoenix_Olie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (518,'Wardell','Josh','Wardell_Josh@gmail.com','0000',709,1057844635,'Wardell_Josh');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (519,'Carey','Rich','Carey_Rich@gmail.com','0000',160,1014157474,'Carey_Rich');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (520,'Willie','Ramsey','Willie_Ramsey@gmail.com','0000',100,1088870396,'Willie_Ramsey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (521,'Charley','Garth','Charley_Garth@gmail.com','0000',86,1043129419,'Charley_Garth');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (522,'Jerry','Guss','Jerry_Guss@gmail.com','0000',424,1078232597,'Jerry_Guss');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (523,'Katherine','Trace','Katherine_Trace@gmail.com','0000',717,1029124363,'Katherine_Trace');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (524,'Catherine','Demian','Catherine_Demian@gmail.com','0000',563,1024085020,'Catherine_Demian');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (525,'Abie','Kurt','Abie_Kurt@gmail.com','0000',809,1067793676,'Abie_Kurt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (526,'Edison','Dixie','Edison_Dixie@gmail.com','0000',857,1062946437,'Edison_Dixie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (527,'Weston','Franz','Weston_Franz@gmail.com','0000',38,1083685838,'Weston_Franz');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (528,'Jerimy','Early','Jerimy_Early@gmail.com','0000',646,1009813678,'Jerimy_Early');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (529,'Ova','Matt','Ova_Matt@gmail.com','0000',371,1040673014,'Ova_Matt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (530,'Darwin','Claiborne','Darwin_Claiborne@gmail.com','0000',287,1094105253,'Darwin_Claiborne');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (531,'Alexande','Jahiem','Alexande_Jahiem@gmail.com','0000',987,1089081324,'Alexande_Jahiem');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (532,'Colter','Andre','Colter_Andre@gmail.com','0000',396,1004473130,'Colter_Andre');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (533,'Mat','Pablo','Mat_Pablo@gmail.com','0000',102,1049604177,'Mat_Pablo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (534,'Rylan','Jonatan','Rylan_Jonatan@gmail.com','0000',857,1042959857,'Rylan_Jonatan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (535,'Niles','Doctor','Niles_Doctor@gmail.com','0000',192,1089846889,'Niles_Doctor');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (536,'Enoch','Irvine','Enoch_Irvine@gmail.com','0000',458,1009000474,'Enoch_Irvine');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (537,'Algernon','Colton','Algernon_Colton@gmail.com','0000',31,1020221584,'Algernon_Colton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (538,'Arther','Brodie','Arther_Brodie@gmail.com','0000',210,1094350452,'Arther_Brodie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (539,'Amy','Vaughn','Amy_Vaughn@gmail.com','0000',55,1090521185,'Amy_Vaughn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (540,'Braxton','Orville','Braxton_Orville@gmail.com','0000',716,1048343498,'Braxton_Orville');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (541,'Johnson','Latrell','Johnson_Latrell@gmail.com','0000',184,1045349177,'Johnson_Latrell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (542,'Horatio','Ancil','Horatio_Ancil@gmail.com','0000',880,1016473401,'Horatio_Ancil');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (543,'Amin','Coty','Amin_Coty@gmail.com','0000',439,1092926059,'Amin_Coty');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (544,'Jennie','Eldridge','Jennie_Eldridge@gmail.com','0000',967,1039433049,'Jennie_Eldridge');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (545,'Unknown','Booker','Unknown_Booker@gmail.com','0000',132,1067774496,'Unknown_Booker');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (546,'Ike','Kurtis','Ike_Kurtis@gmail.com','0000',375,1077593278,'Ike_Kurtis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (547,'Edw','Harrell','Edw_Harrell@gmail.com','0000',0,1058567499,'Edw_Harrell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (548,'Janice','Jerold','Janice_Jerold@gmail.com','0000',759,1048832808,'Janice_Jerold');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (549,'Miner','Garold','Miner_Garold@gmail.com','0000',279,1055544072,'Miner_Garold');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (550,'Antwain','Lester','Antwain_Lester@gmail.com','0000',400,1067947027,'Antwain_Lester');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (551,'Albertus','Armstead','Albertus_Armstead@gmail.com','0000',996,1064429077,'Albertus_Armstead');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (552,'Effie','Sergio','Effie_Sergio@gmail.com','0000',805,1036876741,'Effie_Sergio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (553,'Odus','Amit','Odus_Amit@gmail.com','0000',895,1036375228,'Odus_Amit');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (554,'Agustus','Orla','Agustus_Orla@gmail.com','0000',915,1021049091,'Agustus_Orla');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (555,'Shaquan','Jamarion','Shaquan_Jamarion@gmail.com','0000',287,1017305080,'Shaquan_Jamarion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (556,'Mal','Brant','Mal_Brant@gmail.com','0000',695,1018946216,'Mal_Brant');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (557,'Claudio','Linus','Claudio_Linus@gmail.com','0000',804,1067108587,'Claudio_Linus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (558,'Cass','Jones','Cass_Jones@gmail.com','0000',496,1015120179,'Cass_Jones');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (559,'Virgie','Betty','Virgie_Betty@gmail.com','0000',575,1096625475,'Virgie_Betty');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (560,'Chadd','Kanye','Chadd_Kanye@gmail.com','0000',62,1062808499,'Chadd_Kanye');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (561,'Park','Dorr','Park_Dorr@gmail.com','0000',825,1047872445,'Park_Dorr');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (562,'Leslie','Haskell','Leslie_Haskell@gmail.com','0000',630,1047848868,'Leslie_Haskell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (563,'Beatrice','Emmitt','Beatrice_Emmitt@gmail.com','0000',877,1042139623,'Beatrice_Emmitt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (564,'Duke','Joyce','Duke_Joyce@gmail.com','0000',880,1008344068,'Duke_Joyce');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (565,'Kimberly','Freeman','Kimberly_Freeman@gmail.com','0000',343,1090169735,'Kimberly_Freeman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (566,'Domonique','Hallie','Domonique_Hallie@gmail.com','0000',24,1027815115,'Domonique_Hallie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (567,'Jameel','Gerhard','Jameel_Gerhard@gmail.com','0000',876,1008111295,'Jameel_Gerhard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (568,'Clabe','Estevan','Clabe_Estevan@gmail.com','0000',292,1063274017,'Clabe_Estevan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (569,'Jarret','Travon','Jarret_Travon@gmail.com','0000',842,1045116632,'Jarret_Travon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (570,'Geary','Montel','Geary_Montel@gmail.com','0000',92,1008107486,'Geary_Montel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (571,'Trevin','Herbert','Trevin_Herbert@gmail.com','0000',18,1009185799,'Trevin_Herbert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (572,'Brogan','Sandy','Brogan_Sandy@gmail.com','0000',456,1015673824,'Brogan_Sandy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (573,'Olen','Timothy','Olen_Timothy@gmail.com','0000',614,1018436873,'Olen_Timothy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (574,'Dillion','Jerome','Dillion_Jerome@gmail.com','0000',470,1071091519,'Dillion_Jerome');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (575,'Oswald','Alonzo','Oswald_Alonzo@gmail.com','0000',306,1087591401,'Oswald_Alonzo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (576,'Elias','Keandre','Elias_Keandre@gmail.com','0000',450,1088180899,'Elias_Keandre');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (577,'Brown','Kyle','Brown_Kyle@gmail.com','0000',699,1016292084,'Brown_Kyle');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (578,'Granville','Abdul','Granville_Abdul@gmail.com','0000',12,1006118614,'Granville_Abdul');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (579,'Marvin','Humberto','Marvin_Humberto@gmail.com','0000',617,1083929796,'Marvin_Humberto');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (580,'Braedon','Luke','Braedon_Luke@gmail.com','0000',276,1084551845,'Braedon_Luke');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (581,'Kenan','Gilford','Kenan_Gilford@gmail.com','0000',669,1045730810,'Kenan_Gilford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (582,'Danniel','Hayden','Danniel_Hayden@gmail.com','0000',151,1079188233,'Danniel_Hayden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (583,'Hunter','Cornelious','Hunter_Cornelious@gmail.com','0000',876,1001753253,'Hunter_Cornelious');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (584,'Edith','Ean','Edith_Ean@gmail.com','0000',899,1084237010,'Edith_Ean');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (585,'Viola','Adams','Viola_Adams@gmail.com','0000',766,1024744069,'Viola_Adams');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (586,'Scot','Claud','Scot_Claud@gmail.com','0000',61,1043149398,'Scot_Claud');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (587,'Levin','Jens','Levin_Jens@gmail.com','0000',418,1007127029,'Levin_Jens');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (588,'Gerry','Christina','Gerry_Christina@gmail.com','0000',83,1024757699,'Gerry_Christina');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (589,'Randell','Banks','Randell_Banks@gmail.com','0000',559,1072610661,'Randell_Banks');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (590,'Eligah','Yadiel','Eligah_Yadiel@gmail.com','0000',151,1098131361,'Eligah_Yadiel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (591,'Jefferey','Aryan','Jefferey_Aryan@gmail.com','0000',214,1062128042,'Jefferey_Aryan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (592,'Corbin','Kim','Corbin_Kim@gmail.com','0000',98,1090632881,'Corbin_Kim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (593,'Hjalmar','Masao','Hjalmar_Masao@gmail.com','0000',861,1064352507,'Hjalmar_Masao');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (594,'Charlie','Joseph','Charlie_Joseph@gmail.com','0000',506,1006623014,'Charlie_Joseph');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (595,'Benjamen','Leandro','Benjamen_Leandro@gmail.com','0000',6,1048807462,'Benjamen_Leandro');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (596,'Dashawn','Alfonzo','Dashawn_Alfonzo@gmail.com','0000',981,1079183056,'Dashawn_Alfonzo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (597,'Garett','Hollie','Garett_Hollie@gmail.com','0000',841,1037433347,'Garett_Hollie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (598,'Sage','Connie','Sage_Connie@gmail.com','0000',910,1064524554,'Sage_Connie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (599,'Clare','Durward','Clare_Durward@gmail.com','0000',406,1090802524,'Clare_Durward');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (600,'Lim','Ewald','Lim_Ewald@gmail.com','0000',857,1057886034,'Lim_Ewald');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (601,'Luster','Lewis','Luster_Lewis@gmail.com','0000',276,1071389709,'Luster_Lewis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (602,'Malik','Cicero','Malik_Cicero@gmail.com','0000',415,1076781941,'Malik_Cicero');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (603,'Rahsaan','Shan','Rahsaan_Shan@gmail.com','0000',422,1049151484,'Rahsaan_Shan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (604,'Stewart','Earle','Stewart_Earle@gmail.com','0000',869,1080478248,'Stewart_Earle');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (605,'Hermon','Chas','Hermon_Chas@gmail.com','0000',356,1018123491,'Hermon_Chas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (606,'Murry','Bryon','Murry_Bryon@gmail.com','0000',226,1052919539,'Murry_Bryon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (607,'Kaleb','Bruce','Kaleb_Bruce@gmail.com','0000',79,1031974518,'Kaleb_Bruce');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (608,'Kevon','Brandy','Kevon_Brandy@gmail.com','0000',680,1016952879,'Kevon_Brandy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (609,'Floyd','Bluford','Floyd_Bluford@gmail.com','0000',958,1044047821,'Floyd_Bluford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (610,'Bolden','Wes','Bolden_Wes@gmail.com','0000',339,1084822586,'Bolden_Wes');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (611,'Emett','Sincere','Emett_Sincere@gmail.com','0000',207,1010804784,'Emett_Sincere');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (612,'Rahul','Linn','Rahul_Linn@gmail.com','0000',510,1052072130,'Rahul_Linn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (613,'Hilton','Drew','Hilton_Drew@gmail.com','0000',459,1036738532,'Hilton_Drew');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (614,'Adrian','Dereon','Adrian_Dereon@gmail.com','0000',130,1029666246,'Adrian_Dereon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (615,'Rand','Rexford','Rand_Rexford@gmail.com','0000',727,1060082921,'Rand_Rexford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (616,'Lew','Alek','Lew_Alek@gmail.com','0000',811,1074588706,'Lew_Alek');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (617,'Cleo','Jarrod','Cleo_Jarrod@gmail.com','0000',318,1097314027,'Cleo_Jarrod');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (618,'Morgan','Ronny','Morgan_Ronny@gmail.com','0000',865,1091475164,'Morgan_Ronny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (619,'Cordaro','Boysie','Cordaro_Boysie@gmail.com','0000',493,1061413746,'Cordaro_Boysie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (620,'Hampton','Garry','Hampton_Garry@gmail.com','0000',445,1046411606,'Hampton_Garry');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (621,'Torrence','Darwyn','Torrence_Darwyn@gmail.com','0000',398,1064620267,'Torrence_Darwyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (622,'Hattie','Mateo','Hattie_Mateo@gmail.com','0000',808,1079051704,'Hattie_Mateo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (623,'Ben','Elmore','Ben_Elmore@gmail.com','0000',297,1016866612,'Ben_Elmore');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (624,'Wyman','Issac','Wyman_Issac@gmail.com','0000',791,1055395646,'Wyman_Issac');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (625,'Gilbert','Dustin','Gilbert_Dustin@gmail.com','0000',572,1021144414,'Gilbert_Dustin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (626,'Aron','Harl','Aron_Harl@gmail.com','0000',600,1079771922,'Aron_Harl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (627,'John','Mervyn','John_Mervyn@gmail.com','0000',719,1013156324,'John_Mervyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (628,'Scottie','Percy','Scottie_Percy@gmail.com','0000',338,1005531800,'Scottie_Percy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (629,'Hansel','Davis','Hansel_Davis@gmail.com','0000',70,1069867178,'Hansel_Davis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (630,'Hector','Dijon','Hector_Dijon@gmail.com','0000',769,1001392906,'Hector_Dijon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (631,'Irene','Mike','Irene_Mike@gmail.com','0000',268,1087974829,'Irene_Mike');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (632,'Dustan','Fritz','Dustan_Fritz@gmail.com','0000',734,1052103395,'Dustan_Fritz');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (633,'Shon','Hyman','Shon_Hyman@gmail.com','0000',249,1095125160,'Shon_Hyman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (634,'Sid','Fate','Sid_Fate@gmail.com','0000',699,1035169383,'Sid_Fate');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (635,'Arjun','Brody','Arjun_Brody@gmail.com','0000',479,1097788140,'Arjun_Brody');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (636,'Skylar','Brice','Skylar_Brice@gmail.com','0000',362,1087328130,'Skylar_Brice');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (637,'Khalid','Elvie','Khalid_Elvie@gmail.com','0000',191,1020358956,'Khalid_Elvie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (638,'Reynaldo','Demetri','Reynaldo_Demetri@gmail.com','0000',705,1008449019,'Reynaldo_Demetri');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (639,'Blaise','Keshawn','Blaise_Keshawn@gmail.com','0000',128,1019012789,'Blaise_Keshawn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (640,'Edsel','Martin','Edsel_Martin@gmail.com','0000',635,1063608708,'Edsel_Martin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (641,'Domenico','Hubbard','Domenico_Hubbard@gmail.com','0000',382,1078888838,'Domenico_Hubbard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (642,'Rhys','Quinten','Rhys_Quinten@gmail.com','0000',604,1087524235,'Rhys_Quinten');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (643,'Rubin','Shyheim','Rubin_Shyheim@gmail.com','0000',601,1028827806,'Rubin_Shyheim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (644,'Antonio','Huy','Antonio_Huy@gmail.com','0000',641,1040855819,'Antonio_Huy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (645,'Keion','Boyd','Keion_Boyd@gmail.com','0000',79,1014333275,'Keion_Boyd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (646,'Adlai','Ebert','Adlai_Ebert@gmail.com','0000',646,1063179468,'Adlai_Ebert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (647,'Adan','Dakotah','Adan_Dakotah@gmail.com','0000',526,1082648701,'Adan_Dakotah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (648,'Cohen','Merl','Cohen_Merl@gmail.com','0000',785,1059350466,'Cohen_Merl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (649,'Hurbert','Sammie','Hurbert_Sammie@gmail.com','0000',300,1047793516,'Hurbert_Sammie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (650,'Shane','Jensen','Shane_Jensen@gmail.com','0000',170,1040289602,'Shane_Jensen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (651,'Santiago','Jule','Santiago_Jule@gmail.com','0000',860,1080039041,'Santiago_Jule');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (652,'Malachi','Pasquale','Malachi_Pasquale@gmail.com','0000',322,1057184340,'Malachi_Pasquale');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (653,'Isadore','Osie','Isadore_Osie@gmail.com','0000',887,1004873520,'Isadore_Osie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (654,'Horacio','Shay','Horacio_Shay@gmail.com','0000',300,1045388989,'Horacio_Shay');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (655,'Semaj','Ballard','Semaj_Ballard@gmail.com','0000',124,1034324318,'Semaj_Ballard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (656,'Rosa','Hubert','Rosa_Hubert@gmail.com','0000',567,1034978826,'Rosa_Hubert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (657,'Kaye','Knute','Kaye_Knute@gmail.com','0000',454,1016741352,'Kaye_Knute');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (658,'Ivan','Percival','Ivan_Percival@gmail.com','0000',662,1095027525,'Ivan_Percival');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (659,'Goebel','Delos','Goebel_Delos@gmail.com','0000',734,1038295922,'Goebel_Delos');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (660,'Tristian','Hilmer','Tristian_Hilmer@gmail.com','0000',308,1067708220,'Tristian_Hilmer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (661,'Nick','Anton','Nick_Anton@gmail.com','0000',172,1083714282,'Nick_Anton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (662,'Gunnar','Benjamin','Gunnar_Benjamin@gmail.com','0000',856,1075635181,'Gunnar_Benjamin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (663,'Milburn','Rico','Milburn_Rico@gmail.com','0000',893,1049241747,'Milburn_Rico');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (664,'Commodore','Gale','Commodore_Gale@gmail.com','0000',132,1004178206,'Commodore_Gale');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (665,'Korey','Opal','Korey_Opal@gmail.com','0000',344,1020175964,'Korey_Opal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (666,'Arlie','Brion','Arlie_Brion@gmail.com','0000',296,1097408726,'Arlie_Brion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (667,'Con','Rick','Con_Rick@gmail.com','0000',600,1031970578,'Con_Rick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (668,'Leo','Nels','Leo_Nels@gmail.com','0000',461,1029862799,'Leo_Nels');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (669,'Tyrin','Lincoln','Tyrin_Lincoln@gmail.com','0000',728,1098025935,'Tyrin_Lincoln');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (670,'Zachary','Braden','Zachary_Braden@gmail.com','0000',549,1039798366,'Zachary_Braden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (671,'Tyshawn','Ewing','Tyshawn_Ewing@gmail.com','0000',597,1050473569,'Tyshawn_Ewing');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (672,'Dow','Eliot','Dow_Eliot@gmail.com','0000',226,1038573071,'Dow_Eliot');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (673,'Harmon','Daryl','Harmon_Daryl@gmail.com','0000',656,1032507268,'Harmon_Daryl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (674,'Shafter','Lonny','Shafter_Lonny@gmail.com','0000',194,1096613012,'Shafter_Lonny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (675,'Cosmo','Zackery','Cosmo_Zackery@gmail.com','0000',189,1003473938,'Cosmo_Zackery');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (676,'Damari','Margarito','Damari_Margarito@gmail.com','0000',923,1070923257,'Damari_Margarito');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (677,'Fielding','Conley','Fielding_Conley@gmail.com','0000',37,1016918185,'Fielding_Conley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (678,'Zack','Laurie','Zack_Laurie@gmail.com','0000',202,1069328072,'Zack_Laurie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (679,'Cason','Michael','Cason_Michael@gmail.com','0000',287,1086206673,'Cason_Michael');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (680,'Almer','Garrick','Almer_Garrick@gmail.com','0000',884,1090665346,'Almer_Garrick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (681,'Vivian','Efren','Vivian_Efren@gmail.com','0000',245,1098645050,'Vivian_Efren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (682,'Sean','Isham','Sean_Isham@gmail.com','0000',920,1086739095,'Sean_Isham');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (683,'Wilburn','Darin','Wilburn_Darin@gmail.com','0000',428,1027776083,'Wilburn_Darin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (684,'Bethel','Chesley','Bethel_Chesley@gmail.com','0000',460,1040637448,'Bethel_Chesley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (685,'Jemal','Martha','Jemal_Martha@gmail.com','0000',463,1094656993,'Jemal_Martha');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (686,'Jacoby','Watson','Jacoby_Watson@gmail.com','0000',890,1078871778,'Jacoby_Watson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (687,'Cary','Lyman','Cary_Lyman@gmail.com','0000',788,1071741302,'Cary_Lyman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (688,'Huston','Ruben','Huston_Ruben@gmail.com','0000',68,1029249840,'Huston_Ruben');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (689,'Crockett','Kenji','Crockett_Kenji@gmail.com','0000',511,1037149920,'Crockett_Kenji');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (690,'Darrian','Stanford','Darrian_Stanford@gmail.com','0000',534,1061311729,'Darrian_Stanford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (691,'Christ','Luis','Christ_Luis@gmail.com','0000',210,1089989240,'Christ_Luis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (692,'Donavan','Dee','Donavan_Dee@gmail.com','0000',777,1032490360,'Donavan_Dee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (693,'Tilman','Milford','Tilman_Milford@gmail.com','0000',351,1021232204,'Tilman_Milford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (694,'Verlyn','Webster','Verlyn_Webster@gmail.com','0000',617,1063323539,'Verlyn_Webster');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (695,'Nasir','Trystan','Nasir_Trystan@gmail.com','0000',917,1078614655,'Nasir_Trystan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (696,'Jedidiah','Alton','Jedidiah_Alton@gmail.com','0000',499,1024987417,'Jedidiah_Alton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (697,'Adelbert','Elon','Adelbert_Elon@gmail.com','0000',308,1067711812,'Adelbert_Elon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (698,'Burnice','Jordy','Burnice_Jordy@gmail.com','0000',974,1063231343,'Burnice_Jordy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (699,'Garrett','Isom','Garrett_Isom@gmail.com','0000',839,1083867693,'Garrett_Isom');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (700,'Willard','Erastus','Willard_Erastus@gmail.com','0000',703,1010064757,'Willard_Erastus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (701,'Ewart','Davonte','Ewart_Davonte@gmail.com','0000',686,1033103154,'Ewart_Davonte');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (702,'Wilbert','Damarion','Wilbert_Damarion@gmail.com','0000',25,1054313340,'Wilbert_Damarion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (703,'Fredric','Derl','Fredric_Derl@gmail.com','0000',930,1035967389,'Fredric_Derl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (704,'Shellie','Buren','Shellie_Buren@gmail.com','0000',869,1043352831,'Shellie_Buren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (705,'Oscar','Arvid','Oscar_Arvid@gmail.com','0000',506,1080363844,'Oscar_Arvid');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (706,'Bobby','Junior','Bobby_Junior@gmail.com','0000',794,1053907705,'Bobby_Junior');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (707,'Kirk','Vinson','Kirk_Vinson@gmail.com','0000',901,1007372844,'Kirk_Vinson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (708,'Henri','Sherman','Henri_Sherman@gmail.com','0000',432,1032458555,'Henri_Sherman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (709,'Ernest','Jadyn','Ernest_Jadyn@gmail.com','0000',566,1032923016,'Ernest_Jadyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (710,'Cecil','Kyree','Cecil_Kyree@gmail.com','0000',268,1020073619,'Cecil_Kyree');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (711,'Buddy','Clarance','Buddy_Clarance@gmail.com','0000',145,1084740638,'Buddy_Clarance');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (712,'Moses','Rowland','Moses_Rowland@gmail.com','0000',388,1049971170,'Moses_Rowland');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (713,'Kyler','Gerardo','Kyler_Gerardo@gmail.com','0000',838,1010699324,'Kyler_Gerardo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (714,'Cassie','Almon','Cassie_Almon@gmail.com','0000',501,1040922626,'Cassie_Almon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (715,'Gustave','Godfrey','Gustave_Godfrey@gmail.com','0000',33,1087973185,'Gustave_Godfrey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (716,'Davey','Kieran','Davey_Kieran@gmail.com','0000',683,1061067177,'Davey_Kieran');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (717,'Jerrad','Shannon','Jerrad_Shannon@gmail.com','0000',754,1015638803,'Jerrad_Shannon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (718,'Jessica','Forrest','Jessica_Forrest@gmail.com','0000',717,1016970158,'Jessica_Forrest');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (719,'Alexandro','Javen','Alexandro_Javen@gmail.com','0000',783,1054414364,'Alexandro_Javen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (720,'June','Dwane','June_Dwane@gmail.com','0000',721,1026032477,'June_Dwane');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (721,'Windell','Landyn','Windell_Landyn@gmail.com','0000',474,1094034204,'Windell_Landyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (722,'Talmage','Wilford','Talmage_Wilford@gmail.com','0000',936,1018014584,'Talmage_Wilford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (723,'Avery','Marty','Avery_Marty@gmail.com','0000',692,1069237887,'Avery_Marty');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (724,'Emry','Deron','Emry_Deron@gmail.com','0000',957,1003941213,'Emry_Deron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (725,'Cora','Alvan','Cora_Alvan@gmail.com','0000',603,1047860183,'Cora_Alvan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (726,'Champ','Deontae','Champ_Deontae@gmail.com','0000',609,1012536965,'Champ_Deontae');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (727,'Arley','Kelan','Arley_Kelan@gmail.com','0000',199,1024556177,'Arley_Kelan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (728,'Lovell','Alpheus','Lovell_Alpheus@gmail.com','0000',410,1095497121,'Lovell_Alpheus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (729,'Tyquan','Russel','Tyquan_Russel@gmail.com','0000',774,1068894282,'Tyquan_Russel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (730,'Roberto','Jarrett','Roberto_Jarrett@gmail.com','0000',192,1020372274,'Roberto_Jarrett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (731,'Kameron','Austen','Kameron_Austen@gmail.com','0000',232,1072943873,'Kameron_Austen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (732,'Elijah','Offie','Elijah_Offie@gmail.com','0000',5,1062687199,'Elijah_Offie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (733,'Deante','Santos','Deante_Santos@gmail.com','0000',892,1086523975,'Deante_Santos');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (734,'Lupe','Jamar','Lupe_Jamar@gmail.com','0000',813,1046483127,'Lupe_Jamar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (735,'Franklin','Lionel','Franklin_Lionel@gmail.com','0000',612,1001261699,'Franklin_Lionel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (736,'Freddie','Guilford','Freddie_Guilford@gmail.com','0000',194,1076428176,'Freddie_Guilford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (737,'Marco','Tod','Marco_Tod@gmail.com','0000',688,1015606361,'Marco_Tod');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (738,'Spurgeon','Daulton','Spurgeon_Daulton@gmail.com','0000',527,1060248360,'Spurgeon_Daulton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (739,'Maury','Fuller','Maury_Fuller@gmail.com','0000',966,1046392435,'Maury_Fuller');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (740,'Raymond','Soren','Raymond_Soren@gmail.com','0000',211,1054601620,'Raymond_Soren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (741,'Arnold','Giuseppe','Arnold_Giuseppe@gmail.com','0000',377,1056285269,'Arnold_Giuseppe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (742,'Rian','Evander','Rian_Evander@gmail.com','0000',335,1019973510,'Rian_Evander');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (743,'Gaither','Lillie','Gaither_Lillie@gmail.com','0000',408,1060403117,'Gaither_Lillie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (744,'Antwon','Rollin','Antwon_Rollin@gmail.com','0000',877,1003090582,'Antwon_Rollin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (745,'Chaim','Sabastian','Chaim_Sabastian@gmail.com','0000',746,1051573310,'Chaim_Sabastian');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (746,'Tavion','Devin','Tavion_Devin@gmail.com','0000',821,1090710407,'Tavion_Devin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (747,'Theadore','Verlin','Theadore_Verlin@gmail.com','0000',739,1059923721,'Theadore_Verlin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (748,'Admiral','Debra','Admiral_Debra@gmail.com','0000',803,1029729692,'Admiral_Debra');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (749,'Alexzander','Laverne','Alexzander_Laverne@gmail.com','0000',991,1040931275,'Alexzander_Laverne');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (750,'Severt','Ebb','Severt_Ebb@gmail.com','0000',452,1008104080,'Severt_Ebb');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (751,'Taurean','Fleming','Taurean_Fleming@gmail.com','0000',447,1094345363,'Taurean_Fleming');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (752,'Braulio','Jamison','Braulio_Jamison@gmail.com','0000',593,1043328772,'Braulio_Jamison');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (753,'Kareem','Kamron','Kareem_Kamron@gmail.com','0000',287,1055755270,'Kareem_Kamron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (754,'Arne','Wade','Arne_Wade@gmail.com','0000',751,1030314262,'Arne_Wade');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (755,'Lisa','Goldie','Lisa_Goldie@gmail.com','0000',72,1016004462,'Lisa_Goldie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (756,'Simon','Aaden','Simon_Aaden@gmail.com','0000',255,1030866106,'Simon_Aaden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (757,'Adriel','Kason','Adriel_Kason@gmail.com','0000',86,1065925463,'Adriel_Kason');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (758,'Orrin','Posey','Orrin_Posey@gmail.com','0000',45,1069108501,'Orrin_Posey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (759,'Raoul','Jaren','Raoul_Jaren@gmail.com','0000',624,1009225606,'Raoul_Jaren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (760,'Austin','Leroy','Austin_Leroy@gmail.com','0000',839,1038157961,'Austin_Leroy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (761,'Pleas','Taft','Pleas_Taft@gmail.com','0000',771,1022595068,'Pleas_Taft');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (762,'Osvaldo','Wing','Osvaldo_Wing@gmail.com','0000',834,1070523681,'Osvaldo_Wing');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (763,'Daisy','Theophile','Daisy_Theophile@gmail.com','0000',431,1037673700,'Daisy_Theophile');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (764,'Conard','Baxter','Conard_Baxter@gmail.com','0000',312,1075511519,'Conard_Baxter');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (765,'Will','Theodis','Will_Theodis@gmail.com','0000',233,1019786051,'Will_Theodis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (766,'Obie','Arnav','Obie_Arnav@gmail.com','0000',1,1089720957,'Obie_Arnav');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (767,'Micky','Tim','Micky_Tim@gmail.com','0000',622,1030874123,'Micky_Tim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (768,'Bartley','Erasmo','Bartley_Erasmo@gmail.com','0000',230,1032955878,'Bartley_Erasmo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (769,'Carmine','Shamar','Carmine_Shamar@gmail.com','0000',230,1073365115,'Carmine_Shamar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (770,'Woody','Dequan','Woody_Dequan@gmail.com','0000',444,1001118336,'Woody_Dequan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (771,'Clinton','Candido','Clinton_Candido@gmail.com','0000',474,1065702422,'Clinton_Candido');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (772,'Burleigh','Elie','Burleigh_Elie@gmail.com','0000',302,1006003455,'Burleigh_Elie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (773,'Marcel','Chauncey','Marcel_Chauncey@gmail.com','0000',85,1035038832,'Marcel_Chauncey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (774,'Erland','Jamie','Erland_Jamie@gmail.com','0000',294,1030649477,'Erland_Jamie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (775,'Emit','Ferrell','Emit_Ferrell@gmail.com','0000',44,1003899197,'Emit_Ferrell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (776,'Alvy','Jed','Alvy_Jed@gmail.com','0000',717,1008637694,'Alvy_Jed');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (777,'Wenzel','Sidney','Wenzel_Sidney@gmail.com','0000',422,1026535724,'Wenzel_Sidney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (778,'Ott','Glendon','Ott_Glendon@gmail.com','0000',694,1095862796,'Ott_Glendon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (779,'Colt','Garnet','Colt_Garnet@gmail.com','0000',878,1044723957,'Colt_Garnet');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (780,'Lemon','Jair','Lemon_Jair@gmail.com','0000',892,1051208721,'Lemon_Jair');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (781,'Davante','Robb','Davante_Robb@gmail.com','0000',63,1055652689,'Davante_Robb');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (782,'Davy','Jaydin','Davy_Jaydin@gmail.com','0000',797,1081510641,'Davy_Jaydin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (783,'Bentley','Vernon','Bentley_Vernon@gmail.com','0000',250,1098539232,'Bentley_Vernon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (784,'Ananias','Sheldon','Ananias_Sheldon@gmail.com','0000',146,1042330800,'Ananias_Sheldon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (785,'Karter','Clara','Karter_Clara@gmail.com','0000',825,1011295525,'Karter_Clara');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (786,'Grace','Maceo','Grace_Maceo@gmail.com','0000',888,1024635959,'Grace_Maceo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (787,'Roll','Kristen','Roll_Kristen@gmail.com','0000',194,1042916373,'Roll_Kristen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (788,'Randy','Torry','Randy_Torry@gmail.com','0000',480,1063669650,'Randy_Torry');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (789,'Ellsworth','Bernie','Ellsworth_Bernie@gmail.com','0000',402,1062088773,'Ellsworth_Bernie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (790,'Adrain','Aurelio','Adrain_Aurelio@gmail.com','0000',5,1034469474,'Adrain_Aurelio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (791,'Valentin','Attilio','Valentin_Attilio@gmail.com','0000',842,1080845127,'Valentin_Attilio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (792,'Darrin','Jean','Darrin_Jean@gmail.com','0000',857,1057071715,'Darrin_Jean');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (793,'Dorothy','Ahmad','Dorothy_Ahmad@gmail.com','0000',639,1040118413,'Dorothy_Ahmad');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (794,'Woodrow','Hill','Woodrow_Hill@gmail.com','0000',58,1039617651,'Woodrow_Hill');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (795,'Adolphus','Jaidyn','Adolphus_Jaidyn@gmail.com','0000',471,1042047254,'Adolphus_Jaidyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (796,'Teddie','Stanley','Teddie_Stanley@gmail.com','0000',405,1046442530,'Teddie_Stanley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (797,'Bud','Flint','Bud_Flint@gmail.com','0000',233,1045302347,'Bud_Flint');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (798,'Lydell','Ariel','Lydell_Ariel@gmail.com','0000',680,1082968550,'Lydell_Ariel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (799,'Vernal','Marshal','Vernal_Marshal@gmail.com','0000',940,1066883094,'Vernal_Marshal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (800,'Kiara','Xzavier','Kiara_Xzavier@gmail.com','0000',594,1076502194,'Kiara_Xzavier');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (801,'Ezell','Harper','Ezell_Harper@gmail.com','0000',834,1067813499,'Ezell_Harper');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (802,'Hakim','Danial','Hakim_Danial@gmail.com','0000',5,1069703568,'Hakim_Danial');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (803,'Armando','Dale','Armando_Dale@gmail.com','0000',454,1039598408,'Armando_Dale');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (804,'Xavier','George','Xavier_George@gmail.com','0000',521,1072998776,'Xavier_George');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (805,'Wm','Lorne','Wm_Lorne@gmail.com','0000',911,1067456237,'Wm_Lorne');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (806,'Graves','Bert','Graves_Bert@gmail.com','0000',776,1012631738,'Graves_Bert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (807,'Adin','Messiah','Adin_Messiah@gmail.com','0000',982,1043930063,'Adin_Messiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (808,'Rayfield','Emiliano','Rayfield_Emiliano@gmail.com','0000',269,1060532426,'Rayfield_Emiliano');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (809,'Avon','Randle','Avon_Randle@gmail.com','0000',342,1062819882,'Avon_Randle');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (810,'Rickie','Joesph','Rickie_Joesph@gmail.com','0000',715,1070187963,'Rickie_Joesph');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (811,'Zigmund','Syed','Zigmund_Syed@gmail.com','0000',114,1070127740,'Zigmund_Syed');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (812,'Nat','Hugh','Nat_Hugh@gmail.com','0000',9,1060107768,'Nat_Hugh');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (813,'Israel','Gorden','Israel_Gorden@gmail.com','0000',680,1020033074,'Israel_Gorden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (814,'Alger','Carter','Alger_Carter@gmail.com','0000',344,1046375880,'Alger_Carter');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (815,'Lance','Darvin','Lance_Darvin@gmail.com','0000',365,1020751426,'Lance_Darvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (816,'Jeff','Isidro','Jeff_Isidro@gmail.com','0000',33,1068758362,'Jeff_Isidro');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (817,'Antoine','Reagan','Antoine_Reagan@gmail.com','0000',982,1029317796,'Antoine_Reagan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (818,'Javier','Blas','Javier_Blas@gmail.com','0000',416,1023844415,'Javier_Blas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (819,'Hershel','Coleton','Hershel_Coleton@gmail.com','0000',79,1073560301,'Hershel_Coleton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (820,'Bessie','Chip','Bessie_Chip@gmail.com','0000',569,1072366693,'Bessie_Chip');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (821,'Wells','Reginald','Wells_Reginald@gmail.com','0000',176,1023158696,'Wells_Reginald');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (822,'Dillan','Phillip','Dillan_Phillip@gmail.com','0000',896,1001715364,'Dillan_Phillip');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (823,'Silas','Jude','Silas_Jude@gmail.com','0000',134,1078477837,'Silas_Jude');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (824,'Hosie','Alexis','Hosie_Alexis@gmail.com','0000',750,1035833642,'Hosie_Alexis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (825,'Herb','Kamden','Herb_Kamden@gmail.com','0000',83,1022703834,'Herb_Kamden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (826,'Iverson','Seward','Iverson_Seward@gmail.com','0000',143,1076212111,'Iverson_Seward');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (827,'Edmund','Giovanny','Edmund_Giovanny@gmail.com','0000',237,1014125268,'Edmund_Giovanny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (828,'Josue','Blanche','Josue_Blanche@gmail.com','0000',895,1093812589,'Josue_Blanche');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (829,'Martell','Randel','Martell_Randel@gmail.com','0000',321,1022683230,'Martell_Randel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (830,'Mohamed','Deric','Mohamed_Deric@gmail.com','0000',599,1040066376,'Mohamed_Deric');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (831,'Dorris','Braiden','Dorris_Braiden@gmail.com','0000',849,1073594011,'Dorris_Braiden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (832,'Prince','Micah','Prince_Micah@gmail.com','0000',913,1083113171,'Prince_Micah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (833,'Darold','Eula','Darold_Eula@gmail.com','0000',897,1025605791,'Darold_Eula');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (834,'Alec','Polk','Alec_Polk@gmail.com','0000',38,1095170827,'Alec_Polk');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (835,'Ritchie','Simpson','Ritchie_Simpson@gmail.com','0000',426,1079795712,'Ritchie_Simpson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (836,'Ervin','Perley','Ervin_Perley@gmail.com','0000',21,1009726408,'Ervin_Perley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (837,'Chase','Easton','Chase_Easton@gmail.com','0000',194,1038279636,'Chase_Easton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (838,'Jonah','Geovanni','Jonah_Geovanni@gmail.com','0000',992,1039263373,'Jonah_Geovanni');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (839,'Grafton','Faustino','Grafton_Faustino@gmail.com','0000',619,1081017334,'Grafton_Faustino');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (840,'Dewey','Oris','Dewey_Oris@gmail.com','0000',829,1069498340,'Dewey_Oris');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (841,'Wilmer','Hope','Wilmer_Hope@gmail.com','0000',562,1047804309,'Wilmer_Hope');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (842,'Giovanni','Plummer','Giovanni_Plummer@gmail.com','0000',204,1041723946,'Giovanni_Plummer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (843,'Hilario','Gail','Hilario_Gail@gmail.com','0000',416,1071083895,'Hilario_Gail');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (844,'Jase','Edmon','Jase_Edmon@gmail.com','0000',559,1081053010,'Jase_Edmon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (845,'Regan','Terance','Regan_Terance@gmail.com','0000',934,1065401101,'Regan_Terance');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (846,'Tyrell','Aydan','Tyrell_Aydan@gmail.com','0000',952,1003183173,'Tyrell_Aydan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (847,'Bryson','Emilio','Bryson_Emilio@gmail.com','0000',987,1023511961,'Bryson_Emilio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (848,'Hudson','Arlo','Hudson_Arlo@gmail.com','0000',94,1089644944,'Hudson_Arlo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (849,'Cris','Rylee','Cris_Rylee@gmail.com','0000',980,1076805942,'Cris_Rylee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (850,'Dangelo','Guthrie','Dangelo_Guthrie@gmail.com','0000',451,1031653139,'Dangelo_Guthrie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (851,'Sawyer','Geoff','Sawyer_Geoff@gmail.com','0000',364,1061136791,'Sawyer_Geoff');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (852,'Burley','Wellington','Burley_Wellington@gmail.com','0000',27,1096054540,'Burley_Wellington');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (853,'Denzil','Charls','Denzil_Charls@gmail.com','0000',970,1076024460,'Denzil_Charls');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (854,'Hartley','Levie','Hartley_Levie@gmail.com','0000',548,1057156268,'Hartley_Levie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (855,'Seneca','Samie','Seneca_Samie@gmail.com','0000',803,1013089517,'Seneca_Samie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (856,'Ellison','Mace','Ellison_Mace@gmail.com','0000',83,1082269028,'Ellison_Mace');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (857,'Ruel','Thurman','Ruel_Thurman@gmail.com','0000',605,1058948180,'Ruel_Thurman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (858,'Bobbie','Keven','Bobbie_Keven@gmail.com','0000',474,1075844998,'Bobbie_Keven');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (859,'Lawyer','Westley','Lawyer_Westley@gmail.com','0000',20,1023215859,'Lawyer_Westley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (860,'Governor','Karson','Governor_Karson@gmail.com','0000',956,1004153788,'Governor_Karson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (861,'Leonce','Dameon','Leonce_Dameon@gmail.com','0000',935,1040521600,'Leonce_Dameon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (862,'Melvyn','Ell','Melvyn_Ell@gmail.com','0000',841,1087481434,'Melvyn_Ell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (863,'Lenny','Adolf','Lenny_Adolf@gmail.com','0000',612,1010344749,'Lenny_Adolf');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (864,'Bennie','Jep','Bennie_Jep@gmail.com','0000',630,1030128267,'Bennie_Jep');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (865,'Elonzo','Mario','Elonzo_Mario@gmail.com','0000',882,1068204182,'Elonzo_Mario');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (866,'Owen','Julius','Owen_Julius@gmail.com','0000',853,1042811634,'Owen_Julius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (867,'Yandel','Noble','Yandel_Noble@gmail.com','0000',713,1023024670,'Yandel_Noble');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (868,'Primus','Vera','Primus_Vera@gmail.com','0000',23,1003074324,'Primus_Vera');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (869,'Dexter','Jesus','Dexter_Jesus@gmail.com','0000',484,1087059949,'Dexter_Jesus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (870,'Brenden','Kennedy','Brenden_Kennedy@gmail.com','0000',223,1097953400,'Brenden_Kennedy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (871,'Mohammed','King','Mohammed_King@gmail.com','0000',52,1035013836,'Mohammed_King');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (872,'Guillermo','Myrl','Guillermo_Myrl@gmail.com','0000',576,1082529066,'Guillermo_Myrl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (873,'Worley','Jesse','Worley_Jesse@gmail.com','0000',860,1041412245,'Worley_Jesse');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (874,'Trever','Alonso','Trever_Alonso@gmail.com','0000',142,1071795437,'Trever_Alonso');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (875,'Handy','Aedan','Handy_Aedan@gmail.com','0000',835,1014562994,'Handy_Aedan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (876,'Tarik','Montgomery','Tarik_Montgomery@gmail.com','0000',39,1065345279,'Tarik_Montgomery');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (877,'Rayburn','Kenneth','Rayburn_Kenneth@gmail.com','0000',740,1046954515,'Rayburn_Kenneth');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (878,'Garner','Christion','Garner_Christion@gmail.com','0000',517,1083184115,'Garner_Christion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (879,'Zander','Erasmus','Zander_Erasmus@gmail.com','0000',185,1075939475,'Zander_Erasmus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (880,'Cory','Gage','Cory_Gage@gmail.com','0000',150,1010045723,'Cory_Gage');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (881,'Humphrey','Giancarlo','Humphrey_Giancarlo@gmail.com','0000',105,1043317074,'Humphrey_Giancarlo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (882,'Virginia','Camryn','Virginia_Camryn@gmail.com','0000',988,1084187625,'Virginia_Camryn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (883,'Needham','Mel','Needham_Mel@gmail.com','0000',319,1023563743,'Needham_Mel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (884,'Barrie','Keon','Barrie_Keon@gmail.com','0000',421,1097102314,'Barrie_Keon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (885,'Hobart','Roel','Hobart_Roel@gmail.com','0000',682,1046664089,'Hobart_Roel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (886,'Kendall','Raymundo','Kendall_Raymundo@gmail.com','0000',412,1066765710,'Kendall_Raymundo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (887,'Jonathon','Jonathan','Jonathon_Jonathan@gmail.com','0000',456,1095355229,'Jonathon_Jonathan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (888,'Redden','Ferris','Redden_Ferris@gmail.com','0000',721,1071377321,'Redden_Ferris');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (889,'Auguste','Dozier','Auguste_Dozier@gmail.com','0000',524,1038120248,'Auguste_Dozier');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (890,'Waldemar','Napoleon','Waldemar_Napoleon@gmail.com','0000',871,1017128687,'Waldemar_Napoleon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (891,'Jame','Kerry','Jame_Kerry@gmail.com','0000',266,1076570821,'Jame_Kerry');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (892,'Ryland','Anna','Ryland_Anna@gmail.com','0000',547,1006430854,'Ryland_Anna');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (893,'Alice','Marcelino','Alice_Marcelino@gmail.com','0000',570,1011063546,'Alice_Marcelino');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (894,'Edson','Merlyn','Edson_Merlyn@gmail.com','0000',887,1012398071,'Edson_Merlyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (895,'Corwin','Alessandro','Corwin_Alessandro@gmail.com','0000',103,1015086231,'Corwin_Alessandro');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (896,'Alvaro','Alphons','Alvaro_Alphons@gmail.com','0000',611,1076849143,'Alvaro_Alphons');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (897,'Benjaman','Cesar','Benjaman_Cesar@gmail.com','0000',60,1094083169,'Benjaman_Cesar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (898,'Gerrit','Eustace','Gerrit_Eustace@gmail.com','0000',36,1042276233,'Gerrit_Eustace');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (899,'Brendan','Coley','Brendan_Coley@gmail.com','0000',167,1076944165,'Brendan_Coley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (900,'Roddy','Nicholas','Roddy_Nicholas@gmail.com','0000',957,1012415058,'Roddy_Nicholas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (901,'Deborah','Otis','Deborah_Otis@gmail.com','0000',213,1008270838,'Deborah_Otis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (902,'Donn','Colby','Donn_Colby@gmail.com','0000',153,1045630516,'Donn_Colby');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (903,'Pate','Esta','Pate_Esta@gmail.com','0000',237,1068204850,'Pate_Esta');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (904,'Carlisle','Annie','Carlisle_Annie@gmail.com','0000',792,1014894194,'Carlisle_Annie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (905,'Marc','Norton','Marc_Norton@gmail.com','0000',544,1074638082,'Marc_Norton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (906,'Matteo','Colvin','Matteo_Colvin@gmail.com','0000',273,1038569962,'Matteo_Colvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (907,'Roby','Willam','Roby_Willam@gmail.com','0000',711,1042184530,'Roby_Willam');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (908,'Maximus','Eliga','Maximus_Eliga@gmail.com','0000',439,1048565651,'Maximus_Eliga');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (909,'Rowan','Roland','Rowan_Roland@gmail.com','0000',233,1094818863,'Rowan_Roland');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (910,'Rudolf','Jermey','Rudolf_Jermey@gmail.com','0000',217,1027893116,'Rudolf_Jermey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (911,'Octavius','Deonte','Octavius_Deonte@gmail.com','0000',993,1017449701,'Octavius_Deonte');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (912,'Keshaun','Phil','Keshaun_Phil@gmail.com','0000',15,1061306572,'Keshaun_Phil');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (913,'Severo','Enrico','Severo_Enrico@gmail.com','0000',124,1037324898,'Severo_Enrico');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (914,'Lovie','Turner','Lovie_Turner@gmail.com','0000',203,1008492258,'Lovie_Turner');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (915,'Dion','Loyd','Dion_Loyd@gmail.com','0000',972,1035152078,'Dion_Loyd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (916,'Raekwon','Santo','Raekwon_Santo@gmail.com','0000',364,1064395625,'Raekwon_Santo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (917,'Jaylen','Jeb','Jaylen_Jeb@gmail.com','0000',41,1083996221,'Jaylen_Jeb');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (918,'Cayden','Ken','Cayden_Ken@gmail.com','0000',429,1011060563,'Cayden_Ken');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (919,'Romie','Rashaan','Romie_Rashaan@gmail.com','0000',807,1075103279,'Romie_Rashaan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (920,'Esteban','Tony','Esteban_Tony@gmail.com','0000',478,1093006131,'Esteban_Tony');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (921,'Alford','Ferd','Alford_Ferd@gmail.com','0000',133,1075615569,'Alford_Ferd');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (922,'Artie','Samir','Artie_Samir@gmail.com','0000',384,1087344689,'Artie_Samir');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (923,'Barnett','Normand','Barnett_Normand@gmail.com','0000',171,1059653271,'Barnett_Normand');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (924,'Nunzio','Derrek','Nunzio_Derrek@gmail.com','0000',364,1051810580,'Nunzio_Derrek');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (925,'Gilmore','Kade','Gilmore_Kade@gmail.com','0000',505,1056931872,'Gilmore_Kade');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (926,'Dewitt','Paxton','Dewitt_Paxton@gmail.com','0000',452,1070284891,'Dewitt_Paxton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (927,'Eugene','Daryle','Eugene_Daryle@gmail.com','0000',843,1089489402,'Eugene_Daryle');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (928,'Bynum','Royce','Bynum_Royce@gmail.com','0000',683,1012377292,'Bynum_Royce');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (929,'Donnell','Math','Donnell_Math@gmail.com','0000',787,1031224839,'Donnell_Math');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (930,'Adalberto','Daquan','Adalberto_Daquan@gmail.com','0000',215,1039173037,'Adalberto_Daquan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (931,'Harlow','Mariano','Harlow_Mariano@gmail.com','0000',317,1014988926,'Harlow_Mariano');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (932,'Stephanie','Javion','Stephanie_Javion@gmail.com','0000',604,1074369655,'Stephanie_Javion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (933,'Tommy','Payton','Tommy_Payton@gmail.com','0000',291,1088027425,'Tommy_Payton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (934,'Dickie','Kennard','Dickie_Kennard@gmail.com','0000',498,1099229878,'Dickie_Kennard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (935,'Irl','Donna','Irl_Donna@gmail.com','0000',138,1072997811,'Irl_Donna');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (936,'Casimer','Bunk','Casimer_Bunk@gmail.com','0000',550,1074537161,'Casimer_Bunk');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (937,'Willian','Korbin','Willian_Korbin@gmail.com','0000',45,1059887978,'Willian_Korbin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (938,'Barry','Orlo','Barry_Orlo@gmail.com','0000',332,1083120027,'Barry_Orlo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (939,'Jody','Stephan','Jody_Stephan@gmail.com','0000',652,1035947428,'Jody_Stephan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (940,'Bernice','Verle','Bernice_Verle@gmail.com','0000',362,1058337066,'Bernice_Verle');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (941,'Mauricio','Gaylen','Mauricio_Gaylen@gmail.com','0000',254,1055250106,'Mauricio_Gaylen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (942,'Hobson','Shemar','Hobson_Shemar@gmail.com','0000',667,1022304166,'Hobson_Shemar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (943,'Donavon','Axel','Donavon_Axel@gmail.com','0000',899,1022169908,'Donavon_Axel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (944,'Dondre','Braeden','Dondre_Braeden@gmail.com','0000',593,1044326584,'Dondre_Braeden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (945,'Jessy','Arden','Jessy_Arden@gmail.com','0000',368,1008887294,'Jessy_Arden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (946,'Mikeal','Spencer','Mikeal_Spencer@gmail.com','0000',368,1031093219,'Mikeal_Spencer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (947,'Aric','Jack','Aric_Jack@gmail.com','0000',761,1015851093,'Aric_Jack');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (948,'Alphonsus','Nolan','Alphonsus_Nolan@gmail.com','0000',431,1017808633,'Alphonsus_Nolan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (949,'Judith','Barnie','Judith_Barnie@gmail.com','0000',253,1052197282,'Judith_Barnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (950,'Ford','Donte','Ford_Donte@gmail.com','0000',605,1053250386,'Ford_Donte');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (951,'Denny','Chuck','Denny_Chuck@gmail.com','0000',867,1095336513,'Denny_Chuck');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (952,'Butch','Lucas','Butch_Lucas@gmail.com','0000',556,1010997362,'Butch_Lucas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (953,'Merwin','Jaydon','Merwin_Jaydon@gmail.com','0000',7,1073091688,'Merwin_Jaydon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (954,'Sherrill','Toshio','Sherrill_Toshio@gmail.com','0000',709,1098144269,'Sherrill_Toshio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (955,'Seaborn','Gardner','Seaborn_Gardner@gmail.com','0000',438,1067410613,'Seaborn_Gardner');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (956,'Arnoldo','Alcee','Arnoldo_Alcee@gmail.com','0000',578,1008827146,'Arnoldo_Alcee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (957,'Clemon','Douglas','Clemon_Douglas@gmail.com','0000',953,1062871357,'Clemon_Douglas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (958,'Alby','Amanda','Alby_Amanda@gmail.com','0000',654,1070794643,'Alby_Amanda');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (959,'Millard','Amos','Millard_Amos@gmail.com','0000',426,1024919529,'Millard_Amos');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (960,'Ryan','Kayden','Ryan_Kayden@gmail.com','0000',786,1088991156,'Ryan_Kayden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (961,'Linwood','Madden','Linwood_Madden@gmail.com','0000',63,1067511446,'Linwood_Madden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (962,'Brian','Deryl','Brian_Deryl@gmail.com','0000',738,1083717282,'Brian_Deryl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (963,'Orris','Monty','Orris_Monty@gmail.com','0000',197,1087736885,'Orris_Monty');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (964,'Trinidad','Coy','Trinidad_Coy@gmail.com','0000',540,1008429441,'Trinidad_Coy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (965,'Terell','Ernst','Terell_Ernst@gmail.com','0000',993,1053648326,'Terell_Ernst');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (966,'Jordon','Tory','Jordon_Tory@gmail.com','0000',13,1068480218,'Jordon_Tory');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (967,'Alphonse','Allie','Alphonse_Allie@gmail.com','0000',90,1043789573,'Alphonse_Allie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (968,'Doris','Solon','Doris_Solon@gmail.com','0000',925,1013528989,'Doris_Solon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (969,'Agustin','Craig','Agustin_Craig@gmail.com','0000',477,1071429789,'Agustin_Craig');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (970,'Kirt','Arnett','Kirt_Arnett@gmail.com','0000',997,1038082007,'Kirt_Arnett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (971,'Burgess','Cleon','Burgess_Cleon@gmail.com','0000',775,1055582117,'Burgess_Cleon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (972,'Gaven','Baker','Gaven_Baker@gmail.com','0000',118,1058788651,'Gaven_Baker');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (973,'Rollie','Zeb','Rollie_Zeb@gmail.com','0000',529,1013133378,'Rollie_Zeb');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (974,'Lars','Lois','Lars_Lois@gmail.com','0000',469,1030192294,'Lars_Lois');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (975,'Junius','Everett','Junius_Everett@gmail.com','0000',655,1013202190,'Junius_Everett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (976,'Telly','Hamza','Telly_Hamza@gmail.com','0000',410,1001044809,'Telly_Hamza');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (977,'Nathen','Gilmer','Nathen_Gilmer@gmail.com','0000',769,1016703552,'Nathen_Gilmer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (978,'Arlington','Carlyle','Arlington_Carlyle@gmail.com','0000',883,1062221906,'Arlington_Carlyle');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (979,'Gerhardt','Roosevelt','Gerhardt_Roosevelt@gmail.com','0000',501,1067013675,'Gerhardt_Roosevelt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (980,'Muhammad','Montie','Muhammad_Montie@gmail.com','0000',156,1093058767,'Muhammad_Montie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (981,'Lone','Toby','Lone_Toby@gmail.com','0000',863,1078635887,'Lone_Toby');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (982,'Malcolm','Rasheed','Malcolm_Rasheed@gmail.com','0000',310,1045412926,'Malcolm_Rasheed');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (983,'Daron','Zackary','Daron_Zackary@gmail.com','0000',219,1014068216,'Daron_Zackary');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1460,'Ola','Dimitrios','Ola_Dimitrios@gmail.com','0000',332,1088781661,'Ola_Dimitrios');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1461,'Ashley','Bryton','Ashley_Bryton@gmail.com','0000',273,1009000816,'Ashley_Bryton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1462,'Rob','Ingram','Rob_Ingram@gmail.com','0000',405,1020263143,'Rob_Ingram');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1463,'Mathews','Rutherford','Mathews_Rutherford@gmail.com','0000',880,1081420207,'Mathews_Rutherford');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1464,'Aden','Clovis','Aden_Clovis@gmail.com','0000',455,1007835808,'Aden_Clovis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1465,'Prosper','Elder','Prosper_Elder@gmail.com','0000',560,1018634450,'Prosper_Elder');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1466,'Harvy','Devante','Harvy_Devante@gmail.com','0000',453,1028432843,'Harvy_Devante');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1467,'Alexandre','Greg','Alexandre_Greg@gmail.com','0000',820,1024369844,'Alexandre_Greg');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1468,'Stacy','Elza','Stacy_Elza@gmail.com','0000',90,1054669433,'Stacy_Elza');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1469,'Rod','Lute','Rod_Lute@gmail.com','0000',850,1075060769,'Rod_Lute');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1470,'Marquise','Abb','Marquise_Abb@gmail.com','0000',158,1006398158,'Marquise_Abb');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1471,'Alva','Boston','Alva_Boston@gmail.com','0000',238,1011469862,'Alva_Boston');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1472,'Leonel','Estill','Leonel_Estill@gmail.com','0000',964,1023980754,'Leonel_Estill');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1473,'Angus','Auston','Angus_Auston@gmail.com','0000',679,1025489701,'Angus_Auston');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1474,'Matthew','Cole','Matthew_Cole@gmail.com','0000',368,1078858331,'Matthew_Cole');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1475,'Omer','Levar','Omer_Levar@gmail.com','0000',44,1005679742,'Omer_Levar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1476,'Jasmine','Gussie','Jasmine_Gussie@gmail.com','0000',22,1021058380,'Jasmine_Gussie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1477,'Osborn','Reuben','Osborn_Reuben@gmail.com','0000',239,1081408272,'Osborn_Reuben');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1478,'Milan','Scotty','Milan_Scotty@gmail.com','0000',740,1068726996,'Milan_Scotty');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1479,'Buford','Finn','Buford_Finn@gmail.com','0000',744,1025461524,'Buford_Finn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1480,'Akira','Corry','Akira_Corry@gmail.com','0000',815,1013035682,'Akira_Corry');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1481,'Yusuf','Gonzalo','Yusuf_Gonzalo@gmail.com','0000',934,1003490064,'Yusuf_Gonzalo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1482,'Bradford','Jamari','Bradford_Jamari@gmail.com','0000',384,1038397298,'Bradford_Jamari');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1483,'Thorwald','Alf','Thorwald_Alf@gmail.com','0000',599,1091154591,'Thorwald_Alf');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1484,'Ivory','Purl','Ivory_Purl@gmail.com','0000',785,1070603827,'Ivory_Purl');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1485,'Bertha','Jordi','Bertha_Jordi@gmail.com','0000',913,1099769937,'Bertha_Jordi');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1486,'Vince','Dell','Vince_Dell@gmail.com','0000',906,1085708302,'Vince_Dell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1487,'Hardy','Peter','Hardy_Peter@gmail.com','0000',847,1006903257,'Hardy_Peter');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1488,'Wilson','Lenwood','Wilson_Lenwood@gmail.com','0000',418,1029931926,'Wilson_Lenwood');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1489,'Willis','Jamil','Willis_Jamil@gmail.com','0000',554,1000027105,'Willis_Jamil');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1490,'Jonnie','Kristopher','Jonnie_Kristopher@gmail.com','0000',932,1007958670,'Jonnie_Kristopher');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1491,'Dionicio','Abbie','Dionicio_Abbie@gmail.com','0000',419,1083334517,'Dionicio_Abbie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1492,'Kelvin','Shelley','Kelvin_Shelley@gmail.com','0000',408,1067747199,'Kelvin_Shelley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1493,'Frederic','Roscoe','Frederic_Roscoe@gmail.com','0000',992,1021258254,'Frederic_Roscoe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1494,'Koby','Kelton','Koby_Kelton@gmail.com','0000',676,1067669104,'Koby_Kelton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1495,'Denver','Thomas','Denver_Thomas@gmail.com','0000',313,1006686088,'Denver_Thomas');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1496,'Kaeden','Burnett','Kaeden_Burnett@gmail.com','0000',395,1002151852,'Kaeden_Burnett');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1497,'Rogers','Foy','Rogers_Foy@gmail.com','0000',324,1036096685,'Rogers_Foy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1498,'Deforest','Clarke','Deforest_Clarke@gmail.com','0000',651,1005454146,'Deforest_Clarke');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1499,'Miles','Val','Miles_Val@gmail.com','0000',209,1055292117,'Miles_Val');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1500,'Stuart','Elgin','Stuart_Elgin@gmail.com','0000',996,1039568318,'Stuart_Elgin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1501,'Heyward','Davion','Heyward_Davion@gmail.com','0000',836,1023775535,'Heyward_Davion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1502,'Estes','Raleigh','Estes_Raleigh@gmail.com','0000',189,1073675889,'Estes_Raleigh');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1503,'Quint','Damarcus','Quint_Damarcus@gmail.com','0000',870,1088310021,'Quint_Damarcus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1504,'Tristen','Ethelbert','Tristen_Ethelbert@gmail.com','0000',204,1002082924,'Tristen_Ethelbert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1505,'Manley','Claire','Manley_Claire@gmail.com','0000',39,1071511826,'Manley_Claire');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1506,'Vito','Winifred','Vito_Winifred@gmail.com','0000',796,1062474979,'Vito_Winifred');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1507,'Hyrum','Mills','Hyrum_Mills@gmail.com','0000',15,1043676949,'Hyrum_Mills');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1508,'Ezzard','Wilbur','Ezzard_Wilbur@gmail.com','0000',893,1048246027,'Ezzard_Wilbur');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1509,'Owens','Norberto','Owens_Norberto@gmail.com','0000',20,1009508353,'Owens_Norberto');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1510,'Kevan','Benard','Kevan_Benard@gmail.com','0000',472,1073724958,'Kevan_Benard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1511,'Daren','Tevin','Daren_Tevin@gmail.com','0000',709,1084825190,'Daren_Tevin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1512,'Martez','Nakia','Martez_Nakia@gmail.com','0000',433,1092083391,'Martez_Nakia');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1513,'Porfirio','Lawson','Porfirio_Lawson@gmail.com','0000',872,1067561442,'Porfirio_Lawson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1514,'Donato','Declan','Donato_Declan@gmail.com','0000',524,1060024815,'Donato_Declan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1515,'Joseluis','Montrell','Joseluis_Montrell@gmail.com','0000',385,1089530087,'Joseluis_Montrell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1516,'Ida','Lonnie','Ida_Lonnie@gmail.com','0000',650,1056688818,'Ida_Lonnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1517,'Albert','Fredrick','Albert_Fredrick@gmail.com','0000',976,1009530980,'Albert_Fredrick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1518,'Jeromy','French','Jeromy_French@gmail.com','0000',874,1069952156,'Jeromy_French');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1519,'Cannon','Maximillian','Cannon_Maximillian@gmail.com','0000',186,1089628947,'Cannon_Maximillian');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1520,'Trevor','Kris','Trevor_Kris@gmail.com','0000',903,1070542763,'Trevor_Kris');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1521,'Hjalmer','Wayde','Hjalmer_Wayde@gmail.com','0000',417,1074367033,'Hjalmer_Wayde');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1522,'Orvin','Thos','Orvin_Thos@gmail.com','0000',125,1002826014,'Orvin_Thos');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1269,'Jedediah','Anfernee','Jedediah_Anfernee@gmail.com','0000',747,1044646575,'Jedediah_Anfernee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1270,'Lillard','Allyn','Lillard_Allyn@gmail.com','0000',421,1095436146,'Lillard_Allyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1271,'Amari','Delmer','Amari_Delmer@gmail.com','0000',44,1049924414,'Amari_Delmer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1272,'Curtis','Carrie','Curtis_Carrie@gmail.com','0000',276,1006538957,'Curtis_Carrie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1273,'Glynn','Rashaad','Glynn_Rashaad@gmail.com','0000',286,1098212858,'Glynn_Rashaad');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1274,'Dereck','Johney','Dereck_Johney@gmail.com','0000',180,1024446153,'Dereck_Johney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1275,'Jasiah','Taj','Jasiah_Taj@gmail.com','0000',829,1033718051,'Jasiah_Taj');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1276,'Nikolai','Brent','Nikolai_Brent@gmail.com','0000',598,1010734334,'Nikolai_Brent');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1277,'Case','Bliss','Case_Bliss@gmail.com','0000',769,1049890758,'Case_Bliss');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1278,'Hester','Manuel','Hester_Manuel@gmail.com','0000',696,1012118350,'Hester_Manuel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1279,'Branden','Hideo','Branden_Hideo@gmail.com','0000',824,1039247119,'Branden_Hideo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1280,'Susan','Dandre','Susan_Dandre@gmail.com','0000',502,1039835515,'Susan_Dandre');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1281,'Garvin','Long','Garvin_Long@gmail.com','0000',727,1058437532,'Garvin_Long');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1282,'Starling','Orren','Starling_Orren@gmail.com','0000',183,1078286285,'Starling_Orren');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1283,'Parley','Einar','Parley_Einar@gmail.com','0000',224,1022379775,'Parley_Einar');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1284,'Lafayette','Aubra','Lafayette_Aubra@gmail.com','0000',366,1042536069,'Lafayette_Aubra');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1285,'Lindsay','Stevie','Lindsay_Stevie@gmail.com','0000',169,1084613453,'Lindsay_Stevie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1286,'Denis','Wayland','Denis_Wayland@gmail.com','0000',11,1045837990,'Denis_Wayland');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1287,'Isam','Juan','Isam_Juan@gmail.com','0000',933,1021870490,'Isam_Juan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1288,'Waldo','Burt','Waldo_Burt@gmail.com','0000',773,1067548643,'Waldo_Burt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1289,'Albin','Francesco','Albin_Francesco@gmail.com','0000',782,1089590694,'Albin_Francesco');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1290,'Carolyn','Jerrod','Carolyn_Jerrod@gmail.com','0000',656,1072399294,'Carolyn_Jerrod');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1291,'Dylon','Johnnie','Dylon_Johnnie@gmail.com','0000',150,1044191183,'Dylon_Johnnie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1292,'Harlen','Eben','Harlen_Eben@gmail.com','0000',859,1032056619,'Harlen_Eben');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1293,'Oren','Alvia','Oren_Alvia@gmail.com','0000',92,1029567569,'Oren_Alvia');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1294,'Heath','Rudy','Heath_Rudy@gmail.com','0000',559,1066659210,'Heath_Rudy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1295,'Demetrius','Maximo','Demetrius_Maximo@gmail.com','0000',327,1019099095,'Demetrius_Maximo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1296,'Sigurd','Soloman','Sigurd_Soloman@gmail.com','0000',500,1088861301,'Sigurd_Soloman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1297,'Killian','Cristofer','Killian_Cristofer@gmail.com','0000',749,1095742107,'Killian_Cristofer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1298,'Ronaldo','Jameson','Ronaldo_Jameson@gmail.com','0000',671,1067585213,'Ronaldo_Jameson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1299,'Herman','Williard','Herman_Williard@gmail.com','0000',733,1017516587,'Herman_Williard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1300,'Immanuel','Odis','Immanuel_Odis@gmail.com','0000',333,1014257595,'Immanuel_Odis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1301,'Tallie','Foch','Tallie_Foch@gmail.com','0000',265,1044100450,'Tallie_Foch');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1302,'Reilly','Roman','Reilly_Roman@gmail.com','0000',195,1094591511,'Reilly_Roman');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1303,'Kolten','Robby','Kolten_Robby@gmail.com','0000',563,1068692468,'Kolten_Robby');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1304,'Kenny','Clarence','Kenny_Clarence@gmail.com','0000',931,1025794039,'Kenny_Clarence');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1305,'Beryl','Clemence','Beryl_Clemence@gmail.com','0000',868,1074190450,'Beryl_Clemence');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1306,'Darrell','Warner','Darrell_Warner@gmail.com','0000',404,1061725895,'Darrell_Warner');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1307,'Wilber','Hervey','Wilber_Hervey@gmail.com','0000',901,1066695683,'Wilber_Hervey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1308,'Bryan','Denton','Bryan_Denton@gmail.com','0000',411,1098606953,'Bryan_Denton');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1309,'Kip','Nicklaus','Kip_Nicklaus@gmail.com','0000',180,1096181271,'Kip_Nicklaus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1310,'Mustafa','Sanders','Mustafa_Sanders@gmail.com','0000',799,1038930608,'Mustafa_Sanders');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1311,'Wright','Stephon','Wright_Stephon@gmail.com','0000',577,1008819989,'Wright_Stephon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1312,'Raven','Demetric','Raven_Demetric@gmail.com','0000',239,1026340850,'Raven_Demetric');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1313,'Yahir','Vern','Yahir_Vern@gmail.com','0000',675,1014393252,'Yahir_Vern');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1314,'Robley','Durrell','Robley_Durrell@gmail.com','0000',323,1039981665,'Robley_Durrell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1315,'Christian','Johny','Christian_Johny@gmail.com','0000',624,1092070341,'Christian_Johny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1316,'Dylan','Hardie','Dylan_Hardie@gmail.com','0000',739,1037651382,'Dylan_Hardie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1317,'Rolland','Artis','Rolland_Artis@gmail.com','0000',501,1030197683,'Rolland_Artis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1318,'Hence','Jeremey','Hence_Jeremey@gmail.com','0000',707,1070365214,'Hence_Jeremey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1319,'Baron','Keenen','Baron_Keenen@gmail.com','0000',816,1044033263,'Baron_Keenen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1320,'Ryne','Maximilian','Ryne_Maximilian@gmail.com','0000',595,1078015086,'Ryne_Maximilian');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1321,'Oakley','Adron','Oakley_Adron@gmail.com','0000',25,1080374482,'Oakley_Adron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1322,'Winston','Cortez','Winston_Cortez@gmail.com','0000',131,1019170793,'Winston_Cortez');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1323,'Nico','Demarcus','Nico_Demarcus@gmail.com','0000',733,1040566769,'Nico_Demarcus');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1324,'Jefferson','Conor','Jefferson_Conor@gmail.com','0000',377,1058262431,'Jefferson_Conor');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1325,'Thor','Estel','Thor_Estel@gmail.com','0000',607,1028752215,'Thor_Estel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1326,'Camron','Hale','Camron_Hale@gmail.com','0000',147,1032982592,'Camron_Hale');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1327,'Delmas','Hebert','Delmas_Hebert@gmail.com','0000',94,1089231159,'Delmas_Hebert');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1328,'Corbett','Lora','Corbett_Lora@gmail.com','0000',240,1052678001,'Corbett_Lora');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1329,'Tavares','Rene','Tavares_Rene@gmail.com','0000',300,1024660288,'Tavares_Rene');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1330,'Malvin','Luka','Malvin_Luka@gmail.com','0000',469,1050070359,'Malvin_Luka');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1331,'Jaxon','Keagan','Jaxon_Keagan@gmail.com','0000',436,1053646265,'Jaxon_Keagan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1332,'Taurus','Damien','Taurus_Damien@gmail.com','0000',292,1083171970,'Taurus_Damien');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1333,'Prentiss','Diallo','Prentiss_Diallo@gmail.com','0000',784,1076709251,'Prentiss_Diallo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1334,'Mekhi','Jayce','Mekhi_Jayce@gmail.com','0000',468,1069062504,'Mekhi_Jayce');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1335,'Oral','Nathaniel','Oral_Nathaniel@gmail.com','0000',8,1004499646,'Oral_Nathaniel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1336,'Jake','Harding','Jake_Harding@gmail.com','0000',164,1073704806,'Jake_Harding');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1337,'Nancy','Irwin','Nancy_Irwin@gmail.com','0000',569,1063886081,'Nancy_Irwin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1338,'Luca','Kellan','Luca_Kellan@gmail.com','0000',57,1037119364,'Luca_Kellan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1339,'Lonie','Algot','Lonie_Algot@gmail.com','0000',931,1013662288,'Lonie_Algot');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1340,'Shawn','Ammon','Shawn_Ammon@gmail.com','0000',164,1062381240,'Shawn_Ammon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1341,'Mattie','Kordell','Mattie_Kordell@gmail.com','0000',453,1078384579,'Mattie_Kordell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1342,'Donald','Esther','Donald_Esther@gmail.com','0000',679,1094960394,'Donald_Esther');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1343,'Ambrose','Donat','Ambrose_Donat@gmail.com','0000',151,1074402173,'Ambrose_Donat');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1344,'Liam','Davie','Liam_Davie@gmail.com','0000',803,1078201712,'Liam_Davie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1345,'Enzo','Barney','Enzo_Barney@gmail.com','0000',154,1027007425,'Enzo_Barney');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1346,'Tracey','Norris','Tracey_Norris@gmail.com','0000',662,1007743814,'Tracey_Norris');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1347,'Tobin','Cameron','Tobin_Cameron@gmail.com','0000',200,1015399997,'Tobin_Cameron');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1348,'Jevon','Timmy','Jevon_Timmy@gmail.com','0000',216,1093735573,'Jevon_Timmy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1349,'Rube','Porter','Rube_Porter@gmail.com','0000',242,1010082786,'Rube_Porter');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1350,'True','Otto','True_Otto@gmail.com','0000',917,1071183681,'True_Otto');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1351,'Marcello','Jeremiah','Marcello_Jeremiah@gmail.com','0000',592,1011320624,'Marcello_Jeremiah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1352,'Nicholaus','Epifanio','Nicholaus_Epifanio@gmail.com','0000',297,1049559963,'Nicholaus_Epifanio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1353,'Darian','Jayvon','Darian_Jayvon@gmail.com','0000',5,1093646894,'Darian_Jayvon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1354,'Nim','Obe','Nim_Obe@gmail.com','0000',485,1026792963,'Nim_Obe');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1355,'Ulises','Emerson','Ulises_Emerson@gmail.com','0000',904,1089312583,'Ulises_Emerson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1356,'Shad','Valentine','Shad_Valentine@gmail.com','0000',470,1037480092,'Shad_Valentine');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1357,'Arron','Desean','Arron_Desean@gmail.com','0000',61,1089956559,'Arron_Desean');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1358,'Roderick','Llewellyn','Roderick_Llewellyn@gmail.com','0000',643,1052453254,'Roderick_Llewellyn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1359,'Lucian','Isreal','Lucian_Isreal@gmail.com','0000',103,1036991773,'Lucian_Isreal');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1360,'Harris','Aloysius','Harris_Aloysius@gmail.com','0000',159,1040384636,'Harris_Aloysius');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1361,'Caesar','Kolby','Caesar_Kolby@gmail.com','0000',842,1096793005,'Caesar_Kolby');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1362,'Knox','Dick','Knox_Dick@gmail.com','0000',37,1063369274,'Knox_Dick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1363,'Nicky','Claudie','Nicky_Claudie@gmail.com','0000',589,1067715361,'Nicky_Claudie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1364,'Americo','Noel','Americo_Noel@gmail.com','0000',7,1011823556,'Americo_Noel');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1365,'Trevon','Eino','Trevon_Eino@gmail.com','0000',793,1025896273,'Trevon_Eino');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1366,'Esley','Ramiro','Esley_Ramiro@gmail.com','0000',969,1012281363,'Esley_Ramiro');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1367,'Zaid','Britt','Zaid_Britt@gmail.com','0000',868,1094349233,'Zaid_Britt');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1368,'Benson','Karen','Benson_Karen@gmail.com','0000',261,1048364538,'Benson_Karen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1369,'Kathryn','Pedro','Kathryn_Pedro@gmail.com','0000',990,1029975096,'Kathryn_Pedro');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1370,'Vicente','Jan','Vicente_Jan@gmail.com','0000',35,1041253974,'Vicente_Jan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1371,'Keanu','Nile','Keanu_Nile@gmail.com','0000',192,1083217661,'Keanu_Nile');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1372,'Malcom','Kylan','Malcom_Kylan@gmail.com','0000',712,1007009701,'Malcom_Kylan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1373,'Carlo','Baby','Carlo_Baby@gmail.com','0000',735,1032711925,'Carlo_Baby');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1374,'Corey','Franco','Corey_Franco@gmail.com','0000',353,1057479209,'Corey_Franco');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1375,'Jakobe','Ebenezer','Jakobe_Ebenezer@gmail.com','0000',884,1024752881,'Jakobe_Ebenezer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1376,'West','Derrell','West_Derrell@gmail.com','0000',449,1093120841,'West_Derrell');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1377,'Alvin','Jayme','Alvin_Jayme@gmail.com','0000',265,1085779455,'Alvin_Jayme');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1378,'Sedrick','Tuan','Sedrick_Tuan@gmail.com','0000',375,1001864309,'Sedrick_Tuan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1379,'Tremayne','Pierre','Tremayne_Pierre@gmail.com','0000',270,1056835510,'Tremayne_Pierre');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1380,'Warren','Harlie','Warren_Harlie@gmail.com','0000',485,1098045017,'Warren_Harlie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1381,'Elam','Maverick','Elam_Maverick@gmail.com','0000',117,1068668487,'Elam_Maverick');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1382,'Ardell','Rudolfo','Ardell_Rudolfo@gmail.com','0000',169,1028817021,'Ardell_Rudolfo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1383,'Kimball','Lucky','Kimball_Lucky@gmail.com','0000',317,1070518232,'Kimball_Lucky');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1384,'Audie','Grayling','Audie_Grayling@gmail.com','0000',515,1035902077,'Audie_Grayling');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1385,'Eden','Audy','Eden_Audy@gmail.com','0000',972,1003108359,'Eden_Audy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1386,'Dolphus','Merlin','Dolphus_Merlin@gmail.com','0000',48,1091081387,'Dolphus_Merlin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1387,'Elsie','Uriah','Elsie_Uriah@gmail.com','0000',850,1085129130,'Elsie_Uriah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1388,'Neil','Ennis','Neil_Ennis@gmail.com','0000',869,1020473685,'Neil_Ennis');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1389,'Julious','Brenda','Julious_Brenda@gmail.com','0000',437,1086647658,'Julious_Brenda');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1390,'Clide','Colin','Clide_Colin@gmail.com','0000',839,1099815763,'Clide_Colin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1391,'Gladys','Lucio','Gladys_Lucio@gmail.com','0000',400,1059300597,'Gladys_Lucio');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1392,'Bryant','Makai','Bryant_Makai@gmail.com','0000',634,1003237594,'Bryant_Makai');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1393,'Shayne','Shelby','Shayne_Shelby@gmail.com','0000',151,1075196313,'Shayne_Shelby');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1394,'Mikal','Dejuan','Mikal_Dejuan@gmail.com','0000',697,1033288149,'Mikal_Dejuan');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1395,'Lula','Courtland','Lula_Courtland@gmail.com','0000',147,1007576867,'Lula_Courtland');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1396,'Woodroe','Rae','Woodroe_Rae@gmail.com','0000',950,1063057460,'Woodroe_Rae');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1397,'Frederick','Manning','Frederick_Manning@gmail.com','0000',234,1077846992,'Frederick_Manning');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1398,'Doyle','Robin','Doyle_Robin@gmail.com','0000',314,1093365803,'Doyle_Robin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1399,'Robert','Sumner','Robert_Sumner@gmail.com','0000',909,1058648127,'Robert_Sumner');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1400,'Irving','Lazaro','Irving_Lazaro@gmail.com','0000',731,1079976725,'Irving_Lazaro');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1401,'Dejon','Linda','Dejon_Linda@gmail.com','0000',564,1074621871,'Dejon_Linda');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1402,'Anthoney','Rodolfo','Anthoney_Rodolfo@gmail.com','0000',800,1016015562,'Anthoney_Rodolfo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1403,'Fenton','Burns','Fenton_Burns@gmail.com','0000',82,1070080266,'Fenton_Burns');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1404,'Clearence','Marquez','Clearence_Marquez@gmail.com','0000',639,1000619073,'Clearence_Marquez');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1405,'Byron','Kevin','Byron_Kevin@gmail.com','0000',414,1055639366,'Byron_Kevin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1406,'Ceasar','Maud','Ceasar_Maud@gmail.com','0000',91,1084716399,'Ceasar_Maud');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1407,'Raphael','Jaimie','Raphael_Jaimie@gmail.com','0000',236,1039712183,'Raphael_Jaimie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1408,'Adam','Tilden','Adam_Tilden@gmail.com','0000',256,1056882889,'Adam_Tilden');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1409,'Juston','Kraig','Juston_Kraig@gmail.com','0000',362,1032026597,'Juston_Kraig');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1410,'Mathew','Felix','Mathew_Felix@gmail.com','0000',165,1092703636,'Mathew_Felix');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1411,'Kelly','Trayvon','Kelly_Trayvon@gmail.com','0000',98,1057563699,'Kelly_Trayvon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1412,'Myrtle','Redmond','Myrtle_Redmond@gmail.com','0000',921,1094970014,'Myrtle_Redmond');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1413,'Abe','Deangelo','Abe_Deangelo@gmail.com','0000',373,1028463206,'Abe_Deangelo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1414,'Gladstone','Jeffrey','Gladstone_Jeffrey@gmail.com','0000',59,1065904289,'Gladstone_Jeffrey');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1415,'Smith','Garrison','Smith_Garrison@gmail.com','0000',756,1054352694,'Smith_Garrison');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1416,'Jarvis','Deion','Jarvis_Deion@gmail.com','0000',345,1037782528,'Jarvis_Deion');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1417,'Remington','Berkley','Remington_Berkley@gmail.com','0000',874,1069424423,'Remington_Berkley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1418,'Luther','Oley','Luther_Oley@gmail.com','0000',263,1005015033,'Luther_Oley');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1419,'Reece','Arnulfo','Reece_Arnulfo@gmail.com','0000',509,1091991254,'Reece_Arnulfo');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1420,'Rolando','Delvin','Rolando_Delvin@gmail.com','0000',697,1071174033,'Rolando_Delvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1421,'Richard','Iva','Richard_Iva@gmail.com','0000',447,1013943917,'Richard_Iva');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1422,'Nora','Robbin','Nora_Robbin@gmail.com','0000',30,1066276597,'Nora_Robbin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1423,'Squire','Irvin','Squire_Irvin@gmail.com','0000',773,1007438717,'Squire_Irvin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1424,'Derik','Sim','Derik_Sim@gmail.com','0000',587,1082757357,'Derik_Sim');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1425,'Reason','Jeptha','Reason_Jeptha@gmail.com','0000',217,1000137243,'Reason_Jeptha');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1426,'Brennan','Lanny','Brennan_Lanny@gmail.com','0000',643,1099198711,'Brennan_Lanny');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1427,'Minnie','Ricki','Minnie_Ricki@gmail.com','0000',238,1002141333,'Minnie_Ricki');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1428,'Alvis','Galen','Alvis_Galen@gmail.com','0000',986,1031384523,'Alvis_Galen');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1429,'Courtney','Jory','Courtney_Jory@gmail.com','0000',237,1056632451,'Courtney_Jory');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1430,'Kristoffer','Tandy','Kristoffer_Tandy@gmail.com','0000',859,1030185424,'Kristoffer_Tandy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1431,'Ludwig','Fletcher','Ludwig_Fletcher@gmail.com','0000',901,1033413647,'Ludwig_Fletcher');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1432,'Louise','Deshawn','Louise_Deshawn@gmail.com','0000',103,1017632299,'Louise_Deshawn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1433,'Najee','Ivor','Najee_Ivor@gmail.com','0000',264,1082372625,'Najee_Ivor');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1434,'Harold','Jessee','Harold_Jessee@gmail.com','0000',855,1067219140,'Harold_Jessee');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1435,'Eber','Terrance','Eber_Terrance@gmail.com','0000',225,1058007186,'Eber_Terrance');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1436,'Geraldo','Erwin','Geraldo_Erwin@gmail.com','0000',189,1024153955,'Geraldo_Erwin');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1437,'Rosco','Virgil','Rosco_Virgil@gmail.com','0000',936,1014226338,'Rosco_Virgil');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1438,'Waverly','Washington','Waverly_Washington@gmail.com','0000',624,1044883219,'Waverly_Washington');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1439,'Eliza','Jeffie','Eliza_Jeffie@gmail.com','0000',383,1088067402,'Eliza_Jeffie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1440,'Colten','Devaughn','Colten_Devaughn@gmail.com','0000',187,1041148926,'Colten_Devaughn');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1441,'Asbury','Dawson','Asbury_Dawson@gmail.com','0000',890,1092812292,'Asbury_Dawson');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1442,'Angel','Andrae','Angel_Andrae@gmail.com','0000',761,1097551360,'Angel_Andrae');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1443,'Logan','Waymon','Logan_Waymon@gmail.com','0000',855,1013674397,'Logan_Waymon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1444,'Carlie','Jace','Carlie_Jace@gmail.com','0000',449,1099853287,'Carlie_Jace');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1445,'Mac','Judah','Mac_Judah@gmail.com','0000',727,1048356261,'Mac_Judah');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1446,'Caswell','Dirk','Caswell_Dirk@gmail.com','0000',454,1048622615,'Caswell_Dirk');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1447,'Morris','Arch','Morris_Arch@gmail.com','0000',465,1072949924,'Morris_Arch');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1448,'Armond','Fernando','Armond_Fernando@gmail.com','0000',940,1073896798,'Armond_Fernando');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1449,'Jasper','Jarad','Jasper_Jarad@gmail.com','0000',214,1073391057,'Jasper_Jarad');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1450,'Rafael','Gust','Rafael_Gust@gmail.com','0000',321,1097552528,'Rafael_Gust');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1451,'Adolph','Namon','Adolph_Namon@gmail.com','0000',49,1015652622,'Adolph_Namon');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1452,'Ishaan','Chalmer','Ishaan_Chalmer@gmail.com','0000',782,1025513467,'Ishaan_Chalmer');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1453,'Charle','Loy','Charle_Loy@gmail.com','0000',260,1014831338,'Charle_Loy');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1454,'Juwan','Zeke','Juwan_Zeke@gmail.com','0000',740,1063628595,'Juwan_Zeke');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1455,'Harvey','Blanchard','Harvey_Blanchard@gmail.com','0000',11,1039444525,'Harvey_Blanchard');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1456,'Georgia','Amare','Georgia_Amare@gmail.com','0000',851,1043129046,'Georgia_Amare');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1457,'Tollie','Jettie','Tollie_Jettie@gmail.com','0000',9,1070427503,'Tollie_Jettie');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1458,'Seamus','Paris','Seamus_Paris@gmail.com','0000',605,1020402746,'Seamus_Paris');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1459,'Mart','Dan','Mart_Dan@gmail.com','0000',225,1005387894,'Mart_Dan');

---------------------------------------------------
--   END DATA FOR TABLE STUDENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE FILMCATEGORY
--   FILTER = none used
---------------------------------------------------
REM INSERTING into FILMCATEGORY
Insert into FILMCATEGORY (CATEGORYID,CATEGORYNAME) values (1,'Adventure');
Insert into FILMCATEGORY (CATEGORYID,CATEGORYNAME) values (2,'Comedy');
Insert into FILMCATEGORY (CATEGORYID,CATEGORYNAME) values (3,'Action');
Insert into FILMCATEGORY (CATEGORYID,CATEGORYNAME) values (4,'Animation');
Insert into FILMCATEGORY (CATEGORYID,CATEGORYNAME) values (5,'Fantasy');
Insert into FILMCATEGORY (CATEGORYID,CATEGORYNAME) values (6,'Sci-Fi');

---------------------------------------------------
--   END DATA FOR TABLE FILMCATEGORY
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE HALL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HALL
Insert into HALL (HALL_NUM,CAPACITY) values (1,30);
Insert into HALL (HALL_NUM,CAPACITY) values (2,40);
Insert into HALL (HALL_NUM,CAPACITY) values (3,55);

---------------------------------------------------
--   END DATA FOR TABLE HALL
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ACTORS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ACTORS
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (1,'Kristen Stewart','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (2,'Robert Pattinson','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (3,'Taylor Lautner','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (4,'Rupert Grint','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (5,'Daniel Radcliffe','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (6,'Ra65lph Fien555nes','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (7,'Hank Azariah','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (8,'Neil Patrick','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (9,'Jayma Mays','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (10,'Sofia Vergara','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (11,'John Cleese','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (12,'Jim Cummings','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (13,'Bud Luckey','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (14,'Tom Hanks','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (15,'Tim Allen','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (16,'Joan Cusack','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (17,'Mike Myers','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (18,'Eddie Murdfyhphy','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (19,'Cameron Diaz','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (20,'Kevin James','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (21,'Salma Hayek','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (22,'Henry Winkler','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (23,'Matthew McConaughey','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (24,'Anne Hathaway','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (25,'Jessica Chastain','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (26,'Sandra Bullock','F');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (27,'George Clooney','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (28,'Will Smith','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (29,'Tommy Lee Jones','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (30,'7a7a2','M');
Insert into ACTORS (ACTORID,ACTORNAME,GENDER) values (31,'Bud Luckey','M');

---------------------------------------------------
--   END DATA FOR TABLE ACTORS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE EMP
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMP
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,'SMITH','CLERK',7902,to_timestamp('17-DEC-80 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),800,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,'ALLEN','SALESMAN',7698,to_timestamp('20-FEB-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),1600,300,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,'WARD','SALESMAN',7698,to_timestamp('22-FEB-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),1250,500,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,'JONES','MANAGER',7839,to_timestamp('02-APR-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),2975,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,'MARTIN','SALESMAN',7698,to_timestamp('28-SEP-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),1250,1400,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,'BLAKE','MANAGER',7839,to_timestamp('01-MAY-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),2850,null,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,'CLARK','MANAGER',7839,to_timestamp('09-JUN-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),2450,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,'SCOTT','ANALYST',7566,to_timestamp('19-APR-87 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),3000,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,'KING','PRESIDENT',null,to_timestamp('17-NOV-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),5000,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,'TURNER','SALESMAN',7698,to_timestamp('08-SEP-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),1500,0,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,'ADAMS','CLERK',7788,to_timestamp('23-MAY-87 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),1100,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,'JAMES','CLERK',7698,to_timestamp('03-DEC-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),950,null,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,'FORD','ANALYST',7566,to_timestamp('03-DEC-81 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),3000,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,'MILLER','CLERK',7782,to_timestamp('23-JAN-82 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),1300,null,10);

---------------------------------------------------
--   END DATA FOR TABLE EMP
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE MEMBERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MEMBERS

---------------------------------------------------
--   END DATA FOR TABLE MEMBERS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DEPT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DEPT
Insert into DEPT (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into DEPT (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into DEPT (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into DEPT (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');

---------------------------------------------------
--   END DATA FOR TABLE DEPT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SESSIONS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SESSIONS
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (95,512,1,11,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (96,512,1,11,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (97,512,1,11,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (98,512,1,11,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (99,512,1,11,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (100,512,1,11,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (101,512,1,11,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (102,512,1,11,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (103,512,1,11,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (104,512,1,11,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (105,512,1,11,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (106,512,1,11,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (107,512,1,11,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (108,512,1,11,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (109,512,1,11,to_timestamp('02-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (110,512,1,12,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (111,512,1,12,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (112,512,1,12,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (113,512,1,12,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (114,512,1,12,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (115,512,1,12,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (116,512,1,12,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (117,512,1,12,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (118,512,1,12,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (119,512,1,12,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (120,512,1,12,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (121,512,1,12,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (122,512,1,12,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (123,512,1,12,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (124,512,1,12,to_timestamp('02-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (125,512,1,13,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (126,512,1,13,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (127,512,1,13,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (128,512,1,13,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (129,512,1,13,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (130,512,1,13,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (131,512,1,13,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (132,512,1,13,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (133,512,1,13,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (134,512,1,13,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (135,512,1,13,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (136,512,1,13,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (137,512,1,13,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (138,512,1,13,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (139,512,1,13,to_timestamp('02-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (140,512,1,14,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (141,512,1,14,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (142,512,1,14,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (143,512,1,14,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (144,512,1,14,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (145,512,1,14,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (146,512,1,14,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (147,512,1,14,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (148,512,1,14,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (149,512,1,14,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (150,512,1,14,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (151,512,1,14,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (152,512,1,14,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (153,512,1,14,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (154,512,1,14,to_timestamp('02-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (155,512,2,15,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (156,512,2,15,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (157,512,2,15,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (158,512,2,15,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (159,512,2,15,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (160,512,2,15,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (161,512,2,15,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (162,512,2,15,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (163,512,2,15,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (164,512,2,15,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (165,512,2,15,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (166,512,2,15,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (167,512,2,15,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (168,512,2,15,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (169,512,2,15,to_timestamp('02-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (170,512,2,16,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (171,512,2,16,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (172,512,2,16,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (173,512,2,16,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (174,512,2,16,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (175,512,2,16,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (176,512,2,16,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (177,512,2,16,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (178,512,2,16,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (179,512,2,16,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (180,512,2,16,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (181,512,2,16,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (182,512,2,16,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (183,512,2,16,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (184,512,2,16,to_timestamp('02-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (185,513,2,11,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (186,513,2,11,to_timestamp('04-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (187,513,2,11,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (188,513,2,11,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (189,513,2,11,to_timestamp('25-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (190,513,2,12,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (191,513,2,12,to_timestamp('04-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (192,513,2,12,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (193,513,2,12,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (194,513,2,12,to_timestamp('25-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (195,513,2,13,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (196,513,2,13,to_timestamp('04-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (197,513,2,13,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (198,513,2,13,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (199,513,2,13,to_timestamp('25-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (200,513,2,17,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (201,513,2,17,to_timestamp('04-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (202,513,2,17,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (203,513,2,17,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (204,513,2,17,to_timestamp('25-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (205,513,2,18,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (206,513,2,18,to_timestamp('04-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (207,513,2,18,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (208,513,2,18,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (209,513,2,18,to_timestamp('25-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (210,513,3,19,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (211,513,3,19,to_timestamp('04-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (212,513,3,19,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (213,513,3,19,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (214,513,3,19,to_timestamp('25-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (215,513,2,20,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (216,513,2,20,to_timestamp('04-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (217,513,2,20,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (218,513,2,20,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (219,513,2,20,to_timestamp('25-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (220,514,1,18,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (221,514,1,18,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (222,514,1,18,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (223,514,1,18,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (224,514,1,18,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (225,514,1,18,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (226,514,1,18,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (227,514,1,18,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (228,514,1,18,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (229,514,1,18,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (230,514,1,18,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (231,514,1,18,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (232,514,1,18,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (233,514,1,19,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (234,514,1,19,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (235,514,1,19,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (236,514,1,19,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (237,514,1,19,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (238,514,1,19,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (239,514,1,19,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (240,514,1,19,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (241,514,1,19,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (242,514,1,19,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (243,514,1,19,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (244,514,1,19,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (245,514,1,19,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (18,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (19,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (20,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (21,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (22,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (12,1,1,3,to_timestamp('12-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (13,1,1,3,to_timestamp('19-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (14,1,1,3,to_timestamp('26-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (15,1,1,3,to_timestamp('02-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (16,1,1,3,to_timestamp('09-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (17,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (23,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (24,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (25,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (26,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (27,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (28,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (29,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (30,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (31,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (32,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (33,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (34,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (35,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (36,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (37,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (38,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (39,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (40,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (41,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (42,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (43,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (44,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (45,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (46,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (47,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (48,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (49,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (50,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (51,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (52,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (53,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (54,1,1,15,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (55,1,1,15,to_timestamp('25-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (56,1,3,15,to_timestamp('25-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (57,1,3,12,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (58,1,1,15,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (59,1,1,15,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (60,1,1,15,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (61,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (62,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (63,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (64,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (65,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (66,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (90,3,1,4,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (91,1,2,19,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));

---------------------------------------------------
--   END DATA FOR TABLE SESSIONS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE FILMTITLES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into FILMTITLES
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (1,'The Twilight Saga Breaking Dawn',to_timestamp('16-NOV-12 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),116,1);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (2,'Harry Potter and the Deathly Hallows',to_timestamp('15-JUL-11 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),130,5);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (3,'The Smurfs',to_timestamp('29-JUL-11 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),103,4);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (4,'Winnie the Pooh',to_timestamp('15-JUL-11 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),63,4);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (5,'The Twilight Saga: Eclipse',to_timestamp('30-JUN-10 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),124,1);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (6,'Toy Story 3',to_timestamp('18-JUN-10 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),103,4);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (7,'Shrek Forever After',to_timestamp('21-MAY-10 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),93,4);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (8,'Here Comes the Boom',to_timestamp('12-OCT-12 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),105,2);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (9,'Interstellar',to_timestamp('07-NOV-14 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),169,6);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (10,'Gravity',to_timestamp('04-OCT-13 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),90,6);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (11,'Miss Congeniality',to_timestamp('22-DEC-02 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),109,2);
Insert into FILMTITLES (FILMID,FILMTITLE,RELEASEDATE,FILMDURATION,FILMCATEGORYID) values (12,'Men in Black 3',to_timestamp('25-MAY-12 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),107,3);

---------------------------------------------------
--   END DATA FOR TABLE FILMTITLES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE COURSE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into COURSE
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (131,'Business Finance',20,4,1,13,406,to_timestamp('29-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (132,'Web Development',20,2,4848,17,1009,to_timestamp('27-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (133,'Graphic Design',100,3,27,12,1388,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (134,'Musical Instruments',30,1,414,19,575,to_timestamp('29-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (135,'Musical Instruments',0,1,1631,6,1525,to_timestamp('04-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (136,'Musical Instruments',20,1,62,11,479,to_timestamp('06-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (137,'Musical Instruments',40,1,543,12,593,to_timestamp('23-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (138,'Musical Instruments',20,1,1,10,1911,to_timestamp('12-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (139,'Musical Instruments',20,3,59,6,1751,to_timestamp('09-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (140,'Web Development',35,1,1061,17,506,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (141,'Web Development',20,1,4333,17,1759,to_timestamp('29-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (142,'Business Finance',50,2,7750,15,677,to_timestamp('21-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (143,'Business Finance',20,0,0,7,1758,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (144,'Business Finance',90,1,4022,14,625,to_timestamp('03-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (145,'Business Finance',30,2,43,17,1604,to_timestamp('21-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (146,'Business Finance',35,1,2638,12,1528,to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (147,'Graphic Design',20,0,372,10,1157,to_timestamp('08-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (148,'Business Finance',95,2,1730,12,262,to_timestamp('08-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (149,'Web Development',0,3,15134,12,1271,to_timestamp('05-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (150,'Business Finance',20,1,265,17,329,to_timestamp('16-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (151,'Business Finance',55,2,166,16,1874,to_timestamp('03-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (152,'Web Development',65,3,755,18,1843,to_timestamp('11-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (153,'Web Development',50,3,3704,18,1833,to_timestamp('06-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (154,'Business Finance',20,1,193,14,1569,to_timestamp('17-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (155,'Business Finance',40,2,2103,6,1518,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (156,'Web Development',50,1,1274,15,1495,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (157,'Business Finance',50,2,353,17,1549,to_timestamp('19-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (158,'Web Development',45,0,1783,15,1685,to_timestamp('14-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (159,'Graphic Design',25,3,57,12,1019,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (160,'Web Development',0,1,5542,9,1921,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (161,'Business Finance',25,0,2046,8,802,to_timestamp('18-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (162,'Musical Instruments',30,0,438,12,1448,to_timestamp('29-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (163,'Graphic Design',20,1,34,18,1411,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (164,'Business Finance',25,2,148,15,521,to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (165,'Business Finance',50,3,1,9,1839,to_timestamp('23-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (166,'Musical Instruments',25,3,5,11,1841,to_timestamp('20-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (167,'Web Development',20,0,1476,8,613,to_timestamp('29-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (168,'Business Finance',25,5,5685,12,1390,to_timestamp('23-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (169,'Business Finance',20,2,2736,8,1756,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (170,'Web Development',65,1,578,8,1242,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (171,'Web Development',20,1,362,8,1815,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (172,'Musical Instruments',50,3,52,18,1124,to_timestamp('23-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (173,'Musical Instruments',20,1,8,9,750,to_timestamp('02-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (174,'Graphic Design',20,1,1602,16,1983,to_timestamp('03-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (175,'Web Development',50,3,305,13,936,to_timestamp('20-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (176,'Web Development',30,1,255,9,658,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (177,'Graphic Design',20,1,1933,13,1239,to_timestamp('14-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (178,'Web Development',20,2,715,12,1819,to_timestamp('23-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (179,'Business Finance',20,1,1609,18,1346,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (180,'Business Finance',200,3,66,19,1899,to_timestamp('11-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (181,'Graphic Design',0,0,381,7,570,to_timestamp('20-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (182,'Business Finance',35,1,0,12,363,to_timestamp('09-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (183,'Graphic Design',20,1,2,11,1437,to_timestamp('23-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (184,'Business Finance',30,2,3607,19,1168,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (185,'Musical Instruments',20,0,0,5,1308,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (186,'Business Finance',20,1,1740,8,643,to_timestamp('13-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (187,'Business Finance',20,1,232,17,1526,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (188,'Business Finance',50,1,4702,6,1746,to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (189,'Musical Instruments',50,1,8,10,594,to_timestamp('19-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (190,'Graphic Design',20,0,2,8,717,to_timestamp('01-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (191,'Business Finance',160,1,0,6,1031,to_timestamp('18-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (192,'Graphic Design',20,3,27,18,1834,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (193,'Business Finance',0,5,5931,15,1620,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (194,'Graphic Design',20,3,1076,15,1474,to_timestamp('02-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (195,'Business Finance',75,2,2276,19,1186,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (196,'Graphic Design',185,2,165,11,1769,to_timestamp('27-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (197,'Web Development',65,3,3380,16,1574,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (198,'Business Finance',0,1,1121,6,333,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (199,'Web Development',20,3,13960,19,1800,to_timestamp('05-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (200,'Musical Instruments',35,2,74,13,391,to_timestamp('12-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (201,'Business Finance',25,1,562,15,1167,to_timestamp('05-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (202,'Business Finance',200,1,399,15,1696,to_timestamp('03-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (203,'Business Finance',95,2,57,14,859,to_timestamp('17-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (204,'Business Finance',25,2,9,13,1158,to_timestamp('11-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (205,'Business Finance',0,1,2075,11,1338,to_timestamp('09-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (206,'Graphic Design',20,1,14,13,907,to_timestamp('27-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (207,'Business Finance',20,2,170,16,741,to_timestamp('14-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (208,'Business Finance',55,1,5,11,1738,to_timestamp('15-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (209,'Musical Instruments',20,3,1297,9,1578,to_timestamp('08-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (210,'Musical Instruments',130,0,0,6,1565,to_timestamp('11-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (211,'Business Finance',0,0,4931,7,1714,to_timestamp('15-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (212,'Business Finance',200,1,658,19,440,to_timestamp('03-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (213,'Business Finance',20,2,1189,15,564,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (214,'Graphic Design',25,2,8,11,461,to_timestamp('10-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (215,'Business Finance',60,2,32,15,1523,to_timestamp('21-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (216,'Web Development',25,1,2371,12,1470,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (217,'Business Finance',200,1,319,12,1400,to_timestamp('10-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (218,'Web Development',40,1,1275,18,1415,to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (219,'Business Finance',20,1,1509,9,1048,to_timestamp('27-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (220,'Business Finance',20,2,27,15,952,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (221,'Business Finance',20,3,2101,11,1173,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (222,'Business Finance',50,3,0,11,1247,to_timestamp('18-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (223,'Web Development',0,1,12974,13,1618,to_timestamp('19-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (224,'Musical Instruments',20,3,953,13,866,to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (225,'Web Development',40,0,601,6,1996,to_timestamp('14-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (226,'Web Development',20,0,783,13,453,to_timestamp('21-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (227,'Business Finance',40,1,2,11,798,to_timestamp('08-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (228,'Musical Instruments',20,1,21,11,669,to_timestamp('22-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (229,'Business Finance',20,3,2383,19,1072,to_timestamp('30-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (230,'Business Finance',0,1,6024,18,1164,to_timestamp('08-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (231,'Web Development',40,0,1122,7,1482,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (232,'Graphic Design',20,1,915,15,1469,to_timestamp('20-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (233,'Graphic Design',30,0,740,12,291,to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (234,'Web Development',55,1,3801,12,269,to_timestamp('11-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (235,'Web Development',0,0,7318,8,855,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (236,'Musical Instruments',100,0,1229,11,328,to_timestamp('11-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (237,'Business Finance',20,1,26,14,1238,to_timestamp('14-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (238,'Business Finance',40,1,2025,9,1761,to_timestamp('23-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (239,'Business Finance',30,2,2,10,571,to_timestamp('17-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (240,'Business Finance',20,2,260,17,657,to_timestamp('12-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (241,'Web Development',25,3,1011,19,1058,to_timestamp('02-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (242,'Musical Instruments',20,1,390,10,1591,to_timestamp('19-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (243,'Web Development',20,2,2964,9,1011,to_timestamp('21-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (244,'Graphic Design',50,0,2087,6,1135,to_timestamp('01-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (245,'Business Finance',200,3,7159,18,666,to_timestamp('16-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (246,'Business Finance',0,3,5874,9,841,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (247,'Business Finance',0,1,718,7,1946,to_timestamp('13-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (248,'Business Finance',30,1,66,11,809,to_timestamp('04-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (249,'Graphic Design',50,1,1235,10,1326,to_timestamp('23-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (250,'Business Finance',40,1,159,13,468,to_timestamp('10-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (251,'Business Finance',45,2,2230,10,1891,to_timestamp('30-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (252,'Graphic Design',20,0,1,5,1861,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (253,'Web Development',0,2,64128,17,696,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (254,'Business Finance',20,2,237,17,278,to_timestamp('07-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (2,'Math',300,2,81,4,1,to_timestamp('12-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (1,'gg',2,1,51,2,2,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('10-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (3,'de7k',5,1,9,5,1,to_timestamp('11-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('11-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (255,'Musical Instruments',35,3,2543,17,818,to_timestamp('02-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (256,'Web Development',50,3,11262,18,1250,to_timestamp('16-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (257,'Web Development',75,1,1945,10,1181,to_timestamp('13-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (258,'Web Development',200,2,3392,19,1643,to_timestamp('06-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (259,'Web Development',195,1,2547,18,813,to_timestamp('01-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (260,'Business Finance',60,2,775,11,807,to_timestamp('20-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (261,'Graphic Design',100,2,1000,12,546,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (262,'Graphic Design',40,1,246,12,1723,to_timestamp('30-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (263,'Musical Instruments',50,2,1018,5,1419,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (264,'Graphic Design',20,1,4208,19,245,to_timestamp('28-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (265,'Graphic Design',20,2,314,19,1344,to_timestamp('11-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (266,'Web Development',0,2,32260,12,1208,to_timestamp('25-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (267,'Business Finance',50,3,0,9,1871,to_timestamp('18-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (268,'Web Development',35,3,3485,19,1737,to_timestamp('28-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (269,'Web Development',0,1,21682,8,380,to_timestamp('04-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (270,'Web Development',95,5,975,18,531,to_timestamp('04-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (271,'Musical Instruments',20,1,13,9,635,to_timestamp('20-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (272,'Business Finance',50,1,9,6,358,to_timestamp('14-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (273,'Business Finance',20,8,10,7,454,to_timestamp('19-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (274,'Graphic Design',20,1,19,10,636,to_timestamp('04-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (275,'Business Finance',40,2,3555,11,1716,to_timestamp('14-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (276,'Web Development',95,1,2362,13,612,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (277,'Graphic Design',20,1,32,5,1426,to_timestamp('07-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (278,'Business Finance',40,2,5,16,1060,to_timestamp('19-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (279,'Business Finance',50,1,83,19,606,to_timestamp('10-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (280,'Web Development',0,7,3324,19,703,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (281,'Business Finance',50,7,155,11,1735,to_timestamp('09-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (282,'Business Finance',20,2,6,13,423,to_timestamp('26-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (283,'Graphic Design',20,1,770,8,250,to_timestamp('29-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (284,'Musical Instruments',35,2,79,15,273,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (285,'Graphic Design',20,1,311,9,1202,to_timestamp('10-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (286,'Musical Instruments',40,1,8,15,678,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (287,'Musical Instruments',40,1,81,11,526,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (288,'Business Finance',40,1,28,14,1763,to_timestamp('06-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (289,'Graphic Design',20,2,3903,13,1822,to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (290,'Musical Instruments',50,2,4,17,470,to_timestamp('19-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (291,'Musical Instruments',40,1,36,8,1296,to_timestamp('18-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (292,'Web Development',40,1,5387,15,1588,to_timestamp('24-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (293,'Musical Instruments',40,3,37,19,1184,to_timestamp('21-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (294,'Business Finance',20,1,1074,13,1118,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (295,'Musical Instruments',25,3,0,16,861,to_timestamp('26-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (296,'Business Finance',50,3,29,7,1070,to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (297,'Musical Instruments',0,1,1094,11,727,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (298,'Graphic Design',135,1,15,6,1042,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (299,'Musical Instruments',25,1,8,12,1795,to_timestamp('02-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (300,'Musical Instruments',75,1,7,14,1909,to_timestamp('29-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (301,'Business Finance',45,1,1311,5,852,to_timestamp('30-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (302,'Business Finance',20,1,225,5,1292,to_timestamp('09-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (303,'Business Finance',20,2,701,16,372,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (304,'Graphic Design',25,1,3,12,1793,to_timestamp('15-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (305,'Web Development',50,3,1339,18,693,to_timestamp('02-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (306,'Business Finance',50,0,306,5,1359,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (307,'Graphic Design',20,0,509,15,948,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (308,'Web Development',25,1,6937,7,482,to_timestamp('06-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (309,'Web Development',50,3,7660,19,847,to_timestamp('21-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (310,'Business Finance',60,1,22,8,1180,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (311,'Graphic Design',20,5,1,13,293,to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (312,'Musical Instruments',20,0,1026,19,449,to_timestamp('09-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (313,'Musical Instruments',35,0,0,13,988,to_timestamp('30-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (314,'Business Finance',200,0,44,12,1508,to_timestamp('19-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (315,'Musical Instruments',0,0,1876,11,1811,to_timestamp('01-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (316,'Graphic Design',20,1,390,15,824,to_timestamp('19-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (317,'Musical Instruments',45,3,178,11,1783,to_timestamp('22-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (318,'Business Finance',50,1,2134,5,838,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (319,'Graphic Design',30,2,1440,14,644,to_timestamp('15-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (320,'Business Finance',200,1,2,16,788,to_timestamp('26-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (321,'Web Development',50,0,586,17,778,to_timestamp('23-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (322,'Business Finance',95,1,55,15,1353,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (323,'Graphic Design',30,1,2266,10,429,to_timestamp('28-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (324,'Business Finance',90,1,0,12,1357,to_timestamp('26-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (325,'Business Finance',100,1,10,8,987,to_timestamp('22-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (326,'Web Development',25,3,1006,8,1986,to_timestamp('16-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (327,'Graphic Design',50,0,1146,5,1711,to_timestamp('03-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (328,'Business Finance',60,1,37,12,766,to_timestamp('24-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (329,'Web Development',100,1,22213,16,426,to_timestamp('21-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (330,'Web Development',95,3,11170,19,1252,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (331,'Business Finance',25,7,101,18,1374,to_timestamp('18-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (332,'Musical Instruments',50,4,7,17,651,to_timestamp('07-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (333,'Business Finance',20,1,20,9,752,to_timestamp('13-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (334,'Musical Instruments',30,2,4,9,1925,to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (335,'Graphic Design',20,1,35,11,1492,to_timestamp('13-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (336,'Business Finance',200,3,869,11,1253,to_timestamp('24-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (337,'Business Finance',20,4,5099,15,691,to_timestamp('03-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (338,'Business Finance',40,3,315,19,305,to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (339,'Web Development',95,3,2073,16,1943,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (340,'Business Finance',40,2,112,14,821,to_timestamp('16-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (341,'Web Development',200,0,1220,16,1123,to_timestamp('05-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (342,'Graphic Design',20,1,489,5,1451,to_timestamp('28-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (343,'Business Finance',20,4,50,12,1387,to_timestamp('04-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (344,'Web Development',20,1,3106,13,1845,to_timestamp('01-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (345,'Graphic Design',20,1,507,9,398,to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (346,'Graphic Design',0,0,5175,7,971,to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (347,'Web Development',195,1,1645,12,1187,to_timestamp('26-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (348,'Musical Instruments',30,2,14,13,899,to_timestamp('24-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (349,'Musical Instruments',30,2,119,16,1066,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (350,'Business Finance',25,2,4086,14,298,to_timestamp('02-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (351,'Business Finance',20,1,1122,6,1099,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (352,'Business Finance',20,1,13,5,726,to_timestamp('21-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (353,'Web Development',50,1,1282,12,1277,to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (354,'Graphic Design',35,1,1524,11,967,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (355,'Business Finance',50,0,1,6,1958,to_timestamp('20-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (356,'Graphic Design',20,1,20,5,1612,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (357,'Business Finance',45,4,2490,13,554,to_timestamp('10-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (358,'Web Development',40,3,1468,18,820,to_timestamp('06-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (359,'Musical Instruments',40,2,44,11,1807,to_timestamp('07-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (360,'Graphic Design',25,1,72,17,1348,to_timestamp('28-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (361,'Musical Instruments',40,1,28,13,906,to_timestamp('01-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (362,'Graphic Design',20,3,57,16,1511,to_timestamp('20-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (363,'Business Finance',30,3,267,10,1116,to_timestamp('26-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (364,'Musical Instruments',40,1,70,18,351,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (365,'Graphic Design',20,2,40,8,1087,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (366,'Musical Instruments',0,2,8240,6,516,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (367,'Graphic Design',195,3,1282,19,781,to_timestamp('01-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (368,'Graphic Design',20,0,0,8,407,to_timestamp('15-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (369,'Business Finance',20,3,7,15,340,to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (370,'Graphic Design',25,1,1401,12,1693,to_timestamp('25-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (371,'Business Finance',200,1,1793,15,1237,to_timestamp('01-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (372,'Graphic Design',30,1,0,9,1025,to_timestamp('06-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (373,'Web Development',100,2,4563,13,736,to_timestamp('30-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (374,'Business Finance',85,3,26,17,1101,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (375,'Musical Instruments',120,2,1424,16,1182,to_timestamp('29-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (376,'Graphic Design',80,1,827,15,599,to_timestamp('20-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (501,'Web Development',0,0,2437,10,598,to_timestamp('13-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (502,'Musical Instruments',25,0,1,11,618,to_timestamp('04-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (503,'Business Finance',55,5,72,15,1417,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (504,'Musical Instruments',25,0,21,12,1937,to_timestamp('02-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (505,'tyuj',5,5,5,7,1,to_timestamp('24-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (506,'tyuj',5,5,5,8,1,to_timestamp('24-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (507,'tyuj',5,5,5,3,1,to_timestamp('19-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (508,'tyuj',5,5,5,1,1,to_timestamp('19-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (509,'physics',55,500,20,10,1,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (510,'physics2',55,55,30,6,1,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('22-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (511,'physics3',20,40,25,6,1,to_timestamp('18-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (512,'OR',50,50,10,6,1,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('03-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (513,'test',9,88,35,7,1,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('31-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (514,'drefy',58,75,5,2,1,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (377,'Web Development',50,0,540,15,806,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (378,'Business Finance',20,3,0,10,376,to_timestamp('30-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (379,'Web Development',20,1,10610,10,534,to_timestamp('08-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (380,'Musical Instruments',20,1,589,8,698,to_timestamp('08-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (381,'Web Development',30,4,1154,9,1316,to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (382,'Business Finance',20,1,53,7,1875,to_timestamp('22-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (383,'Web Development',65,1,4797,11,597,to_timestamp('01-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (384,'Graphic Design',25,3,3,14,1129,to_timestamp('26-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (385,'Musical Instruments',30,1,545,10,1949,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (386,'Business Finance',0,1,12217,17,656,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (387,'Web Development',150,2,5495,18,1977,to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (388,'Web Development',20,3,10689,17,1354,to_timestamp('23-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (389,'Musical Instruments',20,0,53,9,791,to_timestamp('05-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (390,'Business Finance',20,1,18,11,1219,to_timestamp('11-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (391,'Web Development',20,1,4867,12,848,to_timestamp('31-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (392,'Business Finance',20,1,71,5,1045,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (393,'Web Development',45,1,1237,14,1055,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (394,'Graphic Design',20,5,1276,19,1682,to_timestamp('26-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (395,'Web Development',0,4,3933,14,1450,to_timestamp('30-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (396,'Web Development',65,2,713,8,267,to_timestamp('04-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (397,'Business Finance',50,1,440,10,933,to_timestamp('07-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (398,'Web Development',150,1,2063,12,942,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (399,'Web Development',0,1,3766,14,1295,to_timestamp('04-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (400,'Musical Instruments',0,1,2084,7,1535,to_timestamp('21-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (401,'Business Finance',80,1,1187,6,1931,to_timestamp('03-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (402,'Business Finance',200,1,1053,15,1454,to_timestamp('17-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (403,'Graphic Design',20,1,651,12,1418,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (404,'Business Finance',0,0,4653,5,1083,to_timestamp('01-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (405,'Business Finance',30,3,27,12,1915,to_timestamp('06-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (406,'Business Finance',85,3,150,19,1852,to_timestamp('20-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (407,'Business Finance',20,2,153,14,944,to_timestamp('11-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (408,'Web Development',20,1,791,16,935,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (409,'Musical Instruments',50,1,8,16,804,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (410,'Graphic Design',20,2,1557,12,1020,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (411,'Business Finance',40,0,1252,6,1468,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (412,'Musical Instruments',45,1,3141,15,697,to_timestamp('08-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (413,'Graphic Design',50,1,18,7,1825,to_timestamp('23-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (414,'Business Finance',45,1,172,15,1210,to_timestamp('15-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (415,'Graphic Design',20,1,33205,12,1305,to_timestamp('22-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (416,'Business Finance',60,30,1922,15,862,to_timestamp('24-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (417,'Business Finance',20,5,0,15,359,to_timestamp('04-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (418,'Musical Instruments',20,1,420,13,1637,to_timestamp('29-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (419,'Web Development',20,1,1312,11,1857,to_timestamp('10-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (420,'Graphic Design',95,0,1123,13,297,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (421,'Graphic Design',35,2,74,11,1945,to_timestamp('15-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (422,'Web Development',35,0,877,7,1320,to_timestamp('07-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (423,'Business Finance',60,4,266,14,1082,to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (424,'Musical Instruments',40,2,42,17,568,to_timestamp('16-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (425,'Musical Instruments',20,2,78,18,419,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (426,'Graphic Design',20,1,1606,9,961,to_timestamp('08-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (427,'Musical Instruments',40,1,55,13,246,to_timestamp('09-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (428,'Business Finance',100,3,12,17,1077,to_timestamp('20-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (429,'Graphic Design',50,3,2489,16,795,to_timestamp('29-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (430,'Musical Instruments',95,3,452,18,1883,to_timestamp('12-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (431,'Web Development',30,3,84897,10,1920,to_timestamp('16-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (432,'Business Finance',20,1,27,10,1922,to_timestamp('02-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (433,'Web Development',20,0,1780,6,1521,to_timestamp('24-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (434,'Web Development',0,2,8693,11,1452,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (435,'Business Finance',20,0,18,13,1726,to_timestamp('16-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (436,'Musical Instruments',25,2,1513,19,416,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (437,'Web Development',0,0,4830,7,810,to_timestamp('18-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (438,'Web Development',20,0,1393,9,257,to_timestamp('11-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (439,'Business Finance',20,1,326,14,465,to_timestamp('22-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (440,'Graphic Design',20,0,1586,5,1196,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (441,'Business Finance',20,3,21,12,1621,to_timestamp('06-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (442,'Musical Instruments',30,2,1337,18,860,to_timestamp('01-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (443,'Business Finance',20,0,44,8,1439,to_timestamp('28-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (444,'Business Finance',20,2,78,10,1744,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (445,'Musical Instruments',50,1,2154,16,1297,to_timestamp('22-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (446,'Graphic Design',40,3,10,18,1050,to_timestamp('30-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (447,'Musical Instruments',20,0,25,10,1038,to_timestamp('27-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (448,'Business Finance',0,0,2058,6,255,to_timestamp('16-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (449,'Business Finance',95,0,32,7,437,to_timestamp('12-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (450,'Web Development',30,1,3652,7,409,to_timestamp('15-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (451,'Web Development',0,1,5533,11,1479,to_timestamp('13-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (452,'Web Development',40,3,305,9,304,to_timestamp('02-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (453,'Business Finance',25,1,0,10,1880,to_timestamp('25-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (454,'Web Development',50,1,1096,10,965,to_timestamp('29-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (455,'Business Finance',20,3,2185,13,923,to_timestamp('23-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (456,'Web Development',20,3,25854,17,686,to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (457,'Web Development',0,3,6909,14,759,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (458,'Graphic Design',35,2,83,17,1380,to_timestamp('15-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (459,'Business Finance',20,0,23,6,1674,to_timestamp('07-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (460,'Business Finance',20,1,1168,11,1767,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (461,'Graphic Design',100,0,23,9,1506,to_timestamp('06-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (462,'Business Finance',0,3,6533,9,1477,to_timestamp('21-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (463,'Graphic Design',40,2,5,16,1616,to_timestamp('02-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (464,'Business Finance',20,0,0,12,289,to_timestamp('20-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (465,'Business Finance',20,3,3730,17,661,to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (466,'Business Finance',25,1,7,13,1739,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (467,'Business Finance',100,1,94,9,1859,to_timestamp('23-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (468,'Musical Instruments',45,1,66,8,857,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (469,'Business Finance',20,2,3,8,1026,to_timestamp('15-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (470,'Business Finance',20,1,44,8,1459,to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (471,'Business Finance',200,3,0,10,605,to_timestamp('07-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (472,'Graphic Design',0,1,21,18,446,to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (473,'Business Finance',50,3,8,14,1097,to_timestamp('20-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (474,'Web Development',40,1,1950,16,260,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (475,'Business Finance',20,6,11,19,1298,to_timestamp('27-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (476,'Business Finance',60,1,89,10,1636,to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (477,'Musical Instruments',50,2,4733,15,768,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (478,'Graphic Design',20,2,13,14,1427,to_timestamp('27-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (479,'Graphic Design',0,1,5086,12,320,to_timestamp('04-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (480,'Web Development',0,1,21689,13,502,to_timestamp('20-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (481,'Business Finance',20,0,1,12,1914,to_timestamp('22-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (482,'Web Development',35,0,1812,7,616,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (483,'Business Finance',45,1,1119,18,663,to_timestamp('27-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (484,'Graphic Design',25,3,6215,17,460,to_timestamp('24-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (485,'Business Finance',95,3,302,19,823,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (486,'Web Development',95,1,177,10,1335,to_timestamp('14-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (487,'Business Finance',200,3,1079,16,1749,to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (488,'Graphic Design',30,0,1350,11,1812,to_timestamp('05-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (489,'Musical Instruments',40,2,1638,17,1571,to_timestamp('08-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (490,'Graphic Design',50,2,12,15,1044,to_timestamp('27-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (491,'Musical Instruments',20,2,273,6,1331,to_timestamp('13-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (492,'Business Finance',30,0,6,19,690,to_timestamp('09-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (493,'Business Finance',30,3,1235,15,764,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (494,'Graphic Design',20,5,858,17,1721,to_timestamp('20-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (495,'Business Finance',200,0,273,15,607,to_timestamp('19-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (496,'Business Finance',20,1,38,16,1321,to_timestamp('21-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (497,'Business Finance',195,1,1680,17,1872,to_timestamp('26-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (498,'Musical Instruments',45,0,2346,14,626,to_timestamp('06-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (499,'Business Finance',20,3,2283,16,903,to_timestamp('01-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (500,'Web Development',150,0,2641,15,1018,to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (5,'Graphic Design',20,1,1,9,1033,to_timestamp('17-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (6,'Web Development',20,2,5318,13,687,to_timestamp('11-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (7,'Musical Instruments',55,1,1203,10,1322,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (8,'Business Finance',50,1,30,6,412,to_timestamp('07-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (9,'Web Development',200,1,1935,10,1979,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (10,'Business Finance',20,5,194,19,1192,to_timestamp('23-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (11,'Business Finance',95,1,26,5,733,to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (12,'Graphic Design',200,1,6,11,1541,to_timestamp('01-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (13,'Business Finance',20,1,71,5,980,to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (14,'Graphic Design',25,2,598,13,336,to_timestamp('24-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (15,'Web Development',45,2,1764,16,1137,to_timestamp('11-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (16,'Business Finance',25,1,0,10,490,to_timestamp('22-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (17,'Web Development',85,0,1096,7,1032,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (18,'Business Finance',20,0,3,6,1503,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (19,'Business Finance',20,3,3125,13,1262,to_timestamp('10-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (20,'Musical Instruments',55,2,42,19,1216,to_timestamp('19-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (21,'Musical Instruments',20,3,10,8,592,to_timestamp('28-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (22,'Business Finance',20,1,9,6,775,to_timestamp('07-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (23,'Musical Instruments',20,0,0,8,1140,to_timestamp('08-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (24,'Web Development',0,1,6742,6,1393,to_timestamp('25-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (25,'Web Development',95,2,478,18,761,to_timestamp('23-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (26,'Graphic Design',0,0,2665,8,1027,to_timestamp('26-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (27,'Web Development',20,2,2853,16,290,to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (28,'Web Development',115,1,783,13,1471,to_timestamp('13-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (29,'Graphic Design',55,3,363,19,895,to_timestamp('28-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (30,'Musical Instruments',50,1,1976,16,638,to_timestamp('08-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (31,'Business Finance',20,2,373,14,647,to_timestamp('15-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (32,'Musical Instruments',40,1,124,14,258,to_timestamp('18-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (33,'Business Finance',50,1,989,11,266,to_timestamp('02-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (34,'Graphic Design',95,2,1418,19,1831,to_timestamp('18-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (35,'Musical Instruments',20,1,20,12,439,to_timestamp('18-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (36,'Web Development',50,3,2351,16,306,to_timestamp('31-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (37,'Business Finance',125,1,1136,13,1790,to_timestamp('13-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (38,'Business Finance',100,4,9,19,722,to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (39,'Business Finance',90,2,2338,5,1579,to_timestamp('08-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (40,'Musical Instruments',0,1,2995,19,367,to_timestamp('11-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (41,'Web Development',20,1,7449,13,1644,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (42,'Business Finance',20,1,13,9,1397,to_timestamp('27-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (43,'Business Finance',0,0,1514,11,287,to_timestamp('06-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (44,'Musical Instruments',35,3,162,14,275,to_timestamp('24-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (45,'Musical Instruments',20,0,0,6,1154,to_timestamp('16-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (46,'Business Finance',20,1,3870,10,493,to_timestamp('26-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (47,'Musical Instruments',40,2,42,11,408,to_timestamp('30-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (48,'Musical Instruments',35,1,478,18,1067,to_timestamp('17-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (49,'Web Development',20,1,496,17,1113,to_timestamp('20-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (50,'Musical Instruments',35,3,73,16,1536,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (51,'Business Finance',200,1,336,13,1856,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (52,'Graphic Design',20,1,1675,12,1649,to_timestamp('04-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (53,'Graphic Design',20,3,5,17,1015,to_timestamp('19-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (54,'Business Finance',200,5,22,18,1440,to_timestamp('22-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (55,'Business Finance',0,2,10540,14,1907,to_timestamp('15-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (56,'Graphic Design',20,0,0,12,1199,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (57,'Business Finance',200,0,276,11,892,to_timestamp('21-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (58,'Graphic Design',20,1,1085,10,1198,to_timestamp('15-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (59,'Business Finance',20,3,1037,12,1369,to_timestamp('14-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (60,'Web Development',20,2,17554,16,1944,to_timestamp('31-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (61,'Business Finance',35,1,8,10,989,to_timestamp('12-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (62,'Web Development',0,1,3883,9,1980,to_timestamp('14-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (63,'Business Finance',40,3,1643,19,251,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (64,'Business Finance',200,3,1909,19,581,to_timestamp('21-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (65,'Graphic Design',20,1,0,18,790,to_timestamp('11-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (66,'Graphic Design',0,1,4294,15,317,to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (67,'Business Finance',50,2,0,10,1632,to_timestamp('01-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (68,'Musical Instruments',135,0,1,5,414,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (69,'Business Finance',20,1,1092,13,1372,to_timestamp('02-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (70,'Business Finance',40,3,0,18,1244,to_timestamp('15-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (71,'Musical Instruments',60,1,1,11,1706,to_timestamp('21-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (72,'Musical Instruments',45,2,64,15,1517,to_timestamp('13-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (73,'Graphic Design',20,1,549,8,1647,to_timestamp('28-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (74,'Business Finance',200,2,36,12,1188,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (75,'Business Finance',20,4,797,16,296,to_timestamp('06-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (76,'Web Development',195,2,12068,12,1782,to_timestamp('21-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (77,'Web Development',20,3,3258,16,489,to_timestamp('20-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (78,'Web Development',35,1,920,7,1728,to_timestamp('08-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (79,'Business Finance',30,0,5983,7,1484,to_timestamp('22-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (80,'Graphic Design',50,1,2199,16,1171,to_timestamp('28-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (81,'Musical Instruments',20,0,22,10,1791,to_timestamp('16-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (82,'Graphic Design',20,1,593,13,785,to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (83,'Business Finance',20,1,27,6,891,to_timestamp('26-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (84,'Business Finance',40,4,204,18,1191,to_timestamp('26-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (85,'Business Finance',20,3,16,11,1904,to_timestamp('09-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('13-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (86,'Graphic Design',35,1,1356,11,1309,to_timestamp('13-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (87,'Web Development',20,2,3877,15,1368,to_timestamp('10-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (88,'Musical Instruments',30,1,26,14,893,to_timestamp('17-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (89,'Musical Instruments',20,0,19,9,1775,to_timestamp('26-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (90,'Web Development',0,1,21245,9,1527,to_timestamp('06-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (91,'Musical Instruments',0,1,408,10,742,to_timestamp('04-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (92,'Graphic Design',20,6,347,11,1109,to_timestamp('22-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (93,'Business Finance',60,1,1338,7,885,to_timestamp('25-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (94,'Business Finance',50,3,406,15,1687,to_timestamp('25-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (95,'Web Development',0,2,3782,11,1792,to_timestamp('24-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (96,'Business Finance',20,3,2045,10,1708,to_timestamp('02-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (97,'Graphic Design',40,3,0,13,919,to_timestamp('17-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (98,'Business Finance',20,1,6374,14,1858,to_timestamp('11-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (99,'Musical Instruments',20,1,12,12,1375,to_timestamp('11-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (100,'Graphic Design',20,0,5,9,1952,to_timestamp('28-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (101,'Graphic Design',20,1,1679,15,1275,to_timestamp('05-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (102,'Graphic Design',20,1,677,11,1486,to_timestamp('20-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (103,'Business Finance',40,2,206,7,548,to_timestamp('15-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (104,'Graphic Design',50,2,2424,15,1385,to_timestamp('07-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('19-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (105,'Web Development',30,0,1305,8,688,to_timestamp('02-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (106,'Web Development',20,1,263,7,501,to_timestamp('20-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (107,'Web Development',20,1,2388,12,1028,to_timestamp('01-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (108,'Graphic Design',20,1,679,9,577,to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (109,'Business Finance',35,2,1135,16,1929,to_timestamp('27-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (110,'Graphic Design',20,0,4,7,1599,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (111,'Business Finance',0,4,1362,13,1615,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (112,'Musical Instruments',20,1,41,13,1838,to_timestamp('02-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (113,'Musical Instruments',40,2,1060,15,393,to_timestamp('03-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (114,'Web Development',20,0,945,11,1853,to_timestamp('24-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (115,'Musical Instruments',45,3,98,14,1147,to_timestamp('21-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (116,'Graphic Design',75,2,213,16,1585,to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (117,'Web Development',25,2,1309,14,922,to_timestamp('04-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (118,'Graphic Design',20,1,286,7,492,to_timestamp('16-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (119,'Business Finance',20,1,227,5,879,to_timestamp('03-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (120,'Graphic Design',20,1,21,17,1764,to_timestamp('03-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (121,'Graphic Design',0,2,3812,11,519,to_timestamp('28-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('18-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (122,'Graphic Design',195,3,3360,16,1475,to_timestamp('19-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (123,'Musical Instruments',50,4,297,17,1778,to_timestamp('10-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('14-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (124,'Web Development',70,2,909,13,760,to_timestamp('06-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (125,'Web Development',0,1,9786,7,1691,to_timestamp('04-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (126,'Musical Instruments',20,1,83,9,1249,to_timestamp('26-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('17-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (127,'Musical Instruments',20,1,17,13,583,to_timestamp('28-JUL-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (128,'Business Finance',50,3,769,18,588,to_timestamp('15-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('16-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (129,'Musical Instruments',40,2,32,11,476,to_timestamp('29-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('21-OCT-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (130,'Graphic Design',20,0,4,8,1655,to_timestamp('16-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('20-NOV-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));

---------------------------------------------------
--   END DATA FOR TABLE COURSE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE FILMACTORS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into FILMACTORS
Insert into FILMACTORS (FILMID,ACTORID) values (1,1);
Insert into FILMACTORS (FILMID,ACTORID) values (1,2);
Insert into FILMACTORS (FILMID,ACTORID) values (1,3);
Insert into FILMACTORS (FILMID,ACTORID) values (2,4);
Insert into FILMACTORS (FILMID,ACTORID) values (2,5);
Insert into FILMACTORS (FILMID,ACTORID) values (2,6);
Insert into FILMACTORS (FILMID,ACTORID) values (3,7);
Insert into FILMACTORS (FILMID,ACTORID) values (3,8);
Insert into FILMACTORS (FILMID,ACTORID) values (3,9);
Insert into FILMACTORS (FILMID,ACTORID) values (3,10);
Insert into FILMACTORS (FILMID,ACTORID) values (4,11);
Insert into FILMACTORS (FILMID,ACTORID) values (4,12);
Insert into FILMACTORS (FILMID,ACTORID) values (4,13);
Insert into FILMACTORS (FILMID,ACTORID) values (5,1);
Insert into FILMACTORS (FILMID,ACTORID) values (5,2);
Insert into FILMACTORS (FILMID,ACTORID) values (5,3);
Insert into FILMACTORS (FILMID,ACTORID) values (6,14);
Insert into FILMACTORS (FILMID,ACTORID) values (6,15);
Insert into FILMACTORS (FILMID,ACTORID) values (6,16);
Insert into FILMACTORS (FILMID,ACTORID) values (7,17);
Insert into FILMACTORS (FILMID,ACTORID) values (7,18);
Insert into FILMACTORS (FILMID,ACTORID) values (7,19);
Insert into FILMACTORS (FILMID,ACTORID) values (8,20);
Insert into FILMACTORS (FILMID,ACTORID) values (8,21);
Insert into FILMACTORS (FILMID,ACTORID) values (8,22);
Insert into FILMACTORS (FILMID,ACTORID) values (9,23);
Insert into FILMACTORS (FILMID,ACTORID) values (9,24);
Insert into FILMACTORS (FILMID,ACTORID) values (9,25);
Insert into FILMACTORS (FILMID,ACTORID) values (10,26);
Insert into FILMACTORS (FILMID,ACTORID) values (10,27);
Insert into FILMACTORS (FILMID,ACTORID) values (11,26);
Insert into FILMACTORS (FILMID,ACTORID) values (12,27);
Insert into FILMACTORS (FILMID,ACTORID) values (12,28);

---------------------------------------------------
--   END DATA FOR TABLE FILMACTORS
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table ACTORS
--------------------------------------------------------

  ALTER TABLE "ACTORS" MODIFY ("ACTORNAME" NOT NULL ENABLE);
 
  ALTER TABLE "ACTORS" ADD PRIMARY KEY ("ACTORID") ENABLE;

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
--  Constraints for Table DEPT
--------------------------------------------------------

  ALTER TABLE "DEPT" ADD CONSTRAINT "PK_DEPT" PRIMARY KEY ("DEPTNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "EMP" ADD CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES" ADD PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_PK" PRIMARY KEY ("STUDNET_ID", "COURSE_ID") ENABLE;
 
  ALTER TABLE "ENROLLMENT" MODIFY ("STUDNET_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ENROLLMENT" MODIFY ("COURSE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILMACTORS
--------------------------------------------------------

  ALTER TABLE "FILMACTORS" ADD CONSTRAINT "FLM_ACT_PK" PRIMARY KEY ("FILMID", "ACTORID") ENABLE;
--------------------------------------------------------
--  Constraints for Table FILMCATEGORY
--------------------------------------------------------

  ALTER TABLE "FILMCATEGORY" ADD PRIMARY KEY ("CATEGORYID") ENABLE;
--------------------------------------------------------
--  Constraints for Table FILMCOPIES
--------------------------------------------------------

  ALTER TABLE "FILMCOPIES" ADD PRIMARY KEY ("COPYID") ENABLE;
--------------------------------------------------------
--  Constraints for Table FILMTITLES
--------------------------------------------------------

  ALTER TABLE "FILMTITLES" ADD PRIMARY KEY ("FILMID") ENABLE;
--------------------------------------------------------
--  Constraints for Table HALL
--------------------------------------------------------

  ALTER TABLE "HALL" ADD CONSTRAINT "HALL_PK" PRIMARY KEY ("HALL_NUM") ENABLE;
 
  ALTER TABLE "HALL" MODIFY ("HALL_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INSTRUCTOR
--------------------------------------------------------

  ALTER TABLE "INSTRUCTOR" ADD CONSTRAINT "INSTRUCTOR_PK" PRIMARY KEY ("INSTRCUTOR_ID") ENABLE;
 
  ALTER TABLE "INSTRUCTOR" ADD CONSTRAINT "INSTRUCTOR_UK1" UNIQUE ("INSTRCUTOR_ID", "EMAIL") ENABLE;
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("INSTRCUTOR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("LASTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" MODIFY ("BALANCE" NOT NULL ENABLE);
 
  ALTER TABLE "INSTRUCTOR" ADD UNIQUE ("EMAIL") ENABLE;
 
  ALTER TABLE "INSTRUCTOR" ADD UNIQUE ("USERNAME") ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBERS
--------------------------------------------------------

  ALTER TABLE "MEMBERS" MODIFY ("MEMNAME" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBERS" ADD PRIMARY KEY ("MEMBERID") ENABLE;
--------------------------------------------------------
--  Constraints for Table RENTALS
--------------------------------------------------------

  ALTER TABLE "RENTALS" ADD PRIMARY KEY ("RENTID") ENABLE;

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
--  DDL for Index FLM_ACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLM_ACT_PK" ON "FILMACTORS" ("FILMID", "ACTORID") 
  ;
--------------------------------------------------------
--  DDL for Index HALL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HALL_PK" ON "HALL" ("HALL_NUM") 
  ;
--------------------------------------------------------
--  DDL for Index INSTRUCTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INSTRUCTOR_PK" ON "INSTRUCTOR" ("INSTRCUTOR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INSTRUCTOR_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "INSTRUCTOR_UK1" ON "INSTRUCTOR" ("INSTRCUTOR_ID", "EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index PK_DEPT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DEPT" ON "DEPT" ("DEPTNO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EMP
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EMP" ON "EMP" ("EMPNO") 
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
	  REFERENCES "INSTRUCTOR" ("INSTRCUTOR_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "EMP" ADD CONSTRAINT "FK_DEPTNO" FOREIGN KEY ("DEPTNO")
	  REFERENCES "DEPT" ("DEPTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES" ADD FOREIGN KEY ("DEPID")
	  REFERENCES "DEPT" ("DEPTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENROLLMENT
--------------------------------------------------------

  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_COURSE_FK1" FOREIGN KEY ("COURSE_ID")
	  REFERENCES "COURSE" ("COURSE_ID") ENABLE;
 
  ALTER TABLE "ENROLLMENT" ADD CONSTRAINT "ENROLLMENT_STUDENT_FK1" FOREIGN KEY ("STUDNET_ID")
	  REFERENCES "STUDENT" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FILMACTORS
--------------------------------------------------------

  ALTER TABLE "FILMACTORS" ADD FOREIGN KEY ("FILMID")
	  REFERENCES "FILMTITLES" ("FILMID") ENABLE;
 
  ALTER TABLE "FILMACTORS" ADD FOREIGN KEY ("ACTORID")
	  REFERENCES "ACTORS" ("ACTORID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table FILMCOPIES
--------------------------------------------------------

  ALTER TABLE "FILMCOPIES" ADD FOREIGN KEY ("FILMID")
	  REFERENCES "FILMTITLES" ("FILMID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FILMTITLES
--------------------------------------------------------

  ALTER TABLE "FILMTITLES" ADD FOREIGN KEY ("FILMCATEGORYID")
	  REFERENCES "FILMCATEGORY" ("CATEGORYID") ON DELETE CASCADE ENABLE;



--------------------------------------------------------
--  Ref Constraints for Table RENTALS
--------------------------------------------------------

  ALTER TABLE "RENTALS" ADD FOREIGN KEY ("MEMBERID")
	  REFERENCES "MEMBERS" ("MEMBERID") ENABLE;

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
--  DDL for Procedure GETCOPIES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GETCOPIES" (fti in VARCHAR2, cid out sys_refcursor )
as 
BEGIN
open cid for
select fc.copyid
from FILMCOPIES fc, filmtitles ft
where fc.filmid = ft.filmid and ft.filmtitle = fti and fc.CurrentlyRented = 'n';
end;

/

--------------------------------------------------------
--  DDL for Procedure GETCOPYID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GETCOPYID" 
(FTitle in varchar2 , CID out sys_refcursor)
as
begin
open CID for
select fc.CopyID
from FilmCopies fc , FilmTitles F 
where fc.FilmID = F.FilmID and fc.CurrentlyRented = 'n' and 
F.FilmTitle = Ftitle ;
end;

/

--------------------------------------------------------
--  DDL for Procedure GETRENTID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GETRENTID" (RID out number)
as
begin
select max(rentid)
into RID
from rentals;
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
--  DDL for Procedure INSERT_INSTRCUTOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_INSTRCUTOR" (usern VARCHAR2, firstn varchar2, lastn varchar2, phone NUMBER, email varchar2, bal NUMBER, pass varchar2)
as 
begin
insert into instructor(instructor.INSTRCUTOR_ID, username, firstname, lastname, mobile_number, email, password, BALANCE ) VALUES (INSTRUCTOR_ID_SEQ.nextval, usern, firstn, lastn,phone, email, pass, bal);
end;



/

--------------------------------------------------------
--  DDL for Procedure INSERT_RENTAL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_RENTAL" 
(RID number, MID Number,CID Number,
DRented  Date, DBack  Date, Cost  Number)
as
begin
insert  into  Rentals
(RentID, MemberID,CopyID, DateRented, DateDueBack, RentalCost)
Values ( RID, MID, CID, DRented, DBack, Cost) ;
End ;

/

--------------------------------------------------------
--  DDL for Procedure INSERT_STUDENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_STUDENT" (usern VARCHAR2, firstn varchar2, lastn varchar2, phone NUMBER, em varchar2, bal NUMBER)
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
  where session_date >= current_date and course_id = (SELECT cs.course_id 
                    FROM course cs
                    WHERE cs.course_id = 1);
END NEXTSESSION;

/

--------------------------------------------------------
--  DDL for Procedure RENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "RENT" (rid number, memid NUMBER, cid NUMBER, dentered DATE, ddue date, rcost NUMBER)
as
begin
insert into rentals 
(rentid, memberid, copyid, daterented, datedueback, rentalcost) values(rid, memid, cid, dentered, ddue, rcost); 
end;

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

