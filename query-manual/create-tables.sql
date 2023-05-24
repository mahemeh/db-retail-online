-- CREATE TABLE users
mysql> CREATE TABLE users (
    -> user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> nama_lengkap VARCHAR(50) NOT NULL DEFAULT '',
    -> email VARCHAR(50) NOT NULL DEFAULT '',
    -> password VARCHAR(50) NOT NULL DEFAULT '',
    -> alamat_user VARCHAR(50) NOT NULL DEFAULT ''
    -> );
mysql> desc users;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| user_id      | int         | NO   | PRI | NULL    | auto_increment |
| nama_lengkap | varchar(50) | NO   |     |         |                |
| email        | varchar(50) | NO   |     |         |                |
| password     | varchar(50) | NO   |     |         |                |
| alamat_user  | varchar(50) | NO   |     |         |                |
+--------------+-------------+------+-----+---------+----------------+

-- CREATE TABLE products
mysql> CREATE TABLE products (
    -> product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> nama_product VARCHAR(225) NOT NULL DEFAULT '',
    -> kategori_product VARCHAR(225) NOT NULL DEFAULT '',
    -> harga_product INT NOT NULL DEFAULT 0
    -> );
mysql> desc products;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| product_id       | int          | NO   | PRI | NULL    | auto_increment |
| nama_product     | varchar(225) | NO   |     |         |                |
| kategori_product | varchar(225) | NO   |     |         |                |
| harga_product    | int          | NO   |     | 0       |                |
+------------------+--------------+------+-----+---------+----------------+

-- CREATE TABLE carts
mysql> CREATE TABLE carts (
    -> cart_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> user_id INT NOT NULL,
    -> product_id INT NOT NULL,
    -> CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES tpa_004.users (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    -> CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES tpa_004.products (product_id) ON UPDATE CASCADE ON DELETE CASCADE
    -> );
mysql> desc carts;
+------------+------+------+-----+---------+----------------+
| Field      | Type | Null | Key | Default | Extra          |
+------------+------+------+-----+---------+----------------+
| cart_id    | int  | NO   | PRI | NULL    | auto_increment |
| user_id    | int  | NO   | MUL | NULL    |                |
| product_id | int  | NO   | MUL | NULL    |                |
+------------+------+------+-----+---------+----------------+

-- CREATE TABLE transactions
mysql> CREATE TABLE transactions (
    -> transaction_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> transaction_code INT NOT NULL DEFAULT 0,
    -> payment_method VARCHAR(50) NOT NULL DEFAULT '',
    -> cart_id INT NOT NULL,
    -> CONSTRAINT cart_id FOREIGN KEY (cart_id) REFERENCES tpa_004.carts (cart_id) ON UPDATE CASCADE ON DELETE CASCADE
    -> );
mysql> desc transactions;
+------------------+-------------+------+-----+---------+----------------+
| Field            | Type        | Null | Key | Default | Extra          |
+------------------+-------------+------+-----+---------+----------------+
| transaction_id   | int         | NO   | PRI | NULL    | auto_increment |
| transaction_code | int         | NO   |     | 0       |                |
| payment_method   | varchar(50) | NO   |     |         |                |
| cart_id          | int         | NO   | MUL | NULL    |                |
+------------------+-------------+------+-----+---------+----------------+

-- CREATE TABLE orders
mysql> CREATE TABLE orders (
    -> order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> order_code INT NOT NULL DEFAULT 0,
    -> order_date DATETIME,
    -> transaction_id INT NOT NULL,
    -> CONSTRAINT transaction_id FOREIGN KEY (transaction_id) REFERENCES tpa_004.transactions (transaction_id) ON UPDATE CASCADE ON DELETE CASCADE
    -> );
mysql> desc orders;
+----------------+----------+------+-----+---------+----------------+
| Field          | Type     | Null | Key | Default | Extra          |
+----------------+----------+------+-----+---------+----------------+
| order_id       | int      | NO   | PRI | NULL    | auto_increment |
| order_code     | int      | NO   |     | 0       |                |
| order_date     | datetime | YES  |     | NULL    |                |
| transaction_id | int      | NO   | MUL | NULL    |                |
+----------------+----------+------+-----+---------+----------------+