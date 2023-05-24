mysql> UPDATE users
    -> SET nama_lengkap='Mahesa Nur', email='mahesa@gmail.com', password='mahesa123'
    -> WHERE user_id=9;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM users;
+---------+--------------+--------------------+---------------+-----------------------------------+
| user_id | nama_lengkap | email              | password      | alamat_user                       |
+---------+--------------+--------------------+---------------+-----------------------------------+
|       1 | Abdi Mujib   | abdi@gmail.com     | abdi12345     | Jl Kencana - Desa Sukamakmur      |
|       2 | Susi Susanti | susanti@gmail.com  | 123455667788  | Jl Mawar - Desa Kebun Bunga       |
|       3 | Marianah     | marianah@gmail.com | marianah123   | Jl Kencana - Desa Sukamakmur      |
|       4 | Fauzan       | fzan13@gmail.com   | fauzan123     | Jl Kencana - Desa Sukamakmur      |
|       5 | Ridho Rhoma  | ridor@gmail.com    | ridorh13      | Jl Mawar, Desa Kebun Bunga        |
|       6 | Adi Setyawan | adisetia@gmail.com | adisetiawan20 | Jl Mawar, Desa Kebun Bunga        |
|       7 | Dio Brando   | diokono@gmail.com  | diobrando123  | Jl Kencana - Desa Sukamakmur      |
|       8 | Joseph Putro | josh@gmail.com     | 12312345      | Jl Tulip - Desa Kebun Bunga       |
|       9 | Mahesa Nur   | mahesa@gmail.com   | mahesa123     | Jl Tulip - Desa Kebun Bunga       |
|      10 | Ragil Jonah  | ragil@gmail.com    | ragil123      | Jl Mawar - Desa Kebun Bunga       |
|      11 | Eugene Crab  | mrcrab@gmail.com   | crabs123      | Jl Kencana Baru - Desa Sukamakmur |
+---------+--------------+--------------------+---------------+-----------------------------------+
11 rows in set (0.00 sec)