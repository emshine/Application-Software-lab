mysql> CREATE TABLE Employee(
    -> empid CHAR(4),
    -> empname CHAR(10) NOT NULL,
    -> designation CHAR
    -> (30) NOT NULL
    -> );
Query OK, 0 rows affected (1.21 sec)

mysql> CREATE TABLE EMPLOYEE(
    -> empid CHAR(4),
    -> empname CHAR(10) NOT NULL,
    -> designation CHAR(30) NOT NULL,
    -> dob DATE NOT NULL,
    -> salary NUMERIC
    -> );
ERROR 1050 (42S01): Table 'employee' already exists
mysql> CREATE TABLE EMPLOYE(
    -> empid CHAR(4),
    -> empname CHAR(10) NOT NULL,
    -> designation CHAR(30) NOT NULL,
    -> dob DATE NOT NULL,
    -> salary NUMERIC
    -> );
Query OK, 0 rows affected (0.31 sec)

mysql> CREATE TABLE EMPLOYDETAILS(
    -> sex CHAR(1),
    -> nationality CHAR(10),
    -> gno INT,
    -> PRIMARY KEY (gno),
    -> empid CHAR(4) REFERENCES EMPLOYE(empid)
    -> );
Query OK, 0 rows affected (0.88 sec)

mysql> INSERT INTO EMPLOYE VALUES
    -> ("e1","MAX","MA","1972-4-12","35000"),
    -> ("e2","BEN","ExMA","1975-5-4","32000");
Query OK, 2 rows affected (0.18 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> INSERT INTO EMPLOYDETAILS VALUES
    -> ("F","EUROPIAN","28","e2"),
    -> ("M","BRAZILIAN","34","e5");
Query OK, 2 rows affected (0.10 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMPLOYE WHERE empid IN(SELECT empid FROM employdetails);
+-------+---------+-------------+------------+--------+
| empid | empname | designation | dob        | salary |
+-------+---------+-------------+------------+--------+
| e2    | BEN     | ExMA        | 1975-05-04 |  32000 |
+-------+---------+-------------+------------+--------+
1 row in set (0.04 sec)

mysql> SELECT * FROM employe WHERE empid NOT IN(SELECT empid FROM employdetails);
+-------+---------+-------------+------------+--------+
| empid | empname | designation | dob        | salary |
+-------+---------+-------------+------------+--------+
| e1    | MAX     | MA          | 1972-04-12 |  35000 |
+-------+---------+-------------+------------+--------+
1 row in set (0.01 sec)

mysql>

