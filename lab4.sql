#a

mysql> CREATE TABLE DEPARTMENT
    -> (
    -> code int NOT NULL PRIMARY KEY,
    -> title VARCHAR(25) NOT NULL,
    -> Dept_name VARCHAR(25) UNIQUE,
    -> Dept_id CHAR(10) UNIQUE,
    -> Salary int,
    -> CHECK ( Salary > 2000)
    -> );
Query OK, 0 rows affected (2.09 sec)

#b:

mysql> CREATE TABLE INSTRUCTOR
    -> (
    -> name VARCHAR(25) NOT NULL,
    -> code int NOT NULL,
    -> id int DEFAULT 0
    -> );
Query OK, 0 rows affected (0.31 sec)

#c
mysql> INSERT INTO  DEPARTMENT(code,title,Dept_name,Dept_id,Salary)
    -> VALUES('001','TEST','HR DEPT','Q1','30000');
Query OK, 1 row affected (0.28 sec)

#d
mysql> INSERT INTO INSTRUCTOR(name,code,id)
    -> VALUES('BEN','11','009');
Query OK, 1 row affected (0.10 sec)


----------------------------------------------------------------------------

#ADDITIONAL CODE#

mysql> SELECT *
    -> FROM INSTRUCTOR;
+------+------+------+
| name | code | id   |
+------+------+------+
| BEN  |   11 |    9 |
+------+------+------+
1 row in set (0.01 sec)

mysql> SELECT *
    -> FROM DEPARTMENT;
+------+-------+-----------+---------+--------+
| code | title | Dept_name | Dept_id | Salary |
+------+-------+-----------+---------+--------+
|    1 | TEST  | HR DEPT   | Q1      |  30000 |
+------+-------+-----------+---------+--------+
1 row in set (0.00 sec)

