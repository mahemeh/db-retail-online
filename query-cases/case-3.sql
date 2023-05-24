mysql> SELECT
    -> kategori_product, COUNT(*) AS jumlah_barang
    -> FROM products
    -> GROUP BY kategori_product
    -> ORDER BY jumlah_barang DESC
    -> LIMIT 1;
+------------------+---------------+
| kategori_product | jumlah_barang |
+------------------+---------------+
| Perawatan Tubuh  |             4 |
+------------------+---------------+
1 row in set (0.00 sec)