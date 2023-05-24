mysql> SELECT * FROM users ORDER BY alamat_user ASC;
+---------+--------------+--------------------+---------------+-----------------------------------+
| user_id | nama_lengkap | email              | password      | alamat_user                       |
+---------+--------------+--------------------+---------------+-----------------------------------+
|       1 | Abdi Mujib   | abdi@gmail.com     | abdi12345     | Jl Kencana - Desa Sukamakmur      |
|       3 | Marianah     | marianah@gmail.com | marianah123   | Jl Kencana - Desa Sukamakmur      |
|       4 | Fauzan       | fzan13@gmail.com   | fauzan123     | Jl Kencana - Desa Sukamakmur      |
|       7 | Dio Brando   | diokono@gmail.com  | diobrando123  | Jl Kencana - Desa Sukamakmur      |
|      11 | Eugene Crab  | mrcrab@gmail.com   | crabs123      | Jl Kencana Baru - Desa Sukamakmur |
|       2 | Susi Susanti | susanti@gmail.com  | 123455667788  | Jl Mawar - Desa Kebun Bunga       |
|      10 | Ragil Jonah  | ragil@gmail.com    | ragil123      | Jl Mawar - Desa Kebun Bunga       |
|       5 | Ridho Rhoma  | ridor@gmail.com    | ridorh13      | Jl Mawar, Desa Kebun Bunga        |
|       6 | Adi Setyawan | adisetia@gmail.com | adisetiawan20 | Jl Mawar, Desa Kebun Bunga        |
|       8 | Joseph Putro | josh@gmail.com     | 12312345      | Jl Tulip - Desa Kebun Bunga       |
|       9 | Maseha Noer  | maseha@gmail.com   | maseha1212    | Jl Tulip - Desa Kebun Bunga       |
+---------+--------------+--------------------+---------------+-----------------------------------+
11 rows in set (0.00 sec)

-- 

mysql> SELECT * FROM products;
+------------+----------------------+--------------------------+---------------+
| product_id | nama_product         | kategori_product         | harga_product |
+------------+----------------------+--------------------------+---------------+
|          1 | Beng-Beng            | Snack                    |          2000 |
|          2 | Gery Salut Big       | Snack                    |          8000 |
|          3 | Better               | Snack                    |          2000 |
|          4 | Pocari Sweat         | Minuman                  |          6000 |
|          5 | Coca-Cola            | Minuman                  |          5000 |
|          6 | Shampoo Anti Ketombe | Perawatan Tubuh          |         50000 |
|          7 | Pepsodent Sikat Gigi | Perawatan Tubuh          |         15000 |
|          8 | Sabun Liveboy Jumbo  | Perawatan Tubuh          |         25000 |
|          9 | Sabun GIV Sabun Cair | Perawatan Tubuh          |         30000 |
|         10 | Hand Sanitizer       | Kesehatan dan Kebersihan |         55000 |
+------------+----------------------+--------------------------+---------------+
10 rows in set (0.00 sec)

-- 

mysql> SELECT * FROM carts;
+---------+---------+------------+
| cart_id | user_id | product_id |
+---------+---------+------------+
|       1 |       1 |          1 |
|       2 |       1 |          3 |
|       3 |       1 |          4 |
|       4 |       2 |          1 |
|       5 |       2 |          9 |
|       6 |       2 |          6 |
|       7 |       3 |          1 |
|       8 |       3 |          2 |
|       9 |       3 |          5 |
|      10 |       4 |          1 |
|      11 |       4 |          5 |
|      12 |       4 |          7 |
|      13 |       5 |          8 |
|      14 |       5 |          9 |
|      15 |       5 |         10 |
+---------+---------+------------+
15 rows in set (0.00 sec)

-- 

mysql> SELECT * FROM transactions ORDER BY transaction_code ASC;
+----------------+------------------+----------------+---------+
| transaction_id | transaction_code | payment_method | cart_id |
+----------------+------------------+----------------+---------+
|              5 |        123787414 | Gopay          |       5 |
|              1 |        123987981 | OVO            |       1 |
|              3 |        456987142 | OVO            |       3 |
|              8 |        643578879 | Qris           |       8 |
|              6 |        645378465 | BCA VA         |       6 |
|              9 |        678859542 | Gopay          |       9 |
|              7 |        683647553 | OVO            |       7 |
|             10 |        782346112 | BCA VA         |      10 |
|              4 |        789654912 | Gopay          |       4 |
|             11 |        817228181 | Qris           |      11 |
|             12 |        817238817 | Gopay          |      12 |
|             13 |        817239130 | OVO            |      13 |
|             14 |        913811233 | Qris           |      14 |
|             15 |        913898313 | BCA VA         |      15 |
|              2 |        987321151 | Gopay          |       2 |
+----------------+------------------+----------------+---------+
15 rows in set (0.00 sec)

-- 

mysql> SELECT * FROM orders ORDER BY order_date ASC;
+----------+------------+---------------------+----------------+
| order_id | order_code | order_date          | transaction_id |
+----------+------------+---------------------+----------------+
|       14 |  578131231 | 2023-05-21 09:00:25 |             14 |
|       15 |  561031923 | 2023-05-21 10:21:00 |             15 |
|       13 |  597238712 | 2023-05-21 11:15:19 |             13 |
|        9 |  797788665 | 2023-05-22 11:45:00 |              9 |
|       12 |  701293192 | 2023-05-22 13:20:17 |             12 |
|       10 |  781241847 | 2023-05-22 17:45:01 |             10 |
|       11 |  781739182 | 2023-05-22 18:31:00 |             11 |
|        8 |  833445667 | 2023-05-23 09:00:00 |              8 |
|        6 |  899111333 | 2023-05-23 10:45:01 |              6 |
|        7 |  888777444 | 2023-05-23 13:35:00 |              7 |
|        5 |  991013847 | 2023-05-24 09:45:01 |              5 |
|        1 |  911222333 | 2023-05-24 10:30:00 |              1 |
|        2 |  922333444 | 2023-05-24 11:30:00 |              2 |
|        3 |  933444555 | 2023-05-24 13:30:00 |              3 |
|        4 |  944555666 | 2023-05-24 13:45:01 |              4 |
+----------+------------+---------------------+----------------+
15 rows in set (0.00 sec)