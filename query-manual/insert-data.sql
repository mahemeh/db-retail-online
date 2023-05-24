-- Insert Into Table users
mysql> INSERT INTO users (nama_lengkap, email, password, alamat_user)
    -> VALUES ('Abdi Mujib', 'abdi@gmail.com', 'abdi12345', 'Jl Kencana - Desa Sukamakmur'),
    -> ('Susi Susanti', 'susanti@gmail.com', '123455667788', 'Jl Mawar - Desa Kebun Bunga'),
    -> ('Marianah', 'marianah@gmail.com', 'marianah123', 'Jl Kencana - Desa Sukamakmur'),
    -> ('Fauzan', 'fzan13@gmail.com', 'fauzan123', 'Jl Kencana - Desa Sukamakmur'),
    -> ('Ridho Rhoma','ridor@gmail.com','ridorh13','Jl Mawar, Desa Kebun Bunga'),
    -> ('Adi Setyawan','adisetia@gmail.com','adisetiawan20','Jl Mawar, Desa Kebun Bunga'),
    -> ('Dio Brando','diokono@gmail.com','diobrando123','Jl Kencana - Desa Sukamakmur'),
    -> ('Joseph Putro','josh@gmail.com','12312345','Jl Tulip - Desa Kebun Bunga'),
    -> ('Maseha Noer','maseha@gmail.com','maseha1212','Jl Tulip - Desa Kebun Bunga'),
    -> ('Ragil Jonah','ragil@gmail.com','ragil123','Jl Mawar - Desa Kebun Bunga'),
    -> ('Eugene Crab','mrcrab@gmail.com','crabs123','Jl Kencana Baru - Desa Sukamakmur');
Query OK, 11 rows affected (0.01 sec)
Records: 11  Duplicates: 0  Warnings: 0


-- Insert Into Table products
mysql> INSERT INTO products (nama_product, kategori_product, harga_product)
    -> VALUES ('Beng-Beng', 'Snack', 2000),
    -> ('Gery Salut Big', 'Snack', 8000),
    -> ('Better', 'Snack', 2000),
    -> ('Pocari Sweat', 'Minuman', 6000),
    -> ('Coca-Cola', 'Minuman', 5000),
    -> ('Shampoo Anti Ketombe', 'Perawatan Tubuh', 50000),
    -> ('Pepsodent Sikat Gigi', 'Perawatan Tubuh', 15000),
    -> ('Sabun Liveboy Jumbo', 'Perawatan Tubuh', 25000),
    -> ('Sabun GIV Sabun Cair', 'Perawatan Tubuh', 30000),
    -> ('Hand Sanitizer', 'Kesehatan dan Kebersihan', 55000);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0


-- Insert Into Table carts
mysql> INSERT INTO carts (user_id, product_id)
    -> VALUES (1, 1),
    -> (1,3),
    -> (1,4),
    -> (2,1),
    -> (2,9),
    -> (2,6),
    -> (3,1),
    -> (3,2),
    -> (3,5),
    -> (4,1),
    -> (4,5),
    -> (4,7),
    -> (5,8),
    -> (5,9),
    -> (5,10);
Query OK, 15 rows affected (0.01 sec)
Records: 15  Duplicates: 0  Warnings: 0


-- Insert Into Table transaksi
mysql> INSERT INTO transactions (transaction_code, payment_method, cart_id)
    -> VALUES (123987981, 'OVO', 1),
    -> (987321151, 'Gopay', 2),
    -> (456987142, 'OVO', 3),
    -> (789654912, 'Gopay', 4),
    -> (123787414, 'Gopay', 5),
    -> (645378465, 'BCA VA', 6),
    -> (683647553, 'OVO', 7),
    -> (643578879, 'Qris', 8),
    -> (678859542, 'Gopay', 9),
    -> (782346112, 'BCA VA', 10),
    -> (817228181, 'Qris', 11),
    -> (817238817, 'Gopay', 12),
    -> (817239130, 'OVO', 13),
    -> (913811233, 'Qris', 14),
    -> (913898313, 'BCA VA', 15);
Query OK, 15 rows affected (0.01 sec)
Records: 15  Duplicates: 0  Warnings: 0


-- Insert Into Table order
mysql> INSERT INTO orders (order_code, order_date, transaction_id)
    -> VALUES (911222333, '2023-05-24 10-30-00', 1),
    -> (922333444, '2023-05-24 11-30-00', 2),
    -> (933444555, '2023-05-24 13-30-00', 3),
    -> (944555666, '2023-05-24 13-45-01', 4),
    -> (991013847, '2023-05-24 09-45-01', 5),
    -> (899111333, '2023-05-23 10-45-01', 6),
    -> (888777444, '2023-05-23 13-35-00', 7),
    -> (833445667, '2023-05-23 09-00-00', 8),
    -> (797788665, '2023-05-22 11-45-00', 9),
    -> (781241847, '2023-05-22 17-45-01', 10),
    -> (781739182, '2023-05-22 18-31-00', 11),
    -> (701293192, '2023-05-22 13-20-17', 12),
    -> (597238712, '2023-05-21 11-15-19', 13),
    -> (578131231, '2023-05-21 09-00-25', 14),
    -> (561031923, '2023-05-21 10-21-00', 15);
Query OK, 15 rows affected, 15 warnings (0.01 sec)
Records: 15  Duplicates: 0  Warnings: 15