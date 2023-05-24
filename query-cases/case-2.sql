mysql> SELECT
    -> products.nama_product AS nama_barang,
    -> COUNT(*) AS jumlah_pembelian
    -> FROM carts
    -> INNER JOIN products ON carts.product_id = products.product_id
    -> GROUP BY nama_barang
    -> ORDER BY jumlah_pembelian DESC
    -> LIMIT 3;
+----------------------+------------------+
| nama_barang          | jumlah_pembelian |
+----------------------+------------------+
| Beng-Beng            |                4 |
| Sabun GIV Sabun Cair |                2 |
| Coca-Cola            |                2 |
+----------------------+------------------+
3 rows in set (0.00 sec)