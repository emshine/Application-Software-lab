
#a

mysql> CREATE TABLE STORE
    -> (
    -> order_no int NOT NULL,
    -> code VARCHAR(10) PRIMARY KEY,
    -> item VARCHAR(20) DEFAULT 0,
    -> qunatity int,
    -> price DECIMAL(3,2),
    -> discount DECIMAL(3,2),
    -> mrp DECIMAL(4,2)
    -> );
Query OK, 0 rows affected (1.34 sec)




mysql> INSERT INTO STORE(order_no,code,item,quantity,price,discount,mrp)
    -> VALUES(005,"XWW","PEPSI",2,35,0,70),(008,"LXX","LAYS",3,20,1,59.2);
Query OK, 2 rows affected (0.13 sec)
Records: 2  Duplicates: 0  Warnings: 0


#c

mysql> SELECT *
    -> FROM STORE;
+----------+------+-------+----------+-------+----------+-------+
| order_no | code | item  | quantity | price | discount | mrp   |
+----------+------+-------+----------+-------+----------+-------+
|        8 | LXX  | LAYS  |        3 | 20.00 |     1.00 | 59.20 |
|        5 | XWW  | PEPSI |        2 | 35.00 |     0.00 | 70.00 |
+----------+------+-------+----------+-------+----------+-------+
2 rows in set (0.02 sec)


#d

mysql> CREATE VIEW SHOPS AS
    -> SELECT item,quantity
    -> FROM STORE;
Query OK, 0 rows affected (0.11 sec)


#e

mysql> INSERT INTO STORE(order_no,code,item,quantity,price,discount,mrp)
    -> VALUES(009,"VQQ","STRING",2,35,0,70),(010,"LXQ","CHIPS",3,20,1,59.2);
Query OK, 2 rows affected (0.14 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM SHOPS;
+--------+----------+
| item   | quantity |
+--------+----------+
| CHIPS  |        3 |
| LAYS   |        3 |
| STRING |        2 |
| PEPSI  |        2 |
+--------+----------+
4 rows in set (0.04 sec)


#f
mysql> DROP VIEW SHOPS;
Query OK, 0 rows affected (0.09 sec)



