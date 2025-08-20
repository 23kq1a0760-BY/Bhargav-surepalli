
mysql> create database adaptation;
Query OK, 1 row affected (0.01 sec)

mysql> use adaptation;
Database changed
mysql> create table adaptation(adaptedbook_id int(10),adapted_type varchar(20),adaption_title varchar(10),adaptionrelease_year int(10),adaption_rating int(10));
Query OK, 0 rows affected, 3 warnings (0.02 sec)

mysql> desc adaptation;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| adaptedbook_id       | int         | YES  |     | NULL    |       |
| adapted_type         | varchar(20) | YES  |     | NULL    |       |
| adaption_title       | varchar(10) | YES  |     | NULL    |       |
| adaptionrelease_year | int         | YES  |     | NULL    |       |
| adaption_rating      | int         | YES  |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table bookreview(reviewedbook_id int(10),summary_review int(10),reviews_author varchar(20));
Query OK, 0 rows affected, 2 warnings (0.02 sec)

mysql> desc bookreview;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| reviewedbook_id | int         | YES  |     | NULL    |       |
| summary_review  | int         | YES  |     | NULL    |       |
| reviews_author  | varchar(20) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table author(author_id int(10) primary key,author_name varchar(10),author_birthyear int(10),author_deathyear int(10));
Query OK, 0 rows affected, 3 warnings (0.02 sec)

mysql> desc author;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| author_id        | int         | NO   | PRI | NULL    |       |
| author_name      | varchar(10) | YES  |     | NULL    |       |
| author_birthyear | int         | YES  |     | NULL    |       |
| author_deathyear | int         | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
