--------------------------------------------------------
--  File created - Sunday-May-30-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ACTID
--------------------------------------------------------

   CREATE SEQUENCE  "ACTID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQID"  MINVALUE 1 MAXVALUE 200 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
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
	"INSTRUCTOR_ID" NUMBER
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
	"DEPTNO" NUMBER(2,0), 
	"SKILLS" CHAR(3), 
	"GENDER" CHAR(1)
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
   (	"SESSION_ID" VARCHAR2(20), 
	"COURSE_ID" NUMBER, 
	"HALL_NUM" NUMBER, 
	"HOUR" NUMBER, 
	"DAY" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "STUDENT" 
   (	"STUDENT_ID" NUMBER, 
	"FIRSTNAME" VARCHAR2(20), 
	"LASTNAME" VARCHAR2(20), 
	"EMAIL" VARCHAR2(50), 
	"PASSWORD" VARCHAR2(20), 
	"BALANCE " NUMBER, 
	"MOBILE_NUMBER" NUMBER DEFAULT 0, 
	"USERNAME" VARCHAR2(20)
   ) ;

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
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID) values (1,'OS',100,3,250,10,1);

---------------------------------------------------
--   END DATA FOR TABLE COURSE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE STUDENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into STUDENT

---------------------------------------------------
--   END DATA FOR TABLE STUDENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE INSTRUCTOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into INSTRUCTOR
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1,'Ahmed','Salah','tatata','111111',3000,10101010101,null);

---------------------------------------------------
--   END DATA FOR TABLE INSTRUCTOR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE HALL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HALL

---------------------------------------------------
--   END DATA FOR TABLE HALL
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SESSIONS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SESSIONS

---------------------------------------------------
--   END DATA FOR TABLE SESSIONS
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

  ALTER TABLE "SESSIONS" ADD CONSTRAINT "SESSIONS_CHK1" CHECK (HOUR > 0 and HOUR <= 24) ENABLE;
 
  ALTER TABLE "SESSIONS" ADD CONSTRAINT "SESSIONS_PK" PRIMARY KEY ("SESSION_ID") ENABLE;
 
  ALTER TABLE "SESSIONS" MODIFY ("SESSION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SESSIONS" MODIFY ("COURSE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SESSIONS" MODIFY ("HALL_NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SESSIONS" MODIFY ("HOUR" NOT NULL ENABLE);
 
  ALTER TABLE "SESSIONS" MODIFY ("DAY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "STUDENT" ADD CONSTRAINT "STUDENT_PK" PRIMARY KEY ("STUDENT_ID") ENABLE;
 
  ALTER TABLE "STUDENT" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("LASTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "STUDENT" MODIFY ("BALANCE " NOT NULL ENABLE);
 
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

