

--1

CREATE TABLE DEPT
(dept_id NUMBER(7) CONSTRAINT department_id_pk PRIMARY KEY
, department_name VARCHAR2(50),
hod VARCHAR2(50));

DESCRIBE dept;

--2

CREATE TABLE COPY_DEPT
(dept_id NUMBER(7),
department_name VARCHAR2(50) NOT NULL, hod VARCHAR2(50),
CONSTRAINT dpt_id_pk PRIMARY KEY(dept_id));

DESCRIBE COPY_DEPT;

--3

CREATE TABLE COURSES(
course_id NUMBER(7) CONSTRAINT course_pk PRIMARY KEY
, course_name VARCHAR2(50),
duration NUMBER(4) CONSTRAINT dur_check CHECK(duration > 0 AND 
duration < 24),
dept_id NUMBER(7) CONSTRAINT courses_dept_fk REFERENCES dept(dept_id),
start_date DATE DEFAULT SYSDATE);

DESCRIBE courses;




