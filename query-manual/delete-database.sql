mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| test_1             |
| tpa_004            |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> DROP DATABASE test_1;
Query OK, 0 rows affected (0.03 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| tpa_004            |
| world              |
+--------------------+
7 rows in set (0.00 sec)