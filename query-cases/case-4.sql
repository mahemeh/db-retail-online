mysql> SELECT
    -> users.nama_lengkap AS user,
    -> AVG(products.harga_product) AS rata_rata_transaksi
    -> FROM orders
    -> JOIN transactions ON orders.transaction_id = transactions.transaction_id
    -> JOIN carts ON transactions.cart_id = carts.cart_id
    -> JOIN users ON carts.user_id = users.user_id
    -> JOIN products ON carts.product_id = products.product_id
    -> GROUP BY user;
+--------------+---------------------+
| user         | rata_rata_transaksi |
+--------------+---------------------+
| Abdi Mujib   |           3333.3333 |
| Susi Susanti |          27333.3333 |
| Marianah     |           5000.0000 |
| Fauzan       |           7333.3333 |
| Ridho Rhoma  |          27500.0000 |
+--------------+---------------------+
5 rows in set (0.00 sec)