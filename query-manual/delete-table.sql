mysql> show tables;
+-------------------+
| Tables_in_tpa_004 |
+-------------------+
| carts             |
| orders            |
| products          |
| transactions      |
| users             |
+-------------------+
5 rows in set (0.01 sec)

mysql> DROP TABLE orders;
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+-------------------+
| Tables_in_tpa_004 |
+-------------------+
| carts             |
| products          |
| transactions      |
| users             |
+-------------------+
4 rows in set (0.01 sec)