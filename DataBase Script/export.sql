--------------------------------------------------------
--  File created - Friday-June-11-2021   
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

   CREATE SEQUENCE  "STUDENT_ID_SEQ"  MINVALUE 1 MAXVALUE 100000000 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
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
Insert into INSTRUCTOR (INSTRCUTOR_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (1,'Ahmed','Salah','tatata','111111',3322,10101010101,null);

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
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (22,'ff','ff','ff','ff',55,123456789,'ff');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (3,'Omar','Shreet','omar.btw@hotnailc,om','123',198,101029327,'OmarShreet');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (0,'Omar','Monem','whatever','123',400,1010,'omr2000');
Insert into STUDENT (STUDENT_ID,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,BALANCE,MOBILE_NUMBER,USERNAME) values (2,'Hassan','Hassan','whateverlol','123',2000,1928,'Omar2000');

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
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (54,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (55,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (56,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (57,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (58,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (59,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (60,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (61,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (62,1,1,3,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (63,1,1,3,to_timestamp('17-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (64,1,1,3,to_timestamp('24-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (65,1,1,3,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (66,1,1,3,to_timestamp('07-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into SESSIONS (SESSION_ID,COURSE_ID,HALL_NUM,START_HOUR,SESSION_DATE) values (90,3,1,4,to_timestamp('31-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));

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
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (2,'Math',300,2,81,4,1,to_timestamp('12-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('12-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (1,'gg',2,1,51,2,1,to_timestamp('10-AUG-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('10-SEP-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));
Insert into COURSE (COURSE_ID,COURSE_NAME,COST,DURATION_OF_ONE_SESSION,NUM_OF_STUDENTS,NUMBER_OF_SESSIONS,INSTRUCTOR_ID,START_DATE,END_DATE) values (3,'de7k',5,1,9,5,1,to_timestamp('11-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'),to_timestamp('11-JUN-21 00.00.00.000000000','DD-MON-RR HH24.MI.SS.FF'));

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

  CREATE OR REPLACE PROCEDURE "CHECK_CONT_IN_INSTR" (SessionDay in Date ,starttime in sessions.start_hour%type,hallId in integer,inst_id in number,courseid in number ,sucess out integer )
is 
curday Date ;
tmp date;
enddate Date;
beg Date;
cnt INTEGER;
begin
select cc.start_date , cc.end_date  into tmp , enddate from course cc where cc.course_id=courseid;
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

