CREATE TABLE    EMPLOYEE  (
	  Fname     varchar  (15) NOT NULL,
	  Minit     char  (1) NULL,
	  Lname     varchar  (15) NOT NULL,
	  Ssn     char  (9) NOT NULL,
	  Bdate     date   NULL,
	  Address     varchar  (30) NULL,
	  Sex     char  (1) NULL,
	  Salary     decimal  (10, 2) NULL,
	  Super_ssn     char  (9) NULL,
	  Dno     int   NOT NULL,
PRIMARY KEY  (	  Ssn   )
) ;
CREATE TABLE    DEPARTMENT  (
	  Dname     varchar  (15) NOT NULL,
	  Dnumber     int   NOT NULL,
	  Mgr_ssn     char  (9) NOT NULL,
	  Mgr_start_date     date   NULL,
PRIMARY KEY (	  Dnumber   ),
UNIQUE  (	  Dname   )
) ;
CREATE TABLE    DEPT_LOCATIONS  (
	  Dnumber     int   NOT NULL,
	  Dlocation     varchar  (15) NOT NULL,
PRIMARY KEY  
(	  Dnumber   ,	  Dlocation   )
) ;
CREATE TABLE    PROJECT  (
	  Pname     varchar  (15) NOT NULL,
	  Pnumber     int   NOT NULL,
	  Plocation     varchar  (15) NULL,
	  Dnum     int   NOT NULL,
PRIMARY KEY  (	  Pnumber   ),
UNIQUE  (	  Pname   )
);
CREATE TABLE    WORKS_ON  (
	  Essn     char  (9) NOT NULL,
	  Pno     int   NOT NULL,
	  Hours     decimal  (3, 1) NULL,
PRIMARY KEY  (	  Essn   ,   Pno   )
);

CREATE TABLE    DEPENDENT  (
	  Essn     char  (9) NOT NULL,
	  Dependent_name     varchar  (15) NOT NULL,
	  Sex     char  (1) NULL,
	  Bdate     date   NULL,
	  Relationship     varchar  (8) NULL,
PRIMARY KEY  (	  Essn   ,   Dependent_name   )
) ;

CREATE TABLE    DEPARTMENT_HISTORY  (
	  id     SERIAL NOT NULL,
	  Dnumber     int   NOT NULL,
	  Mgr_ssn     char  (9) NOT NULL,
	  effective_date     date   NULL,
	  expiry_date     date   NULL,
PRIMARY KEY  (	  id   )
) ;


INSERT INTO DEPARTMENT VALUES ('Headquarters',1,'888665555','1981-06-19'),('Administration',4,'987654321','1995-01-01'),('Research',5,'333445555','1988-05-22');


INSERT INTO DEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship) VALUES ('123456789','Alice','F','1988-12-30','Daughter');
INSERT INTO DEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship) VALUES ('123456789','Elizabeth','F','1967-05-05','Spouse');
INSERT INTO DEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship) VALUES ('123456789','Michael','M','1988-01-04','Son');
INSERT INTO DEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship) VALUES ('333445555','Alice','F','1986-04-05','Daughter');
INSERT INTO DEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship) VALUES ('333445555','Joy','F','1958-05-03','Spouse');
INSERT INTO DEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship) VALUES ('333445555','Theodore','M','1983-10-25','Son');
INSERT INTO DEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship) VALUES ('987654321','Abner','M','1942-02-28','Spouse');


INSERT INTO DEPT_LOCATIONS (Dnumber,Dlocation) VALUES (1,'Houston');
INSERT INTO DEPT_LOCATIONS (Dnumber,Dlocation) VALUES (4,'Stafford');
INSERT INTO DEPT_LOCATIONS (Dnumber,Dlocation) VALUES (5,'Bellaire');
INSERT INTO DEPT_LOCATIONS (Dnumber,Dlocation) VALUES (5,'Houston');
INSERT INTO DEPT_LOCATIONS (Dnumber,Dlocation) VALUES (5,'Sugarland');


INSERT INTO EMPLOYEE (Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) VALUES ('James','E','Borg','888665555','1937-11-10','450 Stone, Houston, TX','M',55000,null,1);
INSERT INTO EMPLOYEE (Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) VALUES ('Jennifer','S','Wallace','987654321','1941-06-20','291 Berry, Bellaire, TX','F',43000,'888665555',4);
INSERT INTO EMPLOYEE (Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) VALUES ('Franklin','T','Wong','333445555','1955-12-08','638 Boss, Houston, TX','M',40000,'888665555',5);
INSERT INTO EMPLOYEE (Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) VALUES ('Ahmad','V','Jabbar','987987987','1969-03-29','980 Dallas, Houston, TX','M',25000,'987654321',4);
INSERT INTO EMPLOYEE (Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) VALUES ('Alicia','J','Zelaya','999887777','1968-01-19','3321 Castle, Spring, TX','F',25000,'987654321',4);
INSERT INTO EMPLOYEE (Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) VALUES ('John','B','Smith','123456789','1965-01-09','731 Fondren, Houston, TX','M',30000,'333445555',5);
INSERT INTO EMPLOYEE (Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) VALUES ('Joyce','A','English','453453453','1972-07-31','5631 Rice, Houston, TX','F',25000,'333445555',5);
INSERT INTO EMPLOYEE (Fname,Minit,Lname,Ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) VALUES ('Ramesh','K','Narayan','666884444','1962-09-15','975 Fire Oak, Humble, TX','M',38000,'333445555',5);


INSERT INTO PROJECT (Pname,Pnumber,Plocation,Dnum) VALUES ('ProductX',1,'Bellaire',5);
INSERT INTO PROJECT (Pname,Pnumber,Plocation,Dnum) VALUES ('ProductY',2,'Sugarland',5);
INSERT INTO PROJECT (Pname,Pnumber,Plocation,Dnum) VALUES ('ProductZ',3,'Houston',5);
INSERT INTO PROJECT (Pname,Pnumber,Plocation,Dnum) VALUES ('Computerization',10,'Stafford',4);
INSERT INTO PROJECT (Pname,Pnumber,Plocation,Dnum) VALUES ('Reorganization',20,'Houston',1);
INSERT INTO PROJECT (Pname,Pnumber,Plocation,Dnum) VALUES ('Newbenefits',30,'Stafford',4);


INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('123456789',1,32.5);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('123456789',2,7.5);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('333445555',2,10);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('333445555',3,10);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('333445555',10,10);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('333445555',20,10);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('453453453',1,20);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('453453453',2,20);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('666884444',3,40);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('888665555',20,null);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('987654321',20,15);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('987654321',30,20);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('987987987',10,35);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('987987987',30,5);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('999887777',10,10);
INSERT INTO WORKS_ON (Essn,Pno,Hours) VALUES ('999887777',30,30);

insert into DEPARTMENT_HISTORY ( Dnumber, Mgr_ssn, effective_date, expiry_date) select Dnumber, Mgr_ssn, Mgr_start_date, 'dec 31, 9999' from DEPARTMENT ;


ALTER TABLE EMPLOYEE  ADD constraint companyFK1 FOREIGN KEY(Super_ssn)
REFERENCES EMPLOYEE (Ssn);
ALTER TABLE EMPLOYEE  ADD constraint companyFK2 FOREIGN KEY(Dno)
REFERENCES DEPARTMENT (Dnumber);
CREATE DOMAIN BirthDate AS date CHECK (VALUE > '1900-01-01' AND VALUE < CURRENT_DATE);
ALTER TABLE employee ALTER COLUMN bdate SET DATA TYPE BirthDate;


ALTER TABLE WORKS_ON ADD constraint companyFK3 FOREIGN KEY(Essn)
REFERENCES EMPLOYEE (Ssn);
ALTER TABLE WORKS_ON  ADD constraint companyFK4 FOREIGN KEY(Pno)
REFERENCES PROJECT (Pnumber);

ALTER TABLE DEPT_LOCATIONS  ADD constraint companyFK5 FOREIGN KEY(Dnumber)
REFERENCES DEPARTMENT (Dnumber);

ALTER TABLE DEPENDENT  ADD constraint companyFK6 FOREIGN KEY(Essn)
REFERENCES EMPLOYEE (Ssn);
ALTER TABLE DEPENDENT ALTER COLUMN bdate SET DATA TYPE BirthDate;

ALTER TABLE DEPARTMENT  ADD constraint companyFK7 FOREIGN KEY(Mgr_ssn)
REFERENCES EMPLOYEE (Ssn);

ALTER TABLE PROJECT  ADD constraint projectFK8 FOREIGN KEY(Dnum)
REFERENCES Department (Dnumber);

CREATE UNIQUE INDEX idx_effective_date
ON DEPARTMENT_HISTORY (effective_date, Dnumber);

CREATE UNIQUE INDEX idx_expiry_date
ON DEPARTMENT_HISTORY (expiry_date, Dnumber);
