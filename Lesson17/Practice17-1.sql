
--1
SELECT table_name
FROM	user_tables;

--2
SELECT table_name, owner 
FROM	all_tables
WHERE	owner <>'ORAxx';

--3
SELECT column_name, data_type, data_length, nullable 
FROM	user_tab_columns
WHERE	table_name = UPPER('&tab_name');

--4
SELECT constraint_name
, constraint_type
, search_condition
, r_constraint_name
, status
FROM	user_constraints
WHERE	table_name = 'AD_STUDENT_DETAILS';

--5
SELECT table_name
, constraint_name
, column_name 
FROM	user_cons_columns
WHERE	owner = 'ORAxx';





