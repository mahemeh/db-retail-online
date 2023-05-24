mysql> SELECT
    -> users.nama_lengkap AS pelanggan,
    -> products.nama_product AS barang
    -> FROM carts
    -> INNER JOIN users
    -> ON carts.user_id = users.user_id
    -> INNER JOIN products
    -> ON carts.product_id = products.product_id
    -> WHERE users.user_id=1;
+------------+--------------+
| pelanggan  | barang       |
+------------+--------------+
| Abdi Mujib | Beng-Beng    |
| Abdi Mujib | Better       |
| Abdi Mujib | Pocari Sweat |
+------------+--------------+
3 rows in set (0.00 sec)