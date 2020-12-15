
#a

mysql> CREATE TABLE CLASS(
    -> names VARCHAR(25) NOT NULL,
    -> id int
    -> );
Query OK, 0 rows affected (1.81 sec)


#b

mysql> INSERT INTO CLASS(names,id)
    -> VALUES("ROBIN",'005');
Query OK, 1 row affected (0.13 sec)

mysql> INSERT INTO CLASS(names,id)
    -> VALUES("AMIT",'001');
Query OK, 1 row affected (0.10 sec)

mysql> INSERT INTO CLASS(names,id)
    -> VALUES('SABIN','007');
Query OK, 1 row affected (0.06 sec)


#c

mysql> SELECT *
    -> FROM CLASS;
+-------+------+
| names | id   |
+-------+------+
| ROBIN |    5 |
| AMIT  |    1 |
| SABIN |    7 |
+-------+------+
3 rows in set (0.00 sec)

#d

mysql> START TRANSACTION
    -> ;
Query OK, 0 rows affected (0.00 sec)

mysql> DELETE FROM CLASS;
Query OK, 3 rows affected (0.03 sec)

mysql> SELECT COUNT(*)
    -> FROM CLASS;
+----------+
| COUNT(*) |
+----------+
|        0 |
+----------+
1 row in set (0.21 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.04 sec)

mysql> SELECT COUNT(*)
    -> FROM CLASS;
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)


mysql> INSERT INTO CLASS(names,id)
    -> VALUES('NITHIN','003');
Query OK, 1 row affected (0.01 sec)
---------------
mysql> commit;
Query OK, 0 rows affected (0.06 sec)

mysql> SELECT *
    -> FROM CLASS;
+--------+------+
| names  | id   |
+--------+------+
| ROBIN  |    5 |
| AMIT   |    1 |
| SABIN  |    7 |
| NITHIN |    3 |
+--------+------+
4 rows in set (0.02 sec)

-----------------
mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> SAVEPOINT Beforerahul;
Query OK, 0 rows affected (0.00 sec)
mysql> INSERT INTO CLASS(names)
    -> VALUES('RAHUL');
Query OK, 1 row affected (0.01 sec)

mysql> ROLLBACK TO Beforerahul;
Query OK, 0 rows affected (0.03 sec)

mysql> COMMIT;
Query OK, 0 rows affected (0.00 sec)

