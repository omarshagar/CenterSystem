--------------------------------------------------------
--  File created - Thursday-June-03-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ACTID
--------------------------------------------------------

   CREATE SEQUENCE  "ACTID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COURSE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COURSE_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HALL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HALL_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQID"  MINVALUE 1 MAXVALUE 200 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SESSIONS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SESSIONS_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000000000000 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
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
	"EMAIL" VARCHAR2(50), 
	"PASSWORD" VARCHAR2(20) DEFAULT 123, 
	"BALANCE" NUMBER DEFAULT 0, 
	"MOBILE_NUMBER" NUMBER DEFAULT 0, 
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
   (	"STUDENT_ID" NUMBER, 
	"FIRSTNAME" VARCHAR2(20), 
	"LASTNAME" VARCHAR2(20), 
	"EMAIL" VARCHAR2(50), 
	"PASSWORD" VARCHAR2(20) DEFAULT 123, 
	"BALANCE" NUMBER DEFAULT 0, 
	"MOBILE_NUMBER" NUMBER DEFAULT 0, 
	"USERNAME" VARCHAR2(20)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE HALL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HALL
Insert into HALL (HALL_NUM,CAPACITY) values (1,30);

---------------------------------------------------
--   END DATA FOR TABLE HALL
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE INSTRUCTOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into INSTRUCTOR
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1,'Ahmed','Salah','tatata','111111',3000,10101010101,'AhmedSala7');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (6,'Kad','Kad','Kad#ol','123',1,1010,'Kad');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2,'Karim','Emara','hh','123',0,1,'hh');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (5,'d','d','d','123',1,3,'d');
Insert into INSTRUCTOR (INSTRUCTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (4,'Koa','ss','ss','123',0,2,'ss');

---------------------------------------------------
--   END DATA FOR TABLE INSTRUCTOR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SESSIONS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SESSIONS
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (18,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (19,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (20,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (21,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (22,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (12,1,1,3,to_timestamp('12-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (13,1,1,3,to_timestamp('19-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (14,1,1,3,to_timestamp('26-JUL-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (15,1,1,3,to_timestamp('02-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (16,1,1,3,to_timestamp('09-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (17,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (23,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (24,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (25,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (26,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (27,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (28,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (29,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (30,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (31,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (32,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (33,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (34,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (35,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (36,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (37,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (38,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (39,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (40,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (41,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (42,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (43,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (44,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (45,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (46,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (47,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (48,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (49,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (50,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (51,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (52,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (53,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (54,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (55,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (56,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (57,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (58,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (59,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (60,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (61,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (62,1,1,3,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (63,1,1,3,to_timestamp('17-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (64,1,1,3,to_timestamp('24-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (65,1,1,3,to_timestamp('31-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (66,1,1,3,to_timestamp('07-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));

---------------------------------------------------
--   END DATA FOR TABLE SESSIONS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE STUDENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into STUDENT
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (3,'Omar','Shreet','omar.btw@hotnailc,om','123',520,101029327,'OmarShreet');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (0,'Omar','Monem','whatever','123',400,1010,'omr2000');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2,'Hassan','Hassan','whateverlol','123',2000,1928,'Omar2000');

---------------------------------------------------
--   END DATA FOR TABLE STUDENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ENROLLMENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ENROLLMENT

---------------------------------------------------
--   END DATA FOR TABLE ENROLLMENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE COURSE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into COURSE
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (1,'gg',2,1,50,2,1,to_timestamp('10-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('10-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (2,'Math',300,2,80,4,1,to_timestamp('12-AUG-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('12-SEP-21 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));

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

  CREATE OR REPLACE PROCEDURE "ADD_SESSIONS_IN_INTERVAL" (course_id in Course.Course_Id%Type ,SessionDay in Date ,starttime in sessions.start_hour%type,hallId in integer ,sucess out integer )
is 
curday Date ;
tmp date;
enddate Date;
beg Date;
cnt INTEGER;
begin
select cc.start_date , cc.end_date  into tmp , enddate from course cc where cc.course_id=course_id;
curday:= sessionday;
select greatest(sessionday, tmp) into curday  from dual;
select greatest(curday, sysdate) into curday  from dual;
beg:=curday;

while curday<=enddate LOOP
    insert into sessions values(sessions_id_seq.nextval,course_id,hallid,starttime,curday);
    curday:=curday+7;
end loop;
sucess:=1;



end add_sessions_in_interval;

/

--------------------------------------------------------
--  DDL for Procedure CHECK_CONT_IN_INSTR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CHECK_CONT_IN_INSTR" (SessionDay in Date ,starttime in sessions.start_hour%type,hallId in integer,inst_id in number ,sucess out integer )
is 
curday Date ;
tmp date;
enddate Date;
beg Date;
cnt INTEGER;
begin
select cc.start_date , cc.end_date  into tmp , enddate from course cc where cc.course_id=course_id;
curday:= sessionday;
select greatest(sessionday, tmp) into curday  from dual;
select greatest(curday, sysdate) into curday  from dual;
beg:=curday;
sucess:=1;
while curday<=enddate LOOP
select count(s.session_id) into cnt from sessions s where s.session_date=curday and s.start_hour= starttime and inst_id= (select c.instructor_id from Course c where c.course_id= s.course_id);
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

  CREATE OR REPLACE PROCEDURE "CHECK_CONT_IN_SESSIONS" (SessionDay in Date ,starttime in sessions.start_hour%type,hallId in integer ,sucess out integer )
is 
curday Date ;
tmp date;
enddate Date;
beg Date;
cnt INTEGER;
begin
select cc.start_date , cc.end_date  into tmp , enddate from course cc where cc.course_id=course_id;
curday:= sessionday;
select greatest(sessionday, tmp) into curday  from dual;
select greatest(curday, sysdate) into curday  from dual;
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

