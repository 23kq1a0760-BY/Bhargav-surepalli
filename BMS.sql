

mysql> create database BMS;
Query OK, 1 row affected (0.01 sec)

mysql> use BMS;
Database changed
mysql> create table person(p_id int(10) primary key,p_name varchar(10),p_phone int(10),p_bloodgroup varchar(10),p_gender varchar(10),p_dob varchar(10),p_address varchar(20),p_medissuse varchar(10));
Query OK, 0 rows affected, 2 warnings (0.02 sec)
mysql> desc person;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| p_id         | int         | NO   | PRI | NULL    |       |
| p_name       | varchar(10) | YES  |     | NULL    |       |
| p_phone      | int         | YES  |     | NULL    |       |
| p_bloodgroup | varchar(10) | YES  |     | NULL    |       |
| p_gender     | varchar(10) | YES  |     | NULL    |       |
| p_dob        | varchar(10) | YES  |     | NULL    |       |
| p_address    | varchar(20) | YES  |     | NULL    |       |
| p_medissuse  | varchar(10) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> create table donation(p_id int(10),d_date varchar (10),d_time varchar(10),quantity int, foreign key(p_id)references person(p_id));
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> desc donation;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| p_id     | int         | YES  | MUL | NULL    |       |
| d_date   | varchar(10) | YES  |     | NULL    |       |
| d_time   | varchar(10) | YES  |     | NULL    |       |
| quantity | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
mysql> create table stock(s_blood_group varchar(10) PRIMARY KEY,quantity int);
Query OK, 0 rows affected (0.02 sec)

mysql> desc stock;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| s_blood_group | varchar(10) | NO   | PRI | NULL    |       |
| quantity      | int         | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> create table receive(p_id int PRIMARY KEY,r_hospital varchar(20),r_date varchar(10),quantity int,FOREIGN KEY(p_id)REFERENCES person(p_id));
Query OK, 0 rows affected (0.02 sec)

mysql> desc receive;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| p_id       | int         | NO   | PRI | NULL    |       |
| r_hospital | varchar(20) | YES  |     | NULL    |       |
| r_date     | varchar(10) | YES  |     | NULL    |       |
| quantity   | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
