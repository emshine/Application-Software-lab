
#a
mysql> CREATE TABLE STOREE
    -> (
    -> order_no int  AUTO_INCREMENT PRIMARY KEY,
    -> code int(10) NOT NULL,
    -> item VARCHAR(30) DEFAULT 0,
    -> quantity int(10) NOT NULL,
    -> price DECIMAL(10,4) NOT NULL,
    -> discount DECIMAL(4,3) NOT NULL,
    -> mrp DECIMAL(10,5)
    -> );

#b

mysql> INSERT INTO STOREE(order_no,code,item,quantity,price,discount,mrp)
    -> VALUES(001,101,"SHIRT",2,600,0,600),(002,102,"PANTS",3,2400,0,2400);

#c

mysql> SELECT *
    -> FROM STOREE;
+----------+------+-------+----------+-----------+----------+------------+
| order_no | code | item  | quantity | price     | discount | mrp        |
+----------+------+-------+----------+-----------+----------+------------+
|        1 |  101 | SHIRT |        2 |  600.0000 |    0.000 |  600.00000 |
|        2 |  102 | PANTS |        3 | 2400.0000 |    0.000 | 2400.00000 |
+----------+------+-------+----------+-----------+----------+------------+

#d

mysql> SELECT MOD(price,9) FROM STOREE;
+--------------+
| MOD(price,9) |
+--------------+
|       6.0000 |
|       6.0000 |
+--------------+

#e

mysql> SELECT price,POWER(price,2) FROM STOREE;
+-----------+----------------+
| price     | POWER(price,2) |
+-----------+----------------+
|  600.0000 |         360000 |
| 2400.0000 |        5760000 |
+-----------+----------------+


#f

mysql> SELECT ROUND(mrp DIV 7) FROM STOREE;
+------------------+
| ROUND(mrp DIV 7) |
+------------------+
|               85 |
|              342 |
+------------------+






